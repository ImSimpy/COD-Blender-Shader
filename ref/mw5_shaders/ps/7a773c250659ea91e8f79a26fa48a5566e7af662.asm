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
; shader hash: ad7ba468b9589a442594dc0e8de23887
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
;                                   texture     f32          2d     T58             t8     1
;                                   texture     f32     2darray     T59            t11     1
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
;   output 3 depends on inputs: { 0, 1, 3, 8, 9, 12, 13 }
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
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 57, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 56, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %190, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %204 = shl nuw nsw i32 %203, 16
  %205 = or i32 %204, %199
  %206 = mul nuw nsw i32 %199, 148
  %207 = add nuw nsw i32 %206, 4
  %208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = add nuw nsw i32 %206, 8
  %211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = add nuw nsw i32 %206, 48
  %214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = add nuw nsw i32 %206, 60
  %217 = add nuw nsw i32 %206, 92
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = add nuw nsw i32 %206, 96
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = add nuw nsw i32 %206, 100
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = add nuw nsw i32 %206, 104
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = add nuw nsw i32 %206, 108
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = add nuw nsw i32 %206, 116
  %232 = fsub fast float 1.000000e+00, %82
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = fmul fast float %234, %81
  %236 = fmul fast float %234, %232
  %237 = fadd fast float %235, %209
  %238 = fadd fast float %236, %212
  %239 = call float @dx.op.unary.f32(i32 84, float %237)  ; DerivCoarseY(value)
  %240 = call float @dx.op.unary.f32(i32 84, float %238)  ; DerivCoarseY(value)
  %241 = call float @dx.op.unary.f32(i32 83, float %237)  ; DerivCoarseX(value)
  %242 = call float @dx.op.unary.f32(i32 83, float %238)  ; DerivCoarseX(value)
  %243 = call float @dx.op.dot2.f32(i32 54, float %239, float %240, float %239, float %240)  ; Dot2(ax,ay,bx,by)
  %244 = call float @dx.op.dot2.f32(i32 54, float %241, float %242, float %241, float %242)  ; Dot2(ax,ay,bx,by)
  %245 = call float @dx.op.binary.f32(i32 35, float %244, float %243)  ; FMax(a,b)
  %246 = call float @dx.op.unary.f32(i32 23, float %245)  ; Log(value)
  %247 = fmul fast float %246, 5.000000e-01
  %248 = add nuw nsw i32 %206, 20
  %249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = add nuw nsw i32 %206, 24
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = add nuw nsw i32 %206, 28
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = add nuw nsw i32 %206, 32
  %258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = add nuw nsw i32 %206, 40
  %261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = add nuw nsw i32 %206, 44
  %264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = add nuw nsw i32 %206, 52
  %269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = add nuw nsw i32 %206, 56
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = add nuw nsw i32 %206, 112
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 2
  %287 = fmul fast float %286, %81
  %288 = fmul fast float %286, %82
  %289 = extractvalue %dx.types.CBufRet.f32 %285, 3
  %290 = fadd fast float %287, %289
  %291 = fadd fast float %288, %289
  %292 = extractvalue %dx.types.CBufRet.f32 %285, 0
  %293 = fmul fast float %292, %81
  %294 = fmul fast float %292, %82
  %295 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %296 = fadd fast float %293, %295
  %297 = fadd fast float %294, %295
  %298 = add i32 %275, 0
  %299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %298, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %300 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %299, i32 0)  ; GetDimensions(handle,mipLevel)
  %301 = extractvalue %dx.types.Dimensions %300, 0
  %302 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %301)  ; FirstbitLo(value)
  %303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.i32 %303, 1
  %305 = sub nsw i32 %304, %302
  %306 = sitofp i32 %305 to float
  %307 = fsub fast float %179, %306
  %308 = call float @dx.op.binary.f32(i32 35, float %307, float 0.000000e+00)  ; FMax(a,b)
  %309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %299, %dx.types.Handle %61, float %290, float %291, float %262, float undef, i32 0, i32 0, i32 undef, float %308)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = fmul fast float %310, %250
  %312 = fadd fast float %311, %253
  %313 = add i32 %277, 0
  %314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %313, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %315 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %314, i32 0)  ; GetDimensions(handle,mipLevel)
  %316 = extractvalue %dx.types.Dimensions %315, 0
  %317 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %316)  ; FirstbitLo(value)
  %318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.i32 %318, 1
  %320 = sub nsw i32 %319, %317
  %321 = sitofp i32 %320 to float
  %322 = fsub fast float %179, %321
  %323 = call float @dx.op.binary.f32(i32 35, float %322, float 0.000000e+00)  ; FMax(a,b)
  %324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %314, %dx.types.Handle %61, float %296, float %297, float %265, float undef, i32 0, i32 0, i32 undef, float %323)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = fmul fast float %325, %256
  %327 = fadd fast float %326, %259
  %328 = add i32 %279, 0
  %329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %328, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %330 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %329, i32 0)  ; GetDimensions(handle,mipLevel)
  %331 = extractvalue %dx.types.Dimensions %330, 0
  %332 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %331)  ; FirstbitLo(value)
  %333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.i32 %333, 1
  %335 = sub nsw i32 %334, %332
  %336 = sitofp i32 %335 to float
  %337 = fsub fast float %179, %336
  %338 = call float @dx.op.binary.f32(i32 35, float %337, float 0.000000e+00)  ; FMax(a,b)
  %339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %329, %dx.types.Handle %61, float %296, float %297, float %267, float undef, i32 0, i32 0, i32 undef, float %338)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %340 = extractvalue %dx.types.ResRet.f32 %339, 0
  %341 = extractvalue %dx.types.ResRet.f32 %339, 1
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 3
  %344 = fmul fast float %343, 2.000000e+00
  %345 = fmul fast float %344, %340
  %346 = fmul fast float %344, %341
  %347 = fsub fast float %345, %343
  %348 = fsub fast float %346, %343
  %349 = fmul fast float %347, %347
  %350 = fmul fast float %348, %348
  %351 = fadd fast float %349, %350
  %352 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %353 = add i32 %281, 0
  %354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %353, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %355 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %354, i32 0)  ; GetDimensions(handle,mipLevel)
  %356 = extractvalue %dx.types.Dimensions %355, 0
  %357 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %356)  ; FirstbitLo(value)
  %358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.i32 %358, 1
  %360 = sub nsw i32 %359, %357
  %361 = sitofp i32 %360 to float
  %362 = fsub fast float %179, %361
  %363 = call float @dx.op.binary.f32(i32 35, float %362, float 0.000000e+00)  ; FMax(a,b)
  %364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %354, %dx.types.Handle %61, float %296, float %297, float %270, float undef, i32 0, i32 0, i32 undef, float %363)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = add i32 %284, 0
  %367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %366, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %368 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %367, i32 0)  ; GetDimensions(handle,mipLevel)
  %369 = extractvalue %dx.types.Dimensions %368, 0
  %370 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %369)  ; FirstbitLo(value)
  %371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.i32 %371, 1
  %373 = sub nsw i32 %372, %370
  %374 = sitofp i32 %373 to float
  %375 = fsub fast float %179, %374
  %376 = call float @dx.op.binary.f32(i32 35, float %375, float 0.000000e+00)  ; FMax(a,b)
  %377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %367, %dx.types.Handle %61, float %296, float %297, float %273, float undef, i32 0, i32 0, i32 undef, float %376)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.i32 %379, 0
  %381 = call i32 @dx.op.binary.i32(i32 40, i32 %199, i32 %380)  ; UMin(a,b)
  %382 = mul i32 %381, 36
  %383 = add i32 %382, 4
  %384 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %203)  ; Countbits(value)
  %385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.i32 %385, 0
  %387 = icmp eq i32 %386, 32
  %388 = select i1 %387, float %74, float %179
  %389 = and i32 %386, -2
  %390 = icmp eq i32 %389, 30
  %391 = or i1 %390, %387
  br i1 %391, label %392, label %433

; <label>:392                                     ; preds = %0
  %393 = extractvalue %dx.types.ResRet.i32 %218, 0
  %394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.i32 %394, 0
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %412, label %397

; <label>:397                                     ; preds = %392
  %398 = icmp eq i32 %395, 1
  br i1 %398, label %412, label %399

; <label>:399                                     ; preds = %397
  %400 = icmp eq i32 %395, 2
  br i1 %400, label %412, label %401

; <label>:401                                     ; preds = %399
  %402 = icmp eq i32 %395, 3
  br i1 %402, label %412, label %403

; <label>:403                                     ; preds = %401
  %404 = icmp eq i32 %395, 4
  br i1 %404, label %412, label %405

; <label>:405                                     ; preds = %403
  %406 = call i32 @dx.op.binary.i32(i32 39, i32 %395, i32 6)  ; UMax(a,b)
  %407 = call i32 @dx.op.binary.i32(i32 40, i32 %406, i32 13)  ; UMin(a,b)
  %408 = shl i32 %407, 2
  %409 = add i32 %217, %408
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  br label %412

; <label>:412                                     ; preds = %405, %403, %401, %399, %397, %392
  %413 = phi i32 [ %411, %405 ], [ %393, %392 ], [ %221, %397 ], [ %224, %399 ], [ %227, %401 ], [ %230, %403 ]
  %414 = add i32 %413, 0
  %415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %414, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %416 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %415, i32 0)  ; GetDimensions(handle,mipLevel)
  %417 = extractvalue %dx.types.Dimensions %416, 0
  %418 = icmp eq i32 %417, 1
  %419 = icmp eq i32 %417, 4
  %420 = or i1 %418, %419
  br i1 %420, label %427, label %421

; <label>:421                                     ; preds = %412
  %422 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %417)  ; FirstbitLo(value)
  %423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.i32 %423, 1
  %425 = sub nsw i32 %424, %422
  %426 = call i32 @dx.op.binary.i32(i32 37, i32 %425, i32 0)  ; IMax(a,b)
  br label %427

; <label>:427                                     ; preds = %421, %412
  %428 = phi i32 [ %426, %421 ], [ -1, %412 ]
  %429 = sitofp i32 %428 to float
  %430 = icmp slt i32 %428, 0
  %431 = fsub fast float %388, %429
  %432 = select i1 %430, float 0.000000e+00, float %431
  br label %433

; <label>:433                                     ; preds = %427, %0
  %434 = phi float [ 0.000000e+00, %0 ], [ %429, %427 ]
  %435 = phi float [ 0.000000e+00, %0 ], [ %432, %427 ]
  %436 = icmp eq i32 %203, 0
  br i1 %436, label %1325, label %437

; <label>:437                                     ; preds = %433
  br label %438

; <label>:438                                     ; preds = %1303, %437
  %439 = phi i32 [ %1304, %1303 ], [ %205, %437 ]
  %440 = phi float [ %1305, %1303 ], [ 0.000000e+00, %437 ]
  %441 = phi float [ %1306, %1303 ], [ 0.000000e+00, %437 ]
  %442 = phi float [ %1307, %1303 ], [ 0.000000e+00, %437 ]
  %443 = phi float [ %1308, %1303 ], [ 0.000000e+00, %437 ]
  %444 = phi float [ %1309, %1303 ], [ 0.000000e+00, %437 ]
  %445 = phi float [ %1310, %1303 ], [ 0.000000e+00, %437 ]
  %446 = phi float [ %1311, %1303 ], [ 0.000000e+00, %437 ]
  %447 = phi float [ %1312, %1303 ], [ 0.000000e+00, %437 ]
  %448 = phi i32 [ %1313, %1303 ], [ 0, %437 ]
  %449 = phi float [ %1314, %1303 ], [ 0.000000e+00, %437 ]
  %450 = phi i32 [ %1315, %1303 ], [ 0, %437 ]
  %451 = phi float [ %1316, %1303 ], [ 0.000000e+00, %437 ]
  %452 = phi float [ %1317, %1303 ], [ 0.000000e+00, %437 ]
  %453 = phi float [ %1318, %1303 ], [ 0.000000e+00, %437 ]
  %454 = phi i32 [ %463, %1303 ], [ %203, %437 ]
  %455 = phi i32 [ %1319, %1303 ], [ %182, %437 ]
  %456 = phi i32 [ %1320, %1303 ], [ %182, %437 ]
  %457 = phi i32 [ %1321, %1303 ], [ %182, %437 ]
  %458 = phi i32 [ %1322, %1303 ], [ %182, %437 ]
  %459 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %454)  ; FirstbitLo(value)
  %460 = and i32 %459, 31
  %461 = shl i32 1, %460
  %462 = xor i32 %461, -1
  %463 = and i32 %454, %462
  %464 = shl i32 %459, 2
  %465 = add i32 %216, %464
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 0
  %470 = fmul fast float %469, %81
  %471 = fmul fast float %469, %82
  %472 = extractvalue %dx.types.CBufRet.f32 %468, 1
  %473 = fadd fast float %470, %472
  %474 = fadd fast float %471, %472
  %475 = add i32 %464, %231
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = add i32 %477, 0
  %479 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %478, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %480 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %479, i32 0)  ; GetDimensions(handle,mipLevel)
  %481 = extractvalue %dx.types.Dimensions %480, 0
  %482 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %481)  ; FirstbitLo(value)
  %483 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.i32 %483, 1
  %485 = sub nsw i32 %484, %482
  %486 = sitofp i32 %485 to float
  %487 = fsub fast float %179, %486
  %488 = call float @dx.op.binary.f32(i32 35, float %487, float 0.000000e+00)  ; FMax(a,b)
  %489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %479, %dx.types.Handle %61, float %473, float %474, float %467, float undef, i32 0, i32 0, i32 undef, float %488)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = fcmp fast ogt float %490, 0.000000e+00
  br i1 %491, label %492, label %1303

; <label>:492                                     ; preds = %438
  %493 = add i32 %383, %464
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = and i32 %495, 32767
  %497 = add i32 %448, 1
  %498 = mul nuw nsw i32 %496, 928
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = or i32 %498, 8
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = or i32 %498, 12
  %505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 1
  %507 = or i32 %498, 20
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = or i32 %498, 24
  %511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = extractvalue %dx.types.ResRet.f32 %511, 1
  %514 = extractvalue %dx.types.ResRet.f32 %511, 2
  %515 = extractvalue %dx.types.ResRet.f32 %511, 3
  %516 = add nuw nsw i32 %498, 40
  %517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = add nuw nsw i32 %498, 72
  %520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = extractvalue %dx.types.ResRet.f32 %520, 1
  %523 = add nuw nsw i32 %498, 80
  %524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = add nuw nsw i32 %498, 228
  %527 = add nuw nsw i32 %498, 516
  %528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 1
  %530 = add nuw nsw i32 %498, 528
  %531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = add nuw nsw i32 %498, 540
  %535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.f32 %535, 0
  %537 = extractvalue %dx.types.ResRet.f32 %535, 1
  %538 = add nuw nsw i32 %498, 548
  %539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = add nuw nsw i32 %498, 552
  %542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  %544 = extractvalue %dx.types.ResRet.f32 %542, 1
  %545 = extractvalue %dx.types.ResRet.f32 %542, 2
  %546 = add nuw nsw i32 %498, 596
  %547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = add nuw nsw i32 %498, 620
  %551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = extractvalue %dx.types.ResRet.f32 %551, 1
  %554 = add nuw nsw i32 %498, 628
  %555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = extractvalue %dx.types.ResRet.f32 %555, 2
  %559 = extractvalue %dx.types.ResRet.f32 %555, 3
  %560 = add nuw nsw i32 %498, 648
  %561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = add nuw nsw i32 %498, 696
  %564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = extractvalue %dx.types.ResRet.f32 %564, 1
  %567 = add nuw nsw i32 %498, 708
  %568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = add nuw nsw i32 %498, 812
  %572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = add nuw nsw i32 %498, 816
  %575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 1
  %577 = add nuw nsw i32 %498, 852
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = add nuw nsw i32 %498, 860
  %581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 2
  %583 = add nuw nsw i32 %498, 896
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = add nuw nsw i32 %498, 900
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = add nuw nsw i32 %498, 904
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = lshr i32 %439, 24
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %593, 0x3F70101020000000
  %595 = and i32 %500, 128
  %596 = icmp ne i32 %595, 0
  %597 = extractvalue %dx.types.CBufRet.i32 %483, 0
  %598 = and i32 %597, 512
  %599 = icmp ne i32 %598, 0
  %600 = and i1 %596, %599
  %601 = select i1 %600, float 0.000000e+00, float %490
  %602 = fadd fast float %601, %594
  %603 = call float @dx.op.unary.f32(i32 7, float %602)  ; Saturate(value)
  %604 = fmul fast float %603, 2.550000e+02
  %605 = fptoui float %604 to i32
  %606 = shl i32 %605, 24
  %607 = and i32 %439, 16777215
  %608 = or i32 %606, %607
  %609 = fcmp fast ole float %80, 0x3FA4B5DCC0000000
  %610 = fmul fast float %80, 0x3FB3D07220000000
  %611 = fadd fast float %80, 0x3FAC28F5C0000000
  %612 = fmul fast float %611, 0x3FEE54EDE0000000
  %613 = call float @dx.op.unary.f32(i32 23, float %612)  ; Log(value)
  %614 = fmul fast float %613, 0x4003333340000000
  %615 = call float @dx.op.unary.f32(i32 21, float %614)  ; Exp(value)
  %616 = select i1 %609, float %610, float %615
  %617 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %618 = fmul fast float %548, %365
  %619 = fadd fast float %618, %549
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = fmul fast float %620, %490
  %622 = fadd fast float %621, %445
  %623 = call float @dx.op.binary.f32(i32 35, float %617, float %620)  ; FMax(a,b)
  %624 = add i32 %588, 0
  %625 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %624, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.i32 %626, 0
  %628 = and i32 %627, 65536
  %629 = icmp eq i32 %628, 0
  %630 = and i32 %627, 262144
  %631 = icmp ne i32 %630, 0
  %632 = and i32 %627, 1048576
  %633 = icmp ne i32 %632, 0
  br i1 %629, label %908, label %634

; <label>:634                                     ; preds = %492
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = extractvalue %dx.types.CBufRet.f32 %637, 1
  %640 = fadd fast float %638, %155
  %641 = fadd fast float %639, %156
  %642 = fmul fast float %155, %155
  %643 = fmul fast float %156, %156
  %644 = fadd fast float %642, %643
  %645 = fmul fast float %157, %157
  %646 = fadd fast float %644, %645
  %647 = call float @dx.op.unary.f32(i32 24, float %646)  ; Sqrt(value)
  br i1 %633, label %648, label %694

; <label>:648                                     ; preds = %634
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 0
  %651 = fcmp fast ogt float %647, %650
  %652 = zext i1 %651 to i32
  %653 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %654 = fcmp fast ogt float %647, %653
  %655 = zext i1 %654 to i32
  %656 = add nuw nsw i32 %655, %652
  %657 = extractvalue %dx.types.CBufRet.f32 %649, 2
  %658 = fcmp fast ogt float %647, %657
  %659 = zext i1 %658 to i32
  %660 = add nuw nsw i32 %656, %659
  %661 = icmp ult i32 %660, 3
  %662 = zext i1 %661 to i32
  %663 = shl nuw nsw i32 %660, 2
  %664 = add nuw nsw i32 %663, 48
  %665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %664)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.f32 %665, 1
  %667 = fcmp fast ogt float %647, %666
  %668 = zext i1 %667 to i32
  %669 = or i32 %663, 1
  %670 = add nuw nsw i32 %669, 48
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %670)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 1
  %673 = fcmp fast ogt float %647, %672
  %674 = zext i1 %673 to i32
  %675 = add nuw nsw i32 %674, %668
  %676 = or i32 %663, 2
  %677 = add nuw nsw i32 %676, 48
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %677)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %680 = fcmp fast ogt float %647, %679
  %681 = zext i1 %680 to i32
  %682 = add nuw nsw i32 %675, %681
  %683 = add i32 %509, -1
  %684 = call i32 @dx.op.binary.i32(i32 40, i32 %682, i32 %683)  ; UMin(a,b)
  %685 = add i32 %663, %684
  %686 = call i32 @dx.op.binary.i32(i32 40, i32 %685, i32 12)  ; UMin(a,b)
  %687 = add i32 %686, 48
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %687)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %690 = fcmp fast oge float %647, %689
  %691 = zext i1 %690 to i32
  %692 = call i32 @dx.op.binary.i32(i32 40, i32 %509, i32 %662)  ; UMin(a,b)
  %693 = call i32 @dx.op.binary.i32(i32 40, i32 %691, i32 %692)  ; UMin(a,b)
  br label %694

; <label>:694                                     ; preds = %648, %634
  %695 = phi i32 [ %686, %648 ], [ 0, %634 ]
  %696 = phi i32 [ %693, %648 ], [ 0, %634 ]
  %697 = add i32 %696, %509
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %897, label %699

; <label>:699                                     ; preds = %694
  br label %700

; <label>:700                                     ; preds = %866, %699
  %701 = phi float [ %893, %866 ], [ 0.000000e+00, %699 ]
  %702 = phi float [ %885, %866 ], [ 0.000000e+00, %699 ]
  %703 = phi float [ %886, %866 ], [ 0.000000e+00, %699 ]
  %704 = phi i32 [ %716, %866 ], [ %695, %699 ]
  %705 = phi i32 [ %894, %866 ], [ 0, %699 ]
  %706 = add i32 %705, %704
  br i1 %633, label %707, label %715

; <label>:707                                     ; preds = %700
  %708 = and i32 %706, -4
  %709 = add i32 %708, %509
  %710 = icmp uge i32 %706, %709
  %711 = sub i32 4, %509
  %712 = select i1 %710, i32 %711, i32 0
  %713 = add i32 %712, %704
  %714 = add i32 %712, %706
  br label %715

; <label>:715                                     ; preds = %707, %700
  %716 = phi i32 [ %713, %707 ], [ %704, %700 ]
  %717 = phi i32 [ %714, %707 ], [ %706, %700 ]
  %718 = and i32 %717, 3
  %719 = select i1 %633, i32 %718, i32 %705
  %720 = lshr i32 %717, 2
  %721 = select i1 %633, i32 %720, i32 0
  %722 = add i32 %717, 32
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %722)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 0
  %725 = extractvalue %dx.types.CBufRet.f32 %723, 1
  %726 = extractvalue %dx.types.CBufRet.f32 %723, 2
  %727 = extractvalue %dx.types.CBufRet.f32 %723, 3
  %728 = fmul fast float %724, %647
  %729 = fadd fast float %728, %725
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %731 = fmul fast float %726, %647
  %732 = fadd fast float %731, %727
  %733 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  %734 = call float @dx.op.binary.f32(i32 36, float %730, float %733)  ; FMin(a,b)
  %735 = select i1 %633, float %734, float 1.000000e+00
  %736 = mul i32 %719, 72
  %737 = add i32 %526, %736
  %738 = add i32 %737, 16
  %739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  %741 = extractvalue %dx.types.ResRet.f32 %739, 1
  %742 = extractvalue %dx.types.ResRet.f32 %739, 2
  %743 = extractvalue %dx.types.ResRet.f32 %739, 3
  %744 = add i32 %737, 36
  %745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = add i32 %737, 56
  %748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  %750 = fmul fast float %352, 3.906250e-03
  %751 = fmul fast float %750, %525
  %752 = fmul fast float %751, %746
  %753 = fmul fast float %752, %749
  %754 = extractvalue %dx.types.ResRet.f32 %748, 1
  %755 = fadd fast float %753, %754
  %756 = call float @dx.op.binary.f32(i32 35, float %755, float 0.000000e+00)  ; FMax(a,b)
  %757 = add i32 %737, 32
  %758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  br i1 %631, label %760, label %793

; <label>:760                                     ; preds = %715
  %761 = fmul fast float %746, %347
  %762 = fmul fast float %746, %348
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %765 = add i32 %737, 40
  %766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %765, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = extractvalue %dx.types.ResRet.f32 %766, 1
  %769 = extractvalue %dx.types.ResRet.f32 %766, 2
  %770 = extractvalue %dx.types.ResRet.f32 %766, 3
  %771 = fadd fast float %764, %195
  %772 = fadd fast float %771, %769
  %773 = fmul fast float %771, %768
  %774 = call float @dx.op.unary.f32(i32 29, float %773)  ; Round_z(value)
  %775 = fmul fast float %767, %774
  %776 = fsub fast float %771, %775
  %777 = fmul fast float %772, %768
  %778 = call float @dx.op.unary.f32(i32 29, float %777)  ; Round_z(value)
  %779 = fmul fast float %778, %767
  %780 = fsub fast float %772, %779
  %781 = fmul fast float %776, %761
  %782 = fmul fast float %776, %762
  %783 = fmul fast float %780, %761
  %784 = fmul fast float %780, %762
  %785 = fsub fast float %640, %781
  %786 = fsub fast float %641, %782
  %787 = fsub fast float %640, %783
  %788 = fsub fast float %641, %784
  %789 = fsub fast float %769, %776
  %790 = call float @dx.op.unary.f32(i32 6, float %789)  ; FAbs(value)
  %791 = fmul fast float %790, %770
  %792 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  br label %793

; <label>:793                                     ; preds = %760, %715
  %794 = phi float [ %785, %760 ], [ %640, %715 ]
  %795 = phi float [ %786, %760 ], [ %641, %715 ]
  %796 = phi float [ %787, %760 ], [ %640, %715 ]
  %797 = phi float [ %788, %760 ], [ %641, %715 ]
  %798 = phi float [ %792, %760 ], [ 0.000000e+00, %715 ]
  %799 = fmul fast float %503, 4.000000e+00
  %800 = uitofp i32 %721 to float
  %801 = fadd fast float %800, %799
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 0
  %804 = extractvalue %dx.types.CBufRet.f32 %802, 1
  %805 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %806 = extractvalue %dx.types.CBufRet.f32 %802, 3
  %807 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 0
  store float %803, float* %807, align 4
  %808 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 1
  store float %804, float* %808, align 4
  %809 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 2
  store float %805, float* %809, align 4
  %810 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 3
  store float %806, float* %810, align 4
  %811 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 %721
  %812 = load float, float* %811, align 4, !tbaa !108, !noalias !112
  %813 = fmul fast float %812, %506
  %814 = select i1 %633, float %813, float %506
  %815 = fmul fast float %794, %740
  %816 = call float @dx.op.tertiary.f32(i32 46, float %741, float %795, float %815)  ; FMad(a,b,c)
  %817 = fmul fast float %794, %742
  %818 = call float @dx.op.tertiary.f32(i32 46, float %743, float %795, float %817)  ; FMad(a,b,c)
  %819 = add i32 %737, 8
  %820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = fadd fast float %821, %816
  %824 = fadd fast float %822, %818
  %825 = fmul fast float %823, %814
  %826 = fmul fast float %824, %814
  %827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = extractvalue %dx.types.ResRet.f32 %827, 1
  %830 = fmul fast float %825, %828
  %831 = fmul fast float %826, %829
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 2
  %834 = fadd fast float %830, %833
  %835 = fadd fast float %831, %833
  %836 = fmul fast float %796, %740
  %837 = call float @dx.op.tertiary.f32(i32 46, float %741, float %797, float %836)  ; FMad(a,b,c)
  %838 = fmul fast float %796, %742
  %839 = call float @dx.op.tertiary.f32(i32 46, float %743, float %797, float %838)  ; FMad(a,b,c)
  %840 = fadd fast float %821, %837
  %841 = fadd fast float %822, %839
  %842 = fmul fast float %840, %814
  %843 = fmul fast float %841, %814
  %844 = fmul fast float %842, %828
  %845 = fmul fast float %843, %829
  %846 = fadd fast float %844, %833
  %847 = fadd fast float %845, %833
  %848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %62, float %834, float %835, float %801, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = extractvalue %dx.types.ResRet.f32 %848, 1
  %851 = extractvalue %dx.types.ResRet.f32 %848, 3
  %852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %62, float %846, float %847, float %801, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %631, label %853, label %866

; <label>:853                                     ; preds = %793
  %854 = extractvalue %dx.types.ResRet.f32 %852, 3
  %855 = extractvalue %dx.types.ResRet.f32 %852, 1
  %856 = extractvalue %dx.types.ResRet.f32 %852, 0
  %857 = fsub fast float %856, %849
  %858 = fsub fast float %855, %850
  %859 = fsub fast float %854, %851
  %860 = fmul fast float %857, %798
  %861 = fmul fast float %858, %798
  %862 = fmul fast float %859, %798
  %863 = fadd fast float %860, %849
  %864 = fadd fast float %861, %850
  %865 = fadd fast float %862, %851
  br label %866

; <label>:866                                     ; preds = %853, %793
  %867 = phi float [ %863, %853 ], [ %849, %793 ]
  %868 = phi float [ %864, %853 ], [ %850, %793 ]
  %869 = phi float [ %865, %853 ], [ %851, %793 ]
  %870 = fmul fast float %867, 2.000000e+00
  %871 = fmul fast float %868, 2.000000e+00
  %872 = fadd fast float %870, -1.000000e+00
  %873 = fadd fast float %871, -1.000000e+00
  %874 = fmul fast float %872, %740
  %875 = call float @dx.op.tertiary.f32(i32 46, float %873, float %742, float %874)  ; FMad(a,b,c)
  %876 = fmul fast float %872, %741
  %877 = call float @dx.op.tertiary.f32(i32 46, float %873, float %743, float %876)  ; FMad(a,b,c)
  %878 = fmul fast float %735, %636
  %879 = fmul fast float %878, %756
  %880 = fmul fast float %879, %759
  %881 = fmul fast float %875, %880
  %882 = fmul fast float %881, %828
  %883 = fmul fast float %877, %880
  %884 = fmul fast float %883, %829
  %885 = fadd fast float %882, %702
  %886 = fadd fast float %884, %703
  %887 = add i32 %737, 64
  %888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 0
  %890 = fmul fast float %889, %869
  %891 = extractvalue %dx.types.ResRet.f32 %888, 1
  %892 = fadd fast float %890, %891
  %893 = call float @dx.op.binary.f32(i32 35, float %701, float %892)  ; FMax(a,b)
  %894 = add nuw i32 %705, 1
  %895 = icmp eq i32 %894, %697
  br i1 %895, label %896, label %700

; <label>:896                                     ; preds = %866
  br label %897

; <label>:897                                     ; preds = %896, %694
  %898 = phi float [ 0.000000e+00, %694 ], [ %893, %896 ]
  %899 = phi float [ 0.000000e+00, %694 ], [ %885, %896 ]
  %900 = phi float [ 0.000000e+00, %694 ], [ %886, %896 ]
  %901 = call float @dx.op.dot3.f32(i32 55, float %899, float %900, float 1.000000e+00, float %899, float %900, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %902 = call float @dx.op.unary.f32(i32 25, float %901)  ; Rsqrt(value)
  %903 = fmul fast float %902, %899
  %904 = fmul fast float %902, %900
  %905 = fmul fast float %898, %552
  %906 = fadd fast float %905, %553
  %907 = call float @dx.op.unary.f32(i32 7, float %906)  ; Saturate(value)
  br label %908

; <label>:908                                     ; preds = %897, %492
  %909 = phi float [ %903, %897 ], [ 0.000000e+00, %492 ]
  %910 = phi float [ %904, %897 ], [ 0.000000e+00, %492 ]
  %911 = phi float [ %902, %897 ], [ 0.000000e+00, %492 ]
  %912 = phi float [ %907, %897 ], [ 0.000000e+00, %492 ]
  %913 = fmul fast float %909, %490
  %914 = fmul fast float %910, %490
  %915 = fadd fast float %913, %440
  %916 = fadd fast float %914, %441
  %917 = fadd fast float %912, %623
  %918 = fmul fast float %911, %490
  %919 = fadd fast float %913, %442
  %920 = fadd fast float %914, %443
  %921 = fadd fast float %918, %444
  %922 = fmul fast float %912, %490
  %923 = fadd fast float %922, %446
  %924 = fmul fast float %917, %490
  %925 = fadd fast float %924, %447
  %926 = icmp ne i32 %509, 0
  %927 = select i1 %926, i32 2, i32 0
  %928 = fcmp fast ogt float %912, 0.000000e+00
  %929 = select i1 %928, i32 4, i32 0
  %930 = fmul fast float %569, %352
  %931 = fadd fast float %930, %570
  %932 = call float @dx.op.binary.f32(i32 35, float %931, float 0.000000e+00)  ; FMax(a,b)
  %933 = fmul fast float %932, %565
  %934 = fadd fast float %933, %566
  %935 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  %936 = fmul fast float %924, %935
  %937 = fadd fast float %936, %449
  %938 = icmp ne i32 %579, 0
  %939 = select i1 %938, i32 8, i32 0
  %940 = shl i32 %500, 3
  %941 = and i32 %940, 16
  %942 = shl i32 %500, 2
  %943 = and i32 %942, 256
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 0
  %946 = fmul fast float %945, %89
  %947 = extractvalue %dx.types.CBufRet.f32 %944, 1
  %948 = fadd fast float %946, %947
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 0
  %952 = fmul fast float %951, %949
  %953 = select i1 %938, float %952, float 0.000000e+00
  %954 = fcmp fast ogt float %953, 0.000000e+00
  br i1 %954, label %955, label %1086

; <label>:955                                     ; preds = %908
  %956 = add i32 %227, 0
  %957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %956, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %958 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %957, i32 0)  ; GetDimensions(handle,mipLevel)
  %959 = extractvalue %dx.types.Dimensions %958, 0
  %960 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %959)  ; FirstbitLo(value)
  %961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.i32 %961, 1
  %963 = sub nsw i32 %962, %960
  %964 = sitofp i32 %963 to float
  %965 = fsub fast float %545, %964
  %966 = call float @dx.op.binary.f32(i32 35, float %965, float 0.000000e+00)  ; FMax(a,b)
  %967 = fmul fast float %529, %237
  %968 = fmul fast float %529, %238
  %969 = fmul fast float %543, %81
  %970 = fmul fast float %543, %82
  %971 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %972 = call float @dx.op.unary.f32(i32 22, float %970)  ; Frc(value)
  %973 = fmul fast float %971, 2.000000e+00
  %974 = fmul fast float %972, 2.000000e+00
  %975 = fadd fast float %973, -1.000000e+00
  %976 = fadd fast float %974, -1.000000e+00
  %977 = call float @dx.op.unary.f32(i32 6, float %975)  ; FAbs(value)
  %978 = call float @dx.op.unary.f32(i32 6, float %976)  ; FAbs(value)
  %979 = fsub fast float 1.000000e+00, %977
  %980 = fmul fast float %979, %978
  %981 = fsub fast float %979, %980
  %982 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %981, float* %982, align 4, !tbaa !108, !noalias !117
  %983 = fmul fast float %978, %977
  %984 = fsub fast float %977, %983
  %985 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %984, float* %985, align 4, !tbaa !108, !noalias !117
  %986 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %980, float* %986, align 4, !tbaa !108, !noalias !117
  %987 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %983, float* %987, align 4, !tbaa !108, !noalias !117
  br label %988

; <label>:988                                     ; preds = %988, %955
  %989 = phi i32 [ 0, %955 ], [ %1083, %988 ]
  %990 = phi float [ %915, %955 ], [ %1081, %988 ]
  %991 = phi float [ %916, %955 ], [ %1082, %988 ]
  %992 = mul i32 %989, 2
  %993 = add i32 0, %992
  %994 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %993
  %995 = load float, float* %994, align 4
  %996 = mul i32 %989, 2
  %997 = add i32 1, %996
  %998 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %997
  %999 = load float, float* %998, align 4
  %1000 = fmul fast float %995, 5.000000e-01
  %1001 = fmul fast float %999, 5.000000e-01
  %1002 = fsub fast float 1.000000e+00, %995
  %1003 = fsub fast float 1.000000e+00, %999
  %1004 = fmul fast float %1002, 5.000000e-01
  %1005 = fmul fast float %1003, 5.000000e-01
  %1006 = fadd fast float %1000, %969
  %1007 = fadd fast float %1001, %970
  %1008 = call float @dx.op.unary.f32(i32 27, float %1006)  ; Round_ni(value)
  %1009 = call float @dx.op.unary.f32(i32 27, float %1007)  ; Round_ni(value)
  %1010 = fadd fast float %1008, %1004
  %1011 = fadd fast float %1009, %1005
  %1012 = fmul fast float %1010, %544
  %1013 = fmul fast float %1011, %544
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = fmul fast float %1012, %1015
  %1017 = fmul fast float %1013, %1015
  %1018 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1019 = fadd fast float %1016, %1018
  %1020 = fadd fast float %1017, %1018
  %1021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %957, %dx.types.Handle %64, float %1019, float %1020, float %215, float undef, i32 0, i32 0, i32 undef, float %966)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 3
  %1026 = fmul fast float %1025, 2.000000e+00
  %1027 = fmul fast float %1026, %1022
  %1028 = fmul fast float %1026, %1023
  %1029 = fsub fast float %1027, %1025
  %1030 = fsub fast float %1028, %1025
  %1031 = fmul fast float %1029, %1029
  %1032 = fmul fast float %1030, %1030
  %1033 = fadd fast float %1031, %1032
  %1034 = call float @dx.op.unary.f32(i32 24, float %1033)  ; Sqrt(value)
  %1035 = fcmp fast ogt float %1034, 0.000000e+00
  %1036 = fdiv fast float 1.000000e+00, %1034
  %1037 = fmul fast float %1029, %1036
  %1038 = fmul fast float %1030, %1036
  %1039 = select i1 %1035, float %1037, float 0.000000e+00
  %1040 = select i1 %1035, float %1038, float 0.000000e+00
  %1041 = add i32 %579, 0
  %1042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1041, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 1
  %1045 = fmul fast float %540, %529
  %1046 = fmul fast float %1045, %1034
  %1047 = fsub fast float -0.000000e+00, %1039
  %1048 = fmul fast float %1040, %967
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %968, float %1048)  ; FMad(a,b,c)
  %1050 = fmul fast float %1039, %967
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %968, float %1050)  ; FMad(a,b,c)
  %1052 = fmul fast float %1046, %1044
  %1053 = fsub fast float %1051, %1052
  %1054 = fmul fast float %1049, %532
  %1055 = fmul fast float %1053, %533
  %1056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1057 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1042, %dx.types.Handle %1056, float %1054, float %1055, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 1
  %1059 = extractvalue %dx.types.ResRet.f32 %1057, 3
  %1060 = fadd fast float %1058, %1059
  %1061 = fmul fast float %1060, %582
  %1062 = fsub fast float %1061, %582
  %1063 = fsub fast float %1058, %1059
  %1064 = fmul fast float %1063, %582
  %1065 = fmul fast float %1062, %1040
  %1066 = call float @dx.op.tertiary.f32(i32 46, float %1039, float %1064, float %1065)  ; FMad(a,b,c)
  %1067 = fmul fast float %1062, %1047
  %1068 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %1064, float %1067)  ; FMad(a,b,c)
  %1069 = fmul fast float %1066, %532
  %1070 = fmul fast float %1068, %533
  %1071 = fmul fast float %536, %352
  %1072 = fadd fast float %1071, %537
  %1073 = call float @dx.op.binary.f32(i32 35, float %1072, float 0.000000e+00)  ; FMax(a,b)
  %1074 = fmul fast float %953, %490
  %1075 = fmul fast float %1074, %1073
  %1076 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %989
  %1077 = load float, float* %1076, align 4, !tbaa !108, !noalias !117
  %1078 = fmul fast float %1075, %1077
  %1079 = fmul fast float %1069, %1078
  %1080 = fmul fast float %1070, %1078
  %1081 = fadd fast float %1079, %990
  %1082 = fadd fast float %1080, %991
  %1083 = add nuw nsw i32 %989, 1
  %1084 = icmp eq i32 %1083, 4
  br i1 %1084, label %1085, label %988, !llvm.loop !120

; <label>:1085                                    ; preds = %988
  br label %1086

; <label>:1086                                    ; preds = %1085, %908
  %1087 = phi float [ %915, %908 ], [ %1081, %1085 ]
  %1088 = phi float [ %916, %908 ], [ %1082, %1085 ]
  %1089 = and i32 %500, 16
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1091, label %1092

; <label>:1091                                    ; preds = %1086
  br label %1158

; <label>:1092                                    ; preds = %1086
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1096 = fadd fast float %1094, %155
  %1097 = fadd fast float %1095, %156
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.CBufRet.f32 %1098, 1
  %1101 = fsub fast float %1096, %1099
  %1102 = fsub fast float %1097, %1100
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 2
  %1105 = fmul fast float %1101, %1104
  %1106 = fmul fast float %1102, %1104
  %1107 = fadd fast float %1105, 5.000000e-01
  %1108 = fadd fast float %1106, 5.000000e-01
  %1109 = fcmp fast olt float %1107, 0.000000e+00
  %1110 = fcmp fast olt float %1108, 0.000000e+00
  %1111 = or i1 %1109, %1110
  %1112 = fcmp fast oge float %1107, 1.000000e+00
  %1113 = fcmp fast oge float %1108, 1.000000e+00
  %1114 = or i1 %1112, %1113
  %1115 = or i1 %1111, %1114
  br i1 %1115, label %1149, label %1116

; <label>:1116                                    ; preds = %1092
  %1117 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1118 = fadd fast float %1117, %157
  %1119 = fmul fast float %1104, %1096
  %1120 = fmul fast float %1104, %1097
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1123 = fsub fast float %1118, %1122
  %1124 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1125 = fmul fast float %1123, %1124
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1127 = call float @dx.op.binary.f32(i32 36, float %1108, float %1126)  ; FMin(a,b)
  %1128 = call float @dx.op.binary.f32(i32 36, float %1107, float %1127)  ; FMin(a,b)
  %1129 = call float @dx.op.binary.f32(i32 35, float %1108, float %1126)  ; FMax(a,b)
  %1130 = call float @dx.op.binary.f32(i32 35, float %1107, float %1129)  ; FMax(a,b)
  %1131 = fsub fast float 1.000000e+00, %1130
  %1132 = call float @dx.op.binary.f32(i32 36, float %1128, float %1131)  ; FMin(a,b)
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 3
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 1
  %1137 = call float @dx.op.binary.f32(i32 35, float %1136, float %1134)  ; FMax(a,b)
  %1138 = fsub fast float %1137, %1136
  %1139 = fsub fast float %1132, %1136
  %1140 = fdiv fast float %1139, %1138
  %1141 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  %1142 = fmul fast float %1141, 2.000000e+00
  %1143 = fsub fast float 3.000000e+00, %1142
  %1144 = fmul fast float %1141, %1141
  %1145 = fmul fast float %1144, %1143
  %1146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %62, float %1119, float %1120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = fmul fast float %1145, %1147
  br label %1149

; <label>:1149                                    ; preds = %1116, %1092
  %1150 = phi float [ %1148, %1116 ], [ 0.000000e+00, %1092 ]
  %1151 = fmul fast float %576, %237
  %1152 = fmul fast float %576, %238
  %1153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1154 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %625, %dx.types.Handle %1153, float %1151, float %1152, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = fmul fast float %1155, %1150
  %1157 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1156)  ; FMax(a,b)
  br label %1158

; <label>:1158                                    ; preds = %1149, %1091
  %1159 = phi float [ %1157, %1149 ], [ 0.000000e+00, %1091 ]
  %1160 = fmul fast float %238, 3.906250e-03
  %1161 = fmul fast float %237, 7.812500e-03
  %1162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1163 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %625, %dx.types.Handle %1162, float %1161, float %1160, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %1164 = add i32 %588, 0
  %1165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1164, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1166 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1165, i32 0)  ; GetDimensions(handle,mipLevel)
  %1167 = extractvalue %dx.types.Dimensions %1166, 0
  %1168 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1167)  ; FirstbitLo(value)
  %1169 = uitofp i32 %1168 to float
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 1
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 2
  %1174 = fadd fast float %247, -7.000000e+00
  %1175 = fadd fast float %1174, %1169
  %1176 = fadd fast float %1175, %1171
  %1177 = fadd fast float %1176, %1173
  %1178 = call float @dx.op.binary.f32(i32 35, float %1177, float 0.000000e+00)  ; FMax(a,b)
  %1179 = and i32 %500, 8
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1197, label %1181

; <label>:1181                                    ; preds = %1158
  %1182 = fadd fast float %573, 1.000000e+00
  %1183 = fmul fast float %917, %1182
  %1184 = fsub fast float %1183, %573
  %1185 = fsub fast float %1182, %1184
  %1186 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1187 = fsub fast float 1.000000e+00, %1183
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1189 = fsub fast float %1186, %1188
  %1190 = fsub fast float %1159, %1188
  %1191 = fdiv fast float %1190, %1189
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1193 = fmul fast float %1192, 2.000000e+00
  %1194 = fsub fast float 3.000000e+00, %1193
  %1195 = fmul fast float %1192, %1192
  %1196 = fmul fast float %1195, %1194
  br label %1197

; <label>:1197                                    ; preds = %1181, %1158
  %1198 = phi float [ %1196, %1181 ], [ %1159, %1158 ]
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 3
  %1201 = fmul fast float %1200, %1198
  %1202 = fmul fast float %1201, %490
  %1203 = fadd fast float %1202, %453
  %1204 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1205 = and i32 %500, 32
  %1206 = icmp eq i32 %1205, 0
  br i1 %1206, label %1223, label %1207

; <label>:1207                                    ; preds = %1197
  %1208 = add i32 %591, 0
  %1209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1208, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1209, %dx.types.Handle %63, float %1201, float %562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.ResRet.f32 %1210, 2
  %1214 = extractvalue %dx.types.ResRet.f32 %1210, 3
  %1215 = and i32 %585, 255
  %1216 = uitofp i32 %1215 to float
  %1217 = lshr i32 %585, 8
  %1218 = and i32 %1217, 255
  %1219 = uitofp i32 %1218 to float
  %1220 = fmul fast float %1214, %1216
  %1221 = fadd fast float %1220, %1219
  %1222 = fmul fast float %1221, 0x3F70101000000000
  br label %1223

; <label>:1223                                    ; preds = %1207, %1197
  %1224 = phi float [ %1211, %1207 ], [ %556, %1197 ]
  %1225 = phi float [ %1212, %1207 ], [ %557, %1197 ]
  %1226 = phi float [ %1213, %1207 ], [ %558, %1197 ]
  %1227 = phi float [ %1222, %1207 ], [ %559, %1197 ]
  %1228 = fsub fast float %1224, %512
  %1229 = fsub fast float %1225, %513
  %1230 = fsub fast float %1226, %514
  %1231 = fmul fast float %1228, %1201
  %1232 = fmul fast float %1229, %1201
  %1233 = fmul fast float %1230, %1201
  %1234 = fadd fast float %1231, %512
  %1235 = fadd fast float %1232, %513
  %1236 = fadd fast float %1233, %514
  %1237 = fsub fast float %1227, %515
  %1238 = fmul fast float %1237, %1201
  %1239 = fadd fast float %1238, %515
  %1240 = fmul fast float %521, %378
  %1241 = fadd fast float %1240, %522
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 2
  %1244 = fcmp fast oge float %1241, %1243
  %1245 = select i1 %1244, i32 512, i32 0
  %1246 = or i32 %941, %450
  %1247 = or i32 %1246, %943
  %1248 = or i32 %1247, %927
  %1249 = or i32 %1248, %939
  %1250 = or i32 %1249, %929
  %1251 = or i32 %1250, %1245
  %1252 = and i32 %455, 65535
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = lshr i32 %455, 16
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = and i32 %456, 65535
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = lshr i32 %456, 16
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = fmul fast float %1234, %490
  %1261 = fmul fast float %1235, %490
  %1262 = fmul fast float %1236, %490
  %1263 = fmul fast float %1239, %490
  %1264 = fadd fast float %1253, %1260
  %1265 = fadd fast float %1255, %1261
  %1266 = fadd fast float %1257, %1262
  %1267 = fadd fast float %1259, %1263
  %1268 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1264)  ; LegacyF32ToF16(value)
  %1269 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1265)  ; LegacyF32ToF16(value)
  %1270 = shl i32 %1269, 16
  %1271 = or i32 %1270, %1268
  %1272 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1266)  ; LegacyF32ToF16(value)
  %1273 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1267)  ; LegacyF32ToF16(value)
  %1274 = shl i32 %1273, 16
  %1275 = or i32 %1274, %1272
  %1276 = and i32 %458, 65535
  %1277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1276)  ; LegacyF16ToF32(value)
  %1278 = lshr i32 %458, 16
  %1279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1278)  ; LegacyF16ToF32(value)
  %1280 = fmul fast float %518, %490
  %1281 = fadd fast float %1277, %490
  %1282 = fadd fast float %1279, %1280
  %1283 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1281)  ; LegacyF32ToF16(value)
  %1284 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1282)  ; LegacyF32ToF16(value)
  %1285 = shl i32 %1284, 16
  %1286 = or i32 %1285, %1283
  %1287 = fcmp fast ogt float %1241, 0.000000e+00
  %1288 = select i1 %1287, float 1.000000e+00, float 0.000000e+00
  %1289 = and i32 %457, 65535
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = lshr i32 %457, 16
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = fmul fast float %1241, %490
  %1294 = fmul fast float %1288, %490
  %1295 = fadd fast float %1290, %1293
  %1296 = fadd fast float %1292, %1294
  %1297 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1298 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1299 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1297)  ; LegacyF32ToF16(value)
  %1300 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1298)  ; LegacyF32ToF16(value)
  %1301 = shl i32 %1300, 16
  %1302 = or i32 %1301, %1299
  br label %1303

; <label>:1303                                    ; preds = %1223, %438
  %1304 = phi i32 [ %608, %1223 ], [ %439, %438 ]
  %1305 = phi float [ %1087, %1223 ], [ %440, %438 ]
  %1306 = phi float [ %1088, %1223 ], [ %441, %438 ]
  %1307 = phi float [ %919, %1223 ], [ %442, %438 ]
  %1308 = phi float [ %920, %1223 ], [ %443, %438 ]
  %1309 = phi float [ %921, %1223 ], [ %444, %438 ]
  %1310 = phi float [ %622, %1223 ], [ %445, %438 ]
  %1311 = phi float [ %923, %1223 ], [ %446, %438 ]
  %1312 = phi float [ %925, %1223 ], [ %447, %438 ]
  %1313 = phi i32 [ %497, %1223 ], [ %448, %438 ]
  %1314 = phi float [ %937, %1223 ], [ %449, %438 ]
  %1315 = phi i32 [ %1251, %1223 ], [ %450, %438 ]
  %1316 = phi float [ %1163, %1223 ], [ %451, %438 ]
  %1317 = phi float [ %1178, %1223 ], [ %452, %438 ]
  %1318 = phi float [ %1204, %1223 ], [ %453, %438 ]
  %1319 = phi i32 [ %1271, %1223 ], [ %455, %438 ]
  %1320 = phi i32 [ %1275, %1223 ], [ %456, %438 ]
  %1321 = phi i32 [ %1302, %1223 ], [ %457, %438 ]
  %1322 = phi i32 [ %1286, %1223 ], [ %458, %438 ]
  %1323 = icmp eq i32 %463, 0
  br i1 %1323, label %1324, label %438

; <label>:1324                                    ; preds = %1303
  br label %1325

; <label>:1325                                    ; preds = %1324, %433
  %1326 = phi i32 [ %205, %433 ], [ %1304, %1324 ]
  %1327 = phi float [ 0.000000e+00, %433 ], [ %1305, %1324 ]
  %1328 = phi float [ 0.000000e+00, %433 ], [ %1306, %1324 ]
  %1329 = phi float [ 0.000000e+00, %433 ], [ %1307, %1324 ]
  %1330 = phi float [ 0.000000e+00, %433 ], [ %1308, %1324 ]
  %1331 = phi float [ 0.000000e+00, %433 ], [ %1309, %1324 ]
  %1332 = phi float [ 0.000000e+00, %433 ], [ %1310, %1324 ]
  %1333 = phi float [ 0.000000e+00, %433 ], [ %1311, %1324 ]
  %1334 = phi float [ 0.000000e+00, %433 ], [ %1312, %1324 ]
  %1335 = phi i32 [ 0, %433 ], [ %1313, %1324 ]
  %1336 = phi float [ 0.000000e+00, %433 ], [ %1314, %1324 ]
  %1337 = phi i32 [ 0, %433 ], [ %1315, %1324 ]
  %1338 = phi float [ 0.000000e+00, %433 ], [ %1316, %1324 ]
  %1339 = phi float [ 0.000000e+00, %433 ], [ %1317, %1324 ]
  %1340 = phi float [ 0.000000e+00, %433 ], [ %1318, %1324 ]
  %1341 = phi i32 [ %182, %433 ], [ %1319, %1324 ]
  %1342 = phi i32 [ %182, %433 ], [ %1320, %1324 ]
  %1343 = phi i32 [ %182, %433 ], [ %1321, %1324 ]
  %1344 = phi i32 [ %182, %433 ], [ %1322, %1324 ]
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 2
  %1347 = fmul fast float %1346, 0x3FE3C6EF40000000
  %1348 = frem fast float %100, 2.560000e+02
  %1349 = frem fast float %101, 2.560000e+02
  %1350 = fptoui float %1348 to i32
  %1351 = fptoui float %1349 to i32
  %1352 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %1350, i32 %1351, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1353 = extractvalue %dx.types.ResRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.ResRet.f32 %1352, 1
  %1355 = fadd fast float %1353, %1347
  %1356 = fadd fast float %1354, %1347
  %1357 = call float @dx.op.unary.f32(i32 22, float %1355)  ; Frc(value)
  %1358 = call float @dx.op.unary.f32(i32 22, float %1356)  ; Frc(value)
  %1359 = fcmp fast ogt float %121, 0.000000e+00
  %1360 = fcmp fast olt float %121, 0.000000e+00
  %1361 = zext i1 %1359 to i32
  %1362 = zext i1 %1360 to i32
  %1363 = sub nsw i32 %1361, %1362
  %1364 = sitofp i32 %1363 to float
  %1365 = fadd fast float %1364, %121
  %1366 = fdiv fast float -1.000000e+00, %1365
  %1367 = fmul fast float %119, %120
  %1368 = fmul fast float %1367, %1366
  %1369 = fmul fast float %119, %119
  %1370 = fmul fast float %1369, %1364
  %1371 = fmul fast float %1370, %1366
  %1372 = fadd fast float %1371, 1.000000e+00
  %1373 = fmul fast float %1368, %1364
  %1374 = fmul fast float %1364, %119
  %1375 = fsub fast float -0.000000e+00, %1374
  %1376 = fmul fast float %120, %120
  %1377 = fmul fast float %1376, %1366
  %1378 = fadd fast float %1377, %1364
  %1379 = fsub fast float -0.000000e+00, %120
  %1380 = and i32 %1341, 65535
  %1381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1380)  ; LegacyF16ToF32(value)
  %1382 = lshr i32 %1341, 16
  %1383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1382)  ; LegacyF16ToF32(value)
  %1384 = and i32 %1342, 65535
  %1385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1384)  ; LegacyF16ToF32(value)
  %1386 = lshr i32 %1342, 16
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = and i32 %1344, 65535
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = lshr i32 %1344, 16
  %1391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1390)  ; LegacyF16ToF32(value)
  %1392 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  %1393 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %1394 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %1395 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %1396 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %1397 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %1398 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %1399 = fadd fast float %1393, %155
  %1400 = fadd fast float %1394, %156
  %1401 = fadd fast float %1395, %157
  %1402 = fadd fast float %1396, %155
  %1403 = fadd fast float %1397, %156
  %1404 = fadd fast float %1398, %157
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.CBufRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.CBufRet.f32 %1405, 2
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 2
  %1411 = extractvalue %dx.types.CBufRet.f32 %1409, 3
  %1412 = fmul fast float %1406, %100
  %1413 = fmul fast float %1412, %1410
  %1414 = fmul fast float %1407, %101
  %1415 = fmul fast float %1414, %1411
  %1416 = fptoui float %1413 to i32
  %1417 = fptoui float %1415 to i32
  %1418 = fadd fast float %1406, -1.000000e+00
  %1419 = fadd fast float %1407, -1.000000e+00
  %1420 = fptoui float %1418 to i32
  %1421 = fptoui float %1419 to i32
  %1422 = call i32 @dx.op.binary.i32(i32 40, i32 %1416, i32 %1420)  ; UMin(a,b)
  %1423 = call i32 @dx.op.binary.i32(i32 40, i32 %1417, i32 %1421)  ; UMin(a,b)
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1426 = extractvalue %dx.types.CBufRet.f32 %1424, 3
  %1427 = fmul fast float %1425, %89
  %1428 = fsub fast float %1427, %1426
  %1429 = fadd fast float %1408, -1.000000e+00
  %1430 = call float @dx.op.binary.f32(i32 36, float %1428, float %1429)  ; FMin(a,b)
  %1431 = fptoui float %1430 to i32
  %1432 = fptoui float %1406 to i32
  %1433 = fptoui float %1407 to i32
  %1434 = mul i32 %1431, %1433
  %1435 = add i32 %1434, %1423
  %1436 = mul i32 %1435, %1432
  %1437 = add i32 %1436, %1422
  %1438 = shl i32 %1437, 2
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 1023
  %1442 = lshr i32 %1440, 10
  %1443 = icmp eq i32 %1441, 0
  br i1 %1443, label %1840, label %1444

; <label>:1444                                    ; preds = %1325
  %1445 = and i32 %1440, 1023
  br label %1446

; <label>:1446                                    ; preds = %1567, %1444
  %1447 = phi float [ %1568, %1567 ], [ 0.000000e+00, %1444 ]
  %1448 = phi float [ %1569, %1567 ], [ 0.000000e+00, %1444 ]
  %1449 = phi float [ %1570, %1567 ], [ 0.000000e+00, %1444 ]
  %1450 = phi float [ %1571, %1567 ], [ %1327, %1444 ]
  %1451 = phi float [ %1572, %1567 ], [ %1328, %1444 ]
  %1452 = phi float [ %1573, %1567 ], [ %1389, %1444 ]
  %1453 = phi float [ %1574, %1567 ], [ %1392, %1444 ]
  %1454 = phi float [ %1575, %1567 ], [ 0.000000e+00, %1444 ]
  %1455 = phi float [ %1576, %1567 ], [ %1387, %1444 ]
  %1456 = phi float [ %1577, %1567 ], [ %1381, %1444 ]
  %1457 = phi float [ %1578, %1567 ], [ %1383, %1444 ]
  %1458 = phi float [ %1579, %1567 ], [ %1385, %1444 ]
  %1459 = phi i32 [ %1580, %1567 ], [ 0, %1444 ]
  %1460 = phi i32 [ %1516, %1567 ], [ 0, %1444 ]
  %1461 = add nuw nsw i32 %1460, %1442
  %1462 = shl i32 %1461, 2
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = shl i32 %1464, 8
  %1466 = or i32 %1465, 48
  %1467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.ResRet.f32 %1467, 1
  %1470 = extractvalue %dx.types.ResRet.f32 %1467, 2
  %1471 = extractvalue %dx.types.ResRet.f32 %1467, 3
  %1472 = or i32 %1465, 64
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = extractvalue %dx.types.ResRet.i32 %1473, 1
  %1476 = or i32 %1465, 80
  %1477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1476, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 2
  %1479 = extractvalue %dx.types.ResRet.f32 %1477, 3
  %1480 = or i32 %1465, 96
  %1481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.f32 %1481, 0
  %1483 = extractvalue %dx.types.ResRet.f32 %1481, 1
  %1484 = extractvalue %dx.types.ResRet.f32 %1481, 2
  %1485 = extractvalue %dx.types.ResRet.f32 %1481, 3
  %1486 = or i32 %1465, 112
  %1487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.f32 %1487, 2
  %1489 = or i32 %1465, 128
  %1490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 0
  %1492 = extractvalue %dx.types.ResRet.f32 %1490, 1
  %1493 = extractvalue %dx.types.ResRet.f32 %1490, 2
  %1494 = extractvalue %dx.types.ResRet.f32 %1490, 3
  %1495 = or i32 %1465, 144
  %1496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.f32 %1496, 0
  %1498 = extractvalue %dx.types.ResRet.f32 %1496, 1
  %1499 = extractvalue %dx.types.ResRet.f32 %1496, 2
  %1500 = extractvalue %dx.types.ResRet.f32 %1496, 3
  %1501 = or i32 %1465, 160
  %1502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.f32 %1502, 0
  %1504 = extractvalue %dx.types.ResRet.f32 %1502, 1
  %1505 = extractvalue %dx.types.ResRet.f32 %1502, 2
  %1506 = or i32 %1465, 192
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = or i32 %1465, 208
  %1510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.f32 %1510, 0
  %1512 = or i32 %1465, 248
  %1513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.ResRet.f32 %1513, 1
  %1516 = add nuw nsw i32 %1460, 1
  %1517 = bitcast float %1471 to i32
  %1518 = and i32 %1517, 512
  %1519 = icmp ne i32 %1518, 0
  %1520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  %1522 = extractvalue %dx.types.ResRet.f32 %1520, 1
  %1523 = extractvalue %dx.types.ResRet.f32 %1520, 2
  %1524 = extractvalue %dx.types.ResRet.f32 %1520, 3
  %1525 = call float @dx.op.dot4.f32(i32 56, float %1521, float %1522, float %1523, float %1524, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1526 = or i32 %1465, 16
  %1527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.f32 %1527, 0
  %1529 = extractvalue %dx.types.ResRet.f32 %1527, 1
  %1530 = extractvalue %dx.types.ResRet.f32 %1527, 2
  %1531 = extractvalue %dx.types.ResRet.f32 %1527, 3
  %1532 = call float @dx.op.dot4.f32(i32 56, float %1528, float %1529, float %1530, float %1531, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1533 = or i32 %1465, 32
  %1534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.ResRet.f32 %1534, 1
  %1537 = extractvalue %dx.types.ResRet.f32 %1534, 2
  %1538 = extractvalue %dx.types.ResRet.f32 %1534, 3
  %1539 = call float @dx.op.dot4.f32(i32 56, float %1535, float %1536, float %1537, float %1538, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1540 = call float @dx.op.unary.f32(i32 27, float %1525)  ; Round_ni(value)
  %1541 = call float @dx.op.unary.f32(i32 6, float %1540)  ; FAbs(value)
  %1542 = call float @dx.op.unary.f32(i32 27, float %1532)  ; Round_ni(value)
  %1543 = call float @dx.op.unary.f32(i32 6, float %1542)  ; FAbs(value)
  %1544 = call float @dx.op.unary.f32(i32 6, float %1539)  ; FAbs(value)
  %1545 = call float @dx.op.unary.f32(i32 27, float %1544)  ; Round_ni(value)
  %1546 = fadd fast float %1543, %1541
  %1547 = fadd fast float %1546, %1545
  %1548 = fcmp fast oeq float %1547, 0.000000e+00
  %1549 = call float @dx.op.dot4.f32(i32 56, float %1521, float %1522, float %1523, float %1524, float %1399, float %1400, float %1401, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1550 = call float @dx.op.dot4.f32(i32 56, float %1528, float %1529, float %1530, float %1531, float %1399, float %1400, float %1401, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1551 = call float @dx.op.dot4.f32(i32 56, float %1521, float %1522, float %1523, float %1524, float %1402, float %1403, float %1404, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1552 = call float @dx.op.dot4.f32(i32 56, float %1528, float %1529, float %1530, float %1531, float %1402, float %1403, float %1404, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1553 = fsub fast float %1549, %1525
  %1554 = fsub fast float %1551, %1525
  %1555 = fsub fast float %1550, %1532
  %1556 = fsub fast float %1552, %1532
  %1557 = call float @dx.op.dot3.f32(i32 55, float %1468, float %1469, float %1470, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 2
  %1560 = call float @dx.op.unary.f32(i32 6, float %1557)  ; FAbs(value)
  %1561 = fadd fast float %1560, %1559
  %1562 = call float @dx.op.unary.f32(i32 7, float %1561)  ; Saturate(value)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1558, 0
  %1564 = fcmp fast ogt float %1562, %1563
  %1565 = and i1 %1548, %1564
  %1566 = and i1 %1519, %1565
  br i1 %1566, label %1582, label %1567

; <label>:1567                                    ; preds = %1826, %1664, %1582, %1446
  %1568 = phi float [ %1447, %1582 ], [ %1447, %1664 ], [ %1836, %1826 ], [ %1447, %1446 ]
  %1569 = phi float [ %1448, %1582 ], [ %1448, %1664 ], [ %1837, %1826 ], [ %1448, %1446 ]
  %1570 = phi float [ %1449, %1582 ], [ %1449, %1664 ], [ %1838, %1826 ], [ %1449, %1446 ]
  %1571 = phi float [ %1450, %1582 ], [ %1450, %1664 ], [ %1800, %1826 ], [ %1450, %1446 ]
  %1572 = phi float [ %1451, %1582 ], [ %1451, %1664 ], [ %1801, %1826 ], [ %1451, %1446 ]
  %1573 = phi float [ %1452, %1582 ], [ %1452, %1664 ], [ %1795, %1826 ], [ %1452, %1446 ]
  %1574 = phi float [ %1453, %1582 ], [ %1453, %1664 ], [ %1792, %1826 ], [ %1453, %1446 ]
  %1575 = phi float [ %1454, %1582 ], [ %1454, %1664 ], [ %1789, %1826 ], [ %1454, %1446 ]
  %1576 = phi float [ %1455, %1582 ], [ %1455, %1664 ], [ %1787, %1826 ], [ %1455, %1446 ]
  %1577 = phi float [ %1456, %1582 ], [ %1456, %1664 ], [ %1782, %1826 ], [ %1456, %1446 ]
  %1578 = phi float [ %1457, %1582 ], [ %1457, %1664 ], [ %1783, %1826 ], [ %1457, %1446 ]
  %1579 = phi float [ %1458, %1582 ], [ %1458, %1664 ], [ %1784, %1826 ], [ %1458, %1446 ]
  %1580 = phi i32 [ %1590, %1582 ], [ %1590, %1664 ], [ %1590, %1826 ], [ %1459, %1446 ]
  %1581 = icmp eq i32 %1516, %1445
  br i1 %1581, label %1839, label %1446

; <label>:1582                                    ; preds = %1446
  %1583 = extractvalue %dx.types.ResRet.f32 %1487, 3
  %1584 = extractvalue %dx.types.ResRet.f32 %1487, 1
  %1585 = extractvalue %dx.types.ResRet.f32 %1487, 0
  %1586 = extractvalue %dx.types.ResRet.f32 %1477, 1
  %1587 = extractvalue %dx.types.ResRet.f32 %1477, 0
  %1588 = extractvalue %dx.types.ResRet.i32 %1473, 3
  %1589 = extractvalue %dx.types.ResRet.i32 %1473, 2
  %1590 = add i32 %1459, 1
  %1591 = add i32 %1588, 0
  %1592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1591, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1594 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1592, %dx.types.Handle %1593, float %1525, float %1532, float undef, float undef, i32 0, i32 0, i32 undef, float %1553, float %1555, float undef, float %1554, float %1556, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1595 = extractvalue %dx.types.ResRet.f32 %1594, 0
  %1596 = fmul fast float %1595, %1587
  %1597 = fadd fast float %1596, %1586
  %1598 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  %1599 = fmul fast float %1525, %1482
  %1600 = call float @dx.op.tertiary.f32(i32 46, float %1483, float %1532, float %1599)  ; FMad(a,b,c)
  %1601 = fadd fast float %1600, %1585
  %1602 = fmul fast float %1525, %1484
  %1603 = call float @dx.op.tertiary.f32(i32 46, float %1485, float %1532, float %1602)  ; FMad(a,b,c)
  %1604 = fadd fast float %1603, %1584
  %1605 = fmul fast float %1553, %1482
  %1606 = call float @dx.op.tertiary.f32(i32 46, float %1483, float %1555, float %1605)  ; FMad(a,b,c)
  %1607 = fmul fast float %1553, %1484
  %1608 = call float @dx.op.tertiary.f32(i32 46, float %1485, float %1555, float %1607)  ; FMad(a,b,c)
  %1609 = fmul fast float %1554, %1482
  %1610 = call float @dx.op.tertiary.f32(i32 46, float %1483, float %1556, float %1609)  ; FMad(a,b,c)
  %1611 = fmul fast float %1554, %1484
  %1612 = call float @dx.op.tertiary.f32(i32 46, float %1485, float %1556, float %1611)  ; FMad(a,b,c)
  %1613 = add i32 %1589, 0
  %1614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1613, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1615 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1614, %dx.types.Handle %1593, float %1601, float %1604, float undef, float undef, i32 0, i32 0, i32 undef, float %1606, float %1608, float undef, float %1610, float %1612, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1616 = extractvalue %dx.types.ResRet.f32 %1615, 0
  %1617 = and i32 %1517, 1024
  %1618 = icmp ne i32 %1617, 0
  %1619 = fcmp fast ogt float %1616, 0x3FE0101020000000
  %1620 = uitofp i1 %1619 to float
  %1621 = select i1 %1618, float %1620, float %1616
  %1622 = and i32 %1517, 8192
  %1623 = icmp ne i32 %1622, 0
  %1624 = select i1 %1623, float %1583, float 1.000000e+00
  %1625 = fmul fast float %1525, 2.000000e+00
  %1626 = fadd fast float %1625, -1.000000e+00
  %1627 = call float @dx.op.unary.f32(i32 6, float %1626)  ; FAbs(value)
  %1628 = fmul fast float %1627, %1514
  %1629 = fsub fast float %1628, %1514
  %1630 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1631 = fmul fast float %1532, 2.000000e+00
  %1632 = fadd fast float %1631, -1.000000e+00
  %1633 = call float @dx.op.unary.f32(i32 6, float %1632)  ; FAbs(value)
  %1634 = fmul fast float %1633, %1515
  %1635 = fsub fast float %1634, %1515
  %1636 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  %1637 = fmul fast float %1544, %1478
  %1638 = fsub fast float %1637, %1478
  %1639 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1640 = fmul fast float %1598, %1624
  %1641 = fmul fast float %1640, %1595
  %1642 = fmul fast float %1641, %1630
  %1643 = fmul fast float %1642, %1621
  %1644 = fmul fast float %1643, %1636
  %1645 = fmul fast float %1644, %1639
  %1646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1647 = extractvalue %dx.types.CBufRet.f32 %1646, 1
  %1648 = extractvalue %dx.types.CBufRet.f32 %1646, 0
  %1649 = fsub fast float %1562, %1648
  %1650 = fmul fast float %1649, %1647
  %1651 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1652 = fmul fast float %1645, %1479
  %1653 = fadd fast float %1645, %1479
  %1654 = fmul fast float %1653, %1488
  %1655 = fsub fast float %1654, %1488
  %1656 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1657 = and i32 %1517, 128
  %1658 = icmp ne i32 %1657, 0
  %1659 = select i1 %1658, float %1656, float %1652
  %1660 = fmul fast float %1659, %1651
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = fcmp fast ugt float %1660, %1662
  br i1 %1663, label %1664, label %1567

; <label>:1664                                    ; preds = %1582
  br i1 %1623, label %1567, label %1665

; <label>:1665                                    ; preds = %1664
  %1666 = and i32 %1517, 4
  %1667 = and i32 %1517, 8
  %1668 = add i32 %1474, 0
  %1669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1668, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1671 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1669, %dx.types.Handle %1670, float %1601, float %1604, float undef, float undef, i32 0, i32 0, i32 undef, float %1606, float %1608, float undef, float %1610, float %1612, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1672 = extractvalue %dx.types.ResRet.f32 %1671, 0
  %1673 = extractvalue %dx.types.ResRet.f32 %1671, 1
  %1674 = extractvalue %dx.types.ResRet.f32 %1671, 2
  %1675 = extractvalue %dx.types.ResRet.f32 %1671, 3
  %1676 = bitcast float %1500 to i32
  %1677 = and i32 %1676, 255
  %1678 = uitofp i32 %1677 to float
  %1679 = lshr i32 %1676, 8
  %1680 = and i32 %1679, 255
  %1681 = uitofp i32 %1680 to float
  %1682 = fmul fast float %1675, %1678
  %1683 = fadd fast float %1682, %1681
  %1684 = fmul fast float %1683, 0x3F70101000000000
  %1685 = add i32 %1475, 0
  %1686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1685, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1687 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1686, %dx.types.Handle %1670, float %1601, float %1604, float undef, float undef, i32 0, i32 0, i32 undef, float %1606, float %1608, float undef, float %1610, float %1612, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1688 = extractvalue %dx.types.ResRet.f32 %1687, 0
  %1689 = extractvalue %dx.types.ResRet.f32 %1687, 1
  %1690 = extractvalue %dx.types.ResRet.f32 %1687, 2
  %1691 = extractvalue %dx.types.ResRet.f32 %1687, 3
  %1692 = bitcast float %1494 to i32
  %1693 = and i32 %1692, 255
  %1694 = uitofp i32 %1693 to float
  %1695 = lshr i32 %1692, 8
  %1696 = and i32 %1695, 255
  %1697 = uitofp i32 %1696 to float
  %1698 = lshr i32 %1692, 16
  %1699 = and i32 %1698, 255
  %1700 = uitofp i32 %1699 to float
  %1701 = fmul fast float %1700, 0x3F70101000000000
  %1702 = fmul fast float %1688, %1694
  %1703 = fadd fast float %1702, %1697
  %1704 = fmul fast float %1703, 0x3F70101000000000
  %1705 = fadd fast float %1689, -5.000000e-01
  %1706 = fadd fast float %1691, -5.000000e-01
  %1707 = fmul fast float %1705, %1701
  %1708 = fmul fast float %1706, %1701
  %1709 = fadd fast float %1707, 5.000000e-01
  %1710 = fadd fast float %1708, 5.000000e-01
  %1711 = fmul fast float %1672, %1503
  %1712 = fmul fast float %1673, %1504
  %1713 = fmul fast float %1674, %1505
  %1714 = fmul fast float %1709, 2.000000e+00
  %1715 = fadd fast float %1714, -1.000000e+00
  %1716 = fmul fast float %1710, 2.000000e+00
  %1717 = fadd fast float %1716, -1.000000e+00
  %1718 = fadd fast float %1715, %1717
  %1719 = fmul fast float %1718, 5.000000e-01
  %1720 = fsub fast float %1715, %1717
  %1721 = fmul fast float %1720, 5.000000e-01
  %1722 = call float @dx.op.unary.f32(i32 6, float %1719)  ; FAbs(value)
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = call float @dx.op.unary.f32(i32 6, float %1721)  ; FAbs(value)
  %1725 = fsub fast float %1723, %1724
  %1726 = call float @dx.op.dot3.f32(i32 55, float %1719, float %1721, float %1725, float %1719, float %1721, float %1725)  ; Dot3(ax,ay,az,bx,by,bz)
  %1727 = call float @dx.op.unary.f32(i32 25, float %1726)  ; Rsqrt(value)
  %1728 = fmul fast float %1719, %1727
  %1729 = fmul fast float %1721, %1727
  %1730 = fmul fast float %1727, %1725
  %1731 = fmul fast float %1730, %1468
  %1732 = fmul fast float %1730, %1469
  %1733 = fmul fast float %1730, %1470
  %1734 = fmul fast float %1728, %1491
  %1735 = fmul fast float %1728, %1492
  %1736 = fmul fast float %1728, %1493
  %1737 = fadd fast float %1734, %1731
  %1738 = fadd fast float %1735, %1732
  %1739 = fadd fast float %1736, %1733
  %1740 = fmul fast float %1729, %1497
  %1741 = fmul fast float %1729, %1498
  %1742 = fmul fast float %1729, %1499
  %1743 = fadd fast float %1737, %1740
  %1744 = fadd fast float %1738, %1741
  %1745 = fadd fast float %1739, %1742
  %1746 = call float @dx.op.dot3.f32(i32 55, float %1743, float %1744, float %1745, float %1743, float %1744, float %1745)  ; Dot3(ax,ay,az,bx,by,bz)
  %1747 = call float @dx.op.unary.f32(i32 25, float %1746)  ; Rsqrt(value)
  %1748 = fmul fast float %1743, %1747
  %1749 = fmul fast float %1744, %1747
  %1750 = fmul fast float %1745, %1747
  %1751 = fcmp fast ogt float %1557, %1563
  %1752 = fsub fast float -0.000000e+00, %1748
  %1753 = fsub fast float -0.000000e+00, %1749
  %1754 = fsub fast float -0.000000e+00, %1750
  %1755 = select i1 %1751, float %1748, float %1752
  %1756 = select i1 %1751, float %1749, float %1753
  %1757 = select i1 %1751, float %1750, float %1754
  %1758 = fmul fast float %1755, %1372
  %1759 = call float @dx.op.tertiary.f32(i32 46, float %1756, float %1373, float %1758)  ; FMad(a,b,c)
  %1760 = call float @dx.op.tertiary.f32(i32 46, float %1757, float %1375, float %1759)  ; FMad(a,b,c)
  %1761 = fmul fast float %1755, %1368
  %1762 = call float @dx.op.tertiary.f32(i32 46, float %1756, float %1378, float %1761)  ; FMad(a,b,c)
  %1763 = call float @dx.op.tertiary.f32(i32 46, float %1757, float %1379, float %1762)  ; FMad(a,b,c)
  %1764 = icmp ne i32 %1667, 0
  %1765 = select i1 %1764, float 1.000000e+00, float 0.000000e+00
  %1766 = fmul fast float %1660, %1765
  %1767 = and i32 %1517, 1
  %1768 = icmp ne i32 %1767, 0
  %1769 = fadd fast float %1760, %1450
  %1770 = fadd fast float %1763, %1451
  %1771 = select i1 %1768, float %1769, float %1760
  %1772 = select i1 %1768, float %1770, float %1763
  %1773 = icmp ne i32 %1666, 0
  %1774 = select i1 %1773, float 1.000000e+00, float 0.000000e+00
  %1775 = fmul fast float %1660, %1774
  %1776 = fsub fast float %1711, %1456
  %1777 = fsub fast float %1712, %1457
  %1778 = fsub fast float %1713, %1458
  %1779 = fmul fast float %1776, %1775
  %1780 = fmul fast float %1777, %1775
  %1781 = fmul fast float %1778, %1775
  %1782 = fadd fast float %1779, %1456
  %1783 = fadd fast float %1780, %1457
  %1784 = fadd fast float %1781, %1458
  %1785 = fsub fast float %1684, %1455
  %1786 = fmul fast float %1785, %1775
  %1787 = fadd fast float %1786, %1455
  %1788 = fadd fast float %1660, %1454
  %1789 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1790 = fsub fast float %1704, %1453
  %1791 = fmul fast float %1790, %1766
  %1792 = fadd fast float %1791, %1453
  %1793 = fsub fast float %1690, %1452
  %1794 = fmul fast float %1793, %1766
  %1795 = fadd fast float %1794, %1452
  %1796 = fsub fast float %1771, %1450
  %1797 = fsub fast float %1772, %1451
  %1798 = fmul fast float %1796, %1766
  %1799 = fmul fast float %1797, %1766
  %1800 = fadd fast float %1798, %1450
  %1801 = fadd fast float %1799, %1451
  %1802 = and i32 %1517, 16
  %1803 = icmp eq i32 %1802, 0
  br i1 %1803, label %1826, label %1804

; <label>:1804                                    ; preds = %1665
  %1805 = bitcast float %1511 to i32
  %1806 = add i32 %1508, 0
  %1807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1806, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1808 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1807, %dx.types.Handle %1670, float %1601, float %1604, float undef, float undef, i32 0, i32 0, i32 undef, float %1606, float %1608, float undef, float %1610, float %1612, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1809 = extractvalue %dx.types.ResRet.f32 %1808, 0
  %1810 = extractvalue %dx.types.ResRet.f32 %1808, 1
  %1811 = extractvalue %dx.types.ResRet.f32 %1808, 2
  %1812 = and i32 %1805, 65535
  %1813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1812)  ; LegacyF16ToF32(value)
  %1814 = fmul fast float %1809, %1503
  %1815 = fmul fast float %1810, %1504
  %1816 = fmul fast float %1811, %1505
  %1817 = and i32 %1517, 16384
  %1818 = icmp ne i32 %1817, 0
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 0
  %1821 = select i1 %1818, float %1820, float 1.000000e+00
  %1822 = fmul fast float %1821, %1813
  %1823 = fmul fast float %1814, %1822
  %1824 = fmul fast float %1815, %1822
  %1825 = fmul fast float %1816, %1822
  br label %1826

; <label>:1826                                    ; preds = %1804, %1665
  %1827 = phi float [ %1823, %1804 ], [ 0.000000e+00, %1665 ]
  %1828 = phi float [ %1824, %1804 ], [ 0.000000e+00, %1665 ]
  %1829 = phi float [ %1825, %1804 ], [ 0.000000e+00, %1665 ]
  %1830 = fsub fast float %1827, %1447
  %1831 = fsub fast float %1828, %1448
  %1832 = fsub fast float %1829, %1449
  %1833 = fmul fast float %1830, %1660
  %1834 = fmul fast float %1831, %1660
  %1835 = fmul fast float %1832, %1660
  %1836 = fadd fast float %1833, %1447
  %1837 = fadd fast float %1834, %1448
  %1838 = fadd fast float %1835, %1449
  br label %1567

; <label>:1839                                    ; preds = %1567
  br label %1840

; <label>:1840                                    ; preds = %1839, %1325
  %1841 = phi float [ 0.000000e+00, %1325 ], [ %1568, %1839 ]
  %1842 = phi float [ 0.000000e+00, %1325 ], [ %1569, %1839 ]
  %1843 = phi float [ 0.000000e+00, %1325 ], [ %1570, %1839 ]
  %1844 = phi float [ %1327, %1325 ], [ %1571, %1839 ]
  %1845 = phi float [ %1328, %1325 ], [ %1572, %1839 ]
  %1846 = phi float [ %1389, %1325 ], [ %1573, %1839 ]
  %1847 = phi float [ %1392, %1325 ], [ %1574, %1839 ]
  %1848 = phi float [ 0.000000e+00, %1325 ], [ %1575, %1839 ]
  %1849 = phi float [ %1387, %1325 ], [ %1576, %1839 ]
  %1850 = phi float [ %1381, %1325 ], [ %1577, %1839 ]
  %1851 = phi float [ %1383, %1325 ], [ %1578, %1839 ]
  %1852 = phi float [ %1385, %1325 ], [ %1579, %1839 ]
  %1853 = phi i32 [ 0, %1325 ], [ %1580, %1839 ]
  %1854 = uitofp i32 %1853 to float
  %1855 = fptoui float %1854 to i32
  %1856 = shl i32 %1855, 16
  %1857 = and i32 %1856, 16711680
  %1858 = call float @dx.op.dot2.f32(i32 54, float %1844, float %1845, float %1844, float %1845)  ; Dot2(ax,ay,bx,by)
  %1859 = fmul fast float %1858, 0x3FE3333340000000
  %1860 = fsub fast float 1.000000e+00, %1859
  %1861 = call float @dx.op.dot3.f32(i32 55, float %1844, float %1845, float %1860, float %1844, float %1845, float %1860)  ; Dot3(ax,ay,az,bx,by,bz)
  %1862 = call float @dx.op.unary.f32(i32 25, float %1861)  ; Rsqrt(value)
  %1863 = fmul fast float %1862, %1844
  %1864 = fmul fast float %1862, %1845
  %1865 = fmul fast float %1860, %1862
  %1866 = fmul fast float %1865, %119
  %1867 = fmul fast float %1865, %120
  %1868 = fmul fast float %1865, %121
  %1869 = fmul fast float %1863, %1372
  %1870 = fmul fast float %1863, %1373
  %1871 = fmul fast float %1863, %1375
  %1872 = fadd fast float %1866, %1869
  %1873 = fadd fast float %1867, %1870
  %1874 = fadd fast float %1868, %1871
  %1875 = fmul fast float %1864, %1368
  %1876 = fmul fast float %1864, %1378
  %1877 = fmul fast float %1864, %1379
  %1878 = fadd fast float %1872, %1875
  %1879 = fadd fast float %1873, %1876
  %1880 = fadd fast float %1874, %1877
  %1881 = call float @dx.op.dot3.f32(i32 55, float %1878, float %1879, float %1880, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %1882 = call float @dx.op.unary.f32(i32 25, float %1881)  ; Rsqrt(value)
  %1883 = fmul fast float %1878, %1882
  %1884 = fmul fast float %1879, %1882
  %1885 = fmul fast float %1880, %1882
  %1886 = fadd fast float %1849, 0xBFB99999A0000000
  %1887 = call float @dx.op.unary.f32(i32 7, float %1886)  ; Saturate(value)
  %1888 = fmul fast float %1887, 0x3FF1C71C80000000
  %1889 = call float @dx.op.binary.f32(i32 36, float %1849, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1890 = fsub fast float 1.000000e+00, %1888
  %1891 = call float @dx.op.unary.f32(i32 7, float %1890)  ; Saturate(value)
  %1892 = fmul fast float %1891, %1850
  %1893 = fmul fast float %1891, %1851
  %1894 = fmul fast float %1891, %1852
  %1895 = call float @dx.op.unary.f32(i32 7, float %1892)  ; Saturate(value)
  %1896 = call float @dx.op.unary.f32(i32 7, float %1893)  ; Saturate(value)
  %1897 = call float @dx.op.unary.f32(i32 7, float %1894)  ; Saturate(value)
  %1898 = fmul fast float %1888, %1850
  %1899 = fmul fast float %1888, %1851
  %1900 = fmul fast float %1888, %1852
  %1901 = fadd fast float %1898, %1889
  %1902 = fadd fast float %1899, %1889
  %1903 = fadd fast float %1900, %1889
  %1904 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1905 = call float @dx.op.unary.f32(i32 7, float %1902)  ; Saturate(value)
  %1906 = call float @dx.op.unary.f32(i32 7, float %1903)  ; Saturate(value)
  %1907 = fmul fast float %1905, 0x401CF23780000000
  %1908 = fadd fast float %1907, 0x3FF32641C0000000
  %1909 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %1910 = call float @dx.op.unary.f32(i32 25, float %1909)  ; Rsqrt(value)
  %1911 = fmul fast float %1910, %155
  %1912 = fmul fast float %1910, %156
  %1913 = fmul fast float %1910, %157
  %1914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1915 = extractvalue %dx.types.CBufRet.f32 %1914, 0
  %1916 = fdiv fast float 1.000000e+00, %1908
  %1917 = select i1 %117, float %1916, float %1908
  %1918 = fadd fast float %1917, -1.000000e+00
  %1919 = fadd fast float %1917, 1.000000e+00
  %1920 = fdiv fast float %1918, %1919
  %1921 = fmul fast float %1920, %1920
  %1922 = call float @dx.op.dot3.f32(i32 55, float %1911, float %1912, float %1913, float %1883, float %1884, float %1885)  ; Dot3(ax,ay,az,bx,by,bz)
  %1923 = select i1 %117, float 0.000000e+00, float %1915
  %1924 = fadd fast float %1922, %1923
  %1925 = call float @dx.op.binary.f32(i32 35, float %1924, float -1.000000e+00)  ; FMax(a,b)
  %1926 = call float @dx.op.binary.f32(i32 36, float %1925, float 1.000000e+00)  ; FMin(a,b)
  %1927 = fmul fast float %1917, %1917
  %1928 = fmul fast float %1926, %1926
  %1929 = fsub fast float 1.000000e+00, %1928
  %1930 = fmul fast float %1927, %1929
  %1931 = fsub fast float 1.000000e+00, %1930
  %1932 = fcmp fast olt float %1917, 1.000000e+00
  %1933 = select i1 %1932, float %1928, float %1931
  %1934 = fcmp fast ogt float %1931, 0.000000e+00
  %1935 = fsub fast float 1.000000e+00, %1921
  %1936 = call float @dx.op.unary.f32(i32 24, float %1933)  ; Sqrt(value)
  %1937 = fsub fast float 1.000000e+00, %1936
  %1938 = call float @dx.op.unary.f32(i32 23, float %1937)  ; Log(value)
  %1939 = fmul fast float %1938, 5.000000e+00
  %1940 = call float @dx.op.unary.f32(i32 21, float %1939)  ; Exp(value)
  %1941 = fmul fast float %1940, %1935
  %1942 = fadd fast float %1941, %1921
  %1943 = select i1 %1934, float %1942, float 1.000000e+00
  %1944 = lshr i32 %1326, 24
  %1945 = uitofp i32 %1944 to float
  %1946 = fmul fast float %1945, 0x3F70101020000000
  %1947 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %1948 = fmul fast float %155, %155
  %1949 = fmul fast float %156, %156
  %1950 = fadd fast float %1949, %1948
  %1951 = fmul fast float %157, %157
  %1952 = fadd fast float %1950, %1951
  %1953 = call float @dx.op.unary.f32(i32 24, float %1952)  ; Sqrt(value)
  %1954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %1955 = extractvalue %dx.types.CBufRet.f32 %1954, 0
  %1956 = fmul fast float %1955, %1953
  %1957 = extractvalue %dx.types.CBufRet.f32 %1954, 1
  %1958 = fadd fast float %1956, %1957
  %1959 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1960 = fmul fast float %1947, 2.550000e+02
  %1961 = fmul fast float %1960, %1959
  %1962 = fptoui float %1961 to i32
  %1963 = fsub fast float -0.000000e+00, %1911
  %1964 = fsub fast float -0.000000e+00, %1912
  %1965 = fsub fast float -0.000000e+00, %1913
  %1966 = call float @dx.op.dot3.f32(i32 55, float %1883, float %1884, float %1885, float %1963, float %1964, float %1965)  ; Dot3(ax,ay,az,bx,by,bz)
  %1967 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1968 = fsub fast float 1.000000e+00, %1904
  %1969 = fsub fast float 1.000000e+00, %1905
  %1970 = fsub fast float 1.000000e+00, %1906
  %1971 = fmul fast float %1943, %1968
  %1972 = fmul fast float %1943, %1969
  %1973 = fmul fast float %1943, %1970
  %1974 = fadd fast float %1971, %1904
  %1975 = fadd fast float %1972, %1905
  %1976 = fadd fast float %1973, %1906
  %1977 = and i32 %1343, 65535
  %1978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1977)  ; LegacyF16ToF32(value)
  %1979 = lshr i32 %1343, 16
  %1980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1979)  ; LegacyF16ToF32(value)
  %1981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.f32 %1981, 1
  %1983 = fadd fast float %1982, %1978
  %1984 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  %1985 = fcmp fast ogt float %1984, 0.000000e+00
  %1986 = call float @dx.op.unary.f32(i32 6, float %1967)  ; FAbs(value)
  %1987 = select i1 %1985, float %1986, float 0.000000e+00
  %1988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %63, float %1984, float %1987, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1989 = extractvalue %dx.types.ResRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.ResRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.ResRet.f32 %1988, 2
  %1992 = fadd fast float %1989, -5.000000e-01
  %1993 = fadd fast float %1990, -5.000000e-01
  %1994 = fadd fast float %1991, -5.000000e-01
  %1995 = fmul fast float %1904, 4.000000e+00
  %1996 = fmul fast float %1995, %1968
  %1997 = fmul fast float %1996, %1980
  %1998 = fmul fast float %1997, %1992
  %1999 = fmul fast float %1905, 4.000000e+00
  %2000 = fmul fast float %1999, %1969
  %2001 = fmul fast float %2000, %1980
  %2002 = fmul fast float %2001, %1993
  %2003 = fmul fast float %1906, 4.000000e+00
  %2004 = fmul fast float %2003, %1970
  %2005 = fmul fast float %2004, %1980
  %2006 = fmul fast float %2005, %1994
  %2007 = fadd fast float %1974, %1998
  %2008 = fadd fast float %1975, %2002
  %2009 = fadd fast float %1976, %2006
  %2010 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  %2011 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  %2012 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2013 = fptoui float %100 to i32
  %2014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2015 = extractvalue %dx.types.CBufRet.f32 %2014, 0
  %2016 = fmul fast float %2015, 5.000000e-01
  %2017 = fptoui float %2016 to i32
  %2018 = icmp eq i32 %2013, %2017
  %2019 = fptoui float %101 to i32
  %2020 = extractvalue %dx.types.CBufRet.f32 %2014, 1
  %2021 = fmul fast float %2020, 5.000000e-01
  %2022 = fptoui float %2021 to i32
  %2023 = icmp eq i32 %2019, %2022
  %2024 = and i1 %2018, %2023
  br i1 %2024, label %2025, label %2049

; <label>:2025                                    ; preds = %1840
  %2026 = call float @dx.op.binary.f32(i32 35, float %2011, float %2012)  ; FMax(a,b)
  %2027 = call float @dx.op.binary.f32(i32 35, float %2010, float %2026)  ; FMax(a,b)
  %2028 = fsub fast float 1.000000e+00, %2027
  %2029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2030 = extractvalue %dx.types.CBufRet.f32 %2029, 0
  %2031 = extractvalue %dx.types.CBufRet.f32 %2029, 1
  %2032 = extractvalue %dx.types.CBufRet.f32 %2029, 2
  %2033 = fadd fast float %2030, %155
  %2034 = fadd fast float %2031, %156
  %2035 = fadd fast float %2032, %157
  %2036 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %45, i32 0, i32 %2013, i32 %2019, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 0
  %2038 = fcmp fast ogt float %2037, -1.000000e+00
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 1
  %2041 = select i1 %2038, float %2040, float 1.000000e+00
  %2042 = fadd fast float %2037, 1.000000e+00
  %2043 = fmul fast float %2041, %2042
  %2044 = call float @dx.op.unary.f32(i32 6, float %2043)  ; FAbs(value)
  %2045 = call float @dx.op.unary.f32(i32 83, float %81)  ; DerivCoarseX(value)
  %2046 = call float @dx.op.unary.f32(i32 83, float %82)  ; DerivCoarseX(value)
  %2047 = call float @dx.op.unary.f32(i32 84, float %81)  ; DerivCoarseY(value)
  %2048 = call float @dx.op.unary.f32(i32 84, float %82)  ; DerivCoarseY(value)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %2033, float %2034, float %2035, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %100, float %101, float %88, float %89, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %347, float %348, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %310, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %312, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %325, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %327, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %2044, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %1943, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %2010, float %2011, float %2012, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %2028, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %199, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %1336, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %2045, float %2046, float %2047, float %2048, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
  br label %2049

; <label>:2049                                    ; preds = %2025, %1840
  %2050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2051 = extractvalue %dx.types.CBufRet.f32 %2050, 3
  %2052 = fmul fast float %2051, %1847
  %2053 = call float @dx.op.unary.f32(i32 7, float %2052)  ; Saturate(value)
  %2054 = call float @dx.op.unary.f32(i32 7, float %1846)  ; Saturate(value)
  %2055 = fsub fast float 1.000000e+00, %1848
  %2056 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %2055)  ; FMin(a,b)
  %2057 = fmul fast float %81, 6.553500e+04
  %2058 = call float @dx.op.unary.f32(i32 26, float %2057)  ; Round_ne(value)
  %2059 = fptosi float %2058 to i32
  %2060 = call i32 @dx.op.binary.i32(i32 37, i32 %2059, i32 0)  ; IMax(a,b)
  %2061 = call i32 @dx.op.binary.i32(i32 38, i32 %2060, i32 65535)  ; IMin(a,b)
  %2062 = fmul fast float %82, 6.553500e+04
  %2063 = call float @dx.op.unary.f32(i32 26, float %2062)  ; Round_ne(value)
  %2064 = fptosi float %2063 to i32
  %2065 = call i32 @dx.op.binary.i32(i32 37, i32 %2064, i32 0)  ; IMax(a,b)
  %2066 = call i32 @dx.op.binary.i32(i32 38, i32 %2065, i32 65535)  ; IMin(a,b)
  %2067 = shl i32 %2066, 16
  %2068 = or i32 %2067, %2061
  %2069 = call float @dx.op.dot3.f32(i32 55, float %1904, float %1905, float %1906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2070 = fsub fast float 1.000000e+00, %2069
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %58, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = and i32 %2072, 255
  %2074 = uitofp i32 %2073 to float
  %2075 = lshr i32 %2072, 8
  %2076 = and i32 %2075, 255
  %2077 = uitofp i32 %2076 to float
  %2078 = fmul fast float %2077, %2070
  %2079 = fadd fast float %2078, %2074
  %2080 = fmul fast float %2079, 0x3F70101020000000
  %2081 = call float @dx.op.unary.f32(i32 7, float %2080)  ; Saturate(value)
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 0
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2086 = extractvalue %dx.types.CBufRet.i32 %2085, 3
  %2087 = and i32 %2086, 3
  %2088 = icmp ne i32 %2087, 0
  %2089 = and i32 %2086, 4
  %2090 = icmp ne i32 %2089, 0
  %2091 = and i1 %2088, %2090
  br i1 %2091, label %2092, label %2103

; <label>:2092                                    ; preds = %2049
  %2093 = extractvalue %dx.types.CBufRet.f32 %2084, 3
  %2094 = fmul fast float %2093, %101
  %2095 = extractvalue %dx.types.CBufRet.f32 %2084, 2
  %2096 = fmul fast float %2095, %100
  %2097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %63, float %2096, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2098 = extractvalue %dx.types.ResRet.f32 %2097, 0
  %2099 = fsub fast float 1.000000e+00, %2098
  %2100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2101 = extractvalue %dx.types.CBufRet.f32 %2100, 0
  %2102 = fcmp fast olt float %2099, %2101
  br label %2106

; <label>:2103                                    ; preds = %2049
  %2104 = icmp eq i32 %2089, 0
  %2105 = and i1 %2088, %2104
  br label %2106

; <label>:2106                                    ; preds = %2103, %2092
  %2107 = phi i1 [ %2102, %2092 ], [ %2105, %2103 ]
  %2108 = fsub fast float -0.000000e+00, %157
  %2109 = select i1 %2107, float 0.000000e+00, float %1906
  %2110 = fmul fast float %1922, 2.000000e+00
  %2111 = fmul fast float %2110, %1883
  %2112 = fmul fast float %2110, %1884
  %2113 = fmul fast float %2110, %1885
  %2114 = fsub fast float %1911, %2111
  %2115 = fsub fast float %1912, %2112
  %2116 = fsub fast float %1913, %2113
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 0
  %2119 = bitcast float %2118 to i32
  %2120 = lshr i32 %2119, 8
  %2121 = and i32 %2120, 255
  %2122 = uitofp i32 %2121 to float
  %2123 = fptoui float %2122 to i32
  %2124 = and i32 %2123, 4
  %2125 = icmp ne i32 %2124, 0
  %2126 = select i1 %2125, float %2054, float 1.000000e+00
  %2127 = call float @dx.op.binary.f32(i32 36, float %2126, float 1.000000e+00)  ; FMin(a,b)
  %2128 = fsub fast float 1.000000e+00, %2127
  %2129 = bitcast float %2128 to i32
  %2130 = ashr i32 %2129, 1
  %2131 = add nsw i32 %2130, 532487669
  %2132 = bitcast i32 %2131 to float
  %2133 = fsub fast float 1.000000e+00, %2053
  %2134 = call float @dx.op.binary.f32(i32 35, float %2133, float 0x3F847AE140000000)  ; FMax(a,b)
  %2135 = fmul fast float %2134, %2134
  %2136 = fmul fast float %2135, %2135
  %2137 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %2138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %63, float %2132, float %2136, float %2137, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2139 = extractvalue %dx.types.ResRet.f32 %2138, 0
  %2140 = and i32 %2123, 1
  %2141 = icmp ne i32 %2140, 0
  %2142 = fsub fast float 1.000000e+00, %2126
  %2143 = bitcast float %2142 to i32
  %2144 = sub nsw i32 2129859010, %2143
  %2145 = bitcast i32 %2144 to float
  %2146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.i32 %2146, 0
  %2148 = icmp eq i32 %2147, 1
  %2149 = select i1 %2148, float 0.000000e+00, float 1.000000e+00
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 0
  %2152 = fcmp fast ogt float %2151, 0.000000e+00
  %2153 = fcmp fast ogt float %2149, 0.000000e+00
  %2154 = and i1 %2152, %2153
  br i1 %2154, label %2155, label %2339, !dx.controlflow.hints !122

; <label>:2155                                    ; preds = %2106
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 0
  %2158 = extractvalue %dx.types.CBufRet.f32 %2156, 1
  %2159 = extractvalue %dx.types.CBufRet.f32 %2156, 2
  %2160 = fadd fast float %2157, %155
  %2161 = fadd fast float %2158, %156
  %2162 = fadd fast float %2159, %157
  %2163 = fmul fast float %1883, 3.200000e+01
  %2164 = fmul fast float %1884, 3.200000e+01
  %2165 = fadd fast float %2160, %2163
  %2166 = fadd fast float %2161, %2164
  %2167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2168 = extractvalue %dx.types.CBufRet.f32 %2167, 0
  %2169 = extractvalue %dx.types.CBufRet.f32 %2167, 1
  %2170 = fsub fast float %2165, %2168
  %2171 = fsub fast float %2166, %2169
  %2172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2173 = extractvalue %dx.types.CBufRet.f32 %2172, 0
  %2174 = extractvalue %dx.types.CBufRet.f32 %2172, 1
  %2175 = fmul fast float %2170, %2173
  %2176 = fmul fast float %2171, %2174
  %2177 = fmul fast float %155, %155
  %2178 = fmul fast float %156, %156
  %2179 = fadd fast float %2177, %2178
  %2180 = call float @dx.op.unary.f32(i32 24, float %2179)  ; Sqrt(value)
  %2181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.f32 %2181, 0
  %2183 = extractvalue %dx.types.CBufRet.f32 %2181, 1
  %2184 = fsub fast float %2180, %2182
  %2185 = fdiv fast float %2184, %2183
  %2186 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2187 = fmul fast float %2186, 2.000000e+00
  %2188 = fsub fast float 3.000000e+00, %2187
  %2189 = fmul fast float %2186, %2186
  %2190 = fmul fast float %2189, %2188
  %2191 = fcmp fast oge float %2175, 0.000000e+00
  %2192 = fcmp fast ole float %2175, 1.000000e+00
  %2193 = and i1 %2192, %2191
  %2194 = fcmp fast oge float %2176, 0.000000e+00
  %2195 = and i1 %2194, %2193
  %2196 = fcmp fast ole float %2176, 1.000000e+00
  %2197 = and i1 %2196, %2195
  %2198 = fcmp fast ogt float %2190, 0.000000e+00
  %2199 = and i1 %2198, %2197
  br i1 %2199, label %2200, label %2323, !dx.controlflow.hints !123

; <label>:2200                                    ; preds = %2155
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 2
  %2203 = extractvalue %dx.types.CBufRet.f32 %2201, 3
  %2204 = fmul fast float %2202, %2175
  %2205 = fmul fast float %2203, %2176
  %2206 = call float @dx.op.unary.f32(i32 27, float %2204)  ; Round_ni(value)
  %2207 = call float @dx.op.unary.f32(i32 27, float %2205)  ; Round_ni(value)
  %2208 = fptosi float %2206 to i32
  %2209 = fptosi float %2207 to i32
  %2210 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %41, i32 0, i32 %2208, i32 %2209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = lshr i32 %2211, 16
  %2213 = icmp eq i32 %2212, 65535
  br i1 %2213, label %2323, label %2214

; <label>:2214                                    ; preds = %2200
  %2215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2216 = extractvalue %dx.types.CBufRet.f32 %2215, 0
  %2217 = fmul fast float %2216, %2175
  %2218 = extractvalue %dx.types.CBufRet.f32 %2215, 1
  %2219 = fadd fast float %2217, %2218
  %2220 = extractvalue %dx.types.CBufRet.f32 %2215, 2
  %2221 = fmul fast float %2220, %2176
  %2222 = extractvalue %dx.types.CBufRet.f32 %2215, 3
  %2223 = fadd fast float %2221, %2222
  %2224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %63, float %2219, float %2223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2225 = extractvalue %dx.types.ResRet.f32 %2224, 0
  %2226 = extractvalue %dx.types.ResRet.f32 %2224, 1
  %2227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2228 = extractvalue %dx.types.CBufRet.f32 %2227, 1
  %2229 = extractvalue %dx.types.CBufRet.f32 %2227, 0
  %2230 = fsub fast float %2228, %2229
  %2231 = fmul fast float %2230, %2225
  %2232 = fadd fast float %2231, %2229
  %2233 = extractvalue %dx.types.CBufRet.f32 %2227, 3
  %2234 = extractvalue %dx.types.CBufRet.f32 %2227, 2
  %2235 = fsub fast float %2233, %2234
  %2236 = fmul fast float %2235, %2226
  %2237 = fadd fast float %2236, %2234
  %2238 = fsub fast float %2162, %2232
  %2239 = fsub fast float %2237, %2232
  %2240 = fdiv fast float %2238, %2239
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = extractvalue %dx.types.CBufRet.f32 %2150, 1
  %2243 = extractvalue %dx.types.CBufRet.f32 %2201, 0
  %2244 = extractvalue %dx.types.CBufRet.f32 %2201, 1
  %2245 = fmul fast float %2243, %2175
  %2246 = fmul fast float %2244, %2176
  %2247 = fmul fast float %2245, 1.250000e-01
  %2248 = fmul fast float %2246, 1.250000e-01
  %2249 = call float @dx.op.unary.f32(i32 27, float %2247)  ; Round_ni(value)
  %2250 = call float @dx.op.unary.f32(i32 27, float %2248)  ; Round_ni(value)
  %2251 = fmul fast float %2249, 8.000000e+00
  %2252 = fmul fast float %2250, 8.000000e+00
  %2253 = fsub fast float %2245, %2251
  %2254 = fsub fast float %2246, %2252
  %2255 = fadd fast float %2253, 5.000000e-01
  %2256 = fadd fast float %2254, 5.000000e-01
  %2257 = and i32 %2212, 255
  %2258 = lshr i32 %2211, 24
  %2259 = mul nuw nsw i32 %2257, 9
  %2260 = uitofp i32 %2259 to float
  %2261 = mul nuw nsw i32 %2258, 9
  %2262 = uitofp i32 %2261 to float
  %2263 = fadd fast float %2255, %2260
  %2264 = fadd fast float %2256, %2262
  %2265 = fdiv fast float %2263, %2151
  %2266 = fdiv fast float %2264, %2242
  %2267 = fmul fast float %2241, 4.375000e-01
  %2268 = fadd fast float %2267, 3.125000e-02
  %2269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %2265, float %2266, float %2268, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2270 = extractvalue %dx.types.ResRet.f32 %2269, 0
  %2271 = extractvalue %dx.types.ResRet.f32 %2269, 1
  %2272 = extractvalue %dx.types.ResRet.f32 %2269, 2
  %2273 = fadd fast float %2267, 5.312500e-01
  %2274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %2265, float %2266, float %2273, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2275 = extractvalue %dx.types.ResRet.f32 %2274, 0
  %2276 = extractvalue %dx.types.ResRet.f32 %2274, 1
  %2277 = extractvalue %dx.types.ResRet.f32 %2274, 2
  %2278 = fmul fast float %2275, 2.000000e+00
  %2279 = fmul fast float %2276, 2.000000e+00
  %2280 = fmul fast float %2277, 2.000000e+00
  %2281 = fadd fast float %2278, -1.000000e+00
  %2282 = fadd fast float %2279, -1.000000e+00
  %2283 = fadd fast float %2280, -1.000000e+00
  %2284 = fmul fast float %2281, %2281
  %2285 = fmul fast float %2282, %2282
  %2286 = fadd fast float %2284, %2285
  %2287 = fmul fast float %2283, %2283
  %2288 = fadd fast float %2286, %2287
  %2289 = call float @dx.op.unary.f32(i32 24, float %2288)  ; Sqrt(value)
  %2290 = fcmp fast ogt float %2289, 0.000000e+00
  br i1 %2290, label %2291, label %2295

; <label>:2291                                    ; preds = %2214
  %2292 = fdiv fast float %2281, %2289
  %2293 = fdiv fast float %2282, %2289
  %2294 = fdiv fast float %2283, %2289
  br label %2295

; <label>:2295                                    ; preds = %2291, %2214
  %2296 = phi float [ %2292, %2291 ], [ 0.000000e+00, %2214 ]
  %2297 = phi float [ %2293, %2291 ], [ 0.000000e+00, %2214 ]
  %2298 = phi float [ %2294, %2291 ], [ 0.000000e+00, %2214 ]
  %2299 = call float @dx.op.dot3.f32(i32 55, float %2296, float %2297, float %2298, float %1883, float %1884, float %1885)  ; Dot3(ax,ay,az,bx,by,bz)
  %2300 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2299)  ; FMax(a,b)
  %2301 = fmul fast float %2300, 0x400C5BF8A0000000
  %2302 = fmul fast float %2270, %2190
  %2303 = fmul fast float %2302, %2301
  %2304 = fmul fast float %2271, %2190
  %2305 = fmul fast float %2304, %2301
  %2306 = fmul fast float %2272, %2190
  %2307 = fmul fast float %2306, %2301
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 3
  %2310 = fmul fast float %2303, %2309
  %2311 = fmul fast float %2305, %2309
  %2312 = fmul fast float %2307, %2309
  %2313 = fcmp fast ogt float %2162, %2237
  br i1 %2313, label %2314, label %2323

; <label>:2314                                    ; preds = %2295
  %2315 = fmul fast float %2239, 0x3FC24924A0000000
  %2316 = fsub fast float %2162, %2237
  %2317 = fdiv fast float %2316, %2315
  %2318 = call float @dx.op.unary.f32(i32 7, float %2317)  ; Saturate(value)
  %2319 = fsub fast float 1.000000e+00, %2318
  %2320 = fmul fast float %2319, %2310
  %2321 = fmul fast float %2319, %2311
  %2322 = fmul fast float %2319, %2312
  br label %2323

; <label>:2323                                    ; preds = %2314, %2295, %2200, %2155
  %2324 = phi float [ %2322, %2314 ], [ %2312, %2295 ], [ 0.000000e+00, %2200 ], [ 0.000000e+00, %2155 ]
  %2325 = phi float [ %2321, %2314 ], [ %2311, %2295 ], [ 0.000000e+00, %2200 ], [ 0.000000e+00, %2155 ]
  %2326 = phi float [ %2320, %2314 ], [ %2310, %2295 ], [ 0.000000e+00, %2200 ], [ 0.000000e+00, %2155 ]
  %2327 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2326)  ; FMax(a,b)
  %2328 = fmul fast float %2327, 0x3FD20DD760000000
  %2329 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2325)  ; FMax(a,b)
  %2330 = fmul fast float %2329, 0x3FD20DD760000000
  %2331 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2324)  ; FMax(a,b)
  %2332 = fmul fast float %2331, 0x3FD20DD760000000
  %2333 = call float @dx.op.binary.f32(i32 35, float %2328, float 0.000000e+00)  ; FMax(a,b)
  %2334 = call float @dx.op.binary.f32(i32 35, float %2330, float 0.000000e+00)  ; FMax(a,b)
  %2335 = call float @dx.op.binary.f32(i32 35, float %2332, float 0.000000e+00)  ; FMax(a,b)
  %2336 = fmul fast float %2333, %2149
  %2337 = fmul fast float %2334, %2149
  %2338 = fmul fast float %2335, %2149
  br label %2339

; <label>:2339                                    ; preds = %2323, %2106
  %2340 = phi float [ %2336, %2323 ], [ 0.000000e+00, %2106 ]
  %2341 = phi float [ %2337, %2323 ], [ 0.000000e+00, %2106 ]
  %2342 = phi float [ %2338, %2323 ], [ 0.000000e+00, %2106 ]
  br i1 %2148, label %2343, label %3135, !dx.controlflow.hints !124

; <label>:2343                                    ; preds = %2339
  %2344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.CBufRet.f32 %2344, 1
  %2347 = extractvalue %dx.types.CBufRet.f32 %2344, 2
  %2348 = fadd fast float %2345, %155
  %2349 = fadd fast float %2346, %156
  %2350 = fadd fast float %2347, %157
  %2351 = fmul fast float %1883, 3.200000e+01
  %2352 = fmul fast float %1884, 3.200000e+01
  %2353 = fadd fast float %2348, %2351
  %2354 = fadd fast float %2349, %2352
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 0
  %2357 = extractvalue %dx.types.CBufRet.f32 %2355, 1
  %2358 = fsub fast float %2353, %2356
  %2359 = fsub fast float %2354, %2357
  %2360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2361 = extractvalue %dx.types.CBufRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.CBufRet.f32 %2360, 1
  %2363 = fmul fast float %2358, %2361
  %2364 = fmul fast float %2359, %2362
  %2365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2365, 0
  %2367 = fmul fast float %2363, %2366
  %2368 = extractvalue %dx.types.CBufRet.f32 %2365, 1
  %2369 = fadd fast float %2367, %2368
  %2370 = extractvalue %dx.types.CBufRet.f32 %2365, 2
  %2371 = fmul fast float %2370, %2364
  %2372 = extractvalue %dx.types.CBufRet.f32 %2365, 3
  %2373 = fadd fast float %2371, %2372
  %2374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %63, float %2369, float %2373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2375 = extractvalue %dx.types.ResRet.f32 %2374, 0
  %2376 = extractvalue %dx.types.ResRet.f32 %2374, 1
  %2377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2378 = extractvalue %dx.types.CBufRet.f32 %2377, 1
  %2379 = extractvalue %dx.types.CBufRet.f32 %2377, 0
  %2380 = fsub fast float %2378, %2379
  %2381 = fmul fast float %2380, %2375
  %2382 = fadd fast float %2381, %2379
  %2383 = extractvalue %dx.types.CBufRet.f32 %2377, 3
  %2384 = extractvalue %dx.types.CBufRet.f32 %2377, 2
  %2385 = fsub fast float %2383, %2384
  %2386 = fmul fast float %2385, %2376
  %2387 = fadd fast float %2386, %2384
  %2388 = fsub fast float %2350, %2382
  %2389 = fsub fast float %2387, %2382
  %2390 = fdiv fast float %2388, %2389
  %2391 = call float @dx.op.unary.f32(i32 7, float %2390)  ; Saturate(value)
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 0
  %2394 = fmul fast float %2393, %2391
  %2395 = extractvalue %dx.types.CBufRet.f32 %2392, 1
  %2396 = fadd fast float %2394, %2395
  %2397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %63, float %2369, float %2373, float %2396, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2398 = extractvalue %dx.types.ResRet.f32 %2397, 0
  %2399 = extractvalue %dx.types.ResRet.f32 %2397, 1
  %2400 = extractvalue %dx.types.ResRet.f32 %2397, 2
  %2401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2402 = extractvalue %dx.types.CBufRet.f32 %2401, 0
  %2403 = extractvalue %dx.types.CBufRet.f32 %2401, 1
  %2404 = extractvalue %dx.types.CBufRet.f32 %2401, 2
  %2405 = fmul fast float %2402, %2398
  %2406 = fmul fast float %2403, %2399
  %2407 = fmul fast float %2404, %2400
  %2408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2409 = extractvalue %dx.types.CBufRet.f32 %2408, 0
  %2410 = extractvalue %dx.types.CBufRet.f32 %2408, 1
  %2411 = extractvalue %dx.types.CBufRet.f32 %2408, 2
  %2412 = fadd fast float %2405, %2409
  %2413 = fadd fast float %2406, %2410
  %2414 = fadd fast float %2407, %2411
  %2415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2416 = extractvalue %dx.types.CBufRet.f32 %2415, 0
  %2417 = fmul fast float %2416, %2363
  %2418 = extractvalue %dx.types.CBufRet.f32 %2415, 1
  %2419 = fadd fast float %2417, %2418
  %2420 = extractvalue %dx.types.CBufRet.f32 %2415, 2
  %2421 = fmul fast float %2420, %2364
  %2422 = extractvalue %dx.types.CBufRet.f32 %2415, 3
  %2423 = fadd fast float %2421, %2422
  %2424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2425 = extractvalue %dx.types.CBufRet.f32 %2424, 0
  %2426 = extractvalue %dx.types.CBufRet.f32 %2424, 1
  %2427 = extractvalue %dx.types.CBufRet.f32 %2424, 2
  %2428 = extractvalue %dx.types.CBufRet.f32 %2424, 3
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2429, 0
  %2431 = extractvalue %dx.types.CBufRet.f32 %2429, 1
  %2432 = extractvalue %dx.types.CBufRet.f32 %2429, 2
  %2433 = extractvalue %dx.types.CBufRet.f32 %2429, 3
  %2434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %2419, float %2423, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = extractvalue %dx.types.ResRet.f32 %2434, 1
  %2437 = extractvalue %dx.types.ResRet.f32 %2434, 2
  %2438 = extractvalue %dx.types.ResRet.f32 %2434, 3
  %2439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %2419, float %2423, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2440 = extractvalue %dx.types.ResRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.ResRet.f32 %2439, 1
  %2442 = extractvalue %dx.types.ResRet.f32 %2439, 2
  %2443 = extractvalue %dx.types.ResRet.f32 %2439, 3
  %2444 = fmul fast float %2435, %2412
  %2445 = fmul fast float %2440, %2412
  %2446 = fmul fast float %2442, %2412
  %2447 = fmul fast float %2438, %2412
  %2448 = fadd fast float %2444, %2425
  %2449 = fadd fast float %2445, %2426
  %2450 = fadd fast float %2446, %2427
  %2451 = fadd fast float %2447, %2428
  %2452 = fmul fast float %2436, %2412
  %2453 = fmul fast float %2441, %2412
  %2454 = fadd fast float %2452, %2430
  %2455 = fadd fast float %2453, %2431
  %2456 = fmul fast float %2437, %2412
  %2457 = fmul fast float %2443, %2412
  %2458 = fadd fast float %2456, %2432
  %2459 = fadd fast float %2457, %2433
  %2460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %2419, float %2423, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = extractvalue %dx.types.ResRet.f32 %2460, 1
  %2463 = extractvalue %dx.types.ResRet.f32 %2460, 2
  %2464 = extractvalue %dx.types.ResRet.f32 %2460, 3
  %2465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %2419, float %2423, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2466 = extractvalue %dx.types.ResRet.f32 %2465, 0
  %2467 = extractvalue %dx.types.ResRet.f32 %2465, 1
  %2468 = extractvalue %dx.types.ResRet.f32 %2465, 2
  %2469 = extractvalue %dx.types.ResRet.f32 %2465, 3
  %2470 = fmul fast float %2461, %2413
  %2471 = fmul fast float %2466, %2413
  %2472 = fmul fast float %2468, %2413
  %2473 = fmul fast float %2464, %2413
  %2474 = fadd fast float %2448, %2470
  %2475 = fadd fast float %2449, %2471
  %2476 = fadd fast float %2450, %2472
  %2477 = fadd fast float %2451, %2473
  %2478 = fmul fast float %2462, %2413
  %2479 = fmul fast float %2467, %2413
  %2480 = fadd fast float %2454, %2478
  %2481 = fadd fast float %2455, %2479
  %2482 = fmul fast float %2463, %2413
  %2483 = fmul fast float %2469, %2413
  %2484 = fadd fast float %2458, %2482
  %2485 = fadd fast float %2459, %2483
  %2486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %2419, float %2423, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2488 = extractvalue %dx.types.ResRet.f32 %2486, 1
  %2489 = extractvalue %dx.types.ResRet.f32 %2486, 2
  %2490 = extractvalue %dx.types.ResRet.f32 %2486, 3
  %2491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %2419, float %2423, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2492 = extractvalue %dx.types.ResRet.f32 %2491, 0
  %2493 = extractvalue %dx.types.ResRet.f32 %2491, 1
  %2494 = extractvalue %dx.types.ResRet.f32 %2491, 2
  %2495 = extractvalue %dx.types.ResRet.f32 %2491, 3
  %2496 = fmul fast float %2487, %2414
  %2497 = fmul fast float %2492, %2414
  %2498 = fmul fast float %2494, %2414
  %2499 = fmul fast float %2490, %2414
  %2500 = fadd fast float %2474, %2496
  %2501 = fadd fast float %2475, %2497
  %2502 = fadd fast float %2476, %2498
  %2503 = fadd fast float %2477, %2499
  %2504 = fmul fast float %2488, %2414
  %2505 = fmul fast float %2493, %2414
  %2506 = fadd fast float %2480, %2504
  %2507 = fadd fast float %2481, %2505
  %2508 = fmul fast float %2489, %2414
  %2509 = fmul fast float %2495, %2414
  %2510 = fadd fast float %2484, %2508
  %2511 = fadd fast float %2485, %2509
  %2512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2513 = extractvalue %dx.types.CBufRet.f32 %2512, 0
  %2514 = fsub fast float %2348, %2513
  %2515 = fsub fast float %2356, %2348
  %2516 = call float @dx.op.binary.f32(i32 35, float %2515, float %2514)  ; FMax(a,b)
  %2517 = extractvalue %dx.types.CBufRet.f32 %2512, 1
  %2518 = fsub fast float %2349, %2517
  %2519 = fsub fast float %2357, %2349
  %2520 = call float @dx.op.binary.f32(i32 35, float %2519, float %2518)  ; FMax(a,b)
  %2521 = call float @dx.op.binary.f32(i32 35, float %2516, float %2520)  ; FMax(a,b)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2360, 3
  %2523 = fmul fast float %2522, %2521
  %2524 = call float @dx.op.unary.f32(i32 7, float %2523)  ; Saturate(value)
  %2525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2526 = extractvalue %dx.types.CBufRet.f32 %2525, 0
  %2527 = extractvalue %dx.types.CBufRet.f32 %2525, 1
  %2528 = extractvalue %dx.types.CBufRet.f32 %2525, 2
  %2529 = extractvalue %dx.types.CBufRet.f32 %2525, 3
  %2530 = fsub fast float %2526, %2500
  %2531 = fsub fast float %2527, %2501
  %2532 = fsub fast float %2528, %2502
  %2533 = fsub fast float %2529, %2503
  %2534 = fmul fast float %2530, %2524
  %2535 = fmul fast float %2531, %2524
  %2536 = fmul fast float %2532, %2524
  %2537 = fmul fast float %2533, %2524
  %2538 = fadd fast float %2534, %2500
  %2539 = fadd fast float %2535, %2501
  %2540 = fadd fast float %2536, %2502
  %2541 = fadd fast float %2537, %2503
  %2542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2543 = extractvalue %dx.types.CBufRet.f32 %2542, 0
  %2544 = extractvalue %dx.types.CBufRet.f32 %2542, 1
  %2545 = fsub fast float %2543, %2506
  %2546 = fsub fast float %2544, %2507
  %2547 = fmul fast float %2545, %2524
  %2548 = fmul fast float %2546, %2524
  %2549 = fadd fast float %2547, %2506
  %2550 = fadd fast float %2548, %2507
  %2551 = extractvalue %dx.types.CBufRet.f32 %2542, 2
  %2552 = extractvalue %dx.types.CBufRet.f32 %2542, 3
  %2553 = fsub fast float %2551, %2510
  %2554 = fsub fast float %2552, %2511
  %2555 = fmul fast float %2553, %2524
  %2556 = fmul fast float %2554, %2524
  %2557 = fadd fast float %2555, %2510
  %2558 = fadd fast float %2556, %2511
  %2559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2560 = extractvalue %dx.types.CBufRet.f32 %2559, 0
  %2561 = fmul fast float %2560, %2538
  %2562 = fmul fast float %2560, %2539
  %2563 = fmul fast float %2560, %2540
  %2564 = fmul fast float %2560, %2541
  %2565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2566 = extractvalue %dx.types.CBufRet.f32 %2565, 0
  %2567 = fmul fast float %2566, %2549
  %2568 = fmul fast float %2566, %2550
  %2569 = fadd fast float %2567, %2561
  %2570 = fadd fast float %2568, %2563
  %2571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2572 = extractvalue %dx.types.CBufRet.f32 %2571, 0
  %2573 = fmul fast float %2572, %2557
  %2574 = fmul fast float %2572, %2558
  %2575 = fadd fast float %2569, %2573
  %2576 = fadd fast float %2570, %2574
  %2577 = extractvalue %dx.types.CBufRet.f32 %2559, 1
  %2578 = fmul fast float %2577, %2538
  %2579 = fmul fast float %2577, %2539
  %2580 = fmul fast float %2577, %2540
  %2581 = fmul fast float %2577, %2541
  %2582 = extractvalue %dx.types.CBufRet.f32 %2565, 1
  %2583 = fmul fast float %2582, %2549
  %2584 = fmul fast float %2582, %2550
  %2585 = fadd fast float %2583, %2578
  %2586 = fadd fast float %2584, %2580
  %2587 = extractvalue %dx.types.CBufRet.f32 %2571, 1
  %2588 = fmul fast float %2587, %2557
  %2589 = fmul fast float %2587, %2558
  %2590 = fadd fast float %2585, %2588
  %2591 = fadd fast float %2586, %2589
  %2592 = extractvalue %dx.types.CBufRet.f32 %2559, 2
  %2593 = fmul fast float %2592, %2538
  %2594 = fmul fast float %2592, %2539
  %2595 = fmul fast float %2592, %2540
  %2596 = fmul fast float %2592, %2541
  %2597 = extractvalue %dx.types.CBufRet.f32 %2565, 2
  %2598 = fmul fast float %2597, %2549
  %2599 = fmul fast float %2597, %2550
  %2600 = fadd fast float %2598, %2593
  %2601 = fadd fast float %2599, %2595
  %2602 = extractvalue %dx.types.CBufRet.f32 %2571, 2
  %2603 = fmul fast float %2602, %2557
  %2604 = fmul fast float %2602, %2558
  %2605 = fadd fast float %2600, %2603
  %2606 = fadd fast float %2601, %2604
  %2607 = fmul fast float %2594, %2594
  %2608 = fmul fast float %2606, %2606
  %2609 = fmul fast float %2596, %2596
  %2610 = fadd fast float %2609, %2607
  %2611 = fadd fast float %2610, %2608
  %2612 = call float @dx.op.unary.f32(i32 24, float %2611)  ; Sqrt(value)
  %2613 = fcmp fast ugt float %2612, 0.000000e+00
  br i1 %2613, label %2614, label %2629

; <label>:2614                                    ; preds = %2343
  %2615 = fsub fast float -0.000000e+00, %2596
  %2616 = fdiv fast float %2615, %2612
  %2617 = fsub fast float -0.000000e+00, %2594
  %2618 = fdiv fast float %2617, %2612
  %2619 = fdiv fast float %2606, %2612
  %2620 = fmul fast float %2605, 0x3FE279A760000000
  %2621 = fmul fast float %2618, %2594
  %2622 = fmul fast float %2619, %2606
  %2623 = fmul fast float %2616, %2596
  %2624 = fadd fast float %2621, %2623
  %2625 = fsub fast float %2624, %2622
  %2626 = call float @dx.op.unary.f32(i32 6, float %2625)  ; FAbs(value)
  %2627 = fadd fast float %2626, 0x3DDB7CDFE0000000
  %2628 = fdiv fast float %2620, %2627
  br label %2629

; <label>:2629                                    ; preds = %2614, %2343
  %2630 = phi float [ %2628, %2614 ], [ 1.000000e+00, %2343 ]
  %2631 = fmul fast float %2579, %2579
  %2632 = fmul fast float %2591, %2591
  %2633 = fmul fast float %2581, %2581
  %2634 = fadd fast float %2633, %2631
  %2635 = fadd fast float %2634, %2632
  %2636 = call float @dx.op.unary.f32(i32 24, float %2635)  ; Sqrt(value)
  %2637 = fcmp fast ugt float %2636, 0.000000e+00
  br i1 %2637, label %2638, label %2653

; <label>:2638                                    ; preds = %2629
  %2639 = fsub fast float -0.000000e+00, %2581
  %2640 = fdiv fast float %2639, %2636
  %2641 = fsub fast float -0.000000e+00, %2579
  %2642 = fdiv fast float %2641, %2636
  %2643 = fdiv fast float %2591, %2636
  %2644 = fmul fast float %2590, 0x3FE279A760000000
  %2645 = fmul fast float %2642, %2579
  %2646 = fmul fast float %2643, %2591
  %2647 = fmul fast float %2640, %2581
  %2648 = fadd fast float %2645, %2647
  %2649 = fsub fast float %2648, %2646
  %2650 = call float @dx.op.unary.f32(i32 6, float %2649)  ; FAbs(value)
  %2651 = fadd fast float %2650, 0x3DDB7CDFE0000000
  %2652 = fdiv fast float %2644, %2651
  br label %2653

; <label>:2653                                    ; preds = %2638, %2629
  %2654 = phi float [ %2652, %2638 ], [ 1.000000e+00, %2629 ]
  %2655 = call float @dx.op.binary.f32(i32 36, float %2654, float %2630)  ; FMin(a,b)
  %2656 = fmul fast float %2562, %2562
  %2657 = fmul fast float %2576, %2576
  %2658 = fmul fast float %2564, %2564
  %2659 = fadd fast float %2658, %2656
  %2660 = fadd fast float %2659, %2657
  %2661 = call float @dx.op.unary.f32(i32 24, float %2660)  ; Sqrt(value)
  %2662 = fcmp fast ugt float %2661, 0.000000e+00
  br i1 %2662, label %2663, label %2678

; <label>:2663                                    ; preds = %2653
  %2664 = fsub fast float -0.000000e+00, %2564
  %2665 = fdiv fast float %2664, %2661
  %2666 = fsub fast float -0.000000e+00, %2562
  %2667 = fdiv fast float %2666, %2661
  %2668 = fdiv fast float %2576, %2661
  %2669 = fmul fast float %2575, 0x3FE279A760000000
  %2670 = fmul fast float %2667, %2562
  %2671 = fmul fast float %2668, %2576
  %2672 = fmul fast float %2665, %2564
  %2673 = fadd fast float %2670, %2672
  %2674 = fsub fast float %2673, %2671
  %2675 = call float @dx.op.unary.f32(i32 6, float %2674)  ; FAbs(value)
  %2676 = fadd fast float %2675, 0x3DDB7CDFE0000000
  %2677 = fdiv fast float %2669, %2676
  br label %2678

; <label>:2678                                    ; preds = %2663, %2653
  %2679 = phi float [ %2677, %2663 ], [ 1.000000e+00, %2653 ]
  %2680 = call float @dx.op.binary.f32(i32 36, float %2679, float %2655)  ; FMin(a,b)
  %2681 = call float @dx.op.unary.f32(i32 7, float %2680)  ; Saturate(value)
  %2682 = fcmp fast olt float %2681, 1.000000e+00
  br i1 %2682, label %2683, label %2693

; <label>:2683                                    ; preds = %2678
  %2684 = fmul fast float %2681, %2562
  %2685 = fmul fast float %2681, %2576
  %2686 = fmul fast float %2681, %2564
  %2687 = fmul fast float %2681, %2579
  %2688 = fmul fast float %2681, %2591
  %2689 = fmul fast float %2681, %2581
  %2690 = fmul fast float %2681, %2594
  %2691 = fmul fast float %2681, %2606
  %2692 = fmul fast float %2681, %2596
  br label %2693

; <label>:2693                                    ; preds = %2683, %2678
  %2694 = phi float [ %2690, %2683 ], [ %2594, %2678 ]
  %2695 = phi float [ %2691, %2683 ], [ %2606, %2678 ]
  %2696 = phi float [ %2692, %2683 ], [ %2596, %2678 ]
  %2697 = phi float [ %2687, %2683 ], [ %2579, %2678 ]
  %2698 = phi float [ %2688, %2683 ], [ %2591, %2678 ]
  %2699 = phi float [ %2689, %2683 ], [ %2581, %2678 ]
  %2700 = phi float [ %2684, %2683 ], [ %2562, %2678 ]
  %2701 = phi float [ %2685, %2683 ], [ %2576, %2678 ]
  %2702 = phi float [ %2686, %2683 ], [ %2564, %2678 ]
  %2703 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2575)  ; FMax(a,b)
  %2704 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2590)  ; FMax(a,b)
  %2705 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2605)  ; FMax(a,b)
  %2706 = fcmp fast oge float %2363, 0.000000e+00
  %2707 = and i1 %2706, %2152
  %2708 = fcmp fast ole float %2363, 1.000000e+00
  %2709 = and i1 %2708, %2707
  %2710 = fcmp fast oge float %2364, 0.000000e+00
  %2711 = and i1 %2710, %2709
  %2712 = fcmp fast ole float %2364, 1.000000e+00
  %2713 = and i1 %2712, %2711
  br i1 %2713, label %2714, label %2854, !dx.controlflow.hints !125

; <label>:2714                                    ; preds = %2693
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 2
  %2717 = extractvalue %dx.types.CBufRet.f32 %2715, 3
  %2718 = fmul fast float %2716, %2363
  %2719 = fmul fast float %2717, %2364
  %2720 = call float @dx.op.unary.f32(i32 27, float %2718)  ; Round_ni(value)
  %2721 = call float @dx.op.unary.f32(i32 27, float %2719)  ; Round_ni(value)
  %2722 = fptosi float %2720 to i32
  %2723 = fptosi float %2721 to i32
  %2724 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %41, i32 0, i32 %2722, i32 %2723, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2725 = extractvalue %dx.types.ResRet.i32 %2724, 0
  %2726 = and i32 %2725, 65535
  %2727 = lshr i32 %2725, 16
  %2728 = icmp eq i32 %2726, 65535
  br i1 %2728, label %2765, label %2729

; <label>:2729                                    ; preds = %2714
  %2730 = extractvalue %dx.types.CBufRet.f32 %2150, 1
  %2731 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2732 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2733 = fmul fast float %2731, %2363
  %2734 = fmul fast float %2732, %2364
  %2735 = fmul fast float %2733, 1.250000e-01
  %2736 = fmul fast float %2734, 1.250000e-01
  %2737 = call float @dx.op.unary.f32(i32 27, float %2735)  ; Round_ni(value)
  %2738 = call float @dx.op.unary.f32(i32 27, float %2736)  ; Round_ni(value)
  %2739 = fmul fast float %2737, 8.000000e+00
  %2740 = fmul fast float %2738, 8.000000e+00
  %2741 = and i32 %2725, 255
  %2742 = lshr i32 %2725, 8
  %2743 = and i32 %2742, 255
  %2744 = mul nuw nsw i32 %2741, 9
  %2745 = uitofp i32 %2744 to float
  %2746 = mul nuw nsw i32 %2743, 9
  %2747 = uitofp i32 %2746 to float
  %2748 = fadd fast float %2745, 5.000000e-01
  %2749 = fadd fast float %2748, %2733
  %2750 = fsub fast float %2749, %2739
  %2751 = fadd fast float %2747, 5.000000e-01
  %2752 = fadd fast float %2751, %2734
  %2753 = fsub fast float %2752, %2740
  %2754 = fdiv fast float %2750, %2151
  %2755 = fdiv fast float %2753, %2730
  %2756 = fmul fast float %2391, 4.375000e-01
  %2757 = fadd fast float %2756, 3.125000e-02
  %2758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %2754, float %2755, float %2757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2759 = extractvalue %dx.types.ResRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.ResRet.f32 %2758, 1
  %2761 = extractvalue %dx.types.ResRet.f32 %2758, 2
  %2762 = fadd fast float %2759, %2703
  %2763 = fadd fast float %2760, %2704
  %2764 = fadd fast float %2761, %2705
  br label %2765

; <label>:2765                                    ; preds = %2729, %2714
  %2766 = phi float [ %2764, %2729 ], [ %2705, %2714 ]
  %2767 = phi float [ %2763, %2729 ], [ %2704, %2714 ]
  %2768 = phi float [ %2762, %2729 ], [ %2703, %2714 ]
  %2769 = icmp eq i32 %2727, 65535
  br i1 %2769, label %2854, label %2770

; <label>:2770                                    ; preds = %2765
  %2771 = extractvalue %dx.types.CBufRet.f32 %2150, 1
  %2772 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2773 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2774 = fmul fast float %2772, %2363
  %2775 = fmul fast float %2773, %2364
  %2776 = fmul fast float %2774, 1.250000e-01
  %2777 = fmul fast float %2775, 1.250000e-01
  %2778 = call float @dx.op.unary.f32(i32 27, float %2776)  ; Round_ni(value)
  %2779 = call float @dx.op.unary.f32(i32 27, float %2777)  ; Round_ni(value)
  %2780 = fmul fast float %2778, 8.000000e+00
  %2781 = fmul fast float %2779, 8.000000e+00
  %2782 = fsub fast float %2774, %2780
  %2783 = fsub fast float %2775, %2781
  %2784 = fadd fast float %2782, 5.000000e-01
  %2785 = fadd fast float %2783, 5.000000e-01
  %2786 = and i32 %2727, 255
  %2787 = lshr i32 %2725, 24
  %2788 = mul nuw nsw i32 %2786, 9
  %2789 = uitofp i32 %2788 to float
  %2790 = mul nuw nsw i32 %2787, 9
  %2791 = uitofp i32 %2790 to float
  %2792 = fadd fast float %2784, %2789
  %2793 = fadd fast float %2785, %2791
  %2794 = fdiv fast float %2792, %2151
  %2795 = fdiv fast float %2793, %2771
  %2796 = fmul fast float %2391, 4.375000e-01
  %2797 = fadd fast float %2796, 3.125000e-02
  %2798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %2794, float %2795, float %2797, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2799 = extractvalue %dx.types.ResRet.f32 %2798, 0
  %2800 = extractvalue %dx.types.ResRet.f32 %2798, 1
  %2801 = extractvalue %dx.types.ResRet.f32 %2798, 2
  %2802 = fadd fast float %2796, 5.312500e-01
  %2803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %2794, float %2795, float %2802, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2804 = extractvalue %dx.types.ResRet.f32 %2803, 0
  %2805 = extractvalue %dx.types.ResRet.f32 %2803, 1
  %2806 = extractvalue %dx.types.ResRet.f32 %2803, 2
  %2807 = fmul fast float %2804, 2.000000e+00
  %2808 = fmul fast float %2805, 2.000000e+00
  %2809 = fmul fast float %2806, 2.000000e+00
  %2810 = fadd fast float %2807, -1.000000e+00
  %2811 = fadd fast float %2808, -1.000000e+00
  %2812 = fadd fast float %2809, -1.000000e+00
  %2813 = fmul fast float %2810, %2810
  %2814 = fmul fast float %2811, %2811
  %2815 = fadd fast float %2813, %2814
  %2816 = fmul fast float %2812, %2812
  %2817 = fadd fast float %2815, %2816
  %2818 = call float @dx.op.unary.f32(i32 24, float %2817)  ; Sqrt(value)
  %2819 = fcmp fast ogt float %2818, 0.000000e+00
  br i1 %2819, label %2820, label %2824

; <label>:2820                                    ; preds = %2770
  %2821 = fdiv fast float %2810, %2818
  %2822 = fdiv fast float %2811, %2818
  %2823 = fdiv fast float %2812, %2818
  br label %2824

; <label>:2824                                    ; preds = %2820, %2770
  %2825 = phi float [ %2821, %2820 ], [ 0.000000e+00, %2770 ]
  %2826 = phi float [ %2822, %2820 ], [ 0.000000e+00, %2770 ]
  %2827 = phi float [ %2823, %2820 ], [ 0.000000e+00, %2770 ]
  %2828 = fmul fast float %155, %155
  %2829 = fmul fast float %156, %156
  %2830 = fadd fast float %2828, %2829
  %2831 = call float @dx.op.unary.f32(i32 24, float %2830)  ; Sqrt(value)
  %2832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2833 = extractvalue %dx.types.CBufRet.f32 %2832, 0
  %2834 = extractvalue %dx.types.CBufRet.f32 %2832, 1
  %2835 = fsub fast float %2831, %2833
  %2836 = fdiv fast float %2835, %2834
  %2837 = call float @dx.op.unary.f32(i32 7, float %2836)  ; Saturate(value)
  %2838 = fmul fast float %2837, 2.000000e+00
  %2839 = fsub fast float 3.000000e+00, %2838
  %2840 = fmul fast float %2837, %2837
  %2841 = fmul fast float %2840, %2839
  %2842 = call float @dx.op.dot3.f32(i32 55, float %2825, float %2826, float %2827, float %1883, float %1884, float %1885)  ; Dot3(ax,ay,az,bx,by,bz)
  %2843 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2842)  ; FMax(a,b)
  %2844 = fmul fast float %2843, 0x400C5BF8A0000000
  %2845 = fmul fast float %2841, %2799
  %2846 = fmul fast float %2845, %2844
  %2847 = fadd fast float %2846, %2768
  %2848 = fmul fast float %2841, %2800
  %2849 = fmul fast float %2848, %2844
  %2850 = fadd fast float %2849, %2767
  %2851 = fmul fast float %2841, %2801
  %2852 = fmul fast float %2851, %2844
  %2853 = fadd fast float %2852, %2766
  br label %2854

; <label>:2854                                    ; preds = %2824, %2765, %2693
  %2855 = phi float [ %2853, %2824 ], [ %2766, %2765 ], [ %2705, %2693 ]
  %2856 = phi float [ %2850, %2824 ], [ %2767, %2765 ], [ %2704, %2693 ]
  %2857 = phi float [ %2847, %2824 ], [ %2768, %2765 ], [ %2703, %2693 ]
  %2858 = fcmp fast ogt float %2350, %2387
  %2859 = and i1 %2706, %2858
  %2860 = and i1 %2708, %2859
  %2861 = and i1 %2710, %2860
  %2862 = and i1 %2712, %2861
  br i1 %2862, label %2863, label %2920, !dx.controlflow.hints !126

; <label>:2863                                    ; preds = %2854
  %2864 = fmul fast float %2389, 0x3FC24924A0000000
  %2865 = fsub fast float %2350, %2387
  %2866 = fdiv fast float %2865, %2864
  %2867 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  %2868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2869 = extractvalue %dx.types.CBufRet.f32 %2868, 0
  %2870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2871 = extractvalue %dx.types.CBufRet.f32 %2870, 0
  %2872 = extractvalue %dx.types.CBufRet.f32 %2870, 1
  %2873 = extractvalue %dx.types.CBufRet.f32 %2870, 2
  %2874 = fsub fast float %2869, %2857
  %2875 = fsub fast float %2871, %2700
  %2876 = fsub fast float %2872, %2701
  %2877 = fsub fast float %2873, %2702
  %2878 = fmul fast float %2874, %2867
  %2879 = fmul fast float %2875, %2867
  %2880 = fmul fast float %2876, %2867
  %2881 = fmul fast float %2877, %2867
  %2882 = fadd fast float %2878, %2857
  %2883 = fadd fast float %2879, %2700
  %2884 = fadd fast float %2880, %2701
  %2885 = fadd fast float %2881, %2702
  %2886 = extractvalue %dx.types.CBufRet.f32 %2868, 1
  %2887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2888 = extractvalue %dx.types.CBufRet.f32 %2887, 0
  %2889 = extractvalue %dx.types.CBufRet.f32 %2887, 1
  %2890 = extractvalue %dx.types.CBufRet.f32 %2887, 2
  %2891 = fsub fast float %2886, %2856
  %2892 = fsub fast float %2888, %2697
  %2893 = fsub fast float %2889, %2698
  %2894 = fsub fast float %2890, %2699
  %2895 = fmul fast float %2891, %2867
  %2896 = fmul fast float %2892, %2867
  %2897 = fmul fast float %2893, %2867
  %2898 = fmul fast float %2894, %2867
  %2899 = fadd fast float %2895, %2856
  %2900 = fadd fast float %2896, %2697
  %2901 = fadd fast float %2897, %2698
  %2902 = fadd fast float %2898, %2699
  %2903 = extractvalue %dx.types.CBufRet.f32 %2868, 2
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.CBufRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.CBufRet.f32 %2904, 2
  %2908 = fsub fast float %2903, %2855
  %2909 = fsub fast float %2905, %2694
  %2910 = fsub fast float %2906, %2695
  %2911 = fsub fast float %2907, %2696
  %2912 = fmul fast float %2908, %2867
  %2913 = fmul fast float %2909, %2867
  %2914 = fmul fast float %2910, %2867
  %2915 = fmul fast float %2911, %2867
  %2916 = fadd fast float %2912, %2855
  %2917 = fadd fast float %2913, %2694
  %2918 = fadd fast float %2914, %2695
  %2919 = fadd fast float %2915, %2696
  br label %2920

; <label>:2920                                    ; preds = %2863, %2854
  %2921 = phi float [ %2916, %2863 ], [ %2855, %2854 ]
  %2922 = phi float [ %2917, %2863 ], [ %2694, %2854 ]
  %2923 = phi float [ %2918, %2863 ], [ %2695, %2854 ]
  %2924 = phi float [ %2919, %2863 ], [ %2696, %2854 ]
  %2925 = phi float [ %2899, %2863 ], [ %2856, %2854 ]
  %2926 = phi float [ %2900, %2863 ], [ %2697, %2854 ]
  %2927 = phi float [ %2901, %2863 ], [ %2698, %2854 ]
  %2928 = phi float [ %2902, %2863 ], [ %2699, %2854 ]
  %2929 = phi float [ %2882, %2863 ], [ %2857, %2854 ]
  %2930 = phi float [ %2883, %2863 ], [ %2700, %2854 ]
  %2931 = phi float [ %2884, %2863 ], [ %2701, %2854 ]
  %2932 = phi float [ %2885, %2863 ], [ %2702, %2854 ]
  %2933 = extractvalue %dx.types.CBufRet.f32 %2512, 3
  %2934 = fmul fast float %2933, %2929
  %2935 = fmul fast float %2933, %2925
  %2936 = fmul fast float %2933, %2921
  %2937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2938 = extractvalue %dx.types.CBufRet.f32 %2937, 3
  %2939 = fmul fast float %2934, %2938
  %2940 = fmul fast float %2935, %2938
  %2941 = fmul fast float %2936, %2938
  %2942 = call float @dx.op.dot3.f32(i32 55, float %2939, float %2940, float %2941, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2943 = fmul fast float %2942, 0x3FD20DD760000000
  %2944 = fmul fast float %2930, 1.500000e+00
  %2945 = fmul fast float %2944, %2933
  %2946 = fmul fast float %2945, %2938
  %2947 = fmul fast float %2931, 1.500000e+00
  %2948 = fmul fast float %2947, %2933
  %2949 = fmul fast float %2948, %2938
  %2950 = fmul fast float %2932, 1.500000e+00
  %2951 = fmul fast float %2950, %2933
  %2952 = fmul fast float %2951, %2938
  %2953 = fmul fast float %2926, 1.500000e+00
  %2954 = fmul fast float %2953, %2933
  %2955 = fmul fast float %2954, %2938
  %2956 = fmul fast float %2927, 1.500000e+00
  %2957 = fmul fast float %2956, %2933
  %2958 = fmul fast float %2957, %2938
  %2959 = fmul fast float %2928, 1.500000e+00
  %2960 = fmul fast float %2959, %2933
  %2961 = fmul fast float %2960, %2938
  %2962 = fmul fast float %2922, 1.500000e+00
  %2963 = fmul fast float %2962, %2933
  %2964 = fmul fast float %2963, %2938
  %2965 = fmul fast float %2923, 1.500000e+00
  %2966 = fmul fast float %2965, %2933
  %2967 = fmul fast float %2966, %2938
  %2968 = fmul fast float %2924, 1.500000e+00
  %2969 = fmul fast float %2968, %2933
  %2970 = fmul fast float %2969, %2938
  %2971 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2939)  ; FMax(a,b)
  %2972 = call float @dx.op.dot3.f32(i32 55, float %2946, float %2949, float %2952, float %2946, float %2949, float %2952)  ; Dot3(ax,ay,az,bx,by,bz)
  %2973 = fcmp fast oeq float %2972, 0.000000e+00
  %2974 = fcmp fast oeq float %2971, 0.000000e+00
  %2975 = or i1 %2974, %2973
  br i1 %2975, label %3005, label %2976

; <label>:2976                                    ; preds = %2920
  %2977 = fsub fast float -0.000000e+00, %2952
  %2978 = fsub fast float -0.000000e+00, %2946
  %2979 = call float @dx.op.unary.f32(i32 24, float %2972)  ; Sqrt(value)
  %2980 = fdiv fast float %2979, %2971
  %2981 = fcmp fast ogt float %2980, 0x3FFB6F8900000000
  %2982 = select i1 %2981, float 0x3FFB6F8900000000, float %2980
  %2983 = fmul fast float %2982, 0x3FE8A23460000000
  %2984 = call float @dx.op.unary.f32(i32 7, float %2983)  ; Saturate(value)
  %2985 = call float @dx.op.binary.f32(i32 35, float %2982, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2986 = fmul fast float %2984, %2971
  %2987 = fmul fast float %2985, 0x3FF279A740000000
  %2988 = fadd fast float %2987, -1.000000e+00
  %2989 = call float @dx.op.dot3.f32(i32 55, float %2977, float %2978, float %2949, float %2977, float %2978, float %2949)  ; Dot3(ax,ay,az,bx,by,bz)
  %2990 = call float @dx.op.unary.f32(i32 25, float %2989)  ; Rsqrt(value)
  %2991 = fmul fast float %2990, %2977
  %2992 = fmul fast float %2990, %2978
  %2993 = fmul fast float %2990, %2949
  %2994 = fmul fast float %2988, %2988
  %2995 = fsub fast float 1.000000e+00, %2994
  %2996 = fmul fast float %2985, 0x40005F8BE0000000
  %2997 = fsub fast float 0x400C5BF8A0000000, %2996
  %2998 = fdiv fast float %2986, %2997
  %2999 = fmul fast float %2998, 0x3FEE31C3C0000000
  %3000 = fmul fast float %2999, %2995
  %3001 = fmul fast float %2985, 0x3FDACB7480000000
  %3002 = fadd fast float %3001, 0xBFD7347680000000
  %3003 = fmul fast float %3002, %2998
  %3004 = fmul fast float %3003, %2995
  br label %3005

; <label>:3005                                    ; preds = %2976, %2920
  %3006 = phi float [ %2991, %2976 ], [ 0.000000e+00, %2920 ]
  %3007 = phi float [ %2992, %2976 ], [ 0.000000e+00, %2920 ]
  %3008 = phi float [ %2993, %2976 ], [ 0.000000e+00, %2920 ]
  %3009 = phi float [ %3000, %2976 ], [ 0.000000e+00, %2920 ]
  %3010 = phi float [ %3004, %2976 ], [ 0.000000e+00, %2920 ]
  %3011 = call float @dx.op.dot3.f32(i32 55, float %3006, float %3007, float %3008, float %1883, float %1884, float %1885)  ; Dot3(ax,ay,az,bx,by,bz)
  %3012 = fmul fast float %3011, %3011
  %3013 = fmul fast float %3012, 0x3FEE471020000000
  %3014 = fadd fast float %3013, 0xBFD42F6020000000
  %3015 = fmul fast float %2971, 0x3FD20DD760000000
  %3016 = fmul fast float %3014, %3010
  %3017 = fmul fast float %3009, 0x3FDF454380000000
  %3018 = fmul fast float %3017, %3011
  %3019 = fadd fast float %3018, %3015
  %3020 = fadd fast float %3019, %3016
  %3021 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2940)  ; FMax(a,b)
  %3022 = call float @dx.op.dot3.f32(i32 55, float %2955, float %2958, float %2961, float %2955, float %2958, float %2961)  ; Dot3(ax,ay,az,bx,by,bz)
  %3023 = fcmp fast oeq float %3022, 0.000000e+00
  %3024 = fcmp fast oeq float %3021, 0.000000e+00
  %3025 = or i1 %3024, %3023
  br i1 %3025, label %3055, label %3026

; <label>:3026                                    ; preds = %3005
  %3027 = fsub fast float -0.000000e+00, %2961
  %3028 = fsub fast float -0.000000e+00, %2955
  %3029 = call float @dx.op.unary.f32(i32 24, float %3022)  ; Sqrt(value)
  %3030 = fdiv fast float %3029, %3021
  %3031 = fcmp fast ogt float %3030, 0x3FFB6F8900000000
  %3032 = select i1 %3031, float 0x3FFB6F8900000000, float %3030
  %3033 = fmul fast float %3032, 0x3FE8A23460000000
  %3034 = call float @dx.op.unary.f32(i32 7, float %3033)  ; Saturate(value)
  %3035 = call float @dx.op.binary.f32(i32 35, float %3032, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3036 = fmul fast float %3034, %3021
  %3037 = fmul fast float %3035, 0x3FF279A740000000
  %3038 = fadd fast float %3037, -1.000000e+00
  %3039 = call float @dx.op.dot3.f32(i32 55, float %3027, float %3028, float %2958, float %3027, float %3028, float %2958)  ; Dot3(ax,ay,az,bx,by,bz)
  %3040 = call float @dx.op.unary.f32(i32 25, float %3039)  ; Rsqrt(value)
  %3041 = fmul fast float %3040, %3027
  %3042 = fmul fast float %3040, %3028
  %3043 = fmul fast float %3040, %2958
  %3044 = fmul fast float %3038, %3038
  %3045 = fsub fast float 1.000000e+00, %3044
  %3046 = fmul fast float %3035, 0x40005F8BE0000000
  %3047 = fsub fast float 0x400C5BF8A0000000, %3046
  %3048 = fdiv fast float %3036, %3047
  %3049 = fmul fast float %3048, 0x3FEE31C3C0000000
  %3050 = fmul fast float %3049, %3045
  %3051 = fmul fast float %3035, 0x3FDACB7480000000
  %3052 = fadd fast float %3051, 0xBFD7347680000000
  %3053 = fmul fast float %3052, %3048
  %3054 = fmul fast float %3053, %3045
  br label %3055

; <label>:3055                                    ; preds = %3026, %3005
  %3056 = phi float [ %3041, %3026 ], [ 0.000000e+00, %3005 ]
  %3057 = phi float [ %3042, %3026 ], [ 0.000000e+00, %3005 ]
  %3058 = phi float [ %3043, %3026 ], [ 0.000000e+00, %3005 ]
  %3059 = phi float [ %3050, %3026 ], [ 0.000000e+00, %3005 ]
  %3060 = phi float [ %3054, %3026 ], [ 0.000000e+00, %3005 ]
  %3061 = call float @dx.op.dot3.f32(i32 55, float %3056, float %3057, float %3058, float %1883, float %1884, float %1885)  ; Dot3(ax,ay,az,bx,by,bz)
  %3062 = fmul fast float %3061, %3061
  %3063 = fmul fast float %3062, 0x3FEE471020000000
  %3064 = fadd fast float %3063, 0xBFD42F6020000000
  %3065 = fmul fast float %3021, 0x3FD20DD760000000
  %3066 = fmul fast float %3064, %3060
  %3067 = fmul fast float %3059, 0x3FDF454380000000
  %3068 = fmul fast float %3067, %3061
  %3069 = fadd fast float %3068, %3065
  %3070 = fadd fast float %3069, %3066
  %3071 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2941)  ; FMax(a,b)
  %3072 = call float @dx.op.dot3.f32(i32 55, float %2964, float %2967, float %2970, float %2964, float %2967, float %2970)  ; Dot3(ax,ay,az,bx,by,bz)
  %3073 = fcmp fast oeq float %3072, 0.000000e+00
  %3074 = fcmp fast oeq float %3071, 0.000000e+00
  %3075 = or i1 %3074, %3073
  br i1 %3075, label %3105, label %3076

; <label>:3076                                    ; preds = %3055
  %3077 = fsub fast float -0.000000e+00, %2970
  %3078 = fsub fast float -0.000000e+00, %2964
  %3079 = call float @dx.op.unary.f32(i32 24, float %3072)  ; Sqrt(value)
  %3080 = fdiv fast float %3079, %3071
  %3081 = fcmp fast ogt float %3080, 0x3FFB6F8900000000
  %3082 = select i1 %3081, float 0x3FFB6F8900000000, float %3080
  %3083 = fmul fast float %3082, 0x3FE8A23460000000
  %3084 = call float @dx.op.unary.f32(i32 7, float %3083)  ; Saturate(value)
  %3085 = call float @dx.op.binary.f32(i32 35, float %3082, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3086 = fmul fast float %3084, %3071
  %3087 = fmul fast float %3085, 0x3FF279A740000000
  %3088 = fadd fast float %3087, -1.000000e+00
  %3089 = call float @dx.op.dot3.f32(i32 55, float %3077, float %3078, float %2967, float %3077, float %3078, float %2967)  ; Dot3(ax,ay,az,bx,by,bz)
  %3090 = call float @dx.op.unary.f32(i32 25, float %3089)  ; Rsqrt(value)
  %3091 = fmul fast float %3090, %3077
  %3092 = fmul fast float %3090, %3078
  %3093 = fmul fast float %3090, %2967
  %3094 = fmul fast float %3088, %3088
  %3095 = fsub fast float 1.000000e+00, %3094
  %3096 = fmul fast float %3085, 0x40005F8BE0000000
  %3097 = fsub fast float 0x400C5BF8A0000000, %3096
  %3098 = fdiv fast float %3086, %3097
  %3099 = fmul fast float %3098, 0x3FEE31C3C0000000
  %3100 = fmul fast float %3099, %3095
  %3101 = fmul fast float %3085, 0x3FDACB7480000000
  %3102 = fadd fast float %3101, 0xBFD7347680000000
  %3103 = fmul fast float %3102, %3098
  %3104 = fmul fast float %3103, %3095
  br label %3105

; <label>:3105                                    ; preds = %3076, %3055
  %3106 = phi float [ %3091, %3076 ], [ 0.000000e+00, %3055 ]
  %3107 = phi float [ %3092, %3076 ], [ 0.000000e+00, %3055 ]
  %3108 = phi float [ %3093, %3076 ], [ 0.000000e+00, %3055 ]
  %3109 = phi float [ %3100, %3076 ], [ 0.000000e+00, %3055 ]
  %3110 = phi float [ %3104, %3076 ], [ 0.000000e+00, %3055 ]
  %3111 = call float @dx.op.dot3.f32(i32 55, float %3106, float %3107, float %3108, float %1883, float %1884, float %1885)  ; Dot3(ax,ay,az,bx,by,bz)
  %3112 = fmul fast float %3111, %3111
  %3113 = fmul fast float %3112, 0x3FEE471020000000
  %3114 = fadd fast float %3113, 0xBFD42F6020000000
  %3115 = fmul fast float %3071, 0x3FD20DD760000000
  %3116 = fmul fast float %3114, %3110
  %3117 = fmul fast float %3109, 0x3FDF454380000000
  %3118 = fmul fast float %3117, %3111
  %3119 = fadd fast float %3118, %3115
  %3120 = fadd fast float %3119, %3116
  %3121 = call float @dx.op.binary.f32(i32 35, float %3020, float 0.000000e+00)  ; FMax(a,b)
  %3122 = call float @dx.op.binary.f32(i32 35, float %3070, float 0.000000e+00)  ; FMax(a,b)
  %3123 = call float @dx.op.binary.f32(i32 35, float %3120, float 0.000000e+00)  ; FMax(a,b)
  %3124 = fsub fast float %2340, %3121
  %3125 = fsub fast float %2341, %3122
  %3126 = fsub fast float %2342, %3123
  %3127 = fmul fast float %3124, %2149
  %3128 = fmul fast float %3125, %2149
  %3129 = fmul fast float %3126, %2149
  %3130 = fadd fast float %3127, %3121
  %3131 = fadd fast float %3128, %3122
  %3132 = fadd fast float %3129, %3123
  %3133 = fmul fast float %2943, %2149
  %3134 = fsub fast float %2943, %3133
  br label %3135

; <label>:3135                                    ; preds = %3105, %2339
  %3136 = phi float [ %3134, %3105 ], [ 0.000000e+00, %2339 ]
  %3137 = phi float [ %3130, %3105 ], [ %2340, %2339 ]
  %3138 = phi float [ %3131, %3105 ], [ %2341, %2339 ]
  %3139 = phi float [ %3132, %3105 ], [ %2342, %2339 ]
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 0
  %3142 = call float @dx.op.binary.f32(i32 36, float %1895, float %3141)  ; FMin(a,b)
  %3143 = fmul fast float %3142, %2128
  %3144 = fsub fast float 1.000000e+00, %3143
  %3145 = bitcast float %3144 to i32
  %3146 = sub nsw i32 2129859010, %3145
  %3147 = bitcast i32 %3146 to float
  %3148 = call float @dx.op.binary.f32(i32 36, float %1896, float %3141)  ; FMin(a,b)
  %3149 = fmul fast float %3148, %2128
  %3150 = fsub fast float 1.000000e+00, %3149
  %3151 = bitcast float %3150 to i32
  %3152 = sub nsw i32 2129859010, %3151
  %3153 = bitcast i32 %3152 to float
  %3154 = call float @dx.op.binary.f32(i32 36, float %1897, float %3141)  ; FMin(a,b)
  %3155 = fmul fast float %3154, %2128
  %3156 = fsub fast float 1.000000e+00, %3155
  %3157 = bitcast float %3156 to i32
  %3158 = sub nsw i32 2129859010, %3157
  %3159 = bitcast i32 %3158 to float
  %3160 = fmul fast float %3137, %2127
  %3161 = fmul fast float %3160, %3147
  %3162 = fmul fast float %3138, %2127
  %3163 = fmul fast float %3162, %3153
  %3164 = fmul fast float %3139, %2127
  %3165 = fmul fast float %3164, %3159
  %3166 = extractvalue %dx.types.CBufRet.i32 %2146, 2
  %3167 = and i32 %3166, 1
  %3168 = icmp ne i32 %3167, 0
  %3169 = fsub fast float 1.000000e+00, %2149
  %3170 = select i1 %3168, float %2149, float %3161
  %3171 = select i1 %3168, float %3169, float %3163
  %3172 = select i1 %3168, float 0.000000e+00, float %3165
  %3173 = call float @dx.op.dot3.f32(i32 55, float %3170, float %3171, float %3172, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3174 = select i1 %2107, float 0.000000e+00, float %3170
  %3175 = select i1 %2107, float %3173, float %3171
  %3176 = select i1 %2107, float 0.000000e+00, float %3172
  %3177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3178 = extractvalue %dx.types.CBufRet.f32 %3177, 0
  %3179 = bitcast float %3178 to i32
  %3180 = lshr i32 %3179, 8
  %3181 = and i32 %3180, 255
  %3182 = uitofp i32 %3181 to float
  %3183 = fptoui float %3182 to i32
  %3184 = icmp eq i32 %3183, 23
  br i1 %3184, label %3185, label %3208

; <label>:3185                                    ; preds = %3135
  %3186 = fmul fast float %3159, %2127
  %3187 = fmul fast float %3153, %2127
  %3188 = fmul fast float %3147, %2127
  %3189 = fadd fast float %3188, 1.000000e+00
  %3190 = fadd fast float %3187, 1.000000e+00
  %3191 = fadd fast float %3186, 1.000000e+00
  %3192 = fmul fast float %3189, 5.000000e-01
  %3193 = fmul fast float %3190, 5.000000e-01
  %3194 = fmul fast float %3191, 5.000000e-01
  %3195 = call float @dx.op.unary.f32(i32 7, float %3192)  ; Saturate(value)
  %3196 = call float @dx.op.unary.f32(i32 7, float %3193)  ; Saturate(value)
  %3197 = call float @dx.op.unary.f32(i32 7, float %3194)  ; Saturate(value)
  %3198 = fmul fast float %3195, 1.023000e+03
  %3199 = fmul fast float %3196, 1.023000e+03
  %3200 = fmul fast float %3197, 1.023000e+03
  %3201 = fptoui float %3198 to i32
  %3202 = fptoui float %3199 to i32
  %3203 = fptoui float %3200 to i32
  %3204 = shl i32 %3202, 10
  %3205 = or i32 %3204, %3201
  %3206 = shl i32 %3203, 20
  %3207 = or i32 %3205, %3206
  br label %3208

; <label>:3208                                    ; preds = %3185, %3135
  %3209 = phi i32 [ %3207, %3185 ], [ 0, %3135 ]
  %3210 = fsub fast float 1.000000e+00, %2109
  %3211 = fmul fast float %3210, %1943
  %3212 = fadd fast float %3211, %2109
  %3213 = fcmp fast ogt float %1978, 0.000000e+00
  %3214 = select i1 %3213, float %1986, float 0.000000e+00
  %3215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %63, float %1978, float %3214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3216 = extractvalue %dx.types.ResRet.f32 %3215, 0
  %3217 = extractvalue %dx.types.ResRet.f32 %3215, 1
  %3218 = extractvalue %dx.types.ResRet.f32 %3215, 2
  %3219 = fadd fast float %3216, -5.000000e-01
  %3220 = fadd fast float %3217, -5.000000e-01
  %3221 = fadd fast float %3218, -5.000000e-01
  %3222 = fmul fast float %1997, %3219
  %3223 = fmul fast float %2001, %3220
  %3224 = fmul fast float %2109, 4.000000e+00
  %3225 = fmul fast float %3224, %3210
  %3226 = fmul fast float %3225, %1980
  %3227 = fmul fast float %3226, %3221
  %3228 = fadd fast float %1974, %3222
  %3229 = fadd fast float %1975, %3223
  %3230 = fadd fast float %3212, %3227
  %3231 = call float @dx.op.unary.f32(i32 7, float %3228)  ; Saturate(value)
  %3232 = call float @dx.op.unary.f32(i32 7, float %3229)  ; Saturate(value)
  %3233 = call float @dx.op.unary.f32(i32 7, float %3230)  ; Saturate(value)
  %3234 = call float @dx.op.binary.f32(i32 35, float %3232, float %3233)  ; FMax(a,b)
  %3235 = call float @dx.op.binary.f32(i32 35, float %3231, float %3234)  ; FMax(a,b)
  %3236 = fsub fast float 1.000000e+00, %3235
  %3237 = extractvalue %dx.types.CBufRet.f32 %2117, 2
  %3238 = fcmp fast olt float %3237, 0.000000e+00
  br i1 %3238, label %3239, label %3950

; <label>:3239                                    ; preds = %3208
  %3240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3241 = extractvalue %dx.types.CBufRet.f32 %3240, 2
  %3242 = extractvalue %dx.types.CBufRet.f32 %3240, 3
  %3243 = fmul fast float %3241, %100
  %3244 = fmul fast float %3242, %101
  %3245 = fptoui float %3243 to i32
  %3246 = fptoui float %3244 to i32
  %3247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3248 = extractvalue %dx.types.CBufRet.f32 %3247, 0
  %3249 = extractvalue %dx.types.CBufRet.f32 %3247, 2
  %3250 = extractvalue %dx.types.CBufRet.f32 %3247, 3
  %3251 = fadd fast float %89, -4.000000e+00
  %3252 = call float @dx.op.binary.f32(i32 35, float %3251, float 0.000000e+00)  ; FMax(a,b)
  %3253 = fadd fast float %3252, %3248
  %3254 = fmul fast float %3253, %3249
  %3255 = call float @dx.op.unary.f32(i32 23, float %3254)  ; Log(value)
  %3256 = fmul fast float %3255, %3250
  %3257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3258 = extractvalue %dx.types.CBufRet.f32 %3257, 2
  %3259 = fmul fast float %3256, %3258
  %3260 = call float @dx.op.unary.f32(i32 7, float %3259)  ; Saturate(value)
  %3261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3262 = extractvalue %dx.types.CBufRet.i32 %3261, 1
  %3263 = add i32 %3262, -1
  %3264 = uitofp i32 %3262 to float
  %3265 = fmul fast float %3264, %3260
  %3266 = fptoui float %3265 to i32
  %3267 = call i32 @dx.op.binary.i32(i32 40, i32 %3266, i32 %3263)  ; UMin(a,b)
  %3268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3269 = extractvalue %dx.types.CBufRet.i32 %3268, 2
  %3270 = extractvalue %dx.types.CBufRet.i32 %3268, 3
  %3271 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3246, i32 %3269, i32 %3245)  ; UMad(a,b,c)
  %3272 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3267, i32 %3270, i32 %3271)  ; UMad(a,b,c)
  %3273 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %3274 = fptoui float %3273 to i32
  %3275 = lshr i32 %3274, 5
  %3276 = call i32 @dx.op.binary.i32(i32 40, i32 %3275, i32 8191)  ; UMin(a,b)
  %3277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3278 = extractvalue %dx.types.CBufRet.i32 %3277, 2
  %3279 = add nsw i32 %3278, -1
  %3280 = call i32 @dx.op.binary.i32(i32 37, i32 %3279, i32 0)  ; IMax(a,b)
  %3281 = shl i32 %3276, 2
  %3282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.i32 %3282, 0
  %3284 = lshr i32 %3283, 16
  %3285 = and i32 %3283, 65535
  %3286 = lshr i32 %3283, 21
  %3287 = lshr i32 %3285, 5
  %3288 = call i32 @dx.op.binary.i32(i32 40, i32 %3287, i32 %3280)  ; UMin(a,b)
  %3289 = icmp ugt i32 %3286, %3288
  br i1 %3289, label %3875, label %3290

; <label>:3290                                    ; preds = %3239
  br label %3291

; <label>:3291                                    ; preds = %3857, %3290
  %3292 = phi i32 [ %3858, %3857 ], [ %1857, %3290 ]
  %3293 = phi i32 [ %3859, %3857 ], [ %3209, %3290 ]
  %3294 = phi float [ %3860, %3857 ], [ 0.000000e+00, %3290 ]
  %3295 = phi float [ %3861, %3857 ], [ 0.000000e+00, %3290 ]
  %3296 = phi float [ %3862, %3857 ], [ 0.000000e+00, %3290 ]
  %3297 = phi float [ %3863, %3857 ], [ 0.000000e+00, %3290 ]
  %3298 = phi float [ %3864, %3857 ], [ 0.000000e+00, %3290 ]
  %3299 = phi float [ %3865, %3857 ], [ 0.000000e+00, %3290 ]
  %3300 = phi i32 [ %3866, %3857 ], [ 0, %3290 ]
  %3301 = phi float [ %3867, %3857 ], [ 0.000000e+00, %3290 ]
  %3302 = phi float [ %3868, %3857 ], [ 0.000000e+00, %3290 ]
  %3303 = phi float [ %3869, %3857 ], [ 0.000000e+00, %3290 ]
  %3304 = phi i32 [ %3870, %3857 ], [ 1, %3290 ]
  %3305 = phi float [ %3871, %3857 ], [ 1.000000e+00, %3290 ]
  %3306 = phi i32 [ %3872, %3857 ], [ %3286, %3290 ]
  %3307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3308 = extractvalue %dx.types.CBufRet.i32 %3307, 2
  %3309 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3272, i32 %3308, i32 %3306)  ; UMad(a,b,c)
  %3310 = shl i32 %3309, 2
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = shl i32 %3306, 5
  %3314 = sub nsw i32 %3284, %3313
  %3315 = call i32 @dx.op.binary.i32(i32 37, i32 %3314, i32 0)  ; IMax(a,b)
  %3316 = call i32 @dx.op.binary.i32(i32 38, i32 %3315, i32 31)  ; IMin(a,b)
  %3317 = sub nsw i32 1, %3284
  %3318 = add nsw i32 %3317, %3285
  %3319 = call i32 @dx.op.binary.i32(i32 37, i32 %3318, i32 0)  ; IMax(a,b)
  %3320 = call i32 @dx.op.binary.i32(i32 38, i32 %3319, i32 32)  ; IMin(a,b)
  %3321 = and i32 %3320, 31
  %3322 = shl i32 -1, %3321
  %3323 = xor i32 %3322, -1
  %3324 = and i32 %3316, 31
  %3325 = shl i32 %3323, %3324
  %3326 = icmp eq i32 %3320, 32
  %3327 = select i1 %3326, i32 -1, i32 %3325
  %3328 = and i32 %3327, %3312
  %3329 = icmp eq i32 %3328, 0
  br i1 %3329, label %3857, label %3330

; <label>:3330                                    ; preds = %3291
  br label %3331

; <label>:3331                                    ; preds = %3468, %3330
  %3332 = phi i32 [ %3469, %3468 ], [ %3292, %3330 ]
  %3333 = phi i32 [ %3470, %3468 ], [ %3293, %3330 ]
  %3334 = phi float [ %3471, %3468 ], [ %3294, %3330 ]
  %3335 = phi float [ %3472, %3468 ], [ %3295, %3330 ]
  %3336 = phi float [ %3473, %3468 ], [ %3296, %3330 ]
  %3337 = phi float [ %3474, %3468 ], [ %3297, %3330 ]
  %3338 = phi float [ %3475, %3468 ], [ %3298, %3330 ]
  %3339 = phi float [ %3476, %3468 ], [ %3299, %3330 ]
  %3340 = phi i32 [ %3477, %3468 ], [ %3300, %3330 ]
  %3341 = phi float [ %3478, %3468 ], [ %3301, %3330 ]
  %3342 = phi float [ %3479, %3468 ], [ %3302, %3330 ]
  %3343 = phi float [ %3480, %3468 ], [ %3303, %3330 ]
  %3344 = phi i32 [ %3481, %3468 ], [ %3304, %3330 ]
  %3345 = phi float [ %3482, %3468 ], [ %3305, %3330 ]
  %3346 = phi i32 [ %3351, %3468 ], [ %3328, %3330 ]
  %3347 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3346)  ; FirstbitLo(value)
  %3348 = add i32 %3347, %3313
  %3349 = and i32 %3347, 31
  %3350 = shl i32 1, %3349
  %3351 = xor i32 %3350, %3346
  %3352 = mul i32 %3348, 72
  %3353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3355 = extractvalue %dx.types.ResRet.f32 %3353, 1
  %3356 = extractvalue %dx.types.ResRet.f32 %3353, 2
  %3357 = add i32 %3352, 12
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = add i32 %3352, 16
  %3361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.f32 %3361, 0
  %3363 = extractvalue %dx.types.ResRet.f32 %3361, 1
  %3364 = extractvalue %dx.types.ResRet.f32 %3361, 2
  %3365 = add i32 %3352, 28
  %3366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.f32 %3366, 0
  %3368 = add i32 %3352, 32
  %3369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.f32 %3369, 0
  %3371 = extractvalue %dx.types.ResRet.f32 %3369, 1
  %3372 = extractvalue %dx.types.ResRet.f32 %3369, 2
  %3373 = extractvalue %dx.types.ResRet.f32 %3369, 3
  %3374 = add i32 %3352, 48
  %3375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.ResRet.f32 %3375, 1
  %3378 = add i32 %3352, 56
  %3379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.f32 %3379, 0
  %3381 = extractvalue %dx.types.ResRet.f32 %3379, 1
  %3382 = add i32 %3352, 64
  %3383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.ResRet.f32 %3383, 1
  %3386 = mul i32 %3348, 60
  %3387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.f32 %3387, 0
  %3389 = extractvalue %dx.types.ResRet.f32 %3387, 1
  %3390 = extractvalue %dx.types.ResRet.f32 %3387, 2
  %3391 = add i32 %3386, 12
  %3392 = add i32 %3386, 48
  %3393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3392, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = extractvalue %dx.types.ResRet.f32 %3393, 1
  %3396 = extractvalue %dx.types.ResRet.f32 %3393, 2
  %3397 = and i32 %3359, 32767
  %3398 = bitcast float %3354 to i32
  %3399 = bitcast float %3355 to i32
  %3400 = and i32 %3359, 32768
  %3401 = icmp ne i32 %3400, 0
  %3402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %3403 = extractvalue %dx.types.CBufRet.f32 %3402, 3
  %3404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3405 = extractvalue %dx.types.CBufRet.f32 %3404, 0
  %3406 = extractvalue %dx.types.CBufRet.f32 %3404, 1
  %3407 = extractvalue %dx.types.CBufRet.f32 %3404, 2
  %3408 = fsub fast float %3388, %3405
  %3409 = fsub fast float %3389, %3406
  %3410 = fsub fast float %3390, %3407
  %3411 = fsub fast float %155, %3408
  %3412 = fsub fast float %156, %3409
  %3413 = fsub fast float %157, %3410
  %3414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.f32 %3414, 0
  %3416 = extractvalue %dx.types.ResRet.f32 %3414, 1
  %3417 = extractvalue %dx.types.ResRet.f32 %3414, 2
  %3418 = call float @dx.op.dot3.f32(i32 55, float %3411, float %3412, float %3413, float %3415, float %3416, float %3417)  ; Dot3(ax,ay,az,bx,by,bz)
  %3419 = add i32 %3386, 24
  %3420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.f32 %3420, 0
  %3422 = extractvalue %dx.types.ResRet.f32 %3420, 1
  %3423 = extractvalue %dx.types.ResRet.f32 %3420, 2
  %3424 = call float @dx.op.dot3.f32(i32 55, float %3411, float %3412, float %3413, float %3421, float %3422, float %3423)  ; Dot3(ax,ay,az,bx,by,bz)
  %3425 = add i32 %3386, 36
  %3426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.f32 %3426, 0
  %3428 = extractvalue %dx.types.ResRet.f32 %3426, 1
  %3429 = extractvalue %dx.types.ResRet.f32 %3426, 2
  %3430 = call float @dx.op.dot3.f32(i32 55, float %3411, float %3412, float %3413, float %3427, float %3428, float %3429)  ; Dot3(ax,ay,az,bx,by,bz)
  %3431 = call float @dx.op.unary.f32(i32 6, float %3418)  ; FAbs(value)
  %3432 = call float @dx.op.unary.f32(i32 6, float %3424)  ; FAbs(value)
  %3433 = call float @dx.op.unary.f32(i32 6, float %3430)  ; FAbs(value)
  %3434 = fsub fast float %3394, %3431
  %3435 = fsub fast float %3395, %3432
  %3436 = fsub fast float %3396, %3433
  %3437 = fmul fast float %3434, %3362
  %3438 = fmul fast float %3435, %3363
  %3439 = fmul fast float %3436, %3364
  %3440 = call float @dx.op.binary.f32(i32 36, float %3438, float %3439)  ; FMin(a,b)
  %3441 = call float @dx.op.binary.f32(i32 36, float %3437, float %3440)  ; FMin(a,b)
  %3442 = call float @dx.op.unary.f32(i32 7, float %3441)  ; Saturate(value)
  %3443 = call float @dx.op.binary.f32(i32 36, float %3345, float %3442)  ; FMin(a,b)
  %3444 = uitofp i1 %3401 to float
  %3445 = select i1 %117, float 1.000000e+00, float 2.000000e+00
  %3446 = fsub fast float %3445, %3444
  %3447 = fmul fast float %3443, %3446
  %3448 = lshr i32 %3332, 8
  %3449 = and i32 %3448, 255
  %3450 = uitofp i32 %3449 to float
  %3451 = fptoui float %3450 to i32
  %3452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3453 = extractvalue %dx.types.CBufRet.f32 %3452, 1
  %3454 = bitcast float %3453 to i32
  %3455 = lshr i32 %3454, 24
  %3456 = uitofp i32 %3455 to float
  %3457 = fptoui float %3456 to i32
  %3458 = icmp ne i32 %3457, 1
  %3459 = zext i1 %3458 to i32
  %3460 = add i32 %3459, %3451
  %3461 = uitofp i32 %3460 to float
  %3462 = fptoui float %3461 to i32
  %3463 = shl i32 %3462, 8
  %3464 = and i32 %3463, 65280
  %3465 = and i32 %3332, -65281
  %3466 = or i32 %3464, %3465
  %3467 = fcmp fast ogt float %3447, 0.000000e+00
  br i1 %3467, label %3484, label %3468

; <label>:3468                                    ; preds = %3840, %3709, %3331
  %3469 = phi i32 [ %3787, %3709 ], [ %3466, %3331 ], [ %3787, %3840 ]
  %3470 = phi i32 [ %3333, %3709 ], [ %3333, %3331 ], [ %3855, %3840 ]
  %3471 = phi float [ %3773, %3709 ], [ %3334, %3331 ], [ %3773, %3840 ]
  %3472 = phi float [ %3774, %3709 ], [ %3335, %3331 ], [ %3774, %3840 ]
  %3473 = phi float [ %3775, %3709 ], [ %3336, %3331 ], [ %3775, %3840 ]
  %3474 = phi float [ %3834, %3709 ], [ %3337, %3331 ], [ %3834, %3840 ]
  %3475 = phi float [ %3835, %3709 ], [ %3338, %3331 ], [ %3835, %3840 ]
  %3476 = phi float [ %3836, %3709 ], [ %3339, %3331 ], [ %3836, %3840 ]
  %3477 = phi i32 [ %3838, %3709 ], [ %3340, %3331 ], [ %3838, %3840 ]
  %3478 = phi float [ %3791, %3709 ], [ %3341, %3331 ], [ %3791, %3840 ]
  %3479 = phi float [ %3792, %3709 ], [ %3342, %3331 ], [ %3792, %3840 ]
  %3480 = phi float [ %3793, %3709 ], [ %3343, %3331 ], [ %3793, %3840 ]
  %3481 = phi i32 [ 0, %3709 ], [ %3344, %3331 ], [ 0, %3840 ]
  %3482 = phi float [ %3776, %3709 ], [ %3345, %3331 ], [ %3776, %3840 ]
  %3483 = icmp eq i32 %3346, %3350
  br i1 %3483, label %3856, label %3331

; <label>:3484                                    ; preds = %3331
  %3485 = extractvalue %dx.types.CBufRet.f32 %3452, 0
  %3486 = bitcast float %3485 to i32
  %3487 = lshr i32 %3486, 8
  %3488 = and i32 %3487, 255
  %3489 = uitofp i32 %3488 to float
  %3490 = fptoui float %3489 to i32
  %3491 = and i32 %3490, 2
  %3492 = icmp eq i32 %3491, 0
  br i1 %3492, label %3499, label %3493

; <label>:3493                                    ; preds = %3484
  %3494 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %3495 = call float @dx.op.unary.f32(i32 25, float %3494)  ; Rsqrt(value)
  %3496 = fmul fast float %3495, %155
  %3497 = fmul fast float %3495, %156
  %3498 = fmul fast float %3495, %157
  br label %3499

; <label>:3499                                    ; preds = %3493, %3484
  %3500 = phi float [ %3496, %3493 ], [ %1883, %3484 ]
  %3501 = phi float [ %3497, %3493 ], [ %1884, %3484 ]
  %3502 = phi float [ %3498, %3493 ], [ %1885, %3484 ]
  %3503 = icmp ne i32 %3398, -1
  %3504 = fcmp oeq float %3403, 0.000000e+00
  %3505 = and i1 %3504, %3503
  br i1 %3505, label %3506, label %3630

; <label>:3506                                    ; preds = %3499
  %3507 = fsub fast float -0.000000e+00, %3415
  %3508 = fsub fast float -0.000000e+00, %3416
  %3509 = fsub fast float -0.000000e+00, %3417
  %3510 = call float @dx.op.dot3.f32(i32 55, float %3500, float %3501, float %3502, float %3507, float %3508, float %3509)  ; Dot3(ax,ay,az,bx,by,bz)
  %3511 = fsub fast float -0.000000e+00, %3510
  %3512 = call float @dx.op.dot3.f32(i32 55, float %3411, float %3412, float %3413, float %3507, float %3508, float %3509)  ; Dot3(ax,ay,az,bx,by,bz)
  %3513 = fadd fast float %3512, %3377
  %3514 = fadd fast float %3376, %3512
  %3515 = fsub fast float -0.000000e+00, %3514
  %3516 = fcmp ogt float %3510, -0.000000e+00
  %3517 = select i1 %3516, float %3515, float %3513
  %3518 = call float @dx.op.unary.f32(i32 6, float %3511)  ; FAbs(value)
  %3519 = fdiv fast float 1.000000e+00, %3518
  %3520 = fmul fast float %3517, %3519
  %3521 = call float @dx.op.binary.f32(i32 35, float %3520, float 0.000000e+00)  ; FMax(a,b)
  %3522 = fsub fast float -0.000000e+00, %3421
  %3523 = fsub fast float -0.000000e+00, %3422
  %3524 = fsub fast float -0.000000e+00, %3423
  %3525 = call float @dx.op.dot3.f32(i32 55, float %3500, float %3501, float %3502, float %3522, float %3523, float %3524)  ; Dot3(ax,ay,az,bx,by,bz)
  %3526 = fsub fast float -0.000000e+00, %3525
  %3527 = call float @dx.op.dot3.f32(i32 55, float %3411, float %3412, float %3413, float %3522, float %3523, float %3524)  ; Dot3(ax,ay,az,bx,by,bz)
  %3528 = fadd fast float %3527, %3381
  %3529 = fadd fast float %3380, %3527
  %3530 = fsub fast float -0.000000e+00, %3529
  %3531 = fcmp ogt float %3525, -0.000000e+00
  %3532 = select i1 %3531, float %3530, float %3528
  %3533 = call float @dx.op.unary.f32(i32 6, float %3526)  ; FAbs(value)
  %3534 = fdiv fast float 1.000000e+00, %3533
  %3535 = fmul fast float %3532, %3534
  %3536 = call float @dx.op.binary.f32(i32 35, float %3535, float 0.000000e+00)  ; FMax(a,b)
  %3537 = fsub fast float -0.000000e+00, %3427
  %3538 = fsub fast float -0.000000e+00, %3428
  %3539 = fsub fast float -0.000000e+00, %3429
  %3540 = call float @dx.op.dot3.f32(i32 55, float %3500, float %3501, float %3502, float %3537, float %3538, float %3539)  ; Dot3(ax,ay,az,bx,by,bz)
  %3541 = fsub fast float -0.000000e+00, %3540
  %3542 = call float @dx.op.dot3.f32(i32 55, float %3411, float %3412, float %3413, float %3537, float %3538, float %3539)  ; Dot3(ax,ay,az,bx,by,bz)
  %3543 = fadd fast float %3542, %3385
  %3544 = fadd fast float %3384, %3542
  %3545 = fsub fast float -0.000000e+00, %3544
  %3546 = fcmp ogt float %3540, -0.000000e+00
  %3547 = select i1 %3546, float %3545, float %3543
  %3548 = call float @dx.op.unary.f32(i32 6, float %3541)  ; FAbs(value)
  %3549 = fdiv fast float 1.000000e+00, %3548
  %3550 = fmul fast float %3547, %3549
  %3551 = call float @dx.op.binary.f32(i32 35, float %3550, float 0.000000e+00)  ; FMax(a,b)
  %3552 = call float @dx.op.binary.f32(i32 36, float %3536, float %3551)  ; FMin(a,b)
  %3553 = call float @dx.op.binary.f32(i32 36, float %3521, float %3552)  ; FMin(a,b)
  %3554 = fmul fast float %3553, %3500
  %3555 = fmul fast float %3553, %3501
  %3556 = fmul fast float %3553, %3502
  %3557 = fadd fast float %3554, %155
  %3558 = fadd fast float %3555, %156
  %3559 = fadd fast float %3556, %157
  %3560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3561 = extractvalue %dx.types.CBufRet.f32 %3560, 0
  %3562 = extractvalue %dx.types.CBufRet.f32 %3560, 1
  %3563 = extractvalue %dx.types.CBufRet.f32 %3560, 2
  %3564 = fadd fast float %3557, %3561
  %3565 = fadd fast float %3558, %3562
  %3566 = fadd fast float %3559, %3563
  %3567 = fcmp fast olt float %3521, %3536
  %3568 = fcmp fast olt float %3521, %3551
  %3569 = and i1 %3567, %3568
  br i1 %3569, label %3573, label %3570

; <label>:3570                                    ; preds = %3506
  %3571 = fcmp fast olt float %3536, %3551
  br i1 %3571, label %3572, label %3573

; <label>:3572                                    ; preds = %3570
  br label %3573

; <label>:3573                                    ; preds = %3572, %3570, %3506
  %3574 = phi float [ 0.000000e+00, %3572 ], [ 0.000000e+00, %3570 ], [ 1.000000e+00, %3506 ]
  %3575 = phi float [ 1.000000e+00, %3572 ], [ 0.000000e+00, %3570 ], [ 0.000000e+00, %3506 ]
  %3576 = phi float [ 0.000000e+00, %3572 ], [ 1.000000e+00, %3570 ], [ 0.000000e+00, %3506 ]
  %3577 = phi float [ %3421, %3572 ], [ %3427, %3570 ], [ %3415, %3506 ]
  %3578 = phi float [ %3422, %3572 ], [ %3428, %3570 ], [ %3416, %3506 ]
  %3579 = phi float [ %3423, %3572 ], [ %3429, %3570 ], [ %3417, %3506 ]
  %3580 = call float @dx.op.unary.f32(i32 6, float %3579)  ; FAbs(value)
  %3581 = fcmp fast olt float %3580, 0x3FE276C8C0000000
  %3582 = select i1 %3581, float 0.000000e+00, float 1.000000e+00
  %3583 = select i1 %3581, float 1.000000e+00, float 0.000000e+00
  %3584 = fmul fast float %3583, %3578
  %3585 = fmul fast float %3582, %3579
  %3586 = fsub fast float %3584, %3585
  %3587 = fmul fast float %3577, %3583
  %3588 = fsub fast float -0.000000e+00, %3587
  %3589 = fmul fast float %3582, %3577
  %3590 = call float @dx.op.dot3.f32(i32 55, float %3586, float %3588, float %3589, float %3586, float %3588, float %3589)  ; Dot3(ax,ay,az,bx,by,bz)
  %3591 = call float @dx.op.unary.f32(i32 25, float %3590)  ; Rsqrt(value)
  %3592 = fmul fast float %3586, %3591
  %3593 = fmul fast float %3591, %3588
  %3594 = fmul fast float %3589, %3591
  %3595 = fmul fast float %3594, %3578
  %3596 = fmul fast float %3593, %3579
  %3597 = fsub fast float %3595, %3596
  %3598 = fmul fast float %3592, %3579
  %3599 = fmul fast float %3594, %3577
  %3600 = fsub fast float %3598, %3599
  %3601 = fmul fast float %3593, %3577
  %3602 = fmul fast float %3592, %3578
  %3603 = fsub fast float %3601, %3602
  %3604 = call float @dx.op.dot3.f32(i32 55, float %3597, float %3600, float %3603, float %3597, float %3600, float %3603)  ; Dot3(ax,ay,az,bx,by,bz)
  %3605 = call float @dx.op.unary.f32(i32 25, float %3604)  ; Rsqrt(value)
  %3606 = fmul fast float %3597, %3605
  %3607 = fmul fast float %3600, %3605
  %3608 = fmul fast float %3603, %3605
  %3609 = call float @dx.op.dot3.f32(i32 55, float %3564, float %3565, float %3566, float %3592, float %3593, float %3594)  ; Dot3(ax,ay,az,bx,by,bz)
  %3610 = call float @dx.op.dot3.f32(i32 55, float %3564, float %3565, float %3566, float %3606, float %3607, float %3608)  ; Dot3(ax,ay,az,bx,by,bz)
  %3611 = fmul fast float %3609, 0x3FA99999A0000000
  %3612 = fmul fast float %3610, 0x3FA99999A0000000
  %3613 = call float @dx.op.unary.f32(i32 22, float %3611)  ; Frc(value)
  %3614 = call float @dx.op.unary.f32(i32 22, float %3612)  ; Frc(value)
  %3615 = fadd fast float %3613, 0xBFB99999A0000000
  %3616 = fadd fast float %3614, 0xBFB99999A0000000
  %3617 = call float @dx.op.unary.f32(i32 6, float %3615)  ; FAbs(value)
  %3618 = call float @dx.op.unary.f32(i32 6, float %3616)  ; FAbs(value)
  %3619 = fmul fast float %3617, 1.000000e+01
  %3620 = fmul fast float %3618, 1.000000e+01
  %3621 = call float @dx.op.binary.f32(i32 36, float %3619, float %3620)  ; FMin(a,b)
  %3622 = call float @dx.op.unary.f32(i32 7, float %3621)  ; Saturate(value)
  %3623 = fsub fast float 1.000000e+00, %3622
  %3624 = fmul fast float %3623, %3574
  %3625 = fmul fast float %3623, %3575
  %3626 = fmul fast float %3623, %3576
  %3627 = fsub fast float %3557, %3354
  %3628 = fsub fast float %3558, %3355
  %3629 = fsub fast float %3559, %3356
  br label %3637

; <label>:3630                                    ; preds = %3499
  %3631 = fmul fast float %3500, 8.096000e+03
  %3632 = fmul fast float %3501, 8.096000e+03
  %3633 = fmul fast float %3502, 8.096000e+03
  %3634 = fadd fast float %3631, %155
  %3635 = fadd fast float %3632, %156
  %3636 = fadd fast float %3633, %157
  br label %3637

; <label>:3637                                    ; preds = %3630, %3573
  %3638 = phi float [ %3500, %3630 ], [ %3627, %3573 ]
  %3639 = phi float [ %3501, %3630 ], [ %3628, %3573 ]
  %3640 = phi float [ %3502, %3630 ], [ %3629, %3573 ]
  %3641 = phi float [ %3634, %3630 ], [ %3557, %3573 ]
  %3642 = phi float [ %3635, %3630 ], [ %3558, %3573 ]
  %3643 = phi float [ %3636, %3630 ], [ %3559, %3573 ]
  %3644 = phi float [ 0.000000e+00, %3630 ], [ %3624, %3573 ]
  %3645 = phi float [ 0.000000e+00, %3630 ], [ %3625, %3573 ]
  %3646 = phi float [ 0.000000e+00, %3630 ], [ %3626, %3573 ]
  %3647 = fcmp fast olt float %3373, 1.000000e+00
  br i1 %3647, label %3648, label %3679, !dx.controlflow.hints !127

; <label>:3648                                    ; preds = %3637
  %3649 = fmul fast float %3640, %3371
  %3650 = fmul fast float %3639, %3372
  %3651 = fsub fast float %3649, %3650
  %3652 = fmul fast float %3638, %3372
  %3653 = fmul fast float %3640, %3370
  %3654 = fsub fast float %3652, %3653
  %3655 = fmul fast float %3639, %3370
  %3656 = fmul fast float %3638, %3371
  %3657 = fsub fast float %3655, %3656
  %3658 = fmul fast float %3651, 2.000000e+00
  %3659 = fmul fast float %3654, 2.000000e+00
  %3660 = fmul fast float %3657, 2.000000e+00
  %3661 = fmul fast float %3658, %3373
  %3662 = fmul fast float %3659, %3373
  %3663 = fmul fast float %3660, %3373
  %3664 = fmul fast float %3660, %3371
  %3665 = fmul fast float %3659, %3372
  %3666 = fmul fast float %3658, %3372
  %3667 = fmul fast float %3660, %3370
  %3668 = fmul fast float %3659, %3370
  %3669 = fmul fast float %3658, %3371
  %3670 = fadd fast float %3664, %3638
  %3671 = fadd fast float %3670, %3661
  %3672 = fsub fast float %3671, %3665
  %3673 = fsub fast float %3639, %3667
  %3674 = fadd fast float %3673, %3662
  %3675 = fadd fast float %3674, %3666
  %3676 = fadd fast float %3663, %3640
  %3677 = fsub fast float %3676, %3669
  %3678 = fadd fast float %3677, %3668
  br label %3679

; <label>:3679                                    ; preds = %3648, %3637
  %3680 = phi float [ %3672, %3648 ], [ %3638, %3637 ]
  %3681 = phi float [ %3675, %3648 ], [ %3639, %3637 ]
  %3682 = phi float [ %3678, %3648 ], [ %3640, %3637 ]
  br i1 %3505, label %3683, label %3706

; <label>:3683                                    ; preds = %3679
  %3684 = fsub fast float %3641, %155
  %3685 = fsub fast float %3642, %156
  %3686 = fsub fast float %3643, %157
  %3687 = fsub fast float %3641, %3354
  %3688 = fsub fast float %3642, %3355
  %3689 = fsub fast float %3643, %3356
  %3690 = call float @dx.op.dot3.f32(i32 55, float %3684, float %3685, float %3686, float %3684, float %3685, float %3686)  ; Dot3(ax,ay,az,bx,by,bz)
  %3691 = call float @dx.op.dot3.f32(i32 55, float %3687, float %3688, float %3689, float %3687, float %3688, float %3689)  ; Dot3(ax,ay,az,bx,by,bz)
  %3692 = fadd fast float %3691, 0x3EE4F8B580000000
  %3693 = fdiv fast float %3690, %3692
  %3694 = bitcast float %3693 to i32
  %3695 = ashr i32 %3694, 1
  %3696 = add nsw i32 %3695, 532487669
  %3697 = bitcast i32 %3696 to float
  %3698 = call float @dx.op.unary.f32(i32 7, float %3697)  ; Saturate(value)
  %3699 = fmul fast float %3698, 0x4009981AE0000000
  %3700 = fsub fast float 0x40111BBD80000000, %3699
  %3701 = fmul fast float %3700, %3698
  %3702 = fadd fast float %3701, 0xC0009F6020000000
  %3703 = fmul fast float %3702, %3698
  %3704 = fadd fast float %3703, 1.000000e+00
  %3705 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  br label %3709

; <label>:3706                                    ; preds = %3679
  %3707 = icmp ne i32 %3399, -1
  %3708 = zext i1 %3707 to i32
  br label %3709

; <label>:3709                                    ; preds = %3706, %3683
  %3710 = phi float [ 0.000000e+00, %3706 ], [ %3705, %3683 ]
  %3711 = phi i32 [ %3708, %3706 ], [ 0, %3683 ]
  %3712 = fmul float %3710, 5.000000e+00
  %3713 = fsub float 5.000000e+00, %3712
  %3714 = icmp ne i32 %3711, 0
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 3
  %3717 = fadd fast float %3716, %3713
  %3718 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3717)  ; FMax(a,b)
  %3719 = call float @dx.op.unary.f32(i32 6, float %3680)  ; FAbs(value)
  %3720 = call float @dx.op.unary.f32(i32 6, float %3681)  ; FAbs(value)
  %3721 = fadd fast float %3720, %3719
  %3722 = call float @dx.op.unary.f32(i32 6, float %3682)  ; FAbs(value)
  %3723 = fadd fast float %3721, %3722
  %3724 = fcmp fast oeq float %3723, 0.000000e+00
  %3725 = fdiv fast float 1.000000e+00, %3723
  %3726 = select i1 %3724, float 1.000000e+00, float %3725
  %3727 = fmul fast float %3726, %3680
  %3728 = fmul fast float %3726, %3681
  %3729 = call float @dx.op.unary.f32(i32 6, float %3728)  ; FAbs(value)
  %3730 = call float @dx.op.unary.f32(i32 6, float %3727)  ; FAbs(value)
  %3731 = fsub fast float 1.000000e+00, %3729
  %3732 = fsub fast float 1.000000e+00, %3730
  %3733 = fcmp fast oge float %3727, 0.000000e+00
  %3734 = fcmp fast oge float %3728, 0.000000e+00
  %3735 = select i1 %3733, float 1.000000e+00, float -1.000000e+00
  %3736 = select i1 %3734, float 1.000000e+00, float -1.000000e+00
  %3737 = fcmp fast ole float %3682, 0.000000e+00
  %3738 = fmul fast float %3735, %3731
  %3739 = fmul fast float %3736, %3732
  %3740 = select i1 %3737, float %3738, float %3727
  %3741 = select i1 %3737, float %3739, float %3728
  %3742 = fmul fast float %3740, 5.000000e-01
  %3743 = fmul fast float %3741, 5.000000e-01
  %3744 = fadd fast float %3742, 5.000000e-01
  %3745 = fadd fast float %3743, 5.000000e-01
  %3746 = uitofp i32 %3397 to float
  %3747 = call float @dx.op.binary.f32(i32 36, float %3718, float 3.000000e+00)  ; FMin(a,b)
  %3748 = fadd fast float %3747, 2.000000e+00
  %3749 = call float @dx.op.unary.f32(i32 21, float %3748)  ; Exp(value)
  %3750 = extractvalue %dx.types.CBufRet.f32 %3715, 1
  %3751 = fmul fast float %3750, %3749
  %3752 = fmul fast float %3751, 2.000000e+00
  %3753 = fsub fast float 1.000000e+00, %3752
  %3754 = fmul fast float %3744, %3753
  %3755 = fmul fast float %3745, %3753
  %3756 = fadd fast float %3754, %3751
  %3757 = fadd fast float %3755, %3751
  %3758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %3756, float %3757, float %3746, float undef, i32 0, i32 0, i32 undef, float %3718)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3759 = extractvalue %dx.types.ResRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.ResRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.ResRet.f32 %3758, 2
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 3
  %3764 = fmul fast float %3763, %3367
  %3765 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %3764)  ; FMin(a,b)
  %3766 = select i1 %3714, float %3765, float %3764
  %3767 = fmul fast float %3759, %3447
  %3768 = fmul fast float %3767, %3766
  %3769 = fmul fast float %3760, %3447
  %3770 = fmul fast float %3769, %3766
  %3771 = fmul fast float %3761, %3447
  %3772 = fmul fast float %3771, %3766
  %3773 = fadd fast float %3768, %3334
  %3774 = fadd fast float %3770, %3335
  %3775 = fadd fast float %3772, %3336
  %3776 = fsub fast float %3345, %3447
  %3777 = and i32 %3462, 255
  %3778 = uitofp i32 %3777 to float
  %3779 = fptoui float %3778 to i32
  %3780 = icmp eq i32 %3457, 1
  %3781 = zext i1 %3780 to i32
  %3782 = add i32 %3781, %3779
  %3783 = uitofp i32 %3782 to float
  %3784 = fptoui float %3783 to i32
  %3785 = shl i32 %3784, 8
  %3786 = and i32 %3785, 65280
  %3787 = or i32 %3786, %3465
  %3788 = fmul fast float %3644, %3447
  %3789 = fmul fast float %3645, %3447
  %3790 = fmul fast float %3646, %3447
  %3791 = fadd fast float %3788, %3341
  %3792 = fadd fast float %3789, %3342
  %3793 = fadd fast float %3790, %3343
  %3794 = fmul fast float %3746, 0x3FE3C6EF40000000
  %3795 = call float @dx.op.unary.f32(i32 22, float %3794)  ; Frc(value)
  %3796 = fadd fast float %3795, 0x3FE5555560000000
  %3797 = fadd fast float %3795, 0x3FD5555560000000
  %3798 = fsub fast float -0.000000e+00, %3795
  %3799 = fsub fast float -0.000000e+00, %3796
  %3800 = fsub fast float -0.000000e+00, %3797
  %3801 = fcmp fast oge float %3795, %3798
  %3802 = fcmp fast oge float %3796, %3799
  %3803 = fcmp fast oge float %3797, %3800
  %3804 = call float @dx.op.unary.f32(i32 6, float %3795)  ; FAbs(value)
  %3805 = call float @dx.op.unary.f32(i32 6, float %3796)  ; FAbs(value)
  %3806 = call float @dx.op.unary.f32(i32 6, float %3797)  ; FAbs(value)
  %3807 = call float @dx.op.unary.f32(i32 22, float %3804)  ; Frc(value)
  %3808 = call float @dx.op.unary.f32(i32 22, float %3805)  ; Frc(value)
  %3809 = call float @dx.op.unary.f32(i32 22, float %3806)  ; Frc(value)
  %3810 = fsub fast float -0.000000e+00, %3807
  %3811 = fsub fast float -0.000000e+00, %3808
  %3812 = fsub fast float -0.000000e+00, %3809
  %3813 = select i1 %3801, float %3807, float %3810
  %3814 = select i1 %3802, float %3808, float %3811
  %3815 = select i1 %3803, float %3809, float %3812
  %3816 = fmul fast float %3813, 6.000000e+00
  %3817 = fmul fast float %3814, 6.000000e+00
  %3818 = fmul fast float %3815, 6.000000e+00
  %3819 = fadd fast float %3816, -3.000000e+00
  %3820 = fadd fast float %3817, -3.000000e+00
  %3821 = fadd fast float %3818, -3.000000e+00
  %3822 = call float @dx.op.unary.f32(i32 6, float %3819)  ; FAbs(value)
  %3823 = call float @dx.op.unary.f32(i32 6, float %3820)  ; FAbs(value)
  %3824 = call float @dx.op.unary.f32(i32 6, float %3821)  ; FAbs(value)
  %3825 = fadd fast float %3822, -1.000000e+00
  %3826 = fadd fast float %3823, -1.000000e+00
  %3827 = fadd fast float %3824, -1.000000e+00
  %3828 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3829 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3830 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3831 = fmul fast float %3828, %3447
  %3832 = fmul fast float %3829, %3447
  %3833 = fmul fast float %3830, %3447
  %3834 = fadd fast float %3831, %3337
  %3835 = fadd fast float %3832, %3338
  %3836 = fadd fast float %3833, %3339
  %3837 = icmp eq i32 %3397, 0
  %3838 = select i1 %3837, i32 1, i32 %3340
  %3839 = icmp eq i32 %3344, 0
  br i1 %3839, label %3468, label %3840

; <label>:3840                                    ; preds = %3709
  %3841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.f32 %3841, 0
  %3843 = bitcast float %3842 to i32
  %3844 = lshr i32 %3843, 8
  %3845 = and i32 %3844, 255
  %3846 = uitofp i32 %3845 to float
  %3847 = fptoui float %3846 to i32
  %3848 = icmp eq i32 %3847, 16
  %3849 = bitcast float %3764 to i32
  %3850 = select i1 %3848, i32 %3849, i32 %3333
  %3851 = icmp eq i32 %3847, 17
  %3852 = select i1 %3851, i32 1065353216, i32 %3850
  %3853 = icmp eq i32 %3847, 18
  %3854 = bitcast float %3766 to i32
  %3855 = select i1 %3853, i32 %3854, i32 %3852
  br label %3468

; <label>:3856                                    ; preds = %3468
  br label %3857

; <label>:3857                                    ; preds = %3856, %3291
  %3858 = phi i32 [ %3292, %3291 ], [ %3469, %3856 ]
  %3859 = phi i32 [ %3293, %3291 ], [ %3470, %3856 ]
  %3860 = phi float [ %3294, %3291 ], [ %3471, %3856 ]
  %3861 = phi float [ %3295, %3291 ], [ %3472, %3856 ]
  %3862 = phi float [ %3296, %3291 ], [ %3473, %3856 ]
  %3863 = phi float [ %3297, %3291 ], [ %3474, %3856 ]
  %3864 = phi float [ %3298, %3291 ], [ %3475, %3856 ]
  %3865 = phi float [ %3299, %3291 ], [ %3476, %3856 ]
  %3866 = phi i32 [ %3300, %3291 ], [ %3477, %3856 ]
  %3867 = phi float [ %3301, %3291 ], [ %3478, %3856 ]
  %3868 = phi float [ %3302, %3291 ], [ %3479, %3856 ]
  %3869 = phi float [ %3303, %3291 ], [ %3480, %3856 ]
  %3870 = phi i32 [ %3304, %3291 ], [ %3481, %3856 ]
  %3871 = phi float [ %3305, %3291 ], [ %3482, %3856 ]
  %3872 = add i32 %3306, 1
  %3873 = icmp ugt i32 %3872, %3288
  br i1 %3873, label %3874, label %3291, !llvm.loop !128

; <label>:3874                                    ; preds = %3857
  br label %3875

; <label>:3875                                    ; preds = %3874, %3239
  %3876 = phi i32 [ %1857, %3239 ], [ %3858, %3874 ]
  %3877 = phi i32 [ %3209, %3239 ], [ %3859, %3874 ]
  %3878 = phi float [ 0.000000e+00, %3239 ], [ %3860, %3874 ]
  %3879 = phi float [ 0.000000e+00, %3239 ], [ %3861, %3874 ]
  %3880 = phi float [ 0.000000e+00, %3239 ], [ %3862, %3874 ]
  %3881 = phi float [ 0.000000e+00, %3239 ], [ %3863, %3874 ]
  %3882 = phi float [ 0.000000e+00, %3239 ], [ %3864, %3874 ]
  %3883 = phi float [ 0.000000e+00, %3239 ], [ %3865, %3874 ]
  %3884 = phi i32 [ 0, %3239 ], [ %3866, %3874 ]
  %3885 = phi float [ 0.000000e+00, %3239 ], [ %3867, %3874 ]
  %3886 = phi float [ 0.000000e+00, %3239 ], [ %3868, %3874 ]
  %3887 = phi float [ 0.000000e+00, %3239 ], [ %3869, %3874 ]
  %3888 = call float @dx.op.dot3.f32(i32 55, float %3878, float %3879, float %3880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3889 = select i1 %2107, float %3888, float %3879
  %3890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3890, 0
  %3892 = bitcast float %3891 to i32
  %3893 = lshr i32 %3892, 8
  %3894 = and i32 %3893, 255
  %3895 = uitofp i32 %3894 to float
  %3896 = fptoui float %3895 to i32
  %3897 = icmp eq i32 %3896, 13
  br i1 %3897, label %3898, label %3918

; <label>:3898                                    ; preds = %3875
  %3899 = fadd fast float %3881, 1.000000e+00
  %3900 = fadd fast float %3882, 1.000000e+00
  %3901 = fadd fast float %3883, 1.000000e+00
  %3902 = fmul fast float %3899, 5.000000e-01
  %3903 = fmul fast float %3900, 5.000000e-01
  %3904 = fmul fast float %3901, 5.000000e-01
  %3905 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3906 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3907 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3908 = fmul fast float %3905, 1.023000e+03
  %3909 = fmul fast float %3906, 1.023000e+03
  %3910 = fmul fast float %3907, 1.023000e+03
  %3911 = fptoui float %3908 to i32
  %3912 = fptoui float %3909 to i32
  %3913 = fptoui float %3910 to i32
  %3914 = shl i32 %3912, 10
  %3915 = or i32 %3914, %3911
  %3916 = shl i32 %3913, 20
  %3917 = or i32 %3915, %3916
  br label %3918

; <label>:3918                                    ; preds = %3898, %3875
  %3919 = phi i32 [ %3917, %3898 ], [ %3877, %3875 ]
  %3920 = icmp eq i32 %3896, 14
  %3921 = select i1 %3920, i32 %3884, i32 %3919
  %3922 = icmp eq i32 %3896, 22
  br i1 %3922, label %3923, label %3943

; <label>:3923                                    ; preds = %3918
  %3924 = fadd fast float %3885, 1.000000e+00
  %3925 = fadd fast float %3886, 1.000000e+00
  %3926 = fadd fast float %3887, 1.000000e+00
  %3927 = fmul fast float %3924, 5.000000e-01
  %3928 = fmul fast float %3925, 5.000000e-01
  %3929 = fmul fast float %3926, 5.000000e-01
  %3930 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3931 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3932 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3933 = fmul fast float %3930, 1.023000e+03
  %3934 = fmul fast float %3931, 1.023000e+03
  %3935 = fmul fast float %3932, 1.023000e+03
  %3936 = fptoui float %3933 to i32
  %3937 = fptoui float %3934 to i32
  %3938 = fptoui float %3935 to i32
  %3939 = shl i32 %3937, 10
  %3940 = or i32 %3939, %3936
  %3941 = shl i32 %3938, 20
  %3942 = or i32 %3940, %3941
  br label %3943

; <label>:3943                                    ; preds = %3923, %3918
  %3944 = phi i32 [ %3942, %3923 ], [ %3921, %3918 ]
  %3945 = fmul fast float %3878, 0x3FD45F3060000000
  %3946 = select i1 %2107, float 0.000000e+00, float %3945
  %3947 = fmul fast float %3889, 0x3FD45F3060000000
  %3948 = fmul fast float %3880, 0x3FD45F3060000000
  %3949 = select i1 %2107, float 0.000000e+00, float %3948
  br label %3950

; <label>:3950                                    ; preds = %3943, %3208
  %3951 = phi i32 [ %3876, %3943 ], [ %1857, %3208 ]
  %3952 = phi i32 [ %3944, %3943 ], [ %3209, %3208 ]
  %3953 = phi float [ %3946, %3943 ], [ %3174, %3208 ]
  %3954 = phi float [ %3947, %3943 ], [ %3175, %3208 ]
  %3955 = phi float [ %3949, %3943 ], [ %3176, %3208 ]
  %3956 = phi i1 [ false, %3943 ], [ true, %3208 ]
  %3957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.i32 %3957, 0
  %3959 = and i32 %3958, 524288
  %3960 = icmp ne i32 %3959, 0
  %3961 = select i1 %3960, float 0.000000e+00, float 1.000000e+00
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3964 = bitcast float %3963 to i32
  %3965 = and i32 %3964, 255
  %3966 = uitofp i32 %3965 to float
  %3967 = fptoui float %3966 to i32
  %3968 = icmp eq i32 %3967, 38
  %3969 = select i1 %3968, i32 0, i32 %3952
  %3970 = lshr i32 %3964, 8
  %3971 = and i32 %3970, 255
  %3972 = uitofp i32 %3971 to float
  %3973 = fptoui float %3972 to i32
  %3974 = icmp eq i32 %3973, 24
  br i1 %3974, label %3975, label %3986

; <label>:3975                                    ; preds = %3950
  %3976 = fadd fast float %2139, 1.000000e+00
  %3977 = fmul fast float %3976, 5.000000e-01
  %3978 = select i1 %2141, float %3977, float 1.000000e+00
  %3979 = call float @dx.op.unary.f32(i32 7, float %3978)  ; Saturate(value)
  %3980 = fmul fast float %3979, 1.023000e+03
  %3981 = fptoui float %3980 to i32
  %3982 = shl i32 %3981, 10
  %3983 = or i32 %3982, %3981
  %3984 = shl i32 %3981, 20
  %3985 = or i32 %3983, %3984
  br label %3986

; <label>:3986                                    ; preds = %3975, %3950
  %3987 = phi i32 [ %3969, %3950 ], [ %3985, %3975 ]
  %3988 = xor i1 %3960, true
  %3989 = zext i1 %3988 to i32
  br i1 %3960, label %3990, label %4274

; <label>:3990                                    ; preds = %3986
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.CBufRet.f32 %3991, 1
  %3994 = extractvalue %dx.types.CBufRet.f32 %3991, 2
  %3995 = extractvalue %dx.types.CBufRet.f32 %3991, 3
  %3996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3996, 0
  %3998 = extractvalue %dx.types.CBufRet.f32 %3996, 1
  %3999 = extractvalue %dx.types.CBufRet.f32 %3996, 2
  %4000 = extractvalue %dx.types.CBufRet.f32 %3996, 3
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4003 = extractvalue %dx.types.CBufRet.f32 %4001, 1
  %4004 = extractvalue %dx.types.CBufRet.f32 %4001, 2
  %4005 = extractvalue %dx.types.CBufRet.f32 %4001, 3
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.CBufRet.f32 %4006, 1
  %4009 = extractvalue %dx.types.CBufRet.f32 %4006, 2
  %4010 = extractvalue %dx.types.CBufRet.f32 %4006, 3
  %4011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.f32 %4011, 0
  %4013 = extractvalue %dx.types.CBufRet.f32 %4011, 1
  %4014 = extractvalue %dx.types.CBufRet.f32 %4011, 2
  %4015 = extractvalue %dx.types.CBufRet.f32 %4011, 3
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.CBufRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.CBufRet.f32 %4016, 2
  %4020 = extractvalue %dx.types.CBufRet.f32 %4016, 3
  %4021 = call float @dx.op.dot3.f32(i32 55, float %4017, float %4018, float %4019, float %2114, float %2115, float %2116)  ; Dot3(ax,ay,az,bx,by,bz)
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 1
  %4024 = extractvalue %dx.types.CBufRet.f32 %4022, 0
  %4025 = select i1 %117, float %4024, float %4023
  %4026 = fmul fast float %4021, 8.000000e+00
  %4027 = fmul fast float %4026, %4025
  %4028 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4029 = fcmp fast ogt float %4028, 0.000000e+00
  br i1 %4029, label %4030, label %4248, !dx.controlflow.hints !129

; <label>:4030                                    ; preds = %3990
  %4031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4032 = extractvalue %dx.types.CBufRet.f32 %4031, 1
  %4033 = fmul fast float %1357, 2.000000e+00
  %4034 = fmul fast float %1358, 2.000000e+00
  %4035 = fadd fast float %4033, -1.000000e+00
  %4036 = fadd fast float %4034, -1.000000e+00
  %4037 = fmul fast float %4032, %4035
  %4038 = fmul fast float %4032, %4036
  %4039 = fadd fast float %4037, %100
  %4040 = fadd fast float %4038, %101
  %4041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4042 = extractvalue %dx.types.CBufRet.f32 %4041, 2
  %4043 = extractvalue %dx.types.CBufRet.f32 %4041, 3
  %4044 = fmul fast float %4039, %4042
  %4045 = fmul fast float %4040, %4043
  %4046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %64, float %4044, float %4045, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4047 = extractvalue %dx.types.ResRet.f32 %4046, 0
  %4048 = fcmp fast une float %4047, 0xFFF0000000000000
  %4049 = fcmp fast une float %4047, 0x7FF0000000000000
  %4050 = and i1 %4048, %4049
  %4051 = call float @dx.op.unary.f32(i32 6, float %4047)  ; FAbs(value)
  %4052 = fsub fast float 1.000000e+00, %4051
  %4053 = select i1 %4050, float 1.000000e+00, float 0.000000e+00
  %4054 = fmul fast float %4053, %4028
  %4055 = fcmp fast ogt float %4054, 0.000000e+00
  br i1 %4055, label %4056, label %4248, !dx.controlflow.hints !130

; <label>:4056                                    ; preds = %4030
  %4057 = fmul fast float %3992, %155
  %4058 = call float @dx.op.tertiary.f32(i32 46, float %156, float %3993, float %4057)  ; FMad(a,b,c)
  %4059 = call float @dx.op.tertiary.f32(i32 46, float %157, float %3994, float %4058)  ; FMad(a,b,c)
  %4060 = fadd fast float %4059, %3995
  %4061 = fmul fast float %3997, %155
  %4062 = call float @dx.op.tertiary.f32(i32 46, float %156, float %3998, float %4061)  ; FMad(a,b,c)
  %4063 = call float @dx.op.tertiary.f32(i32 46, float %157, float %3999, float %4062)  ; FMad(a,b,c)
  %4064 = fadd fast float %4063, %4000
  %4065 = fmul fast float %4002, %155
  %4066 = call float @dx.op.tertiary.f32(i32 46, float %156, float %4003, float %4065)  ; FMad(a,b,c)
  %4067 = call float @dx.op.tertiary.f32(i32 46, float %157, float %4004, float %4066)  ; FMad(a,b,c)
  %4068 = fadd fast float %4067, %4005
  %4069 = fdiv fast float 1.000000e+00, %4068
  %4070 = fmul fast float %4069, %4060
  %4071 = fmul fast float %4069, %4064
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4075 = fmul fast float %4070, %4073
  %4076 = fmul fast float %4071, %4074
  %4077 = extractvalue %dx.types.CBufRet.f32 %4072, 2
  %4078 = extractvalue %dx.types.CBufRet.f32 %4072, 3
  %4079 = fadd fast float %4075, %4077
  %4080 = fadd fast float %4076, %4078
  %4081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4081, 3
  %4083 = fmul fast float %4082, %2114
  %4084 = fmul fast float %4082, %2115
  %4085 = fmul fast float %4082, %2116
  %4086 = fadd fast float %4083, %155
  %4087 = fadd fast float %4084, %156
  %4088 = fadd fast float %4085, %157
  %4089 = fmul fast float %4086, %3992
  %4090 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %3993, float %4089)  ; FMad(a,b,c)
  %4091 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %3994, float %4090)  ; FMad(a,b,c)
  %4092 = fadd fast float %4091, %3995
  %4093 = fmul fast float %4086, %3997
  %4094 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %3998, float %4093)  ; FMad(a,b,c)
  %4095 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %3999, float %4094)  ; FMad(a,b,c)
  %4096 = fadd fast float %4095, %4000
  %4097 = fmul fast float %4086, %4002
  %4098 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %4003, float %4097)  ; FMad(a,b,c)
  %4099 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %4004, float %4098)  ; FMad(a,b,c)
  %4100 = fadd fast float %4099, %4005
  %4101 = fdiv fast float 1.000000e+00, %4100
  %4102 = fmul fast float %4101, %4092
  %4103 = fmul fast float %4101, %4096
  %4104 = fmul fast float %4079, 2.000000e+00
  %4105 = fadd fast float %4104, -1.000000e+00
  %4106 = call float @dx.op.unary.f32(i32 6, float %4105)  ; FAbs(value)
  %4107 = fmul fast float %4106, 5.000000e+00
  %4108 = fadd fast float %4107, -4.000000e+00
  %4109 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4110 = fsub fast float %4070, %4102
  %4111 = fmul fast float %4073, %4110
  %4112 = fmul fast float %4111, %4109
  %4113 = fsub fast float %4102, %4070
  %4114 = fmul fast float %4073, %4113
  %4115 = fadd fast float %4114, %4112
  %4116 = fsub fast float %4103, %4071
  %4117 = fmul fast float %4074, %4116
  %4118 = fmul fast float %4115, %4052
  %4119 = fmul fast float %4117, %4052
  %4120 = fadd fast float %4118, %4079
  %4121 = fadd fast float %4119, %4080
  %4122 = fsub fast float %4101, %4069
  %4123 = fmul fast float %4122, %4052
  %4124 = fadd fast float %4123, %4069
  %4125 = fdiv fast float 1.000000e+00, %4124
  %4126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %63, float %4120, float %4121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4127 = extractvalue %dx.types.ResRet.f32 %4126, 0
  %4128 = extractvalue %dx.types.ResRet.f32 %4126, 1
  %4129 = extractvalue %dx.types.ResRet.f32 %4126, 2
  %4130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.f32 %4130, 1
  %4132 = fmul fast float %4131, %4127
  %4133 = fmul fast float %4131, %4128
  %4134 = fmul fast float %4131, %4129
  %4135 = call float @dx.op.binary.f32(i32 35, float %4125, float 0x3810000000000000)  ; FMax(a,b)
  %4136 = fdiv fast float %4068, %4135
  %4137 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.CBufRet.f32 %4138, 1
  %4141 = extractvalue %dx.types.CBufRet.f32 %4138, 2
  %4142 = fadd fast float %4139, %155
  %4143 = fadd fast float %4140, %156
  %4144 = fadd fast float %4141, %157
  %4145 = fmul fast float %4142, %4007
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %4143, float %4008, float %4145)  ; FMad(a,b,c)
  %4147 = call float @dx.op.tertiary.f32(i32 46, float %4144, float %4009, float %4146)  ; FMad(a,b,c)
  %4148 = fadd fast float %4147, %4010
  %4149 = fmul fast float %4142, %4012
  %4150 = call float @dx.op.tertiary.f32(i32 46, float %4143, float %4013, float %4149)  ; FMad(a,b,c)
  %4151 = call float @dx.op.tertiary.f32(i32 46, float %4144, float %4014, float %4150)  ; FMad(a,b,c)
  %4152 = fadd fast float %4151, %4015
  %4153 = fmul fast float %4142, %4017
  %4154 = call float @dx.op.tertiary.f32(i32 46, float %4143, float %4018, float %4153)  ; FMad(a,b,c)
  %4155 = call float @dx.op.tertiary.f32(i32 46, float %4144, float %4019, float %4154)  ; FMad(a,b,c)
  %4156 = fadd fast float %4155, %4020
  %4157 = fdiv fast float 1.000000e+00, %4156
  %4158 = fmul fast float %4157, %4148
  %4159 = fmul fast float %4157, %4152
  %4160 = fmul fast float %4158, %4073
  %4161 = fmul fast float %4159, %4074
  %4162 = fadd fast float %4160, %4077
  %4163 = fadd fast float %4161, %4078
  %4164 = fadd fast float %4083, %4142
  %4165 = fadd fast float %4084, %4143
  %4166 = fadd fast float %4085, %4144
  %4167 = fmul fast float %4164, %4007
  %4168 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4008, float %4167)  ; FMad(a,b,c)
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4166, float %4009, float %4168)  ; FMad(a,b,c)
  %4170 = fadd fast float %4169, %4010
  %4171 = fmul fast float %4164, %4012
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4013, float %4171)  ; FMad(a,b,c)
  %4173 = call float @dx.op.tertiary.f32(i32 46, float %4166, float %4014, float %4172)  ; FMad(a,b,c)
  %4174 = fadd fast float %4173, %4015
  %4175 = fmul fast float %4164, %4017
  %4176 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4018, float %4175)  ; FMad(a,b,c)
  %4177 = call float @dx.op.tertiary.f32(i32 46, float %4166, float %4019, float %4176)  ; FMad(a,b,c)
  %4178 = fadd fast float %4177, %4020
  %4179 = fdiv fast float 1.000000e+00, %4178
  %4180 = fmul fast float %4179, %4170
  %4181 = fmul fast float %4179, %4174
  %4182 = fmul fast float %4162, 2.000000e+00
  %4183 = fadd fast float %4182, -1.000000e+00
  %4184 = call float @dx.op.unary.f32(i32 6, float %4183)  ; FAbs(value)
  %4185 = fmul fast float %4184, 5.000000e+00
  %4186 = fadd fast float %4185, -4.000000e+00
  %4187 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4188 = fsub fast float %4158, %4180
  %4189 = fmul fast float %4073, %4188
  %4190 = fmul fast float %4189, %4187
  %4191 = fsub fast float %4180, %4158
  %4192 = fmul fast float %4073, %4191
  %4193 = fadd fast float %4192, %4190
  %4194 = fsub fast float %4181, %4159
  %4195 = fmul fast float %4074, %4194
  %4196 = fmul fast float %4193, %4052
  %4197 = fmul fast float %4195, %4052
  %4198 = fadd fast float %4196, %4162
  %4199 = fadd fast float %4197, %4163
  %4200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %63, float %4198, float %4199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = extractvalue %dx.types.CBufRet.f32 %4130, 2
  %4205 = fmul fast float %4204, %4201
  %4206 = fmul fast float %4204, %4202
  %4207 = fmul fast float %4204, %4203
  %4208 = and i32 %1962, 255
  %4209 = uitofp i32 %4208 to float
  %4210 = fmul fast float %4209, 0x3F70101020000000
  %4211 = fmul fast float %4210, %4137
  %4212 = extractvalue %dx.types.CBufRet.f32 %4022, 2
  %4213 = fadd fast float %4212, %4211
  %4214 = call float @dx.op.unary.f32(i32 7, float %4213)  ; Saturate(value)
  %4215 = call float @dx.op.binary.f32(i32 35, float %4132, float 0x3810000000000000)  ; FMax(a,b)
  %4216 = call float @dx.op.binary.f32(i32 35, float %4133, float 0x3810000000000000)  ; FMax(a,b)
  %4217 = call float @dx.op.binary.f32(i32 35, float %4134, float 0x3810000000000000)  ; FMax(a,b)
  %4218 = call float @dx.op.unary.f32(i32 23, float %4215)  ; Log(value)
  %4219 = call float @dx.op.unary.f32(i32 23, float %4216)  ; Log(value)
  %4220 = call float @dx.op.unary.f32(i32 23, float %4217)  ; Log(value)
  %4221 = call float @dx.op.binary.f32(i32 35, float %4205, float 0x3810000000000000)  ; FMax(a,b)
  %4222 = call float @dx.op.binary.f32(i32 35, float %4206, float 0x3810000000000000)  ; FMax(a,b)
  %4223 = call float @dx.op.binary.f32(i32 35, float %4207, float 0x3810000000000000)  ; FMax(a,b)
  %4224 = call float @dx.op.unary.f32(i32 23, float %4221)  ; Log(value)
  %4225 = call float @dx.op.unary.f32(i32 23, float %4222)  ; Log(value)
  %4226 = call float @dx.op.unary.f32(i32 23, float %4223)  ; Log(value)
  %4227 = fsub fast float %4218, %4224
  %4228 = fsub fast float %4219, %4225
  %4229 = fsub fast float %4220, %4226
  %4230 = fmul fast float %4227, %4214
  %4231 = fmul fast float %4228, %4214
  %4232 = fmul fast float %4229, %4214
  %4233 = fadd fast float %4230, %4224
  %4234 = fadd fast float %4231, %4225
  %4235 = fadd fast float %4232, %4226
  %4236 = call float @dx.op.unary.f32(i32 21, float %4233)  ; Exp(value)
  %4237 = call float @dx.op.unary.f32(i32 21, float %4234)  ; Exp(value)
  %4238 = call float @dx.op.unary.f32(i32 21, float %4235)  ; Exp(value)
  %4239 = select i1 %2107, float 0.000000e+00, float %4237
  %4240 = select i1 %2107, float 0.000000e+00, float %4238
  %4241 = fmul fast float %4199, 2.000000e+00
  %4242 = fadd fast float %4241, -1.000000e+00
  %4243 = fmul fast float %4242, %4242
  %4244 = fsub fast float 1.000000e+00, %4243
  %4245 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4246 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4247 = fmul fast float %4246, %4054
  br label %4248

; <label>:4248                                    ; preds = %4056, %4030, %3990
  %4249 = phi float [ %4236, %4056 ], [ 0.000000e+00, %4030 ], [ 0.000000e+00, %3990 ]
  %4250 = phi float [ %4239, %4056 ], [ 0.000000e+00, %4030 ], [ 0.000000e+00, %3990 ]
  %4251 = phi float [ %4240, %4056 ], [ 0.000000e+00, %4030 ], [ 0.000000e+00, %3990 ]
  %4252 = phi float [ %4247, %4056 ], [ 0.000000e+00, %4030 ], [ 0.000000e+00, %3990 ]
  %4253 = phi float [ %4052, %4056 ], [ %4052, %4030 ], [ 0.000000e+00, %3990 ]
  %4254 = phi float [ %4247, %4056 ], [ %4054, %4030 ], [ 0.000000e+00, %3990 ]
  %4255 = icmp eq i32 %3973, 25
  br i1 %4255, label %4256, label %4259

; <label>:4256                                    ; preds = %4248
  %4257 = call float @dx.op.unary.f32(i32 6, float %4253)  ; FAbs(value)
  %4258 = bitcast float %4257 to i32
  br label %4259

; <label>:4259                                    ; preds = %4256, %4248
  %4260 = phi i32 [ %4258, %4256 ], [ %3987, %4248 ]
  %4261 = icmp eq i32 %3973, 26
  %4262 = bitcast float %4254 to i32
  %4263 = select i1 %4261, i32 %4262, i32 %4260
  %4264 = icmp eq i32 %3973, 27
  %4265 = select i1 %4264, i32 0, i32 %4263
  %4266 = fcmp fast olt float %4252, 1.000000e+00
  %4267 = or i1 %4266, %3988
  %4268 = zext i1 %4267 to i32
  %4269 = fmul fast float %4252, %3961
  %4270 = fsub fast float %4252, %4269
  %4271 = fmul fast float %4270, %4249
  %4272 = fmul fast float %4270, %4250
  %4273 = fmul fast float %4270, %4251
  br label %4274

; <label>:4274                                    ; preds = %4259, %3986
  %4275 = phi i32 [ %3987, %3986 ], [ %4265, %4259 ]
  %4276 = phi float [ 0.000000e+00, %3986 ], [ %4270, %4259 ]
  %4277 = phi float [ 0.000000e+00, %3986 ], [ %4271, %4259 ]
  %4278 = phi float [ 0.000000e+00, %3986 ], [ %4272, %4259 ]
  %4279 = phi float [ 0.000000e+00, %3986 ], [ %4273, %4259 ]
  %4280 = phi i32 [ %3989, %3986 ], [ %4268, %4259 ]
  %4281 = icmp ne i32 %4280, 0
  %4282 = add i32 %3973, -13
  %4283 = icmp ult i32 %4282, 2
  %4284 = or i1 %4283, %4281
  %4285 = icmp eq i32 %3973, 22
  %4286 = or i1 %4284, %4285
  br i1 %4286, label %4287, label %5021

; <label>:4287                                    ; preds = %4274
  %4288 = select i1 %3956, float %3136, float 1.000000e+00
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 2
  %4291 = extractvalue %dx.types.CBufRet.f32 %4289, 3
  %4292 = fmul fast float %4290, %100
  %4293 = fmul fast float %4291, %101
  %4294 = fptoui float %4292 to i32
  %4295 = fptoui float %4293 to i32
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 0
  %4298 = extractvalue %dx.types.CBufRet.f32 %4296, 2
  %4299 = extractvalue %dx.types.CBufRet.f32 %4296, 3
  %4300 = fadd fast float %89, -4.000000e+00
  %4301 = call float @dx.op.binary.f32(i32 35, float %4300, float 0.000000e+00)  ; FMax(a,b)
  %4302 = fadd fast float %4301, %4297
  %4303 = fmul fast float %4302, %4298
  %4304 = call float @dx.op.unary.f32(i32 23, float %4303)  ; Log(value)
  %4305 = fmul fast float %4304, %4299
  %4306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4306, 2
  %4308 = fmul fast float %4305, %4307
  %4309 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.i32 %4310, 1
  %4312 = add i32 %4311, -1
  %4313 = uitofp i32 %4311 to float
  %4314 = fmul fast float %4313, %4309
  %4315 = fptoui float %4314 to i32
  %4316 = call i32 @dx.op.binary.i32(i32 40, i32 %4315, i32 %4312)  ; UMin(a,b)
  %4317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.i32 %4317, 2
  %4319 = extractvalue %dx.types.CBufRet.i32 %4317, 3
  %4320 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4295, i32 %4318, i32 %4294)  ; UMad(a,b,c)
  %4321 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4316, i32 %4319, i32 %4320)  ; UMad(a,b,c)
  %4322 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %4323 = fptoui float %4322 to i32
  %4324 = lshr i32 %4323, 5
  %4325 = call i32 @dx.op.binary.i32(i32 40, i32 %4324, i32 8191)  ; UMin(a,b)
  %4326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.i32 %4326, 2
  %4328 = add nsw i32 %4327, -1
  %4329 = call i32 @dx.op.binary.i32(i32 37, i32 %4328, i32 0)  ; IMax(a,b)
  %4330 = shl i32 %4325, 2
  %4331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4330, i32 undef)  ; BufferLoad(srv,index,wot)
  %4332 = extractvalue %dx.types.ResRet.i32 %4331, 0
  %4333 = lshr i32 %4332, 16
  %4334 = and i32 %4332, 65535
  %4335 = lshr i32 %4332, 21
  %4336 = lshr i32 %4334, 5
  %4337 = call i32 @dx.op.binary.i32(i32 40, i32 %4336, i32 %4329)  ; UMin(a,b)
  %4338 = icmp ugt i32 %4335, %4337
  br i1 %4338, label %4933, label %4339

; <label>:4339                                    ; preds = %4287
  br label %4340

; <label>:4340                                    ; preds = %4915, %4339
  %4341 = phi i32 [ %4916, %4915 ], [ %3951, %4339 ]
  %4342 = phi i32 [ %4917, %4915 ], [ %4275, %4339 ]
  %4343 = phi float [ %4918, %4915 ], [ 0.000000e+00, %4339 ]
  %4344 = phi float [ %4919, %4915 ], [ 0.000000e+00, %4339 ]
  %4345 = phi float [ %4920, %4915 ], [ 0.000000e+00, %4339 ]
  %4346 = phi float [ %4921, %4915 ], [ 0.000000e+00, %4339 ]
  %4347 = phi float [ %4922, %4915 ], [ 0.000000e+00, %4339 ]
  %4348 = phi float [ %4923, %4915 ], [ 0.000000e+00, %4339 ]
  %4349 = phi i32 [ %4924, %4915 ], [ 0, %4339 ]
  %4350 = phi float [ %4925, %4915 ], [ 0.000000e+00, %4339 ]
  %4351 = phi float [ %4926, %4915 ], [ 0.000000e+00, %4339 ]
  %4352 = phi float [ %4927, %4915 ], [ 0.000000e+00, %4339 ]
  %4353 = phi i32 [ %4928, %4915 ], [ 1, %4339 ]
  %4354 = phi float [ %4929, %4915 ], [ 1.000000e+00, %4339 ]
  %4355 = phi i32 [ %4930, %4915 ], [ %4335, %4339 ]
  %4356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.i32 %4356, 2
  %4358 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4321, i32 %4357, i32 %4355)  ; UMad(a,b,c)
  %4359 = shl i32 %4358, 2
  %4360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4359, i32 undef)  ; BufferLoad(srv,index,wot)
  %4361 = extractvalue %dx.types.ResRet.i32 %4360, 0
  %4362 = shl i32 %4355, 5
  %4363 = sub nsw i32 %4333, %4362
  %4364 = call i32 @dx.op.binary.i32(i32 37, i32 %4363, i32 0)  ; IMax(a,b)
  %4365 = call i32 @dx.op.binary.i32(i32 38, i32 %4364, i32 31)  ; IMin(a,b)
  %4366 = sub nsw i32 1, %4333
  %4367 = add nsw i32 %4366, %4334
  %4368 = call i32 @dx.op.binary.i32(i32 37, i32 %4367, i32 0)  ; IMax(a,b)
  %4369 = call i32 @dx.op.binary.i32(i32 38, i32 %4368, i32 32)  ; IMin(a,b)
  %4370 = and i32 %4369, 31
  %4371 = shl i32 -1, %4370
  %4372 = xor i32 %4371, -1
  %4373 = and i32 %4365, 31
  %4374 = shl i32 %4372, %4373
  %4375 = icmp eq i32 %4369, 32
  %4376 = select i1 %4375, i32 -1, i32 %4374
  %4377 = and i32 %4376, %4361
  %4378 = icmp eq i32 %4377, 0
  br i1 %4378, label %4915, label %4379

; <label>:4379                                    ; preds = %4340
  br label %4380

; <label>:4380                                    ; preds = %4517, %4379
  %4381 = phi i32 [ %4518, %4517 ], [ %4341, %4379 ]
  %4382 = phi i32 [ %4519, %4517 ], [ %4342, %4379 ]
  %4383 = phi float [ %4520, %4517 ], [ %4343, %4379 ]
  %4384 = phi float [ %4521, %4517 ], [ %4344, %4379 ]
  %4385 = phi float [ %4522, %4517 ], [ %4345, %4379 ]
  %4386 = phi float [ %4523, %4517 ], [ %4346, %4379 ]
  %4387 = phi float [ %4524, %4517 ], [ %4347, %4379 ]
  %4388 = phi float [ %4525, %4517 ], [ %4348, %4379 ]
  %4389 = phi i32 [ %4526, %4517 ], [ %4349, %4379 ]
  %4390 = phi float [ %4527, %4517 ], [ %4350, %4379 ]
  %4391 = phi float [ %4528, %4517 ], [ %4351, %4379 ]
  %4392 = phi float [ %4529, %4517 ], [ %4352, %4379 ]
  %4393 = phi i32 [ %4530, %4517 ], [ %4353, %4379 ]
  %4394 = phi float [ %4531, %4517 ], [ %4354, %4379 ]
  %4395 = phi i32 [ %4400, %4517 ], [ %4377, %4379 ]
  %4396 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4395)  ; FirstbitLo(value)
  %4397 = add i32 %4396, %4362
  %4398 = and i32 %4396, 31
  %4399 = shl i32 1, %4398
  %4400 = xor i32 %4399, %4395
  %4401 = mul i32 %4397, 72
  %4402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4401, i32 undef)  ; BufferLoad(srv,index,wot)
  %4403 = extractvalue %dx.types.ResRet.f32 %4402, 0
  %4404 = extractvalue %dx.types.ResRet.f32 %4402, 1
  %4405 = extractvalue %dx.types.ResRet.f32 %4402, 2
  %4406 = add i32 %4401, 12
  %4407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4408 = extractvalue %dx.types.ResRet.i32 %4407, 0
  %4409 = add i32 %4401, 16
  %4410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4409, i32 undef)  ; BufferLoad(srv,index,wot)
  %4411 = extractvalue %dx.types.ResRet.f32 %4410, 0
  %4412 = extractvalue %dx.types.ResRet.f32 %4410, 1
  %4413 = extractvalue %dx.types.ResRet.f32 %4410, 2
  %4414 = add i32 %4401, 28
  %4415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4414, i32 undef)  ; BufferLoad(srv,index,wot)
  %4416 = extractvalue %dx.types.ResRet.f32 %4415, 0
  %4417 = add i32 %4401, 32
  %4418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = extractvalue %dx.types.ResRet.f32 %4418, 1
  %4421 = extractvalue %dx.types.ResRet.f32 %4418, 2
  %4422 = extractvalue %dx.types.ResRet.f32 %4418, 3
  %4423 = add i32 %4401, 48
  %4424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4423, i32 undef)  ; BufferLoad(srv,index,wot)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.ResRet.f32 %4424, 1
  %4427 = add i32 %4401, 56
  %4428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 0
  %4430 = extractvalue %dx.types.ResRet.f32 %4428, 1
  %4431 = add i32 %4401, 64
  %4432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.ResRet.f32 %4432, 1
  %4435 = mul i32 %4397, 60
  %4436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4435, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = extractvalue %dx.types.ResRet.f32 %4436, 1
  %4439 = extractvalue %dx.types.ResRet.f32 %4436, 2
  %4440 = add i32 %4435, 12
  %4441 = add i32 %4435, 48
  %4442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4441, i32 undef)  ; BufferLoad(srv,index,wot)
  %4443 = extractvalue %dx.types.ResRet.f32 %4442, 0
  %4444 = extractvalue %dx.types.ResRet.f32 %4442, 1
  %4445 = extractvalue %dx.types.ResRet.f32 %4442, 2
  %4446 = and i32 %4408, 32767
  %4447 = bitcast float %4403 to i32
  %4448 = bitcast float %4404 to i32
  %4449 = and i32 %4408, 32768
  %4450 = icmp ne i32 %4449, 0
  %4451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4452 = extractvalue %dx.types.CBufRet.f32 %4451, 3
  %4453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4454 = extractvalue %dx.types.CBufRet.f32 %4453, 0
  %4455 = extractvalue %dx.types.CBufRet.f32 %4453, 1
  %4456 = extractvalue %dx.types.CBufRet.f32 %4453, 2
  %4457 = fsub fast float %4437, %4454
  %4458 = fsub fast float %4438, %4455
  %4459 = fsub fast float %4439, %4456
  %4460 = fsub fast float %155, %4457
  %4461 = fsub fast float %156, %4458
  %4462 = fsub fast float %157, %4459
  %4463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4440, i32 undef)  ; BufferLoad(srv,index,wot)
  %4464 = extractvalue %dx.types.ResRet.f32 %4463, 0
  %4465 = extractvalue %dx.types.ResRet.f32 %4463, 1
  %4466 = extractvalue %dx.types.ResRet.f32 %4463, 2
  %4467 = call float @dx.op.dot3.f32(i32 55, float %4460, float %4461, float %4462, float %4464, float %4465, float %4466)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = add i32 %4435, 24
  %4469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4468, i32 undef)  ; BufferLoad(srv,index,wot)
  %4470 = extractvalue %dx.types.ResRet.f32 %4469, 0
  %4471 = extractvalue %dx.types.ResRet.f32 %4469, 1
  %4472 = extractvalue %dx.types.ResRet.f32 %4469, 2
  %4473 = call float @dx.op.dot3.f32(i32 55, float %4460, float %4461, float %4462, float %4470, float %4471, float %4472)  ; Dot3(ax,ay,az,bx,by,bz)
  %4474 = add i32 %4435, 36
  %4475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4474, i32 undef)  ; BufferLoad(srv,index,wot)
  %4476 = extractvalue %dx.types.ResRet.f32 %4475, 0
  %4477 = extractvalue %dx.types.ResRet.f32 %4475, 1
  %4478 = extractvalue %dx.types.ResRet.f32 %4475, 2
  %4479 = call float @dx.op.dot3.f32(i32 55, float %4460, float %4461, float %4462, float %4476, float %4477, float %4478)  ; Dot3(ax,ay,az,bx,by,bz)
  %4480 = call float @dx.op.unary.f32(i32 6, float %4467)  ; FAbs(value)
  %4481 = call float @dx.op.unary.f32(i32 6, float %4473)  ; FAbs(value)
  %4482 = call float @dx.op.unary.f32(i32 6, float %4479)  ; FAbs(value)
  %4483 = fsub fast float %4443, %4480
  %4484 = fsub fast float %4444, %4481
  %4485 = fsub fast float %4445, %4482
  %4486 = fmul fast float %4483, %4411
  %4487 = fmul fast float %4484, %4412
  %4488 = fmul fast float %4485, %4413
  %4489 = call float @dx.op.binary.f32(i32 36, float %4487, float %4488)  ; FMin(a,b)
  %4490 = call float @dx.op.binary.f32(i32 36, float %4486, float %4489)  ; FMin(a,b)
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = call float @dx.op.binary.f32(i32 36, float %4394, float %4491)  ; FMin(a,b)
  %4493 = uitofp i1 %4450 to float
  %4494 = select i1 %117, float 1.000000e+00, float 2.000000e+00
  %4495 = fsub fast float %4494, %4493
  %4496 = fmul fast float %4492, %4495
  %4497 = lshr i32 %4381, 8
  %4498 = and i32 %4497, 255
  %4499 = uitofp i32 %4498 to float
  %4500 = fptoui float %4499 to i32
  %4501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4502 = extractvalue %dx.types.CBufRet.f32 %4501, 1
  %4503 = bitcast float %4502 to i32
  %4504 = lshr i32 %4503, 24
  %4505 = uitofp i32 %4504 to float
  %4506 = fptoui float %4505 to i32
  %4507 = icmp ne i32 %4506, 1
  %4508 = zext i1 %4507 to i32
  %4509 = add i32 %4508, %4500
  %4510 = uitofp i32 %4509 to float
  %4511 = fptoui float %4510 to i32
  %4512 = shl i32 %4511, 8
  %4513 = and i32 %4512, 65280
  %4514 = and i32 %4381, -65281
  %4515 = or i32 %4513, %4514
  %4516 = fcmp fast ogt float %4496, 0.000000e+00
  br i1 %4516, label %4533, label %4517

; <label>:4517                                    ; preds = %4897, %4766, %4380
  %4518 = phi i32 [ %4844, %4766 ], [ %4515, %4380 ], [ %4844, %4897 ]
  %4519 = phi i32 [ %4382, %4766 ], [ %4382, %4380 ], [ %4913, %4897 ]
  %4520 = phi float [ %4830, %4766 ], [ %4383, %4380 ], [ %4830, %4897 ]
  %4521 = phi float [ %4831, %4766 ], [ %4384, %4380 ], [ %4831, %4897 ]
  %4522 = phi float [ %4832, %4766 ], [ %4385, %4380 ], [ %4832, %4897 ]
  %4523 = phi float [ %4891, %4766 ], [ %4386, %4380 ], [ %4891, %4897 ]
  %4524 = phi float [ %4892, %4766 ], [ %4387, %4380 ], [ %4892, %4897 ]
  %4525 = phi float [ %4893, %4766 ], [ %4388, %4380 ], [ %4893, %4897 ]
  %4526 = phi i32 [ %4895, %4766 ], [ %4389, %4380 ], [ %4895, %4897 ]
  %4527 = phi float [ %4848, %4766 ], [ %4390, %4380 ], [ %4848, %4897 ]
  %4528 = phi float [ %4849, %4766 ], [ %4391, %4380 ], [ %4849, %4897 ]
  %4529 = phi float [ %4850, %4766 ], [ %4392, %4380 ], [ %4850, %4897 ]
  %4530 = phi i32 [ 0, %4766 ], [ %4393, %4380 ], [ 0, %4897 ]
  %4531 = phi float [ %4833, %4766 ], [ %4394, %4380 ], [ %4833, %4897 ]
  %4532 = icmp eq i32 %4395, %4399
  br i1 %4532, label %4914, label %4380

; <label>:4533                                    ; preds = %4380
  %4534 = extractvalue %dx.types.CBufRet.f32 %4501, 0
  %4535 = bitcast float %4534 to i32
  %4536 = lshr i32 %4535, 8
  %4537 = and i32 %4536, 255
  %4538 = uitofp i32 %4537 to float
  %4539 = fptoui float %4538 to i32
  %4540 = and i32 %4539, 2
  %4541 = icmp eq i32 %4540, 0
  br i1 %4541, label %4548, label %4542

; <label>:4542                                    ; preds = %4533
  %4543 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %4544 = call float @dx.op.unary.f32(i32 25, float %4543)  ; Rsqrt(value)
  %4545 = fmul fast float %4544, %155
  %4546 = fmul fast float %4544, %156
  %4547 = fmul fast float %4544, %157
  br label %4548

; <label>:4548                                    ; preds = %4542, %4533
  %4549 = phi float [ %4545, %4542 ], [ %2114, %4533 ]
  %4550 = phi float [ %4546, %4542 ], [ %2115, %4533 ]
  %4551 = phi float [ %4547, %4542 ], [ %2116, %4533 ]
  %4552 = icmp ne i32 %4447, -1
  %4553 = fcmp oeq float %4452, 0.000000e+00
  %4554 = and i1 %4553, %4552
  br i1 %4554, label %4555, label %4679

; <label>:4555                                    ; preds = %4548
  %4556 = fsub fast float -0.000000e+00, %4464
  %4557 = fsub fast float -0.000000e+00, %4465
  %4558 = fsub fast float -0.000000e+00, %4466
  %4559 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4550, float %4551, float %4556, float %4557, float %4558)  ; Dot3(ax,ay,az,bx,by,bz)
  %4560 = fsub fast float -0.000000e+00, %4559
  %4561 = call float @dx.op.dot3.f32(i32 55, float %4460, float %4461, float %4462, float %4556, float %4557, float %4558)  ; Dot3(ax,ay,az,bx,by,bz)
  %4562 = fadd fast float %4561, %4426
  %4563 = fadd fast float %4425, %4561
  %4564 = fsub fast float -0.000000e+00, %4563
  %4565 = fcmp ogt float %4559, -0.000000e+00
  %4566 = select i1 %4565, float %4564, float %4562
  %4567 = call float @dx.op.unary.f32(i32 6, float %4560)  ; FAbs(value)
  %4568 = fdiv fast float 1.000000e+00, %4567
  %4569 = fmul fast float %4566, %4568
  %4570 = call float @dx.op.binary.f32(i32 35, float %4569, float 0.000000e+00)  ; FMax(a,b)
  %4571 = fsub fast float -0.000000e+00, %4470
  %4572 = fsub fast float -0.000000e+00, %4471
  %4573 = fsub fast float -0.000000e+00, %4472
  %4574 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4550, float %4551, float %4571, float %4572, float %4573)  ; Dot3(ax,ay,az,bx,by,bz)
  %4575 = fsub fast float -0.000000e+00, %4574
  %4576 = call float @dx.op.dot3.f32(i32 55, float %4460, float %4461, float %4462, float %4571, float %4572, float %4573)  ; Dot3(ax,ay,az,bx,by,bz)
  %4577 = fadd fast float %4576, %4430
  %4578 = fadd fast float %4429, %4576
  %4579 = fsub fast float -0.000000e+00, %4578
  %4580 = fcmp ogt float %4574, -0.000000e+00
  %4581 = select i1 %4580, float %4579, float %4577
  %4582 = call float @dx.op.unary.f32(i32 6, float %4575)  ; FAbs(value)
  %4583 = fdiv fast float 1.000000e+00, %4582
  %4584 = fmul fast float %4581, %4583
  %4585 = call float @dx.op.binary.f32(i32 35, float %4584, float 0.000000e+00)  ; FMax(a,b)
  %4586 = fsub fast float -0.000000e+00, %4476
  %4587 = fsub fast float -0.000000e+00, %4477
  %4588 = fsub fast float -0.000000e+00, %4478
  %4589 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4550, float %4551, float %4586, float %4587, float %4588)  ; Dot3(ax,ay,az,bx,by,bz)
  %4590 = fsub fast float -0.000000e+00, %4589
  %4591 = call float @dx.op.dot3.f32(i32 55, float %4460, float %4461, float %4462, float %4586, float %4587, float %4588)  ; Dot3(ax,ay,az,bx,by,bz)
  %4592 = fadd fast float %4591, %4434
  %4593 = fadd fast float %4433, %4591
  %4594 = fsub fast float -0.000000e+00, %4593
  %4595 = fcmp ogt float %4589, -0.000000e+00
  %4596 = select i1 %4595, float %4594, float %4592
  %4597 = call float @dx.op.unary.f32(i32 6, float %4590)  ; FAbs(value)
  %4598 = fdiv fast float 1.000000e+00, %4597
  %4599 = fmul fast float %4596, %4598
  %4600 = call float @dx.op.binary.f32(i32 35, float %4599, float 0.000000e+00)  ; FMax(a,b)
  %4601 = call float @dx.op.binary.f32(i32 36, float %4585, float %4600)  ; FMin(a,b)
  %4602 = call float @dx.op.binary.f32(i32 36, float %4570, float %4601)  ; FMin(a,b)
  %4603 = fmul fast float %4602, %4549
  %4604 = fmul fast float %4602, %4550
  %4605 = fmul fast float %4602, %4551
  %4606 = fadd fast float %4603, %155
  %4607 = fadd fast float %4604, %156
  %4608 = fadd fast float %4605, %157
  %4609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.CBufRet.f32 %4609, 1
  %4612 = extractvalue %dx.types.CBufRet.f32 %4609, 2
  %4613 = fadd fast float %4606, %4610
  %4614 = fadd fast float %4607, %4611
  %4615 = fadd fast float %4608, %4612
  %4616 = fcmp fast olt float %4570, %4585
  %4617 = fcmp fast olt float %4570, %4600
  %4618 = and i1 %4616, %4617
  br i1 %4618, label %4622, label %4619

; <label>:4619                                    ; preds = %4555
  %4620 = fcmp fast olt float %4585, %4600
  br i1 %4620, label %4621, label %4622

; <label>:4621                                    ; preds = %4619
  br label %4622

; <label>:4622                                    ; preds = %4621, %4619, %4555
  %4623 = phi float [ 0.000000e+00, %4621 ], [ 0.000000e+00, %4619 ], [ 1.000000e+00, %4555 ]
  %4624 = phi float [ 1.000000e+00, %4621 ], [ 0.000000e+00, %4619 ], [ 0.000000e+00, %4555 ]
  %4625 = phi float [ 0.000000e+00, %4621 ], [ 1.000000e+00, %4619 ], [ 0.000000e+00, %4555 ]
  %4626 = phi float [ %4470, %4621 ], [ %4476, %4619 ], [ %4464, %4555 ]
  %4627 = phi float [ %4471, %4621 ], [ %4477, %4619 ], [ %4465, %4555 ]
  %4628 = phi float [ %4472, %4621 ], [ %4478, %4619 ], [ %4466, %4555 ]
  %4629 = call float @dx.op.unary.f32(i32 6, float %4628)  ; FAbs(value)
  %4630 = fcmp fast olt float %4629, 0x3FE276C8C0000000
  %4631 = select i1 %4630, float 0.000000e+00, float 1.000000e+00
  %4632 = select i1 %4630, float 1.000000e+00, float 0.000000e+00
  %4633 = fmul fast float %4632, %4627
  %4634 = fmul fast float %4631, %4628
  %4635 = fsub fast float %4633, %4634
  %4636 = fmul fast float %4626, %4632
  %4637 = fsub fast float -0.000000e+00, %4636
  %4638 = fmul fast float %4631, %4626
  %4639 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4637, float %4638, float %4635, float %4637, float %4638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4640 = call float @dx.op.unary.f32(i32 25, float %4639)  ; Rsqrt(value)
  %4641 = fmul fast float %4635, %4640
  %4642 = fmul fast float %4640, %4637
  %4643 = fmul fast float %4638, %4640
  %4644 = fmul fast float %4643, %4627
  %4645 = fmul fast float %4642, %4628
  %4646 = fsub fast float %4644, %4645
  %4647 = fmul fast float %4641, %4628
  %4648 = fmul fast float %4643, %4626
  %4649 = fsub fast float %4647, %4648
  %4650 = fmul fast float %4642, %4626
  %4651 = fmul fast float %4641, %4627
  %4652 = fsub fast float %4650, %4651
  %4653 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4649, float %4652, float %4646, float %4649, float %4652)  ; Dot3(ax,ay,az,bx,by,bz)
  %4654 = call float @dx.op.unary.f32(i32 25, float %4653)  ; Rsqrt(value)
  %4655 = fmul fast float %4646, %4654
  %4656 = fmul fast float %4649, %4654
  %4657 = fmul fast float %4652, %4654
  %4658 = call float @dx.op.dot3.f32(i32 55, float %4613, float %4614, float %4615, float %4641, float %4642, float %4643)  ; Dot3(ax,ay,az,bx,by,bz)
  %4659 = call float @dx.op.dot3.f32(i32 55, float %4613, float %4614, float %4615, float %4655, float %4656, float %4657)  ; Dot3(ax,ay,az,bx,by,bz)
  %4660 = fmul fast float %4658, 0x3FA99999A0000000
  %4661 = fmul fast float %4659, 0x3FA99999A0000000
  %4662 = call float @dx.op.unary.f32(i32 22, float %4660)  ; Frc(value)
  %4663 = call float @dx.op.unary.f32(i32 22, float %4661)  ; Frc(value)
  %4664 = fadd fast float %4662, 0xBFB99999A0000000
  %4665 = fadd fast float %4663, 0xBFB99999A0000000
  %4666 = call float @dx.op.unary.f32(i32 6, float %4664)  ; FAbs(value)
  %4667 = call float @dx.op.unary.f32(i32 6, float %4665)  ; FAbs(value)
  %4668 = fmul fast float %4666, 1.000000e+01
  %4669 = fmul fast float %4667, 1.000000e+01
  %4670 = call float @dx.op.binary.f32(i32 36, float %4668, float %4669)  ; FMin(a,b)
  %4671 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4672 = fsub fast float 1.000000e+00, %4671
  %4673 = fmul fast float %4672, %4623
  %4674 = fmul fast float %4672, %4624
  %4675 = fmul fast float %4672, %4625
  %4676 = fsub fast float %4606, %4403
  %4677 = fsub fast float %4607, %4404
  %4678 = fsub fast float %4608, %4405
  br label %4686

; <label>:4679                                    ; preds = %4548
  %4680 = fmul fast float %4549, 8.096000e+03
  %4681 = fmul fast float %4550, 8.096000e+03
  %4682 = fmul fast float %4551, 8.096000e+03
  %4683 = fadd fast float %4680, %155
  %4684 = fadd fast float %4681, %156
  %4685 = fadd fast float %4682, %157
  br label %4686

; <label>:4686                                    ; preds = %4679, %4622
  %4687 = phi float [ %4549, %4679 ], [ %4676, %4622 ]
  %4688 = phi float [ %4550, %4679 ], [ %4677, %4622 ]
  %4689 = phi float [ %4551, %4679 ], [ %4678, %4622 ]
  %4690 = phi float [ %4683, %4679 ], [ %4606, %4622 ]
  %4691 = phi float [ %4684, %4679 ], [ %4607, %4622 ]
  %4692 = phi float [ %4685, %4679 ], [ %4608, %4622 ]
  %4693 = phi float [ 0.000000e+00, %4679 ], [ %4673, %4622 ]
  %4694 = phi float [ 0.000000e+00, %4679 ], [ %4674, %4622 ]
  %4695 = phi float [ 0.000000e+00, %4679 ], [ %4675, %4622 ]
  %4696 = fcmp fast olt float %4422, 1.000000e+00
  br i1 %4696, label %4697, label %4728, !dx.controlflow.hints !127

; <label>:4697                                    ; preds = %4686
  %4698 = fmul fast float %4689, %4420
  %4699 = fmul fast float %4688, %4421
  %4700 = fsub fast float %4698, %4699
  %4701 = fmul fast float %4687, %4421
  %4702 = fmul fast float %4689, %4419
  %4703 = fsub fast float %4701, %4702
  %4704 = fmul fast float %4688, %4419
  %4705 = fmul fast float %4687, %4420
  %4706 = fsub fast float %4704, %4705
  %4707 = fmul fast float %4700, 2.000000e+00
  %4708 = fmul fast float %4703, 2.000000e+00
  %4709 = fmul fast float %4706, 2.000000e+00
  %4710 = fmul fast float %4707, %4422
  %4711 = fmul fast float %4708, %4422
  %4712 = fmul fast float %4709, %4422
  %4713 = fmul fast float %4709, %4420
  %4714 = fmul fast float %4708, %4421
  %4715 = fmul fast float %4707, %4421
  %4716 = fmul fast float %4709, %4419
  %4717 = fmul fast float %4708, %4419
  %4718 = fmul fast float %4707, %4420
  %4719 = fadd fast float %4713, %4687
  %4720 = fadd fast float %4719, %4710
  %4721 = fsub fast float %4720, %4714
  %4722 = fsub fast float %4688, %4716
  %4723 = fadd fast float %4722, %4711
  %4724 = fadd fast float %4723, %4715
  %4725 = fadd fast float %4712, %4689
  %4726 = fsub fast float %4725, %4718
  %4727 = fadd fast float %4726, %4717
  br label %4728

; <label>:4728                                    ; preds = %4697, %4686
  %4729 = phi float [ %4721, %4697 ], [ %4687, %4686 ]
  %4730 = phi float [ %4724, %4697 ], [ %4688, %4686 ]
  %4731 = phi float [ %4727, %4697 ], [ %4689, %4686 ]
  br i1 %4554, label %4732, label %4763

; <label>:4732                                    ; preds = %4728
  %4733 = fmul fast float %2053, 0x400187C840000000
  %4734 = fadd fast float %4733, 0xC00EFC2120000000
  %4735 = fmul fast float %4734, %2053
  %4736 = fadd fast float %4735, 0x3FE5D16340000000
  %4737 = fmul fast float %4736, %2053
  %4738 = fadd fast float %4737, 1.000000e+00
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = fsub fast float %4690, %155
  %4741 = fsub fast float %4691, %156
  %4742 = fsub fast float %4692, %157
  %4743 = fsub fast float %4690, %4403
  %4744 = fsub fast float %4691, %4404
  %4745 = fsub fast float %4692, %4405
  %4746 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4741, float %4742, float %4740, float %4741, float %4742)  ; Dot3(ax,ay,az,bx,by,bz)
  %4747 = call float @dx.op.dot3.f32(i32 55, float %4743, float %4744, float %4745, float %4743, float %4744, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %4748 = fadd fast float %4747, 0x3EE4F8B580000000
  %4749 = fdiv fast float %4746, %4748
  %4750 = bitcast float %4749 to i32
  %4751 = ashr i32 %4750, 1
  %4752 = add nsw i32 %4751, 532487669
  %4753 = bitcast i32 %4752 to float
  %4754 = fmul fast float %4753, %4739
  %4755 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4756 = fmul fast float %4755, 0x4009981AE0000000
  %4757 = fsub fast float 0x40111BBD80000000, %4756
  %4758 = fmul fast float %4757, %4755
  %4759 = fadd fast float %4758, 0xC0009F6020000000
  %4760 = fmul fast float %4759, %4755
  %4761 = fadd fast float %4760, 1.000000e+00
  %4762 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  br label %4766

; <label>:4763                                    ; preds = %4728
  %4764 = icmp ne i32 %4448, -1
  %4765 = zext i1 %4764 to i32
  br label %4766

; <label>:4766                                    ; preds = %4763, %4732
  %4767 = phi float [ %2053, %4763 ], [ %4762, %4732 ]
  %4768 = phi i32 [ %4765, %4763 ], [ 0, %4732 ]
  %4769 = fmul float %4767, 5.000000e+00
  %4770 = fsub float 5.000000e+00, %4769
  %4771 = icmp ne i32 %4768, 0
  %4772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4773 = extractvalue %dx.types.CBufRet.f32 %4772, 3
  %4774 = fadd fast float %4773, %4770
  %4775 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4774)  ; FMax(a,b)
  %4776 = call float @dx.op.unary.f32(i32 6, float %4729)  ; FAbs(value)
  %4777 = call float @dx.op.unary.f32(i32 6, float %4730)  ; FAbs(value)
  %4778 = fadd fast float %4777, %4776
  %4779 = call float @dx.op.unary.f32(i32 6, float %4731)  ; FAbs(value)
  %4780 = fadd fast float %4778, %4779
  %4781 = fcmp fast oeq float %4780, 0.000000e+00
  %4782 = fdiv fast float 1.000000e+00, %4780
  %4783 = select i1 %4781, float 1.000000e+00, float %4782
  %4784 = fmul fast float %4783, %4729
  %4785 = fmul fast float %4783, %4730
  %4786 = call float @dx.op.unary.f32(i32 6, float %4785)  ; FAbs(value)
  %4787 = call float @dx.op.unary.f32(i32 6, float %4784)  ; FAbs(value)
  %4788 = fsub fast float 1.000000e+00, %4786
  %4789 = fsub fast float 1.000000e+00, %4787
  %4790 = fcmp fast oge float %4784, 0.000000e+00
  %4791 = fcmp fast oge float %4785, 0.000000e+00
  %4792 = select i1 %4790, float 1.000000e+00, float -1.000000e+00
  %4793 = select i1 %4791, float 1.000000e+00, float -1.000000e+00
  %4794 = fcmp fast ole float %4731, 0.000000e+00
  %4795 = fmul fast float %4792, %4788
  %4796 = fmul fast float %4793, %4789
  %4797 = select i1 %4794, float %4795, float %4784
  %4798 = select i1 %4794, float %4796, float %4785
  %4799 = fmul fast float %4797, 5.000000e-01
  %4800 = fmul fast float %4798, 5.000000e-01
  %4801 = fadd fast float %4799, 5.000000e-01
  %4802 = fadd fast float %4800, 5.000000e-01
  %4803 = uitofp i32 %4446 to float
  %4804 = call float @dx.op.binary.f32(i32 36, float %4775, float 3.000000e+00)  ; FMin(a,b)
  %4805 = fadd fast float %4804, 2.000000e+00
  %4806 = call float @dx.op.unary.f32(i32 21, float %4805)  ; Exp(value)
  %4807 = extractvalue %dx.types.CBufRet.f32 %4772, 1
  %4808 = fmul fast float %4807, %4806
  %4809 = fmul fast float %4808, 2.000000e+00
  %4810 = fsub fast float 1.000000e+00, %4809
  %4811 = fmul fast float %4801, %4810
  %4812 = fmul fast float %4802, %4810
  %4813 = fadd fast float %4811, %4808
  %4814 = fadd fast float %4812, %4808
  %4815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %4813, float %4814, float %4803, float undef, i32 0, i32 0, i32 undef, float %4775)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.ResRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.ResRet.f32 %4815, 2
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 3
  %4821 = fmul fast float %4820, %4416
  %4822 = call float @dx.op.binary.f32(i32 36, float %4288, float %4821)  ; FMin(a,b)
  %4823 = select i1 %4771, float %4822, float %4821
  %4824 = fmul fast float %4816, %4496
  %4825 = fmul fast float %4824, %4823
  %4826 = fmul fast float %4817, %4496
  %4827 = fmul fast float %4826, %4823
  %4828 = fmul fast float %4818, %4496
  %4829 = fmul fast float %4828, %4823
  %4830 = fadd fast float %4825, %4383
  %4831 = fadd fast float %4827, %4384
  %4832 = fadd fast float %4829, %4385
  %4833 = fsub fast float %4394, %4496
  %4834 = and i32 %4511, 255
  %4835 = uitofp i32 %4834 to float
  %4836 = fptoui float %4835 to i32
  %4837 = icmp eq i32 %4506, 1
  %4838 = zext i1 %4837 to i32
  %4839 = add i32 %4838, %4836
  %4840 = uitofp i32 %4839 to float
  %4841 = fptoui float %4840 to i32
  %4842 = shl i32 %4841, 8
  %4843 = and i32 %4842, 65280
  %4844 = or i32 %4843, %4514
  %4845 = fmul fast float %4693, %4496
  %4846 = fmul fast float %4694, %4496
  %4847 = fmul fast float %4695, %4496
  %4848 = fadd fast float %4845, %4390
  %4849 = fadd fast float %4846, %4391
  %4850 = fadd fast float %4847, %4392
  %4851 = fmul fast float %4803, 0x3FE3C6EF40000000
  %4852 = call float @dx.op.unary.f32(i32 22, float %4851)  ; Frc(value)
  %4853 = fadd fast float %4852, 0x3FE5555560000000
  %4854 = fadd fast float %4852, 0x3FD5555560000000
  %4855 = fsub fast float -0.000000e+00, %4852
  %4856 = fsub fast float -0.000000e+00, %4853
  %4857 = fsub fast float -0.000000e+00, %4854
  %4858 = fcmp fast oge float %4852, %4855
  %4859 = fcmp fast oge float %4853, %4856
  %4860 = fcmp fast oge float %4854, %4857
  %4861 = call float @dx.op.unary.f32(i32 6, float %4852)  ; FAbs(value)
  %4862 = call float @dx.op.unary.f32(i32 6, float %4853)  ; FAbs(value)
  %4863 = call float @dx.op.unary.f32(i32 6, float %4854)  ; FAbs(value)
  %4864 = call float @dx.op.unary.f32(i32 22, float %4861)  ; Frc(value)
  %4865 = call float @dx.op.unary.f32(i32 22, float %4862)  ; Frc(value)
  %4866 = call float @dx.op.unary.f32(i32 22, float %4863)  ; Frc(value)
  %4867 = fsub fast float -0.000000e+00, %4864
  %4868 = fsub fast float -0.000000e+00, %4865
  %4869 = fsub fast float -0.000000e+00, %4866
  %4870 = select i1 %4858, float %4864, float %4867
  %4871 = select i1 %4859, float %4865, float %4868
  %4872 = select i1 %4860, float %4866, float %4869
  %4873 = fmul fast float %4870, 6.000000e+00
  %4874 = fmul fast float %4871, 6.000000e+00
  %4875 = fmul fast float %4872, 6.000000e+00
  %4876 = fadd fast float %4873, -3.000000e+00
  %4877 = fadd fast float %4874, -3.000000e+00
  %4878 = fadd fast float %4875, -3.000000e+00
  %4879 = call float @dx.op.unary.f32(i32 6, float %4876)  ; FAbs(value)
  %4880 = call float @dx.op.unary.f32(i32 6, float %4877)  ; FAbs(value)
  %4881 = call float @dx.op.unary.f32(i32 6, float %4878)  ; FAbs(value)
  %4882 = fadd fast float %4879, -1.000000e+00
  %4883 = fadd fast float %4880, -1.000000e+00
  %4884 = fadd fast float %4881, -1.000000e+00
  %4885 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4886 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4887 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4888 = fmul fast float %4885, %4496
  %4889 = fmul fast float %4886, %4496
  %4890 = fmul fast float %4887, %4496
  %4891 = fadd fast float %4888, %4386
  %4892 = fadd fast float %4889, %4387
  %4893 = fadd fast float %4890, %4388
  %4894 = icmp eq i32 %4446, 0
  %4895 = select i1 %4894, i32 1, i32 %4389
  %4896 = icmp eq i32 %4393, 0
  br i1 %4896, label %4517, label %4897

; <label>:4897                                    ; preds = %4766
  %4898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4899 = extractvalue %dx.types.CBufRet.f32 %4898, 0
  %4900 = bitcast float %4899 to i32
  %4901 = lshr i32 %4900, 8
  %4902 = and i32 %4901, 255
  %4903 = uitofp i32 %4902 to float
  %4904 = fptoui float %4903 to i32
  %4905 = icmp eq i32 %4904, 16
  %4906 = bitcast float %4821 to i32
  %4907 = select i1 %4905, i32 %4906, i32 %4382
  %4908 = icmp eq i32 %4904, 17
  %4909 = bitcast float %4288 to i32
  %4910 = select i1 %4908, i32 %4909, i32 %4907
  %4911 = icmp eq i32 %4904, 18
  %4912 = bitcast float %4823 to i32
  %4913 = select i1 %4911, i32 %4912, i32 %4910
  br label %4517

; <label>:4914                                    ; preds = %4517
  br label %4915

; <label>:4915                                    ; preds = %4914, %4340
  %4916 = phi i32 [ %4341, %4340 ], [ %4518, %4914 ]
  %4917 = phi i32 [ %4342, %4340 ], [ %4519, %4914 ]
  %4918 = phi float [ %4343, %4340 ], [ %4520, %4914 ]
  %4919 = phi float [ %4344, %4340 ], [ %4521, %4914 ]
  %4920 = phi float [ %4345, %4340 ], [ %4522, %4914 ]
  %4921 = phi float [ %4346, %4340 ], [ %4523, %4914 ]
  %4922 = phi float [ %4347, %4340 ], [ %4524, %4914 ]
  %4923 = phi float [ %4348, %4340 ], [ %4525, %4914 ]
  %4924 = phi i32 [ %4349, %4340 ], [ %4526, %4914 ]
  %4925 = phi float [ %4350, %4340 ], [ %4527, %4914 ]
  %4926 = phi float [ %4351, %4340 ], [ %4528, %4914 ]
  %4927 = phi float [ %4352, %4340 ], [ %4529, %4914 ]
  %4928 = phi i32 [ %4353, %4340 ], [ %4530, %4914 ]
  %4929 = phi float [ %4354, %4340 ], [ %4531, %4914 ]
  %4930 = add i32 %4355, 1
  %4931 = icmp ugt i32 %4930, %4337
  br i1 %4931, label %4932, label %4340, !llvm.loop !128

; <label>:4932                                    ; preds = %4915
  br label %4933

; <label>:4933                                    ; preds = %4932, %4287
  %4934 = phi i32 [ %3951, %4287 ], [ %4916, %4932 ]
  %4935 = phi i32 [ %4275, %4287 ], [ %4917, %4932 ]
  %4936 = phi float [ 0.000000e+00, %4287 ], [ %4918, %4932 ]
  %4937 = phi float [ 0.000000e+00, %4287 ], [ %4919, %4932 ]
  %4938 = phi float [ 0.000000e+00, %4287 ], [ %4920, %4932 ]
  %4939 = phi float [ 0.000000e+00, %4287 ], [ %4921, %4932 ]
  %4940 = phi float [ 0.000000e+00, %4287 ], [ %4922, %4932 ]
  %4941 = phi float [ 0.000000e+00, %4287 ], [ %4923, %4932 ]
  %4942 = phi i32 [ 0, %4287 ], [ %4924, %4932 ]
  %4943 = phi float [ 0.000000e+00, %4287 ], [ %4925, %4932 ]
  %4944 = phi float [ 0.000000e+00, %4287 ], [ %4926, %4932 ]
  %4945 = phi float [ 0.000000e+00, %4287 ], [ %4927, %4932 ]
  %4946 = call float @dx.op.dot3.f32(i32 55, float %4936, float %4937, float %4938, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4947 = select i1 %2107, float 0.000000e+00, float %4936
  %4948 = select i1 %2107, float %4946, float %4937
  %4949 = select i1 %2107, float 0.000000e+00, float %4938
  %4950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4951 = extractvalue %dx.types.CBufRet.f32 %4950, 0
  %4952 = bitcast float %4951 to i32
  %4953 = lshr i32 %4952, 8
  %4954 = and i32 %4953, 255
  %4955 = uitofp i32 %4954 to float
  %4956 = fptoui float %4955 to i32
  %4957 = icmp eq i32 %4956, 13
  br i1 %4957, label %4958, label %4978

; <label>:4958                                    ; preds = %4933
  %4959 = fadd fast float %4939, 1.000000e+00
  %4960 = fadd fast float %4940, 1.000000e+00
  %4961 = fadd fast float %4941, 1.000000e+00
  %4962 = fmul fast float %4959, 5.000000e-01
  %4963 = fmul fast float %4960, 5.000000e-01
  %4964 = fmul fast float %4961, 5.000000e-01
  %4965 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4966 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4967 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4968 = fmul fast float %4965, 1.023000e+03
  %4969 = fmul fast float %4966, 1.023000e+03
  %4970 = fmul fast float %4967, 1.023000e+03
  %4971 = fptoui float %4968 to i32
  %4972 = fptoui float %4969 to i32
  %4973 = fptoui float %4970 to i32
  %4974 = shl i32 %4972, 10
  %4975 = or i32 %4974, %4971
  %4976 = shl i32 %4973, 20
  %4977 = or i32 %4975, %4976
  br label %4978

; <label>:4978                                    ; preds = %4958, %4933
  %4979 = phi i32 [ %4977, %4958 ], [ %4935, %4933 ]
  %4980 = icmp eq i32 %4956, 14
  %4981 = select i1 %4980, i32 %4942, i32 %4979
  %4982 = icmp eq i32 %4956, 22
  br i1 %4982, label %4983, label %5003

; <label>:4983                                    ; preds = %4978
  %4984 = fadd fast float %4943, 1.000000e+00
  %4985 = fadd fast float %4944, 1.000000e+00
  %4986 = fadd fast float %4945, 1.000000e+00
  %4987 = fmul fast float %4984, 5.000000e-01
  %4988 = fmul fast float %4985, 5.000000e-01
  %4989 = fmul fast float %4986, 5.000000e-01
  %4990 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4991 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4993 = fmul fast float %4990, 1.023000e+03
  %4994 = fmul fast float %4991, 1.023000e+03
  %4995 = fmul fast float %4992, 1.023000e+03
  %4996 = fptoui float %4993 to i32
  %4997 = fptoui float %4994 to i32
  %4998 = fptoui float %4995 to i32
  %4999 = shl i32 %4997, 10
  %5000 = or i32 %4999, %4996
  %5001 = shl i32 %4998, 20
  %5002 = or i32 %5000, %5001
  br label %5003

; <label>:5003                                    ; preds = %4983, %4978
  %5004 = phi i32 [ %5002, %4983 ], [ %4981, %4978 ]
  %5005 = fcmp fast olt float %4276, 0.000000e+00
  %5006 = call float @dx.op.unary.f32(i32 6, float %4276)  ; FAbs(value)
  %5007 = fmul fast float %5006, %4277
  %5008 = fmul fast float %5006, %4278
  %5009 = fmul fast float %5006, %4279
  %5010 = select i1 %5005, float %4277, float %5007
  %5011 = select i1 %5005, float %4278, float %5008
  %5012 = select i1 %5005, float %4279, float %5009
  %5013 = fsub fast float 1.000000e+00, %5006
  %5014 = call float @dx.op.unary.f32(i32 7, float %5013)  ; Saturate(value)
  %5015 = fmul fast float %5014, %4947
  %5016 = fmul fast float %5014, %4948
  %5017 = fmul fast float %5014, %4949
  %5018 = fadd fast float %5010, %5015
  %5019 = fadd fast float %5011, %5016
  %5020 = fadd fast float %5012, %5017
  br label %5021

; <label>:5021                                    ; preds = %5003, %4274
  %5022 = phi i32 [ %3951, %4274 ], [ %4934, %5003 ]
  %5023 = phi i32 [ %4275, %4274 ], [ %5004, %5003 ]
  %5024 = phi float [ %4277, %4274 ], [ %5018, %5003 ]
  %5025 = phi float [ %4278, %4274 ], [ %5019, %5003 ]
  %5026 = phi float [ %4279, %4274 ], [ %5020, %5003 ]
  %5027 = fmul fast float %3953, %3236
  %5028 = fmul fast float %3954, %3236
  %5029 = fmul fast float %3955, %3236
  %5030 = fmul fast float %5024, %3231
  %5031 = fmul fast float %5025, %3232
  %5032 = fmul fast float %5026, %3233
  %5033 = fadd fast float %5030, %1841
  %5034 = fadd fast float %5031, %1842
  %5035 = fadd fast float %5032, %1843
  %5036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5037 = extractvalue %dx.types.CBufRet.f32 %5036, 3
  %5038 = fcmp fast oeq float %5037, 0.000000e+00
  br i1 %5038, label %6921, label %5039

; <label>:5039                                    ; preds = %5021
  %5040 = extractvalue %dx.types.CBufRet.f32 %5036, 0
  %5041 = extractvalue %dx.types.CBufRet.f32 %5036, 1
  %5042 = extractvalue %dx.types.CBufRet.f32 %5036, 2
  %5043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.f32 %5043, 0
  %5045 = extractvalue %dx.types.CBufRet.f32 %5043, 1
  %5046 = extractvalue %dx.types.CBufRet.f32 %5043, 2
  %5047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5048 = extractvalue %dx.types.CBufRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.CBufRet.f32 %5047, 1
  %5050 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5045, float %5046, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = select i1 %2107, float %5048, float %5044
  %5052 = select i1 %2107, float %5050, float %5045
  %5053 = select i1 %2107, float %5049, float %5046
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 0
  %5056 = extractvalue %dx.types.CBufRet.f32 %5054, 1
  %5057 = extractvalue %dx.types.CBufRet.f32 %5054, 2
  %5058 = extractvalue %dx.types.CBufRet.f32 %5054, 3
  %5059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.f32 %5059, 0
  %5061 = extractvalue %dx.types.CBufRet.f32 %5059, 1
  %5062 = extractvalue %dx.types.CBufRet.f32 %5059, 2
  %5063 = extractvalue %dx.types.CBufRet.f32 %5059, 3
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 0
  %5066 = extractvalue %dx.types.CBufRet.f32 %5064, 1
  %5067 = extractvalue %dx.types.CBufRet.f32 %5064, 2
  %5068 = extractvalue %dx.types.CBufRet.f32 %5064, 3
  %5069 = fmul fast float %5055, %155
  %5070 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5056, float %5069)  ; FMad(a,b,c)
  %5071 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5057, float %5070)  ; FMad(a,b,c)
  %5072 = fadd fast float %5071, %5058
  %5073 = fmul fast float %5060, %155
  %5074 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5061, float %5073)  ; FMad(a,b,c)
  %5075 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5062, float %5074)  ; FMad(a,b,c)
  %5076 = fadd fast float %5075, %5063
  %5077 = fmul fast float %5065, %155
  %5078 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5066, float %5077)  ; FMad(a,b,c)
  %5079 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5067, float %5078)  ; FMad(a,b,c)
  %5080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5081 = extractvalue %dx.types.CBufRet.f32 %5080, 0
  %5082 = extractvalue %dx.types.CBufRet.f32 %5080, 1
  %5083 = extractvalue %dx.types.CBufRet.f32 %5080, 3
  %5084 = fmul fast float %5083, %5072
  %5085 = fmul fast float %5083, %5076
  %5086 = fadd fast float %5084, %5081
  %5087 = fadd fast float %5085, %5082
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 0
  %5090 = extractvalue %dx.types.CBufRet.f32 %5088, 1
  %5091 = extractvalue %dx.types.CBufRet.f32 %5088, 3
  %5092 = fmul fast float %5091, %5072
  %5093 = fmul fast float %5091, %5076
  %5094 = fadd fast float %5092, %5089
  %5095 = fadd fast float %5093, %5090
  %5096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5097 = extractvalue %dx.types.CBufRet.f32 %5096, 1
  %5098 = fsub fast float -0.000000e+00, %5068
  %5099 = fsub fast float %5098, %5079
  %5100 = fadd fast float %5099, %5097
  %5101 = extractvalue %dx.types.CBufRet.f32 %5096, 2
  %5102 = fmul fast float %5100, %5101
  %5103 = fsub fast float 1.000000e+00, %5102
  %5104 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5106 = extractvalue %dx.types.CBufRet.f32 %5105, 0
  %5107 = extractvalue %dx.types.CBufRet.f32 %5105, 1
  %5108 = fsub fast float %5094, %5106
  %5109 = fsub fast float %5095, %5107
  %5110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.CBufRet.f32 %5111, 1
  %5114 = fsub fast float %5086, %5112
  %5115 = fsub fast float %5087, %5113
  %5116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 0
  %5119 = extractvalue %dx.types.CBufRet.f32 %5117, 1
  %5120 = fsub fast float %5072, %5118
  %5121 = fsub fast float %5076, %5119
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5124 = extractvalue %dx.types.CBufRet.f32 %5123, 0
  %5125 = bitcast float %5124 to i32
  %5126 = lshr i32 %5125, 8
  %5127 = and i32 %5126, 255
  %5128 = uitofp i32 %5127 to float
  %5129 = fptoui float %5128 to i32
  %5130 = and i32 %5129, -2
  %5131 = icmp eq i32 %5130, 10
  br i1 %5131, label %5132, label %5202

; <label>:5132                                    ; preds = %5039
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 0
  %5135 = fcmp fast olt float %5120, 0.000000e+00
  %5136 = extractvalue %dx.types.CBufRet.f32 %5122, 0
  %5137 = extractvalue %dx.types.CBufRet.f32 %5122, 2
  %5138 = select i1 %5135, float %5136, float %5137
  %5139 = fmul fast float %5138, %5120
  %5140 = call float @dx.op.unary.f32(i32 6, float %5139)  ; FAbs(value)
  %5141 = fcmp fast olt float %5121, 0.000000e+00
  %5142 = extractvalue %dx.types.CBufRet.f32 %5122, 1
  %5143 = extractvalue %dx.types.CBufRet.f32 %5122, 3
  %5144 = select i1 %5141, float %5142, float %5143
  %5145 = fmul fast float %5144, %5121
  %5146 = call float @dx.op.unary.f32(i32 6, float %5145)  ; FAbs(value)
  %5147 = call float @dx.op.binary.f32(i32 35, float %5140, float %5146)  ; FMax(a,b)
  %5148 = fsub fast float %5134, %5147
  %5149 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5150 = fmul fast float %5149, %5104
  %5151 = fcmp fast olt float %5114, 0.000000e+00
  %5152 = extractvalue %dx.types.CBufRet.f32 %5116, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5116, 2
  %5154 = select i1 %5151, float %5152, float %5153
  %5155 = fmul fast float %5154, %5114
  %5156 = call float @dx.op.unary.f32(i32 6, float %5155)  ; FAbs(value)
  %5157 = fcmp fast olt float %5115, 0.000000e+00
  %5158 = extractvalue %dx.types.CBufRet.f32 %5116, 1
  %5159 = extractvalue %dx.types.CBufRet.f32 %5116, 3
  %5160 = select i1 %5157, float %5158, float %5159
  %5161 = fmul fast float %5160, %5115
  %5162 = call float @dx.op.unary.f32(i32 6, float %5161)  ; FAbs(value)
  %5163 = call float @dx.op.binary.f32(i32 35, float %5156, float %5162)  ; FMax(a,b)
  %5164 = fsub fast float %5134, %5163
  %5165 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  %5166 = fmul fast float %5165, %5104
  %5167 = fcmp fast olt float %5108, 0.000000e+00
  %5168 = extractvalue %dx.types.CBufRet.f32 %5110, 0
  %5169 = extractvalue %dx.types.CBufRet.f32 %5110, 2
  %5170 = select i1 %5167, float %5168, float %5169
  %5171 = fmul fast float %5170, %5108
  %5172 = call float @dx.op.unary.f32(i32 6, float %5171)  ; FAbs(value)
  %5173 = fcmp fast olt float %5109, 0.000000e+00
  %5174 = extractvalue %dx.types.CBufRet.f32 %5110, 1
  %5175 = extractvalue %dx.types.CBufRet.f32 %5110, 3
  %5176 = select i1 %5173, float %5174, float %5175
  %5177 = fmul fast float %5176, %5109
  %5178 = call float @dx.op.unary.f32(i32 6, float %5177)  ; FAbs(value)
  %5179 = call float @dx.op.binary.f32(i32 35, float %5172, float %5178)  ; FMax(a,b)
  %5180 = fsub fast float %5134, %5179
  %5181 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5182 = fmul fast float %5181, %5104
  %5183 = fadd fast float %5150, 1.000000e+00
  %5184 = fadd fast float %5166, 1.000000e+00
  %5185 = fadd fast float %5182, 1.000000e+00
  %5186 = fmul fast float %5183, 5.000000e-01
  %5187 = fmul fast float %5184, 5.000000e-01
  %5188 = fmul fast float %5185, 5.000000e-01
  %5189 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5190 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5191 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5192 = fmul fast float %5189, 1.023000e+03
  %5193 = fmul fast float %5190, 1.023000e+03
  %5194 = fmul fast float %5191, 1.023000e+03
  %5195 = fptoui float %5192 to i32
  %5196 = fptoui float %5193 to i32
  %5197 = fptoui float %5194 to i32
  %5198 = shl i32 %5196, 10
  %5199 = or i32 %5198, %5195
  %5200 = shl i32 %5197, 20
  %5201 = or i32 %5199, %5200
  br label %5202

; <label>:5202                                    ; preds = %5132, %5039
  %5203 = phi i32 [ %5201, %5132 ], [ %5023, %5039 ]
  %5204 = fcmp fast olt float %5037, 0.000000e+00
  br i1 %5204, label %6516, label %5205

; <label>:5205                                    ; preds = %5202
  %5206 = fadd fast float %5079, %5068
  %5207 = fsub fast float %5097, %5206
  %5208 = fmul fast float %5207, %5101
  %5209 = fsub fast float 1.000000e+00, %5208
  %5210 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5211 = extractvalue %dx.types.CBufRet.f32 %5088, 2
  %5212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5213 = extractvalue %dx.types.CBufRet.f32 %5212, 2
  %5214 = fadd fast float %5213, %5211
  %5215 = fcmp fast ogt float %5214, 0.000000e+00
  br i1 %5215, label %5216, label %5235

; <label>:5216                                    ; preds = %5205
  %5217 = fcmp fast olt float %5108, 0.000000e+00
  %5218 = fcmp fast olt float %5109, 0.000000e+00
  %5219 = extractvalue %dx.types.CBufRet.f32 %5110, 0
  %5220 = extractvalue %dx.types.CBufRet.f32 %5110, 1
  %5221 = extractvalue %dx.types.CBufRet.f32 %5110, 2
  %5222 = extractvalue %dx.types.CBufRet.f32 %5110, 3
  %5223 = select i1 %5217, float %5219, float %5221
  %5224 = select i1 %5218, float %5220, float %5222
  %5225 = fmul fast float %5223, %5108
  %5226 = fmul fast float %5224, %5109
  %5227 = call float @dx.op.unary.f32(i32 6, float %5225)  ; FAbs(value)
  %5228 = call float @dx.op.unary.f32(i32 6, float %5226)  ; FAbs(value)
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5231 = call float @dx.op.binary.f32(i32 35, float %5227, float %5228)  ; FMax(a,b)
  %5232 = fsub fast float %5230, %5231
  %5233 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  %5234 = fmul fast float %5233, %5210
  br label %5235

; <label>:5235                                    ; preds = %5216, %5205
  %5236 = phi float [ %5234, %5216 ], [ 0.000000e+00, %5205 ]
  %5237 = extractvalue %dx.types.CBufRet.f32 %5080, 2
  %5238 = extractvalue %dx.types.CBufRet.f32 %5212, 1
  %5239 = fadd fast float %5238, %5237
  %5240 = fcmp fast ogt float %5239, 0.000000e+00
  br i1 %5240, label %5241, label %5260

; <label>:5241                                    ; preds = %5235
  %5242 = fcmp fast olt float %5114, 0.000000e+00
  %5243 = fcmp fast olt float %5115, 0.000000e+00
  %5244 = extractvalue %dx.types.CBufRet.f32 %5116, 0
  %5245 = extractvalue %dx.types.CBufRet.f32 %5116, 1
  %5246 = extractvalue %dx.types.CBufRet.f32 %5116, 2
  %5247 = extractvalue %dx.types.CBufRet.f32 %5116, 3
  %5248 = select i1 %5242, float %5244, float %5246
  %5249 = select i1 %5243, float %5245, float %5247
  %5250 = fmul fast float %5248, %5114
  %5251 = fmul fast float %5249, %5115
  %5252 = call float @dx.op.unary.f32(i32 6, float %5250)  ; FAbs(value)
  %5253 = call float @dx.op.unary.f32(i32 6, float %5251)  ; FAbs(value)
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5256 = call float @dx.op.binary.f32(i32 35, float %5252, float %5253)  ; FMax(a,b)
  %5257 = fsub fast float %5255, %5256
  %5258 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5259 = fmul fast float %5258, %5210
  br label %5260

; <label>:5260                                    ; preds = %5241, %5235
  %5261 = phi float [ %5259, %5241 ], [ 0.000000e+00, %5235 ]
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 1
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fcmp fast olt float %5120, 0.000000e+00
  %5266 = fcmp fast olt float %5121, 0.000000e+00
  %5267 = extractvalue %dx.types.CBufRet.f32 %5122, 0
  %5268 = extractvalue %dx.types.CBufRet.f32 %5122, 1
  %5269 = extractvalue %dx.types.CBufRet.f32 %5122, 2
  %5270 = extractvalue %dx.types.CBufRet.f32 %5122, 3
  %5271 = select i1 %5265, float %5267, float %5269
  %5272 = select i1 %5266, float %5268, float %5270
  %5273 = fmul fast float %5271, %5120
  %5274 = fmul fast float %5272, %5121
  %5275 = call float @dx.op.unary.f32(i32 6, float %5273)  ; FAbs(value)
  %5276 = call float @dx.op.unary.f32(i32 6, float %5274)  ; FAbs(value)
  %5277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.f32 %5277, 0
  %5279 = call float @dx.op.binary.f32(i32 35, float %5275, float %5276)  ; FMax(a,b)
  %5280 = fsub fast float %5278, %5279
  %5281 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5282 = call float @dx.op.binary.f32(i32 36, float %5281, float %5264)  ; FMin(a,b)
  %5283 = fmul fast float %5282, %5210
  %5284 = fsub fast float %5261, %5283
  %5285 = fsub fast float %5236, %5261
  %5286 = fsub fast float %5285, %5283
  %5287 = call float @dx.op.binary.f32(i32 35, float %5261, float %5236)  ; FMax(a,b)
  %5288 = call float @dx.op.binary.f32(i32 35, float %5283, float %5287)  ; FMax(a,b)
  %5289 = fcmp fast olt float %5288, 1.000000e+00
  br i1 %5289, label %5290, label %5961, !dx.controlflow.hints !131

; <label>:5290                                    ; preds = %5260
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  %5293 = fcmp fast une float %5292, 0.000000e+00
  br i1 %5293, label %5294, label %5961, !dx.controlflow.hints !132

; <label>:5294                                    ; preds = %5290
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 0
  %5297 = extractvalue %dx.types.CBufRet.f32 %5295, 1
  %5298 = extractvalue %dx.types.CBufRet.f32 %5295, 2
  %5299 = extractvalue %dx.types.CBufRet.f32 %5295, 3
  %5300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.f32 %5300, 0
  %5302 = extractvalue %dx.types.CBufRet.f32 %5300, 1
  %5303 = extractvalue %dx.types.CBufRet.f32 %5300, 2
  %5304 = extractvalue %dx.types.CBufRet.f32 %5300, 3
  %5305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.f32 %5305, 0
  %5307 = extractvalue %dx.types.CBufRet.f32 %5305, 1
  %5308 = extractvalue %dx.types.CBufRet.f32 %5305, 2
  %5309 = extractvalue %dx.types.CBufRet.f32 %5305, 3
  %5310 = fmul fast float %5296, %155
  %5311 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5297, float %5310)  ; FMad(a,b,c)
  %5312 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5298, float %5311)  ; FMad(a,b,c)
  %5313 = fadd fast float %5312, %5299
  %5314 = fmul fast float %5301, %155
  %5315 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5302, float %5314)  ; FMad(a,b,c)
  %5316 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5303, float %5315)  ; FMad(a,b,c)
  %5317 = fadd fast float %5316, %5304
  %5318 = fmul fast float %5306, %155
  %5319 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5307, float %5318)  ; FMad(a,b,c)
  %5320 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5308, float %5319)  ; FMad(a,b,c)
  %5321 = fadd fast float %5320, %5309
  %5322 = fcmp fast oge float %5313, 1.000000e+00
  %5323 = fcmp fast oge float %5317, 1.000000e+00
  %5324 = or i1 %5322, %5323
  %5325 = fcmp fast olt float %5313, 0.000000e+00
  %5326 = fcmp fast olt float %5317, 0.000000e+00
  %5327 = or i1 %5325, %5326
  %5328 = or i1 %5324, %5327
  br i1 %5328, label %5961, label %5329, !dx.controlflow.hints !133

; <label>:5329                                    ; preds = %5294
  %5330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5330, 0
  %5332 = extractvalue %dx.types.CBufRet.f32 %5330, 1
  %5333 = extractvalue %dx.types.CBufRet.f32 %5330, 2
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 1
  %5336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.i32 %5336, 2
  %5338 = uitofp i32 %5337 to float
  %5339 = extractvalue %dx.types.CBufRet.i32 %5336, 3
  %5340 = uitofp i32 %5339 to float
  %5341 = extractvalue %dx.types.CBufRet.f32 %5330, 3
  %5342 = fmul fast float %5341, 2.000000e+00
  %5343 = fsub fast float %5313, %5331
  %5344 = fsub fast float %5317, %5332
  %5345 = fmul fast float %5342, %5343
  %5346 = fmul fast float %5342, %5344
  %5347 = fdiv fast float 1.000000e+00, %5042
  %5348 = fmul fast float %5346, %5347
  %5349 = call float @dx.op.unary.f32(i32 6, float %5348)  ; FAbs(value)
  %5350 = fmul fast float %5333, %157
  %5351 = fmul fast float %5350, %5342
  %5352 = call float @dx.op.unary.f32(i32 6, float %5351)  ; FAbs(value)
  %5353 = call float @dx.op.unary.f32(i32 6, float %5345)  ; FAbs(value)
  %5354 = call float @dx.op.binary.f32(i32 35, float %5352, float %5349)  ; FMax(a,b)
  %5355 = call float @dx.op.binary.f32(i32 35, float %5353, float %5354)  ; FMax(a,b)
  %5356 = fmul fast float %5355, 2.000000e+00
  %5357 = call float @dx.op.unary.f32(i32 23, float %5356)  ; Log(value)
  %5358 = call float @dx.op.binary.f32(i32 35, float %5357, float %5338)  ; FMax(a,b)
  %5359 = call float @dx.op.unary.f32(i32 22, float %5358)  ; Frc(value)
  %5360 = fadd fast float %5359, 0xBFEA666660000000
  %5361 = fmul fast float %5360, 8.000000e+00
  %5362 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5363 = call float @dx.op.unary.f32(i32 27, float %5358)  ; Round_ni(value)
  %5364 = fadd fast float %5363, %5362
  %5365 = call float @dx.op.binary.f32(i32 36, float %5364, float %5340)  ; FMin(a,b)
  %5366 = call float @dx.op.unary.f32(i32 27, float %5365)  ; Round_ni(value)
  %5367 = fsub fast float -0.000000e+00, %5366
  %5368 = call float @dx.op.unary.f32(i32 21, float %5367)  ; Exp(value)
  %5369 = fmul fast float %5368, %5342
  %5370 = fmul fast float %5369, %5313
  %5371 = fmul fast float %5369, %5317
  %5372 = fmul fast float %5370, 5.000000e-01
  %5373 = fmul fast float %5371, 5.000000e-01
  %5374 = fadd fast float %5372, 5.000000e-01
  %5375 = fadd fast float %5373, 5.000000e-01
  %5376 = fmul fast float %5370, 2.500000e-01
  %5377 = fmul fast float %5371, 2.500000e-01
  %5378 = fadd fast float %5376, 5.000000e-01
  %5379 = fadd fast float %5377, 5.000000e-01
  %5380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5381 = extractvalue %dx.types.ResRet.i32 %5380, 0
  %5382 = and i32 %5381, 536870911
  %5383 = lshr i32 %5382, 9
  %5384 = uitofp i32 %5383 to float
  %5385 = fmul fast float %5384, %5313
  %5386 = fmul fast float %5384, %5317
  %5387 = call float @dx.op.unary.f32(i32 22, float %5385)  ; Frc(value)
  %5388 = call float @dx.op.unary.f32(i32 22, float %5386)  ; Frc(value)
  %5389 = call float @dx.op.unary.f32(i32 22, float %5362)  ; Frc(value)
  %5390 = fcmp fast une float %5389, 0.000000e+00
  br i1 %5390, label %5391, label %5489, !dx.controlflow.hints !134

; <label>:5391                                    ; preds = %5329
  %5392 = call float @dx.op.unary.f32(i32 21, float %5363)  ; Exp(value)
  %5393 = fmul fast float %5392, 1.953125e-03
  %5394 = fcmp fast olt float %5387, %5393
  %5395 = fcmp fast olt float %5388, %5393
  %5396 = or i1 %5394, %5395
  %5397 = fsub fast float 1.000000e+00, %5393
  %5398 = fcmp fast ogt float %5387, %5397
  %5399 = fcmp fast ogt float %5388, %5397
  %5400 = or i1 %5398, %5399
  %5401 = or i1 %5396, %5400
  br i1 %5401, label %5402, label %5568, !dx.controlflow.hints !135

; <label>:5402                                    ; preds = %5391
  %5403 = fmul fast float %5335, 5.000000e-01
  %5404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.i32 %5404, 0
  %5406 = fmul fast float %5317, 3.530000e+02
  %5407 = uitofp i32 %5382 to float
  %5408 = fmul fast float %5406, %5407
  %5409 = fmul fast float %5313, 6.130000e+02
  %5410 = fadd fast float %5408, %5409
  %5411 = fptoui float %5410 to i32
  %5412 = add i32 %5405, %5411
  %5413 = mul i32 %5412, -63
  %5414 = lshr i32 %5413, 17
  %5415 = xor i32 %5414, %5413
  %5416 = mul i32 %5415, -511
  %5417 = mul i32 %5415, -8176
  %5418 = xor i32 %5416, %5417
  %5419 = mul i32 %5418, -7
  %5420 = mul i32 %5418, -7168
  %5421 = xor i32 %5419, %5420
  %5422 = lshr i32 %5421, 15
  %5423 = xor i32 %5422, %5419
  %5424 = and i32 %5423, 15
  %5425 = mul i32 %5424, 2
  %5426 = add i32 0, %5425
  %5427 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5426
  %5428 = load float, float* %5427, align 4
  %5429 = mul i32 %5424, 2
  %5430 = add i32 1, %5429
  %5431 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5430
  %5432 = load float, float* %5431, align 4
  %5433 = fmul fast float %5317, 2.770000e+02
  %5434 = fmul fast float %5433, %5407
  %5435 = fmul fast float %5313, 5.990000e+02
  %5436 = fadd fast float %5434, %5435
  %5437 = fptoui float %5436 to i32
  %5438 = mul i32 %5437, -63
  %5439 = lshr i32 %5438, 17
  %5440 = xor i32 %5439, %5438
  %5441 = mul i32 %5440, -511
  %5442 = mul i32 %5440, -8176
  %5443 = xor i32 %5441, %5442
  %5444 = mul i32 %5443, -7
  %5445 = mul i32 %5443, -7168
  %5446 = xor i32 %5444, %5445
  %5447 = lshr i32 %5446, 15
  %5448 = xor i32 %5447, %5444
  %5449 = and i32 %5448, 63
  %5450 = mul i32 %5449, 2
  %5451 = add i32 0, %5450
  %5452 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5451
  %5453 = load float, float* %5452, align 4
  %5454 = mul i32 %5449, 2
  %5455 = add i32 1, %5454
  %5456 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5455
  %5457 = load float, float* %5456, align 4
  %5458 = call float @dx.op.dot2.f32(i32 54, float %5428, float %5432, float %5453, float %5457)  ; Dot2(ax,ay,bx,by)
  %5459 = fsub fast float -0.000000e+00, %5453
  %5460 = call float @dx.op.dot2.f32(i32 54, float %5428, float %5432, float %5459, float %5457)  ; Dot2(ax,ay,bx,by)
  %5461 = fmul fast float %5458, %5403
  %5462 = fmul fast float %5460, %5403
  %5463 = fdiv fast float 2.000000e+00, %5369
  %5464 = fmul fast float %5392, 9.765625e-04
  %5465 = fcmp fast olt float %5387, %5464
  %5466 = fcmp fast olt float %5388, %5464
  %5467 = or i1 %5465, %5466
  %5468 = fsub fast float 1.000000e+00, %5464
  %5469 = fcmp fast ogt float %5387, %5468
  %5470 = fcmp fast ogt float %5388, %5468
  %5471 = or i1 %5469, %5470
  %5472 = or i1 %5467, %5471
  %5473 = fmul fast float %5461, 2.000000e+00
  br i1 %5472, label %5474, label %5478

; <label>:5474                                    ; preds = %5402
  %5475 = fmul fast float %5462, 2.000000e+00
  %5476 = fadd fast float %5473, %5374
  %5477 = fadd fast float %5475, %5375
  br label %5478

; <label>:5478                                    ; preds = %5474, %5402
  %5479 = phi float [ %5476, %5474 ], [ %5374, %5402 ]
  %5480 = phi float [ %5477, %5474 ], [ %5375, %5402 ]
  %5481 = phi i32 [ 3, %5474 ], [ 2, %5402 ]
  %5482 = fadd fast float %5461, %5378
  %5483 = fadd fast float %5462, %5379
  %5484 = fmul fast float %5473, %5463
  %5485 = fmul fast float %5463, 2.000000e+00
  %5486 = fmul fast float %5485, %5462
  %5487 = fadd fast float %5484, %5313
  %5488 = fadd fast float %5486, %5317
  br label %5568

; <label>:5489                                    ; preds = %5329
  %5490 = call float @dx.op.unary.f32(i32 21, float %5366)  ; Exp(value)
  %5491 = fmul fast float %5490, 9.765625e-04
  %5492 = fcmp fast olt float %5387, %5491
  %5493 = fcmp fast olt float %5388, %5491
  %5494 = or i1 %5492, %5493
  %5495 = fsub fast float 1.000000e+00, %5491
  %5496 = fcmp fast ogt float %5387, %5495
  %5497 = fcmp fast ogt float %5388, %5495
  %5498 = or i1 %5496, %5497
  %5499 = or i1 %5494, %5498
  br i1 %5499, label %5500, label %5568, !dx.controlflow.hints !136

; <label>:5500                                    ; preds = %5489
  %5501 = fmul fast float %5335, 5.000000e-01
  %5502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5503 = extractvalue %dx.types.CBufRet.i32 %5502, 0
  %5504 = fmul fast float %5317, 3.530000e+02
  %5505 = uitofp i32 %5382 to float
  %5506 = fmul fast float %5504, %5505
  %5507 = fmul fast float %5313, 6.130000e+02
  %5508 = fadd fast float %5506, %5507
  %5509 = fptoui float %5508 to i32
  %5510 = add i32 %5503, %5509
  %5511 = mul i32 %5510, -63
  %5512 = lshr i32 %5511, 17
  %5513 = xor i32 %5512, %5511
  %5514 = mul i32 %5513, -511
  %5515 = mul i32 %5513, -8176
  %5516 = xor i32 %5514, %5515
  %5517 = mul i32 %5516, -7
  %5518 = mul i32 %5516, -7168
  %5519 = xor i32 %5517, %5518
  %5520 = lshr i32 %5519, 15
  %5521 = xor i32 %5520, %5517
  %5522 = and i32 %5521, 15
  %5523 = mul i32 %5522, 2
  %5524 = add i32 0, %5523
  %5525 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5524
  %5526 = load float, float* %5525, align 4
  %5527 = mul i32 %5522, 2
  %5528 = add i32 1, %5527
  %5529 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5528
  %5530 = load float, float* %5529, align 4
  %5531 = fmul fast float %5317, 2.770000e+02
  %5532 = fmul fast float %5531, %5505
  %5533 = fmul fast float %5313, 5.990000e+02
  %5534 = fadd fast float %5532, %5533
  %5535 = fptoui float %5534 to i32
  %5536 = mul i32 %5535, -63
  %5537 = lshr i32 %5536, 17
  %5538 = xor i32 %5537, %5536
  %5539 = mul i32 %5538, -511
  %5540 = mul i32 %5538, -8176
  %5541 = xor i32 %5539, %5540
  %5542 = mul i32 %5541, -7
  %5543 = mul i32 %5541, -7168
  %5544 = xor i32 %5542, %5543
  %5545 = lshr i32 %5544, 15
  %5546 = xor i32 %5545, %5542
  %5547 = and i32 %5546, 63
  %5548 = mul i32 %5547, 2
  %5549 = add i32 0, %5548
  %5550 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5549
  %5551 = load float, float* %5550, align 4
  %5552 = mul i32 %5547, 2
  %5553 = add i32 1, %5552
  %5554 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5553
  %5555 = load float, float* %5554, align 4
  %5556 = call float @dx.op.dot2.f32(i32 54, float %5526, float %5530, float %5551, float %5555)  ; Dot2(ax,ay,bx,by)
  %5557 = fsub fast float -0.000000e+00, %5551
  %5558 = call float @dx.op.dot2.f32(i32 54, float %5526, float %5530, float %5557, float %5555)  ; Dot2(ax,ay,bx,by)
  %5559 = fmul fast float %5556, %5501
  %5560 = fmul fast float %5558, %5501
  %5561 = fadd fast float %5559, %5374
  %5562 = fadd fast float %5560, %5375
  %5563 = fdiv fast float 2.000000e+00, %5369
  %5564 = fmul fast float %5563, %5559
  %5565 = fmul fast float %5560, %5563
  %5566 = fadd fast float %5564, %5313
  %5567 = fadd fast float %5565, %5317
  br label %5568

; <label>:5568                                    ; preds = %5500, %5489, %5478, %5391
  %5569 = phi float [ %5482, %5478 ], [ %5378, %5391 ], [ %5378, %5500 ], [ %5378, %5489 ]
  %5570 = phi float [ %5483, %5478 ], [ %5379, %5391 ], [ %5379, %5500 ], [ %5379, %5489 ]
  %5571 = phi float [ %5479, %5478 ], [ %5374, %5391 ], [ %5561, %5500 ], [ %5374, %5489 ]
  %5572 = phi float [ %5480, %5478 ], [ %5375, %5391 ], [ %5562, %5500 ], [ %5375, %5489 ]
  %5573 = phi i32 [ %5481, %5478 ], [ 0, %5391 ], [ 1, %5500 ], [ 0, %5489 ]
  %5574 = phi float [ %5487, %5478 ], [ %5313, %5391 ], [ %5566, %5500 ], [ %5313, %5489 ]
  %5575 = phi float [ %5488, %5478 ], [ %5317, %5391 ], [ %5567, %5500 ], [ %5317, %5489 ]
  %5576 = fsub fast float %5340, %5338
  %5577 = fptoui float %5576 to i32
  %5578 = add i32 %5577, 320
  %5579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %5578)  ; CBufferLoadLegacy(handle,regIndex)
  %5580 = extractvalue %dx.types.CBufRet.f32 %5579, 0
  %5581 = extractvalue %dx.types.CBufRet.f32 %5579, 1
  %5582 = fcmp fast une float %5365, %5340
  %5583 = fsub fast float %5574, %5580
  %5584 = fsub fast float %5575, %5581
  %5585 = call float @dx.op.unary.f32(i32 6, float %5583)  ; FAbs(value)
  %5586 = call float @dx.op.unary.f32(i32 6, float %5584)  ; FAbs(value)
  %5587 = fmul fast float %5585, %5369
  %5588 = fmul fast float %5586, %5369
  %5589 = fcmp fast olt float %5587, 1.000000e+00
  %5590 = fcmp fast olt float %5588, 1.000000e+00
  %5591 = and i1 %5589, %5590
  %5592 = or i1 %5582, %5591
  br i1 %5592, label %5593, label %5961, !dx.controlflow.hints !137

; <label>:5593                                    ; preds = %5568
  %5594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5595 = extractvalue %dx.types.CBufRet.i32 %5594, 2
  %5596 = sitofp i32 %5595 to float
  %5597 = fsub fast float %5365, %5596
  %5598 = call float @dx.op.unary.f32(i32 27, float %5597)  ; Round_ni(value)
  %5599 = call float @dx.op.unary.f32(i32 22, float %5365)  ; Frc(value)
  %5600 = icmp eq i32 %5573, 0
  %5601 = call float @dx.op.unary.f32(i32 22, float %5571)  ; Frc(value)
  %5602 = call float @dx.op.unary.f32(i32 22, float %5572)  ; Frc(value)
  br i1 %5600, label %5673, label %5603, !dx.controlflow.hints !138

; <label>:5603                                    ; preds = %5593
  %5604 = and i32 %5573, 1
  %5605 = icmp eq i32 %5604, 0
  br i1 %5605, label %5619, label %5606, !dx.controlflow.hints !139

; <label>:5606                                    ; preds = %5603
  %5607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.f32 %5607, 0
  %5609 = fmul fast float %5601, %5608
  %5610 = fmul fast float %5602, %5608
  %5611 = fptoui float %5609 to i32
  %5612 = fptoui float %5610 to i32
  %5613 = fptoui float %5598 to i32
  %5614 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %5611, i32 %5612, i32 %5613, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5615 = extractvalue %dx.types.ResRet.f32 %5614, 0
  %5616 = extractvalue %dx.types.ResRet.f32 %5614, 1
  %5617 = extractvalue %dx.types.ResRet.f32 %5614, 2
  %5618 = extractvalue %dx.types.ResRet.f32 %5614, 3
  br label %5625

; <label>:5619                                    ; preds = %5603
  %5620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %62, float %5601, float %5602, float %5598, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5621 = extractvalue %dx.types.ResRet.f32 %5620, 0
  %5622 = extractvalue %dx.types.ResRet.f32 %5620, 1
  %5623 = extractvalue %dx.types.ResRet.f32 %5620, 2
  %5624 = extractvalue %dx.types.ResRet.f32 %5620, 3
  br label %5625

; <label>:5625                                    ; preds = %5619, %5606
  %5626 = phi float [ %5615, %5606 ], [ %5621, %5619 ]
  %5627 = phi float [ %5616, %5606 ], [ %5622, %5619 ]
  %5628 = phi float [ %5617, %5606 ], [ %5623, %5619 ]
  %5629 = phi float [ %5618, %5606 ], [ %5624, %5619 ]
  %5630 = fcmp fast ogt float %5599, 0.000000e+00
  br i1 %5630, label %5631, label %5701

; <label>:5631                                    ; preds = %5625
  %5632 = and i32 %5573, 2
  %5633 = icmp eq i32 %5632, 0
  %5634 = fadd fast float %5598, 1.000000e+00
  %5635 = call float @dx.op.unary.f32(i32 22, float %5569)  ; Frc(value)
  %5636 = call float @dx.op.unary.f32(i32 22, float %5570)  ; Frc(value)
  br i1 %5633, label %5650, label %5637, !dx.controlflow.hints !140

; <label>:5637                                    ; preds = %5631
  %5638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5639 = extractvalue %dx.types.CBufRet.f32 %5638, 0
  %5640 = fmul fast float %5635, %5639
  %5641 = fmul fast float %5636, %5639
  %5642 = fptoui float %5640 to i32
  %5643 = fptoui float %5641 to i32
  %5644 = fptoui float %5634 to i32
  %5645 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %5642, i32 %5643, i32 %5644, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5646 = extractvalue %dx.types.ResRet.f32 %5645, 0
  %5647 = extractvalue %dx.types.ResRet.f32 %5645, 1
  %5648 = extractvalue %dx.types.ResRet.f32 %5645, 2
  %5649 = extractvalue %dx.types.ResRet.f32 %5645, 3
  br label %5656

; <label>:5650                                    ; preds = %5631
  %5651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %62, float %5635, float %5636, float %5634, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5652 = extractvalue %dx.types.ResRet.f32 %5651, 0
  %5653 = extractvalue %dx.types.ResRet.f32 %5651, 1
  %5654 = extractvalue %dx.types.ResRet.f32 %5651, 2
  %5655 = extractvalue %dx.types.ResRet.f32 %5651, 3
  br label %5656

; <label>:5656                                    ; preds = %5650, %5637
  %5657 = phi float [ %5646, %5637 ], [ %5652, %5650 ]
  %5658 = phi float [ %5647, %5637 ], [ %5653, %5650 ]
  %5659 = phi float [ %5648, %5637 ], [ %5654, %5650 ]
  %5660 = phi float [ %5649, %5637 ], [ %5655, %5650 ]
  %5661 = fsub fast float %5657, %5626
  %5662 = fsub fast float %5658, %5627
  %5663 = fsub fast float %5659, %5628
  %5664 = fsub fast float %5660, %5629
  %5665 = fmul fast float %5661, %5599
  %5666 = fmul fast float %5662, %5599
  %5667 = fmul fast float %5663, %5599
  %5668 = fmul fast float %5664, %5599
  %5669 = fadd fast float %5665, %5626
  %5670 = fadd fast float %5666, %5627
  %5671 = fadd fast float %5667, %5628
  %5672 = fadd fast float %5668, %5629
  br label %5701

; <label>:5673                                    ; preds = %5593
  %5674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %62, float %5601, float %5602, float %5598, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5675 = extractvalue %dx.types.ResRet.f32 %5674, 0
  %5676 = extractvalue %dx.types.ResRet.f32 %5674, 1
  %5677 = extractvalue %dx.types.ResRet.f32 %5674, 2
  %5678 = extractvalue %dx.types.ResRet.f32 %5674, 3
  %5679 = fcmp fast ogt float %5599, 0.000000e+00
  br i1 %5679, label %5680, label %5701, !dx.controlflow.hints !141

; <label>:5680                                    ; preds = %5673
  %5681 = fadd fast float %5598, 1.000000e+00
  %5682 = call float @dx.op.unary.f32(i32 22, float %5569)  ; Frc(value)
  %5683 = call float @dx.op.unary.f32(i32 22, float %5570)  ; Frc(value)
  %5684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %62, float %5682, float %5683, float %5681, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5685 = extractvalue %dx.types.ResRet.f32 %5684, 0
  %5686 = extractvalue %dx.types.ResRet.f32 %5684, 1
  %5687 = extractvalue %dx.types.ResRet.f32 %5684, 2
  %5688 = extractvalue %dx.types.ResRet.f32 %5684, 3
  %5689 = fsub fast float %5685, %5675
  %5690 = fsub fast float %5686, %5676
  %5691 = fsub fast float %5687, %5677
  %5692 = fsub fast float %5688, %5678
  %5693 = fmul fast float %5689, %5599
  %5694 = fmul fast float %5690, %5599
  %5695 = fmul fast float %5691, %5599
  %5696 = fmul fast float %5692, %5599
  %5697 = fadd fast float %5693, %5675
  %5698 = fadd fast float %5694, %5676
  %5699 = fadd fast float %5695, %5677
  %5700 = fadd fast float %5696, %5678
  br label %5701

; <label>:5701                                    ; preds = %5680, %5673, %5656, %5625
  %5702 = phi float [ %5669, %5656 ], [ %5626, %5625 ], [ %5697, %5680 ], [ %5675, %5673 ]
  %5703 = phi float [ %5670, %5656 ], [ %5627, %5625 ], [ %5698, %5680 ], [ %5676, %5673 ]
  %5704 = phi float [ %5671, %5656 ], [ %5628, %5625 ], [ %5699, %5680 ], [ %5677, %5673 ]
  %5705 = phi float [ %5672, %5656 ], [ %5629, %5625 ], [ %5700, %5680 ], [ %5678, %5673 ]
  %5706 = fadd fast float %5702, -5.000000e-01
  %5707 = fadd fast float %5704, -5.000000e-01
  %5708 = fmul fast float %5706, 0xBFD5555560000000
  %5709 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5707, float %5708)  ; FMad(a,b,c)
  %5710 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5703, float 0.000000e+00)  ; FMad(a,b,c)
  %5711 = fadd fast float %5710, %5705
  %5712 = fmul fast float %5706, -7.500000e-01
  %5713 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5707, float %5712)  ; FMad(a,b,c)
  %5714 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5703, float 0.000000e+00)  ; FMad(a,b,c)
  %5715 = fadd fast float %5714, %5705
  %5716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.f32 %5716, 0
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 0
  %5720 = extractvalue %dx.types.CBufRet.f32 %5718, 1
  %5721 = extractvalue %dx.types.CBufRet.f32 %5718, 2
  %5722 = extractvalue %dx.types.CBufRet.f32 %5718, 3
  %5723 = fsub fast float %5719, %5709
  %5724 = fsub fast float %5720, %5711
  %5725 = fsub fast float %5721, %5713
  %5726 = fsub fast float %5722, %5715
  %5727 = fmul fast float %5723, %5717
  %5728 = fmul fast float %5724, %5717
  %5729 = fmul fast float %5725, %5717
  %5730 = fmul fast float %5726, %5717
  %5731 = fadd fast float %5727, %5709
  %5732 = fadd fast float %5728, %5711
  %5733 = fadd fast float %5729, %5713
  %5734 = fadd fast float %5730, %5715
  %5735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5736 = extractvalue %dx.types.ResRet.i32 %5735, 0
  %5737 = and i32 %5736, 536870911
  %5738 = uitofp i32 %5737 to float
  %5739 = fmul fast float %5738, %5574
  %5740 = fmul fast float %5738, %5575
  %5741 = fptoui float %5739 to i32
  %5742 = fptoui float %5740 to i32
  %5743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5744 = extractvalue %dx.types.ResRet.i32 %5743, 0
  %5745 = and i32 %5744, 31
  %5746 = lshr i32 %5741, %5745
  %5747 = lshr i32 %5742, %5745
  %5748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5749 = extractvalue %dx.types.ResRet.i32 %5748, 0
  %5750 = and i32 %5749, 31
  %5751 = shl i32 1, %5750
  %5752 = call i32 @dx.op.binary.i32(i32 40, i32 %5751, i32 4)  ; UMin(a,b)
  %5753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5754 = extractvalue %dx.types.ResRet.i32 %5753, 0
  %5755 = extractvalue %dx.types.ResRet.i32 %5753, 1
  %5756 = icmp eq i32 %5752, 0
  br i1 %5756, label %5798, label %5757

; <label>:5757                                    ; preds = %5701
  br label %5758

; <label>:5758                                    ; preds = %5786, %5757
  %5759 = phi i32 [ %5789, %5786 ], [ 0, %5757 ]
  %5760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5761 = extractvalue %dx.types.ResRet.i32 %5760, 0
  %5762 = lshr i32 %5761, 16
  %5763 = and i32 %5762, 31
  %5764 = shl i32 %5747, %5763
  %5765 = add i32 %5764, %5746
  %5766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5767 = extractvalue %dx.types.ResRet.i32 %5766, 0
  %5768 = and i32 %5767, 31
  %5769 = shl i32 %5765, %5768
  %5770 = add i32 %5769, %5759
  %5771 = shl i32 %5770, 2
  %5772 = add i32 %5771, 32
  %5773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5772, i32 undef)  ; BufferLoad(srv,index,wot)
  %5774 = extractvalue %dx.types.ResRet.i32 %5773, 0
  %5775 = icmp slt i32 %5774, 0
  %5776 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %5759
  %5777 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %5759
  %5778 = bitcast float* %5776 to i32*
  %5779 = bitcast float* %5777 to i32*
  br i1 %5775, label %5780, label %5786

; <label>:5780                                    ; preds = %5758
  %5781 = and i32 %5774, 1073741823
  %5782 = add nuw nsw i32 %5781, 20
  %5783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5782, i32 undef)  ; BufferLoad(srv,index,wot)
  %5784 = extractvalue %dx.types.ResRet.i32 %5783, 0
  %5785 = extractvalue %dx.types.ResRet.i32 %5783, 1
  br label %5786

; <label>:5786                                    ; preds = %5780, %5758
  %5787 = phi i32 [ %5784, %5780 ], [ %5754, %5758 ]
  %5788 = phi i32 [ %5785, %5780 ], [ %5755, %5758 ]
  store i32 %5787, i32* %5778, align 4
  store i32 %5788, i32* %5779, align 4
  %5789 = add nuw i32 %5759, 1
  %5790 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5791 = extractvalue %dx.types.CBufRet.i32 %5790, 2
  %5792 = icmp eq i32 %5791, 0
  %5793 = icmp ugt i32 %5774, -1073741825
  %5794 = and i1 %5793, %5792
  %5795 = icmp ult i32 %5789, %5752
  %5796 = and i1 %5794, %5795
  br i1 %5796, label %5758, label %5797

; <label>:5797                                    ; preds = %5786
  br label %5798

; <label>:5798                                    ; preds = %5797, %5701
  %5799 = phi i32 [ 0, %5701 ], [ %5789, %5797 ]
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 2
  %5802 = fptoui float %5801 to i32
  %5803 = icmp eq i32 %5802, 0
  br i1 %5803, label %5855, label %5804

; <label>:5804                                    ; preds = %5798
  br label %5805

; <label>:5805                                    ; preds = %5850, %5804
  %5806 = phi i32 [ %5851, %5850 ], [ %5799, %5804 ]
  %5807 = phi i32 [ %5852, %5850 ], [ 0, %5804 ]
  %5808 = lshr i32 %5807, 2
  %5809 = and i32 %5807, 3
  %5810 = add nuw nsw i32 %5808, 83
  %5811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 %5810)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.i32 %5811, 0
  %5813 = extractvalue %dx.types.CBufRet.i32 %5811, 1
  %5814 = extractvalue %dx.types.CBufRet.i32 %5811, 2
  %5815 = extractvalue %dx.types.CBufRet.i32 %5811, 3
  %5816 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %5812, i32* %5816, align 4
  %5817 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %5813, i32* %5817, align 4
  %5818 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %5814, i32* %5818, align 4
  %5819 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %5815, i32* %5819, align 4
  %5820 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %5809
  %5821 = load i32, i32* %5820, align 4, !tbaa !142, !noalias !144
  %5822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5823 = extractvalue %dx.types.ResRet.i32 %5822, 0
  %5824 = lshr i32 %5823, 16
  %5825 = and i32 %5824, 31
  %5826 = shl i32 %5747, %5825
  %5827 = add i32 %5826, %5746
  %5828 = shl i32 %5827, 2
  %5829 = add i32 %5828, %5821
  %5830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5829, i32 undef)  ; BufferLoad(srv,index,wot)
  %5831 = extractvalue %dx.types.ResRet.i32 %5830, 0
  %5832 = icmp eq i32 %5831, 0
  br i1 %5832, label %5850, label %5833

; <label>:5833                                    ; preds = %5805
  %5834 = icmp slt i32 %5831, 0
  %5835 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %5806
  %5836 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %5806
  %5837 = bitcast float* %5835 to i32*
  %5838 = bitcast float* %5836 to i32*
  br i1 %5834, label %5839, label %5846

; <label>:5839                                    ; preds = %5833
  %5840 = and i32 %5831, 1073741823
  %5841 = add i32 %5821, 20
  %5842 = add i32 %5841, %5840
  %5843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5842, i32 undef)  ; BufferLoad(srv,index,wot)
  %5844 = extractvalue %dx.types.ResRet.i32 %5843, 0
  %5845 = extractvalue %dx.types.ResRet.i32 %5843, 1
  br label %5846

; <label>:5846                                    ; preds = %5839, %5833
  %5847 = phi i32 [ %5844, %5839 ], [ %5754, %5833 ]
  %5848 = phi i32 [ %5845, %5839 ], [ %5755, %5833 ]
  store i32 %5847, i32* %5837, align 4
  store i32 %5848, i32* %5838, align 4
  %5849 = add i32 %5806, 1
  br label %5850

; <label>:5850                                    ; preds = %5846, %5805
  %5851 = phi i32 [ %5806, %5805 ], [ %5849, %5846 ]
  %5852 = add nuw i32 %5807, 1
  %5853 = icmp eq i32 %5852, %5802
  br i1 %5853, label %5854, label %5805

; <label>:5854                                    ; preds = %5850
  br label %5855

; <label>:5855                                    ; preds = %5854, %5798
  %5856 = phi i32 [ %5799, %5798 ], [ %5851, %5854 ]
  %5857 = icmp eq i32 %5856, 1
  %5858 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  %5859 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  br i1 %5857, label %5860, label %5863

; <label>:5860                                    ; preds = %5855
  %5861 = load float, float* %5858, align 4
  %5862 = load float, float* %5859, align 4
  br label %5890

; <label>:5863                                    ; preds = %5855
  %5864 = load float, float* %5858, align 4
  %5865 = load float, float* %5859, align 4
  %5866 = fdiv fast float 1.000000e+00, %5865
  %5867 = fsub fast float %5864, %5866
  %5868 = icmp ugt i32 %5856, 1
  br i1 %5868, label %5869, label %5885

; <label>:5869                                    ; preds = %5863
  br label %5870

; <label>:5870                                    ; preds = %5870, %5869
  %5871 = phi float [ %5880, %5870 ], [ %5867, %5869 ]
  %5872 = phi float [ %5881, %5870 ], [ %5864, %5869 ]
  %5873 = phi i32 [ %5882, %5870 ], [ 1, %5869 ]
  %5874 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %5873
  %5875 = load float, float* %5874, align 4
  %5876 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %5873
  %5877 = load float, float* %5876, align 4
  %5878 = fdiv fast float 1.000000e+00, %5877
  %5879 = fsub fast float %5875, %5878
  %5880 = call float @dx.op.binary.f32(i32 36, float %5871, float %5879)  ; FMin(a,b)
  %5881 = call float @dx.op.binary.f32(i32 35, float %5872, float %5875)  ; FMax(a,b)
  %5882 = add nuw i32 %5873, 1
  %5883 = icmp eq i32 %5882, %5856
  br i1 %5883, label %5884, label %5870

; <label>:5884                                    ; preds = %5870
  br label %5885

; <label>:5885                                    ; preds = %5884, %5863
  %5886 = phi float [ %5867, %5863 ], [ %5880, %5884 ]
  %5887 = phi float [ %5864, %5863 ], [ %5881, %5884 ]
  %5888 = fsub fast float %5887, %5886
  %5889 = fdiv fast float 1.000000e+00, %5888
  br label %5890

; <label>:5890                                    ; preds = %5885, %5860
  %5891 = phi float [ %5861, %5860 ], [ %5887, %5885 ]
  %5892 = phi float [ %5862, %5860 ], [ %5889, %5885 ]
  %5893 = fadd fast float %5321, %5891
  %5894 = fmul fast float %5893, %5892
  %5895 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  %5896 = fmul fast float %5895, 2.000000e+00
  %5897 = fsub fast float 1.000000e+00, %5896
  %5898 = fmul fast float %5731, %5731
  %5899 = fsub fast float %5732, %5898
  %5900 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5899)  ; FMax(a,b)
  %5901 = fdiv fast float 1.000000e+00, %5900
  %5902 = fmul fast float %5732, %5731
  %5903 = fsub fast float %5733, %5902
  %5904 = fsub fast float %5897, %5731
  %5905 = fmul fast float %5897, %5897
  %5906 = fsub fast float %5905, %5732
  %5907 = fmul fast float %5901, %5903
  %5908 = fmul fast float %5907, %5904
  %5909 = fsub fast float %5906, %5908
  %5910 = fmul fast float %5732, %5732
  %5911 = fsub fast float %5734, %5910
  %5912 = fmul fast float %5903, %5903
  %5913 = fmul fast float %5912, %5901
  %5914 = fsub fast float %5911, %5913
  %5915 = fdiv fast float %5909, %5914
  %5916 = fmul fast float %5915, %5903
  %5917 = fsub fast float %5904, %5916
  %5918 = fmul fast float %5917, %5901
  %5919 = fmul fast float %5918, %5731
  %5920 = fsub fast float 1.000000e+00, %5919
  %5921 = fmul fast float %5915, %5732
  %5922 = fsub fast float %5920, %5921
  %5923 = fmul fast float %5918, %5918
  %5924 = fmul fast float %5915, 4.000000e+00
  %5925 = fmul fast float %5924, %5922
  %5926 = fsub fast float %5923, %5925
  %5927 = call float @dx.op.unary.f32(i32 24, float %5926)  ; Sqrt(value)
  %5928 = fcmp fast oge float %5918, 0.000000e+00
  %5929 = fsub fast float -0.000000e+00, %5927
  %5930 = select i1 %5928, float %5929, float %5927
  %5931 = fsub fast float %5930, %5918
  %5932 = fdiv fast float %5931, %5915
  %5933 = fdiv fast float %5922, %5931
  %5934 = fmul fast float %5932, 5.000000e-01
  %5935 = fmul fast float %5933, 2.000000e+00
  %5936 = select i1 %5928, float %5934, float %5935
  %5937 = select i1 %5928, float %5935, float %5934
  %5938 = call float @dx.op.binary.f32(i32 35, float %5936, float %5937)  ; FMax(a,b)
  %5939 = call float @dx.op.binary.f32(i32 36, float %5936, float %5937)  ; FMin(a,b)
  %5940 = fcmp fast ogt float %5897, %5938
  %5941 = fsub fast float %5897, %5939
  %5942 = fsub fast float %5897, %5938
  %5943 = fsub fast float %5938, %5939
  %5944 = select i1 %5940, float %5942, float %5943
  %5945 = fmul float %5941, %5944
  %5946 = select i1 %5940, float %5939, float %5897
  %5947 = fcmp fast ogt float %5897, %5939
  %5948 = fmul fast float %5946, %5938
  %5949 = fadd fast float %5946, %5938
  %5950 = fmul fast float %5949, %5731
  %5951 = fadd fast float %5948, %5732
  %5952 = fsub fast float %5951, %5950
  %5953 = fdiv fast float %5952, %5945
  %5954 = select i1 %5947, float %5953, float 0.000000e+00
  %5955 = fsub fast float 1.000000e+00, %5954
  %5956 = select i1 %5940, float %5955, float %5954
  %5957 = call float @dx.op.unary.f32(i32 7, float %5956)  ; Saturate(value)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5716, 3
  %5959 = fmul fast float %5958, %5957
  %5960 = fsub fast float 1.000000e+00, %5959
  br label %5961

; <label>:5961                                    ; preds = %5890, %5568, %5294, %5290, %5260
  %5962 = phi float [ 1.000000e+00, %5260 ], [ %5960, %5890 ], [ 1.000000e+00, %5294 ], [ 1.000000e+00, %5568 ], [ 1.000000e+00, %5290 ]
  %5963 = fcmp fast ogt float %5286, 0.000000e+00
  br i1 %5963, label %5964, label %6128, !dx.controlflow.hints !149

; <label>:5964                                    ; preds = %5961
  %5965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5966 = extractvalue %dx.types.CBufRet.f32 %5965, 2
  %5967 = fadd fast float %5966, %5206
  %5968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5969 = extractvalue %dx.types.CBufRet.f32 %5968, 2
  %5970 = extractvalue %dx.types.CBufRet.f32 %5968, 3
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 2
  %5973 = call float @dx.op.binary.f32(i32 35, float %5967, float 0.000000e+00)  ; FMax(a,b)
  %5974 = fadd fast float %5973, 0x3F10000000000000
  %5975 = fcmp fast oeq float %5972, 0.000000e+00
  br i1 %5975, label %5976, label %6043

; <label>:5976                                    ; preds = %5964
  %5977 = extractvalue %dx.types.CBufRet.f32 %5968, 1
  %5978 = extractvalue %dx.types.CBufRet.f32 %5968, 0
  %5979 = fmul fast float %5978, %5094
  %5980 = fmul fast float %5977, %5095
  %5981 = fadd fast float %5979, 5.000000e-01
  %5982 = call float @dx.op.unary.f32(i32 27, float %5981)  ; Round_ni(value)
  %5983 = fadd fast float %5980, 5.000000e-01
  %5984 = call float @dx.op.unary.f32(i32 27, float %5983)  ; Round_ni(value)
  %5985 = fsub fast float %5981, %5982
  %5986 = fsub fast float %5983, %5984
  %5987 = fadd fast float %5982, -5.000000e-01
  %5988 = fadd fast float %5984, -5.000000e-01
  %5989 = fmul fast float %5985, 2.000000e+00
  %5990 = fsub fast float 3.000000e+00, %5989
  %5991 = fadd fast float %5989, 1.000000e+00
  %5992 = fsub fast float 2.000000e+00, %5985
  %5993 = bitcast float %5990 to i32
  %5994 = sub nsw i32 2129859010, %5993
  %5995 = bitcast i32 %5994 to float
  %5996 = fmul fast float %5995, %5992
  %5997 = fadd fast float %5996, -1.000000e+00
  %5998 = bitcast float %5991 to i32
  %5999 = sub nsw i32 2129859010, %5998
  %6000 = bitcast i32 %5999 to float
  %6001 = fmul fast float %6000, %5985
  %6002 = fadd fast float %6001, 1.000000e+00
  %6003 = fmul fast float %5986, 2.000000e+00
  %6004 = fsub fast float 3.000000e+00, %6003
  %6005 = fadd fast float %6003, 1.000000e+00
  %6006 = fsub fast float 2.000000e+00, %5986
  %6007 = bitcast float %6004 to i32
  %6008 = sub nsw i32 2129859010, %6007
  %6009 = bitcast i32 %6008 to float
  %6010 = fmul fast float %6009, %6006
  %6011 = fadd fast float %6010, -1.000000e+00
  %6012 = bitcast float %6005 to i32
  %6013 = sub nsw i32 2129859010, %6012
  %6014 = bitcast i32 %6013 to float
  %6015 = fmul fast float %6014, %5986
  %6016 = fadd fast float %6015, 1.000000e+00
  %6017 = fadd fast float %5997, %5987
  %6018 = fmul fast float %6017, %5969
  %6019 = fadd fast float %6011, %5988
  %6020 = fmul fast float %6019, %5970
  %6021 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %65, float %6018, float %6020, float undef, float undef, i32 0, i32 0, i32 undef, float %5974)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6022 = extractvalue %dx.types.ResRet.f32 %6021, 0
  %6023 = fmul fast float %6022, %5990
  %6024 = fadd fast float %6002, %5987
  %6025 = fmul fast float %6024, %5969
  %6026 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %65, float %6025, float %6020, float undef, float undef, i32 0, i32 0, i32 undef, float %5974)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6027 = extractvalue %dx.types.ResRet.f32 %6026, 0
  %6028 = fmul fast float %6027, %5991
  %6029 = fadd fast float %6016, %5988
  %6030 = fmul fast float %6029, %5970
  %6031 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %65, float %6018, float %6030, float undef, float undef, i32 0, i32 0, i32 undef, float %5974)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6032 = extractvalue %dx.types.ResRet.f32 %6031, 0
  %6033 = fmul fast float %6032, %5990
  %6034 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %65, float %6025, float %6030, float undef, float undef, i32 0, i32 0, i32 undef, float %5974)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6035 = extractvalue %dx.types.ResRet.f32 %6034, 0
  %6036 = fmul fast float %6035, %5991
  %6037 = fadd fast float %6036, %6033
  %6038 = fmul fast float %6037, %6005
  %6039 = fadd fast float %6028, %6023
  %6040 = fmul fast float %6039, %6004
  %6041 = fadd fast float %6040, %6038
  %6042 = fmul fast float %6041, 6.250000e-02
  br label %6128

; <label>:6043                                    ; preds = %5964
  %6044 = fmul fast float %1357, 0x401921FB60000000
  %6045 = call float @dx.op.unary.f32(i32 13, float %6044)  ; Sin(value)
  %6046 = call float @dx.op.unary.f32(i32 12, float %6044)  ; Cos(value)
  %6047 = fsub fast float -0.000000e+00, %6045
  br label %6048

; <label>:6048                                    ; preds = %6097, %6043
  %6049 = phi float [ 0.000000e+00, %6043 ], [ %6092, %6097 ]
  %6050 = phi float [ 0.000000e+00, %6043 ], [ %6094, %6097 ]
  %6051 = phi i32 [ 0, %6043 ], [ %6098, %6097 ]
  %6052 = mul i32 %6051, 2
  %6053 = add i32 0, %6052
  %6054 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6053
  %6055 = load float, float* %6054, align 4
  %6056 = mul i32 %6051, 2
  %6057 = add i32 1, %6056
  %6058 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6057
  %6059 = load float, float* %6058, align 4
  %6060 = fmul fast float %6055, %6046
  %6061 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6047, float %6060)  ; FMad(a,b,c)
  %6062 = fmul fast float %6055, %6045
  %6063 = call float @dx.op.tertiary.f32(i32 46, float %6059, float %6046, float %6062)  ; FMad(a,b,c)
  %6064 = fmul fast float %6061, %5972
  %6065 = fmul fast float %6063, %5972
  %6066 = fadd fast float %6064, %5094
  %6067 = fadd fast float %6065, %5095
  %6068 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %64, float %6066, float %6067, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6069 = extractvalue %dx.types.ResRet.f32 %6068, 0
  %6070 = extractvalue %dx.types.ResRet.f32 %6068, 1
  %6071 = extractvalue %dx.types.ResRet.f32 %6068, 2
  %6072 = extractvalue %dx.types.ResRet.f32 %6068, 3
  %6073 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %6069, float* %6073, align 4
  %6074 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %6070, float* %6074, align 4
  %6075 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %6071, float* %6075, align 4
  %6076 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %6072, float* %6076, align 4
  %6077 = fsub fast float %6069, %5974
  %6078 = fcmp fast olt float %6077, 0.000000e+00
  %6079 = select i1 %6078, float 0.000000e+00, float 1.000000e+00
  %6080 = fadd fast float %6079, %6049
  %6081 = fmul fast float %6079, %6077
  %6082 = fadd fast float %6081, %6050
  br label %6083

; <label>:6083                                    ; preds = %6083, %6048
  %6084 = phi i32 [ 1, %6048 ], [ %6095, %6083 ]
  %6085 = phi float [ %6082, %6048 ], [ %6094, %6083 ]
  %6086 = phi float [ %6080, %6048 ], [ %6092, %6083 ]
  %6087 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %6084
  %6088 = load float, float* %6087, align 4, !tbaa !108, !noalias !150
  %6089 = fsub fast float %6088, %5974
  %6090 = fcmp fast olt float %6089, 0.000000e+00
  %6091 = select i1 %6090, float 0.000000e+00, float 1.000000e+00
  %6092 = fadd fast float %6091, %6086
  %6093 = fmul fast float %6091, %6089
  %6094 = fadd fast float %6093, %6085
  %6095 = add nuw nsw i32 %6084, 1
  %6096 = icmp eq i32 %6095, 4
  br i1 %6096, label %6097, label %6083, !llvm.loop !155

; <label>:6097                                    ; preds = %6083
  %6098 = add nuw nsw i32 %6051, 1
  %6099 = icmp eq i32 %6098, 8
  br i1 %6099, label %6100, label %6048, !llvm.loop !156

; <label>:6100                                    ; preds = %6097
  %6101 = fdiv fast float 1.000000e+00, %6092
  %6102 = fmul fast float %6101, %6094
  %6103 = fdiv fast float 1.000000e+00, %5974
  %6104 = fmul fast float %6102, %6103
  %6105 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6106 = call float @dx.op.binary.f32(i32 35, float %6105, float 0.000000e+00)  ; FMax(a,b)
  %6107 = fmul fast float %6092, 3.125000e-02
  %6108 = call float @dx.op.unary.f32(i32 7, float %6107)  ; Saturate(value)
  %6109 = fmul fast float %6108, 2.000000e+00
  %6110 = fadd fast float %6109, -1.000000e+00
  %6111 = fcmp fast ogt float %6110, 0.000000e+00
  %6112 = fcmp fast olt float %6110, 0.000000e+00
  %6113 = zext i1 %6111 to i32
  %6114 = zext i1 %6112 to i32
  %6115 = sub nsw i32 %6113, %6114
  %6116 = sitofp i32 %6115 to float
  %6117 = fmul fast float %6116, %6110
  %6118 = fsub fast float 1.000000e+00, %6117
  %6119 = fmul fast float %6118, %6118
  %6120 = fmul fast float %6119, %6118
  %6121 = fsub fast float %6118, %6120
  %6122 = fmul fast float %6121, %6106
  %6123 = fsub fast float 1.000000e+00, %6120
  %6124 = fsub fast float %6123, %6122
  %6125 = fmul fast float %6116, 5.000000e-01
  %6126 = fmul fast float %6125, %6124
  %6127 = fsub fast float 5.000000e-01, %6126
  br label %6128

; <label>:6128                                    ; preds = %6100, %5976, %5961
  %6129 = phi float [ 1.000000e+00, %5961 ], [ %6042, %5976 ], [ %6127, %6100 ]
  %6130 = fcmp fast ogt float %5284, 0.000000e+00
  br i1 %6130, label %6131, label %6295, !dx.controlflow.hints !157

; <label>:6131                                    ; preds = %6128
  %6132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.f32 %6132, 1
  %6134 = fadd fast float %6133, %5206
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 2
  %6137 = extractvalue %dx.types.CBufRet.f32 %6135, 3
  %6138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6139 = extractvalue %dx.types.CBufRet.f32 %6138, 1
  %6140 = call float @dx.op.binary.f32(i32 35, float %6134, float 0.000000e+00)  ; FMax(a,b)
  %6141 = fadd fast float %6140, 0x3F10000000000000
  %6142 = fcmp fast oeq float %6139, 0.000000e+00
  br i1 %6142, label %6143, label %6210

; <label>:6143                                    ; preds = %6131
  %6144 = extractvalue %dx.types.CBufRet.f32 %6135, 1
  %6145 = extractvalue %dx.types.CBufRet.f32 %6135, 0
  %6146 = fmul fast float %6145, %5086
  %6147 = fmul fast float %6144, %5087
  %6148 = fadd fast float %6146, 5.000000e-01
  %6149 = call float @dx.op.unary.f32(i32 27, float %6148)  ; Round_ni(value)
  %6150 = fadd fast float %6147, 5.000000e-01
  %6151 = call float @dx.op.unary.f32(i32 27, float %6150)  ; Round_ni(value)
  %6152 = fsub fast float %6148, %6149
  %6153 = fsub fast float %6150, %6151
  %6154 = fadd fast float %6149, -5.000000e-01
  %6155 = fadd fast float %6151, -5.000000e-01
  %6156 = fmul fast float %6152, 2.000000e+00
  %6157 = fsub fast float 3.000000e+00, %6156
  %6158 = fadd fast float %6156, 1.000000e+00
  %6159 = fsub fast float 2.000000e+00, %6152
  %6160 = bitcast float %6157 to i32
  %6161 = sub nsw i32 2129859010, %6160
  %6162 = bitcast i32 %6161 to float
  %6163 = fmul fast float %6162, %6159
  %6164 = fadd fast float %6163, -1.000000e+00
  %6165 = bitcast float %6158 to i32
  %6166 = sub nsw i32 2129859010, %6165
  %6167 = bitcast i32 %6166 to float
  %6168 = fmul fast float %6167, %6152
  %6169 = fadd fast float %6168, 1.000000e+00
  %6170 = fmul fast float %6153, 2.000000e+00
  %6171 = fsub fast float 3.000000e+00, %6170
  %6172 = fadd fast float %6170, 1.000000e+00
  %6173 = fsub fast float 2.000000e+00, %6153
  %6174 = bitcast float %6171 to i32
  %6175 = sub nsw i32 2129859010, %6174
  %6176 = bitcast i32 %6175 to float
  %6177 = fmul fast float %6176, %6173
  %6178 = fadd fast float %6177, -1.000000e+00
  %6179 = bitcast float %6172 to i32
  %6180 = sub nsw i32 2129859010, %6179
  %6181 = bitcast i32 %6180 to float
  %6182 = fmul fast float %6181, %6153
  %6183 = fadd fast float %6182, 1.000000e+00
  %6184 = fadd fast float %6164, %6154
  %6185 = fmul fast float %6184, %6136
  %6186 = fadd fast float %6178, %6155
  %6187 = fmul fast float %6186, %6137
  %6188 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %6185, float %6187, float undef, float undef, i32 0, i32 0, i32 undef, float %6141)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6189 = extractvalue %dx.types.ResRet.f32 %6188, 0
  %6190 = fmul fast float %6189, %6157
  %6191 = fadd fast float %6169, %6154
  %6192 = fmul fast float %6191, %6136
  %6193 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %6192, float %6187, float undef, float undef, i32 0, i32 0, i32 undef, float %6141)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6194 = extractvalue %dx.types.ResRet.f32 %6193, 0
  %6195 = fmul fast float %6194, %6158
  %6196 = fadd fast float %6183, %6155
  %6197 = fmul fast float %6196, %6137
  %6198 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %6185, float %6197, float undef, float undef, i32 0, i32 0, i32 undef, float %6141)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6199 = extractvalue %dx.types.ResRet.f32 %6198, 0
  %6200 = fmul fast float %6199, %6157
  %6201 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %6192, float %6197, float undef, float undef, i32 0, i32 0, i32 undef, float %6141)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6202 = extractvalue %dx.types.ResRet.f32 %6201, 0
  %6203 = fmul fast float %6202, %6158
  %6204 = fadd fast float %6203, %6200
  %6205 = fmul fast float %6204, %6172
  %6206 = fadd fast float %6195, %6190
  %6207 = fmul fast float %6206, %6171
  %6208 = fadd fast float %6207, %6205
  %6209 = fmul fast float %6208, 6.250000e-02
  br label %6295

; <label>:6210                                    ; preds = %6131
  %6211 = fmul fast float %1357, 0x401921FB60000000
  %6212 = call float @dx.op.unary.f32(i32 13, float %6211)  ; Sin(value)
  %6213 = call float @dx.op.unary.f32(i32 12, float %6211)  ; Cos(value)
  %6214 = fsub fast float -0.000000e+00, %6212
  br label %6215

; <label>:6215                                    ; preds = %6264, %6210
  %6216 = phi float [ 0.000000e+00, %6210 ], [ %6259, %6264 ]
  %6217 = phi float [ 0.000000e+00, %6210 ], [ %6261, %6264 ]
  %6218 = phi i32 [ 0, %6210 ], [ %6265, %6264 ]
  %6219 = mul i32 %6218, 2
  %6220 = add i32 0, %6219
  %6221 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6220
  %6222 = load float, float* %6221, align 4
  %6223 = mul i32 %6218, 2
  %6224 = add i32 1, %6223
  %6225 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6224
  %6226 = load float, float* %6225, align 4
  %6227 = fmul fast float %6222, %6213
  %6228 = call float @dx.op.tertiary.f32(i32 46, float %6226, float %6214, float %6227)  ; FMad(a,b,c)
  %6229 = fmul fast float %6222, %6212
  %6230 = call float @dx.op.tertiary.f32(i32 46, float %6226, float %6213, float %6229)  ; FMad(a,b,c)
  %6231 = fmul fast float %6228, %6139
  %6232 = fmul fast float %6230, %6139
  %6233 = fadd fast float %6231, %5086
  %6234 = fadd fast float %6232, %5087
  %6235 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %64, float %6233, float %6234, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6236 = extractvalue %dx.types.ResRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.ResRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.ResRet.f32 %6235, 2
  %6239 = extractvalue %dx.types.ResRet.f32 %6235, 3
  %6240 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6236, float* %6240, align 4
  %6241 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6237, float* %6241, align 4
  %6242 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6238, float* %6242, align 4
  %6243 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6239, float* %6243, align 4
  %6244 = fsub fast float %6236, %6141
  %6245 = fcmp fast olt float %6244, 0.000000e+00
  %6246 = select i1 %6245, float 0.000000e+00, float 1.000000e+00
  %6247 = fadd fast float %6246, %6216
  %6248 = fmul fast float %6246, %6244
  %6249 = fadd fast float %6248, %6217
  br label %6250

; <label>:6250                                    ; preds = %6250, %6215
  %6251 = phi i32 [ 1, %6215 ], [ %6262, %6250 ]
  %6252 = phi float [ %6249, %6215 ], [ %6261, %6250 ]
  %6253 = phi float [ %6247, %6215 ], [ %6259, %6250 ]
  %6254 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6251
  %6255 = load float, float* %6254, align 4, !tbaa !108, !noalias !150
  %6256 = fsub fast float %6255, %6141
  %6257 = fcmp fast olt float %6256, 0.000000e+00
  %6258 = select i1 %6257, float 0.000000e+00, float 1.000000e+00
  %6259 = fadd fast float %6258, %6253
  %6260 = fmul fast float %6258, %6256
  %6261 = fadd fast float %6260, %6252
  %6262 = add nuw nsw i32 %6251, 1
  %6263 = icmp eq i32 %6262, 4
  br i1 %6263, label %6264, label %6250, !llvm.loop !155

; <label>:6264                                    ; preds = %6250
  %6265 = add nuw nsw i32 %6218, 1
  %6266 = icmp eq i32 %6265, 8
  br i1 %6266, label %6267, label %6215, !llvm.loop !156

; <label>:6267                                    ; preds = %6264
  %6268 = fdiv fast float 1.000000e+00, %6259
  %6269 = fmul fast float %6268, %6261
  %6270 = fdiv fast float 1.000000e+00, %6141
  %6271 = fmul fast float %6269, %6270
  %6272 = call float @dx.op.unary.f32(i32 7, float %6271)  ; Saturate(value)
  %6273 = call float @dx.op.binary.f32(i32 35, float %6272, float 0.000000e+00)  ; FMax(a,b)
  %6274 = fmul fast float %6259, 3.125000e-02
  %6275 = call float @dx.op.unary.f32(i32 7, float %6274)  ; Saturate(value)
  %6276 = fmul fast float %6275, 2.000000e+00
  %6277 = fadd fast float %6276, -1.000000e+00
  %6278 = fcmp fast ogt float %6277, 0.000000e+00
  %6279 = fcmp fast olt float %6277, 0.000000e+00
  %6280 = zext i1 %6278 to i32
  %6281 = zext i1 %6279 to i32
  %6282 = sub nsw i32 %6280, %6281
  %6283 = sitofp i32 %6282 to float
  %6284 = fmul fast float %6283, %6277
  %6285 = fsub fast float 1.000000e+00, %6284
  %6286 = fmul fast float %6285, %6285
  %6287 = fmul fast float %6286, %6285
  %6288 = fsub fast float %6285, %6287
  %6289 = fmul fast float %6288, %6273
  %6290 = fsub fast float 1.000000e+00, %6287
  %6291 = fsub fast float %6290, %6289
  %6292 = fmul fast float %6283, 5.000000e-01
  %6293 = fmul fast float %6292, %6291
  %6294 = fsub fast float 5.000000e-01, %6293
  br label %6295

; <label>:6295                                    ; preds = %6267, %6143, %6128
  %6296 = phi float [ 1.000000e+00, %6128 ], [ %6209, %6143 ], [ %6294, %6267 ]
  %6297 = fcmp fast ogt float %5283, 0.000000e+00
  br i1 %6297, label %6298, label %6462, !dx.controlflow.hints !158

; <label>:6298                                    ; preds = %6295
  %6299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6300 = extractvalue %dx.types.CBufRet.f32 %6299, 0
  %6301 = fadd fast float %6300, %5206
  %6302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6302, 2
  %6304 = extractvalue %dx.types.CBufRet.f32 %6302, 3
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 0
  %6307 = call float @dx.op.binary.f32(i32 35, float %6301, float 0.000000e+00)  ; FMax(a,b)
  %6308 = fadd fast float %6307, 0x3F10000000000000
  %6309 = fcmp fast oeq float %6306, 0.000000e+00
  br i1 %6309, label %6310, label %6377

; <label>:6310                                    ; preds = %6298
  %6311 = extractvalue %dx.types.CBufRet.f32 %6302, 1
  %6312 = extractvalue %dx.types.CBufRet.f32 %6302, 0
  %6313 = fmul fast float %6312, %5072
  %6314 = fmul fast float %6311, %5076
  %6315 = fadd fast float %6313, 5.000000e-01
  %6316 = call float @dx.op.unary.f32(i32 27, float %6315)  ; Round_ni(value)
  %6317 = fadd fast float %6314, 5.000000e-01
  %6318 = call float @dx.op.unary.f32(i32 27, float %6317)  ; Round_ni(value)
  %6319 = fsub fast float %6315, %6316
  %6320 = fsub fast float %6317, %6318
  %6321 = fadd fast float %6316, -5.000000e-01
  %6322 = fadd fast float %6318, -5.000000e-01
  %6323 = fmul fast float %6319, 2.000000e+00
  %6324 = fsub fast float 3.000000e+00, %6323
  %6325 = fadd fast float %6323, 1.000000e+00
  %6326 = fsub fast float 2.000000e+00, %6319
  %6327 = bitcast float %6324 to i32
  %6328 = sub nsw i32 2129859010, %6327
  %6329 = bitcast i32 %6328 to float
  %6330 = fmul fast float %6329, %6326
  %6331 = fadd fast float %6330, -1.000000e+00
  %6332 = bitcast float %6325 to i32
  %6333 = sub nsw i32 2129859010, %6332
  %6334 = bitcast i32 %6333 to float
  %6335 = fmul fast float %6334, %6319
  %6336 = fadd fast float %6335, 1.000000e+00
  %6337 = fmul fast float %6320, 2.000000e+00
  %6338 = fsub fast float 3.000000e+00, %6337
  %6339 = fadd fast float %6337, 1.000000e+00
  %6340 = fsub fast float 2.000000e+00, %6320
  %6341 = bitcast float %6338 to i32
  %6342 = sub nsw i32 2129859010, %6341
  %6343 = bitcast i32 %6342 to float
  %6344 = fmul fast float %6343, %6340
  %6345 = fadd fast float %6344, -1.000000e+00
  %6346 = bitcast float %6339 to i32
  %6347 = sub nsw i32 2129859010, %6346
  %6348 = bitcast i32 %6347 to float
  %6349 = fmul fast float %6348, %6320
  %6350 = fadd fast float %6349, 1.000000e+00
  %6351 = fadd fast float %6331, %6321
  %6352 = fmul fast float %6351, %6303
  %6353 = fadd fast float %6345, %6322
  %6354 = fmul fast float %6353, %6304
  %6355 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %6352, float %6354, float undef, float undef, i32 0, i32 0, i32 undef, float %6308)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6356 = extractvalue %dx.types.ResRet.f32 %6355, 0
  %6357 = fmul fast float %6356, %6324
  %6358 = fadd fast float %6336, %6321
  %6359 = fmul fast float %6358, %6303
  %6360 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %6359, float %6354, float undef, float undef, i32 0, i32 0, i32 undef, float %6308)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6361 = extractvalue %dx.types.ResRet.f32 %6360, 0
  %6362 = fmul fast float %6361, %6325
  %6363 = fadd fast float %6350, %6322
  %6364 = fmul fast float %6363, %6304
  %6365 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %6352, float %6364, float undef, float undef, i32 0, i32 0, i32 undef, float %6308)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6366 = extractvalue %dx.types.ResRet.f32 %6365, 0
  %6367 = fmul fast float %6366, %6324
  %6368 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %6359, float %6364, float undef, float undef, i32 0, i32 0, i32 undef, float %6308)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6369 = extractvalue %dx.types.ResRet.f32 %6368, 0
  %6370 = fmul fast float %6369, %6325
  %6371 = fadd fast float %6370, %6367
  %6372 = fmul fast float %6371, %6339
  %6373 = fadd fast float %6362, %6357
  %6374 = fmul fast float %6373, %6338
  %6375 = fadd fast float %6374, %6372
  %6376 = fmul fast float %6375, 6.250000e-02
  br label %6462

; <label>:6377                                    ; preds = %6298
  %6378 = fmul fast float %1357, 0x401921FB60000000
  %6379 = call float @dx.op.unary.f32(i32 13, float %6378)  ; Sin(value)
  %6380 = call float @dx.op.unary.f32(i32 12, float %6378)  ; Cos(value)
  %6381 = fsub fast float -0.000000e+00, %6379
  br label %6382

; <label>:6382                                    ; preds = %6431, %6377
  %6383 = phi float [ 0.000000e+00, %6377 ], [ %6426, %6431 ]
  %6384 = phi float [ 0.000000e+00, %6377 ], [ %6428, %6431 ]
  %6385 = phi i32 [ 0, %6377 ], [ %6432, %6431 ]
  %6386 = mul i32 %6385, 2
  %6387 = add i32 0, %6386
  %6388 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6387
  %6389 = load float, float* %6388, align 4
  %6390 = mul i32 %6385, 2
  %6391 = add i32 1, %6390
  %6392 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6391
  %6393 = load float, float* %6392, align 4
  %6394 = fmul fast float %6389, %6380
  %6395 = call float @dx.op.tertiary.f32(i32 46, float %6393, float %6381, float %6394)  ; FMad(a,b,c)
  %6396 = fmul fast float %6389, %6379
  %6397 = call float @dx.op.tertiary.f32(i32 46, float %6393, float %6380, float %6396)  ; FMad(a,b,c)
  %6398 = fmul fast float %6395, %6306
  %6399 = fmul fast float %6397, %6306
  %6400 = fadd fast float %6398, %5072
  %6401 = fadd fast float %6399, %5076
  %6402 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %64, float %6400, float %6401, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6403 = extractvalue %dx.types.ResRet.f32 %6402, 0
  %6404 = extractvalue %dx.types.ResRet.f32 %6402, 1
  %6405 = extractvalue %dx.types.ResRet.f32 %6402, 2
  %6406 = extractvalue %dx.types.ResRet.f32 %6402, 3
  %6407 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %6403, float* %6407, align 4
  %6408 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %6404, float* %6408, align 4
  %6409 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %6405, float* %6409, align 4
  %6410 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %6406, float* %6410, align 4
  %6411 = fsub fast float %6403, %6308
  %6412 = fcmp fast olt float %6411, 0.000000e+00
  %6413 = select i1 %6412, float 0.000000e+00, float 1.000000e+00
  %6414 = fadd fast float %6413, %6383
  %6415 = fmul fast float %6413, %6411
  %6416 = fadd fast float %6415, %6384
  br label %6417

; <label>:6417                                    ; preds = %6417, %6382
  %6418 = phi i32 [ 1, %6382 ], [ %6429, %6417 ]
  %6419 = phi float [ %6416, %6382 ], [ %6428, %6417 ]
  %6420 = phi float [ %6414, %6382 ], [ %6426, %6417 ]
  %6421 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %6418
  %6422 = load float, float* %6421, align 4, !tbaa !108, !noalias !150
  %6423 = fsub fast float %6422, %6308
  %6424 = fcmp fast olt float %6423, 0.000000e+00
  %6425 = select i1 %6424, float 0.000000e+00, float 1.000000e+00
  %6426 = fadd fast float %6425, %6420
  %6427 = fmul fast float %6425, %6423
  %6428 = fadd fast float %6427, %6419
  %6429 = add nuw nsw i32 %6418, 1
  %6430 = icmp eq i32 %6429, 4
  br i1 %6430, label %6431, label %6417, !llvm.loop !155

; <label>:6431                                    ; preds = %6417
  %6432 = add nuw nsw i32 %6385, 1
  %6433 = icmp eq i32 %6432, 8
  br i1 %6433, label %6434, label %6382, !llvm.loop !156

; <label>:6434                                    ; preds = %6431
  %6435 = fdiv fast float 1.000000e+00, %6426
  %6436 = fmul fast float %6435, %6428
  %6437 = fdiv fast float 1.000000e+00, %6308
  %6438 = fmul fast float %6436, %6437
  %6439 = call float @dx.op.unary.f32(i32 7, float %6438)  ; Saturate(value)
  %6440 = call float @dx.op.binary.f32(i32 35, float %6439, float 0.000000e+00)  ; FMax(a,b)
  %6441 = fmul fast float %6426, 3.125000e-02
  %6442 = call float @dx.op.unary.f32(i32 7, float %6441)  ; Saturate(value)
  %6443 = fmul fast float %6442, 2.000000e+00
  %6444 = fadd fast float %6443, -1.000000e+00
  %6445 = fcmp fast ogt float %6444, 0.000000e+00
  %6446 = fcmp fast olt float %6444, 0.000000e+00
  %6447 = zext i1 %6445 to i32
  %6448 = zext i1 %6446 to i32
  %6449 = sub nsw i32 %6447, %6448
  %6450 = sitofp i32 %6449 to float
  %6451 = fmul fast float %6450, %6444
  %6452 = fsub fast float 1.000000e+00, %6451
  %6453 = fmul fast float %6452, %6452
  %6454 = fmul fast float %6453, %6452
  %6455 = fsub fast float %6452, %6454
  %6456 = fmul fast float %6455, %6440
  %6457 = fsub fast float 1.000000e+00, %6454
  %6458 = fsub fast float %6457, %6456
  %6459 = fmul fast float %6450, 5.000000e-01
  %6460 = fmul fast float %6459, %6458
  %6461 = fsub fast float 5.000000e-01, %6460
  br label %6462

; <label>:6462                                    ; preds = %6434, %6310, %6295
  %6463 = phi float [ 1.000000e+00, %6295 ], [ %6376, %6310 ], [ %6461, %6434 ]
  %6464 = fsub fast float %6129, %5962
  %6465 = fmul fast float %6464, %5236
  %6466 = fadd fast float %6465, %5962
  %6467 = fsub fast float %6296, %6466
  %6468 = fmul fast float %6467, %5261
  %6469 = fadd fast float %6468, %6466
  %6470 = fsub fast float %6463, %6469
  %6471 = fmul fast float %6470, %5283
  %6472 = fadd fast float %6471, %6469
  %6473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6474 = extractvalue %dx.types.CBufRet.f32 %6473, 2
  %6475 = fcmp fast ogt float %6474, 0.000000e+00
  br i1 %6475, label %6476, label %6516, !dx.controlflow.hints !159

; <label>:6476                                    ; preds = %6462
  %6477 = fcmp fast ugt float %6474, 0.000000e+00
  br i1 %6477, label %6478, label %6513

; <label>:6478                                    ; preds = %6476
  %6479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6479, 0
  %6481 = extractvalue %dx.types.CBufRet.f32 %6479, 1
  %6482 = extractvalue %dx.types.CBufRet.f32 %6479, 2
  %6483 = extractvalue %dx.types.CBufRet.f32 %6479, 3
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.CBufRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.CBufRet.f32 %6484, 2
  %6488 = extractvalue %dx.types.CBufRet.f32 %6484, 3
  %6489 = extractvalue %dx.types.CBufRet.f32 %6473, 0
  %6490 = extractvalue %dx.types.CBufRet.f32 %6473, 1
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.CBufRet.f32 %6491, 1
  %6494 = extractvalue %dx.types.CBufRet.f32 %6491, 2
  %6495 = fadd fast float %6492, %155
  %6496 = fadd fast float %6493, %156
  %6497 = fadd fast float %6494, %157
  %6498 = fmul fast float %6495, %6480
  %6499 = call float @dx.op.tertiary.f32(i32 46, float %6481, float %6496, float %6498)  ; FMad(a,b,c)
  %6500 = call float @dx.op.tertiary.f32(i32 46, float %6482, float %6497, float %6499)  ; FMad(a,b,c)
  %6501 = fadd fast float %6500, %6483
  %6502 = fmul fast float %6495, %6485
  %6503 = call float @dx.op.tertiary.f32(i32 46, float %6486, float %6496, float %6502)  ; FMad(a,b,c)
  %6504 = call float @dx.op.tertiary.f32(i32 46, float %6487, float %6497, float %6503)  ; FMad(a,b,c)
  %6505 = fadd fast float %6504, %6488
  %6506 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %60, float %6501, float %6505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6507 = extractvalue %dx.types.ResRet.f32 %6506, 0
  %6508 = fmul fast float %6507, %6490
  %6509 = fadd fast float %6508, %6489
  %6510 = call float @dx.op.unary.f32(i32 7, float %6509)  ; Saturate(value)
  %6511 = fmul fast float %6510, %6474
  %6512 = fsub fast float 1.000000e+00, %6511
  br label %6513

; <label>:6513                                    ; preds = %6478, %6476
  %6514 = phi float [ %6512, %6478 ], [ 1.000000e+00, %6476 ]
  %6515 = fmul fast float %6514, %6472
  br label %6516

; <label>:6516                                    ; preds = %6513, %6462, %5202
  %6517 = phi float [ 1.000000e+00, %5202 ], [ %6515, %6513 ], [ %6472, %6462 ]
  %6518 = call float @dx.op.binary.f32(i32 36, float %6517, float %6517)  ; FMin(a,b)
  %6519 = call float @dx.op.binary.f32(i32 36, float %6517, float %6518)  ; FMin(a,b)
  %6520 = fcmp fast ogt float %6519, 0.000000e+00
  br i1 %6520, label %6521, label %6686, !dx.controlflow.hints !160

; <label>:6521                                    ; preds = %6516
  %6522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6523 = extractvalue %dx.types.CBufRet.f32 %6522, 0
  %6524 = extractvalue %dx.types.CBufRet.f32 %6522, 1
  %6525 = extractvalue %dx.types.CBufRet.f32 %6522, 2
  %6526 = extractvalue %dx.types.CBufRet.f32 %6522, 3
  %6527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6528 = extractvalue %dx.types.CBufRet.f32 %6527, 0
  %6529 = extractvalue %dx.types.CBufRet.f32 %6527, 1
  %6530 = extractvalue %dx.types.CBufRet.f32 %6527, 2
  %6531 = extractvalue %dx.types.CBufRet.f32 %6527, 3
  %6532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6533 = extractvalue %dx.types.CBufRet.f32 %6532, 0
  %6534 = extractvalue %dx.types.CBufRet.f32 %6532, 1
  %6535 = extractvalue %dx.types.CBufRet.f32 %6532, 2
  %6536 = extractvalue %dx.types.CBufRet.f32 %6532, 3
  %6537 = fmul fast float %6523, %155
  %6538 = call float @dx.op.tertiary.f32(i32 46, float %156, float %6524, float %6537)  ; FMad(a,b,c)
  %6539 = call float @dx.op.tertiary.f32(i32 46, float %157, float %6525, float %6538)  ; FMad(a,b,c)
  %6540 = fadd fast float %6539, %6526
  %6541 = fmul fast float %6528, %155
  %6542 = call float @dx.op.tertiary.f32(i32 46, float %156, float %6529, float %6541)  ; FMad(a,b,c)
  %6543 = call float @dx.op.tertiary.f32(i32 46, float %157, float %6530, float %6542)  ; FMad(a,b,c)
  %6544 = fadd fast float %6543, %6531
  %6545 = fmul fast float %6533, %155
  %6546 = call float @dx.op.tertiary.f32(i32 46, float %156, float %6534, float %6545)  ; FMad(a,b,c)
  %6547 = call float @dx.op.tertiary.f32(i32 46, float %157, float %6535, float %6546)  ; FMad(a,b,c)
  %6548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6549 = extractvalue %dx.types.CBufRet.f32 %6548, 0
  %6550 = extractvalue %dx.types.CBufRet.f32 %6548, 1
  %6551 = extractvalue %dx.types.CBufRet.f32 %6548, 3
  %6552 = fmul fast float %6551, %6540
  %6553 = fmul fast float %6551, %6544
  %6554 = fadd fast float %6552, %6549
  %6555 = fadd fast float %6553, %6550
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 0
  %6558 = extractvalue %dx.types.CBufRet.f32 %6556, 1
  %6559 = fsub fast float %6554, %6557
  %6560 = fsub fast float %6555, %6558
  %6561 = fcmp fast olt float %6559, 0.000000e+00
  %6562 = fcmp fast olt float %6560, 0.000000e+00
  %6563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.f32 %6563, 0
  %6565 = extractvalue %dx.types.CBufRet.f32 %6563, 1
  %6566 = extractvalue %dx.types.CBufRet.f32 %6563, 2
  %6567 = extractvalue %dx.types.CBufRet.f32 %6563, 3
  %6568 = select i1 %6561, float %6564, float %6566
  %6569 = select i1 %6562, float %6565, float %6567
  %6570 = fmul fast float %6568, %6559
  %6571 = fmul fast float %6569, %6560
  %6572 = call float @dx.op.unary.f32(i32 6, float %6570)  ; FAbs(value)
  %6573 = call float @dx.op.unary.f32(i32 6, float %6571)  ; FAbs(value)
  %6574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6575 = extractvalue %dx.types.CBufRet.f32 %6574, 0
  %6576 = call float @dx.op.binary.f32(i32 35, float %6572, float %6573)  ; FMax(a,b)
  %6577 = fsub fast float %6575, %6576
  %6578 = call float @dx.op.unary.f32(i32 7, float %6577)  ; Saturate(value)
  %6579 = fcmp fast ogt float %6578, 0.000000e+00
  br i1 %6579, label %6580, label %6621, !dx.controlflow.hints !161

; <label>:6580                                    ; preds = %6521
  %6581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %63, float %6554, float %6555, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6582 = extractvalue %dx.types.ResRet.f32 %6581, 1
  %6583 = fcmp fast ogt float %6582, 0.000000e+00
  br i1 %6583, label %6584, label %6616

; <label>:6584                                    ; preds = %6580
  %6585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %63, float %6554, float %6555, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6586 = extractvalue %dx.types.ResRet.f32 %6585, 0
  %6587 = extractvalue %dx.types.ResRet.f32 %6585, 1
  %6588 = extractvalue %dx.types.ResRet.f32 %6585, 2
  %6589 = extractvalue %dx.types.ResRet.f32 %6585, 3
  %6590 = fsub fast float 1.000000e+00, %6536
  %6591 = fsub fast float %6590, %6547
  %6592 = fmul fast float %6591, 0x400921FB60000000
  %6593 = fadd fast float %6592, 0x3FF921FB60000000
  %6594 = call float @dx.op.unary.f32(i32 13, float %6593)  ; Sin(value)
  %6595 = fadd fast float %6594, -1.000000e+00
  %6596 = fmul fast float %6595, 0x3FD45F3060000000
  %6597 = fmul fast float %6591, 0x401921FB60000000
  %6598 = fadd fast float %6597, 0x400921FB60000000
  %6599 = call float @dx.op.unary.f32(i32 13, float %6598)  ; Sin(value)
  %6600 = fadd fast float %6599, 0x3E7777A5C0000000
  %6601 = fmul fast float %6600, 0x3FC45F3060000000
  %6602 = fmul fast float %6591, 0x4022D97C80000000
  %6603 = fadd fast float %6602, 0x4012D97C80000000
  %6604 = call float @dx.op.unary.f32(i32 13, float %6603)  ; Sin(value)
  %6605 = fadd fast float %6604, 1.000000e+00
  %6606 = fmul fast float %6605, 0x3FBB2995E0000000
  %6607 = fmul fast float %6591, 0x402921FB60000000
  %6608 = fadd fast float %6607, 0x401921FB60000000
  %6609 = call float @dx.op.unary.f32(i32 13, float %6608)  ; Sin(value)
  %6610 = fadd fast float %6609, 0xBE8777A5C0000000
  %6611 = fmul fast float %6610, 0x3FB45F3060000000
  %6612 = call float @dx.op.dot4.f32(i32 56, float %6586, float %6587, float %6588, float %6589, float %6596, float %6601, float %6606, float %6611)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6613 = fmul fast float %6612, 0xBFF7154760000000
  %6614 = call float @dx.op.unary.f32(i32 21, float %6613)  ; Exp(value)
  %6615 = call float @dx.op.unary.f32(i32 7, float %6614)  ; Saturate(value)
  br label %6616

; <label>:6616                                    ; preds = %6584, %6580
  %6617 = phi float [ %6615, %6584 ], [ 1.000000e+00, %6580 ]
  %6618 = fadd fast float %6617, -1.000000e+00
  %6619 = fmul fast float %6618, %6578
  %6620 = fadd fast float %6619, 1.000000e+00
  br label %6621

; <label>:6621                                    ; preds = %6616, %6521
  %6622 = phi float [ %6620, %6616 ], [ 1.000000e+00, %6521 ]
  %6623 = fmul fast float %6622, %6517
  %6624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6624, 0
  %6626 = extractvalue %dx.types.CBufRet.f32 %6624, 1
  %6627 = extractvalue %dx.types.CBufRet.f32 %6624, 2
  %6628 = fadd fast float %6625, %155
  %6629 = fadd fast float %6626, %156
  %6630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6631 = extractvalue %dx.types.CBufRet.f32 %6630, 1
  %6632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6633 = extractvalue %dx.types.CBufRet.f32 %6632, 0
  %6634 = extractvalue %dx.types.CBufRet.f32 %6632, 1
  %6635 = extractvalue %dx.types.CBufRet.f32 %6632, 2
  %6636 = fsub fast float -0.000000e+00, %6628
  %6637 = fsub fast float -0.000000e+00, %6629
  %6638 = fsub fast float %2108, %6627
  %6639 = fadd fast float %6638, %6631
  %6640 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6636, float %6637, float %6639)  ; Dot3(ax,ay,az,bx,by,bz)
  %6641 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6633, float %6634, float %6635)  ; Dot3(ax,ay,az,bx,by,bz)
  %6642 = fdiv fast float 1.000000e+00, %6641
  %6643 = fmul fast float %6642, %6640
  %6644 = fmul fast float %6633, %6643
  %6645 = fmul fast float %6634, %6643
  %6646 = fadd fast float %6644, %6628
  %6647 = fadd fast float %6645, %6629
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 0
  %6650 = extractvalue %dx.types.CBufRet.f32 %6648, 1
  %6651 = fsub fast float %6646, %6649
  %6652 = fsub fast float %6647, %6650
  %6653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6653, 2
  %6655 = extractvalue %dx.types.CBufRet.f32 %6653, 3
  %6656 = fmul fast float %6651, %6654
  %6657 = fmul fast float %6652, %6655
  %6658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6659 = extractvalue %dx.types.CBufRet.i32 %6658, 3
  %6660 = icmp eq i32 %6659, 0
  br i1 %6660, label %6666, label %6661

; <label>:6661                                    ; preds = %6621
  %6662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %62, float %6656, float %6657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6663 = extractvalue %dx.types.ResRet.f32 %6662, 0
  %6664 = extractvalue %dx.types.ResRet.f32 %6662, 1
  %6665 = extractvalue %dx.types.ResRet.f32 %6662, 2
  br label %6671

; <label>:6666                                    ; preds = %6621
  %6667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %6656, float %6657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6668 = extractvalue %dx.types.ResRet.f32 %6667, 0
  %6669 = extractvalue %dx.types.ResRet.f32 %6667, 1
  %6670 = extractvalue %dx.types.ResRet.f32 %6667, 2
  br label %6671

; <label>:6671                                    ; preds = %6666, %6661
  %6672 = phi float [ %6663, %6661 ], [ %6668, %6666 ]
  %6673 = phi float [ %6664, %6661 ], [ %6669, %6666 ]
  %6674 = phi float [ %6665, %6661 ], [ %6670, %6666 ]
  %6675 = extractvalue %dx.types.CBufRet.f32 %6630, 2
  %6676 = fmul fast float %6675, %6672
  %6677 = extractvalue %dx.types.CBufRet.f32 %6630, 0
  %6678 = fsub fast float %6643, %6677
  %6679 = fsub fast float %6678, %6676
  %6680 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6679)  ; FMax(a,b)
  %6681 = fmul fast float %6680, %6673
  %6682 = call float @dx.op.binary.f32(i32 36, float %6674, float %6681)  ; FMin(a,b)
  %6683 = fmul fast float %6682, 0xBFF7154760000000
  %6684 = call float @dx.op.unary.f32(i32 21, float %6683)  ; Exp(value)
  %6685 = fmul fast float %6623, %6684
  br label %6686

; <label>:6686                                    ; preds = %6671, %6516
  %6687 = phi float [ %6685, %6671 ], [ %6517, %6516 ]
  %6688 = call float @dx.op.binary.f32(i32 36, float %6687, float %6687)  ; FMin(a,b)
  %6689 = call float @dx.op.binary.f32(i32 36, float %6687, float %6688)  ; FMin(a,b)
  %6690 = fcmp fast ogt float %6689, 0.000000e+00
  br i1 %6690, label %6691, label %6921, !dx.controlflow.hints !162

; <label>:6691                                    ; preds = %6686
  %6692 = fmul fast float %6687, %5051
  %6693 = fmul fast float %6687, %5052
  %6694 = fmul fast float %6687, %5053
  %6695 = fsub fast float %5040, %1911
  %6696 = fsub fast float %5041, %1912
  %6697 = fsub fast float %5042, %1913
  %6698 = call float @dx.op.dot3.f32(i32 55, float %6695, float %6696, float %6697, float %6695, float %6696, float %6697)  ; Dot3(ax,ay,az,bx,by,bz)
  %6699 = call float @dx.op.unary.f32(i32 25, float %6698)  ; Rsqrt(value)
  %6700 = fmul fast float %6699, %6695
  %6701 = fmul fast float %6699, %6696
  %6702 = fmul fast float %6699, %6697
  %6703 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5041, float %5042, float %1883, float %1884, float %1885)  ; Dot3(ax,ay,az,bx,by,bz)
  %6704 = call float @dx.op.dot3.f32(i32 55, float %1963, float %1964, float %1965, float %6700, float %6701, float %6702)  ; Dot3(ax,ay,az,bx,by,bz)
  %6705 = call float @dx.op.unary.f32(i32 7, float %6703)  ; Saturate(value)
  %6706 = fmul fast float %6705, %6705
  %6707 = fmul fast float %6706, %2145
  %6708 = call float @dx.op.unary.f32(i32 7, float %6707)  ; Saturate(value)
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 0
  %6711 = bitcast float %6710 to i32
  %6712 = lshr i32 %6711, 8
  %6713 = and i32 %6712, 255
  %6714 = uitofp i32 %6713 to float
  %6715 = fptoui float %6714 to i32
  %6716 = and i32 %6715, 8
  %6717 = icmp ne i32 %6716, 0
  %6718 = select i1 %6717, float %6708, float 1.000000e+00
  %6719 = fmul fast float %6718, %6705
  %6720 = call float @dx.op.dot3.f32(i32 55, float %1883, float %1884, float %1885, float %6700, float %6701, float %6702)  ; Dot3(ax,ay,az,bx,by,bz)
  %6721 = fmul fast float %6720, %6720
  %6722 = call float @dx.op.unary.f32(i32 6, float %6703)  ; FAbs(value)
  %6723 = fsub fast float 1.000000e+00, %2136
  %6724 = fmul fast float %1967, %1967
  %6725 = fmul fast float %6724, %6723
  %6726 = fadd fast float %6725, %2136
  %6727 = bitcast float %6726 to i32
  %6728 = ashr i32 %6727, 1
  %6729 = add nsw i32 %6728, 532487669
  %6730 = bitcast i32 %6729 to float
  %6731 = fadd fast float %6730, %1967
  %6732 = fmul fast float %2136, %6721
  %6733 = fsub fast float 1.000000e+00, %6721
  %6734 = fadd fast float %6733, %6732
  %6735 = fmul fast float %6722, %6722
  %6736 = fmul fast float %6735, %6723
  %6737 = fadd fast float %6736, %2136
  %6738 = bitcast float %6737 to i32
  %6739 = ashr i32 %6738, 1
  %6740 = add nsw i32 %6739, 532487669
  %6741 = bitcast i32 %6740 to float
  %6742 = fadd fast float %6741, %6722
  %6743 = fmul fast float %6734, %6734
  %6744 = fmul fast float %6743, %6731
  %6745 = fmul fast float %6744, %6742
  %6746 = fdiv fast float 0x3FF0A00000000000, %6745
  %6747 = fmul fast float %6746, %2136
  %6748 = call float @dx.op.unary.f32(i32 6, float %6704)  ; FAbs(value)
  %6749 = fsub fast float 1.000000e+00, %6748
  %6750 = bitcast float %6749 to i32
  %6751 = sitofp i32 %6750 to float
  %6752 = fmul fast float %6751, 5.000000e+00
  %6753 = fadd fast float %6752, 0xC1EFBF8940000000
  %6754 = fptosi float %6753 to i32
  %6755 = bitcast i32 %6754 to float
  %6756 = fmul fast float %6755, %1968
  %6757 = fmul fast float %6755, %1969
  %6758 = fmul fast float %6755, %3210
  %6759 = fadd fast float %6756, %1904
  %6760 = fadd fast float %6757, %1905
  %6761 = fadd fast float %6758, %2109
  %6762 = select i1 %3213, float %6748, float 0.000000e+00
  %6763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %63, float %1978, float %6762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6764 = extractvalue %dx.types.ResRet.f32 %6763, 0
  %6765 = extractvalue %dx.types.ResRet.f32 %6763, 1
  %6766 = extractvalue %dx.types.ResRet.f32 %6763, 2
  %6767 = fadd fast float %6764, -5.000000e-01
  %6768 = fadd fast float %6765, -5.000000e-01
  %6769 = fadd fast float %6766, -5.000000e-01
  %6770 = fmul fast float %1997, %6767
  %6771 = fmul fast float %2001, %6768
  %6772 = fmul fast float %3226, %6769
  %6773 = fadd fast float %6759, %6770
  %6774 = fadd fast float %6760, %6771
  %6775 = fadd fast float %6761, %6772
  %6776 = call float @dx.op.unary.f32(i32 7, float %6773)  ; Saturate(value)
  %6777 = call float @dx.op.unary.f32(i32 7, float %6774)  ; Saturate(value)
  %6778 = call float @dx.op.unary.f32(i32 7, float %6775)  ; Saturate(value)
  %6779 = fmul fast float %6703, 9.843750e-01
  %6780 = fmul fast float %2053, 9.843750e-01
  %6781 = fadd fast float %6779, 7.812500e-03
  %6782 = fadd fast float %6780, 7.812500e-03
  %6783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %6781, float %6782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6784 = extractvalue %dx.types.ResRet.f32 %6783, 2
  %6785 = extractvalue %dx.types.ResRet.f32 %6783, 3
  %6786 = select i1 %3213, float %6703, float 0.000000e+00
  %6787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %63, float %1978, float %6786, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6788 = extractvalue %dx.types.ResRet.f32 %6787, 0
  %6789 = extractvalue %dx.types.ResRet.f32 %6787, 1
  %6790 = extractvalue %dx.types.ResRet.f32 %6787, 2
  %6791 = fadd fast float %6788, -5.000000e-01
  %6792 = fadd fast float %6789, -5.000000e-01
  %6793 = fadd fast float %6790, -5.000000e-01
  %6794 = fmul fast float %1968, 4.000000e+00
  %6795 = fmul fast float %6794, %1980
  %6796 = fmul fast float %6795, %6791
  %6797 = fmul fast float %1969, 4.000000e+00
  %6798 = fmul fast float %6797, %1980
  %6799 = fmul fast float %6798, %6792
  %6800 = fmul fast float %3210, 4.000000e+00
  %6801 = fmul fast float %6800, %1980
  %6802 = fmul fast float %6801, %6793
  %6803 = fadd fast float %6796, %6784
  %6804 = fmul fast float %6803, %1904
  %6805 = fadd fast float %6804, %6785
  %6806 = fadd fast float %6799, %6784
  %6807 = fmul fast float %6806, %1905
  %6808 = fadd fast float %6807, %6785
  %6809 = fadd fast float %6802, %6784
  %6810 = fmul fast float %6809, %2109
  %6811 = fadd fast float %6810, %6785
  %6812 = call float @dx.op.unary.f32(i32 7, float %6805)  ; Saturate(value)
  %6813 = call float @dx.op.unary.f32(i32 7, float %6808)  ; Saturate(value)
  %6814 = call float @dx.op.unary.f32(i32 7, float %6811)  ; Saturate(value)
  %6815 = call float @dx.op.binary.f32(i32 35, float %6813, float %6814)  ; FMax(a,b)
  %6816 = call float @dx.op.binary.f32(i32 35, float %6812, float %6815)  ; FMax(a,b)
  %6817 = fsub fast float 1.000000e+00, %6816
  %6818 = fsub fast float -0.000000e+00, %1883
  %6819 = fsub fast float -0.000000e+00, %1884
  %6820 = fsub fast float -0.000000e+00, %1885
  %6821 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5041, float %5042, float %6818, float %6819, float %6820)  ; Dot3(ax,ay,az,bx,by,bz)
  %6822 = call float @dx.op.unary.f32(i32 7, float %6821)  ; Saturate(value)
  %6823 = fmul fast float %6822, 9.843750e-01
  %6824 = fadd fast float %6823, 7.812500e-03
  %6825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %6824, float %6782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6826 = extractvalue %dx.types.ResRet.f32 %6825, 2
  %6827 = extractvalue %dx.types.ResRet.f32 %6825, 3
  %6828 = select i1 %3213, float %6822, float 0.000000e+00
  %6829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %63, float %1978, float %6828, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6830 = extractvalue %dx.types.ResRet.f32 %6829, 0
  %6831 = extractvalue %dx.types.ResRet.f32 %6829, 1
  %6832 = extractvalue %dx.types.ResRet.f32 %6829, 2
  %6833 = fadd fast float %6830, -5.000000e-01
  %6834 = fadd fast float %6831, -5.000000e-01
  %6835 = fadd fast float %6832, -5.000000e-01
  %6836 = fmul fast float %6795, %6833
  %6837 = fmul fast float %6798, %6834
  %6838 = fmul fast float %6801, %6835
  %6839 = fadd fast float %6836, %6826
  %6840 = fmul fast float %6839, %1904
  %6841 = fadd fast float %6840, %6827
  %6842 = fadd fast float %6837, %6826
  %6843 = fmul fast float %6842, %1905
  %6844 = fadd fast float %6843, %6827
  %6845 = fadd fast float %6838, %6826
  %6846 = fmul fast float %6845, %2109
  %6847 = fadd fast float %6846, %6827
  %6848 = call float @dx.op.unary.f32(i32 7, float %6841)  ; Saturate(value)
  %6849 = call float @dx.op.unary.f32(i32 7, float %6844)  ; Saturate(value)
  %6850 = call float @dx.op.unary.f32(i32 7, float %6847)  ; Saturate(value)
  %6851 = call float @dx.op.binary.f32(i32 35, float %6849, float %6850)  ; FMax(a,b)
  %6852 = call float @dx.op.binary.f32(i32 35, float %6848, float %6851)  ; FMax(a,b)
  %6853 = fsub fast float 1.000000e+00, %6852
  %6854 = fmul fast float %1905, 0x4012D0A400000000
  %6855 = fadd fast float %6854, 0x3FDB6377A0000000
  %6856 = fmul fast float %2133, %6855
  %6857 = call float @dx.op.unary.f32(i32 7, float %6856)  ; Saturate(value)
  %6858 = fsub fast float %5040, %2114
  %6859 = fsub fast float %5041, %2115
  %6860 = fsub fast float %5042, %2116
  %6861 = call float @dx.op.dot3.f32(i32 55, float %6858, float %6859, float %6860, float %6858, float %6859, float %6860)  ; Dot3(ax,ay,az,bx,by,bz)
  %6862 = call float @dx.op.unary.f32(i32 25, float %6861)  ; Rsqrt(value)
  %6863 = fmul fast float %6862, %6858
  %6864 = fmul fast float %6862, %6859
  %6865 = fmul fast float %6862, %6860
  %6866 = call float @dx.op.dot3.f32(i32 55, float %6818, float %6819, float %6820, float %6863, float %6864, float %6865)  ; Dot3(ax,ay,az,bx,by,bz)
  %6867 = fmul fast float %6866, %6866
  %6868 = call float @dx.op.unary.f32(i32 6, float %6822)  ; FAbs(value)
  %6869 = call float @dx.op.binary.f32(i32 35, float %6857, float 0x3F847AE140000000)  ; FMax(a,b)
  %6870 = fmul fast float %6869, %6869
  %6871 = fmul fast float %6870, %6870
  %6872 = fsub fast float 1.000000e+00, %6871
  %6873 = fmul fast float %6724, %6872
  %6874 = fadd fast float %6873, %6871
  %6875 = bitcast float %6874 to i32
  %6876 = ashr i32 %6875, 1
  %6877 = add nsw i32 %6876, 532487669
  %6878 = bitcast i32 %6877 to float
  %6879 = fadd fast float %6878, %1967
  %6880 = fmul fast float %6871, %6867
  %6881 = fsub fast float 1.000000e+00, %6867
  %6882 = fadd fast float %6881, %6880
  %6883 = fmul fast float %6868, %6868
  %6884 = fmul fast float %6883, %6872
  %6885 = fadd fast float %6884, %6871
  %6886 = bitcast float %6885 to i32
  %6887 = ashr i32 %6886, 1
  %6888 = add nsw i32 %6887, 532487669
  %6889 = bitcast i32 %6888 to float
  %6890 = fadd fast float %6889, %6868
  %6891 = fmul fast float %6882, %6882
  %6892 = fmul fast float %6891, %6879
  %6893 = fmul fast float %6892, %6890
  %6894 = fdiv fast float 0x3FF0A00000000000, %6893
  %6895 = fmul fast float %6894, %6871
  %6896 = fmul fast float %6853, %6822
  %6897 = fmul fast float %6896, %6895
  %6898 = fmul fast float %6817, %6719
  %6899 = fmul fast float %6719, %6747
  %6900 = fmul fast float %6899, %6776
  %6901 = fmul fast float %6899, %6777
  %6902 = fmul fast float %6899, %6778
  %6903 = fadd fast float %6897, %6900
  %6904 = fadd fast float %6897, %6901
  %6905 = fadd fast float %6897, %6902
  %6906 = fmul fast float %6898, %6692
  %6907 = fmul fast float %6898, %6693
  %6908 = fmul fast float %6898, %6694
  %6909 = fadd fast float %6906, %5027
  %6910 = fadd fast float %6907, %5028
  %6911 = fadd fast float %6908, %5029
  %6912 = fmul fast float %6903, %6692
  %6913 = fmul fast float %6904, %6693
  %6914 = fmul fast float %6905, %6694
  %6915 = fadd fast float %6912, %5033
  %6916 = fadd fast float %6913, %5034
  %6917 = fadd fast float %6914, %5035
  %6918 = fadd fast float %6912, %5030
  %6919 = fadd fast float %6913, %5031
  %6920 = fadd fast float %6914, %5032
  br label %6921

; <label>:6921                                    ; preds = %6691, %6686, %5021
  %6922 = phi i32 [ %5203, %6691 ], [ %5023, %5021 ], [ %5203, %6686 ]
  %6923 = phi i32 [ 1, %6691 ], [ 0, %5021 ], [ 0, %6686 ]
  %6924 = phi float [ %6912, %6691 ], [ 0.000000e+00, %5021 ], [ 0.000000e+00, %6686 ]
  %6925 = phi float [ %6913, %6691 ], [ 0.000000e+00, %5021 ], [ 0.000000e+00, %6686 ]
  %6926 = phi float [ %6914, %6691 ], [ 0.000000e+00, %5021 ], [ 0.000000e+00, %6686 ]
  %6927 = phi float [ %6906, %6691 ], [ 0.000000e+00, %5021 ], [ 0.000000e+00, %6686 ]
  %6928 = phi float [ %6907, %6691 ], [ 0.000000e+00, %5021 ], [ 0.000000e+00, %6686 ]
  %6929 = phi float [ %6908, %6691 ], [ 0.000000e+00, %5021 ], [ 0.000000e+00, %6686 ]
  %6930 = phi float [ %6918, %6691 ], [ %5030, %5021 ], [ %5030, %6686 ]
  %6931 = phi float [ %6919, %6691 ], [ %5031, %5021 ], [ %5031, %6686 ]
  %6932 = phi float [ %6920, %6691 ], [ %5032, %5021 ], [ %5032, %6686 ]
  %6933 = phi float [ %6909, %6691 ], [ %5027, %5021 ], [ %5027, %6686 ]
  %6934 = phi float [ %6910, %6691 ], [ %5028, %5021 ], [ %5028, %6686 ]
  %6935 = phi float [ %6911, %6691 ], [ %5029, %5021 ], [ %5029, %6686 ]
  %6936 = phi float [ %6687, %6691 ], [ 0.000000e+00, %5021 ], [ 0.000000e+00, %6686 ]
  %6937 = phi float [ %6915, %6691 ], [ %5033, %5021 ], [ %5033, %6686 ]
  %6938 = phi float [ %6916, %6691 ], [ %5034, %5021 ], [ %5034, %6686 ]
  %6939 = phi float [ %6917, %6691 ], [ %5035, %5021 ], [ %5035, %6686 ]
  %6940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.i32 %6940, 0
  %6942 = icmp eq i32 %6941, 0
  br i1 %6942, label %7998, label %6943

; <label>:6943                                    ; preds = %6921
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6946 = extractvalue %dx.types.CBufRet.f32 %6944, 3
  %6947 = fmul fast float %6945, %100
  %6948 = fmul fast float %6946, %101
  %6949 = fptoui float %6947 to i32
  %6950 = fptoui float %6948 to i32
  %6951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6952 = extractvalue %dx.types.CBufRet.f32 %6951, 0
  %6953 = extractvalue %dx.types.CBufRet.f32 %6951, 2
  %6954 = extractvalue %dx.types.CBufRet.f32 %6951, 3
  %6955 = fadd fast float %89, -4.000000e+00
  %6956 = call float @dx.op.binary.f32(i32 35, float %6955, float 0.000000e+00)  ; FMax(a,b)
  %6957 = fadd fast float %6956, %6952
  %6958 = fmul fast float %6957, %6953
  %6959 = call float @dx.op.unary.f32(i32 23, float %6958)  ; Log(value)
  %6960 = fmul fast float %6959, %6954
  %6961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6962 = extractvalue %dx.types.CBufRet.f32 %6961, 2
  %6963 = fmul fast float %6960, %6962
  %6964 = call float @dx.op.unary.f32(i32 7, float %6963)  ; Saturate(value)
  %6965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.i32 %6965, 1
  %6967 = add i32 %6966, -1
  %6968 = uitofp i32 %6966 to float
  %6969 = fmul fast float %6968, %6964
  %6970 = fptoui float %6969 to i32
  %6971 = call i32 @dx.op.binary.i32(i32 40, i32 %6970, i32 %6967)  ; UMin(a,b)
  %6972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.i32 %6972, 2
  %6974 = extractvalue %dx.types.CBufRet.i32 %6972, 3
  %6975 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6950, i32 %6973, i32 %6949)  ; UMad(a,b,c)
  %6976 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6971, i32 %6974, i32 %6975)  ; UMad(a,b,c)
  %6977 = add nsw i32 %6941, -1
  %6978 = call i32 @dx.op.binary.i32(i32 37, i32 %6977, i32 0)  ; IMax(a,b)
  %6979 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %6980 = fptoui float %6979 to i32
  %6981 = lshr i32 %6980, 5
  %6982 = call i32 @dx.op.binary.i32(i32 40, i32 %6981, i32 8191)  ; UMin(a,b)
  %6983 = shl i32 %6982, 2
  %6984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6983, i32 undef)  ; BufferLoad(srv,index,wot)
  %6985 = extractvalue %dx.types.ResRet.i32 %6984, 0
  %6986 = lshr i32 %6985, 16
  %6987 = and i32 %6985, 65535
  %6988 = lshr i32 %6985, 21
  %6989 = lshr i32 %6987, 5
  %6990 = call i32 @dx.op.binary.i32(i32 40, i32 %6989, i32 %6978)  ; UMin(a,b)
  %6991 = icmp ugt i32 %6988, %6990
  br i1 %6991, label %7931, label %6992

; <label>:6992                                    ; preds = %6943
  br label %6993

; <label>:6993                                    ; preds = %7900, %6992
  %6994 = phi i32 [ %7901, %7900 ], [ %6922, %6992 ]
  %6995 = phi i32 [ %7902, %7900 ], [ 0, %6992 ]
  %6996 = phi i32 [ %7903, %7900 ], [ 0, %6992 ]
  %6997 = phi i32 [ %7904, %7900 ], [ 0, %6992 ]
  %6998 = phi i32 [ %7905, %7900 ], [ 0, %6992 ]
  %6999 = phi i32 [ %7906, %7900 ], [ 0, %6992 ]
  %7000 = phi i32 [ %7907, %7900 ], [ 0, %6992 ]
  %7001 = phi i32 [ %7908, %7900 ], [ 0, %6992 ]
  %7002 = phi i32 [ %7909, %7900 ], [ 0, %6992 ]
  %7003 = phi i32 [ %7928, %7900 ], [ %6988, %6992 ]
  %7004 = phi float [ %7910, %7900 ], [ %6924, %6992 ]
  %7005 = phi float [ %7911, %7900 ], [ %6925, %6992 ]
  %7006 = phi float [ %7912, %7900 ], [ %6926, %6992 ]
  %7007 = phi float [ %7913, %7900 ], [ %6927, %6992 ]
  %7008 = phi float [ %7914, %7900 ], [ %6928, %6992 ]
  %7009 = phi float [ %7915, %7900 ], [ %6929, %6992 ]
  %7010 = phi float [ %7916, %7900 ], [ %6930, %6992 ]
  %7011 = phi float [ %7917, %7900 ], [ %6931, %6992 ]
  %7012 = phi float [ %7918, %7900 ], [ %6932, %6992 ]
  %7013 = phi float [ %7919, %7900 ], [ %6933, %6992 ]
  %7014 = phi float [ %7920, %7900 ], [ %6934, %6992 ]
  %7015 = phi float [ %7921, %7900 ], [ %6935, %6992 ]
  %7016 = phi float [ %7922, %7900 ], [ %6937, %6992 ]
  %7017 = phi float [ %7923, %7900 ], [ %6938, %6992 ]
  %7018 = phi float [ %7924, %7900 ], [ %6939, %6992 ]
  %7019 = phi float [ %7925, %7900 ], [ %6933, %6992 ]
  %7020 = phi float [ %7926, %7900 ], [ %6934, %6992 ]
  %7021 = phi float [ %7927, %7900 ], [ %6935, %6992 ]
  %7022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7023 = extractvalue %dx.types.CBufRet.i32 %7022, 0
  %7024 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6976, i32 %7023, i32 %7003)  ; UMad(a,b,c)
  %7025 = shl i32 %7024, 2
  %7026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7025, i32 undef)  ; BufferLoad(srv,index,wot)
  %7027 = extractvalue %dx.types.ResRet.i32 %7026, 0
  %7028 = shl i32 %7003, 5
  %7029 = sub nsw i32 %6986, %7028
  %7030 = call i32 @dx.op.binary.i32(i32 37, i32 %7029, i32 0)  ; IMax(a,b)
  %7031 = call i32 @dx.op.binary.i32(i32 38, i32 %7030, i32 31)  ; IMin(a,b)
  %7032 = sub nsw i32 1, %6986
  %7033 = add nsw i32 %7032, %6987
  %7034 = call i32 @dx.op.binary.i32(i32 37, i32 %7033, i32 0)  ; IMax(a,b)
  %7035 = call i32 @dx.op.binary.i32(i32 38, i32 %7034, i32 32)  ; IMin(a,b)
  %7036 = and i32 %7035, 31
  %7037 = shl i32 -1, %7036
  %7038 = xor i32 %7037, -1
  %7039 = and i32 %7031, 31
  %7040 = shl i32 %7038, %7039
  %7041 = icmp eq i32 %7035, 32
  %7042 = select i1 %7041, i32 -1, i32 %7040
  %7043 = and i32 %7042, %7027
  %7044 = icmp eq i32 %7043, 0
  br i1 %7044, label %7900, label %7045

; <label>:7045                                    ; preds = %6993
  br label %7046

; <label>:7046                                    ; preds = %7241, %7045
  %7047 = phi i32 [ %7242, %7241 ], [ %6994, %7045 ]
  %7048 = phi i32 [ %7231, %7241 ], [ %6995, %7045 ]
  %7049 = phi i32 [ %7233, %7241 ], [ %6996, %7045 ]
  %7050 = phi i32 [ %7235, %7241 ], [ %6997, %7045 ]
  %7051 = phi i32 [ %7237, %7241 ], [ %6998, %7045 ]
  %7052 = phi i32 [ %7243, %7241 ], [ %6999, %7045 ]
  %7053 = phi i32 [ %7244, %7241 ], [ %7000, %7045 ]
  %7054 = phi i32 [ %7245, %7241 ], [ %7001, %7045 ]
  %7055 = phi i32 [ %7246, %7241 ], [ %7002, %7045 ]
  %7056 = phi i32 [ %7079, %7241 ], [ %7043, %7045 ]
  %7057 = phi float [ %7247, %7241 ], [ %7004, %7045 ]
  %7058 = phi float [ %7248, %7241 ], [ %7005, %7045 ]
  %7059 = phi float [ %7249, %7241 ], [ %7006, %7045 ]
  %7060 = phi float [ %7250, %7241 ], [ %7007, %7045 ]
  %7061 = phi float [ %7251, %7241 ], [ %7008, %7045 ]
  %7062 = phi float [ %7252, %7241 ], [ %7009, %7045 ]
  %7063 = phi float [ %7253, %7241 ], [ %7010, %7045 ]
  %7064 = phi float [ %7254, %7241 ], [ %7011, %7045 ]
  %7065 = phi float [ %7255, %7241 ], [ %7012, %7045 ]
  %7066 = phi float [ %7256, %7241 ], [ %7013, %7045 ]
  %7067 = phi float [ %7257, %7241 ], [ %7014, %7045 ]
  %7068 = phi float [ %7258, %7241 ], [ %7015, %7045 ]
  %7069 = phi float [ %7259, %7241 ], [ %7016, %7045 ]
  %7070 = phi float [ %7260, %7241 ], [ %7017, %7045 ]
  %7071 = phi float [ %7261, %7241 ], [ %7018, %7045 ]
  %7072 = phi float [ %7262, %7241 ], [ %7019, %7045 ]
  %7073 = phi float [ %7263, %7241 ], [ %7020, %7045 ]
  %7074 = phi float [ %7264, %7241 ], [ %7021, %7045 ]
  %7075 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7056)  ; FirstbitLo(value)
  %7076 = add i32 %7075, %7028
  %7077 = and i32 %7075, 31
  %7078 = shl i32 1, %7077
  %7079 = xor i32 %7078, %7056
  %7080 = mul i32 %7076, 112
  %7081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7080, i32 undef)  ; BufferLoad(srv,index,wot)
  %7082 = extractvalue %dx.types.ResRet.f32 %7081, 0
  %7083 = extractvalue %dx.types.ResRet.f32 %7081, 1
  %7084 = extractvalue %dx.types.ResRet.f32 %7081, 2
  %7085 = or i32 %7080, 12
  %7086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7085, i32 undef)  ; BufferLoad(srv,index,wot)
  %7087 = extractvalue %dx.types.ResRet.f32 %7086, 0
  %7088 = add i32 %7080, 16
  %7089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7088, i32 undef)  ; BufferLoad(srv,index,wot)
  %7090 = extractvalue %dx.types.ResRet.f32 %7089, 0
  %7091 = extractvalue %dx.types.ResRet.f32 %7089, 1
  %7092 = extractvalue %dx.types.ResRet.f32 %7089, 2
  %7093 = add i32 %7080, 28
  %7094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %7093, i32 undef)  ; BufferLoad(srv,index,wot)
  %7095 = extractvalue %dx.types.ResRet.i32 %7094, 0
  %7096 = add i32 %7080, 32
  %7097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7096, i32 undef)  ; BufferLoad(srv,index,wot)
  %7098 = extractvalue %dx.types.ResRet.f32 %7097, 0
  %7099 = extractvalue %dx.types.ResRet.f32 %7097, 1
  %7100 = extractvalue %dx.types.ResRet.f32 %7097, 2
  %7101 = add i32 %7080, 44
  %7102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7101, i32 undef)  ; BufferLoad(srv,index,wot)
  %7103 = extractvalue %dx.types.ResRet.f32 %7102, 0
  %7104 = add i32 %7080, 48
  %7105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7104, i32 undef)  ; BufferLoad(srv,index,wot)
  %7106 = extractvalue %dx.types.ResRet.f32 %7105, 0
  %7107 = extractvalue %dx.types.ResRet.f32 %7105, 1
  %7108 = extractvalue %dx.types.ResRet.f32 %7105, 2
  %7109 = extractvalue %dx.types.ResRet.f32 %7105, 3
  %7110 = add i32 %7080, 64
  %7111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7110, i32 undef)  ; BufferLoad(srv,index,wot)
  %7112 = extractvalue %dx.types.ResRet.f32 %7111, 0
  %7113 = extractvalue %dx.types.ResRet.f32 %7111, 1
  %7114 = extractvalue %dx.types.ResRet.f32 %7111, 2
  %7115 = extractvalue %dx.types.ResRet.f32 %7111, 3
  %7116 = add i32 %7080, 80
  %7117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7116, i32 undef)  ; BufferLoad(srv,index,wot)
  %7118 = extractvalue %dx.types.ResRet.f32 %7117, 1
  %7119 = extractvalue %dx.types.ResRet.f32 %7117, 2
  %7120 = add i32 %7080, 92
  %7121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %7120, i32 undef)  ; BufferLoad(srv,index,wot)
  %7122 = extractvalue %dx.types.ResRet.i32 %7121, 0
  %7123 = call float @dx.op.dot3.f32(i32 55, float %7082, float %7083, float %7084, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7124 = select i1 %2107, float %7118, float %7082
  %7125 = select i1 %2107, float %7123, float %7083
  %7126 = select i1 %2107, float %7119, float %7084
  %7127 = and i32 %7122, 65535
  %7128 = uitofp i32 %7127 to float
  %7129 = lshr i32 %7122, 16
  %7130 = uitofp i32 %7129 to float
  %7131 = and i32 %7095, 65535
  %7132 = lshr i32 %7095, 24
  %7133 = and i32 %7132, 3
  %7134 = and i32 %7095, 536870912
  %7135 = icmp ne i32 %7134, 0
  %7136 = icmp slt i32 %7095, 0
  %7137 = icmp eq i32 %7133, 2
  %7138 = call float @dx.op.dot3.f32(i32 55, float %7098, float %7099, float %7100, float %7098, float %7099, float %7100)  ; Dot3(ax,ay,az,bx,by,bz)
  %7139 = fsub fast float %155, %7106
  %7140 = fsub fast float %156, %7107
  %7141 = fsub fast float %157, %7108
  %7142 = call float @dx.op.dot3.f32(i32 55, float %7139, float %7140, float %7141, float %7098, float %7099, float %7100)  ; Dot3(ax,ay,az,bx,by,bz)
  %7143 = fdiv fast float %7142, %7138
  %7144 = call float @dx.op.binary.f32(i32 35, float %7143, float -1.000000e+00)  ; FMax(a,b)
  %7145 = call float @dx.op.binary.f32(i32 36, float %7144, float 1.000000e+00)  ; FMin(a,b)
  %7146 = fmul fast float %7145, %7098
  %7147 = fmul fast float %7145, %7099
  %7148 = fmul fast float %7145, %7100
  %7149 = fadd fast float %7146, %7106
  %7150 = fadd fast float %7147, %7107
  %7151 = fadd fast float %7148, %7108
  %7152 = fsub fast float %7149, %155
  %7153 = fsub fast float %7150, %156
  %7154 = fsub fast float %7151, %157
  %7155 = call float @dx.op.dot3.f32(i32 55, float %7152, float %7153, float %7154, float %7152, float %7153, float %7154)  ; Dot3(ax,ay,az,bx,by,bz)
  %7156 = call float @dx.op.unary.f32(i32 24, float %7155)  ; Sqrt(value)
  %7157 = fdiv fast float 1.000000e+00, %7156
  %7158 = fmul fast float %7152, %7157
  %7159 = fmul fast float %7153, %7157
  %7160 = fmul fast float %7154, %7157
  %7161 = fadd fast float %7156, %7087
  %7162 = fdiv fast float 1.000000e+00, %7161
  %7163 = fmul float %7103, %7162
  %7164 = fmul float %7163, %7163
  %7165 = call float @dx.op.unary.f32(i32 7, float %7164)  ; Saturate(value)
  br i1 %7137, label %7166, label %7190

; <label>:7166                                    ; preds = %7046
  %7167 = fmul fast float %7114, %7090
  %7168 = fmul fast float %7114, %7091
  %7169 = fmul fast float %7114, %7092
  %7170 = fsub fast float %7167, %155
  %7171 = fadd fast float %7170, %7149
  %7172 = fsub fast float %7168, %156
  %7173 = fadd fast float %7172, %7150
  %7174 = fsub fast float %7169, %157
  %7175 = fadd fast float %7174, %7151
  %7176 = call float @dx.op.dot3.f32(i32 55, float %7171, float %7173, float %7175, float %7171, float %7173, float %7175)  ; Dot3(ax,ay,az,bx,by,bz)
  %7177 = call float @dx.op.unary.f32(i32 25, float %7176)  ; Rsqrt(value)
  %7178 = fmul fast float %7177, %7171
  %7179 = fmul fast float %7177, %7173
  %7180 = fmul fast float %7177, %7175
  %7181 = fsub fast float %155, %7149
  %7182 = fsub fast float %156, %7150
  %7183 = fsub fast float %157, %7151
  %7184 = fsub fast float -0.000000e+00, %7181
  %7185 = fsub fast float -0.000000e+00, %7182
  %7186 = fsub fast float -0.000000e+00, %7183
  %7187 = call float @dx.op.dot3.f32(i32 55, float %7184, float %7185, float %7186, float %7090, float %7091, float %7092)  ; Dot3(ax,ay,az,bx,by,bz)
  %7188 = fcmp fast ogt float %7187, 0.000000e+00
  %7189 = uitofp i1 %7188 to float
  br label %7190

; <label>:7190                                    ; preds = %7166, %7046
  %7191 = phi float [ %7189, %7166 ], [ 1.000000e+00, %7046 ]
  %7192 = phi float [ %7178, %7166 ], [ %7158, %7046 ]
  %7193 = phi float [ %7179, %7166 ], [ %7159, %7046 ]
  %7194 = phi float [ %7180, %7166 ], [ %7160, %7046 ]
  %7195 = call float @dx.op.dot3.f32(i32 55, float %7090, float %7091, float %7092, float %7192, float %7193, float %7194)  ; Dot3(ax,ay,az,bx,by,bz)
  %7196 = fmul fast float %7195, %7195
  %7197 = call float @dx.op.unary.f32(i32 7, float %7196)  ; Saturate(value)
  %7198 = fsub fast float 1.000000e+00, %7197
  %7199 = fmul fast float %7198, 5.000000e-01
  %7200 = fcmp fast ogt float %7195, 0.000000e+00
  %7201 = fsub fast float 1.000000e+00, %7199
  %7202 = select i1 %7200, float %7199, float %7201
  %7203 = fmul fast float %7202, %7130
  %7204 = fadd fast float %7203, %7128
  %7205 = fmul fast float %7204, 0x3EF0001000000000
  %7206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %63, float %7205, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7207 = extractvalue %dx.types.ResRet.f32 %7206, 0
  %7208 = fmul fast float %7195, %7112
  %7209 = fadd fast float %7208, %7113
  %7210 = call float @dx.op.unary.f32(i32 7, float %7209)  ; Saturate(value)
  %7211 = select i1 %7137, float 1.000000e+00, float %7210
  %7212 = select i1 %7137, float %7210, float 1.000000e+00
  %7213 = fmul fast float %7156, %7109
  %7214 = fsub fast float 1.000000e+00, %7213
  %7215 = fmul fast float %7214, %7115
  %7216 = call float @dx.op.unary.f32(i32 7, float %7215)  ; Saturate(value)
  %7217 = fmul fast float %7216, %7212
  %7218 = fmul fast float %7217, 2.000000e+00
  %7219 = fsub fast float 3.000000e+00, %7218
  %7220 = fmul fast float %7207, %7191
  %7221 = fmul fast float %7217, %7217
  %7222 = fmul fast float %7221, %7220
  %7223 = fmul fast float %7222, %7219
  %7224 = xor i1 %7135, true
  %7225 = and i1 %7137, %7224
  %7226 = icmp ne i32 %7133, 2
  %7227 = and i1 %7226, %7224
  %7228 = and i1 %7135, %7137
  %7229 = and i1 %7135, %7226
  %7230 = zext i1 %7225 to i32
  %7231 = add i32 %7230, %7048
  %7232 = zext i1 %7227 to i32
  %7233 = add i32 %7232, %7049
  %7234 = zext i1 %7228 to i32
  %7235 = add i32 %7234, %7050
  %7236 = zext i1 %7229 to i32
  %7237 = add i32 %7236, %7051
  %7238 = call float @dx.op.binary.f32(i32 36, float %7223, float %7223)  ; FMin(a,b)
  %7239 = call float @dx.op.binary.f32(i32 36, float %7223, float %7238)  ; FMin(a,b)
  %7240 = fcmp fast ogt float %7239, 0.000000e+00
  br i1 %7240, label %7266, label %7241, !dx.controlflow.hints !163

; <label>:7241                                    ; preds = %7884, %7190
  %7242 = phi i32 [ %7894, %7884 ], [ %7047, %7190 ]
  %7243 = phi i32 [ %7895, %7884 ], [ %7052, %7190 ]
  %7244 = phi i32 [ %7896, %7884 ], [ %7053, %7190 ]
  %7245 = phi i32 [ %7897, %7884 ], [ %7054, %7190 ]
  %7246 = phi i32 [ %7898, %7884 ], [ %7055, %7190 ]
  %7247 = phi float [ %7855, %7884 ], [ %7057, %7190 ]
  %7248 = phi float [ %7856, %7884 ], [ %7058, %7190 ]
  %7249 = phi float [ %7857, %7884 ], [ %7059, %7190 ]
  %7250 = phi float [ %7858, %7884 ], [ %7060, %7190 ]
  %7251 = phi float [ %7859, %7884 ], [ %7061, %7190 ]
  %7252 = phi float [ %7860, %7884 ], [ %7062, %7190 ]
  %7253 = phi float [ %7861, %7884 ], [ %7063, %7190 ]
  %7254 = phi float [ %7862, %7884 ], [ %7064, %7190 ]
  %7255 = phi float [ %7863, %7884 ], [ %7065, %7190 ]
  %7256 = phi float [ %7864, %7884 ], [ %7066, %7190 ]
  %7257 = phi float [ %7865, %7884 ], [ %7067, %7190 ]
  %7258 = phi float [ %7866, %7884 ], [ %7068, %7190 ]
  %7259 = phi float [ %7867, %7884 ], [ %7069, %7190 ]
  %7260 = phi float [ %7868, %7884 ], [ %7070, %7190 ]
  %7261 = phi float [ %7869, %7884 ], [ %7071, %7190 ]
  %7262 = phi float [ %7870, %7884 ], [ %7072, %7190 ]
  %7263 = phi float [ %7871, %7884 ], [ %7073, %7190 ]
  %7264 = phi float [ %7872, %7884 ], [ %7074, %7190 ]
  %7265 = icmp eq i32 %7056, %7078
  br i1 %7265, label %7899, label %7046

; <label>:7266                                    ; preds = %7190
  %7267 = icmp eq i32 %7131, 255
  br i1 %7267, label %7405, label %7268, !dx.controlflow.hints !164

; <label>:7268                                    ; preds = %7266
  %7269 = mul nuw nsw i32 %7131, 176
  %7270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7269, i32 undef)  ; BufferLoad(srv,index,wot)
  %7271 = extractvalue %dx.types.ResRet.f32 %7270, 0
  %7272 = extractvalue %dx.types.ResRet.f32 %7270, 1
  %7273 = extractvalue %dx.types.ResRet.f32 %7270, 2
  %7274 = extractvalue %dx.types.ResRet.f32 %7270, 3
  %7275 = add nuw nsw i32 %7269, 16
  %7276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7275, i32 undef)  ; BufferLoad(srv,index,wot)
  %7277 = extractvalue %dx.types.ResRet.f32 %7276, 0
  %7278 = extractvalue %dx.types.ResRet.f32 %7276, 1
  %7279 = add nuw nsw i32 %7269, 32
  %7280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7279, i32 undef)  ; BufferLoad(srv,index,wot)
  %7281 = extractvalue %dx.types.ResRet.f32 %7280, 0
  %7282 = extractvalue %dx.types.ResRet.f32 %7280, 1
  %7283 = add nuw nsw i32 %7269, 48
  %7284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7283, i32 undef)  ; BufferLoad(srv,index,wot)
  %7285 = extractvalue %dx.types.ResRet.f32 %7284, 0
  %7286 = extractvalue %dx.types.ResRet.f32 %7284, 1
  %7287 = extractvalue %dx.types.ResRet.f32 %7284, 2
  %7288 = extractvalue %dx.types.ResRet.f32 %7284, 3
  %7289 = add nuw nsw i32 %7269, 64
  %7290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7289, i32 undef)  ; BufferLoad(srv,index,wot)
  %7291 = extractvalue %dx.types.ResRet.f32 %7290, 0
  %7292 = extractvalue %dx.types.ResRet.f32 %7290, 1
  %7293 = extractvalue %dx.types.ResRet.f32 %7290, 2
  %7294 = extractvalue %dx.types.ResRet.f32 %7290, 3
  %7295 = add nuw nsw i32 %7269, 80
  %7296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7295, i32 undef)  ; BufferLoad(srv,index,wot)
  %7297 = extractvalue %dx.types.ResRet.f32 %7296, 0
  %7298 = extractvalue %dx.types.ResRet.f32 %7296, 1
  %7299 = extractvalue %dx.types.ResRet.f32 %7296, 2
  %7300 = extractvalue %dx.types.ResRet.f32 %7296, 3
  %7301 = add nuw nsw i32 %7269, 96
  %7302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7301, i32 undef)  ; BufferLoad(srv,index,wot)
  %7303 = extractvalue %dx.types.ResRet.f32 %7302, 0
  %7304 = extractvalue %dx.types.ResRet.f32 %7302, 1
  %7305 = extractvalue %dx.types.ResRet.f32 %7302, 2
  %7306 = extractvalue %dx.types.ResRet.f32 %7302, 3
  %7307 = bitcast float %7278 to i32
  %7308 = fmul fast float %7285, %155
  %7309 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7291, float %7308)  ; FMad(a,b,c)
  %7310 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7297, float %7309)  ; FMad(a,b,c)
  %7311 = fadd fast float %7310, %7303
  %7312 = fmul fast float %7286, %155
  %7313 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7292, float %7312)  ; FMad(a,b,c)
  %7314 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7298, float %7313)  ; FMad(a,b,c)
  %7315 = fadd fast float %7314, %7304
  %7316 = fmul fast float %7287, %155
  %7317 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7293, float %7316)  ; FMad(a,b,c)
  %7318 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7299, float %7317)  ; FMad(a,b,c)
  %7319 = fadd fast float %7318, %7305
  %7320 = fmul fast float %7288, %155
  %7321 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7294, float %7320)  ; FMad(a,b,c)
  %7322 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7300, float %7321)  ; FMad(a,b,c)
  %7323 = fadd fast float %7322, %7306
  %7324 = fdiv fast float %7311, %7323
  %7325 = fdiv fast float %7315, %7323
  %7326 = fdiv fast float %7319, %7323
  %7327 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7326)  ; FMax(a,b)
  %7328 = fmul fast float %1357, 0x401921FB60000000
  %7329 = call float @dx.op.unary.f32(i32 13, float %7328)  ; Sin(value)
  %7330 = call float @dx.op.unary.f32(i32 12, float %7328)  ; Cos(value)
  %7331 = fmul fast float %7330, %7282
  %7332 = call float @dx.op.tertiary.f32(i32 46, float %7329, float %7282, float 0.000000e+00)  ; FMad(a,b,c)
  %7333 = fmul fast float %7282, %7329
  %7334 = fsub fast float -0.000000e+00, %7333
  %7335 = call float @dx.op.tertiary.f32(i32 46, float %7330, float %7282, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7336

; <label>:7336                                    ; preds = %7336, %7268
  %7337 = phi float [ 0.000000e+00, %7268 ], [ %7369, %7336 ]
  %7338 = phi float [ 0.000000e+00, %7268 ], [ %7371, %7336 ]
  %7339 = phi i32 [ 0, %7268 ], [ %7372, %7336 ]
  %7340 = mul i32 %7339, 2
  %7341 = add i32 0, %7340
  %7342 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7341
  %7343 = load float, float* %7342, align 4
  %7344 = mul i32 %7339, 2
  %7345 = add i32 1, %7344
  %7346 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7345
  %7347 = load float, float* %7346, align 4
  %7348 = fmul fast float %7331, %7343
  %7349 = call float @dx.op.tertiary.f32(i32 46, float %7347, float %7334, float %7348)  ; FMad(a,b,c)
  %7350 = fmul fast float %7343, %7332
  %7351 = call float @dx.op.tertiary.f32(i32 46, float %7347, float %7335, float %7350)  ; FMad(a,b,c)
  %7352 = fadd fast float %7349, %7324
  %7353 = fadd fast float %7351, %7325
  %7354 = fmul fast float %7352, %7277
  %7355 = fmul fast float %7353, %7277
  %7356 = call float @dx.op.binary.f32(i32 35, float %7354, float %7273)  ; FMax(a,b)
  %7357 = call float @dx.op.binary.f32(i32 35, float %7355, float %7273)  ; FMax(a,b)
  %7358 = call float @dx.op.binary.f32(i32 36, float %7356, float %7274)  ; FMin(a,b)
  %7359 = call float @dx.op.binary.f32(i32 36, float %7357, float %7274)  ; FMin(a,b)
  %7360 = fadd fast float %7358, %7271
  %7361 = fadd fast float %7359, %7272
  %7362 = uitofp i32 %7307 to float
  %7363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %64, float %7360, float %7361, float %7362, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7364 = extractvalue %dx.types.ResRet.f32 %7363, 0
  %7365 = fsub fast float %7364, %7327
  %7366 = fsub fast float %7365, %7281
  %7367 = fcmp fast ogt float %7366, 0.000000e+00
  %7368 = select i1 %7367, float 1.000000e+00, float 0.000000e+00
  %7369 = fadd fast float %7368, %7337
  %7370 = select i1 %7367, float %7366, float 0.000000e+00
  %7371 = fadd fast float %7370, %7338
  %7372 = add nuw nsw i32 %7339, 1
  %7373 = icmp eq i32 %7372, 8
  br i1 %7373, label %7374, label %7336

; <label>:7374                                    ; preds = %7336
  %7375 = fdiv fast float 1.000000e+00, %7369
  %7376 = fmul fast float %7375, %7371
  %7377 = fdiv fast float 1.000000e+00, %7327
  %7378 = fmul fast float %7376, %7377
  %7379 = call float @dx.op.unary.f32(i32 7, float %7378)  ; Saturate(value)
  %7380 = call float @dx.op.binary.f32(i32 35, float %7379, float 0.000000e+00)  ; FMax(a,b)
  %7381 = fmul fast float %7369, 1.250000e-01
  %7382 = call float @dx.op.unary.f32(i32 7, float %7381)  ; Saturate(value)
  %7383 = fmul fast float %7382, 2.000000e+00
  %7384 = fadd fast float %7383, -1.000000e+00
  %7385 = fcmp fast ogt float %7384, 0.000000e+00
  %7386 = fcmp fast olt float %7384, 0.000000e+00
  %7387 = zext i1 %7385 to i32
  %7388 = zext i1 %7386 to i32
  %7389 = sub nsw i32 %7387, %7388
  %7390 = sitofp i32 %7389 to float
  %7391 = fmul fast float %7390, %7384
  %7392 = fsub fast float 1.000000e+00, %7391
  %7393 = fmul fast float %7392, %7392
  %7394 = fmul fast float %7393, %7392
  %7395 = fsub fast float %7392, %7394
  %7396 = fmul fast float %7395, %7380
  %7397 = fsub fast float 1.000000e+00, %7394
  %7398 = fsub fast float %7397, %7396
  %7399 = fmul fast float %7390, 5.000000e-01
  %7400 = fmul fast float %7399, %7398
  %7401 = fsub fast float -5.000000e-01, %7400
  %7402 = fmul fast float %7401, %7211
  %7403 = fadd fast float %7402, 1.000000e+00
  %7404 = fmul fast float %7403, %7223
  br label %7405

; <label>:7405                                    ; preds = %7374, %7266
  %7406 = phi float [ %7404, %7374 ], [ %7223, %7266 ]
  %7407 = call float @dx.op.binary.f32(i32 36, float %7406, float %7406)  ; FMin(a,b)
  %7408 = call float @dx.op.binary.f32(i32 36, float %7406, float %7407)  ; FMin(a,b)
  %7409 = fcmp fast ogt float %7408, 0.000000e+00
  br i1 %7409, label %7410, label %7854, !dx.controlflow.hints !165

; <label>:7410                                    ; preds = %7405
  %7411 = fmul fast float %7406, %7124
  %7412 = fmul fast float %7406, %7125
  %7413 = fmul fast float %7406, %7126
  %7414 = fadd fast float %7158, %1883
  %7415 = fadd fast float %7159, %1884
  %7416 = fadd fast float %7160, %1885
  %7417 = call float @dx.op.dot3.f32(i32 55, float %7158, float %7159, float %7160, float %7152, float %7153, float %7154)  ; Dot3(ax,ay,az,bx,by,bz)
  %7418 = call float @dx.op.dot3.f32(i32 55, float %7158, float %7159, float %7160, float %7414, float %7415, float %7416)  ; Dot3(ax,ay,az,bx,by,bz)
  %7419 = fdiv fast float 1.000000e+00, %7418
  %7420 = fmul fast float %7419, %7417
  %7421 = fmul fast float %7420, %7414
  %7422 = fmul fast float %7420, %7415
  %7423 = fmul fast float %7420, %7416
  %7424 = fadd fast float %7139, %7421
  %7425 = fadd fast float %7140, %7422
  %7426 = fadd fast float %7141, %7423
  %7427 = call float @dx.op.dot3.f32(i32 55, float %7424, float %7425, float %7426, float %7098, float %7099, float %7100)  ; Dot3(ax,ay,az,bx,by,bz)
  %7428 = fdiv fast float %7427, %7138
  %7429 = call float @dx.op.binary.f32(i32 35, float %7428, float -1.000000e+00)  ; FMax(a,b)
  %7430 = call float @dx.op.binary.f32(i32 36, float %7429, float 1.000000e+00)  ; FMin(a,b)
  %7431 = fmul fast float %7430, %7098
  %7432 = fmul fast float %7430, %7099
  %7433 = fmul fast float %7430, %7100
  %7434 = fsub fast float %7106, %155
  %7435 = fadd fast float %7434, %7431
  %7436 = fsub fast float %7107, %156
  %7437 = fadd fast float %7436, %7432
  %7438 = fsub fast float %7108, %157
  %7439 = fadd fast float %7438, %7433
  %7440 = call float @dx.op.dot3.f32(i32 55, float %7435, float %7437, float %7439, float %7435, float %7437, float %7439)  ; Dot3(ax,ay,az,bx,by,bz)
  %7441 = call float @dx.op.unary.f32(i32 25, float %7440)  ; Rsqrt(value)
  %7442 = fmul fast float %7435, %7441
  %7443 = fmul fast float %7437, %7441
  %7444 = fmul fast float %7439, %7441
  %7445 = fsub fast float %7442, %1911
  %7446 = fsub fast float %7443, %1912
  %7447 = fsub fast float %7444, %1913
  %7448 = call float @dx.op.dot3.f32(i32 55, float %7445, float %7446, float %7447, float %7445, float %7446, float %7447)  ; Dot3(ax,ay,az,bx,by,bz)
  %7449 = call float @dx.op.unary.f32(i32 25, float %7448)  ; Rsqrt(value)
  %7450 = fmul fast float %7445, %7449
  %7451 = fmul fast float %7446, %7449
  %7452 = fmul fast float %7447, %7449
  %7453 = call float @dx.op.dot3.f32(i32 55, float %7442, float %7443, float %7444, float %1883, float %1884, float %1885)  ; Dot3(ax,ay,az,bx,by,bz)
  %7454 = call float @dx.op.dot3.f32(i32 55, float %1963, float %1964, float %1965, float %7450, float %7451, float %7452)  ; Dot3(ax,ay,az,bx,by,bz)
  %7455 = fmul fast float %7441, %7103
  %7456 = fmul fast float %7455, %7455
  %7457 = bitcast float %7456 to i32
  %7458 = ashr i32 %7457, 1
  %7459 = sub nsw i32 1597463007, %7458
  %7460 = bitcast i32 %7459 to float
  %7461 = fmul fast float %7460, %7453
  %7462 = fmul fast float %7461, %7461
  %7463 = fsub fast float 1.000000e+00, %7462
  %7464 = fmul fast float %7453, %7456
  %7465 = call float @dx.op.unary.f32(i32 7, float %7464)  ; Saturate(value)
  %7466 = fmul fast float %7461, 5.000000e-01
  %7467 = fadd fast float %7466, 5.000000e-01
  %7468 = fmul fast float %7467, %7456
  %7469 = call float @dx.op.unary.f32(i32 7, float %7468)  ; Saturate(value)
  %7470 = bitcast float %7469 to i32
  %7471 = ashr i32 %7470, 1
  %7472 = add nsw i32 %7471, 532487669
  %7473 = bitcast i32 %7472 to float
  %7474 = fmul fast float %7473, %7469
  %7475 = fcmp fast ogt float %7463, 0.000000e+00
  %7476 = select i1 %7475, float %7474, float %7465
  %7477 = call float @dx.op.unary.f32(i32 7, float %7453)  ; Saturate(value)
  %7478 = fmul fast float %7477, %7477
  %7479 = fmul fast float %7478, %2145
  %7480 = call float @dx.op.unary.f32(i32 7, float %7479)  ; Saturate(value)
  %7481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7482 = extractvalue %dx.types.CBufRet.f32 %7481, 0
  %7483 = bitcast float %7482 to i32
  %7484 = lshr i32 %7483, 8
  %7485 = and i32 %7484, 255
  %7486 = uitofp i32 %7485 to float
  %7487 = fptoui float %7486 to i32
  %7488 = and i32 %7487, 8
  %7489 = icmp ne i32 %7488, 0
  %7490 = select i1 %7489, float %7480, float 1.000000e+00
  %7491 = fmul fast float %7490, %7476
  %7492 = call float @dx.op.dot3.f32(i32 55, float %7098, float %7099, float %7100, float %2114, float %2115, float %2116)  ; Dot3(ax,ay,az,bx,by,bz)
  %7493 = call float @dx.op.dot3.f32(i32 55, float %7098, float %7099, float %7100, float %7152, float %7153, float %7154)  ; Dot3(ax,ay,az,bx,by,bz)
  %7494 = call float @dx.op.dot3.f32(i32 55, float %2114, float %2115, float %2116, float %7152, float %7153, float %7154)  ; Dot3(ax,ay,az,bx,by,bz)
  %7495 = fmul fast float %7492, %7492
  %7496 = fsub fast float %7138, %7495
  %7497 = fmul fast float %7494, %7492
  %7498 = fsub fast float %7497, %7493
  %7499 = fdiv fast float %7498, %7496
  %7500 = call float @dx.op.binary.f32(i32 35, float %7499, float -1.500000e+00)  ; FMax(a,b)
  %7501 = call float @dx.op.binary.f32(i32 36, float %7500, float 1.500000e+00)  ; FMin(a,b)
  %7502 = fmul fast float %7501, %7501
  %7503 = fmul fast float %7502, 0x3FC2F68380000000
  %7504 = fmul fast float %7503, %7501
  %7505 = fsub fast float %7501, %7504
  %7506 = fmul fast float %7505, %7098
  %7507 = fmul fast float %7505, %7099
  %7508 = fmul fast float %7505, %7100
  %7509 = fadd fast float %7506, %7149
  %7510 = fadd fast float %7507, %7150
  %7511 = fadd fast float %7508, %7151
  %7512 = fsub fast float %7509, %155
  %7513 = fsub fast float %7510, %156
  %7514 = fsub fast float %7511, %157
  %7515 = call float @dx.op.dot3.f32(i32 55, float %7512, float %7513, float %7514, float %2114, float %2115, float %2116)  ; Dot3(ax,ay,az,bx,by,bz)
  %7516 = fmul fast float %7515, %2114
  %7517 = fmul fast float %7515, %2115
  %7518 = fmul fast float %7515, %2116
  %7519 = fsub fast float %7516, %7512
  %7520 = fsub fast float %7517, %7513
  %7521 = fsub fast float %7518, %7514
  %7522 = call float @dx.op.dot3.f32(i32 55, float %7519, float %7520, float %7521, float %7519, float %7520, float %7521)  ; Dot3(ax,ay,az,bx,by,bz)
  %7523 = bitcast float %7522 to i32
  %7524 = ashr i32 %7523, 1
  %7525 = sub nsw i32 1597463007, %7524
  %7526 = bitcast i32 %7525 to float
  %7527 = fmul fast float %7526, %7103
  %7528 = call float @dx.op.dot3.f32(i32 55, float %7512, float %7513, float %7514, float %7512, float %7513, float %7514)  ; Dot3(ax,ay,az,bx,by,bz)
  %7529 = bitcast float %7528 to i32
  %7530 = ashr i32 %7529, 1
  %7531 = sub nsw i32 1597463007, %7530
  %7532 = bitcast i32 %7531 to float
  %7533 = fmul fast float %7527, %7527
  %7534 = fadd fast float %7533, 1.250000e-01
  %7535 = call float @dx.op.unary.f32(i32 25, float %7534)  ; Rsqrt(value)
  %7536 = fmul fast float %7527, %7535
  %7537 = fmul fast float %7519, %7536
  %7538 = fmul fast float %7520, %7536
  %7539 = fmul fast float %7521, %7536
  %7540 = fadd fast float %7512, %7537
  %7541 = fadd fast float %7513, %7538
  %7542 = fadd fast float %7514, %7539
  %7543 = call float @dx.op.dot3.f32(i32 55, float %7540, float %7541, float %7542, float %7540, float %7541, float %7542)  ; Dot3(ax,ay,az,bx,by,bz)
  %7544 = call float @dx.op.unary.f32(i32 25, float %7543)  ; Rsqrt(value)
  %7545 = fmul fast float %7540, %7544
  %7546 = fmul fast float %7541, %7544
  %7547 = fmul fast float %7542, %7544
  %7548 = fsub fast float %7545, %1911
  %7549 = fsub fast float %7546, %1912
  %7550 = fsub fast float %7547, %1913
  %7551 = call float @dx.op.dot3.f32(i32 55, float %7548, float %7549, float %7550, float %7548, float %7549, float %7550)  ; Dot3(ax,ay,az,bx,by,bz)
  %7552 = call float @dx.op.unary.f32(i32 25, float %7551)  ; Rsqrt(value)
  %7553 = fmul fast float %7548, %7552
  %7554 = fmul fast float %7549, %7552
  %7555 = fmul fast float %7550, %7552
  %7556 = call float @dx.op.dot3.f32(i32 55, float %1883, float %1884, float %1885, float %7553, float %7554, float %7555)  ; Dot3(ax,ay,az,bx,by,bz)
  %7557 = fmul fast float %7556, %7556
  %7558 = call float @dx.op.unary.f32(i32 6, float %7453)  ; FAbs(value)
  %7559 = fsub fast float 1.000000e+00, %2136
  %7560 = fmul fast float %1967, %1967
  %7561 = fmul fast float %7560, %7559
  %7562 = fadd fast float %7561, %2136
  %7563 = bitcast float %7562 to i32
  %7564 = ashr i32 %7563, 1
  %7565 = add nsw i32 %7564, 532487669
  %7566 = bitcast i32 %7565 to float
  %7567 = fadd fast float %7566, %1967
  %7568 = fmul fast float %2136, %7557
  %7569 = fsub fast float 1.000000e+00, %7557
  %7570 = fadd fast float %7569, %7568
  %7571 = fmul fast float %7558, %7558
  %7572 = fmul fast float %7571, %7559
  %7573 = fadd fast float %7572, %2136
  %7574 = bitcast float %7573 to i32
  %7575 = ashr i32 %7574, 1
  %7576 = add nsw i32 %7575, 532487669
  %7577 = bitcast i32 %7576 to float
  %7578 = fadd fast float %7577, %7558
  %7579 = fmul fast float %7570, %7570
  %7580 = fmul fast float %7579, %7567
  %7581 = fmul fast float %7580, %7578
  %7582 = fdiv fast float 1.000000e+00, %7581
  %7583 = bitcast float %2136 to i32
  %7584 = sitofp i32 %7583 to float
  %7585 = fmul fast float %7584, 0x3FE7F73180000000
  %7586 = fadd fast float %7585, 0x41AFE27C40000000
  %7587 = fptosi float %7586 to i32
  %7588 = bitcast i32 %7587 to float
  %7589 = fmul fast float %7103, 0x3FD80E9D60000000
  %7590 = fmul fast float %7589, %7532
  %7591 = fadd fast float %7588, %7590
  %7592 = bitcast float %7591 to i32
  %7593 = sub nsw i32 2129859010, %7592
  %7594 = bitcast i32 %7593 to float
  %7595 = fmul fast float %2136, %7582
  %7596 = fmul fast float %7595, %7588
  %7597 = fmul fast float %7596, %7594
  %7598 = call float @dx.op.unary.f32(i32 6, float %7454)  ; FAbs(value)
  %7599 = fsub fast float 1.000000e+00, %7598
  %7600 = bitcast float %7599 to i32
  %7601 = sitofp i32 %7600 to float
  %7602 = fmul fast float %7601, 5.000000e+00
  %7603 = fadd fast float %7602, 0xC1EFBF8940000000
  %7604 = fptosi float %7603 to i32
  %7605 = bitcast i32 %7604 to float
  %7606 = fmul fast float %7605, %1968
  %7607 = fmul fast float %7605, %1969
  %7608 = fmul fast float %7605, %3210
  %7609 = fadd fast float %7606, %1904
  %7610 = fadd fast float %7607, %1905
  %7611 = fadd fast float %7608, %2109
  %7612 = select i1 %3213, float %7598, float 0.000000e+00
  %7613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %63, float %1978, float %7612, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7614 = extractvalue %dx.types.ResRet.f32 %7613, 0
  %7615 = extractvalue %dx.types.ResRet.f32 %7613, 1
  %7616 = extractvalue %dx.types.ResRet.f32 %7613, 2
  %7617 = fadd fast float %7614, -5.000000e-01
  %7618 = fadd fast float %7615, -5.000000e-01
  %7619 = fadd fast float %7616, -5.000000e-01
  %7620 = fmul fast float %1997, %7617
  %7621 = fmul fast float %2001, %7618
  %7622 = fmul fast float %3226, %7619
  %7623 = fadd fast float %7609, %7620
  %7624 = fadd fast float %7610, %7621
  %7625 = fadd fast float %7611, %7622
  %7626 = call float @dx.op.unary.f32(i32 7, float %7623)  ; Saturate(value)
  %7627 = call float @dx.op.unary.f32(i32 7, float %7624)  ; Saturate(value)
  %7628 = call float @dx.op.unary.f32(i32 7, float %7625)  ; Saturate(value)
  %7629 = fmul fast float %7453, 9.843750e-01
  %7630 = fmul fast float %2053, 9.843750e-01
  %7631 = fadd fast float %7629, 7.812500e-03
  %7632 = fadd fast float %7630, 7.812500e-03
  %7633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %7631, float %7632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7634 = extractvalue %dx.types.ResRet.f32 %7633, 2
  %7635 = extractvalue %dx.types.ResRet.f32 %7633, 3
  %7636 = select i1 %3213, float %7453, float 0.000000e+00
  %7637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %63, float %1978, float %7636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7638 = extractvalue %dx.types.ResRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.ResRet.f32 %7637, 1
  %7640 = extractvalue %dx.types.ResRet.f32 %7637, 2
  %7641 = fadd fast float %7638, -5.000000e-01
  %7642 = fadd fast float %7639, -5.000000e-01
  %7643 = fadd fast float %7640, -5.000000e-01
  %7644 = fmul fast float %1968, 4.000000e+00
  %7645 = fmul fast float %7644, %1980
  %7646 = fmul fast float %7645, %7641
  %7647 = fmul fast float %1969, 4.000000e+00
  %7648 = fmul fast float %7647, %1980
  %7649 = fmul fast float %7648, %7642
  %7650 = fmul fast float %3210, 4.000000e+00
  %7651 = fmul fast float %7650, %1980
  %7652 = fmul fast float %7651, %7643
  %7653 = fadd fast float %7646, %7634
  %7654 = fmul fast float %7653, %1904
  %7655 = fadd fast float %7654, %7635
  %7656 = fadd fast float %7649, %7634
  %7657 = fmul fast float %7656, %1905
  %7658 = fadd fast float %7657, %7635
  %7659 = fadd fast float %7652, %7634
  %7660 = fmul fast float %7659, %2109
  %7661 = fadd fast float %7660, %7635
  %7662 = call float @dx.op.unary.f32(i32 7, float %7655)  ; Saturate(value)
  %7663 = call float @dx.op.unary.f32(i32 7, float %7658)  ; Saturate(value)
  %7664 = call float @dx.op.unary.f32(i32 7, float %7661)  ; Saturate(value)
  %7665 = call float @dx.op.binary.f32(i32 35, float %7663, float %7664)  ; FMax(a,b)
  %7666 = call float @dx.op.binary.f32(i32 35, float %7662, float %7665)  ; FMax(a,b)
  %7667 = fsub fast float 1.000000e+00, %7666
  %7668 = fsub fast float -0.000000e+00, %1883
  %7669 = fsub fast float -0.000000e+00, %1884
  %7670 = fsub fast float -0.000000e+00, %1885
  %7671 = call float @dx.op.dot3.f32(i32 55, float %7158, float %7159, float %7160, float %7668, float %7669, float %7670)  ; Dot3(ax,ay,az,bx,by,bz)
  %7672 = call float @dx.op.unary.f32(i32 7, float %7671)  ; Saturate(value)
  %7673 = fmul fast float %7672, 9.843750e-01
  %7674 = fadd fast float %7673, 7.812500e-03
  %7675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %7674, float %7632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7676 = extractvalue %dx.types.ResRet.f32 %7675, 2
  %7677 = extractvalue %dx.types.ResRet.f32 %7675, 3
  %7678 = select i1 %3213, float %7672, float 0.000000e+00
  %7679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %63, float %1978, float %7678, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7680 = fmul fast float %1905, 0x4012D0A400000000
  %7681 = fadd fast float %7680, 0x3FDB6377A0000000
  %7682 = fmul fast float %2133, %7681
  %7683 = call float @dx.op.unary.f32(i32 7, float %7682)  ; Saturate(value)
  %7684 = call float @dx.op.dot3.f32(i32 55, float %7098, float %7099, float %7100, float %1911, float %1912, float %1913)  ; Dot3(ax,ay,az,bx,by,bz)
  %7685 = call float @dx.op.dot3.f32(i32 55, float %1911, float %1912, float %1913, float %7152, float %7153, float %7154)  ; Dot3(ax,ay,az,bx,by,bz)
  %7686 = fmul fast float %7684, %7684
  %7687 = fsub fast float %7138, %7686
  %7688 = fmul fast float %7685, %7684
  %7689 = fsub fast float %7688, %7493
  %7690 = fdiv fast float %7689, %7687
  %7691 = call float @dx.op.binary.f32(i32 35, float %7690, float -1.500000e+00)  ; FMax(a,b)
  %7692 = call float @dx.op.binary.f32(i32 36, float %7691, float 1.500000e+00)  ; FMin(a,b)
  %7693 = fmul fast float %7692, %7692
  %7694 = fmul fast float %7693, 0x3FC2F68380000000
  %7695 = fmul fast float %7694, %7692
  %7696 = fsub fast float %7692, %7695
  %7697 = fmul fast float %7696, %7098
  %7698 = fmul fast float %7696, %7099
  %7699 = fmul fast float %7696, %7100
  %7700 = fadd fast float %7697, %7149
  %7701 = fadd fast float %7698, %7150
  %7702 = fadd fast float %7699, %7151
  %7703 = fsub fast float %7700, %155
  %7704 = fsub fast float %7701, %156
  %7705 = fsub fast float %7702, %157
  %7706 = call float @dx.op.dot3.f32(i32 55, float %7703, float %7704, float %7705, float %1911, float %1912, float %1913)  ; Dot3(ax,ay,az,bx,by,bz)
  %7707 = fmul fast float %7706, %1911
  %7708 = fmul fast float %7706, %1912
  %7709 = fmul fast float %7706, %1913
  %7710 = fsub fast float %7707, %7703
  %7711 = fsub fast float %7708, %7704
  %7712 = fsub fast float %7709, %7705
  %7713 = call float @dx.op.dot3.f32(i32 55, float %7710, float %7711, float %7712, float %7710, float %7711, float %7712)  ; Dot3(ax,ay,az,bx,by,bz)
  %7714 = bitcast float %7713 to i32
  %7715 = ashr i32 %7714, 1
  %7716 = sub nsw i32 1597463007, %7715
  %7717 = bitcast i32 %7716 to float
  %7718 = fmul fast float %7717, %7103
  %7719 = fmul fast float %7718, %7718
  %7720 = fadd fast float %7719, 1.250000e-01
  %7721 = call float @dx.op.unary.f32(i32 25, float %7720)  ; Rsqrt(value)
  %7722 = fmul fast float %7718, %7721
  %7723 = fmul fast float %7710, %7722
  %7724 = fmul fast float %7711, %7722
  %7725 = fmul fast float %7712, %7722
  %7726 = fadd fast float %7703, %7723
  %7727 = fadd fast float %7704, %7724
  %7728 = fadd fast float %7705, %7725
  %7729 = call float @dx.op.dot3.f32(i32 55, float %7726, float %7727, float %7728, float %7726, float %7727, float %7728)  ; Dot3(ax,ay,az,bx,by,bz)
  %7730 = call float @dx.op.unary.f32(i32 25, float %7729)  ; Rsqrt(value)
  %7731 = fmul fast float %7726, %7730
  %7732 = fmul fast float %7727, %7730
  %7733 = fmul fast float %7728, %7730
  %7734 = fsub fast float %7731, %2114
  %7735 = fsub fast float %7732, %2115
  %7736 = fsub fast float %7733, %2116
  %7737 = call float @dx.op.dot3.f32(i32 55, float %7734, float %7735, float %7736, float %7734, float %7735, float %7736)  ; Dot3(ax,ay,az,bx,by,bz)
  %7738 = call float @dx.op.unary.f32(i32 25, float %7737)  ; Rsqrt(value)
  %7739 = fmul fast float %7734, %7738
  %7740 = fmul fast float %7735, %7738
  %7741 = fmul fast float %7736, %7738
  %7742 = call float @dx.op.dot3.f32(i32 55, float %7668, float %7669, float %7670, float %7739, float %7740, float %7741)  ; Dot3(ax,ay,az,bx,by,bz)
  %7743 = fmul fast float %7742, %7742
  %7744 = call float @dx.op.unary.f32(i32 6, float %7672)  ; FAbs(value)
  %7745 = call float @dx.op.binary.f32(i32 35, float %7683, float 0x3F847AE140000000)  ; FMax(a,b)
  %7746 = fmul fast float %7745, %7745
  %7747 = fmul fast float %7746, %7746
  %7748 = fsub fast float 1.000000e+00, %7747
  %7749 = fmul fast float %7747, %7743
  %7750 = fsub fast float 1.000000e+00, %7743
  %7751 = fadd fast float %7750, %7749
  %7752 = bitcast float %7747 to i32
  %7753 = sitofp i32 %7752 to float
  %7754 = fmul fast float %7753, 0x3FE7F73180000000
  %7755 = fadd fast float %7754, 0x41AFE27C40000000
  %7756 = fptosi float %7755 to i32
  %7757 = bitcast i32 %7756 to float
  br i1 %7136, label %7758, label %7818

; <label>:7758                                    ; preds = %7410
  %7759 = fmul fast float %7751, %7751
  %7760 = fmul fast float %7560, %7748
  %7761 = fadd fast float %7760, %7747
  %7762 = bitcast float %7761 to i32
  %7763 = ashr i32 %7762, 1
  %7764 = add nsw i32 %7763, 532487669
  %7765 = bitcast i32 %7764 to float
  %7766 = fadd fast float %7765, %1967
  %7767 = fmul fast float %7759, %7766
  %7768 = fmul fast float %7744, %7744
  %7769 = fmul fast float %7768, %7748
  %7770 = fadd fast float %7769, %7747
  %7771 = bitcast float %7770 to i32
  %7772 = ashr i32 %7771, 1
  %7773 = add nsw i32 %7772, 532487669
  %7774 = bitcast i32 %7773 to float
  %7775 = fadd fast float %7774, %7744
  %7776 = fmul fast float %7767, %7775
  %7777 = fdiv fast float 1.000000e+00, %7776
  %7778 = fmul fast float %7747, %7777
  %7779 = fmul fast float %7778, %7757
  %7780 = call float @dx.op.dot3.f32(i32 55, float %7703, float %7704, float %7705, float %7703, float %7704, float %7705)  ; Dot3(ax,ay,az,bx,by,bz)
  %7781 = bitcast float %7780 to i32
  %7782 = ashr i32 %7781, 1
  %7783 = sub nsw i32 1597463007, %7782
  %7784 = bitcast i32 %7783 to float
  %7785 = fmul fast float %7589, %7784
  %7786 = fadd fast float %7757, %7785
  %7787 = bitcast float %7786 to i32
  %7788 = sub nsw i32 2129859010, %7787
  %7789 = bitcast i32 %7788 to float
  %7790 = fmul fast float %7779, %7789
  %7791 = extractvalue %dx.types.ResRet.f32 %7679, 0
  %7792 = fadd fast float %7791, -5.000000e-01
  %7793 = fmul fast float %7645, %7792
  %7794 = fadd fast float %7793, %7676
  %7795 = fmul fast float %7794, %1904
  %7796 = fadd fast float %7795, %7677
  %7797 = call float @dx.op.unary.f32(i32 7, float %7796)  ; Saturate(value)
  %7798 = extractvalue %dx.types.ResRet.f32 %7679, 1
  %7799 = fadd fast float %7798, -5.000000e-01
  %7800 = fmul fast float %7648, %7799
  %7801 = fadd fast float %7800, %7676
  %7802 = fmul fast float %7801, %1905
  %7803 = fadd fast float %7802, %7677
  %7804 = call float @dx.op.unary.f32(i32 7, float %7803)  ; Saturate(value)
  %7805 = extractvalue %dx.types.ResRet.f32 %7679, 2
  %7806 = fadd fast float %7805, -5.000000e-01
  %7807 = fmul fast float %7651, %7806
  %7808 = fadd fast float %7807, %7676
  %7809 = fmul fast float %7808, %2109
  %7810 = fadd fast float %7809, %7677
  %7811 = call float @dx.op.unary.f32(i32 7, float %7810)  ; Saturate(value)
  %7812 = call float @dx.op.binary.f32(i32 35, float %7804, float %7811)  ; FMax(a,b)
  %7813 = call float @dx.op.binary.f32(i32 35, float %7797, float %7812)  ; FMax(a,b)
  %7814 = fsub fast float 1.000000e+00, %7813
  %7815 = fmul fast float %7672, %7165
  %7816 = fmul fast float %7815, %7814
  %7817 = fmul fast float %7816, %7790
  br label %7818

; <label>:7818                                    ; preds = %7758, %7410
  %7819 = phi float [ %7817, %7758 ], [ 0.000000e+00, %7410 ]
  %7820 = fmul fast float %7667, %7491
  %7821 = fmul fast float %7626, %7491
  %7822 = fmul fast float %7821, %7597
  %7823 = fmul fast float %7627, %7491
  %7824 = fmul fast float %7823, %7597
  %7825 = fmul fast float %7628, %7491
  %7826 = fmul fast float %7825, %7597
  %7827 = fadd fast float %7819, %7822
  %7828 = fadd fast float %7819, %7824
  %7829 = fadd fast float %7819, %7826
  %7830 = fmul fast float %7820, %7411
  %7831 = fmul fast float %7820, %7412
  %7832 = fmul fast float %7820, %7413
  %7833 = fadd fast float %7830, %7072
  %7834 = fadd fast float %7831, %7073
  %7835 = fadd fast float %7832, %7074
  %7836 = fmul fast float %7827, %7411
  %7837 = fmul fast float %7828, %7412
  %7838 = fmul fast float %7829, %7413
  %7839 = fadd fast float %7836, %7069
  %7840 = fadd fast float %7837, %7070
  %7841 = fadd fast float %7838, %7071
  %7842 = fadd fast float %7830, %7066
  %7843 = fadd fast float %7831, %7067
  %7844 = fadd fast float %7832, %7068
  %7845 = fadd fast float %7836, %7063
  %7846 = fadd fast float %7837, %7064
  %7847 = fadd fast float %7838, %7065
  %7848 = fadd fast float %7830, %7060
  %7849 = fadd fast float %7831, %7061
  %7850 = fadd fast float %7832, %7062
  %7851 = fadd fast float %7836, %7057
  %7852 = fadd fast float %7837, %7058
  %7853 = fadd fast float %7838, %7059
  br label %7854

; <label>:7854                                    ; preds = %7818, %7405
  %7855 = phi float [ %7057, %7405 ], [ %7851, %7818 ]
  %7856 = phi float [ %7058, %7405 ], [ %7852, %7818 ]
  %7857 = phi float [ %7059, %7405 ], [ %7853, %7818 ]
  %7858 = phi float [ %7060, %7405 ], [ %7848, %7818 ]
  %7859 = phi float [ %7061, %7405 ], [ %7849, %7818 ]
  %7860 = phi float [ %7062, %7405 ], [ %7850, %7818 ]
  %7861 = phi float [ %7063, %7405 ], [ %7845, %7818 ]
  %7862 = phi float [ %7064, %7405 ], [ %7846, %7818 ]
  %7863 = phi float [ %7065, %7405 ], [ %7847, %7818 ]
  %7864 = phi float [ %7066, %7405 ], [ %7842, %7818 ]
  %7865 = phi float [ %7067, %7405 ], [ %7843, %7818 ]
  %7866 = phi float [ %7068, %7405 ], [ %7844, %7818 ]
  %7867 = phi float [ %7069, %7405 ], [ %7839, %7818 ]
  %7868 = phi float [ %7070, %7405 ], [ %7840, %7818 ]
  %7869 = phi float [ %7071, %7405 ], [ %7841, %7818 ]
  %7870 = phi float [ %7072, %7405 ], [ %7833, %7818 ]
  %7871 = phi float [ %7073, %7405 ], [ %7834, %7818 ]
  %7872 = phi float [ %7074, %7405 ], [ %7835, %7818 ]
  %7873 = bitcast i32 %7047 to float
  %7874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %7875 = extractvalue %dx.types.CBufRet.f32 %7874, 1
  %7876 = bitcast float %7875 to i32
  %7877 = and i32 %7876, 65535
  %7878 = icmp eq i32 %7877, 65535
  br i1 %7878, label %7879, label %7881

; <label>:7879                                    ; preds = %7854
  %7880 = call float @dx.op.binary.f32(i32 35, float %7873, float %7406)  ; FMax(a,b)
  br label %7884

; <label>:7881                                    ; preds = %7854
  %7882 = icmp eq i32 %7877, %7076
  %7883 = select i1 %7882, float %7406, float %7873
  br label %7884

; <label>:7884                                    ; preds = %7881, %7879
  %7885 = phi float [ %7880, %7879 ], [ %7883, %7881 ]
  %7886 = extractvalue %dx.types.CBufRet.f32 %7874, 0
  %7887 = bitcast float %7886 to i32
  %7888 = lshr i32 %7887, 8
  %7889 = and i32 %7888, 255
  %7890 = uitofp i32 %7889 to float
  %7891 = fptoui float %7890 to i32
  %7892 = icmp eq i32 %7891, 15
  %7893 = bitcast float %7885 to i32
  %7894 = select i1 %7892, i32 %7893, i32 %7047
  %7895 = add i32 %7230, %7052
  %7896 = add i32 %7232, %7053
  %7897 = add i32 %7234, %7054
  %7898 = add i32 %7236, %7055
  br label %7241

; <label>:7899                                    ; preds = %7241
  br label %7900

; <label>:7900                                    ; preds = %7899, %6993
  %7901 = phi i32 [ %6994, %6993 ], [ %7242, %7899 ]
  %7902 = phi i32 [ %6995, %6993 ], [ %7231, %7899 ]
  %7903 = phi i32 [ %6996, %6993 ], [ %7233, %7899 ]
  %7904 = phi i32 [ %6997, %6993 ], [ %7235, %7899 ]
  %7905 = phi i32 [ %6998, %6993 ], [ %7237, %7899 ]
  %7906 = phi i32 [ %6999, %6993 ], [ %7243, %7899 ]
  %7907 = phi i32 [ %7000, %6993 ], [ %7244, %7899 ]
  %7908 = phi i32 [ %7001, %6993 ], [ %7245, %7899 ]
  %7909 = phi i32 [ %7002, %6993 ], [ %7246, %7899 ]
  %7910 = phi float [ %7004, %6993 ], [ %7247, %7899 ]
  %7911 = phi float [ %7005, %6993 ], [ %7248, %7899 ]
  %7912 = phi float [ %7006, %6993 ], [ %7249, %7899 ]
  %7913 = phi float [ %7007, %6993 ], [ %7250, %7899 ]
  %7914 = phi float [ %7008, %6993 ], [ %7251, %7899 ]
  %7915 = phi float [ %7009, %6993 ], [ %7252, %7899 ]
  %7916 = phi float [ %7010, %6993 ], [ %7253, %7899 ]
  %7917 = phi float [ %7011, %6993 ], [ %7254, %7899 ]
  %7918 = phi float [ %7012, %6993 ], [ %7255, %7899 ]
  %7919 = phi float [ %7013, %6993 ], [ %7256, %7899 ]
  %7920 = phi float [ %7014, %6993 ], [ %7257, %7899 ]
  %7921 = phi float [ %7015, %6993 ], [ %7258, %7899 ]
  %7922 = phi float [ %7016, %6993 ], [ %7259, %7899 ]
  %7923 = phi float [ %7017, %6993 ], [ %7260, %7899 ]
  %7924 = phi float [ %7018, %6993 ], [ %7261, %7899 ]
  %7925 = phi float [ %7019, %6993 ], [ %7262, %7899 ]
  %7926 = phi float [ %7020, %6993 ], [ %7263, %7899 ]
  %7927 = phi float [ %7021, %6993 ], [ %7264, %7899 ]
  %7928 = add i32 %7003, 1
  %7929 = icmp ugt i32 %7928, %6990
  br i1 %7929, label %7930, label %6993

; <label>:7930                                    ; preds = %7900
  br label %7931

; <label>:7931                                    ; preds = %7930, %6943
  %7932 = phi i32 [ %6922, %6943 ], [ %7901, %7930 ]
  %7933 = phi i32 [ 0, %6943 ], [ %7902, %7930 ]
  %7934 = phi i32 [ 0, %6943 ], [ %7903, %7930 ]
  %7935 = phi i32 [ 0, %6943 ], [ %7904, %7930 ]
  %7936 = phi i32 [ 0, %6943 ], [ %7905, %7930 ]
  %7937 = phi i32 [ 0, %6943 ], [ %7906, %7930 ]
  %7938 = phi i32 [ 0, %6943 ], [ %7907, %7930 ]
  %7939 = phi i32 [ 0, %6943 ], [ %7908, %7930 ]
  %7940 = phi i32 [ 0, %6943 ], [ %7909, %7930 ]
  %7941 = phi float [ %6924, %6943 ], [ %7910, %7930 ]
  %7942 = phi float [ %6925, %6943 ], [ %7911, %7930 ]
  %7943 = phi float [ %6926, %6943 ], [ %7912, %7930 ]
  %7944 = phi float [ %6927, %6943 ], [ %7913, %7930 ]
  %7945 = phi float [ %6928, %6943 ], [ %7914, %7930 ]
  %7946 = phi float [ %6929, %6943 ], [ %7915, %7930 ]
  %7947 = phi float [ %6930, %6943 ], [ %7916, %7930 ]
  %7948 = phi float [ %6931, %6943 ], [ %7917, %7930 ]
  %7949 = phi float [ %6932, %6943 ], [ %7918, %7930 ]
  %7950 = phi float [ %6933, %6943 ], [ %7919, %7930 ]
  %7951 = phi float [ %6934, %6943 ], [ %7920, %7930 ]
  %7952 = phi float [ %6935, %6943 ], [ %7921, %7930 ]
  %7953 = phi float [ %6937, %6943 ], [ %7922, %7930 ]
  %7954 = phi float [ %6938, %6943 ], [ %7923, %7930 ]
  %7955 = phi float [ %6939, %6943 ], [ %7924, %7930 ]
  %7956 = phi float [ %6933, %6943 ], [ %7925, %7930 ]
  %7957 = phi float [ %6934, %6943 ], [ %7926, %7930 ]
  %7958 = phi float [ %6935, %6943 ], [ %7927, %7930 ]
  %7959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7960 = extractvalue %dx.types.CBufRet.f32 %7959, 1
  %7961 = bitcast float %7960 to i32
  %7962 = lshr i32 %7961, 24
  %7963 = uitofp i32 %7962 to float
  %7964 = fptoui float %7963 to i32
  %7965 = icmp eq i32 %7964, 1
  %7966 = select i1 %7965, i32 %7937, i32 %7933
  %7967 = uitofp i32 %7966 to float
  %7968 = fptoui float %7967 to i32
  %7969 = shl i32 %7968, 8
  %7970 = select i1 %7965, i32 %7938, i32 %7934
  %7971 = uitofp i32 %7970 to float
  %7972 = fptoui float %7971 to i32
  %7973 = shl i32 %7972, 16
  %7974 = and i32 %7969, 65280
  %7975 = or i32 %7974, %6923
  %7976 = select i1 %7965, i32 %7939, i32 %7935
  %7977 = uitofp i32 %7976 to float
  %7978 = fptoui float %7977 to i32
  %7979 = shl i32 %7978, 24
  %7980 = and i32 %7973, 16711680
  %7981 = or i32 %7975, %7980
  %7982 = or i32 %7981, %7979
  %7983 = select i1 %7965, i32 %7940, i32 %7936
  %7984 = uitofp i32 %7983 to float
  %7985 = fptoui float %7984 to i32
  %7986 = and i32 %7985, 255
  %7987 = and i32 %5022, -256
  %7988 = or i32 %7986, %7987
  %7989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %7990 = extractvalue %dx.types.CBufRet.f32 %7989, 0
  %7991 = bitcast float %7990 to i32
  %7992 = lshr i32 %7991, 8
  %7993 = and i32 %7992, 255
  %7994 = uitofp i32 %7993 to float
  %7995 = fptoui float %7994 to i32
  %7996 = icmp eq i32 %7995, 12
  %7997 = select i1 %7996, i32 0, i32 %7932
  br label %7998

; <label>:7998                                    ; preds = %7931, %6921
  %7999 = phi i32 [ %5022, %6921 ], [ %7988, %7931 ]
  %8000 = phi i32 [ 0, %6921 ], [ %7982, %7931 ]
  %8001 = phi i32 [ %6922, %6921 ], [ %7997, %7931 ]
  %8002 = phi float [ %6924, %6921 ], [ %7941, %7931 ]
  %8003 = phi float [ %6925, %6921 ], [ %7942, %7931 ]
  %8004 = phi float [ %6926, %6921 ], [ %7943, %7931 ]
  %8005 = phi float [ %6927, %6921 ], [ %7944, %7931 ]
  %8006 = phi float [ %6928, %6921 ], [ %7945, %7931 ]
  %8007 = phi float [ %6929, %6921 ], [ %7946, %7931 ]
  %8008 = phi float [ %6930, %6921 ], [ %7947, %7931 ]
  %8009 = phi float [ %6931, %6921 ], [ %7948, %7931 ]
  %8010 = phi float [ %6932, %6921 ], [ %7949, %7931 ]
  %8011 = phi float [ %6933, %6921 ], [ %7950, %7931 ]
  %8012 = phi float [ %6934, %6921 ], [ %7951, %7931 ]
  %8013 = phi float [ %6935, %6921 ], [ %7952, %7931 ]
  %8014 = phi float [ %6937, %6921 ], [ %7953, %7931 ]
  %8015 = phi float [ %6938, %6921 ], [ %7954, %7931 ]
  %8016 = phi float [ %6939, %6921 ], [ %7955, %7931 ]
  %8017 = phi float [ %6933, %6921 ], [ %7956, %7931 ]
  %8018 = phi float [ %6934, %6921 ], [ %7957, %7931 ]
  %8019 = phi float [ %6935, %6921 ], [ %7958, %7931 ]
  %8020 = and i32 %1962, 255
  %8021 = uitofp i32 %8020 to float
  %8022 = fmul fast float %8021, 0x3F70101020000000
  %8023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %8024 = extractvalue %dx.types.CBufRet.f32 %8023, 2
  %8025 = extractvalue %dx.types.CBufRet.f32 %8023, 3
  %8026 = fmul fast float %125, %8024
  %8027 = fmul fast float %127, %8025
  %8028 = fsub fast float 1.000000e+00, %8026
  %8029 = fsub fast float 1.000000e+00, %8027
  %8030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8031 = extractvalue %dx.types.CBufRet.f32 %8030, 0
  %8032 = extractvalue %dx.types.CBufRet.f32 %8030, 1
  %8033 = extractvalue %dx.types.CBufRet.f32 %8030, 2
  %8034 = fmul fast float %8028, %8031
  %8035 = fmul fast float %8028, %8032
  %8036 = fmul fast float %8028, %8033
  %8037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8038 = extractvalue %dx.types.CBufRet.f32 %8037, 0
  %8039 = extractvalue %dx.types.CBufRet.f32 %8037, 1
  %8040 = extractvalue %dx.types.CBufRet.f32 %8037, 2
  %8041 = fmul fast float %8029, %8038
  %8042 = fmul fast float %8029, %8039
  %8043 = fmul fast float %8029, %8040
  %8044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8045 = extractvalue %dx.types.CBufRet.f32 %8044, 0
  %8046 = extractvalue %dx.types.CBufRet.f32 %8044, 1
  %8047 = extractvalue %dx.types.CBufRet.f32 %8044, 2
  %8048 = fadd fast float %8041, %8045
  %8049 = fadd fast float %8048, %8034
  %8050 = fadd fast float %8042, %8046
  %8051 = fadd fast float %8050, %8035
  %8052 = fadd fast float %8043, %8047
  %8053 = fadd fast float %8052, %8036
  %8054 = fmul fast float %8049, %89
  %8055 = fmul fast float %8051, %89
  %8056 = fmul fast float %8053, %89
  %8057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8058 = extractvalue %dx.types.CBufRet.f32 %8057, 2
  %8059 = extractvalue %dx.types.CBufRet.f32 %8057, 3
  %8060 = fmul fast float %8058, %100
  %8061 = fmul fast float %8059, %101
  %8062 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %45, i32 0, i32 %2013, i32 %2019, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8063 = extractvalue %dx.types.ResRet.f32 %8062, 0
  %8064 = fcmp fast olt float %8063, -1.000000e+00
  %8065 = fcmp fast ogt float %8063, -1.000000e+00
  %8066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8067 = extractvalue %dx.types.CBufRet.f32 %8066, 1
  %8068 = select i1 %8065, float %8067, float 1.000000e+00
  %8069 = fadd fast float %8063, 1.000000e+00
  %8070 = fmul fast float %8068, %8069
  %8071 = call float @dx.op.unary.f32(i32 6, float %8070)  ; FAbs(value)
  %8072 = fsub fast float %8071, %89
  %8073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %8074 = extractvalue %dx.types.CBufRet.f32 %8073, 2
  %8075 = fsub fast float %8072, %8074
  %8076 = extractvalue %dx.types.CBufRet.f32 %8073, 3
  %8077 = fmul fast float %8076, %8022
  %8078 = fmul fast float %8077, %8075
  %8079 = call float @dx.op.unary.f32(i32 7, float %8078)  ; Saturate(value)
  %8080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 356)  ; CBufferLoadLegacy(handle,regIndex)
  %8081 = extractvalue %dx.types.CBufRet.f32 %8080, 1
  %8082 = extractvalue %dx.types.CBufRet.f32 %8080, 0
  %8083 = extractvalue %dx.types.CBufRet.f32 %8080, 3
  %8084 = extractvalue %dx.types.CBufRet.f32 %8080, 2
  %8085 = select i1 %8064, float %8081, float %8083
  %8086 = select i1 %8064, float %8082, float %8084
  %8087 = fsub fast float %8072, %8086
  %8088 = fmul fast float %8087, %8085
  %8089 = fsub fast float 1.000000e+00, %8022
  %8090 = fadd fast float %8089, %8088
  %8091 = call float @dx.op.unary.f32(i32 7, float %8090)  ; Saturate(value)
  %8092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %8093 = extractvalue %dx.types.CBufRet.f32 %8092, 1
  %8094 = extractvalue %dx.types.CBufRet.f32 %8092, 2
  %8095 = fsub fast float 1.000000e+00, %8061
  %8096 = fsub fast float 1.000000e+00, %8060
  %8097 = fmul fast float %8061, %8060
  %8098 = fmul fast float %8097, %8095
  %8099 = fmul fast float %8098, %8096
  %8100 = fmul fast float %8099, %8093
  %8101 = call float @dx.op.unary.f32(i32 23, float %8100)  ; Log(value)
  %8102 = fmul fast float %8101, %8094
  %8103 = call float @dx.op.unary.f32(i32 21, float %8102)  ; Exp(value)
  %8104 = call float @dx.op.unary.f32(i32 7, float %8103)  ; Saturate(value)
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 66)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8107 = extractvalue %dx.types.CBufRet.f32 %8105, 3
  %8108 = extractvalue %dx.types.CBufRet.f32 %8105, 0
  %8109 = fsub fast float %89, %8108
  %8110 = extractvalue %dx.types.CBufRet.f32 %8092, 0
  %8111 = fmul fast float %8109, %8110
  %8112 = call float @dx.op.unary.f32(i32 7, float %8111)  ; Saturate(value)
  %8113 = fsub fast float %8107, %8106
  %8114 = fmul fast float %8112, %8113
  %8115 = fadd fast float %8114, %8106
  %8116 = fmul fast float %8115, %8079
  %8117 = fmul fast float %8116, %1883
  %8118 = fmul fast float %8116, %1884
  %8119 = fadd fast float %8117, %8054
  %8120 = fadd fast float %8118, %8055
  %8121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %8122 = extractvalue %dx.types.CBufRet.f32 %8121, 0
  %8123 = extractvalue %dx.types.CBufRet.f32 %8121, 1
  %8124 = extractvalue %dx.types.CBufRet.f32 %8121, 2
  %8125 = extractvalue %dx.types.CBufRet.f32 %8121, 3
  %8126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %8127 = extractvalue %dx.types.CBufRet.f32 %8126, 0
  %8128 = extractvalue %dx.types.CBufRet.f32 %8126, 1
  %8129 = extractvalue %dx.types.CBufRet.f32 %8126, 2
  %8130 = extractvalue %dx.types.CBufRet.f32 %8126, 3
  %8131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %8132 = extractvalue %dx.types.CBufRet.f32 %8131, 0
  %8133 = extractvalue %dx.types.CBufRet.f32 %8131, 1
  %8134 = extractvalue %dx.types.CBufRet.f32 %8131, 2
  %8135 = extractvalue %dx.types.CBufRet.f32 %8131, 3
  %8136 = fmul fast float %8119, %8122
  %8137 = call float @dx.op.tertiary.f32(i32 46, float %8120, float %8123, float %8136)  ; FMad(a,b,c)
  %8138 = call float @dx.op.tertiary.f32(i32 46, float %8056, float %8124, float %8137)  ; FMad(a,b,c)
  %8139 = fadd fast float %8138, %8125
  %8140 = fmul fast float %8119, %8127
  %8141 = call float @dx.op.tertiary.f32(i32 46, float %8120, float %8128, float %8140)  ; FMad(a,b,c)
  %8142 = call float @dx.op.tertiary.f32(i32 46, float %8056, float %8129, float %8141)  ; FMad(a,b,c)
  %8143 = fadd fast float %8142, %8130
  %8144 = fmul fast float %8119, %8132
  %8145 = call float @dx.op.tertiary.f32(i32 46, float %8120, float %8133, float %8144)  ; FMad(a,b,c)
  %8146 = call float @dx.op.tertiary.f32(i32 46, float %8056, float %8134, float %8145)  ; FMad(a,b,c)
  %8147 = fadd fast float %8146, %8135
  %8148 = fdiv fast float %8139, %8147
  %8149 = fdiv fast float %8143, %8147
  %8150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %8151 = extractvalue %dx.types.CBufRet.f32 %8150, 0
  %8152 = extractvalue %dx.types.CBufRet.f32 %8150, 1
  %8153 = fmul fast float %8151, %8148
  %8154 = fmul fast float %8152, %8149
  %8155 = extractvalue %dx.types.CBufRet.f32 %8150, 2
  %8156 = extractvalue %dx.types.CBufRet.f32 %8150, 3
  %8157 = fadd fast float %8153, %8155
  %8158 = fadd fast float %8154, %8156
  %8159 = call float @dx.op.unary.f32(i32 7, float %8157)  ; Saturate(value)
  %8160 = call float @dx.op.unary.f32(i32 7, float %8158)  ; Saturate(value)
  %8161 = fsub fast float %8159, %8060
  %8162 = fsub fast float %8160, %8061
  %8163 = fmul fast float %8161, %8104
  %8164 = fmul fast float %8162, %8104
  %8165 = fadd fast float %8163, %8060
  %8166 = fadd fast float %8164, %8061
  %8167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %8165, float %8166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8168 = extractvalue %dx.types.ResRet.f32 %8167, 0
  %8169 = fcmp fast ogt float %8168, -1.000000e+00
  %8170 = select i1 %8169, float %8067, float 1.000000e+00
  %8171 = fadd fast float %8168, 1.000000e+00
  %8172 = fmul fast float %8170, %8171
  %8173 = call float @dx.op.unary.f32(i32 6, float %8172)  ; FAbs(value)
  %8174 = fcmp fast ugt float %8173, %8147
  br i1 %8174, label %8176, label %8175

; <label>:8175                                    ; preds = %7998
  br label %8176

; <label>:8176                                    ; preds = %8175, %7998
  %8177 = phi float [ %8060, %8175 ], [ %8165, %7998 ]
  %8178 = phi float [ %8061, %8175 ], [ %8166, %7998 ]
  %8179 = phi float [ %89, %8175 ], [ %8147, %7998 ]
  %8180 = phi float [ %8071, %8175 ], [ %8173, %7998 ]
  br i1 %117, label %8181, label %8691

; <label>:8181                                    ; preds = %8176
  %8182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %8183 = extractvalue %dx.types.CBufRet.f32 %8182, 0
  %8184 = extractvalue %dx.types.CBufRet.f32 %8182, 1
  %8185 = extractvalue %dx.types.CBufRet.f32 %8182, 2
  %8186 = fcmp fast oge float %8184, %8179
  %8187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %8188 = extractvalue %dx.types.CBufRet.i32 %8187, 0
  %8189 = and i32 %8188, 65538
  %8190 = icmp eq i32 %8189, 65538
  %8191 = and i1 %8190, %8186
  br i1 %8191, label %8192, label %8273

; <label>:8192                                    ; preds = %8181
  %8193 = extractvalue %dx.types.CBufRet.f32 %8023, 0
  %8194 = extractvalue %dx.types.CBufRet.f32 %8023, 1
  %8195 = fmul fast float %8193, %8177
  %8196 = fmul fast float %8194, %8178
  %8197 = fmul fast float %8195, %8024
  %8198 = fmul fast float %8196, %8025
  %8199 = call float @dx.op.unary.f32(i32 7, float %8197)  ; Saturate(value)
  %8200 = call float @dx.op.unary.f32(i32 7, float %8198)  ; Saturate(value)
  %8201 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %63, float %8199, float %8200, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8202 = extractvalue %dx.types.ResRet.f32 %8201, 0
  %8203 = extractvalue %dx.types.ResRet.f32 %8201, 1
  %8204 = extractvalue %dx.types.ResRet.f32 %8201, 2
  %8205 = extractvalue %dx.types.ResRet.f32 %8201, 3
  %8206 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %63, float %8199, float %8200, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8207 = extractvalue %dx.types.ResRet.f32 %8206, 0
  %8208 = extractvalue %dx.types.ResRet.f32 %8206, 1
  %8209 = extractvalue %dx.types.ResRet.f32 %8206, 2
  %8210 = extractvalue %dx.types.ResRet.f32 %8206, 3
  %8211 = call float @dx.op.binary.f32(i32 35, float %8203, float %8204)  ; FMax(a,b)
  %8212 = call float @dx.op.binary.f32(i32 35, float %8202, float %8211)  ; FMax(a,b)
  %8213 = call float @dx.op.binary.f32(i32 35, float %8212, float %8205)  ; FMax(a,b)
  %8214 = call float @dx.op.binary.f32(i32 36, float %8208, float %8209)  ; FMin(a,b)
  %8215 = call float @dx.op.binary.f32(i32 36, float %8207, float %8214)  ; FMin(a,b)
  %8216 = call float @dx.op.binary.f32(i32 36, float %8215, float %8210)  ; FMin(a,b)
  %8217 = fmul fast float %8213, 2.550000e+02
  %8218 = fadd fast float %8217, 0x3F70101020000000
  %8219 = fptoui float %8218 to i32
  %8220 = fmul fast float %8216, 2.550000e+02
  %8221 = fadd fast float %8220, 0x3F70101020000000
  %8222 = fptoui float %8221 to i32
  %8223 = icmp ult i32 %8219, %8222
  br i1 %8223, label %8224, label %8273

; <label>:8224                                    ; preds = %8192
  %8225 = fadd fast float %8180, -4.000000e+00
  %8226 = call float @dx.op.binary.f32(i32 35, float %8225, float 0.000000e+00)  ; FMax(a,b)
  %8227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8228 = extractvalue %dx.types.CBufRet.f32 %8227, 0
  %8229 = fadd fast float %8228, %8226
  %8230 = extractvalue %dx.types.CBufRet.f32 %8227, 2
  %8231 = fmul fast float %8229, %8230
  %8232 = call float @dx.op.unary.f32(i32 23, float %8231)  ; Log(value)
  %8233 = extractvalue %dx.types.CBufRet.f32 %8227, 3
  %8234 = fmul fast float %8233, %8232
  %8235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8236 = extractvalue %dx.types.CBufRet.f32 %8235, 2
  %8237 = fmul fast float %8234, %8236
  %8238 = call float @dx.op.unary.f32(i32 7, float %8237)  ; Saturate(value)
  %8239 = uitofp i32 %8219 to float
  %8240 = uitofp i32 %8222 to float
  %8241 = fadd fast float %8239, 5.000000e-01
  %8242 = fadd fast float %8240, 5.000000e-01
  %8243 = fmul fast float %8236, %8241
  %8244 = fmul fast float %8236, %8242
  %8245 = fadd fast float %8243, 0x3F0FFB4800000000
  %8246 = fadd fast float %8244, 0xBF0FFB4800000000
  %8247 = call float @dx.op.binary.f32(i32 35, float %8238, float %8245)  ; FMax(a,b)
  %8248 = call float @dx.op.binary.f32(i32 36, float %8247, float %8246)  ; FMin(a,b)
  %8249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8250 = extractvalue %dx.types.CBufRet.f32 %8249, 1
  %8251 = extractvalue %dx.types.CBufRet.f32 %8249, 2
  %8252 = extractvalue %dx.types.CBufRet.f32 %8249, 0
  %8253 = fmul fast float %8250, %8248
  %8254 = fadd fast float %8252, %8253
  %8255 = fadd fast float %8252, %8251
  %8256 = fsub fast float %8250, %8251
  %8257 = fadd fast float %8256, %8252
  %8258 = call float @dx.op.binary.f32(i32 35, float %8254, float %8255)  ; FMax(a,b)
  %8259 = call float @dx.op.binary.f32(i32 36, float %8258, float %8257)  ; FMin(a,b)
  %8260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %61, float %8199, float %8200, float %8259, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8261 = extractvalue %dx.types.ResRet.f32 %8260, 0
  %8262 = extractvalue %dx.types.ResRet.f32 %8260, 1
  %8263 = extractvalue %dx.types.ResRet.f32 %8260, 2
  %8264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %61, float %8199, float %8200, float %8259, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8265 = extractvalue %dx.types.ResRet.f32 %8264, 0
  %8266 = extractvalue %dx.types.ResRet.f32 %8264, 1
  %8267 = extractvalue %dx.types.ResRet.f32 %8264, 2
  %8268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8269 = extractvalue %dx.types.CBufRet.f32 %8268, 1
  %8270 = fmul fast float %8269, %8265
  %8271 = fmul fast float %8269, %8266
  %8272 = fmul fast float %8269, %8267
  br label %8273

; <label>:8273                                    ; preds = %8224, %8192, %8181
  %8274 = phi float [ 0.000000e+00, %8181 ], [ %8270, %8224 ], [ 0.000000e+00, %8192 ]
  %8275 = phi float [ 0.000000e+00, %8181 ], [ %8271, %8224 ], [ 0.000000e+00, %8192 ]
  %8276 = phi float [ 0.000000e+00, %8181 ], [ %8272, %8224 ], [ 0.000000e+00, %8192 ]
  %8277 = phi float [ 1.000000e+00, %8181 ], [ %8261, %8224 ], [ 1.000000e+00, %8192 ]
  %8278 = phi float [ 1.000000e+00, %8181 ], [ %8262, %8224 ], [ 1.000000e+00, %8192 ]
  %8279 = phi float [ 1.000000e+00, %8181 ], [ %8263, %8224 ], [ 1.000000e+00, %8192 ]
  %8280 = fcmp fast olt float %8022, 1.000000e+00
  %8281 = fcmp fast olt float %8183, %8180
  %8282 = or i1 %8280, %8281
  br i1 %8282, label %8283, label %8447

; <label>:8283                                    ; preds = %8273
  %8284 = lshr i32 %2068, 16
  %8285 = uitofp i32 %8284 to float
  %8286 = fmul fast float %8285, 0x3EF0001000000000
  %8287 = and i32 %2061, 65535
  %8288 = uitofp i32 %8287 to float
  %8289 = fmul fast float %8288, 0x3EF0001000000000
  %8290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %8291 = extractvalue %dx.types.CBufRet.f32 %8290, 3
  %8292 = fadd fast float %8291, 3.000000e+00
  %8293 = and i32 %1326, 16383
  %8294 = lshr i32 %1326, 16
  %8295 = and i32 %8294, 255
  %8296 = mul nuw nsw i32 %8293, 148
  %8297 = add nuw nsw i32 %8296, 60
  %8298 = add nuw nsw i32 %8296, 116
  %8299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.i32 %8299, 0
  %8301 = call i32 @dx.op.binary.i32(i32 40, i32 %8293, i32 %8300)  ; UMin(a,b)
  %8302 = mul i32 %8301, 36
  %8303 = add i32 %8302, 4
  %8304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %8305 = extractvalue %dx.types.CBufRet.f32 %8304, 0
  %8306 = fmul fast float %8289, %8305
  %8307 = fmul fast float %8286, %8305
  %8308 = extractvalue %dx.types.CBufRet.f32 %8304, 1
  %8309 = fadd fast float %8306, %8308
  %8310 = fadd fast float %8307, %8308
  %8311 = icmp eq i32 %8295, 0
  br i1 %8311, label %8372, label %8312

; <label>:8312                                    ; preds = %8283
  br label %8313

; <label>:8313                                    ; preds = %8313, %8312
  %8314 = phi float [ %8357, %8313 ], [ 0.000000e+00, %8312 ]
  %8315 = phi float [ %8367, %8313 ], [ 0.000000e+00, %8312 ]
  %8316 = phi float [ %8368, %8313 ], [ 0.000000e+00, %8312 ]
  %8317 = phi float [ %8369, %8313 ], [ 0.000000e+00, %8312 ]
  %8318 = phi float [ %8361, %8313 ], [ 0.000000e+00, %8312 ]
  %8319 = phi float [ %8362, %8313 ], [ 0.000000e+00, %8312 ]
  %8320 = phi float [ %8363, %8313 ], [ 0.000000e+00, %8312 ]
  %8321 = phi i32 [ %8326, %8313 ], [ %8295, %8312 ]
  %8322 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8321)  ; FirstbitLo(value)
  %8323 = and i32 %8322, 31
  %8324 = shl i32 1, %8323
  %8325 = xor i32 %8324, -1
  %8326 = and i32 %8321, %8325
  %8327 = shl i32 %8322, 2
  %8328 = add i32 %8303, %8327
  %8329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %8328, i32 undef)  ; BufferLoad(srv,index,wot)
  %8330 = extractvalue %dx.types.ResRet.i32 %8329, 0
  %8331 = and i32 %8330, 32767
  %8332 = add i32 %8297, %8327
  %8333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %8332, i32 undef)  ; BufferLoad(srv,index,wot)
  %8334 = extractvalue %dx.types.ResRet.f32 %8333, 0
  %8335 = add i32 %8298, %8327
  %8336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %8335, i32 undef)  ; BufferLoad(srv,index,wot)
  %8337 = extractvalue %dx.types.ResRet.i32 %8336, 0
  %8338 = add i32 %8337, 0
  %8339 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %8338, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8339, %dx.types.Handle %61, float %8309, float %8310, float %8334, float undef, i32 0, i32 0, i32 undef, float %8292)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8341 = extractvalue %dx.types.ResRet.f32 %8340, 0
  %8342 = mul nuw nsw i32 %8331, 928
  %8343 = add nuw nsw i32 %8342, 44
  %8344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %8343, i32 undef)  ; BufferLoad(srv,index,wot)
  %8345 = extractvalue %dx.types.ResRet.f32 %8344, 0
  %8346 = add nuw nsw i32 %8342, 48
  %8347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %8346, i32 undef)  ; BufferLoad(srv,index,wot)
  %8348 = extractvalue %dx.types.ResRet.f32 %8347, 0
  %8349 = extractvalue %dx.types.ResRet.f32 %8347, 1
  %8350 = extractvalue %dx.types.ResRet.f32 %8347, 2
  %8351 = add nuw nsw i32 %8342, 60
  %8352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %8351, i32 undef)  ; BufferLoad(srv,index,wot)
  %8353 = extractvalue %dx.types.ResRet.f32 %8352, 0
  %8354 = extractvalue %dx.types.ResRet.f32 %8352, 1
  %8355 = extractvalue %dx.types.ResRet.f32 %8352, 2
  %8356 = fmul fast float %8345, %8341
  %8357 = fadd fast float %8356, %8314
  %8358 = fmul fast float %8348, %8341
  %8359 = fmul fast float %8349, %8341
  %8360 = fmul fast float %8350, %8341
  %8361 = fadd fast float %8358, %8318
  %8362 = fadd fast float %8359, %8319
  %8363 = fadd fast float %8360, %8320
  %8364 = fmul fast float %8353, %8341
  %8365 = fmul fast float %8354, %8341
  %8366 = fmul fast float %8355, %8341
  %8367 = fadd fast float %8364, %8315
  %8368 = fadd fast float %8365, %8316
  %8369 = fadd fast float %8366, %8317
  %8370 = icmp eq i32 %8326, 0
  br i1 %8370, label %8371, label %8313

; <label>:8371                                    ; preds = %8313
  br label %8372

; <label>:8372                                    ; preds = %8371, %8283
  %8373 = phi float [ 0.000000e+00, %8283 ], [ %8357, %8371 ]
  %8374 = phi float [ 0.000000e+00, %8283 ], [ %8367, %8371 ]
  %8375 = phi float [ 0.000000e+00, %8283 ], [ %8368, %8371 ]
  %8376 = phi float [ 0.000000e+00, %8283 ], [ %8369, %8371 ]
  %8377 = phi float [ 0.000000e+00, %8283 ], [ %8361, %8371 ]
  %8378 = phi float [ 0.000000e+00, %8283 ], [ %8362, %8371 ]
  %8379 = phi float [ 0.000000e+00, %8283 ], [ %8363, %8371 ]
  %8380 = fmul fast float %8377, 0x3F847AE140000000
  %8381 = fmul fast float %8378, 0x3F847AE140000000
  %8382 = fmul fast float %8379, 0x3F847AE140000000
  %8383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %8384 = extractvalue %dx.types.CBufRet.f32 %8383, 0
  %8385 = extractvalue %dx.types.CBufRet.f32 %8383, 1
  %8386 = extractvalue %dx.types.CBufRet.f32 %8383, 2
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 0
  %8389 = extractvalue %dx.types.CBufRet.f32 %8387, 1
  %8390 = call float @dx.op.dot3.f32(i32 55, float %8384, float %8385, float %8386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8391 = select i1 %2107, float %8388, float %8384
  %8392 = select i1 %2107, float %8390, float %8385
  %8393 = select i1 %2107, float %8389, float %8386
  %8394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.f32 %8394, 0
  %8396 = extractvalue %dx.types.CBufRet.f32 %8394, 1
  %8397 = extractvalue %dx.types.CBufRet.f32 %8394, 2
  %8398 = fadd fast float %8377, %8374
  %8399 = fmul fast float %8398, 0x3F847AE140000000
  %8400 = fadd fast float %8378, %8375
  %8401 = fmul fast float %8400, 0x3F847AE140000000
  %8402 = fadd fast float %8379, %8376
  %8403 = fmul fast float %8402, 0x3F847AE140000000
  %8404 = call float @dx.op.dot3.f32(i32 55, float %8395, float %8396, float %8397, float %1911, float %1912, float %1913)  ; Dot3(ax,ay,az,bx,by,bz)
  %8405 = fcmp fast ogt float %8373, 0.000000e+00
  %8406 = select i1 %8405, float 1.000000e+00, float -1.000000e+00
  %8407 = fmul fast float %8406, 5.000000e-01
  %8408 = fmul fast float %8407, %8404
  %8409 = fmul fast float %8406, %8373
  %8410 = fadd fast float %8408, 4.921875e-01
  %8411 = fadd fast float %8409, -3.125000e-02
  %8412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %63, float %8410, float 0x3FB25F3060000000, float %8411, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8413 = extractvalue %dx.types.ResRet.f32 %8412, 0
  %8414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %8415 = extractvalue %dx.types.CBufRet.f32 %8414, 0
  %8416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %8417 = extractvalue %dx.types.CBufRet.f32 %8416, 0
  %8418 = fmul fast float %8417, %8415
  %8419 = extractvalue %dx.types.CBufRet.f32 %8416, 1
  %8420 = fadd fast float %8418, %8419
  %8421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %8422 = extractvalue %dx.types.CBufRet.f32 %8421, 0
  %8423 = fmul fast float %8422, %6936
  %8424 = extractvalue %dx.types.CBufRet.f32 %8421, 1
  %8425 = fadd fast float %8423, %8424
  %8426 = call float @dx.op.unary.f32(i32 7, float %8425)  ; Saturate(value)
  %8427 = extractvalue %dx.types.CBufRet.f32 %8414, 3
  %8428 = extractvalue %dx.types.CBufRet.f32 %8416, 2
  %8429 = fmul fast float %8428, %8427
  %8430 = extractvalue %dx.types.CBufRet.f32 %8416, 3
  %8431 = fadd fast float %8429, %8430
  %8432 = fmul fast float %8413, 0x400921FB60000000
  %8433 = fmul fast float %8432, %8420
  %8434 = fmul fast float %8433, %8426
  %8435 = fmul fast float %8391, %8380
  %8436 = fmul fast float %8435, %8434
  %8437 = fmul fast float %8392, %8381
  %8438 = fmul fast float %8437, %8434
  %8439 = fmul fast float %8393, %8382
  %8440 = fmul fast float %8439, %8434
  %8441 = fmul fast float %8380, %3174
  %8442 = fmul fast float %8441, %8431
  %8443 = fmul fast float %8381, %3175
  %8444 = fmul fast float %8443, %8431
  %8445 = fmul fast float %8382, %3176
  %8446 = fmul fast float %8445, %8431
  br label %8447

; <label>:8447                                    ; preds = %8372, %8273
  %8448 = phi float [ %8399, %8372 ], [ 0.000000e+00, %8273 ]
  %8449 = phi float [ %8401, %8372 ], [ 0.000000e+00, %8273 ]
  %8450 = phi float [ %8403, %8372 ], [ 0.000000e+00, %8273 ]
  %8451 = phi float [ %8436, %8372 ], [ 0.000000e+00, %8273 ]
  %8452 = phi float [ %8438, %8372 ], [ 0.000000e+00, %8273 ]
  %8453 = phi float [ %8440, %8372 ], [ 0.000000e+00, %8273 ]
  %8454 = phi float [ %8442, %8372 ], [ 0.000000e+00, %8273 ]
  %8455 = phi float [ %8444, %8372 ], [ 0.000000e+00, %8273 ]
  %8456 = phi float [ %8446, %8372 ], [ 0.000000e+00, %8273 ]
  %8457 = call float @dx.op.binary.f32(i32 35, float %8448, float 0x3F10000000000000)  ; FMax(a,b)
  %8458 = call float @dx.op.binary.f32(i32 35, float %8449, float 0x3F10000000000000)  ; FMax(a,b)
  %8459 = call float @dx.op.binary.f32(i32 35, float %8450, float 0x3F10000000000000)  ; FMax(a,b)
  %8460 = fdiv fast float 1.000000e+00, %8457
  %8461 = fdiv fast float 1.000000e+00, %8458
  %8462 = fdiv fast float 1.000000e+00, %8459
  %8463 = fmul fast float %8448, 0xBFF7154760000000
  %8464 = fmul fast float %8449, 0xBFF7154760000000
  %8465 = fmul fast float %8450, 0xBFF7154760000000
  %8466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %8467 = extractvalue %dx.types.CBufRet.f32 %8466, 3
  %8468 = call float @dx.op.dot3.f32(i32 55, float %8460, float %8461, float %8462, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8469 = fmul fast float %8467, %8468
  %8470 = call float @dx.op.binary.f32(i32 35, float %8184, float %8179)  ; FMax(a,b)
  %8471 = fsub fast float %8180, %8470
  %8472 = call float @dx.op.binary.f32(i32 35, float %8471, float 0.000000e+00)  ; FMax(a,b)
  %8473 = fsub fast float %8180, %8179
  %8474 = call float @dx.op.binary.f32(i32 35, float %8473, float 0.000000e+00)  ; FMax(a,b)
  %8475 = call float @dx.op.binary.f32(i32 36, float %8474, float %8469)  ; FMin(a,b)
  %8476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %8477 = extractvalue %dx.types.CBufRet.f32 %8476, 0
  %8478 = fmul fast float %8477, %8475
  %8479 = fmul fast float %8478, %8463
  %8480 = fmul fast float %8478, %8464
  %8481 = fmul fast float %8478, %8465
  %8482 = call float @dx.op.unary.f32(i32 21, float %8479)  ; Exp(value)
  %8483 = call float @dx.op.unary.f32(i32 21, float %8480)  ; Exp(value)
  %8484 = call float @dx.op.unary.f32(i32 21, float %8481)  ; Exp(value)
  %8485 = fmul fast float %8482, %8451
  %8486 = fmul fast float %8483, %8452
  %8487 = fmul fast float %8484, %8453
  %8488 = extractvalue %dx.types.CBufRet.f32 %8476, 1
  %8489 = fmul fast float %8488, %8475
  %8490 = fmul fast float %8489, %8463
  %8491 = fmul fast float %8489, %8464
  %8492 = fmul fast float %8489, %8465
  %8493 = call float @dx.op.unary.f32(i32 21, float %8490)  ; Exp(value)
  %8494 = call float @dx.op.unary.f32(i32 21, float %8491)  ; Exp(value)
  %8495 = call float @dx.op.unary.f32(i32 21, float %8492)  ; Exp(value)
  %8496 = fmul fast float %8493, %8454
  %8497 = fmul fast float %8494, %8455
  %8498 = fmul fast float %8495, %8456
  %8499 = fadd fast float %8496, %8485
  %8500 = fadd fast float %8497, %8486
  %8501 = fadd fast float %8498, %8487
  %8502 = fmul fast float %8472, %8463
  %8503 = fmul fast float %8472, %8464
  %8504 = fmul fast float %8472, %8465
  %8505 = call float @dx.op.unary.f32(i32 21, float %8502)  ; Exp(value)
  %8506 = call float @dx.op.unary.f32(i32 21, float %8503)  ; Exp(value)
  %8507 = call float @dx.op.unary.f32(i32 21, float %8504)  ; Exp(value)
  %8508 = call float @dx.op.unary.f32(i32 7, float %8505)  ; Saturate(value)
  %8509 = call float @dx.op.unary.f32(i32 7, float %8506)  ; Saturate(value)
  %8510 = call float @dx.op.unary.f32(i32 7, float %8507)  ; Saturate(value)
  %8511 = fmul fast float %8508, %8499
  %8512 = fmul fast float %8509, %8500
  %8513 = fmul fast float %8510, %8501
  %8514 = fsub fast float %8499, %8511
  %8515 = fsub fast float %8500, %8512
  %8516 = fsub fast float %8501, %8513
  %8517 = fmul fast float %8460, %8277
  %8518 = fmul fast float %8517, %8514
  %8519 = fmul fast float %8461, %8278
  %8520 = fmul fast float %8519, %8515
  %8521 = fmul fast float %8462, %8279
  %8522 = fmul fast float %8521, %8516
  %8523 = fadd fast float %8518, %8274
  %8524 = fadd fast float %8520, %8275
  %8525 = fadd fast float %8522, %8276
  %8526 = fmul fast float %8508, %8277
  %8527 = fmul fast float %8509, %8278
  %8528 = fmul fast float %8510, %8279
  %8529 = fmul fast float %8474, %8463
  %8530 = fmul fast float %8474, %8464
  %8531 = fmul fast float %8474, %8465
  %8532 = call float @dx.op.unary.f32(i32 21, float %8529)  ; Exp(value)
  %8533 = call float @dx.op.unary.f32(i32 21, float %8530)  ; Exp(value)
  %8534 = call float @dx.op.unary.f32(i32 21, float %8531)  ; Exp(value)
  %8535 = call float @dx.op.unary.f32(i32 7, float %8532)  ; Saturate(value)
  %8536 = call float @dx.op.unary.f32(i32 7, float %8533)  ; Saturate(value)
  %8537 = call float @dx.op.unary.f32(i32 7, float %8534)  ; Saturate(value)
  %8538 = fmul fast float %8535, %8499
  %8539 = fmul fast float %8536, %8500
  %8540 = fmul fast float %8537, %8501
  %8541 = fsub fast float %8499, %8538
  %8542 = fsub fast float %8500, %8539
  %8543 = fsub fast float %8501, %8540
  %8544 = fmul fast float %8541, %8460
  %8545 = fmul fast float %8542, %8461
  %8546 = fmul fast float %8543, %8462
  %8547 = fsub fast float %8179, %8183
  %8548 = fmul fast float %8185, %8547
  %8549 = call float @dx.op.unary.f32(i32 7, float %8548)  ; Saturate(value)
  %8550 = fmul fast float %8549, %8549
  %8551 = fmul fast float %8549, 2.000000e+00
  %8552 = fsub fast float 3.000000e+00, %8551
  %8553 = fmul fast float %8550, %8552
  %8554 = fsub fast float %8544, %8523
  %8555 = fsub fast float %8545, %8524
  %8556 = fsub fast float %8546, %8525
  %8557 = fmul fast float %8553, %8554
  %8558 = fmul fast float %8553, %8555
  %8559 = fmul fast float %8553, %8556
  %8560 = fadd fast float %8557, %8523
  %8561 = fadd fast float %8558, %8524
  %8562 = fadd fast float %8559, %8525
  %8563 = fsub fast float %8535, %8526
  %8564 = fsub fast float %8536, %8527
  %8565 = fsub fast float %8537, %8528
  %8566 = fmul fast float %8553, %8563
  %8567 = fmul fast float %8553, %8564
  %8568 = fmul fast float %8553, %8565
  %8569 = fadd fast float %8566, %8526
  %8570 = fadd fast float %8567, %8527
  %8571 = fadd fast float %8568, %8528
  br i1 %8280, label %8572, label %8640

; <label>:8572                                    ; preds = %8447
  %8573 = extractvalue %dx.types.CBufRet.f32 %8476, 3
  %8574 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8573)  ; Dot3(ax,ay,az,bx,by,bz)
  %8575 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1963, float %1964, float %1965)  ; Dot3(ax,ay,az,bx,by,bz)
  %8576 = fdiv fast float 1.000000e+00, %8575
  %8577 = fmul fast float %8576, %8574
  %8578 = fcmp ogt float %1913, -0.000000e+00
  %8579 = select i1 %8578, float %8573, float %8577
  %8580 = call float @dx.op.binary.f32(i32 36, float %8579, float %8469)  ; FMin(a,b)
  %8581 = fmul fast float %8477, %8580
  %8582 = fmul fast float %8581, %8463
  %8583 = fmul fast float %8581, %8464
  %8584 = fmul fast float %8581, %8465
  %8585 = call float @dx.op.unary.f32(i32 21, float %8582)  ; Exp(value)
  %8586 = call float @dx.op.unary.f32(i32 21, float %8583)  ; Exp(value)
  %8587 = call float @dx.op.unary.f32(i32 21, float %8584)  ; Exp(value)
  %8588 = fmul fast float %8585, %8451
  %8589 = fmul fast float %8586, %8452
  %8590 = fmul fast float %8587, %8453
  %8591 = fmul fast float %8488, %8580
  %8592 = fmul fast float %8591, %8463
  %8593 = fmul fast float %8591, %8464
  %8594 = fmul fast float %8591, %8465
  %8595 = call float @dx.op.unary.f32(i32 21, float %8592)  ; Exp(value)
  %8596 = call float @dx.op.unary.f32(i32 21, float %8593)  ; Exp(value)
  %8597 = call float @dx.op.unary.f32(i32 21, float %8594)  ; Exp(value)
  %8598 = fmul fast float %8595, %8454
  %8599 = fmul fast float %8596, %8455
  %8600 = fmul fast float %8597, %8456
  %8601 = fadd fast float %8598, %8588
  %8602 = fadd fast float %8599, %8589
  %8603 = fadd fast float %8600, %8590
  %8604 = fmul fast float %8579, %8463
  %8605 = fmul fast float %8579, %8464
  %8606 = fmul fast float %8579, %8465
  %8607 = call float @dx.op.unary.f32(i32 21, float %8604)  ; Exp(value)
  %8608 = call float @dx.op.unary.f32(i32 21, float %8605)  ; Exp(value)
  %8609 = call float @dx.op.unary.f32(i32 21, float %8606)  ; Exp(value)
  %8610 = call float @dx.op.unary.f32(i32 7, float %8607)  ; Saturate(value)
  %8611 = call float @dx.op.unary.f32(i32 7, float %8608)  ; Saturate(value)
  %8612 = call float @dx.op.unary.f32(i32 7, float %8609)  ; Saturate(value)
  %8613 = fmul fast float %8610, %8601
  %8614 = fmul fast float %8611, %8602
  %8615 = fmul fast float %8612, %8603
  %8616 = fsub fast float %8601, %8613
  %8617 = fsub fast float %8602, %8614
  %8618 = fsub fast float %8603, %8615
  %8619 = fmul fast float %8616, %8460
  %8620 = fmul fast float %8617, %8461
  %8621 = fmul fast float %8618, %8462
  %8622 = fsub fast float %8560, %8619
  %8623 = fsub fast float %8561, %8620
  %8624 = fsub fast float %8562, %8621
  %8625 = fmul fast float %8622, %8022
  %8626 = fmul fast float %8623, %8022
  %8627 = fmul fast float %8624, %8022
  %8628 = fadd fast float %8625, %8619
  %8629 = fadd fast float %8626, %8620
  %8630 = fadd fast float %8627, %8621
  %8631 = fsub fast float %8569, %8610
  %8632 = fsub fast float %8570, %8611
  %8633 = fsub fast float %8571, %8612
  %8634 = fmul fast float %8631, %8022
  %8635 = fmul fast float %8632, %8022
  %8636 = fmul fast float %8633, %8022
  %8637 = fadd fast float %8634, %8610
  %8638 = fadd fast float %8635, %8611
  %8639 = fadd fast float %8636, %8612
  br label %8640

; <label>:8640                                    ; preds = %8572, %8447
  %8641 = phi float [ %8628, %8572 ], [ %8560, %8447 ]
  %8642 = phi float [ %8629, %8572 ], [ %8561, %8447 ]
  %8643 = phi float [ %8630, %8572 ], [ %8562, %8447 ]
  %8644 = phi float [ %8637, %8572 ], [ %8569, %8447 ]
  %8645 = phi float [ %8638, %8572 ], [ %8570, %8447 ]
  %8646 = phi float [ %8639, %8572 ], [ %8571, %8447 ]
  %8647 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.i32 %8647, 3
  %8649 = and i32 %8648, 3
  %8650 = icmp ne i32 %8649, 0
  %8651 = and i32 %8648, 4
  %8652 = icmp ne i32 %8651, 0
  %8653 = and i1 %8650, %8652
  br i1 %8653, label %8654, label %8661

; <label>:8654                                    ; preds = %8640
  %8655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %63, float %8177, float %8178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8656 = extractvalue %dx.types.ResRet.f32 %8655, 0
  %8657 = fsub fast float 1.000000e+00, %8656
  %8658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8659 = extractvalue %dx.types.CBufRet.f32 %8658, 0
  %8660 = fcmp fast olt float %8657, %8659
  br label %8664

; <label>:8661                                    ; preds = %8640
  %8662 = icmp eq i32 %8651, 0
  %8663 = and i1 %8650, %8662
  br label %8664

; <label>:8664                                    ; preds = %8661, %8654
  %8665 = phi i1 [ %8660, %8654 ], [ %8663, %8661 ]
  %8666 = xor i1 %2107, %8665
  %8667 = select i1 %8666, float 0.000000e+00, float %8022
  %8668 = fcmp fast ogt float %8667, 0.000000e+00
  %8669 = select i1 %8668, float %8177, float 0.000000e+00
  %8670 = select i1 %8668, float %8178, float 0.000000e+00
  %8671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %63, float %8669, float %8670, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8672 = extractvalue %dx.types.ResRet.f32 %8671, 0
  %8673 = extractvalue %dx.types.ResRet.f32 %8671, 1
  %8674 = extractvalue %dx.types.ResRet.f32 %8671, 2
  %8675 = fmul fast float %8673, %8667
  %8676 = fmul fast float %8674, %8667
  %8677 = select i1 %2107, float 0.000000e+00, float %8675
  %8678 = select i1 %2107, float 0.000000e+00, float %8676
  %8679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8680 = extractvalue %dx.types.CBufRet.f32 %8679, 1
  %8681 = fmul fast float %8667, %8644
  %8682 = fmul fast float %8681, %8672
  %8683 = fmul fast float %8682, %8680
  %8684 = fmul fast float %8680, %8645
  %8685 = fmul fast float %8684, %8677
  %8686 = fmul fast float %8680, %8646
  %8687 = fmul fast float %8686, %8678
  %8688 = fadd fast float %8683, %8641
  %8689 = fadd fast float %8685, %8642
  %8690 = fadd fast float %8687, %8643
  br label %8730

; <label>:8691                                    ; preds = %8176
  %8692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8693 = extractvalue %dx.types.CBufRet.i32 %8692, 3
  %8694 = and i32 %8693, 3
  %8695 = icmp ne i32 %8694, 0
  %8696 = and i32 %8693, 4
  %8697 = icmp ne i32 %8696, 0
  %8698 = and i1 %8695, %8697
  br i1 %8698, label %8699, label %8706

; <label>:8699                                    ; preds = %8691
  %8700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %63, float %8177, float %8178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8701 = extractvalue %dx.types.ResRet.f32 %8700, 0
  %8702 = fsub fast float 1.000000e+00, %8701
  %8703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8703, 0
  %8705 = fcmp fast olt float %8702, %8704
  br label %8709

; <label>:8706                                    ; preds = %8691
  %8707 = icmp eq i32 %8696, 0
  %8708 = and i1 %8695, %8707
  br label %8709

; <label>:8709                                    ; preds = %8706, %8699
  %8710 = phi i1 [ %8705, %8699 ], [ %8708, %8706 ]
  %8711 = xor i1 %2107, %8710
  %8712 = select i1 %8711, float 0.000000e+00, float %8022
  %8713 = fcmp fast ogt float %8712, 0.000000e+00
  %8714 = select i1 %8713, float %8177, float 0.000000e+00
  %8715 = select i1 %8713, float %8178, float 0.000000e+00
  %8716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %63, float %8714, float %8715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8717 = extractvalue %dx.types.ResRet.f32 %8716, 0
  %8718 = extractvalue %dx.types.ResRet.f32 %8716, 1
  %8719 = extractvalue %dx.types.ResRet.f32 %8716, 2
  %8720 = fmul fast float %8717, %8712
  %8721 = fmul fast float %8718, %8712
  %8722 = fmul fast float %8719, %8712
  %8723 = select i1 %2107, float 0.000000e+00, float %8721
  %8724 = select i1 %2107, float 0.000000e+00, float %8722
  %8725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8726 = extractvalue %dx.types.CBufRet.f32 %8725, 1
  %8727 = fmul fast float %8720, %8726
  %8728 = fmul fast float %8723, %8726
  %8729 = fmul fast float %8724, %8726
  br label %8730

; <label>:8730                                    ; preds = %8709, %8664
  %8731 = phi float [ %8727, %8709 ], [ %8688, %8664 ]
  %8732 = phi float [ %8728, %8709 ], [ %8689, %8664 ]
  %8733 = phi float [ %8729, %8709 ], [ %8690, %8664 ]
  %8734 = fmul fast float %8731, %3236
  %8735 = fmul fast float %8732, %3236
  %8736 = fmul fast float %8733, %3236
  %8737 = select i1 %117, float %8091, float 1.000000e+00
  %8738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8739 = extractvalue %dx.types.CBufRet.f32 %8738, 0
  %8740 = bitcast float %8739 to i32
  %8741 = and i32 %8740, 255
  %8742 = uitofp i32 %8741 to float
  %8743 = fptoui float %8742 to i32
  %8744 = icmp eq i32 %8743, 13
  br i1 %8744, label %8745, label %8765

; <label>:8745                                    ; preds = %8730
  %8746 = fadd fast float %1371, 2.000000e+00
  %8747 = fadd fast float %1373, 1.000000e+00
  %8748 = fsub fast float 1.000000e+00, %1374
  %8749 = fmul fast float %8746, 5.000000e-01
  %8750 = fmul fast float %8747, 5.000000e-01
  %8751 = fmul fast float %8748, 5.000000e-01
  %8752 = call float @dx.op.unary.f32(i32 7, float %8749)  ; Saturate(value)
  %8753 = call float @dx.op.unary.f32(i32 7, float %8750)  ; Saturate(value)
  %8754 = call float @dx.op.unary.f32(i32 7, float %8751)  ; Saturate(value)
  %8755 = fmul fast float %8752, 1.023000e+03
  %8756 = fmul fast float %8753, 1.023000e+03
  %8757 = fmul fast float %8754, 1.023000e+03
  %8758 = fptoui float %8755 to i32
  %8759 = fptoui float %8756 to i32
  %8760 = fptoui float %8757 to i32
  %8761 = shl i32 %8759, 10
  %8762 = or i32 %8761, %8758
  %8763 = shl i32 %8760, 20
  %8764 = or i32 %8762, %8763
  br label %8765

; <label>:8765                                    ; preds = %8745, %8730
  %8766 = phi i32 [ %8764, %8745 ], [ %8001, %8730 ]
  %8767 = icmp eq i32 %8743, 14
  br i1 %8767, label %8768, label %8788

; <label>:8768                                    ; preds = %8765
  %8769 = fadd fast float %1368, 1.000000e+00
  %8770 = fadd fast float %1378, 1.000000e+00
  %8771 = fsub fast float 1.000000e+00, %120
  %8772 = fmul fast float %8769, 5.000000e-01
  %8773 = fmul fast float %8770, 5.000000e-01
  %8774 = fmul fast float %8771, 5.000000e-01
  %8775 = call float @dx.op.unary.f32(i32 7, float %8772)  ; Saturate(value)
  %8776 = call float @dx.op.unary.f32(i32 7, float %8773)  ; Saturate(value)
  %8777 = call float @dx.op.unary.f32(i32 7, float %8774)  ; Saturate(value)
  %8778 = fmul fast float %8775, 1.023000e+03
  %8779 = fmul fast float %8776, 1.023000e+03
  %8780 = fmul fast float %8777, 1.023000e+03
  %8781 = fptoui float %8778 to i32
  %8782 = fptoui float %8779 to i32
  %8783 = fptoui float %8780 to i32
  %8784 = shl i32 %8782, 10
  %8785 = or i32 %8784, %8781
  %8786 = shl i32 %8783, 20
  %8787 = or i32 %8785, %8786
  br label %8788

; <label>:8788                                    ; preds = %8768, %8765
  %8789 = phi i32 [ %8787, %8768 ], [ %8766, %8765 ]
  %8790 = icmp eq i32 %8743, 15
  br i1 %8790, label %8791, label %8811

; <label>:8791                                    ; preds = %8788
  %8792 = fadd fast float %119, 1.000000e+00
  %8793 = fadd fast float %120, 1.000000e+00
  %8794 = fadd fast float %121, 1.000000e+00
  %8795 = fmul fast float %8792, 5.000000e-01
  %8796 = fmul fast float %8793, 5.000000e-01
  %8797 = fmul fast float %8794, 5.000000e-01
  %8798 = call float @dx.op.unary.f32(i32 7, float %8795)  ; Saturate(value)
  %8799 = call float @dx.op.unary.f32(i32 7, float %8796)  ; Saturate(value)
  %8800 = call float @dx.op.unary.f32(i32 7, float %8797)  ; Saturate(value)
  %8801 = fmul fast float %8798, 1.023000e+03
  %8802 = fmul fast float %8799, 1.023000e+03
  %8803 = fmul fast float %8800, 1.023000e+03
  %8804 = fptoui float %8801 to i32
  %8805 = fptoui float %8802 to i32
  %8806 = fptoui float %8803 to i32
  %8807 = shl i32 %8805, 10
  %8808 = or i32 %8807, %8804
  %8809 = shl i32 %8806, 20
  %8810 = or i32 %8808, %8809
  br label %8811

; <label>:8811                                    ; preds = %8791, %8788
  %8812 = phi i32 [ %8810, %8791 ], [ %8789, %8788 ]
  %8813 = fsub fast float 1.000000e+00, %1967
  %8814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8815 = extractvalue %dx.types.CBufRet.f32 %8814, 0
  %8816 = fmul fast float %8815, %8813
  %8817 = fmul fast float %1885, 2.000000e+00
  %8818 = fmul fast float %8817, %1922
  %8819 = fsub fast float %1913, %8818
  %8820 = call float @dx.op.unary.f32(i32 7, float %8819)  ; Saturate(value)
  %8821 = fsub fast float 1.000000e+00, %8820
  %8822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8823 = extractvalue %dx.types.CBufRet.f32 %8822, 3
  %8824 = fmul fast float %8823, %8821
  %8825 = fsub fast float 1.000000e+00, %2081
  %8826 = call float @dx.op.unary.f32(i32 7, float %8825)  ; Saturate(value)
  %8827 = fadd fast float %8019, %2083
  %8828 = fmul fast float %8827, %2081
  %8829 = fmul fast float %8824, %8826
  %8830 = icmp eq i32 %8743, 39
  %8831 = icmp eq i32 %8743, 40
  %8832 = select i1 %8831, float %2081, float 0.000000e+00
  %8833 = select i1 %8830, float %8827, float %8832
  %8834 = fmul fast float %8017, %1895
  %8835 = fmul fast float %8018, %1896
  %8836 = fmul fast float %8019, %1897
  %8837 = fadd fast float %8834, %8014
  %8838 = fadd fast float %8837, %8734
  %8839 = fadd fast float %8835, %8015
  %8840 = fadd fast float %8839, %8735
  %8841 = fadd fast float %8836, %8016
  %8842 = fadd fast float %8841, %8736
  br i1 %117, label %8843, label %9645

; <label>:8843                                    ; preds = %8811
  %8844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8845 = extractvalue %dx.types.CBufRet.f32 %8844, 0
  %8846 = extractvalue %dx.types.CBufRet.f32 %8844, 1
  %8847 = extractvalue %dx.types.CBufRet.f32 %8844, 2
  %8848 = extractvalue %dx.types.CBufRet.f32 %8844, 3
  %8849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8850 = extractvalue %dx.types.CBufRet.f32 %8849, 0
  %8851 = extractvalue %dx.types.CBufRet.f32 %8849, 1
  %8852 = extractvalue %dx.types.CBufRet.f32 %8849, 2
  %8853 = extractvalue %dx.types.CBufRet.f32 %8849, 3
  %8854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8855 = extractvalue %dx.types.CBufRet.f32 %8854, 0
  %8856 = extractvalue %dx.types.CBufRet.f32 %8854, 1
  %8857 = extractvalue %dx.types.CBufRet.f32 %8854, 2
  %8858 = extractvalue %dx.types.CBufRet.f32 %8854, 3
  %8859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8860 = extractvalue %dx.types.CBufRet.f32 %8859, 0
  %8861 = extractvalue %dx.types.CBufRet.f32 %8859, 1
  %8862 = extractvalue %dx.types.CBufRet.f32 %8859, 2
  %8863 = extractvalue %dx.types.CBufRet.f32 %8859, 3
  %8864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8865 = extractvalue %dx.types.CBufRet.f32 %8864, 3
  %8866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8867 = extractvalue %dx.types.CBufRet.f32 %8866, 3
  %8868 = extractvalue %dx.types.CBufRet.f32 %8866, 0
  %8869 = extractvalue %dx.types.CBufRet.f32 %8866, 1
  %8870 = extractvalue %dx.types.CBufRet.f32 %8866, 2
  %8871 = fcmp fast olt float %8870, -5.000000e-01
  %8872 = fmul fast float %1910, %1909
  %8873 = fadd fast float %8872, %8848
  %8874 = call float @dx.op.dot3.f32(i32 55, float %1911, float %1912, float %1913, float %8845, float %8846, float %8847)  ; Dot3(ax,ay,az,bx,by,bz)
  %8875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8876 = extractvalue %dx.types.CBufRet.i32 %8875, 1
  %8877 = and i32 %8876, 1
  %8878 = icmp ne i32 %8877, 0
  %8879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8880 = extractvalue %dx.types.CBufRet.f32 %8879, 2
  %8881 = fcmp fast ogt float %8880, 0.000000e+00
  %8882 = and i1 %8878, %8881
  br i1 %8882, label %8883, label %9289, !dx.controlflow.hints !166

; <label>:8883                                    ; preds = %8843
  %8884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8885 = extractvalue %dx.types.CBufRet.f32 %8884, 3
  %8886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8887 = extractvalue %dx.types.CBufRet.f32 %8886, 2
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8888, 2
  %8890 = fsub fast float %8887, %8889
  %8891 = and i32 %8876, 2
  %8892 = extractvalue %dx.types.CBufRet.i32 %8875, 0
  %8893 = call i32 @dx.op.binary.i32(i32 40, i32 %8892, i32 3)  ; UMin(a,b)
  %8894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8895 = extractvalue %dx.types.CBufRet.f32 %8894, 0
  %8896 = extractvalue %dx.types.CBufRet.f32 %8894, 1
  %8897 = extractvalue %dx.types.CBufRet.f32 %8888, 0
  %8898 = extractvalue %dx.types.CBufRet.f32 %8888, 1
  %8899 = fsub fast float %8895, %8897
  %8900 = fsub fast float %8896, %8898
  %8901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8902 = extractvalue %dx.types.CBufRet.f32 %8901, 0
  %8903 = fcmp fast ogt float %8902, 0.000000e+00
  %8904 = fsub fast float -0.000000e+00, %8899
  %8905 = fsub fast float -0.000000e+00, %8900
  %8906 = call float @dx.op.dot2.f32(i32 54, float %1911, float %1912, float %1911, float %1912)  ; Dot2(ax,ay,bx,by)
  %8907 = call float @dx.op.dot2.f32(i32 54, float %1911, float %1912, float %8904, float %8905)  ; Dot2(ax,ay,bx,by)
  %8908 = fmul fast float %8907, 2.000000e+00
  %8909 = call float @dx.op.dot2.f32(i32 54, float %8904, float %8905, float %8904, float %8905)  ; Dot2(ax,ay,bx,by)
  %8910 = fmul fast float %8902, %8902
  %8911 = fsub fast float %8909, %8910
  %8912 = fmul fast float %8908, %8908
  %8913 = fmul fast float %8906, 4.000000e+00
  %8914 = fmul fast float %8913, %8911
  %8915 = fsub fast float %8912, %8914
  %8916 = fcmp fast ogt float %8915, 0.000000e+00
  br i1 %8916, label %8917, label %8932

; <label>:8917                                    ; preds = %8883
  %8918 = fcmp fast ogt float %8908, 0.000000e+00
  %8919 = call float @dx.op.unary.f32(i32 24, float %8915)  ; Sqrt(value)
  %8920 = fsub fast float -0.000000e+00, %8919
  %8921 = select i1 %8918, float %8919, float %8920
  %8922 = fadd fast float %8921, %8908
  %8923 = fmul float %8922, -5.000000e-01
  %8924 = fdiv fast float %8923, %8906
  %8925 = call float @dx.op.binary.f32(i32 35, float %8924, float 0.000000e+00)  ; FMax(a,b)
  %8926 = call float @dx.op.binary.f32(i32 36, float %8872, float %8925)  ; FMin(a,b)
  %8927 = fdiv fast float %8911, %8923
  %8928 = call float @dx.op.binary.f32(i32 35, float %8927, float 0.000000e+00)  ; FMax(a,b)
  %8929 = call float @dx.op.binary.f32(i32 36, float %8872, float %8928)  ; FMin(a,b)
  %8930 = call float @dx.op.binary.f32(i32 36, float %8926, float %8929)  ; FMin(a,b)
  %8931 = call float @dx.op.binary.f32(i32 35, float %8926, float %8929)  ; FMax(a,b)
  br label %8932

; <label>:8932                                    ; preds = %8917, %8883
  %8933 = phi float [ %8931, %8917 ], [ -1.000000e+00, %8883 ]
  %8934 = phi float [ %8930, %8917 ], [ -1.000000e+00, %8883 ]
  %8935 = phi i1 [ true, %8917 ], [ false, %8883 ]
  %8936 = and i1 %8903, %8935
  br i1 %8936, label %8937, label %8939

; <label>:8937                                    ; preds = %8932
  %8938 = fcmp fast oeq float %8934, %8933
  br i1 %8938, label %9242, label %8940

; <label>:8939                                    ; preds = %8932
  br i1 %8903, label %9242, label %8940

; <label>:8940                                    ; preds = %8939, %8937
  %8941 = phi float [ %8872, %8939 ], [ %8933, %8937 ]
  %8942 = phi float [ 0.000000e+00, %8939 ], [ %8934, %8937 ]
  %8943 = icmp ne i32 %8891, 0
  %8944 = fmul fast float %8941, %1913
  %8945 = fadd fast float %8944, %8885
  %8946 = fmul fast float %8945, %8941
  %8947 = select i1 %8943, float 0.000000e+00, float %8946
  %8948 = fcmp fast oeq float %1913, 0.000000e+00
  %8949 = fdiv fast float %8890, %1913
  %8950 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8949)  ; FMax(a,b)
  %8951 = select i1 %8948, float %8941, float %8950
  %8952 = call float @dx.op.binary.f32(i32 36, float %8941, float %8951)  ; FMin(a,b)
  %8953 = fcmp fast ogt float %1913, 0.000000e+00
  %8954 = fcmp fast olt float %8890, 0.000000e+00
  br i1 %8953, label %8955, label %9012

; <label>:8955                                    ; preds = %8940
  %8956 = icmp eq i32 %8891, 0
  br i1 %8954, label %8957, label %9001

; <label>:8957                                    ; preds = %8955
  %8958 = select i1 %8956, float %8941, float 0.000000e+00
  %8959 = fsub fast float -0.000000e+00, %8958
  %8960 = call float @dx.op.unary.f32(i32 6, float %8959)  ; FAbs(value)
  %8961 = fmul fast float %8958, %1913
  %8962 = fadd fast float %8961, %8885
  %8963 = fmul fast float %8960, %8962
  %8964 = fsub fast float %8947, %8963
  %8965 = fsub fast float %8941, %8960
  %8966 = select i1 %8956, float %8965, float 0.000000e+00
  %8967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8968 = extractvalue %dx.types.CBufRet.f32 %8967, 0
  %8969 = extractvalue %dx.types.CBufRet.f32 %8967, 1
  %8970 = extractvalue %dx.types.CBufRet.f32 %8967, 2
  %8971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8972 = extractvalue %dx.types.CBufRet.f32 %8971, 0
  %8973 = extractvalue %dx.types.CBufRet.f32 %8971, 1
  %8974 = extractvalue %dx.types.CBufRet.f32 %8971, 2
  %8975 = extractvalue %dx.types.CBufRet.f32 %8971, 3
  %8976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8977 = extractvalue %dx.types.CBufRet.f32 %8976, 3
  %8978 = call float @dx.op.binary.f32(i32 36, float %8964, float %8977)  ; FMin(a,b)
  %8979 = fmul fast float %8975, %8966
  %8980 = call float @dx.op.unary.f32(i32 7, float %8979)  ; Saturate(value)
  %8981 = fsub fast float %8972, %8968
  %8982 = fsub fast float %8973, %8969
  %8983 = fsub fast float %8974, %8970
  %8984 = fmul fast float %8980, %8981
  %8985 = fmul fast float %8980, %8982
  %8986 = fmul fast float %8980, %8983
  %8987 = fadd fast float %8984, %8968
  %8988 = fadd fast float %8985, %8969
  %8989 = fadd fast float %8986, %8970
  %8990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8990, 0
  %8992 = extractvalue %dx.types.CBufRet.f32 %8990, 1
  %8993 = fadd fast float %8992, %8991
  %8994 = call float @dx.op.unary.f32(i32 7, float %8993)  ; Saturate(value)
  %8995 = extractvalue %dx.types.CBufRet.f32 %8990, 2
  %8996 = extractvalue %dx.types.CBufRet.f32 %8990, 3
  %8997 = fadd fast float %8996, %8995
  %8998 = call float @dx.op.unary.f32(i32 7, float %8997)  ; Saturate(value)
  %8999 = fmul fast float %8994, %8978
  %9000 = fmul fast float %8999, %8998
  br label %9242

; <label>:9001                                    ; preds = %8955
  br i1 %8956, label %9002, label %9023

; <label>:9002                                    ; preds = %9001
  %9003 = call float @dx.op.binary.f32(i32 36, float %8952, float %8942)  ; FMin(a,b)
  %9004 = fsub fast float %8952, %9003
  %9005 = fsub fast float %9004, %8941
  %9006 = call float @dx.op.unary.f32(i32 6, float %9005)  ; FAbs(value)
  %9007 = fadd fast float %9004, %8941
  %9008 = fmul fast float %9007, %1913
  %9009 = fadd fast float %9008, %8885
  %9010 = fmul fast float %9009, %9006
  %9011 = fsub fast float %8947, %9010
  br label %9023

; <label>:9012                                    ; preds = %8940
  br i1 %8954, label %9013, label %9023

; <label>:9013                                    ; preds = %9012
  %9014 = call float @dx.op.binary.f32(i32 35, float %8942, float %8952)  ; FMax(a,b)
  %9015 = icmp eq i32 %8891, 0
  %9016 = select i1 %9015, float %8952, float 0.000000e+00
  %9017 = fsub fast float -0.000000e+00, %9016
  %9018 = call float @dx.op.unary.f32(i32 6, float %9017)  ; FAbs(value)
  %9019 = fmul fast float %9016, %1913
  %9020 = fadd fast float %9019, %8885
  %9021 = fmul fast float %9018, %9020
  %9022 = fsub fast float %8947, %9021
  br label %9023

; <label>:9023                                    ; preds = %9013, %9012, %9002, %9001
  %9024 = phi float [ %8942, %9001 ], [ %8942, %9002 ], [ %9014, %9013 ], [ %8942, %9012 ]
  %9025 = phi float [ 0.000000e+00, %9001 ], [ %9006, %9002 ], [ %9018, %9013 ], [ 0.000000e+00, %9012 ]
  %9026 = phi float [ %8947, %9001 ], [ %9011, %9002 ], [ %9022, %9013 ], [ %8947, %9012 ]
  %9027 = phi float [ %8952, %9001 ], [ %8952, %9002 ], [ %8941, %9013 ], [ %8941, %9012 ]
  %9028 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %9028, align 4, !tbaa !108, !noalias !167
  %9029 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %9029, align 4, !tbaa !108, !noalias !167
  %9030 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %9030, align 4, !tbaa !108, !noalias !167
  %9031 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %9031, align 4, !tbaa !108, !noalias !167
  %9032 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %9032, align 4, !tbaa !108, !noalias !167
  %9033 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %9033, align 4, !tbaa !108, !noalias !167
  %9034 = icmp sgt i32 %8893, 0
  br i1 %9034, label %9035, label %9096

; <label>:9035                                    ; preds = %9023
  br label %9036

; <label>:9036                                    ; preds = %9085, %9035
  %9037 = phi i32 [ %9086, %9085 ], [ 0, %9035 ]
  %9038 = phi i32 [ %9087, %9085 ], [ 0, %9035 ]
  %9039 = add nuw i32 %9038, 171
  %9040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %9039)  ; CBufferLoadLegacy(handle,regIndex)
  %9041 = extractvalue %dx.types.CBufRet.f32 %9040, 0
  %9042 = extractvalue %dx.types.CBufRet.f32 %9040, 1
  %9043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9044 = extractvalue %dx.types.CBufRet.f32 %9043, 0
  %9045 = extractvalue %dx.types.CBufRet.f32 %9043, 1
  %9046 = fsub fast float %9041, %9044
  %9047 = fsub fast float %9042, %9045
  %9048 = extractvalue %dx.types.CBufRet.f32 %9040, 2
  %9049 = fsub fast float -0.000000e+00, %9046
  %9050 = fsub fast float -0.000000e+00, %9047
  %9051 = call float @dx.op.dot2.f32(i32 54, float %1911, float %1912, float %9049, float %9050)  ; Dot2(ax,ay,bx,by)
  %9052 = fmul fast float %9051, 2.000000e+00
  %9053 = call float @dx.op.dot2.f32(i32 54, float %9049, float %9050, float %9049, float %9050)  ; Dot2(ax,ay,bx,by)
  %9054 = fmul fast float %9048, %9048
  %9055 = fsub fast float %9053, %9054
  %9056 = fmul fast float %9052, %9052
  %9057 = fmul fast float %8913, %9055
  %9058 = fsub fast float %9056, %9057
  %9059 = fcmp fast ogt float %9058, 0.000000e+00
  br i1 %9059, label %9060, label %9075

; <label>:9060                                    ; preds = %9036
  %9061 = fcmp fast ogt float %9052, 0.000000e+00
  %9062 = call float @dx.op.unary.f32(i32 24, float %9058)  ; Sqrt(value)
  %9063 = fsub fast float -0.000000e+00, %9062
  %9064 = select i1 %9061, float %9062, float %9063
  %9065 = fadd fast float %9064, %9052
  %9066 = fmul float %9065, -5.000000e-01
  %9067 = fdiv fast float %9066, %8906
  %9068 = call float @dx.op.binary.f32(i32 35, float %9067, float 0.000000e+00)  ; FMax(a,b)
  %9069 = call float @dx.op.binary.f32(i32 36, float %8941, float %9068)  ; FMin(a,b)
  %9070 = fdiv fast float %9055, %9066
  %9071 = call float @dx.op.binary.f32(i32 35, float %9070, float 0.000000e+00)  ; FMax(a,b)
  %9072 = call float @dx.op.binary.f32(i32 36, float %8941, float %9071)  ; FMin(a,b)
  %9073 = call float @dx.op.binary.f32(i32 36, float %9069, float %9072)  ; FMin(a,b)
  %9074 = call float @dx.op.binary.f32(i32 35, float %9069, float %9072)  ; FMax(a,b)
  br label %9075

; <label>:9075                                    ; preds = %9060, %9036
  %9076 = phi float [ %9074, %9060 ], [ -1.000000e+00, %9036 ]
  %9077 = phi float [ %9073, %9060 ], [ -1.000000e+00, %9036 ]
  %9078 = phi i1 [ true, %9060 ], [ false, %9036 ]
  br i1 %9078, label %9079, label %9085

; <label>:9079                                    ; preds = %9075
  %9080 = call float @dx.op.binary.f32(i32 35, float %9024, float %9077)  ; FMax(a,b)
  %9081 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %9038
  store float %9080, float* %9081, align 4, !tbaa !108, !noalias !167
  %9082 = call float @dx.op.binary.f32(i32 35, float %9024, float %9076)  ; FMax(a,b)
  %9083 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %9038
  store float %9082, float* %9083, align 4, !tbaa !108, !noalias !167
  %9084 = add nsw i32 %9037, 1
  br label %9085

; <label>:9085                                    ; preds = %9079, %9075
  %9086 = phi i32 [ %9084, %9079 ], [ %9037, %9075 ]
  %9087 = add nuw nsw i32 %9038, 1
  %9088 = icmp eq i32 %9087, %8893
  br i1 %9088, label %9089, label %9036

; <label>:9089                                    ; preds = %9085
  %9090 = load float, float* %9030, align 4, !tbaa !108, !alias.scope !183, !noalias !186
  %9091 = load float, float* %9029, align 4, !tbaa !108, !alias.scope !189, !noalias !190
  %9092 = load float, float* %9028, align 4, !tbaa !108, !alias.scope !191, !noalias !192
  %9093 = load float, float* %9033, align 4, !tbaa !108, !alias.scope !193, !noalias !196
  %9094 = load float, float* %9032, align 4, !tbaa !108, !alias.scope !199, !noalias !200
  %9095 = load float, float* %9031, align 4, !tbaa !108, !alias.scope !201, !noalias !202
  br label %9096

; <label>:9096                                    ; preds = %9089, %9023
  %9097 = phi float [ -1.000000e+00, %9023 ], [ %9095, %9089 ]
  %9098 = phi float [ -1.000000e+00, %9023 ], [ %9094, %9089 ]
  %9099 = phi float [ -1.000000e+00, %9023 ], [ %9093, %9089 ]
  %9100 = phi float [ -1.000000e+00, %9023 ], [ %9092, %9089 ]
  %9101 = phi float [ -1.000000e+00, %9023 ], [ %9091, %9089 ]
  %9102 = phi float [ -1.000000e+00, %9023 ], [ %9090, %9089 ]
  %9103 = phi i32 [ 0, %9023 ], [ %9086, %9089 ]
  %9104 = call float @dx.op.binary.f32(i32 36, float %9101, float %9102)  ; FMin(a,b)
  %9105 = call float @dx.op.binary.f32(i32 36, float %9100, float %9104)  ; FMin(a,b)
  %9106 = call float @dx.op.binary.f32(i32 35, float %9100, float %9101)  ; FMax(a,b)
  %9107 = call float @dx.op.binary.f32(i32 36, float %9106, float %9102)  ; FMin(a,b)
  %9108 = call float @dx.op.binary.f32(i32 36, float %9100, float %9101)  ; FMin(a,b)
  %9109 = call float @dx.op.binary.f32(i32 35, float %9108, float %9107)  ; FMax(a,b)
  %9110 = call float @dx.op.binary.f32(i32 35, float %9101, float %9102)  ; FMax(a,b)
  %9111 = call float @dx.op.binary.f32(i32 35, float %9100, float %9110)  ; FMax(a,b)
  store float %9105, float* %9028, align 4, !tbaa !108, !alias.scope !191, !noalias !192
  store float %9109, float* %9029, align 4, !tbaa !108, !alias.scope !189, !noalias !190
  store float %9111, float* %9030, align 4, !tbaa !108, !alias.scope !183, !noalias !186
  %9112 = call float @dx.op.binary.f32(i32 36, float %9098, float %9099)  ; FMin(a,b)
  %9113 = call float @dx.op.binary.f32(i32 36, float %9097, float %9112)  ; FMin(a,b)
  %9114 = call float @dx.op.binary.f32(i32 35, float %9097, float %9098)  ; FMax(a,b)
  %9115 = call float @dx.op.binary.f32(i32 36, float %9114, float %9099)  ; FMin(a,b)
  %9116 = call float @dx.op.binary.f32(i32 36, float %9097, float %9098)  ; FMin(a,b)
  %9117 = call float @dx.op.binary.f32(i32 35, float %9116, float %9115)  ; FMax(a,b)
  %9118 = call float @dx.op.binary.f32(i32 35, float %9098, float %9099)  ; FMax(a,b)
  %9119 = call float @dx.op.binary.f32(i32 35, float %9097, float %9118)  ; FMax(a,b)
  store float %9113, float* %9031, align 4, !tbaa !108, !alias.scope !201, !noalias !202
  store float %9117, float* %9032, align 4, !tbaa !108, !alias.scope !199, !noalias !200
  store float %9119, float* %9033, align 4, !tbaa !108, !alias.scope !193, !noalias !196
  %9120 = sub nsw i32 3, %9103
  %9121 = icmp sgt i32 %9120, 2
  br i1 %9121, label %9122, label %9160

; <label>:9122                                    ; preds = %9096
  %9123 = icmp eq i32 %8891, 0
  %9124 = fsub fast float %8941, %9025
  %9125 = select i1 %9123, float %9124, float %9025
  %9126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9127 = extractvalue %dx.types.CBufRet.f32 %9126, 0
  %9128 = extractvalue %dx.types.CBufRet.f32 %9126, 1
  %9129 = extractvalue %dx.types.CBufRet.f32 %9126, 2
  %9130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9131 = extractvalue %dx.types.CBufRet.f32 %9130, 0
  %9132 = extractvalue %dx.types.CBufRet.f32 %9130, 1
  %9133 = extractvalue %dx.types.CBufRet.f32 %9130, 2
  %9134 = extractvalue %dx.types.CBufRet.f32 %9130, 3
  %9135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9136 = extractvalue %dx.types.CBufRet.f32 %9135, 3
  %9137 = call float @dx.op.binary.f32(i32 36, float %9026, float %9136)  ; FMin(a,b)
  %9138 = fmul fast float %9134, %9125
  %9139 = call float @dx.op.unary.f32(i32 7, float %9138)  ; Saturate(value)
  %9140 = fsub fast float %9131, %9127
  %9141 = fsub fast float %9132, %9128
  %9142 = fsub fast float %9133, %9129
  %9143 = fmul fast float %9139, %9140
  %9144 = fmul fast float %9139, %9141
  %9145 = fmul fast float %9139, %9142
  %9146 = fadd fast float %9143, %9127
  %9147 = fadd fast float %9144, %9128
  %9148 = fadd fast float %9145, %9129
  %9149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9150 = extractvalue %dx.types.CBufRet.f32 %9149, 0
  %9151 = extractvalue %dx.types.CBufRet.f32 %9149, 1
  %9152 = fadd fast float %9151, %9150
  %9153 = call float @dx.op.unary.f32(i32 7, float %9152)  ; Saturate(value)
  %9154 = extractvalue %dx.types.CBufRet.f32 %9149, 2
  %9155 = extractvalue %dx.types.CBufRet.f32 %9149, 3
  %9156 = fadd fast float %9155, %9154
  %9157 = call float @dx.op.unary.f32(i32 7, float %9156)  ; Saturate(value)
  %9158 = fmul fast float %9153, %9137
  %9159 = fmul fast float %9158, %9157
  br label %9242

; <label>:9160                                    ; preds = %9096
  %9161 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %9120
  %9162 = load float, float* %9161, align 4, !tbaa !108, !noalias !167
  %9163 = fcmp fast olt float %9162, %9027
  %9164 = icmp sgt i32 %9103, 0
  %9165 = and i1 %9164, %9163
  br i1 %9165, label %9166, label %9203

; <label>:9166                                    ; preds = %9160
  br label %9167

; <label>:9167                                    ; preds = %9196, %9166
  %9168 = phi float [ %9197, %9196 ], [ %9025, %9166 ]
  %9169 = phi float [ %9198, %9196 ], [ %9026, %9166 ]
  %9170 = phi float [ %9178, %9196 ], [ %9162, %9166 ]
  %9171 = phi i32 [ %9175, %9196 ], [ %9120, %9166 ]
  %9172 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %9171
  %9173 = load float, float* %9172, align 4, !tbaa !108, !noalias !167
  %9174 = icmp slt i32 %9171, 2
  %9175 = add nsw i32 %9171, 1
  %9176 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %9175
  %9177 = load float, float* %9176, align 4, !tbaa !108, !noalias !167
  %9178 = select i1 %9174, float %9177, float %8941
  %9179 = call float @dx.op.binary.f32(i32 36, float %9178, float %9173)  ; FMin(a,b)
  %9180 = call float @dx.op.binary.f32(i32 36, float %9027, float %9179)  ; FMin(a,b)
  %9181 = icmp eq i32 %8891, 0
  %9182 = fadd fast float %9180, %9170
  %9183 = fmul fast float %9182, %1913
  %9184 = fadd fast float %9183, %8885
  br i1 %9181, label %9190, label %9185

; <label>:9185                                    ; preds = %9167
  %9186 = fsub fast float %9180, %9170
  %9187 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9186)  ; FMax(a,b)
  %9188 = fmul fast float %9187, %9184
  %9189 = fadd fast float %9188, %9169
  br label %9196

; <label>:9190                                    ; preds = %9167
  %9191 = fsub fast float %9170, %9180
  %9192 = call float @dx.op.unary.f32(i32 6, float %9191)  ; FAbs(value)
  %9193 = fadd fast float %9192, %9168
  %9194 = fmul fast float %9192, %9184
  %9195 = fsub fast float %9169, %9194
  br label %9196

; <label>:9196                                    ; preds = %9190, %9185
  %9197 = phi float [ %9187, %9185 ], [ %9193, %9190 ]
  %9198 = phi float [ %9189, %9185 ], [ %9195, %9190 ]
  %9199 = fcmp fast olt float %9178, %9027
  %9200 = icmp slt i32 %9175, 3
  %9201 = and i1 %9200, %9199
  br i1 %9201, label %9167, label %9202

; <label>:9202                                    ; preds = %9196
  br label %9203

; <label>:9203                                    ; preds = %9202, %9160
  %9204 = phi float [ %9025, %9160 ], [ %9197, %9202 ]
  %9205 = phi float [ %9026, %9160 ], [ %9198, %9202 ]
  %9206 = fsub fast float %8941, %9204
  %9207 = select i1 %8943, float %9204, float %9206
  %9208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9209 = extractvalue %dx.types.CBufRet.f32 %9208, 0
  %9210 = extractvalue %dx.types.CBufRet.f32 %9208, 1
  %9211 = extractvalue %dx.types.CBufRet.f32 %9208, 2
  %9212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9213 = extractvalue %dx.types.CBufRet.f32 %9212, 0
  %9214 = extractvalue %dx.types.CBufRet.f32 %9212, 1
  %9215 = extractvalue %dx.types.CBufRet.f32 %9212, 2
  %9216 = extractvalue %dx.types.CBufRet.f32 %9212, 3
  %9217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9218 = extractvalue %dx.types.CBufRet.f32 %9217, 3
  %9219 = call float @dx.op.binary.f32(i32 36, float %9205, float %9218)  ; FMin(a,b)
  %9220 = fmul fast float %9216, %9207
  %9221 = call float @dx.op.unary.f32(i32 7, float %9220)  ; Saturate(value)
  %9222 = fsub fast float %9213, %9209
  %9223 = fsub fast float %9214, %9210
  %9224 = fsub fast float %9215, %9211
  %9225 = fmul fast float %9221, %9222
  %9226 = fmul fast float %9221, %9223
  %9227 = fmul fast float %9221, %9224
  %9228 = fadd fast float %9225, %9209
  %9229 = fadd fast float %9226, %9210
  %9230 = fadd fast float %9227, %9211
  %9231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9232 = extractvalue %dx.types.CBufRet.f32 %9231, 0
  %9233 = extractvalue %dx.types.CBufRet.f32 %9231, 1
  %9234 = fadd fast float %9233, %9232
  %9235 = call float @dx.op.unary.f32(i32 7, float %9234)  ; Saturate(value)
  %9236 = extractvalue %dx.types.CBufRet.f32 %9231, 2
  %9237 = extractvalue %dx.types.CBufRet.f32 %9231, 3
  %9238 = fadd fast float %9237, %9236
  %9239 = call float @dx.op.unary.f32(i32 7, float %9238)  ; Saturate(value)
  %9240 = fmul fast float %9235, %9219
  %9241 = fmul fast float %9240, %9239
  br label %9242

; <label>:9242                                    ; preds = %9203, %9122, %8957, %8939, %8937
  %9243 = phi float [ %8966, %8957 ], [ %9125, %9122 ], [ %9207, %9203 ], [ 0.000000e+00, %8937 ], [ 0.000000e+00, %8939 ]
  %9244 = phi float [ %9000, %8957 ], [ %9159, %9122 ], [ %9241, %9203 ], [ 0.000000e+00, %8937 ], [ 0.000000e+00, %8939 ]
  %9245 = phi float [ %8987, %8957 ], [ %9146, %9122 ], [ %9228, %9203 ], [ 0.000000e+00, %8937 ], [ 0.000000e+00, %8939 ]
  %9246 = phi float [ %8988, %8957 ], [ %9147, %9122 ], [ %9229, %9203 ], [ 0.000000e+00, %8937 ], [ 0.000000e+00, %8939 ]
  %9247 = phi float [ %8989, %8957 ], [ %9148, %9122 ], [ %9230, %9203 ], [ 0.000000e+00, %8937 ], [ 0.000000e+00, %8939 ]
  %9248 = fmul fast float %8880, %9244
  %9249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9250 = extractvalue %dx.types.CBufRet.f32 %9249, 2
  %9251 = fsub fast float %8887, %9250
  %9252 = fcmp fast olt float %9248, -2.000000e+01
  %9253 = call float @dx.op.unary.f32(i32 21, float %9248)  ; Exp(value)
  %9254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9255 = extractvalue %dx.types.CBufRet.f32 %9254, 2
  %9256 = extractvalue %dx.types.CBufRet.f32 %9254, 3
  %9257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9258 = extractvalue %dx.types.CBufRet.f32 %9257, 2
  %9259 = fmul fast float %9256, %9251
  %9260 = call float @dx.op.unary.f32(i32 7, float %9259)  ; Saturate(value)
  %9261 = fsub fast float 1.000000e+00, %9260
  %9262 = fmul fast float %1913, 5.000000e-01
  %9263 = fadd fast float %9262, 5.000000e-01
  %9264 = call float @dx.op.unary.f32(i32 7, float %9263)  ; Saturate(value)
  %9265 = fsub fast float 1.000000e+00, %9264
  %9266 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9261)  ; FMax(a,b)
  %9267 = fdiv fast float %9265, %9266
  %9268 = fsub fast float %9251, %157
  %9269 = call float @dx.op.unary.f32(i32 6, float %9268)  ; FAbs(value)
  %9270 = fmul fast float %9269, %9255
  %9271 = call float @dx.op.unary.f32(i32 7, float %9267)  ; Saturate(value)
  %9272 = fsub fast float 1.000000e+00, %9270
  %9273 = fmul fast float %9272, %9271
  %9274 = fadd fast float %9273, %9270
  %9275 = fmul fast float %9258, %9251
  %9276 = call float @dx.op.unary.f32(i32 7, float %9275)  ; Saturate(value)
  %9277 = fsub fast float 1.000000e+00, %9274
  %9278 = fmul fast float %9277, %9276
  %9279 = fadd fast float %9278, %9274
  %9280 = call float @dx.op.unary.f32(i32 7, float %9279)  ; Saturate(value)
  %9281 = fadd fast float %9253, -1.000000e+00
  %9282 = select i1 %9252, float -1.000000e+00, float %9281
  %9283 = fmul fast float %9280, %9282
  %9284 = fadd fast float %9283, 1.000000e+00
  %9285 = fsub fast float -0.000000e+00, %9283
  %9286 = fmul fast float %9245, %9285
  %9287 = fmul fast float %9246, %9285
  %9288 = fmul fast float %9247, %9285
  br label %9289

; <label>:9289                                    ; preds = %9242, %8843
  %9290 = phi float [ %9243, %9242 ], [ 0.000000e+00, %8843 ]
  %9291 = phi float [ %9284, %9242 ], [ 1.000000e+00, %8843 ]
  %9292 = phi float [ %9286, %9242 ], [ 0.000000e+00, %8843 ]
  %9293 = phi float [ %9287, %9242 ], [ 0.000000e+00, %8843 ]
  %9294 = phi float [ %9288, %9242 ], [ 0.000000e+00, %8843 ]
  %9295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9296 = extractvalue %dx.types.CBufRet.f32 %9295, 1
  %9297 = fsub fast float 1.000000e+00, %9291
  %9298 = fmul fast float %9297, %8873
  %9299 = fmul fast float %9298, %9296
  %9300 = fsub fast float %8873, %9299
  br i1 %8871, label %9301, label %9330, !dx.controlflow.hints !203

; <label>:9301                                    ; preds = %9289
  %9302 = fmul fast float %8874, %8868
  %9303 = fadd fast float %9302, %8869
  %9304 = call float @dx.op.unary.f32(i32 7, float %9303)  ; Saturate(value)
  %9305 = fmul fast float %8850, %9300
  %9306 = fsub fast float -0.000000e+00, %9305
  %9307 = fmul fast float %8851, %9300
  %9308 = fsub fast float -0.000000e+00, %9307
  %9309 = call float @dx.op.unary.f32(i32 21, float %9306)  ; Exp(value)
  %9310 = call float @dx.op.unary.f32(i32 21, float %9308)  ; Exp(value)
  %9311 = call float @dx.op.binary.f32(i32 35, float %8858, float %9309)  ; FMax(a,b)
  %9312 = call float @dx.op.binary.f32(i32 35, float %8858, float %9310)  ; FMax(a,b)
  %9313 = fsub fast float %9312, %9311
  %9314 = fmul fast float %9313, %9304
  %9315 = fadd fast float %9314, %9311
  %9316 = call float @dx.op.unary.f32(i32 7, float %9315)  ; Saturate(value)
  %9317 = fsub fast float %8855, %8860
  %9318 = fsub fast float %8856, %8861
  %9319 = fsub fast float %8857, %8862
  %9320 = fmul fast float %9304, %9317
  %9321 = fmul fast float %9304, %9318
  %9322 = fmul fast float %9304, %9319
  %9323 = fadd fast float %9320, %8860
  %9324 = fadd fast float %9321, %8861
  %9325 = fadd fast float %9322, %8862
  %9326 = fsub fast float 1.000000e+00, %9316
  %9327 = fmul fast float %9326, %9323
  %9328 = fmul fast float %9326, %9324
  %9329 = fmul fast float %9326, %9325
  br label %9389

; <label>:9330                                    ; preds = %9289
  %9331 = fmul fast float %9300, %8867
  %9332 = call float @dx.op.unary.f32(i32 7, float %9331)  ; Saturate(value)
  %9333 = fsub fast float 2.000000e+00, %9332
  %9334 = fmul fast float %9332, 9.921875e-01
  %9335 = fmul fast float %9334, %9333
  %9336 = fadd fast float %9335, 3.906250e-03
  %9337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %63, float %9336, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9338 = extractvalue %dx.types.ResRet.f32 %9337, 0
  %9339 = fsub fast float %9332, %9338
  %9340 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9339)  ; FMax(a,b)
  %9341 = fmul fast float %8853, %157
  %9342 = call float @dx.op.unary.f32(i32 6, float %9341)  ; FAbs(value)
  %9343 = fcmp fast ogt float %9342, 0x3EB0C6F7A0000000
  br i1 %9343, label %9344, label %9350, !dx.controlflow.hints !204

; <label>:9344                                    ; preds = %9330
  %9345 = fmul fast float %9341, 0xBFF7154760000000
  %9346 = call float @dx.op.unary.f32(i32 21, float %9345)  ; Exp(value)
  %9347 = fsub fast float 1.000000e+00, %9346
  %9348 = fdiv fast float %9347, %9341
  %9349 = fmul fast float %9348, %8863
  br label %9350

; <label>:9350                                    ; preds = %9344, %9330
  %9351 = phi float [ %9349, %9344 ], [ %8863, %9330 ]
  %9352 = fadd fast float %9351, %8865
  %9353 = fmul fast float %9352, %9340
  %9354 = fmul fast float %8850, %9353
  %9355 = fsub fast float -0.000000e+00, %9354
  %9356 = fmul fast float %8851, %9353
  %9357 = fsub fast float -0.000000e+00, %9356
  %9358 = fmul fast float %8852, %9353
  %9359 = fsub fast float -0.000000e+00, %9358
  %9360 = call float @dx.op.unary.f32(i32 21, float %9355)  ; Exp(value)
  %9361 = call float @dx.op.unary.f32(i32 21, float %9357)  ; Exp(value)
  %9362 = call float @dx.op.unary.f32(i32 21, float %9359)  ; Exp(value)
  %9363 = fmul fast float %8874, %8874
  %9364 = fadd fast float %9363, 1.000000e+00
  %9365 = fmul fast float %9364, 0x3FAE8EC8A0000000
  %9366 = fmul fast float %9365, %8860
  %9367 = fmul fast float %9365, %8861
  %9368 = fmul fast float %9365, %8862
  %9369 = fmul fast float %8874, %8858
  %9370 = fsub fast float 1.000000e+00, %9369
  %9371 = fmul fast float %8858, %8858
  %9372 = fsub fast float 1.000000e+00, %9371
  %9373 = fmul fast float %9372, 0x3FB45F3060000000
  %9374 = fmul fast float %9370, %9370
  %9375 = fdiv fast float 1.000000e+00, %9374
  %9376 = fmul fast float %9373, %9375
  %9377 = fmul fast float %9376, %8855
  %9378 = fmul fast float %9376, %8856
  %9379 = fmul fast float %9376, %8857
  %9380 = fadd fast float %9377, %9366
  %9381 = fadd fast float %9378, %9367
  %9382 = fadd fast float %9379, %9368
  %9383 = fsub fast float 1.000000e+00, %9360
  %9384 = fsub fast float 1.000000e+00, %9361
  %9385 = fsub fast float 1.000000e+00, %9362
  %9386 = fmul fast float %9380, %9383
  %9387 = fmul fast float %9381, %9384
  %9388 = fmul fast float %9382, %9385
  br label %9389

; <label>:9389                                    ; preds = %9350, %9301
  %9390 = phi float [ %9327, %9301 ], [ %9386, %9350 ]
  %9391 = phi float [ %9328, %9301 ], [ %9387, %9350 ]
  %9392 = phi float [ %9329, %9301 ], [ %9388, %9350 ]
  %9393 = phi float [ %9316, %9301 ], [ %9360, %9350 ]
  %9394 = phi float [ %9316, %9301 ], [ %9361, %9350 ]
  %9395 = phi float [ %9316, %9301 ], [ %9362, %9350 ]
  br i1 %8882, label %9396, label %9594, !dx.controlflow.hints !205

; <label>:9396                                    ; preds = %9389
  %9397 = extractvalue %dx.types.CBufRet.f32 %9295, 0
  %9398 = fmul fast float %9397, %9297
  %9399 = fsub fast float %9292, %9390
  %9400 = fsub fast float %9293, %9391
  %9401 = fsub fast float %9294, %9392
  %9402 = fmul fast float %9398, %9399
  %9403 = fmul fast float %9398, %9400
  %9404 = fmul fast float %9398, %9401
  %9405 = fadd fast float %9402, %9390
  %9406 = fadd fast float %9403, %9391
  %9407 = fadd fast float %9404, %9392
  %9408 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9393)  ; FMax(a,b)
  %9409 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9394)  ; FMax(a,b)
  %9410 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9395)  ; FMax(a,b)
  %9411 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9291)  ; FMax(a,b)
  %9412 = call float @dx.op.binary.f32(i32 35, float %9290, float %9300)  ; FMax(a,b)
  %9413 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9412)  ; FMax(a,b)
  %9414 = fdiv fast float %9290, %9413
  %9415 = call float @dx.op.unary.f32(i32 7, float %9414)  ; Saturate(value)
  %9416 = fdiv fast float %9300, %9413
  %9417 = call float @dx.op.unary.f32(i32 7, float %9416)  ; Saturate(value)
  %9418 = fcmp fast une float %9411, 1.000000e+00
  br i1 %9418, label %9419, label %9432, !dx.controlflow.hints !206

; <label>:9419                                    ; preds = %9396
  %9420 = call float @dx.op.unary.f32(i32 23, float %9411)  ; Log(value)
  %9421 = fmul fast float %9420, 0x3FE62E4300000000
  %9422 = fmul fast float %9292, %9421
  %9423 = fsub fast float -0.000000e+00, %9422
  %9424 = fmul fast float %9293, %9421
  %9425 = fsub fast float -0.000000e+00, %9424
  %9426 = fmul fast float %9294, %9421
  %9427 = fsub fast float -0.000000e+00, %9426
  %9428 = fsub fast float 1.000000e+00, %9411
  %9429 = fdiv fast float %9423, %9428
  %9430 = fdiv fast float %9425, %9428
  %9431 = fdiv fast float %9427, %9428
  br label %9432

; <label>:9432                                    ; preds = %9419, %9396
  %9433 = phi float [ %9429, %9419 ], [ %9292, %9396 ]
  %9434 = phi float [ %9430, %9419 ], [ %9293, %9396 ]
  %9435 = phi float [ %9431, %9419 ], [ %9294, %9396 ]
  %9436 = phi float [ %9421, %9419 ], [ 0.000000e+00, %9396 ]
  %9437 = fcmp fast une float %9408, 1.000000e+00
  br i1 %9437, label %9438, label %9445, !dx.controlflow.hints !207

; <label>:9438                                    ; preds = %9432
  %9439 = call float @dx.op.unary.f32(i32 23, float %9408)  ; Log(value)
  %9440 = fmul fast float %9439, 0x3FE62E4300000000
  %9441 = fmul fast float %9405, %9440
  %9442 = fsub fast float -0.000000e+00, %9441
  %9443 = fsub fast float 1.000000e+00, %9408
  %9444 = fdiv fast float %9442, %9443
  br label %9445

; <label>:9445                                    ; preds = %9438, %9432
  %9446 = phi float [ %9444, %9438 ], [ %9405, %9432 ]
  %9447 = phi float [ %9440, %9438 ], [ 0.000000e+00, %9432 ]
  %9448 = fcmp fast une float %9409, 1.000000e+00
  br i1 %9448, label %9449, label %9456, !dx.controlflow.hints !207

; <label>:9449                                    ; preds = %9445
  %9450 = call float @dx.op.unary.f32(i32 23, float %9409)  ; Log(value)
  %9451 = fmul fast float %9450, 0x3FE62E4300000000
  %9452 = fmul fast float %9406, %9451
  %9453 = fsub fast float -0.000000e+00, %9452
  %9454 = fsub fast float 1.000000e+00, %9409
  %9455 = fdiv fast float %9453, %9454
  br label %9456

; <label>:9456                                    ; preds = %9449, %9445
  %9457 = phi float [ %9455, %9449 ], [ %9406, %9445 ]
  %9458 = phi float [ %9451, %9449 ], [ 0.000000e+00, %9445 ]
  %9459 = fcmp fast une float %9410, 1.000000e+00
  br i1 %9459, label %9460, label %9467, !dx.controlflow.hints !207

; <label>:9460                                    ; preds = %9456
  %9461 = call float @dx.op.unary.f32(i32 23, float %9410)  ; Log(value)
  %9462 = fmul fast float %9461, 0x3FE62E4300000000
  %9463 = fmul fast float %9407, %9462
  %9464 = fsub fast float -0.000000e+00, %9463
  %9465 = fsub fast float 1.000000e+00, %9410
  %9466 = fdiv fast float %9464, %9465
  br label %9467

; <label>:9467                                    ; preds = %9460, %9456
  %9468 = phi float [ %9466, %9460 ], [ %9407, %9456 ]
  %9469 = phi float [ %9462, %9460 ], [ 0.000000e+00, %9456 ]
  %9470 = fmul fast float %9433, %9417
  %9471 = fmul fast float %9434, %9417
  %9472 = fmul fast float %9435, %9417
  %9473 = fmul fast float %9436, %9417
  %9474 = fmul fast float %9446, %9415
  %9475 = fmul fast float %9457, %9415
  %9476 = fmul fast float %9468, %9415
  %9477 = fmul fast float %9447, %9415
  %9478 = fmul fast float %9458, %9415
  %9479 = fmul fast float %9469, %9415
  %9480 = fadd fast float %9474, %9470
  %9481 = fadd fast float %9475, %9471
  %9482 = fadd fast float %9476, %9472
  %9483 = fadd fast float %9477, %9473
  %9484 = fadd fast float %9478, %9473
  %9485 = fadd fast float %9479, %9473
  %9486 = fcmp fast une float %9483, 0.000000e+00
  br i1 %9486, label %9487, label %9494, !dx.controlflow.hints !208

; <label>:9487                                    ; preds = %9467
  %9488 = fmul fast float %9483, 0x3FF7154760000000
  %9489 = call float @dx.op.unary.f32(i32 21, float %9488)  ; Exp(value)
  %9490 = fsub fast float 1.000000e+00, %9489
  %9491 = fmul fast float %9480, %9490
  %9492 = fsub fast float -0.000000e+00, %9491
  %9493 = fdiv fast float %9492, %9483
  br label %9494

; <label>:9494                                    ; preds = %9487, %9467
  %9495 = phi float [ %9489, %9487 ], [ 1.000000e+00, %9467 ]
  %9496 = phi float [ %9493, %9487 ], [ %9480, %9467 ]
  %9497 = fcmp fast une float %9484, 0.000000e+00
  br i1 %9497, label %9498, label %9505, !dx.controlflow.hints !208

; <label>:9498                                    ; preds = %9494
  %9499 = fmul fast float %9484, 0x3FF7154760000000
  %9500 = call float @dx.op.unary.f32(i32 21, float %9499)  ; Exp(value)
  %9501 = fsub fast float 1.000000e+00, %9500
  %9502 = fmul fast float %9481, %9501
  %9503 = fsub fast float -0.000000e+00, %9502
  %9504 = fdiv fast float %9503, %9484
  br label %9505

; <label>:9505                                    ; preds = %9498, %9494
  %9506 = phi float [ %9500, %9498 ], [ 1.000000e+00, %9494 ]
  %9507 = phi float [ %9504, %9498 ], [ %9481, %9494 ]
  %9508 = fcmp fast une float %9485, 0.000000e+00
  br i1 %9508, label %9509, label %9516, !dx.controlflow.hints !208

; <label>:9509                                    ; preds = %9505
  %9510 = fmul fast float %9485, 0x3FF7154760000000
  %9511 = call float @dx.op.unary.f32(i32 21, float %9510)  ; Exp(value)
  %9512 = fsub fast float 1.000000e+00, %9511
  %9513 = fmul fast float %9482, %9512
  %9514 = fsub fast float -0.000000e+00, %9513
  %9515 = fdiv fast float %9514, %9485
  br label %9516

; <label>:9516                                    ; preds = %9509, %9505
  %9517 = phi float [ %9511, %9509 ], [ 1.000000e+00, %9505 ]
  %9518 = phi float [ %9515, %9509 ], [ %9482, %9505 ]
  %9519 = fcmp fast ogt float %9415, %9417
  br i1 %9519, label %9520, label %9540

; <label>:9520                                    ; preds = %9516
  %9521 = fsub fast float 1.000000e+00, %9417
  %9522 = fmul fast float %9433, %9521
  %9523 = fmul fast float %9434, %9521
  %9524 = fmul fast float %9435, %9521
  %9525 = fmul fast float %9436, %9521
  %9526 = fcmp fast une float %9525, 0.000000e+00
  br i1 %9526, label %9527, label %9578, !dx.controlflow.hints !209

; <label>:9527                                    ; preds = %9520
  %9528 = fmul fast float %9525, 0x3FF7154760000000
  %9529 = call float @dx.op.unary.f32(i32 21, float %9528)  ; Exp(value)
  %9530 = fsub fast float 1.000000e+00, %9529
  %9531 = fmul fast float %9522, %9530
  %9532 = fsub fast float -0.000000e+00, %9531
  %9533 = fmul fast float %9523, %9530
  %9534 = fsub fast float -0.000000e+00, %9533
  %9535 = fmul fast float %9524, %9530
  %9536 = fsub fast float -0.000000e+00, %9535
  %9537 = fdiv fast float %9532, %9525
  %9538 = fdiv fast float %9534, %9525
  %9539 = fdiv fast float %9536, %9525
  br label %9578

; <label>:9540                                    ; preds = %9516
  %9541 = fsub fast float 1.000000e+00, %9415
  %9542 = fmul fast float %9446, %9541
  %9543 = fmul fast float %9457, %9541
  %9544 = fmul fast float %9468, %9541
  %9545 = fmul fast float %9447, %9541
  %9546 = fmul fast float %9458, %9541
  %9547 = fmul fast float %9469, %9541
  %9548 = fcmp fast une float %9545, 0.000000e+00
  br i1 %9548, label %9549, label %9556, !dx.controlflow.hints !208

; <label>:9549                                    ; preds = %9540
  %9550 = fmul fast float %9545, 0x3FF7154760000000
  %9551 = call float @dx.op.unary.f32(i32 21, float %9550)  ; Exp(value)
  %9552 = fsub fast float 1.000000e+00, %9551
  %9553 = fmul fast float %9542, %9552
  %9554 = fsub fast float -0.000000e+00, %9553
  %9555 = fdiv fast float %9554, %9545
  br label %9556

; <label>:9556                                    ; preds = %9549, %9540
  %9557 = phi float [ %9555, %9549 ], [ %9542, %9540 ]
  %9558 = phi float [ %9551, %9549 ], [ 1.000000e+00, %9540 ]
  %9559 = fcmp fast une float %9546, 0.000000e+00
  br i1 %9559, label %9560, label %9567, !dx.controlflow.hints !208

; <label>:9560                                    ; preds = %9556
  %9561 = fmul fast float %9546, 0x3FF7154760000000
  %9562 = call float @dx.op.unary.f32(i32 21, float %9561)  ; Exp(value)
  %9563 = fsub fast float 1.000000e+00, %9562
  %9564 = fmul fast float %9543, %9563
  %9565 = fsub fast float -0.000000e+00, %9564
  %9566 = fdiv fast float %9565, %9546
  br label %9567

; <label>:9567                                    ; preds = %9560, %9556
  %9568 = phi float [ %9566, %9560 ], [ %9543, %9556 ]
  %9569 = phi float [ %9562, %9560 ], [ 1.000000e+00, %9556 ]
  %9570 = fcmp fast une float %9547, 0.000000e+00
  br i1 %9570, label %9571, label %9578, !dx.controlflow.hints !208

; <label>:9571                                    ; preds = %9567
  %9572 = fmul fast float %9547, 0x3FF7154760000000
  %9573 = call float @dx.op.unary.f32(i32 21, float %9572)  ; Exp(value)
  %9574 = fsub fast float 1.000000e+00, %9573
  %9575 = fmul fast float %9544, %9574
  %9576 = fsub fast float -0.000000e+00, %9575
  %9577 = fdiv fast float %9576, %9547
  br label %9578

; <label>:9578                                    ; preds = %9571, %9567, %9527, %9520
  %9579 = phi float [ %9577, %9571 ], [ %9539, %9527 ], [ %9524, %9520 ], [ %9544, %9567 ]
  %9580 = phi float [ %9568, %9571 ], [ %9538, %9527 ], [ %9523, %9520 ], [ %9568, %9567 ]
  %9581 = phi float [ %9557, %9571 ], [ %9537, %9527 ], [ %9522, %9520 ], [ %9557, %9567 ]
  %9582 = phi float [ %9573, %9571 ], [ %9529, %9527 ], [ 1.000000e+00, %9520 ], [ 1.000000e+00, %9567 ]
  %9583 = phi float [ %9569, %9571 ], [ %9529, %9527 ], [ 1.000000e+00, %9520 ], [ %9569, %9567 ]
  %9584 = phi float [ %9558, %9571 ], [ %9529, %9527 ], [ 1.000000e+00, %9520 ], [ %9558, %9567 ]
  %9585 = fmul fast float %9584, %9496
  %9586 = fmul fast float %9583, %9507
  %9587 = fmul fast float %9582, %9518
  %9588 = fadd fast float %9585, %9581
  %9589 = fadd fast float %9586, %9580
  %9590 = fadd fast float %9587, %9579
  %9591 = fmul fast float %9584, %9495
  %9592 = fmul fast float %9583, %9506
  %9593 = fmul fast float %9582, %9517
  br label %9594

; <label>:9594                                    ; preds = %9578, %9389
  %9595 = phi float [ %9593, %9578 ], [ %9395, %9389 ]
  %9596 = phi float [ %9592, %9578 ], [ %9394, %9389 ]
  %9597 = phi float [ %9591, %9578 ], [ %9393, %9389 ]
  %9598 = phi float [ %9590, %9578 ], [ %9392, %9389 ]
  %9599 = phi float [ %9589, %9578 ], [ %9391, %9389 ]
  %9600 = phi float [ %9588, %9578 ], [ %9390, %9389 ]
  %9601 = call float @dx.op.dot3.f32(i32 55, float %9597, float %9596, float %9595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9602 = call float @dx.op.dot3.f32(i32 55, float %9600, float %9599, float %9598, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9603 = select i1 %2107, float %9601, float %9597
  %9604 = select i1 %2107, float %9601, float %9596
  %9605 = select i1 %2107, float 1.000000e+00, float %9595
  %9606 = select i1 %2107, float %9602, float %9600
  %9607 = select i1 %2107, float 0.000000e+00, float %9599
  %9608 = select i1 %2107, float 0.000000e+00, float %9598
  %9609 = fmul fast float %9603, %8838
  %9610 = fmul fast float %9604, %8840
  %9611 = fmul fast float %9605, %8842
  %9612 = fadd fast float %9609, %9606
  %9613 = fadd fast float %9610, %9607
  %9614 = fadd fast float %9608, %9611
  %9615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %9616 = extractvalue %dx.types.CBufRet.f32 %9615, 2
  %9617 = extractvalue %dx.types.CBufRet.f32 %9615, 3
  %9618 = fmul fast float %9616, %100
  %9619 = fmul fast float %9617, %101
  %9620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %63, float %9618, float %9619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9621 = extractvalue %dx.types.ResRet.f32 %9620, 0
  %9622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %9618, float %9619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9623 = extractvalue %dx.types.ResRet.f32 %9622, 0
  %9624 = extractvalue %dx.types.ResRet.f32 %9622, 1
  %9625 = extractvalue %dx.types.ResRet.f32 %9622, 2
  %9626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9627 = extractvalue %dx.types.CBufRet.f32 %9626, 1
  %9628 = fmul fast float %9627, %9623
  %9629 = fmul fast float %9627, %9624
  %9630 = fmul fast float %9627, %9625
  %9631 = fmul fast float %9621, %9597
  %9632 = call float @dx.op.dot3.f32(i32 55, float %9621, float %9621, float %9621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9633 = call float @dx.op.dot3.f32(i32 55, float %9628, float %9629, float %9630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9634 = select i1 %2107, float %9632, float %9621
  %9635 = select i1 %2107, float 1.000000e+00, float %9621
  %9636 = select i1 %2107, float %9633, float %9628
  %9637 = select i1 %2107, float 0.000000e+00, float %9629
  %9638 = select i1 %2107, float 0.000000e+00, float %9630
  %9639 = fmul fast float %9634, %9612
  %9640 = fmul fast float %9634, %9613
  %9641 = fmul fast float %9635, %9614
  %9642 = fadd fast float %9639, %9636
  %9643 = fadd fast float %9640, %9637
  %9644 = fadd fast float %9638, %9641
  br label %9645

; <label>:9645                                    ; preds = %9594, %8811
  %9646 = phi float [ %8838, %8811 ], [ %9642, %9594 ]
  %9647 = phi float [ %8840, %8811 ], [ %9643, %9594 ]
  %9648 = phi float [ %8842, %8811 ], [ %9644, %9594 ]
  %9649 = phi float [ 1.000000e+00, %8811 ], [ %9631, %9594 ]
  %9650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %9651 = extractvalue %dx.types.CBufRet.f32 %9650, 2
  %9652 = extractvalue %dx.types.CBufRet.f32 %9650, 3
  %9653 = fmul fast float %9651, %100
  %9654 = fmul fast float %9652, %101
  %9655 = call float @dx.op.unary.f32(i32 7, float %9653)  ; Saturate(value)
  %9656 = call float @dx.op.unary.f32(i32 7, float %9654)  ; Saturate(value)
  %9657 = select i1 %117, i32 0, i32 2
  %9658 = or i32 %9657, 1
  %9659 = uitofp i32 %9658 to float
  %9660 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %63, float %9655, float %9656, float %9659, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9661 = extractvalue %dx.types.ResRet.f32 %9660, 0
  %9662 = extractvalue %dx.types.ResRet.f32 %9660, 1
  %9663 = extractvalue %dx.types.ResRet.f32 %9660, 2
  %9664 = extractvalue %dx.types.ResRet.f32 %9660, 3
  %9665 = add nuw nsw i32 %9657, 2
  %9666 = uitofp i32 %9665 to float
  %9667 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %63, float %9655, float %9656, float %9666, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9668 = extractvalue %dx.types.ResRet.f32 %9667, 0
  %9669 = extractvalue %dx.types.ResRet.f32 %9667, 1
  %9670 = extractvalue %dx.types.ResRet.f32 %9667, 2
  %9671 = extractvalue %dx.types.ResRet.f32 %9667, 3
  %9672 = call float @dx.op.binary.f32(i32 35, float %9662, float %9663)  ; FMax(a,b)
  %9673 = call float @dx.op.binary.f32(i32 35, float %9661, float %9672)  ; FMax(a,b)
  %9674 = call float @dx.op.binary.f32(i32 35, float %9673, float %9664)  ; FMax(a,b)
  %9675 = call float @dx.op.binary.f32(i32 36, float %9669, float %9670)  ; FMin(a,b)
  %9676 = call float @dx.op.binary.f32(i32 36, float %9668, float %9675)  ; FMin(a,b)
  %9677 = call float @dx.op.binary.f32(i32 36, float %9676, float %9671)  ; FMin(a,b)
  %9678 = fmul fast float %9674, 2.550000e+02
  %9679 = fadd fast float %9678, 0x3F70101020000000
  %9680 = fptoui float %9679 to i32
  %9681 = fmul fast float %9677, 2.550000e+02
  %9682 = fadd fast float %9681, 0x3F70101020000000
  %9683 = fptoui float %9682 to i32
  %9684 = icmp ult i32 %9680, %9683
  br i1 %9684, label %9685, label %9737

; <label>:9685                                    ; preds = %9645
  %9686 = fcmp fast ogt float %88, 9.843750e-01
  %9687 = fadd fast float %89, -4.000000e+00
  %9688 = select i1 %9686, float -4.000000e+00, float %9687
  %9689 = call float @dx.op.binary.f32(i32 35, float %9688, float 0.000000e+00)  ; FMax(a,b)
  %9690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9691 = extractvalue %dx.types.CBufRet.f32 %9690, 0
  %9692 = fadd fast float %9691, %9689
  %9693 = extractvalue %dx.types.CBufRet.f32 %9690, 2
  %9694 = fmul fast float %9692, %9693
  %9695 = call float @dx.op.unary.f32(i32 23, float %9694)  ; Log(value)
  %9696 = extractvalue %dx.types.CBufRet.f32 %9690, 3
  %9697 = fmul fast float %9696, %9695
  %9698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9699 = extractvalue %dx.types.CBufRet.f32 %9698, 2
  %9700 = fmul fast float %9697, %9699
  %9701 = call float @dx.op.unary.f32(i32 7, float %9700)  ; Saturate(value)
  %9702 = uitofp i32 %9680 to float
  %9703 = uitofp i32 %9683 to float
  %9704 = fadd fast float %9702, 5.000000e-01
  %9705 = fadd fast float %9703, 5.000000e-01
  %9706 = fmul fast float %9699, %9704
  %9707 = fmul fast float %9699, %9705
  %9708 = fadd fast float %9706, 0x3F0FFB4800000000
  %9709 = fadd fast float %9707, 0xBF0FFB4800000000
  %9710 = call float @dx.op.binary.f32(i32 35, float %9701, float %9708)  ; FMax(a,b)
  %9711 = call float @dx.op.binary.f32(i32 36, float %9710, float %9709)  ; FMin(a,b)
  %9712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9713 = extractvalue %dx.types.CBufRet.f32 %9712, 1
  %9714 = extractvalue %dx.types.CBufRet.f32 %9712, 2
  %9715 = extractvalue %dx.types.CBufRet.f32 %9712, 0
  %9716 = select i1 %117, float 0.000000e+00, float %9715
  %9717 = fmul fast float %9713, %9711
  %9718 = fadd fast float %9716, %9717
  %9719 = fadd fast float %9716, %9714
  %9720 = fsub fast float %9713, %9714
  %9721 = fadd fast float %9720, %9716
  %9722 = call float @dx.op.binary.f32(i32 35, float %9718, float %9719)  ; FMax(a,b)
  %9723 = call float @dx.op.binary.f32(i32 36, float %9722, float %9721)  ; FMin(a,b)
  %9724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %61, float %9655, float %9656, float %9723, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9725 = extractvalue %dx.types.ResRet.f32 %9724, 0
  %9726 = extractvalue %dx.types.ResRet.f32 %9724, 1
  %9727 = extractvalue %dx.types.ResRet.f32 %9724, 2
  %9728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %61, float %9655, float %9656, float %9723, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9729 = extractvalue %dx.types.ResRet.f32 %9728, 0
  %9730 = extractvalue %dx.types.ResRet.f32 %9728, 1
  %9731 = extractvalue %dx.types.ResRet.f32 %9728, 2
  %9732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9733 = extractvalue %dx.types.CBufRet.f32 %9732, 1
  %9734 = fmul fast float %9733, %9729
  %9735 = fmul fast float %9733, %9730
  %9736 = fmul fast float %9733, %9731
  br label %9737

; <label>:9737                                    ; preds = %9685, %9645
  %9738 = phi float [ %9725, %9685 ], [ 1.000000e+00, %9645 ]
  %9739 = phi float [ %9726, %9685 ], [ 1.000000e+00, %9645 ]
  %9740 = phi float [ %9727, %9685 ], [ 1.000000e+00, %9645 ]
  %9741 = phi float [ %9734, %9685 ], [ 0.000000e+00, %9645 ]
  %9742 = phi float [ %9735, %9685 ], [ 0.000000e+00, %9645 ]
  %9743 = phi float [ %9736, %9685 ], [ 0.000000e+00, %9645 ]
  %9744 = fmul fast float %9738, %9649
  %9745 = call float @dx.op.dot3.f32(i32 55, float %9738, float %9739, float %9740, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9746 = call float @dx.op.dot3.f32(i32 55, float %9741, float %9742, float %9743, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9747 = select i1 %2107, float %9745, float %9738
  %9748 = select i1 %2107, float %9745, float %9739
  %9749 = select i1 %2107, float 1.000000e+00, float %9740
  %9750 = select i1 %2107, float %9746, float %9741
  %9751 = select i1 %2107, float 0.000000e+00, float %9742
  %9752 = select i1 %2107, float 0.000000e+00, float %9743
  %9753 = fmul fast float %9747, %9646
  %9754 = fmul fast float %9748, %9647
  %9755 = fmul fast float %9749, %9648
  %9756 = fadd fast float %9753, %9750
  %9757 = fadd fast float %9754, %9751
  %9758 = fadd fast float %9752, %9755
  %9759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9760 = extractvalue %dx.types.CBufRet.i32 %9759, 3
  %9761 = and i32 %9760, 3
  %9762 = icmp ne i32 %9761, 0
  %9763 = and i32 %9760, 4
  %9764 = icmp ne i32 %9763, 0
  %9765 = and i1 %9762, %9764
  %9766 = and i1 %2107, %9765
  br i1 %9766, label %9767, label %9773

; <label>:9767                                    ; preds = %9737
  %9768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9769 = extractvalue %dx.types.CBufRet.f32 %9768, 1
  %9770 = fadd fast float %9744, -1.000000e+00
  %9771 = fmul fast float %9769, %9770
  %9772 = fadd fast float %9771, 1.000000e+00
  br label %9773

; <label>:9773                                    ; preds = %9767, %9737
  %9774 = phi float [ %9772, %9767 ], [ %9744, %9737 ]
  %9775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9776 = extractvalue %dx.types.CBufRet.f32 %9775, 0
  br i1 %2107, label %9777, label %9791

; <label>:9777                                    ; preds = %9773
  %9778 = fadd fast float %9756, %9757
  %9779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9780 = extractvalue %dx.types.CBufRet.f32 %9779, 3
  %9781 = extractvalue %dx.types.CBufRet.f32 %8822, 1
  %9782 = fsub fast float %8828, %8816
  %9783 = fadd fast float %9782, %8829
  %9784 = fsub fast float %9783, %9781
  %9785 = extractvalue %dx.types.CBufRet.f32 %8822, 2
  %9786 = fmul fast float %9784, %9785
  %9787 = call float @dx.op.unary.f32(i32 7, float %9786)  ; Saturate(value)
  %9788 = fsub fast float %9787, %9780
  %9789 = fmul fast float %9788, %9774
  %9790 = fadd fast float %9789, %9780
  br label %9794

; <label>:9791                                    ; preds = %9773
  %9792 = fmul fast float %9776, %9757
  %9793 = fmul fast float %9776, %9758
  br label %9794

; <label>:9794                                    ; preds = %9791, %9777
  %9795 = phi float [ %9778, %9777 ], [ %9756, %9791 ]
  %9796 = phi float [ %9790, %9777 ], [ %9792, %9791 ]
  %9797 = phi float [ 1.000000e+00, %9777 ], [ %9793, %9791 ]
  %9798 = fmul float %9776, %9795
  switch i32 %8743, label %10096 [
    i32 0, label %10111
    i32 1, label %9799
    i32 2, label %9800
    i32 3, label %9812
    i32 4, label %9821
    i32 5, label %9822
    i32 6, label %9823
    i32 12, label %9824
    i32 13, label %9825
    i32 14, label %9837
    i32 15, label %9849
    i32 16, label %9861
    i32 17, label %9862
    i32 63, label %10095
    i32 18, label %9863
    i32 25, label %9885
    i32 27, label %9886
    i32 28, label %9887
    i32 29, label %9888
    i32 31, label %9889
    i32 32, label %9912
    i32 33, label %9971
    i32 37, label %9989
    i32 38, label %9990
    i32 39, label %9999
    i32 40, label %10022
    i32 41, label %10026
    i32 52, label %10027
    i32 53, label %10028
    i32 54, label %10029
    i32 55, label %10030
    i32 56, label %10031
    i32 57, label %10033
    i32 58, label %10035
    i32 59, label %10073
    i32 60, label %10075
    i32 61, label %10077
    i32 64, label %10079
    i32 62, label %10094
  ]

; <label>:9799                                    ; preds = %9794
  br label %10096

; <label>:9800                                    ; preds = %9794
  %9801 = call float @dx.op.dot3.f32(i32 55, float %1883, float %1884, float %1885, float %1883, float %1884, float %1885)  ; Dot3(ax,ay,az,bx,by,bz)
  %9802 = call float @dx.op.unary.f32(i32 25, float %9801)  ; Rsqrt(value)
  %9803 = fmul fast float %1883, 5.000000e-01
  %9804 = fmul fast float %9803, %9802
  %9805 = fmul fast float %1884, 5.000000e-01
  %9806 = fmul fast float %9805, %9802
  %9807 = fmul fast float %1885, 5.000000e-01
  %9808 = fmul fast float %9807, %9802
  %9809 = fadd fast float %9804, 5.000000e-01
  %9810 = fadd fast float %9806, 5.000000e-01
  %9811 = fadd fast float %9808, 5.000000e-01
  br label %10096

; <label>:9812                                    ; preds = %9794
  %9813 = fcmp fast ole float %2053, 0x3FA4B5DCC0000000
  %9814 = fmul fast float %2053, 0x3FB3D07220000000
  %9815 = fadd fast float %2053, 0x3FAC28F5C0000000
  %9816 = fmul fast float %9815, 0x3FEE54EDE0000000
  %9817 = call float @dx.op.unary.f32(i32 23, float %9816)  ; Log(value)
  %9818 = fmul fast float %9817, 0x4003333340000000
  %9819 = call float @dx.op.unary.f32(i32 21, float %9818)  ; Exp(value)
  %9820 = select i1 %9813, float %9814, float %9819
  br label %10096

; <label>:9821                                    ; preds = %9794
  br label %10096

; <label>:9822                                    ; preds = %9794
  br label %10096

; <label>:9823                                    ; preds = %9794
  br label %10096

; <label>:9824                                    ; preds = %9794
  br label %10096

; <label>:9825                                    ; preds = %9794
  %9826 = and i32 %8812, 1023
  %9827 = uitofp i32 %9826 to float
  %9828 = lshr i32 %8812, 10
  %9829 = and i32 %9828, 1023
  %9830 = uitofp i32 %9829 to float
  %9831 = lshr i32 %8812, 20
  %9832 = and i32 %9831, 1023
  %9833 = uitofp i32 %9832 to float
  %9834 = fmul fast float %9827, 0x3F50040100000000
  %9835 = fmul fast float %9830, 0x3F50040100000000
  %9836 = fmul fast float %9833, 0x3F50040100000000
  br label %10096

; <label>:9837                                    ; preds = %9794
  %9838 = and i32 %8812, 1023
  %9839 = uitofp i32 %9838 to float
  %9840 = lshr i32 %8812, 10
  %9841 = and i32 %9840, 1023
  %9842 = uitofp i32 %9841 to float
  %9843 = lshr i32 %8812, 20
  %9844 = and i32 %9843, 1023
  %9845 = uitofp i32 %9844 to float
  %9846 = fmul fast float %9839, 0x3F50040100000000
  %9847 = fmul fast float %9842, 0x3F50040100000000
  %9848 = fmul fast float %9845, 0x3F50040100000000
  br label %10096

; <label>:9849                                    ; preds = %9794
  %9850 = and i32 %8812, 1023
  %9851 = uitofp i32 %9850 to float
  %9852 = lshr i32 %8812, 10
  %9853 = and i32 %9852, 1023
  %9854 = uitofp i32 %9853 to float
  %9855 = lshr i32 %8812, 20
  %9856 = and i32 %9855, 1023
  %9857 = uitofp i32 %9856 to float
  %9858 = fmul fast float %9851, 0x3F50040100000000
  %9859 = fmul fast float %9854, 0x3F50040100000000
  %9860 = fmul fast float %9857, 0x3F50040100000000
  br label %10096

; <label>:9861                                    ; preds = %9794
  br label %10096

; <label>:9862                                    ; preds = %9794
  br label %10096

; <label>:9863                                    ; preds = %9794
  %9864 = fcmp fast ogt float %1904, 0x3FB99999A0000000
  %9865 = fcmp fast ogt float %1905, 0x3FB99999A0000000
  %9866 = or i1 %9864, %9865
  %9867 = fcmp fast ogt float %1906, 0x3FB99999A0000000
  %9868 = or i1 %9866, %9867
  %9869 = fcmp fast olt float %1904, 0x3FB99999A0000000
  %9870 = fcmp fast olt float %1905, 0x3FB99999A0000000
  %9871 = or i1 %9869, %9870
  %9872 = fcmp fast olt float %1906, 0x3FB99999A0000000
  %9873 = or i1 %9871, %9872
  %9874 = fadd fast float %1904, %1895
  %9875 = fcmp fast ogt float %9874, 1.000000e+00
  %9876 = fadd fast float %1905, %1896
  %9877 = fcmp fast ogt float %9876, 1.000000e+00
  %9878 = or i1 %9875, %9877
  %9879 = fadd fast float %1906, %1897
  %9880 = fcmp fast ogt float %9879, 1.000000e+00
  %9881 = or i1 %9878, %9880
  %9882 = select i1 %9881, float 1.000000e+00, float 0.000000e+00
  %9883 = and i1 %9868, %9873
  %9884 = select i1 %9883, float 1.000000e+00, float 0.000000e+00
  br label %10096

; <label>:9885                                    ; preds = %9794
  br label %10096

; <label>:9886                                    ; preds = %9794
  br label %10096

; <label>:9887                                    ; preds = %9794
  br label %10096

; <label>:9888                                    ; preds = %9794
  br label %10096

; <label>:9889                                    ; preds = %9794
  %9890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %9891 = extractvalue %dx.types.CBufRet.f32 %9890, 0
  %9892 = extractvalue %dx.types.CBufRet.f32 %9890, 2
  %9893 = extractvalue %dx.types.CBufRet.f32 %9890, 3
  %9894 = fcmp fast olt float %2053, %9891
  br i1 %9894, label %9895, label %9909

; <label>:9895                                    ; preds = %11787, %11785, %9909, %9889
  %9896 = phi i32 [ 0, %9889 ], [ 1, %9909 ], [ 2, %11785 ], [ 3, %11787 ]
  %9897 = mul i32 %9896, 3
  %9898 = add i32 0, %9897
  %9899 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9898
  %9900 = load float, float* %9899, align 4
  %9901 = mul i32 %9896, 3
  %9902 = add i32 1, %9901
  %9903 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9902
  %9904 = load float, float* %9903, align 4
  %9905 = mul i32 %9896, 3
  %9906 = add i32 2, %9905
  %9907 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9906
  %9908 = load float, float* %9907, align 4
  br label %10096

; <label>:9909                                    ; preds = %9889
  %9910 = extractvalue %dx.types.CBufRet.f32 %9890, 1
  %9911 = fcmp fast olt float %2053, %9910
  br i1 %9911, label %9895, label %11785

; <label>:9912                                    ; preds = %9794
  %9913 = fcmp fast ole float %1895, 0x3F69A5C380000000
  %9914 = fcmp fast ole float %1896, 0x3F69A5C380000000
  %9915 = fcmp fast ole float %1897, 0x3F69A5C380000000
  %9916 = fmul fast float %1895, 0x4029D70A40000000
  %9917 = fmul fast float %1896, 0x4029D70A40000000
  %9918 = fmul fast float %1897, 0x4029D70A40000000
  %9919 = call float @dx.op.unary.f32(i32 23, float %1895)  ; Log(value)
  %9920 = call float @dx.op.unary.f32(i32 23, float %1896)  ; Log(value)
  %9921 = call float @dx.op.unary.f32(i32 23, float %1897)  ; Log(value)
  %9922 = fmul fast float %9919, 0x3FDAAAAAA0000000
  %9923 = fmul fast float %9920, 0x3FDAAAAAA0000000
  %9924 = fmul fast float %9921, 0x3FDAAAAAA0000000
  %9925 = call float @dx.op.unary.f32(i32 21, float %9922)  ; Exp(value)
  %9926 = call float @dx.op.unary.f32(i32 21, float %9923)  ; Exp(value)
  %9927 = call float @dx.op.unary.f32(i32 21, float %9924)  ; Exp(value)
  %9928 = fmul fast float %9925, 0x3FF0E147A0000000
  %9929 = fmul fast float %9926, 0x3FF0E147A0000000
  %9930 = fmul fast float %9927, 0x3FF0E147A0000000
  %9931 = fadd fast float %9928, 0xBFAC28F5C0000000
  %9932 = fadd fast float %9929, 0xBFAC28F5C0000000
  %9933 = fadd fast float %9930, 0xBFAC28F5C0000000
  %9934 = select i1 %9913, float %9916, float %9931
  %9935 = select i1 %9914, float %9917, float %9932
  %9936 = select i1 %9915, float %9918, float %9933
  %9937 = call float @dx.op.dot3.f32(i32 55, float %9934, float %9935, float %9936, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9938 = fcmp fast olt float %9937, 0x3FA0101020000000
  br i1 %9938, label %9947, label %9939

; <label>:9939                                    ; preds = %9912
  %9940 = fcmp fast ogt float %9937, 0x3FEEFEFF00000000
  br i1 %9940, label %9947, label %9941

; <label>:9941                                    ; preds = %9939
  %9942 = fcmp fast ogt float %9937, 0x3FEF5F5F60000000
  br i1 %9942, label %9947, label %9943

; <label>:9943                                    ; preds = %9941
  %9944 = fadd fast float %9937, %9937
  %9945 = fcmp fast ogt float %9944, 2.550000e+02
  br i1 %9945, label %9946, label %9947

; <label>:9946                                    ; preds = %9943
  br label %9947

; <label>:9947                                    ; preds = %9946, %9943, %9941, %9939, %9912
  %9948 = phi float [ 1.000000e+00, %9946 ], [ %9798, %9943 ], [ 1.000000e+00, %9912 ], [ 0x3FBD1D1D20000000, %9939 ], [ 0.000000e+00, %9941 ]
  %9949 = phi float [ 0.000000e+00, %9946 ], [ %9796, %9943 ], [ 0x3FE6666660000000, %9912 ], [ 1.000000e+00, %9939 ], [ 0.000000e+00, %9941 ]
  %9950 = phi float [ 1.000000e+00, %9946 ], [ %9797, %9943 ], [ 0.000000e+00, %9912 ], [ 0x3FDD5D5D60000000, %9939 ], [ 1.000000e+00, %9941 ]
  %9951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %9952 = extractvalue %dx.types.CBufRet.f32 %9951, 3
  %9953 = fmul fast float %9952, 8.000000e+00
  %9954 = fmul fast float %101, 5.000000e+02
  %9955 = fmul fast float %9954, %9652
  %9956 = fsub fast float %9955, %9953
  %9957 = call float @dx.op.unary.f32(i32 13, float %9956)  ; Sin(value)
  %9958 = fmul fast float %9957, %9957
  %9959 = fmul fast float %9958, 2.000000e+00
  %9960 = fadd fast float %9959, -1.000000e+00
  %9961 = call float @dx.op.unary.f32(i32 7, float %9960)  ; Saturate(value)
  %9962 = fsub fast float %9948, %9798
  %9963 = fsub fast float %9949, %9796
  %9964 = fsub fast float %9950, %9797
  %9965 = fmul fast float %9961, %9962
  %9966 = fmul fast float %9961, %9963
  %9967 = fmul fast float %9961, %9964
  %9968 = fadd fast float %9965, %9798
  %9969 = fadd fast float %9966, %9796
  %9970 = fadd fast float %9967, %9797
  br label %10096

; <label>:9971                                    ; preds = %9794
  %9972 = fcmp fast olt float %89, 1.280000e+02
  br i1 %9972, label %9973, label %9987

; <label>:9973                                    ; preds = %11803, %11801, %11799, %11797, %11795, %11793, %11791, %11789, %9987, %9971
  %9974 = phi i32 [ 0, %9971 ], [ 1, %9987 ], [ 2, %11789 ], [ 3, %11791 ], [ 4, %11793 ], [ 5, %11795 ], [ 6, %11797 ], [ 7, %11799 ], [ 8, %11801 ], [ 9, %11803 ]
  %9975 = mul i32 %9974, 3
  %9976 = add i32 0, %9975
  %9977 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9976
  %9978 = load float, float* %9977, align 4
  %9979 = mul i32 %9974, 3
  %9980 = add i32 1, %9979
  %9981 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9980
  %9982 = load float, float* %9981, align 4
  %9983 = mul i32 %9974, 3
  %9984 = add i32 2, %9983
  %9985 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9984
  %9986 = load float, float* %9985, align 4
  br label %10096

; <label>:9987                                    ; preds = %9971
  %9988 = fcmp fast olt float %89, 2.560000e+02
  br i1 %9988, label %9973, label %11789

; <label>:9989                                    ; preds = %9794
  br label %10096

; <label>:9990                                    ; preds = %9794
  %9991 = bitcast i32 %8812 to float
  %9992 = fcmp fast ogt float %9991, 0.000000e+00
  %9993 = select i1 %9992, float 0.000000e+00, float 1.000000e+00
  %9994 = fcmp fast olt float %9991, 1.000000e+00
  %9995 = select i1 %9994, float 1.000000e+00, float 0.000000e+00
  %9996 = select i1 %9994, float %9993, float 0.000000e+00
  %9997 = fmul fast float %9995, %2053
  %9998 = fmul fast float %9996, %2053
  br label %10096

; <label>:9999                                    ; preds = %9794
  %10000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %10001 = extractvalue %dx.types.CBufRet.f32 %10000, 0
  %10002 = extractvalue %dx.types.CBufRet.f32 %10000, 2
  %10003 = extractvalue %dx.types.CBufRet.f32 %10000, 3
  %10004 = fcmp fast olt float %8833, %10001
  br i1 %10004, label %10005, label %10019

; <label>:10005                                   ; preds = %11807, %11805, %10019, %9999
  %10006 = phi i32 [ 0, %9999 ], [ 1, %10019 ], [ 2, %11805 ], [ 3, %11807 ]
  %10007 = mul i32 %10006, 3
  %10008 = add i32 0, %10007
  %10009 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10008
  %10010 = load float, float* %10009, align 4
  %10011 = mul i32 %10006, 3
  %10012 = add i32 1, %10011
  %10013 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10012
  %10014 = load float, float* %10013, align 4
  %10015 = mul i32 %10006, 3
  %10016 = add i32 2, %10015
  %10017 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10016
  %10018 = load float, float* %10017, align 4
  br label %10096

; <label>:10019                                   ; preds = %9999
  %10020 = extractvalue %dx.types.CBufRet.f32 %10000, 1
  %10021 = fcmp fast olt float %8833, %10020
  br i1 %10021, label %10005, label %11805

; <label>:10022                                   ; preds = %9794
  %10023 = fadd fast float %8833, -5.000000e-01
  %10024 = fmul fast float %10023, 2.000000e+00
  %10025 = call float @dx.op.unary.f32(i32 7, float %10024)  ; Saturate(value)
  br label %10096

; <label>:10026                                   ; preds = %9794
  br label %10096

; <label>:10027                                   ; preds = %9794
  br label %10096

; <label>:10028                                   ; preds = %9794
  br label %10096

; <label>:10029                                   ; preds = %9794
  br label %10096

; <label>:10030                                   ; preds = %9794
  br label %10096

; <label>:10031                                   ; preds = %9794
  %10032 = bitcast i32 %8812 to float
  br label %10096

; <label>:10033                                   ; preds = %9794
  %10034 = bitcast i32 %8812 to float
  br label %10096

; <label>:10035                                   ; preds = %9794
  %10036 = and i32 %8812, 65535
  %10037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10036)  ; LegacyF16ToF32(value)
  %10038 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10039 = fptosi float %10038 to i32
  %10040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10041 = extractvalue %dx.types.CBufRet.f32 %10040, 0
  %10042 = extractvalue %dx.types.CBufRet.f32 %10040, 1
  %10043 = extractvalue %dx.types.CBufRet.f32 %10040, 2
  %10044 = fadd fast float %10041, %155
  %10045 = fadd fast float %10042, %156
  %10046 = fadd fast float %10043, %157
  %10047 = fptosi float %10044 to i32
  %10048 = fptosi float %10045 to i32
  %10049 = fptosi float %10046 to i32
  %10050 = xor i32 %10047, %10048
  %10051 = lshr i32 %10050, 1
  %10052 = and i32 %10051, 1
  %10053 = lshr i32 %10049, 1
  %10054 = and i32 %10053, 1
  %10055 = xor i32 %10054, 1
  %10056 = icmp ne i32 %10052, %10055
  switch i32 %10039, label %10096 [
    i32 -1, label %10057
    i32 -2, label %10058
    i32 -3, label %10060
    i32 -4, label %10062
    i32 -5, label %10064
    i32 -6, label %10065
    i32 -7, label %10066
  ]

; <label>:10057                                   ; preds = %10035
  br label %10096

; <label>:10058                                   ; preds = %10035
  %10059 = select i1 %10056, float 1.000000e+00, float 0.000000e+00
  br label %10096

; <label>:10060                                   ; preds = %10035
  %10061 = select i1 %10056, float 1.000000e+00, float 0.000000e+00
  br label %10096

; <label>:10062                                   ; preds = %10035
  %10063 = select i1 %10056, float 1.000000e+00, float 0.000000e+00
  br label %10096

; <label>:10064                                   ; preds = %10035
  br label %10096

; <label>:10065                                   ; preds = %10035
  br label %10096

; <label>:10066                                   ; preds = %10035
  %10067 = lshr i32 %8812, 16
  %10068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10067)  ; LegacyF16ToF32(value)
  %10069 = fmul fast float %10068, 0x3FD5555560000000
  %10070 = fsub fast float 1.000000e+00, %10069
  %10071 = fmul fast float %10069, %10037
  %10072 = fmul fast float %10070, %10037
  br label %10096

; <label>:10073                                   ; preds = %9794
  %10074 = bitcast i32 %8812 to float
  br label %10096

; <label>:10075                                   ; preds = %9794
  %10076 = bitcast i32 %8812 to float
  br label %10096

; <label>:10077                                   ; preds = %9794
  %10078 = bitcast i32 %8812 to float
  br label %10096

; <label>:10079                                   ; preds = %9794
  %10080 = and i32 %8812, 1023
  %10081 = uitofp i32 %10080 to float
  %10082 = lshr i32 %8812, 10
  %10083 = and i32 %10082, 1023
  %10084 = uitofp i32 %10083 to float
  %10085 = lshr i32 %8812, 20
  %10086 = and i32 %10085, 1023
  %10087 = uitofp i32 %10086 to float
  %10088 = fmul fast float %10081, 0x3F60040100000000
  %10089 = fmul fast float %10084, 0x3F60040100000000
  %10090 = fmul fast float %10087, 0x3F60040100000000
  %10091 = fadd fast float %10088, -1.000000e+00
  %10092 = fadd fast float %10089, -1.000000e+00
  %10093 = fadd fast float %10090, -1.000000e+00
  br label %10096

; <label>:10094                                   ; preds = %9794
  br label %10096

; <label>:10095                                   ; preds = %9794
  br label %10096

; <label>:10096                                   ; preds = %11807, %11803, %11787, %10095, %10094, %10079, %10077, %10075, %10073, %10066, %10065, %10064, %10062, %10060, %10058, %10057, %10035, %10033, %10031, %10030, %10029, %10028, %10027, %10026, %10022, %10005, %9990, %9989, %9973, %9947, %9895, %9888, %9887, %9886, %9885, %9863, %9862, %9861, %9849, %9837, %9825, %9824, %9823, %9822, %9821, %9812, %9800, %9799, %9794
  %10097 = phi float [ %9798, %9794 ], [ 0.000000e+00, %10094 ], [ %10091, %10079 ], [ %10078, %10077 ], [ %10076, %10075 ], [ %10074, %10073 ], [ %9798, %10035 ], [ 0.000000e+00, %10066 ], [ %10037, %10065 ], [ %10037, %10064 ], [ 0.000000e+00, %10062 ], [ %10061, %10060 ], [ %10059, %10058 ], [ %10037, %10057 ], [ %10034, %10033 ], [ %10032, %10031 ], [ 0.000000e+00, %10030 ], [ 0.000000e+00, %10029 ], [ 0.000000e+00, %10028 ], [ %155, %10026 ], [ %10025, %10022 ], [ %9997, %9990 ], [ 0.000000e+00, %9989 ], [ %9968, %9947 ], [ 0.000000e+00, %9888 ], [ 0.000000e+00, %9887 ], [ 0.000000e+00, %9886 ], [ 1.000000e+00, %9885 ], [ 0.000000e+00, %10095 ], [ 1.000000e+00, %9862 ], [ 5.000000e-01, %9861 ], [ %9858, %9849 ], [ %9846, %9837 ], [ %9834, %9825 ], [ %2056, %9824 ], [ %2054, %9823 ], [ %1904, %9822 ], [ %1841, %9821 ], [ %9820, %9812 ], [ %9809, %9800 ], [ %1895, %9799 ], [ %9900, %9895 ], [ %9978, %9973 ], [ %10010, %10005 ], [ 0.000000e+00, %10027 ], [ 1.000000e+00, %11787 ], [ 1.000000e+00, %11803 ], [ 1.000000e+00, %11807 ], [ %9882, %9863 ]
  %10098 = phi float [ %9796, %9794 ], [ 0.000000e+00, %10094 ], [ %10092, %10079 ], [ %10078, %10077 ], [ %10076, %10075 ], [ %10074, %10073 ], [ %9796, %10035 ], [ %10071, %10066 ], [ %10037, %10065 ], [ %10037, %10064 ], [ 0.000000e+00, %10062 ], [ 0.000000e+00, %10060 ], [ 0.000000e+00, %10058 ], [ %10037, %10057 ], [ %10034, %10033 ], [ %10032, %10031 ], [ 0.000000e+00, %10030 ], [ 0.000000e+00, %10029 ], [ 0.000000e+00, %10028 ], [ %156, %10026 ], [ %10025, %10022 ], [ %2053, %9990 ], [ 0.000000e+00, %9989 ], [ %9969, %9947 ], [ 1.000000e+00, %9888 ], [ 1.000000e+00, %9887 ], [ 1.000000e+00, %9886 ], [ 0x3FE6666660000000, %9885 ], [ 0.000000e+00, %10095 ], [ 1.000000e+00, %9862 ], [ 5.000000e-01, %9861 ], [ %9859, %9849 ], [ %9847, %9837 ], [ %9835, %9825 ], [ %2056, %9824 ], [ %2054, %9823 ], [ %1905, %9822 ], [ %1842, %9821 ], [ %9820, %9812 ], [ %9810, %9800 ], [ %1896, %9799 ], [ %9904, %9895 ], [ %9982, %9973 ], [ %10014, %10005 ], [ 0.000000e+00, %10027 ], [ 0.000000e+00, %11787 ], [ 0.000000e+00, %11803 ], [ 0.000000e+00, %11807 ], [ 0.000000e+00, %9863 ]
  %10099 = phi float [ %9797, %9794 ], [ 0.000000e+00, %10094 ], [ %10093, %10079 ], [ %10078, %10077 ], [ %10076, %10075 ], [ %10074, %10073 ], [ %9797, %10035 ], [ %10072, %10066 ], [ %10037, %10065 ], [ 0.000000e+00, %10064 ], [ %10063, %10062 ], [ 0.000000e+00, %10060 ], [ %10059, %10058 ], [ %10037, %10057 ], [ %10034, %10033 ], [ %10032, %10031 ], [ 0.000000e+00, %10030 ], [ 0.000000e+00, %10029 ], [ 0.000000e+00, %10028 ], [ %157, %10026 ], [ %10025, %10022 ], [ %9998, %9990 ], [ 0.000000e+00, %9989 ], [ %9970, %9947 ], [ 0.000000e+00, %9888 ], [ 0.000000e+00, %9887 ], [ 0.000000e+00, %9886 ], [ 0.000000e+00, %9885 ], [ 0.000000e+00, %10095 ], [ 1.000000e+00, %9862 ], [ 5.000000e-01, %9861 ], [ %9860, %9849 ], [ %9848, %9837 ], [ %9836, %9825 ], [ %2056, %9824 ], [ %2054, %9823 ], [ %1906, %9822 ], [ %1843, %9821 ], [ %9820, %9812 ], [ %9811, %9800 ], [ %1897, %9799 ], [ %9908, %9895 ], [ %9986, %9973 ], [ %10018, %10005 ], [ 1.000000e+00, %10027 ], [ 0.000000e+00, %11787 ], [ 0.000000e+00, %11803 ], [ 0.000000e+00, %11807 ], [ %9884, %9863 ]
  %10100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %10101 = extractvalue %dx.types.CBufRet.f32 %10100, 3
  %10102 = fsub fast float %10097, %9798
  %10103 = fsub fast float %10098, %9796
  %10104 = fsub fast float %10099, %9797
  %10105 = fmul fast float %10101, %10102
  %10106 = fmul fast float %10101, %10103
  %10107 = fmul fast float %10101, %10104
  %10108 = fadd fast float %10105, %9798
  %10109 = fadd fast float %10106, %9796
  %10110 = fadd fast float %10107, %9797
  br label %10111

; <label>:10111                                   ; preds = %10096, %9794
  %10112 = phi float [ %10108, %10096 ], [ %9798, %9794 ]
  %10113 = phi float [ %10109, %10096 ], [ %9796, %9794 ]
  %10114 = phi float [ %10110, %10096 ], [ %9797, %9794 ]
  %10115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %10116 = extractvalue %dx.types.CBufRet.f32 %10115, 0
  %10117 = bitcast float %10116 to i32
  %10118 = lshr i32 %10117, 8
  %10119 = and i32 %10118, 255
  %10120 = uitofp i32 %10119 to float
  %10121 = fptoui float %10120 to i32
  switch i32 %10121, label %10358 [
    i32 1, label %10122
    i32 2, label %10128
    i32 3, label %10134
    i32 4, label %10140
    i32 5, label %10146
    i32 6, label %10152
    i32 7, label %10158
    i32 8, label %10164
    i32 9, label %10170
    i32 10, label %10172
    i32 11, label %10193
    i32 12, label %10214
    i32 13, label %10226
    i32 14, label %10241
    i32 15, label %10246
    i32 16, label %10248
    i32 17, label %10250
    i32 18, label %10252
    i32 19, label %10254
    i32 20, label %10265
    i32 21, label %10276
    i32 22, label %10288
    i32 23, label %10322
    i32 24, label %10337
    i32 25, label %10352
    i32 26, label %10354
    i32 27, label %10356
  ]

; <label>:10122                                   ; preds = %10111
  %10123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10124 = extractvalue %dx.types.CBufRet.f32 %10123, 0
  %10125 = fmul fast float %10124, %8011
  %10126 = fmul fast float %10124, %8012
  %10127 = fmul fast float %10124, %8013
  br label %10358

; <label>:10128                                   ; preds = %10111
  %10129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10130 = extractvalue %dx.types.CBufRet.f32 %10129, 0
  %10131 = fmul fast float %10130, %8008
  %10132 = fmul fast float %10130, %8009
  %10133 = fmul fast float %10130, %8010
  br label %10358

; <label>:10134                                   ; preds = %10111
  %10135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10136 = extractvalue %dx.types.CBufRet.f32 %10135, 0
  %10137 = fmul fast float %10136, %1841
  %10138 = fmul fast float %10136, %1842
  %10139 = fmul fast float %10136, %1843
  br label %10358

; <label>:10140                                   ; preds = %10111
  %10141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10142 = extractvalue %dx.types.CBufRet.f32 %10141, 0
  %10143 = fmul fast float %10142, %8005
  %10144 = fmul fast float %10142, %8006
  %10145 = fmul fast float %10142, %8007
  br label %10358

; <label>:10146                                   ; preds = %10111
  %10147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10148 = extractvalue %dx.types.CBufRet.f32 %10147, 0
  %10149 = fmul fast float %10148, %8002
  %10150 = fmul fast float %10148, %8003
  %10151 = fmul fast float %10148, %8004
  br label %10358

; <label>:10152                                   ; preds = %10111
  %10153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10154 = extractvalue %dx.types.CBufRet.f32 %10153, 0
  %10155 = fmul fast float %10154, %5027
  %10156 = fmul fast float %10154, %5028
  %10157 = fmul fast float %10154, %5029
  br label %10358

; <label>:10158                                   ; preds = %10111
  %10159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10160 = extractvalue %dx.types.CBufRet.f32 %10159, 0
  %10161 = fmul fast float %10160, %5027
  %10162 = fmul fast float %10160, %5028
  %10163 = fmul fast float %10160, %5029
  br label %10358

; <label>:10164                                   ; preds = %10111
  %10165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10166 = extractvalue %dx.types.CBufRet.f32 %10165, 0
  %10167 = fmul fast float %5030, %10166
  %10168 = fmul fast float %5031, %10166
  %10169 = fmul fast float %5032, %10166
  br label %10358

; <label>:10170                                   ; preds = %10111
  %10171 = bitcast i32 %8812 to float
  br label %10358

; <label>:10172                                   ; preds = %10111
  %10173 = and i32 %8812, 1023
  %10174 = uitofp i32 %10173 to float
  %10175 = lshr i32 %8812, 10
  %10176 = and i32 %10175, 1023
  %10177 = uitofp i32 %10176 to float
  %10178 = lshr i32 %8812, 20
  %10179 = and i32 %10178, 1023
  %10180 = uitofp i32 %10179 to float
  %10181 = fmul fast float %10174, 0x3F60040100000000
  %10182 = fmul fast float %10177, 0x3F60040100000000
  %10183 = fmul fast float %10180, 0x3F60040100000000
  %10184 = fadd fast float %10181, -1.000000e+00
  %10185 = fadd fast float %10182, -1.000000e+00
  %10186 = fadd fast float %10183, -1.000000e+00
  %10187 = fcmp fast ogt float %10184, 0.000000e+00
  %10188 = select i1 %10187, float 1.000000e+00, float 0.000000e+00
  %10189 = fcmp fast ogt float %10185, 0.000000e+00
  %10190 = select i1 %10189, float 1.000000e+00, float 0.000000e+00
  %10191 = fcmp fast ogt float %10186, 0.000000e+00
  %10192 = select i1 %10191, float 1.000000e+00, float 0.000000e+00
  br label %10358

; <label>:10193                                   ; preds = %10111
  %10194 = and i32 %8812, 1023
  %10195 = uitofp i32 %10194 to float
  %10196 = lshr i32 %8812, 10
  %10197 = and i32 %10196, 1023
  %10198 = uitofp i32 %10197 to float
  %10199 = lshr i32 %8812, 20
  %10200 = and i32 %10199, 1023
  %10201 = uitofp i32 %10200 to float
  %10202 = fmul fast float %10195, 0x3F60040100000000
  %10203 = fmul fast float %10198, 0x3F60040100000000
  %10204 = fmul fast float %10201, 0x3F60040100000000
  %10205 = fadd fast float %10202, -1.000000e+00
  %10206 = fadd fast float %10203, -1.000000e+00
  %10207 = fadd fast float %10204, -1.000000e+00
  %10208 = fmul fast float %10207, %10206
  %10209 = fsub fast float %10207, %10208
  %10210 = fmul fast float %10206, %10205
  %10211 = fmul fast float %10209, %10205
  %10212 = fsub fast float %10206, %10210
  %10213 = fsub fast float %10209, %10211
  br label %10358

; <label>:10214                                   ; preds = %10111
  %10215 = and i32 %8812, 255
  %10216 = uitofp i32 %10215 to float
  %10217 = fmul fast float %10216, 0x3F70101020000000
  %10218 = lshr i32 %8812, 8
  %10219 = and i32 %10218, 255
  %10220 = uitofp i32 %10219 to float
  %10221 = fmul fast float %10220, 0x3F70101020000000
  %10222 = lshr i32 %8812, 16
  %10223 = and i32 %10222, 255
  %10224 = uitofp i32 %10223 to float
  %10225 = fmul fast float %10224, 0x3F70101020000000
  br label %10358

; <label>:10226                                   ; preds = %10111
  %10227 = and i32 %8812, 1023
  %10228 = uitofp i32 %10227 to float
  %10229 = lshr i32 %8812, 10
  %10230 = and i32 %10229, 1023
  %10231 = uitofp i32 %10230 to float
  %10232 = lshr i32 %8812, 20
  %10233 = and i32 %10232, 1023
  %10234 = uitofp i32 %10233 to float
  %10235 = fmul fast float %10228, 0x3F60040100000000
  %10236 = fmul fast float %10231, 0x3F60040100000000
  %10237 = fmul fast float %10234, 0x3F60040100000000
  %10238 = fadd fast float %10235, -1.000000e+00
  %10239 = fadd fast float %10236, -1.000000e+00
  %10240 = fadd fast float %10237, -1.000000e+00
  br label %10358

; <label>:10241                                   ; preds = %10111
  %10242 = icmp ne i32 %8812, 0
  %10243 = select i1 %10242, float 1.000000e+00, float %10112
  %10244 = select i1 %10242, float 0.000000e+00, float %10113
  %10245 = select i1 %10242, float 0.000000e+00, float %10114
  br label %10358

; <label>:10246                                   ; preds = %10111
  %10247 = bitcast i32 %8812 to float
  br label %10358

; <label>:10248                                   ; preds = %10111
  %10249 = bitcast i32 %8812 to float
  br label %10358

; <label>:10250                                   ; preds = %10111
  %10251 = bitcast i32 %8812 to float
  br label %10358

; <label>:10252                                   ; preds = %10111
  %10253 = bitcast i32 %8812 to float
  br label %10358

; <label>:10254                                   ; preds = %10111
  %10255 = and i32 %8812, 65535
  %10256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10255)  ; LegacyF16ToF32(value)
  %10257 = lshr i32 %8812, 16
  %10258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10257)  ; LegacyF16ToF32(value)
  %10259 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10261 = extractvalue %dx.types.CBufRet.f32 %10260, 0
  %10262 = fmul fast float %10261, %10256
  %10263 = fmul fast float %10261, %10258
  %10264 = fmul fast float %10261, %10259
  br label %10358

; <label>:10265                                   ; preds = %10111
  %10266 = and i32 %8812, 65535
  %10267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10266)  ; LegacyF16ToF32(value)
  %10268 = lshr i32 %8812, 16
  %10269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10268)  ; LegacyF16ToF32(value)
  %10270 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10272 = extractvalue %dx.types.CBufRet.f32 %10271, 0
  %10273 = fmul fast float %10272, %10267
  %10274 = fmul fast float %10272, %10269
  %10275 = fmul fast float %10272, %10270
  br label %10358

; <label>:10276                                   ; preds = %10111
  %10277 = and i32 %8812, 1023
  %10278 = uitofp i32 %10277 to float
  %10279 = lshr i32 %8812, 10
  %10280 = and i32 %10279, 1023
  %10281 = uitofp i32 %10280 to float
  %10282 = lshr i32 %8812, 20
  %10283 = and i32 %10282, 1023
  %10284 = uitofp i32 %10283 to float
  %10285 = fmul fast float %10278, 0x3F50040100000000
  %10286 = fmul fast float %10281, 0x3F50040100000000
  %10287 = fmul fast float %10284, 0x3F50040100000000
  br label %10358

; <label>:10288                                   ; preds = %10111
  %10289 = and i32 %8812, 1023
  %10290 = uitofp i32 %10289 to float
  %10291 = lshr i32 %8812, 10
  %10292 = and i32 %10291, 1023
  %10293 = uitofp i32 %10292 to float
  %10294 = lshr i32 %8812, 20
  %10295 = and i32 %10294, 1023
  %10296 = uitofp i32 %10295 to float
  %10297 = fmul fast float %10290, 0x3F60040100000000
  %10298 = fmul fast float %10293, 0x3F60040100000000
  %10299 = fmul fast float %10296, 0x3F60040100000000
  %10300 = fadd fast float %10297, -1.000000e+00
  %10301 = fadd fast float %10298, -1.000000e+00
  %10302 = fadd fast float %10299, -1.000000e+00
  %10303 = call float @dx.op.binary.f32(i32 35, float %10301, float %10302)  ; FMax(a,b)
  %10304 = call float @dx.op.binary.f32(i32 35, float %10300, float %10303)  ; FMax(a,b)
  %10305 = fmul fast float %10304, 2.000000e+00
  %10306 = call float @dx.op.unary.f32(i32 7, float %10305)  ; Saturate(value)
  %10307 = fmul fast float %10290, 0x3F94050140000000
  %10308 = fadd fast float %10307, -1.000000e+01
  %10309 = fmul fast float %10293, 0x3F94050140000000
  %10310 = fadd fast float %10309, -1.000000e+01
  %10311 = fmul fast float %10296, 0x3F94050140000000
  %10312 = fadd fast float %10311, -1.000000e+01
  %10313 = fsub fast float %10308, %10112
  %10314 = fsub fast float %10310, %10113
  %10315 = fsub fast float %10312, %10114
  %10316 = fmul fast float %10306, %10313
  %10317 = fmul fast float %10306, %10314
  %10318 = fmul fast float %10306, %10315
  %10319 = fadd fast float %10316, %10112
  %10320 = fadd fast float %10317, %10113
  %10321 = fadd fast float %10318, %10114
  br label %10358

; <label>:10322                                   ; preds = %10111
  %10323 = and i32 %8812, 1023
  %10324 = uitofp i32 %10323 to float
  %10325 = lshr i32 %8812, 10
  %10326 = and i32 %10325, 1023
  %10327 = uitofp i32 %10326 to float
  %10328 = lshr i32 %8812, 20
  %10329 = and i32 %10328, 1023
  %10330 = uitofp i32 %10329 to float
  %10331 = fmul fast float %10324, 0x3F60040100000000
  %10332 = fmul fast float %10327, 0x3F60040100000000
  %10333 = fmul fast float %10330, 0x3F60040100000000
  %10334 = fadd fast float %10331, -1.000000e+00
  %10335 = fadd fast float %10332, -1.000000e+00
  %10336 = fadd fast float %10333, -1.000000e+00
  br label %10358

; <label>:10337                                   ; preds = %10111
  %10338 = and i32 %8812, 1023
  %10339 = uitofp i32 %10338 to float
  %10340 = lshr i32 %8812, 10
  %10341 = and i32 %10340, 1023
  %10342 = uitofp i32 %10341 to float
  %10343 = lshr i32 %8812, 20
  %10344 = and i32 %10343, 1023
  %10345 = uitofp i32 %10344 to float
  %10346 = fmul fast float %10339, 0x3F60040100000000
  %10347 = fmul fast float %10342, 0x3F60040100000000
  %10348 = fmul fast float %10345, 0x3F60040100000000
  %10349 = fadd fast float %10346, -1.000000e+00
  %10350 = fadd fast float %10347, -1.000000e+00
  %10351 = fadd fast float %10348, -1.000000e+00
  br label %10358

; <label>:10352                                   ; preds = %10111
  %10353 = bitcast i32 %8812 to float
  br label %10358

; <label>:10354                                   ; preds = %10111
  %10355 = bitcast i32 %8812 to float
  br label %10358

; <label>:10356                                   ; preds = %10111
  %10357 = bitcast i32 %8812 to float
  br label %10358

; <label>:10358                                   ; preds = %10356, %10354, %10352, %10337, %10322, %10288, %10276, %10265, %10254, %10252, %10250, %10248, %10246, %10241, %10226, %10214, %10193, %10172, %10170, %10164, %10158, %10152, %10146, %10140, %10134, %10128, %10122, %10111
  %10359 = phi float [ %10112, %10111 ], [ %10357, %10356 ], [ %10355, %10354 ], [ %10353, %10352 ], [ %10349, %10337 ], [ %10334, %10322 ], [ %10319, %10288 ], [ %10285, %10276 ], [ %10273, %10265 ], [ %10262, %10254 ], [ %10253, %10252 ], [ %10251, %10250 ], [ %10249, %10248 ], [ %10247, %10246 ], [ %10238, %10226 ], [ %10217, %10214 ], [ %10205, %10193 ], [ %10188, %10172 ], [ %10171, %10170 ], [ %10167, %10164 ], [ %10161, %10158 ], [ %10155, %10152 ], [ %10149, %10146 ], [ %10143, %10140 ], [ %10137, %10134 ], [ %10131, %10128 ], [ %10125, %10122 ], [ %10243, %10241 ]
  %10360 = phi float [ %10113, %10111 ], [ %10357, %10356 ], [ %10355, %10354 ], [ %10353, %10352 ], [ %10350, %10337 ], [ %10335, %10322 ], [ %10320, %10288 ], [ %10286, %10276 ], [ %10274, %10265 ], [ %10263, %10254 ], [ %10253, %10252 ], [ %10251, %10250 ], [ %10249, %10248 ], [ %10247, %10246 ], [ %10239, %10226 ], [ %10221, %10214 ], [ %10212, %10193 ], [ %10190, %10172 ], [ %10171, %10170 ], [ %10168, %10164 ], [ %10162, %10158 ], [ %10156, %10152 ], [ %10150, %10146 ], [ %10144, %10140 ], [ %10138, %10134 ], [ %10132, %10128 ], [ %10126, %10122 ], [ %10244, %10241 ]
  %10361 = phi float [ %10114, %10111 ], [ %10357, %10356 ], [ %10355, %10354 ], [ %10353, %10352 ], [ %10351, %10337 ], [ %10336, %10322 ], [ %10321, %10288 ], [ %10287, %10276 ], [ %10275, %10265 ], [ %10264, %10254 ], [ %10253, %10252 ], [ %10251, %10250 ], [ %10249, %10248 ], [ %10247, %10246 ], [ %10240, %10226 ], [ %10225, %10214 ], [ %10213, %10193 ], [ %10192, %10172 ], [ %10171, %10170 ], [ %10169, %10164 ], [ %10163, %10158 ], [ %10157, %10152 ], [ %10151, %10146 ], [ %10145, %10140 ], [ %10139, %10134 ], [ %10133, %10128 ], [ %10127, %10122 ], [ %10245, %10241 ]
  %10362 = extractvalue %dx.types.CBufRet.f32 %10115, 3
  %10363 = fsub fast float %10359, %10112
  %10364 = fsub fast float %10360, %10113
  %10365 = fsub fast float %10361, %10114
  %10366 = fmul fast float %10362, %10363
  %10367 = fmul fast float %10362, %10364
  %10368 = fmul fast float %10362, %10365
  %10369 = fadd fast float %10366, %10112
  %10370 = fadd fast float %10367, %10113
  %10371 = fadd fast float %10368, %10114
  %10372 = lshr i32 %10117, 16
  %10373 = and i32 %10372, 255
  %10374 = uitofp i32 %10373 to float
  %10375 = fptoui float %10374 to i32
  switch i32 %10375, label %10422 [
    i32 16, label %10407
    i32 12, label %10406
    i32 3, label %10376
    i32 4, label %10377
    i32 15, label %10378
    i32 5, label %10387
    i32 6, label %10396
    i32 7, label %10405
    i32 11, label %10406
  ]

; <label>:10376                                   ; preds = %10358
  br label %10422

; <label>:10377                                   ; preds = %10358
  br label %10422

; <label>:10378                                   ; preds = %10358
  %10379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %10380 = extractvalue %dx.types.CBufRet.f32 %10379, 0
  %10381 = fadd fast float %10380, %10369
  %10382 = fadd fast float %10380, %10370
  %10383 = fadd fast float %10380, %10371
  %10384 = call float @dx.op.unary.f32(i32 7, float %10381)  ; Saturate(value)
  %10385 = call float @dx.op.unary.f32(i32 7, float %10382)  ; Saturate(value)
  %10386 = call float @dx.op.unary.f32(i32 7, float %10383)  ; Saturate(value)
  br label %10422

; <label>:10387                                   ; preds = %10358
  %10388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10389 = extractvalue %dx.types.CBufRet.f32 %10388, 0
  %10390 = bitcast float %10389 to i32
  %10391 = and i32 %10390, 2130706432
  %10392 = icmp eq i32 %10391, 0
  %10393 = select i1 %10392, float 0.000000e+00, float %10369
  %10394 = select i1 %10392, float 0.000000e+00, float %10370
  %10395 = select i1 %10392, float 0.000000e+00, float %10371
  br label %10422

; <label>:10396                                   ; preds = %10358
  %10397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10398 = extractvalue %dx.types.CBufRet.f32 %10397, 0
  %10399 = bitcast float %10398 to i32
  %10400 = and i32 %10399, 2130706432
  %10401 = icmp eq i32 %10400, 0
  %10402 = select i1 %10401, float 0.000000e+00, float %10369
  %10403 = select i1 %10401, float 0.000000e+00, float %10370
  %10404 = select i1 %10401, float 0.000000e+00, float %10371
  br label %10422

; <label>:10405                                   ; preds = %10358
  br label %10422

; <label>:10406                                   ; preds = %10358, %10358
  br label %10422

; <label>:10407                                   ; preds = %10358
  %10408 = and i32 %8812, 1023
  %10409 = uitofp i32 %10408 to float
  %10410 = lshr i32 %8812, 10
  %10411 = and i32 %10410, 1023
  %10412 = uitofp i32 %10411 to float
  %10413 = lshr i32 %8812, 20
  %10414 = and i32 %10413, 1023
  %10415 = uitofp i32 %10414 to float
  %10416 = fmul fast float %10409, 0x3F60040100000000
  %10417 = fmul fast float %10412, 0x3F60040100000000
  %10418 = fmul fast float %10415, 0x3F60040100000000
  %10419 = fadd fast float %10416, -1.000000e+00
  %10420 = fadd fast float %10417, -1.000000e+00
  %10421 = fadd fast float %10418, -1.000000e+00
  br label %10422

; <label>:10422                                   ; preds = %10407, %10406, %10405, %10396, %10387, %10378, %10377, %10376, %10358
  %10423 = phi float [ 0.000000e+00, %10405 ], [ %10384, %10378 ], [ 0.000000e+00, %10377 ], [ %71, %10406 ], [ %10419, %10407 ], [ 0.000000e+00, %10376 ], [ %10393, %10387 ], [ %10402, %10396 ], [ %10369, %10358 ]
  %10424 = phi float [ 0.000000e+00, %10405 ], [ %10385, %10378 ], [ 0.000000e+00, %10377 ], [ %72, %10406 ], [ %10420, %10407 ], [ 0.000000e+00, %10376 ], [ %10394, %10387 ], [ %10403, %10396 ], [ %10370, %10358 ]
  %10425 = phi float [ 0.000000e+00, %10405 ], [ %10386, %10378 ], [ 1.000000e+00, %10377 ], [ %73, %10406 ], [ %10421, %10407 ], [ 0.000000e+00, %10376 ], [ %10395, %10387 ], [ %10404, %10396 ], [ %10371, %10358 ]
  %10426 = fsub fast float %10423, %10369
  %10427 = fsub fast float %10424, %10370
  %10428 = fsub fast float %10425, %10371
  %10429 = fmul fast float %10362, %10426
  %10430 = fmul fast float %10362, %10427
  %10431 = fmul fast float %10362, %10428
  %10432 = fadd fast float %10429, %10369
  %10433 = fadd fast float %10430, %10370
  %10434 = fadd fast float %10431, %10371
  %10435 = and i32 %8000, 255
  %10436 = uitofp i32 %10435 to float
  %10437 = fptoui float %10436 to i32
  %10438 = lshr i32 %8000, 8
  %10439 = and i32 %10438, 255
  %10440 = uitofp i32 %10439 to float
  %10441 = fptoui float %10440 to i32
  %10442 = lshr i32 %8000, 16
  %10443 = and i32 %10442, 255
  %10444 = uitofp i32 %10443 to float
  %10445 = fptoui float %10444 to i32
  %10446 = lshr i32 %8000, 24
  %10447 = uitofp i32 %10446 to float
  %10448 = fptoui float %10447 to i32
  %10449 = and i32 %7999, 255
  %10450 = uitofp i32 %10449 to float
  %10451 = fptoui float %10450 to i32
  %10452 = lshr i32 %7999, 16
  %10453 = and i32 %10452, 255
  %10454 = uitofp i32 %10453 to float
  %10455 = fptoui float %10454 to i32
  %10456 = lshr i32 %10117, 24
  %10457 = uitofp i32 %10456 to float
  %10458 = fptoui float %10457 to i32
  switch i32 %10458, label %10697 [
    i32 1, label %10459
    i32 2, label %10486
    i32 3, label %10511
    i32 4, label %10534
    i32 5, label %10557
    i32 6, label %10580
    i32 7, label %10604
    i32 8, label %10627
    i32 9, label %10650
    i32 12, label %10672
    i32 13, label %10673
    i32 14, label %10696
  ]

; <label>:10459                                   ; preds = %10422
  %10460 = add i32 %10437, %10451
  %10461 = add i32 %10460, %10448
  %10462 = add i32 %10461, %10441
  %10463 = add i32 %10462, %10445
  %10464 = uitofp i32 %10463 to float
  %10465 = fadd fast float %10464, -4.000000e+00
  %10466 = fmul fast float %10465, 0x3FB5555560000000
  %10467 = call float @dx.op.unary.f32(i32 7, float %10466)  ; Saturate(value)
  %10468 = icmp eq i32 %10463, 0
  %10469 = select i1 %10468, float 0.000000e+00, float %10467
  %10470 = icmp ult i32 %10463, 2
  %10471 = select i1 %10470, float 0.000000e+00, float %10467
  %10472 = add i32 %10463, -1
  %10473 = icmp ult i32 %10472, 2
  %10474 = select i1 %10473, float 1.000000e+00, float %10469
  %10475 = icmp ult i32 %10463, 4
  %10476 = select i1 %10475, float 0.000000e+00, float 1.000000e+00
  %10477 = and i32 %10463, -2
  %10478 = icmp eq i32 %10477, 2
  %10479 = icmp eq i32 %10463, 4
  %10480 = select i1 %10479, float 1.000000e+00, float %10476
  %10481 = or i1 %10479, %10478
  %10482 = select i1 %10481, float 1.000000e+00, float %10471
  %10483 = add i32 %10463, -3
  %10484 = icmp ult i32 %10483, 2
  %10485 = select i1 %10484, float 0.000000e+00, float %10474
  br label %10697

; <label>:10486                                   ; preds = %10422
  %10487 = add i32 %10441, %10437
  %10488 = add i32 %10487, %10445
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
  br label %10697

; <label>:10511                                   ; preds = %10422
  %10512 = uitofp i32 %10437 to float
  %10513 = fadd fast float %10512, -4.000000e+00
  %10514 = fmul fast float %10513, 0x3FB5555560000000
  %10515 = call float @dx.op.unary.f32(i32 7, float %10514)  ; Saturate(value)
  %10516 = icmp eq i32 %10437, 0
  %10517 = select i1 %10516, float 0.000000e+00, float %10515
  %10518 = icmp ult i32 %10437, 2
  %10519 = select i1 %10518, float 0.000000e+00, float %10515
  %10520 = add i32 %10437, -1
  %10521 = icmp ult i32 %10520, 2
  %10522 = select i1 %10521, float 1.000000e+00, float %10517
  %10523 = icmp ult i32 %10437, 4
  %10524 = select i1 %10523, float 0.000000e+00, float 1.000000e+00
  %10525 = and i32 %10437, -2
  %10526 = icmp eq i32 %10525, 2
  %10527 = icmp eq i32 %10437, 4
  %10528 = select i1 %10527, float 1.000000e+00, float %10524
  %10529 = or i1 %10527, %10526
  %10530 = select i1 %10529, float 1.000000e+00, float %10519
  %10531 = add i32 %10437, -3
  %10532 = icmp ult i32 %10531, 2
  %10533 = select i1 %10532, float 0.000000e+00, float %10522
  br label %10697

; <label>:10534                                   ; preds = %10422
  %10535 = uitofp i32 %10441 to float
  %10536 = fadd fast float %10535, -4.000000e+00
  %10537 = fmul fast float %10536, 0x3FB5555560000000
  %10538 = call float @dx.op.unary.f32(i32 7, float %10537)  ; Saturate(value)
  %10539 = icmp eq i32 %10441, 0
  %10540 = select i1 %10539, float 0.000000e+00, float %10538
  %10541 = icmp ult i32 %10441, 2
  %10542 = select i1 %10541, float 0.000000e+00, float %10538
  %10543 = add i32 %10441, -1
  %10544 = icmp ult i32 %10543, 2
  %10545 = select i1 %10544, float 1.000000e+00, float %10540
  %10546 = icmp ult i32 %10441, 4
  %10547 = select i1 %10546, float 0.000000e+00, float 1.000000e+00
  %10548 = and i32 %10441, -2
  %10549 = icmp eq i32 %10548, 2
  %10550 = icmp eq i32 %10441, 4
  %10551 = select i1 %10550, float 1.000000e+00, float %10547
  %10552 = or i1 %10550, %10549
  %10553 = select i1 %10552, float 1.000000e+00, float %10542
  %10554 = add i32 %10441, -3
  %10555 = icmp ult i32 %10554, 2
  %10556 = select i1 %10555, float 0.000000e+00, float %10545
  br label %10697

; <label>:10557                                   ; preds = %10422
  %10558 = uitofp i32 %10445 to float
  %10559 = fadd fast float %10558, -4.000000e+00
  %10560 = fmul fast float %10559, 0x3FB5555560000000
  %10561 = call float @dx.op.unary.f32(i32 7, float %10560)  ; Saturate(value)
  %10562 = icmp eq i32 %10445, 0
  %10563 = select i1 %10562, float 0.000000e+00, float %10561
  %10564 = icmp ult i32 %10445, 2
  %10565 = select i1 %10564, float 0.000000e+00, float %10561
  %10566 = add i32 %10445, -1
  %10567 = icmp ult i32 %10566, 2
  %10568 = select i1 %10567, float 1.000000e+00, float %10563
  %10569 = icmp ult i32 %10445, 4
  %10570 = select i1 %10569, float 0.000000e+00, float 1.000000e+00
  %10571 = and i32 %10445, -2
  %10572 = icmp eq i32 %10571, 2
  %10573 = icmp eq i32 %10445, 4
  %10574 = select i1 %10573, float 1.000000e+00, float %10570
  %10575 = or i1 %10573, %10572
  %10576 = select i1 %10575, float 1.000000e+00, float %10565
  %10577 = add i32 %10445, -3
  %10578 = icmp ult i32 %10577, 2
  %10579 = select i1 %10578, float 0.000000e+00, float %10568
  br label %10697

; <label>:10580                                   ; preds = %10422
  %10581 = add i32 %10448, %10451
  %10582 = uitofp i32 %10581 to float
  %10583 = fadd fast float %10582, -4.000000e+00
  %10584 = fmul fast float %10583, 0x3FB5555560000000
  %10585 = call float @dx.op.unary.f32(i32 7, float %10584)  ; Saturate(value)
  %10586 = icmp eq i32 %10581, 0
  %10587 = select i1 %10586, float 0.000000e+00, float %10585
  %10588 = icmp ult i32 %10581, 2
  %10589 = select i1 %10588, float 0.000000e+00, float %10585
  %10590 = add i32 %10581, -1
  %10591 = icmp ult i32 %10590, 2
  %10592 = select i1 %10591, float 1.000000e+00, float %10587
  %10593 = icmp ult i32 %10581, 4
  %10594 = select i1 %10593, float 0.000000e+00, float 1.000000e+00
  %10595 = and i32 %10581, -2
  %10596 = icmp eq i32 %10595, 2
  %10597 = icmp eq i32 %10581, 4
  %10598 = select i1 %10597, float 1.000000e+00, float %10594
  %10599 = or i1 %10597, %10596
  %10600 = select i1 %10599, float 1.000000e+00, float %10589
  %10601 = add i32 %10581, -3
  %10602 = icmp ult i32 %10601, 2
  %10603 = select i1 %10602, float 0.000000e+00, float %10592
  br label %10697

; <label>:10604                                   ; preds = %10422
  %10605 = uitofp i32 %10448 to float
  %10606 = fadd fast float %10605, -4.000000e+00
  %10607 = fmul fast float %10606, 0x3FB5555560000000
  %10608 = call float @dx.op.unary.f32(i32 7, float %10607)  ; Saturate(value)
  %10609 = icmp eq i32 %10448, 0
  %10610 = select i1 %10609, float 0.000000e+00, float %10608
  %10611 = icmp ult i32 %10448, 2
  %10612 = select i1 %10611, float 0.000000e+00, float %10608
  %10613 = add i32 %10448, -1
  %10614 = icmp ult i32 %10613, 2
  %10615 = select i1 %10614, float 1.000000e+00, float %10610
  %10616 = icmp ult i32 %10448, 4
  %10617 = select i1 %10616, float 0.000000e+00, float 1.000000e+00
  %10618 = and i32 %10448, -2
  %10619 = icmp eq i32 %10618, 2
  %10620 = icmp eq i32 %10448, 4
  %10621 = select i1 %10620, float 1.000000e+00, float %10617
  %10622 = or i1 %10620, %10619
  %10623 = select i1 %10622, float 1.000000e+00, float %10612
  %10624 = add i32 %10448, -3
  %10625 = icmp ult i32 %10624, 2
  %10626 = select i1 %10625, float 0.000000e+00, float %10615
  br label %10697

; <label>:10627                                   ; preds = %10422
  %10628 = uitofp i32 %10451 to float
  %10629 = fadd fast float %10628, -4.000000e+00
  %10630 = fmul fast float %10629, 0x3FB5555560000000
  %10631 = call float @dx.op.unary.f32(i32 7, float %10630)  ; Saturate(value)
  %10632 = icmp eq i32 %10451, 0
  %10633 = select i1 %10632, float 0.000000e+00, float %10631
  %10634 = icmp ult i32 %10451, 2
  %10635 = select i1 %10634, float 0.000000e+00, float %10631
  %10636 = add i32 %10451, -1
  %10637 = icmp ult i32 %10636, 2
  %10638 = select i1 %10637, float 1.000000e+00, float %10633
  %10639 = icmp ult i32 %10451, 4
  %10640 = select i1 %10639, float 0.000000e+00, float 1.000000e+00
  %10641 = and i32 %10451, -2
  %10642 = icmp eq i32 %10641, 2
  %10643 = icmp eq i32 %10451, 4
  %10644 = select i1 %10643, float 1.000000e+00, float %10640
  %10645 = or i1 %10643, %10642
  %10646 = select i1 %10645, float 1.000000e+00, float %10635
  %10647 = add i32 %10451, -3
  %10648 = icmp ult i32 %10647, 2
  %10649 = select i1 %10648, float 0.000000e+00, float %10638
  br label %10697

; <label>:10650                                   ; preds = %10422
  %10651 = lshr i32 %7999, 8
  %10652 = and i32 %10651, 255
  %10653 = uitofp i32 %10652 to float
  %10654 = fptoui float %10653 to i32
  %10655 = uitofp i32 %10654 to float
  %10656 = fcmp fast oge float %10655, 1.000000e+00
  %10657 = fcmp fast oge float %10655, 2.000000e+00
  %10658 = or i1 %10657, %10656
  %10659 = select i1 %10658, float 1.000000e+00, float 0.000000e+00
  %10660 = fcmp fast oge float %10655, 3.000000e+00
  %10661 = or i1 %10660, %10657
  %10662 = fcmp fast oge float %10655, 4.000000e+00
  %10663 = or i1 %10662, %10661
  %10664 = select i1 %10663, float 1.000000e+00, float 0.000000e+00
  %10665 = or i1 %10662, %10660
  %10666 = fcmp fast oge float %10655, 5.000000e+00
  %10667 = or i1 %10666, %10662
  %10668 = select i1 %10667, float 1.000000e+00, float 0.000000e+00
  %10669 = select i1 %10666, float 0.000000e+00, float %10664
  %10670 = or i1 %10666, %10665
  %10671 = select i1 %10670, float 0.000000e+00, float %10659
  br label %10697

; <label>:10672                                   ; preds = %10422
  br label %10697

; <label>:10673                                   ; preds = %10422
  %10674 = uitofp i32 %10455 to float
  %10675 = fadd fast float %10674, -4.000000e+00
  %10676 = fmul fast float %10675, 0x3FB5555560000000
  %10677 = call float @dx.op.unary.f32(i32 7, float %10676)  ; Saturate(value)
  %10678 = icmp eq i32 %10455, 0
  %10679 = select i1 %10678, float 0.000000e+00, float %10677
  %10680 = icmp ult i32 %10455, 2
  %10681 = select i1 %10680, float 0.000000e+00, float %10677
  %10682 = add i32 %10455, -1
  %10683 = icmp ult i32 %10682, 2
  %10684 = select i1 %10683, float 1.000000e+00, float %10679
  %10685 = icmp ult i32 %10455, 4
  %10686 = select i1 %10685, float 0.000000e+00, float 1.000000e+00
  %10687 = and i32 %10455, -2
  %10688 = icmp eq i32 %10687, 2
  %10689 = icmp eq i32 %10455, 4
  %10690 = select i1 %10689, float 1.000000e+00, float %10686
  %10691 = or i1 %10689, %10688
  %10692 = select i1 %10691, float 1.000000e+00, float %10681
  %10693 = add i32 %10455, -3
  %10694 = icmp ult i32 %10693, 2
  %10695 = select i1 %10694, float 0.000000e+00, float %10684
  br label %10697

; <label>:10696                                   ; preds = %10422
  br label %10697

; <label>:10697                                   ; preds = %10696, %10673, %10672, %10650, %10627, %10604, %10580, %10557, %10534, %10511, %10486, %10459, %10422
  %10698 = phi float [ %10432, %10422 ], [ 5.000000e-01, %10696 ], [ %10690, %10673 ], [ 1.000000e+00, %10672 ], [ %10668, %10650 ], [ %10644, %10627 ], [ %10621, %10604 ], [ %10598, %10580 ], [ %10574, %10557 ], [ %10551, %10534 ], [ %10528, %10511 ], [ %10505, %10486 ], [ %10480, %10459 ]
  %10699 = phi float [ %10433, %10422 ], [ 5.000000e-01, %10696 ], [ %10692, %10673 ], [ 0.000000e+00, %10672 ], [ %10669, %10650 ], [ %10646, %10627 ], [ %10623, %10604 ], [ %10600, %10580 ], [ %10576, %10557 ], [ %10553, %10534 ], [ %10530, %10511 ], [ %10507, %10486 ], [ %10482, %10459 ]
  %10700 = phi float [ %10434, %10422 ], [ 5.000000e-01, %10696 ], [ %10695, %10673 ], [ 0.000000e+00, %10672 ], [ %10671, %10650 ], [ %10649, %10627 ], [ %10626, %10604 ], [ %10603, %10580 ], [ %10579, %10557 ], [ %10556, %10534 ], [ %10533, %10511 ], [ %10510, %10486 ], [ %10485, %10459 ]
  %10701 = fsub fast float %10698, %10432
  %10702 = fsub fast float %10699, %10433
  %10703 = fsub fast float %10700, %10434
  %10704 = fmul fast float %10701, %10362
  %10705 = fmul fast float %10702, %10362
  %10706 = fmul fast float %10703, %10362
  %10707 = fadd fast float %10704, %10432
  %10708 = fadd fast float %10705, %10433
  %10709 = fadd fast float %10706, %10434
  %10710 = and i32 %10117, 255
  %10711 = uitofp i32 %10710 to float
  %10712 = fptoui float %10711 to i32
  %10713 = icmp ult i32 %10712, 25
  br i1 %10713, label %10714, label %10719

; <label>:10714                                   ; preds = %10697
  %10715 = trunc i32 %10712 to i25
  %10716 = lshr i25 1048574, %10715
  %10717 = and i25 %10716, 1
  %10718 = icmp ne i25 %10717, 0
  br label %10719

; <label>:10719                                   ; preds = %10714, %10697
  %10720 = phi i1 [ %10718, %10714 ], [ true, %10697 ]
  %10721 = or i32 %10375, %10121
  %10722 = or i32 %10721, %10458
  %10723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10724 = extractvalue %dx.types.CBufRet.f32 %10723, 3
  %10725 = bitcast float %10724 to i32
  %10726 = and i32 %10725, 255
  %10727 = uitofp i32 %10726 to float
  %10728 = fptoui float %10727 to i32
  %10729 = or i32 %10722, %10728
  %10730 = icmp ne i32 %10729, 0
  %10731 = or i1 %10720, %10730
  %10732 = extractvalue %dx.types.CBufRet.f32 %10723, 0
  %10733 = bitcast float %10732 to i32
  %10734 = icmp slt i32 %10733, 0
  %10735 = or i1 %10734, %10731
  br i1 %10735, label %10736, label %10744

; <label>:10736                                   ; preds = %10719
  %10737 = icmp eq i32 %10458, 14
  %10738 = select i1 %10737, float 0.000000e+00, float 1.000000e+00
  %10739 = icmp eq i32 %10712, 0
  br i1 %10739, label %10744, label %10740

; <label>:10740                                   ; preds = %10736
  %10741 = fmul fast float %10738, %10707
  %10742 = fmul fast float %10738, %10708
  %10743 = fmul fast float %10738, %10709
  br label %10744

; <label>:10744                                   ; preds = %10740, %10736, %10719
  %10745 = phi float [ %10741, %10740 ], [ %10707, %10736 ], [ %10707, %10719 ]
  %10746 = phi float [ %10742, %10740 ], [ %10708, %10736 ], [ %10708, %10719 ]
  %10747 = phi float [ %10743, %10740 ], [ %10709, %10736 ], [ %10709, %10719 ]
  %10748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10749 = extractvalue %dx.types.CBufRet.f32 %10748, 2
  %10750 = extractvalue %dx.types.CBufRet.f32 %10748, 3
  %10751 = fmul fast float %10749, %100
  %10752 = fmul fast float %10750, %101
  %10753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10754 = extractvalue %dx.types.CBufRet.f32 %10753, 0
  %10755 = fcmp fast oge float %10751, %10754
  %10756 = extractvalue %dx.types.CBufRet.f32 %10753, 2
  %10757 = fcmp fast ole float %10751, %10756
  %10758 = and i1 %10755, %10757
  %10759 = extractvalue %dx.types.CBufRet.f32 %10753, 1
  %10760 = fcmp fast oge float %10752, %10759
  %10761 = and i1 %10758, %10760
  %10762 = extractvalue %dx.types.CBufRet.f32 %10753, 3
  %10763 = fcmp fast ole float %10752, %10762
  %10764 = and i1 %10761, %10763
  %10765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %10766 = extractvalue %dx.types.CBufRet.i32 %10765, 0
  %10767 = icmp ne i32 %10766, 0
  %10768 = and i1 %10767, %10764
  br i1 %10768, label %10769, label %11742

; <label>:10769                                   ; preds = %10744
  %10770 = icmp eq i32 %10766, 1
  br i1 %10770, label %10771, label %10810

; <label>:10771                                   ; preds = %10769
  %10772 = uitofp i32 %199 to float
  %10773 = fmul fast float %10772, 0x3FE3C6EF40000000
  %10774 = call float @dx.op.unary.f32(i32 22, float %10773)  ; Frc(value)
  %10775 = fadd fast float %10774, 0x3FE5555560000000
  %10776 = fadd fast float %10774, 0x3FD5555560000000
  %10777 = fsub fast float -0.000000e+00, %10774
  %10778 = fsub fast float -0.000000e+00, %10775
  %10779 = fsub fast float -0.000000e+00, %10776
  %10780 = fcmp fast oge float %10774, %10777
  %10781 = fcmp fast oge float %10775, %10778
  %10782 = fcmp fast oge float %10776, %10779
  %10783 = call float @dx.op.unary.f32(i32 6, float %10774)  ; FAbs(value)
  %10784 = call float @dx.op.unary.f32(i32 6, float %10775)  ; FAbs(value)
  %10785 = call float @dx.op.unary.f32(i32 6, float %10776)  ; FAbs(value)
  %10786 = call float @dx.op.unary.f32(i32 22, float %10783)  ; Frc(value)
  %10787 = call float @dx.op.unary.f32(i32 22, float %10784)  ; Frc(value)
  %10788 = call float @dx.op.unary.f32(i32 22, float %10785)  ; Frc(value)
  %10789 = fsub fast float -0.000000e+00, %10786
  %10790 = fsub fast float -0.000000e+00, %10787
  %10791 = fsub fast float -0.000000e+00, %10788
  %10792 = select i1 %10780, float %10786, float %10789
  %10793 = select i1 %10781, float %10787, float %10790
  %10794 = select i1 %10782, float %10788, float %10791
  %10795 = fmul fast float %10792, 6.000000e+00
  %10796 = fmul fast float %10793, 6.000000e+00
  %10797 = fmul fast float %10794, 6.000000e+00
  %10798 = fadd fast float %10795, -3.000000e+00
  %10799 = fadd fast float %10796, -3.000000e+00
  %10800 = fadd fast float %10797, -3.000000e+00
  %10801 = call float @dx.op.unary.f32(i32 6, float %10798)  ; FAbs(value)
  %10802 = call float @dx.op.unary.f32(i32 6, float %10799)  ; FAbs(value)
  %10803 = call float @dx.op.unary.f32(i32 6, float %10800)  ; FAbs(value)
  %10804 = fadd fast float %10801, -1.000000e+00
  %10805 = fadd fast float %10802, -1.000000e+00
  %10806 = fadd fast float %10803, -1.000000e+00
  %10807 = call float @dx.op.unary.f32(i32 7, float %10804)  ; Saturate(value)
  %10808 = call float @dx.op.unary.f32(i32 7, float %10805)  ; Saturate(value)
  %10809 = call float @dx.op.unary.f32(i32 7, float %10806)  ; Saturate(value)
  br label %11742

; <label>:10810                                   ; preds = %10769
  %10811 = icmp eq i32 %10766, 2
  br i1 %10811, label %10812, label %10816

; <label>:10812                                   ; preds = %10810
  %10813 = fmul fast float %10745, %74
  %10814 = fmul fast float %10746, %75
  %10815 = fmul fast float %10747, %76
  br label %11742

; <label>:10816                                   ; preds = %10810
  %10817 = icmp eq i32 %10766, 3
  %10818 = icmp eq i32 %10766, 26
  %10819 = or i1 %10817, %10818
  br i1 %10819, label %10820, label %10920

; <label>:10820                                   ; preds = %10816
  br i1 %10817, label %10821, label %10832

; <label>:10821                                   ; preds = %10820
  %10822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %10823 = extractvalue %dx.types.CBufRet.f32 %10822, 3
  %10824 = fsub fast float %179, %10823
  %10825 = fmul fast float %10824, 0x3FD5555560000000
  %10826 = call float @dx.op.unary.f32(i32 7, float %10825)  ; Saturate(value)
  %10827 = fmul fast float %10826, 6.300000e+01
  %10828 = fptoui float %10827 to i32
  %10829 = uitofp i32 %10828 to float
  %10830 = fmul fast float %10829, 0x3FA8618620000000
  %10831 = fadd fast float %10830, %10823
  br label %10832

; <label>:10832                                   ; preds = %10821, %10820
  %10833 = phi float [ %10831, %10821 ], [ %74, %10820 ]
  %10834 = call float @dx.op.unary.f32(i32 27, float %10833)  ; Round_ni(value)
  %10835 = fadd fast float %10834, 1.000000e+00
  %10836 = call float @dx.op.unary.f32(i32 22, float %10833)  ; Frc(value)
  %10837 = fmul fast float %10834, 0x3FE3C6EF40000000
  %10838 = call float @dx.op.unary.f32(i32 22, float %10837)  ; Frc(value)
  %10839 = fadd fast float %10838, 0x3FE5555560000000
  %10840 = fadd fast float %10838, 0x3FD5555560000000
  %10841 = fsub fast float -0.000000e+00, %10838
  %10842 = fsub fast float -0.000000e+00, %10839
  %10843 = fsub fast float -0.000000e+00, %10840
  %10844 = fcmp fast oge float %10838, %10841
  %10845 = fcmp fast oge float %10839, %10842
  %10846 = fcmp fast oge float %10840, %10843
  %10847 = call float @dx.op.unary.f32(i32 6, float %10838)  ; FAbs(value)
  %10848 = call float @dx.op.unary.f32(i32 6, float %10839)  ; FAbs(value)
  %10849 = call float @dx.op.unary.f32(i32 6, float %10840)  ; FAbs(value)
  %10850 = call float @dx.op.unary.f32(i32 22, float %10847)  ; Frc(value)
  %10851 = call float @dx.op.unary.f32(i32 22, float %10848)  ; Frc(value)
  %10852 = call float @dx.op.unary.f32(i32 22, float %10849)  ; Frc(value)
  %10853 = fsub fast float -0.000000e+00, %10850
  %10854 = fsub fast float -0.000000e+00, %10851
  %10855 = fsub fast float -0.000000e+00, %10852
  %10856 = select i1 %10844, float %10850, float %10853
  %10857 = select i1 %10845, float %10851, float %10854
  %10858 = select i1 %10846, float %10852, float %10855
  %10859 = fmul fast float %10856, 6.000000e+00
  %10860 = fmul fast float %10857, 6.000000e+00
  %10861 = fmul fast float %10858, 6.000000e+00
  %10862 = fadd fast float %10859, -3.000000e+00
  %10863 = fadd fast float %10860, -3.000000e+00
  %10864 = fadd fast float %10861, -3.000000e+00
  %10865 = call float @dx.op.unary.f32(i32 6, float %10862)  ; FAbs(value)
  %10866 = call float @dx.op.unary.f32(i32 6, float %10863)  ; FAbs(value)
  %10867 = call float @dx.op.unary.f32(i32 6, float %10864)  ; FAbs(value)
  %10868 = fadd fast float %10865, -1.000000e+00
  %10869 = fadd fast float %10866, -1.000000e+00
  %10870 = fadd fast float %10867, -1.000000e+00
  %10871 = call float @dx.op.unary.f32(i32 7, float %10868)  ; Saturate(value)
  %10872 = call float @dx.op.unary.f32(i32 7, float %10869)  ; Saturate(value)
  %10873 = call float @dx.op.unary.f32(i32 7, float %10870)  ; Saturate(value)
  %10874 = fmul fast float %10835, 0x3FE3C6EF40000000
  %10875 = call float @dx.op.unary.f32(i32 22, float %10874)  ; Frc(value)
  %10876 = fadd fast float %10875, 0x3FE5555560000000
  %10877 = fadd fast float %10875, 0x3FD5555560000000
  %10878 = fsub fast float -0.000000e+00, %10875
  %10879 = fsub fast float -0.000000e+00, %10876
  %10880 = fsub fast float -0.000000e+00, %10877
  %10881 = fcmp fast oge float %10875, %10878
  %10882 = fcmp fast oge float %10876, %10879
  %10883 = fcmp fast oge float %10877, %10880
  %10884 = call float @dx.op.unary.f32(i32 6, float %10875)  ; FAbs(value)
  %10885 = call float @dx.op.unary.f32(i32 6, float %10876)  ; FAbs(value)
  %10886 = call float @dx.op.unary.f32(i32 6, float %10877)  ; FAbs(value)
  %10887 = call float @dx.op.unary.f32(i32 22, float %10884)  ; Frc(value)
  %10888 = call float @dx.op.unary.f32(i32 22, float %10885)  ; Frc(value)
  %10889 = call float @dx.op.unary.f32(i32 22, float %10886)  ; Frc(value)
  %10890 = fsub fast float -0.000000e+00, %10887
  %10891 = fsub fast float -0.000000e+00, %10888
  %10892 = fsub fast float -0.000000e+00, %10889
  %10893 = select i1 %10881, float %10887, float %10890
  %10894 = select i1 %10882, float %10888, float %10891
  %10895 = select i1 %10883, float %10889, float %10892
  %10896 = fmul fast float %10893, 6.000000e+00
  %10897 = fmul fast float %10894, 6.000000e+00
  %10898 = fmul fast float %10895, 6.000000e+00
  %10899 = fadd fast float %10896, -3.000000e+00
  %10900 = fadd fast float %10897, -3.000000e+00
  %10901 = fadd fast float %10898, -3.000000e+00
  %10902 = call float @dx.op.unary.f32(i32 6, float %10899)  ; FAbs(value)
  %10903 = call float @dx.op.unary.f32(i32 6, float %10900)  ; FAbs(value)
  %10904 = call float @dx.op.unary.f32(i32 6, float %10901)  ; FAbs(value)
  %10905 = fadd fast float %10902, -1.000000e+00
  %10906 = fadd fast float %10903, -1.000000e+00
  %10907 = fadd fast float %10904, -1.000000e+00
  %10908 = call float @dx.op.unary.f32(i32 7, float %10905)  ; Saturate(value)
  %10909 = call float @dx.op.unary.f32(i32 7, float %10906)  ; Saturate(value)
  %10910 = call float @dx.op.unary.f32(i32 7, float %10907)  ; Saturate(value)
  %10911 = fsub fast float %10908, %10871
  %10912 = fsub fast float %10909, %10872
  %10913 = fsub fast float %10910, %10873
  %10914 = fmul fast float %10911, %10836
  %10915 = fmul fast float %10912, %10836
  %10916 = fmul fast float %10913, %10836
  %10917 = fadd fast float %10914, %10871
  %10918 = fadd fast float %10915, %10872
  %10919 = fadd fast float %10916, %10873
  br label %11742

; <label>:10920                                   ; preds = %10816
  %10921 = and i32 %10766, -2
  %10922 = icmp eq i32 %10921, 4
  br i1 %10922, label %10923, label %10932

; <label>:10923                                   ; preds = %10920
  %10924 = uitofp i32 %199 to float
  %10925 = fmul fast float %10924, 0x3FE3C6EF40000000
  %10926 = call float @dx.op.unary.f32(i32 22, float %10925)  ; Frc(value)
  %10927 = fmul fast float %10926, 5.000000e-01
  %10928 = fadd fast float %10927, 5.000000e-01
  %10929 = fmul fast float %10928, %74
  %10930 = fmul fast float %10928, %75
  %10931 = fmul fast float %10928, %76
  br label %11742

; <label>:10932                                   ; preds = %10920
  %10933 = icmp eq i32 %10766, 6
  br i1 %10933, label %11742, label %10934

; <label>:10934                                   ; preds = %10932
  %10935 = icmp eq i32 %10766, 7
  br i1 %10935, label %11742, label %10936

; <label>:10936                                   ; preds = %10934
  %10937 = icmp eq i32 %10766, 8
  br i1 %10937, label %11742, label %10938

; <label>:10938                                   ; preds = %10936
  %10939 = icmp eq i32 %10766, 9
  br i1 %10939, label %10940, label %10952

; <label>:10940                                   ; preds = %10938
  %10941 = fcmp fast ogt float %352, 0.000000e+00
  %10942 = call float @dx.op.dot2.f32(i32 54, float %347, float %348, float %347, float %348)  ; Dot2(ax,ay,bx,by)
  %10943 = call float @dx.op.unary.f32(i32 25, float %10942)  ; Rsqrt(value)
  %10944 = fmul fast float %347, 5.000000e-01
  %10945 = fmul fast float %10944, %10943
  %10946 = fmul fast float %348, 5.000000e-01
  %10947 = fmul fast float %10946, %10943
  %10948 = fadd fast float %10945, 5.000000e-01
  %10949 = select i1 %10941, float %10948, float 5.000000e-01
  %10950 = fadd fast float %10947, 5.000000e-01
  %10951 = select i1 %10941, float %10950, float 5.000000e-01
  br label %11742

; <label>:10952                                   ; preds = %10938
  %10953 = icmp eq i32 %10766, 10
  br i1 %10953, label %10954, label %10956

; <label>:10954                                   ; preds = %10952
  %10955 = fmul fast float %352, 0x3F747AE140000000
  br label %11742

; <label>:10956                                   ; preds = %10952
  %10957 = icmp eq i32 %10766, 11
  br i1 %10957, label %11742, label %10958

; <label>:10958                                   ; preds = %10956
  %10959 = icmp eq i32 %10766, 12
  br i1 %10959, label %11742, label %10960

; <label>:10960                                   ; preds = %10958
  %10961 = icmp eq i32 %10766, 13
  br i1 %10961, label %11742, label %10962

; <label>:10962                                   ; preds = %10960
  %10963 = icmp eq i32 %10766, 14
  br i1 %10963, label %11742, label %10964

; <label>:10964                                   ; preds = %10962
  %10965 = icmp eq i32 %10766, 15
  br i1 %10965, label %11742, label %10966

; <label>:10966                                   ; preds = %10964
  %10967 = icmp eq i32 %10766, 16
  br i1 %10967, label %11742, label %10968

; <label>:10968                                   ; preds = %10966
  %10969 = icmp eq i32 %10766, 17
  br i1 %10969, label %11742, label %10970

; <label>:10970                                   ; preds = %10968
  %10971 = icmp eq i32 %10766, 18
  br i1 %10971, label %11742, label %10972

; <label>:10972                                   ; preds = %10970
  %10973 = icmp eq i32 %10766, 19
  br i1 %10973, label %11742, label %10974

; <label>:10974                                   ; preds = %10972
  %10975 = icmp eq i32 %10766, 20
  br i1 %10975, label %10976, label %10983

; <label>:10976                                   ; preds = %10974
  %10977 = fmul fast float %1329, 5.000000e-01
  %10978 = fmul fast float %1330, 5.000000e-01
  %10979 = fmul fast float %1331, 5.000000e-01
  %10980 = fadd fast float %10977, 5.000000e-01
  %10981 = fadd fast float %10978, 5.000000e-01
  %10982 = fadd fast float %10979, 5.000000e-01
  br label %11742

; <label>:10983                                   ; preds = %10974
  %10984 = and i32 %10766, -9
  %10985 = icmp eq i32 %10984, 21
  br i1 %10985, label %11742, label %10986

; <label>:10986                                   ; preds = %10983
  %10987 = icmp eq i32 %10766, 22
  %10988 = icmp eq i32 %10766, 38
  %10989 = or i1 %10987, %10988
  br i1 %10989, label %10990, label %11104

; <label>:10990                                   ; preds = %10986
  %10991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %10992 = extractvalue %dx.types.CBufRet.f32 %10991, 0
  %10993 = extractvalue %dx.types.CBufRet.f32 %10991, 1
  %10994 = extractvalue %dx.types.CBufRet.f32 %10991, 2
  %10995 = fadd fast float %10992, %155
  %10996 = fadd fast float %10993, %156
  %10997 = fadd fast float %10994, %157
  %10998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %10999 = extractvalue %dx.types.CBufRet.f32 %10998, 0
  %11000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %11001 = extractvalue %dx.types.CBufRet.f32 %11000, 0
  %11002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %11003 = extractvalue %dx.types.CBufRet.f32 %11002, 0
  %11004 = extractvalue %dx.types.CBufRet.f32 %10998, 1
  %11005 = extractvalue %dx.types.CBufRet.f32 %11000, 1
  %11006 = extractvalue %dx.types.CBufRet.f32 %11002, 1
  %11007 = extractvalue %dx.types.CBufRet.f32 %10998, 3
  %11008 = extractvalue %dx.types.CBufRet.f32 %11000, 3
  %11009 = extractvalue %dx.types.CBufRet.f32 %11002, 3
  %11010 = fadd fast float %10995, %11007
  %11011 = fadd fast float %10996, %11008
  %11012 = fadd fast float %10997, %11009
  %11013 = fmul fast float %11010, %10999
  %11014 = call float @dx.op.tertiary.f32(i32 46, float %11011, float %11001, float %11013)  ; FMad(a,b,c)
  %11015 = call float @dx.op.tertiary.f32(i32 46, float %11012, float %11003, float %11014)  ; FMad(a,b,c)
  %11016 = fmul fast float %11010, %11004
  %11017 = call float @dx.op.tertiary.f32(i32 46, float %11011, float %11005, float %11016)  ; FMad(a,b,c)
  %11018 = call float @dx.op.tertiary.f32(i32 46, float %11012, float %11006, float %11017)  ; FMad(a,b,c)
  %11019 = fsub fast float %11015, %11007
  %11020 = fsub fast float %11018, %11008
  %11021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %11022 = extractvalue %dx.types.CBufRet.f32 %11021, 0
  %11023 = extractvalue %dx.types.CBufRet.f32 %11021, 1
  %11024 = fsub fast float %11019, %11022
  %11025 = fsub fast float %11020, %11023
  %11026 = fmul fast float %11024, %11024
  %11027 = fmul fast float %11025, %11025
  %11028 = fadd fast float %11026, %11027
  %11029 = call float @dx.op.unary.f32(i32 24, float %11028)  ; Sqrt(value)
  %11030 = extractvalue %dx.types.CBufRet.f32 %11021, 2
  %11031 = fcmp fast olt float %11029, %11030
  br i1 %11031, label %11032, label %11742

; <label>:11032                                   ; preds = %10990
  %11033 = fadd fast float %11024, %11030
  %11034 = fadd fast float %11025, %11030
  %11035 = extractvalue %dx.types.CBufRet.f32 %11021, 3
  %11036 = fmul fast float %11033, %11035
  %11037 = fmul fast float %11034, %11035
  %11038 = call float @dx.op.unary.f32(i32 7, float %11036)  ; Saturate(value)
  %11039 = call float @dx.op.unary.f32(i32 7, float %11037)  ; Saturate(value)
  %11040 = fsub fast float 1.000000e+00, %11038
  %11041 = fsub fast float 1.000000e+00, %11039
  %11042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %63, float %11040, float %11041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11043 = extractvalue %dx.types.ResRet.f32 %11042, 0
  %11044 = fcmp fast ugt float %11043, 0.000000e+00
  br i1 %11044, label %11045, label %11742

; <label>:11045                                   ; preds = %11032
  br i1 %10987, label %11046, label %11051

; <label>:11046                                   ; preds = %11045
  %11047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %63, float %11040, float %11041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11048 = extractvalue %dx.types.ResRet.f32 %11047, 0
  %11049 = extractvalue %dx.types.ResRet.f32 %11047, 1
  %11050 = extractvalue %dx.types.ResRet.f32 %11047, 2
  br label %11742

; <label>:11051                                   ; preds = %11045
  %11052 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %54, i32 0)  ; GetDimensions(handle,mipLevel)
  %11053 = extractvalue %dx.types.Dimensions %11052, 0
  %11054 = sitofp i32 %11053 to float
  %11055 = extractvalue %dx.types.Dimensions %11052, 1
  %11056 = sitofp i32 %11055 to float
  %11057 = fmul fast float %11054, %11040
  %11058 = fmul fast float %11056, %11041
  %11059 = call float @dx.op.unary.f32(i32 27, float %11057)  ; Round_ni(value)
  %11060 = call float @dx.op.unary.f32(i32 27, float %11058)  ; Round_ni(value)
  %11061 = fptoui float %11054 to i32
  %11062 = uitofp i32 %11061 to float
  %11063 = fmul fast float %11062, %11060
  %11064 = fadd fast float %11063, %11059
  %11065 = fptoui float %11064 to i32
  %11066 = uitofp i32 %11065 to float
  %11067 = fmul fast float %11066, 0x3FE3C6EF40000000
  %11068 = call float @dx.op.unary.f32(i32 22, float %11067)  ; Frc(value)
  %11069 = fadd fast float %11068, 0x3FE5555560000000
  %11070 = fadd fast float %11068, 0x3FD5555560000000
  %11071 = fsub fast float -0.000000e+00, %11068
  %11072 = fsub fast float -0.000000e+00, %11069
  %11073 = fsub fast float -0.000000e+00, %11070
  %11074 = fcmp fast oge float %11068, %11071
  %11075 = fcmp fast oge float %11069, %11072
  %11076 = fcmp fast oge float %11070, %11073
  %11077 = call float @dx.op.unary.f32(i32 6, float %11068)  ; FAbs(value)
  %11078 = call float @dx.op.unary.f32(i32 6, float %11069)  ; FAbs(value)
  %11079 = call float @dx.op.unary.f32(i32 6, float %11070)  ; FAbs(value)
  %11080 = call float @dx.op.unary.f32(i32 22, float %11077)  ; Frc(value)
  %11081 = call float @dx.op.unary.f32(i32 22, float %11078)  ; Frc(value)
  %11082 = call float @dx.op.unary.f32(i32 22, float %11079)  ; Frc(value)
  %11083 = fsub fast float -0.000000e+00, %11080
  %11084 = fsub fast float -0.000000e+00, %11081
  %11085 = fsub fast float -0.000000e+00, %11082
  %11086 = select i1 %11074, float %11080, float %11083
  %11087 = select i1 %11075, float %11081, float %11084
  %11088 = select i1 %11076, float %11082, float %11085
  %11089 = fmul fast float %11086, 6.000000e+00
  %11090 = fmul fast float %11087, 6.000000e+00
  %11091 = fmul fast float %11088, 6.000000e+00
  %11092 = fadd fast float %11089, -3.000000e+00
  %11093 = fadd fast float %11090, -3.000000e+00
  %11094 = fadd fast float %11091, -3.000000e+00
  %11095 = call float @dx.op.unary.f32(i32 6, float %11092)  ; FAbs(value)
  %11096 = call float @dx.op.unary.f32(i32 6, float %11093)  ; FAbs(value)
  %11097 = call float @dx.op.unary.f32(i32 6, float %11094)  ; FAbs(value)
  %11098 = fadd fast float %11095, -1.000000e+00
  %11099 = fadd fast float %11096, -1.000000e+00
  %11100 = fadd fast float %11097, -1.000000e+00
  %11101 = call float @dx.op.unary.f32(i32 7, float %11098)  ; Saturate(value)
  %11102 = call float @dx.op.unary.f32(i32 7, float %11099)  ; Saturate(value)
  %11103 = call float @dx.op.unary.f32(i32 7, float %11100)  ; Saturate(value)
  br label %11742

; <label>:11104                                   ; preds = %10986
  %11105 = icmp eq i32 %10766, 39
  br i1 %11105, label %11106, label %11210

; <label>:11106                                   ; preds = %11104
  %11107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11108 = extractvalue %dx.types.CBufRet.f32 %11107, 0
  %11109 = extractvalue %dx.types.CBufRet.f32 %11107, 1
  %11110 = extractvalue %dx.types.CBufRet.f32 %11107, 2
  %11111 = fadd fast float %11108, %155
  %11112 = fadd fast float %11109, %156
  %11113 = fadd fast float %11110, %157
  %11114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %11115 = extractvalue %dx.types.CBufRet.f32 %11114, 0
  %11116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %11117 = extractvalue %dx.types.CBufRet.f32 %11116, 0
  %11118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %11119 = extractvalue %dx.types.CBufRet.f32 %11118, 0
  %11120 = extractvalue %dx.types.CBufRet.f32 %11114, 1
  %11121 = extractvalue %dx.types.CBufRet.f32 %11116, 1
  %11122 = extractvalue %dx.types.CBufRet.f32 %11118, 1
  %11123 = extractvalue %dx.types.CBufRet.f32 %11114, 3
  %11124 = extractvalue %dx.types.CBufRet.f32 %11116, 3
  %11125 = extractvalue %dx.types.CBufRet.f32 %11118, 3
  %11126 = fadd fast float %11111, %11123
  %11127 = fadd fast float %11112, %11124
  %11128 = fadd fast float %11113, %11125
  %11129 = fmul fast float %11126, %11115
  %11130 = call float @dx.op.tertiary.f32(i32 46, float %11127, float %11117, float %11129)  ; FMad(a,b,c)
  %11131 = call float @dx.op.tertiary.f32(i32 46, float %11128, float %11119, float %11130)  ; FMad(a,b,c)
  %11132 = fmul fast float %11126, %11120
  %11133 = call float @dx.op.tertiary.f32(i32 46, float %11127, float %11121, float %11132)  ; FMad(a,b,c)
  %11134 = call float @dx.op.tertiary.f32(i32 46, float %11128, float %11122, float %11133)  ; FMad(a,b,c)
  %11135 = fsub fast float %11131, %11123
  %11136 = fsub fast float %11134, %11124
  %11137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %11138 = extractvalue %dx.types.CBufRet.f32 %11137, 0
  %11139 = extractvalue %dx.types.CBufRet.f32 %11137, 1
  %11140 = fsub fast float %11135, %11138
  %11141 = fsub fast float %11136, %11139
  %11142 = fmul fast float %11140, %11140
  %11143 = fmul fast float %11141, %11141
  %11144 = fadd fast float %11142, %11143
  %11145 = call float @dx.op.unary.f32(i32 24, float %11144)  ; Sqrt(value)
  %11146 = extractvalue %dx.types.CBufRet.f32 %11137, 2
  %11147 = fcmp fast olt float %11145, %11146
  br i1 %11147, label %11148, label %11742

; <label>:11148                                   ; preds = %11106
  %11149 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %52, i32 0)  ; GetDimensions(handle,mipLevel)
  %11150 = extractvalue %dx.types.Dimensions %11149, 0
  %11151 = sitofp i32 %11150 to float
  %11152 = extractvalue %dx.types.Dimensions %11149, 1
  %11153 = sitofp i32 %11152 to float
  %11154 = fadd fast float %11140, %11146
  %11155 = fadd fast float %11141, %11146
  %11156 = extractvalue %dx.types.CBufRet.f32 %11137, 3
  %11157 = fmul fast float %11154, %11156
  %11158 = fmul fast float %11155, %11156
  %11159 = call float @dx.op.unary.f32(i32 7, float %11157)  ; Saturate(value)
  %11160 = call float @dx.op.unary.f32(i32 7, float %11158)  ; Saturate(value)
  %11161 = fsub fast float 1.000000e+00, %11159
  %11162 = fsub fast float 1.000000e+00, %11160
  %11163 = fmul fast float %11161, %11151
  %11164 = fmul fast float %11162, %11153
  %11165 = call float @dx.op.unary.f32(i32 27, float %11163)  ; Round_ni(value)
  %11166 = call float @dx.op.unary.f32(i32 27, float %11164)  ; Round_ni(value)
  %11167 = fptoui float %11151 to i32
  %11168 = uitofp i32 %11167 to float
  %11169 = fmul fast float %11166, %11168
  %11170 = fadd fast float %11169, %11165
  %11171 = fptoui float %11170 to i32
  %11172 = uitofp i32 %11171 to float
  %11173 = fmul fast float %11172, 0x3FE3C6EF40000000
  %11174 = call float @dx.op.unary.f32(i32 22, float %11173)  ; Frc(value)
  %11175 = fadd fast float %11174, 0x3FE5555560000000
  %11176 = fadd fast float %11174, 0x3FD5555560000000
  %11177 = fsub fast float -0.000000e+00, %11174
  %11178 = fsub fast float -0.000000e+00, %11175
  %11179 = fsub fast float -0.000000e+00, %11176
  %11180 = fcmp fast oge float %11174, %11177
  %11181 = fcmp fast oge float %11175, %11178
  %11182 = fcmp fast oge float %11176, %11179
  %11183 = call float @dx.op.unary.f32(i32 6, float %11174)  ; FAbs(value)
  %11184 = call float @dx.op.unary.f32(i32 6, float %11175)  ; FAbs(value)
  %11185 = call float @dx.op.unary.f32(i32 6, float %11176)  ; FAbs(value)
  %11186 = call float @dx.op.unary.f32(i32 22, float %11183)  ; Frc(value)
  %11187 = call float @dx.op.unary.f32(i32 22, float %11184)  ; Frc(value)
  %11188 = call float @dx.op.unary.f32(i32 22, float %11185)  ; Frc(value)
  %11189 = fsub fast float -0.000000e+00, %11186
  %11190 = fsub fast float -0.000000e+00, %11187
  %11191 = fsub fast float -0.000000e+00, %11188
  %11192 = select i1 %11180, float %11186, float %11189
  %11193 = select i1 %11181, float %11187, float %11190
  %11194 = select i1 %11182, float %11188, float %11191
  %11195 = fmul fast float %11192, 6.000000e+00
  %11196 = fmul fast float %11193, 6.000000e+00
  %11197 = fmul fast float %11194, 6.000000e+00
  %11198 = fadd fast float %11195, -3.000000e+00
  %11199 = fadd fast float %11196, -3.000000e+00
  %11200 = fadd fast float %11197, -3.000000e+00
  %11201 = call float @dx.op.unary.f32(i32 6, float %11198)  ; FAbs(value)
  %11202 = call float @dx.op.unary.f32(i32 6, float %11199)  ; FAbs(value)
  %11203 = call float @dx.op.unary.f32(i32 6, float %11200)  ; FAbs(value)
  %11204 = fadd fast float %11201, -1.000000e+00
  %11205 = fadd fast float %11202, -1.000000e+00
  %11206 = fadd fast float %11203, -1.000000e+00
  %11207 = call float @dx.op.unary.f32(i32 7, float %11204)  ; Saturate(value)
  %11208 = call float @dx.op.unary.f32(i32 7, float %11205)  ; Saturate(value)
  %11209 = call float @dx.op.unary.f32(i32 7, float %11206)  ; Saturate(value)
  br label %11742

; <label>:11210                                   ; preds = %11104
  %11211 = icmp eq i32 %10766, 23
  br i1 %11211, label %11742, label %11212

; <label>:11212                                   ; preds = %11210
  %11213 = icmp eq i32 %10766, 24
  br i1 %11213, label %11214, label %11240

; <label>:11214                                   ; preds = %11212
  %11215 = and i32 %384, 255
  %11216 = uitofp i32 %11215 to float
  %11217 = fptoui float %11216 to i32
  %11218 = uitofp i32 %11217 to float
  %11219 = fadd fast float %11218, -4.000000e+00
  %11220 = fmul fast float %11219, 0x3FB5555560000000
  %11221 = call float @dx.op.unary.f32(i32 7, float %11220)  ; Saturate(value)
  %11222 = icmp eq i32 %11217, 0
  %11223 = select i1 %11222, float 0.000000e+00, float %11221
  %11224 = icmp ult i32 %11217, 2
  %11225 = select i1 %11224, float 0.000000e+00, float %11221
  %11226 = add i32 %11217, -1
  %11227 = icmp ult i32 %11226, 2
  %11228 = select i1 %11227, float 1.000000e+00, float %11223
  %11229 = icmp ult i32 %11217, 4
  %11230 = select i1 %11229, float 0.000000e+00, float 1.000000e+00
  %11231 = and i32 %11217, -2
  %11232 = icmp eq i32 %11231, 2
  %11233 = icmp eq i32 %11217, 4
  %11234 = select i1 %11233, float 1.000000e+00, float %11230
  %11235 = or i1 %11233, %11232
  %11236 = select i1 %11235, float 1.000000e+00, float %11225
  %11237 = add i32 %11217, -3
  %11238 = icmp ult i32 %11237, 2
  %11239 = select i1 %11238, float 0.000000e+00, float %11228
  br label %11742

; <label>:11240                                   ; preds = %11212
  %11241 = icmp eq i32 %10766, 25
  br i1 %11241, label %11242, label %11268

; <label>:11242                                   ; preds = %11240
  %11243 = and i32 %1335, 255
  %11244 = uitofp i32 %11243 to float
  %11245 = fptoui float %11244 to i32
  %11246 = uitofp i32 %11245 to float
  %11247 = fadd fast float %11246, -4.000000e+00
  %11248 = fmul fast float %11247, 0x3FB5555560000000
  %11249 = call float @dx.op.unary.f32(i32 7, float %11248)  ; Saturate(value)
  %11250 = icmp eq i32 %11245, 0
  %11251 = select i1 %11250, float 0.000000e+00, float %11249
  %11252 = icmp ult i32 %11245, 2
  %11253 = select i1 %11252, float 0.000000e+00, float %11249
  %11254 = add i32 %11245, -1
  %11255 = icmp ult i32 %11254, 2
  %11256 = select i1 %11255, float 1.000000e+00, float %11251
  %11257 = icmp ult i32 %11245, 4
  %11258 = select i1 %11257, float 0.000000e+00, float 1.000000e+00
  %11259 = and i32 %11245, -2
  %11260 = icmp eq i32 %11259, 2
  %11261 = icmp eq i32 %11245, 4
  %11262 = select i1 %11261, float 1.000000e+00, float %11258
  %11263 = or i1 %11261, %11260
  %11264 = select i1 %11263, float 1.000000e+00, float %11253
  %11265 = add i32 %11245, -3
  %11266 = icmp ult i32 %11265, 2
  %11267 = select i1 %11266, float 0.000000e+00, float %11256
  br label %11742

; <label>:11268                                   ; preds = %11240
  %11269 = icmp eq i32 %10766, 27
  br i1 %11269, label %11270, label %11325

; <label>:11270                                   ; preds = %11268
  %11271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %11272 = extractvalue %dx.types.CBufRet.f32 %11271, 2
  %11273 = fptoui float %11272 to i32
  %11274 = fptoui float %179 to i32
  %11275 = and i32 %11274, 31
  %11276 = lshr i32 %11273, %11275
  %11277 = uitofp i32 %11276 to float
  %11278 = fmul fast float %11277, %81
  %11279 = fmul fast float %11277, %82
  %11280 = call float @dx.op.unary.f32(i32 27, float %11278)  ; Round_ni(value)
  %11281 = call float @dx.op.unary.f32(i32 27, float %11279)  ; Round_ni(value)
  %11282 = fptoui float %11280 to i32
  %11283 = fptoui float %11281 to i32
  %11284 = fptoui float %11277 to i32
  %11285 = mul i32 %11284, %11283
  %11286 = add i32 %11285, %11282
  %11287 = uitofp i32 %11286 to float
  %11288 = fmul fast float %11287, 0x3FE3C6EF40000000
  %11289 = call float @dx.op.unary.f32(i32 22, float %11288)  ; Frc(value)
  %11290 = fadd fast float %11289, 0x3FE5555560000000
  %11291 = fadd fast float %11289, 0x3FD5555560000000
  %11292 = fsub fast float -0.000000e+00, %11289
  %11293 = fsub fast float -0.000000e+00, %11290
  %11294 = fsub fast float -0.000000e+00, %11291
  %11295 = fcmp fast oge float %11289, %11292
  %11296 = fcmp fast oge float %11290, %11293
  %11297 = fcmp fast oge float %11291, %11294
  %11298 = call float @dx.op.unary.f32(i32 6, float %11289)  ; FAbs(value)
  %11299 = call float @dx.op.unary.f32(i32 6, float %11290)  ; FAbs(value)
  %11300 = call float @dx.op.unary.f32(i32 6, float %11291)  ; FAbs(value)
  %11301 = call float @dx.op.unary.f32(i32 22, float %11298)  ; Frc(value)
  %11302 = call float @dx.op.unary.f32(i32 22, float %11299)  ; Frc(value)
  %11303 = call float @dx.op.unary.f32(i32 22, float %11300)  ; Frc(value)
  %11304 = fsub fast float -0.000000e+00, %11301
  %11305 = fsub fast float -0.000000e+00, %11302
  %11306 = fsub fast float -0.000000e+00, %11303
  %11307 = select i1 %11295, float %11301, float %11304
  %11308 = select i1 %11296, float %11302, float %11305
  %11309 = select i1 %11297, float %11303, float %11306
  %11310 = fmul fast float %11307, 6.000000e+00
  %11311 = fmul fast float %11308, 6.000000e+00
  %11312 = fmul fast float %11309, 6.000000e+00
  %11313 = fadd fast float %11310, -3.000000e+00
  %11314 = fadd fast float %11311, -3.000000e+00
  %11315 = fadd fast float %11312, -3.000000e+00
  %11316 = call float @dx.op.unary.f32(i32 6, float %11313)  ; FAbs(value)
  %11317 = call float @dx.op.unary.f32(i32 6, float %11314)  ; FAbs(value)
  %11318 = call float @dx.op.unary.f32(i32 6, float %11315)  ; FAbs(value)
  %11319 = fadd fast float %11316, -1.000000e+00
  %11320 = fadd fast float %11317, -1.000000e+00
  %11321 = fadd fast float %11318, -1.000000e+00
  %11322 = call float @dx.op.unary.f32(i32 7, float %11319)  ; Saturate(value)
  %11323 = call float @dx.op.unary.f32(i32 7, float %11320)  ; Saturate(value)
  %11324 = call float @dx.op.unary.f32(i32 7, float %11321)  ; Saturate(value)
  br label %11742

; <label>:11325                                   ; preds = %11268
  %11326 = icmp eq i32 %10766, 30
  br i1 %11326, label %11327, label %11367

; <label>:11327                                   ; preds = %11325
  %11328 = fcmp fast olt float %434, 0.000000e+00
  br i1 %11328, label %11742, label %11329

; <label>:11329                                   ; preds = %11327
  %11330 = fmul fast float %434, 0x3FE3C6EF40000000
  %11331 = call float @dx.op.unary.f32(i32 22, float %11330)  ; Frc(value)
  %11332 = fadd fast float %11331, 0x3FE5555560000000
  %11333 = fadd fast float %11331, 0x3FD5555560000000
  %11334 = fsub fast float -0.000000e+00, %11331
  %11335 = fsub fast float -0.000000e+00, %11332
  %11336 = fsub fast float -0.000000e+00, %11333
  %11337 = fcmp fast oge float %11331, %11334
  %11338 = fcmp fast oge float %11332, %11335
  %11339 = fcmp fast oge float %11333, %11336
  %11340 = call float @dx.op.unary.f32(i32 6, float %11331)  ; FAbs(value)
  %11341 = call float @dx.op.unary.f32(i32 6, float %11332)  ; FAbs(value)
  %11342 = call float @dx.op.unary.f32(i32 6, float %11333)  ; FAbs(value)
  %11343 = call float @dx.op.unary.f32(i32 22, float %11340)  ; Frc(value)
  %11344 = call float @dx.op.unary.f32(i32 22, float %11341)  ; Frc(value)
  %11345 = call float @dx.op.unary.f32(i32 22, float %11342)  ; Frc(value)
  %11346 = fsub fast float -0.000000e+00, %11343
  %11347 = fsub fast float -0.000000e+00, %11344
  %11348 = fsub fast float -0.000000e+00, %11345
  %11349 = select i1 %11337, float %11343, float %11346
  %11350 = select i1 %11338, float %11344, float %11347
  %11351 = select i1 %11339, float %11345, float %11348
  %11352 = fmul fast float %11349, 6.000000e+00
  %11353 = fmul fast float %11350, 6.000000e+00
  %11354 = fmul fast float %11351, 6.000000e+00
  %11355 = fadd fast float %11352, -3.000000e+00
  %11356 = fadd fast float %11353, -3.000000e+00
  %11357 = fadd fast float %11354, -3.000000e+00
  %11358 = call float @dx.op.unary.f32(i32 6, float %11355)  ; FAbs(value)
  %11359 = call float @dx.op.unary.f32(i32 6, float %11356)  ; FAbs(value)
  %11360 = call float @dx.op.unary.f32(i32 6, float %11357)  ; FAbs(value)
  %11361 = fadd fast float %11358, -1.000000e+00
  %11362 = fadd fast float %11359, -1.000000e+00
  %11363 = fadd fast float %11360, -1.000000e+00
  %11364 = call float @dx.op.unary.f32(i32 7, float %11361)  ; Saturate(value)
  %11365 = call float @dx.op.unary.f32(i32 7, float %11362)  ; Saturate(value)
  %11366 = call float @dx.op.unary.f32(i32 7, float %11363)  ; Saturate(value)
  br label %11742

; <label>:11367                                   ; preds = %11325
  %11368 = add i32 %10766, -31
  %11369 = icmp ult i32 %11368, 2
  br i1 %11369, label %11370, label %11378

; <label>:11370                                   ; preds = %11367
  %11371 = fcmp fast olt float %435, 0.000000e+00
  %11372 = call float @dx.op.unary.f32(i32 6, float %435)  ; FAbs(value)
  %11373 = fmul fast float %11372, 5.000000e-01
  %11374 = call float @dx.op.unary.f32(i32 7, float %11373)  ; Saturate(value)
  %11375 = select i1 %11371, float 0.000000e+00, float %11374
  %11376 = select i1 %11371, float %11374, float 0.000000e+00
  %11377 = fadd fast float %11374, 5.000000e-01
  br label %11742

; <label>:11378                                   ; preds = %11367
  %11379 = icmp eq i32 %10766, 36
  br i1 %11379, label %11380, label %11412

; <label>:11380                                   ; preds = %11378
  %11381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %11382 = extractvalue %dx.types.CBufRet.i32 %11381, 0
  %11383 = and i32 %11382, 2048
  %11384 = icmp ne i32 %11383, 0
  %11385 = call float @dx.op.binary.f32(i32 35, float %2011, float %2012)  ; FMax(a,b)
  %11386 = call float @dx.op.binary.f32(i32 35, float %2010, float %11385)  ; FMax(a,b)
  %11387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %11388 = extractvalue %dx.types.CBufRet.f32 %11387, 1
  %11389 = fcmp fast oge float %11386, %11388
  %11390 = and i1 %11384, %11389
  br i1 %11390, label %11391, label %11397

; <label>:11391                                   ; preds = %11380
  %11392 = fsub fast float 1.000000e+00, %10745
  %11393 = fmul fast float %11392, 5.000000e-01
  %11394 = fadd fast float %11393, %10745
  %11395 = fmul fast float %10746, 5.000000e-01
  %11396 = fmul fast float %10747, 5.000000e-01
  br label %11742

; <label>:11397                                   ; preds = %11380
  %11398 = call float @dx.op.dot3.f32(i32 55, float %1963, float %1964, float %1965, float %1883, float %1884, float %1885)  ; Dot3(ax,ay,az,bx,by,bz)
  %11399 = and i32 %11382, 1024
  %11400 = icmp ne i32 %11399, 0
  %11401 = extractvalue %dx.types.CBufRet.f32 %11387, 2
  %11402 = fcmp fast ole float %11398, %11401
  %11403 = and i1 %11400, %11402
  br i1 %11403, label %11404, label %11742

; <label>:11404                                   ; preds = %11397
  %11405 = fsub fast float 1.000000e+00, %10745
  %11406 = fsub fast float 1.000000e+00, %10746
  %11407 = fmul fast float %11405, 5.000000e-01
  %11408 = fmul fast float %11406, 5.000000e-01
  %11409 = fadd fast float %11407, %10745
  %11410 = fadd fast float %11408, %10746
  %11411 = fmul fast float %10747, 5.000000e-01
  br label %11742

; <label>:11412                                   ; preds = %11378
  %11413 = icmp eq i32 %10766, 40
  br i1 %11413, label %11414, label %11651

; <label>:11414                                   ; preds = %11412
  %11415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %11416 = extractvalue %dx.types.CBufRet.f32 %11415, 0
  %11417 = fcmp fast ogt float %1953, %11416
  %11418 = zext i1 %11417 to i32
  %11419 = extractvalue %dx.types.CBufRet.f32 %11415, 1
  %11420 = fcmp fast ogt float %1953, %11419
  %11421 = zext i1 %11420 to i32
  %11422 = add nuw nsw i32 %11421, %11418
  %11423 = extractvalue %dx.types.CBufRet.f32 %11415, 2
  %11424 = fcmp fast ogt float %1953, %11423
  %11425 = zext i1 %11424 to i32
  %11426 = add nuw nsw i32 %11422, %11425
  %11427 = icmp ult i32 %11426, 3
  %11428 = zext i1 %11427 to i32
  %11429 = shl nuw nsw i32 %11426, 2
  %11430 = add nuw nsw i32 %11429, 48
  %11431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11430)  ; CBufferLoadLegacy(handle,regIndex)
  %11432 = extractvalue %dx.types.CBufRet.f32 %11431, 1
  %11433 = fcmp fast ogt float %1953, %11432
  %11434 = zext i1 %11433 to i32
  %11435 = or i32 %11429, 1
  %11436 = add nuw nsw i32 %11435, 48
  %11437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11436)  ; CBufferLoadLegacy(handle,regIndex)
  %11438 = extractvalue %dx.types.CBufRet.f32 %11437, 1
  %11439 = fcmp fast ogt float %1953, %11438
  %11440 = zext i1 %11439 to i32
  %11441 = add nuw nsw i32 %11440, %11434
  %11442 = or i32 %11429, 2
  %11443 = add nuw nsw i32 %11442, 48
  %11444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11443)  ; CBufferLoadLegacy(handle,regIndex)
  %11445 = extractvalue %dx.types.CBufRet.f32 %11444, 1
  %11446 = fcmp fast ogt float %1953, %11445
  %11447 = zext i1 %11446 to i32
  %11448 = add nuw nsw i32 %11441, %11447
  %11449 = call i32 @dx.op.binary.i32(i32 40, i32 %11448, i32 3)  ; UMin(a,b)
  %11450 = add i32 %11429, %11449
  %11451 = call i32 @dx.op.binary.i32(i32 40, i32 %11450, i32 12)  ; UMin(a,b)
  %11452 = add i32 %11451, 48
  %11453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11452)  ; CBufferLoadLegacy(handle,regIndex)
  %11454 = extractvalue %dx.types.CBufRet.f32 %11453, 0
  %11455 = fcmp fast oge float %1953, %11454
  %11456 = zext i1 %11455 to i32
  %11457 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %11428)  ; UMin(a,b)
  %11458 = call i32 @dx.op.binary.i32(i32 40, i32 %11456, i32 %11457)  ; UMin(a,b)
  %11459 = fmul fast float %10756, 7.500000e-01
  %11460 = fadd fast float %11459, %10754
  %11461 = fcmp fast ult float %10751, %11460
  br i1 %11461, label %11501, label %11462

; <label>:11462                                   ; preds = %11414
  %11463 = uitofp i32 %11451 to float
  %11464 = fmul fast float %11463, 0x3FE3C6EF40000000
  %11465 = call float @dx.op.unary.f32(i32 22, float %11464)  ; Frc(value)
  %11466 = fadd fast float %11465, 0x3FE5555560000000
  %11467 = fadd fast float %11465, 0x3FD5555560000000
  %11468 = fsub fast float -0.000000e+00, %11465
  %11469 = fsub fast float -0.000000e+00, %11466
  %11470 = fsub fast float -0.000000e+00, %11467
  %11471 = fcmp fast oge float %11465, %11468
  %11472 = fcmp fast oge float %11466, %11469
  %11473 = fcmp fast oge float %11467, %11470
  %11474 = call float @dx.op.unary.f32(i32 6, float %11465)  ; FAbs(value)
  %11475 = call float @dx.op.unary.f32(i32 6, float %11466)  ; FAbs(value)
  %11476 = call float @dx.op.unary.f32(i32 6, float %11467)  ; FAbs(value)
  %11477 = call float @dx.op.unary.f32(i32 22, float %11474)  ; Frc(value)
  %11478 = call float @dx.op.unary.f32(i32 22, float %11475)  ; Frc(value)
  %11479 = call float @dx.op.unary.f32(i32 22, float %11476)  ; Frc(value)
  %11480 = fsub fast float -0.000000e+00, %11477
  %11481 = fsub fast float -0.000000e+00, %11478
  %11482 = fsub fast float -0.000000e+00, %11479
  %11483 = select i1 %11471, float %11477, float %11480
  %11484 = select i1 %11472, float %11478, float %11481
  %11485 = select i1 %11473, float %11479, float %11482
  %11486 = fmul fast float %11483, 6.000000e+00
  %11487 = fmul fast float %11484, 6.000000e+00
  %11488 = fmul fast float %11485, 6.000000e+00
  %11489 = fadd fast float %11486, -3.000000e+00
  %11490 = fadd fast float %11487, -3.000000e+00
  %11491 = fadd fast float %11488, -3.000000e+00
  %11492 = call float @dx.op.unary.f32(i32 6, float %11489)  ; FAbs(value)
  %11493 = call float @dx.op.unary.f32(i32 6, float %11490)  ; FAbs(value)
  %11494 = call float @dx.op.unary.f32(i32 6, float %11491)  ; FAbs(value)
  %11495 = fadd fast float %11492, -1.000000e+00
  %11496 = fadd fast float %11493, -1.000000e+00
  %11497 = fadd fast float %11494, -1.000000e+00
  %11498 = call float @dx.op.unary.f32(i32 7, float %11495)  ; Saturate(value)
  %11499 = call float @dx.op.unary.f32(i32 7, float %11496)  ; Saturate(value)
  %11500 = call float @dx.op.unary.f32(i32 7, float %11497)  ; Saturate(value)
  br label %11638

; <label>:11501                                   ; preds = %11414
  %11502 = fmul fast float %10756, 5.000000e-01
  %11503 = fadd fast float %11502, %10754
  %11504 = fcmp fast ult float %10751, %11503
  br i1 %11504, label %11531, label %11505

; <label>:11505                                   ; preds = %11501
  %11506 = add i32 %11458, 4
  %11507 = icmp eq i32 %11506, 0
  br i1 %11507, label %11638, label %11508

; <label>:11508                                   ; preds = %11505
  br label %11509

; <label>:11509                                   ; preds = %11509, %11508
  %11510 = phi float [ %11526, %11509 ], [ 0.000000e+00, %11508 ]
  %11511 = phi i32 [ %11527, %11509 ], [ 0, %11508 ]
  %11512 = add i32 %11451, 32
  %11513 = add i32 %11512, %11511
  %11514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11513)  ; CBufferLoadLegacy(handle,regIndex)
  %11515 = extractvalue %dx.types.CBufRet.f32 %11514, 0
  %11516 = extractvalue %dx.types.CBufRet.f32 %11514, 1
  %11517 = extractvalue %dx.types.CBufRet.f32 %11514, 2
  %11518 = extractvalue %dx.types.CBufRet.f32 %11514, 3
  %11519 = fmul fast float %11515, %1953
  %11520 = fadd fast float %11519, %11516
  %11521 = call float @dx.op.unary.f32(i32 7, float %11520)  ; Saturate(value)
  %11522 = fmul fast float %11517, %1953
  %11523 = fadd fast float %11522, %11518
  %11524 = call float @dx.op.unary.f32(i32 7, float %11523)  ; Saturate(value)
  %11525 = call float @dx.op.binary.f32(i32 36, float %11521, float %11524)  ; FMin(a,b)
  %11526 = fadd fast float %11525, %11510
  %11527 = add nuw i32 %11511, 1
  %11528 = icmp eq i32 %11527, %11506
  br i1 %11528, label %11529, label %11509

; <label>:11529                                   ; preds = %11509
  %11530 = fmul float %11526, 2.500000e-01
  br label %11638

; <label>:11531                                   ; preds = %11501
  %11532 = fmul fast float %10756, 2.500000e-01
  %11533 = fadd fast float %11532, %10754
  %11534 = fcmp fast ult float %10751, %11533
  br i1 %11534, label %11634, label %11535

; <label>:11535                                   ; preds = %11531
  %11536 = add i32 %11451, 32
  %11537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11536)  ; CBufferLoadLegacy(handle,regIndex)
  %11538 = extractvalue %dx.types.CBufRet.f32 %11537, 0
  %11539 = extractvalue %dx.types.CBufRet.f32 %11537, 1
  %11540 = extractvalue %dx.types.CBufRet.f32 %11537, 2
  %11541 = extractvalue %dx.types.CBufRet.f32 %11537, 3
  %11542 = fmul fast float %11538, %1953
  %11543 = fadd fast float %11542, %11539
  %11544 = call float @dx.op.unary.f32(i32 7, float %11543)  ; Saturate(value)
  %11545 = fmul fast float %11540, %1953
  %11546 = fadd fast float %11545, %11541
  %11547 = call float @dx.op.unary.f32(i32 7, float %11546)  ; Saturate(value)
  %11548 = call float @dx.op.binary.f32(i32 36, float %11544, float %11547)  ; FMin(a,b)
  %11549 = uitofp i32 %11451 to float
  %11550 = fmul fast float %11549, 0x3FE3C6EF40000000
  %11551 = call float @dx.op.unary.f32(i32 22, float %11550)  ; Frc(value)
  %11552 = fadd fast float %11551, 0x3FE5555560000000
  %11553 = fadd fast float %11551, 0x3FD5555560000000
  %11554 = fsub fast float -0.000000e+00, %11551
  %11555 = fsub fast float -0.000000e+00, %11552
  %11556 = fsub fast float -0.000000e+00, %11553
  %11557 = fcmp fast oge float %11551, %11554
  %11558 = fcmp fast oge float %11552, %11555
  %11559 = fcmp fast oge float %11553, %11556
  %11560 = call float @dx.op.unary.f32(i32 6, float %11551)  ; FAbs(value)
  %11561 = call float @dx.op.unary.f32(i32 6, float %11552)  ; FAbs(value)
  %11562 = call float @dx.op.unary.f32(i32 6, float %11553)  ; FAbs(value)
  %11563 = call float @dx.op.unary.f32(i32 22, float %11560)  ; Frc(value)
  %11564 = call float @dx.op.unary.f32(i32 22, float %11561)  ; Frc(value)
  %11565 = call float @dx.op.unary.f32(i32 22, float %11562)  ; Frc(value)
  %11566 = fsub fast float -0.000000e+00, %11563
  %11567 = fsub fast float -0.000000e+00, %11564
  %11568 = fsub fast float -0.000000e+00, %11565
  %11569 = select i1 %11557, float %11563, float %11566
  %11570 = select i1 %11558, float %11564, float %11567
  %11571 = select i1 %11559, float %11565, float %11568
  %11572 = fmul fast float %11569, 6.000000e+00
  %11573 = fmul fast float %11570, 6.000000e+00
  %11574 = fmul fast float %11571, 6.000000e+00
  %11575 = fadd fast float %11572, -3.000000e+00
  %11576 = fadd fast float %11573, -3.000000e+00
  %11577 = fadd fast float %11574, -3.000000e+00
  %11578 = call float @dx.op.unary.f32(i32 6, float %11575)  ; FAbs(value)
  %11579 = call float @dx.op.unary.f32(i32 6, float %11576)  ; FAbs(value)
  %11580 = call float @dx.op.unary.f32(i32 6, float %11577)  ; FAbs(value)
  %11581 = fadd fast float %11578, -1.000000e+00
  %11582 = fadd fast float %11579, -1.000000e+00
  %11583 = fadd fast float %11580, -1.000000e+00
  %11584 = call float @dx.op.unary.f32(i32 7, float %11581)  ; Saturate(value)
  %11585 = call float @dx.op.unary.f32(i32 7, float %11582)  ; Saturate(value)
  %11586 = call float @dx.op.unary.f32(i32 7, float %11583)  ; Saturate(value)
  %11587 = fadd fast float %11549, 1.000000e+00
  %11588 = fmul fast float %11587, 0x3FE3C6EF40000000
  %11589 = call float @dx.op.unary.f32(i32 22, float %11588)  ; Frc(value)
  %11590 = fadd fast float %11589, 0x3FE5555560000000
  %11591 = fadd fast float %11589, 0x3FD5555560000000
  %11592 = fsub fast float -0.000000e+00, %11589
  %11593 = fsub fast float -0.000000e+00, %11590
  %11594 = fsub fast float -0.000000e+00, %11591
  %11595 = fcmp fast oge float %11589, %11592
  %11596 = fcmp fast oge float %11590, %11593
  %11597 = fcmp fast oge float %11591, %11594
  %11598 = call float @dx.op.unary.f32(i32 6, float %11589)  ; FAbs(value)
  %11599 = call float @dx.op.unary.f32(i32 6, float %11590)  ; FAbs(value)
  %11600 = call float @dx.op.unary.f32(i32 6, float %11591)  ; FAbs(value)
  %11601 = call float @dx.op.unary.f32(i32 22, float %11598)  ; Frc(value)
  %11602 = call float @dx.op.unary.f32(i32 22, float %11599)  ; Frc(value)
  %11603 = call float @dx.op.unary.f32(i32 22, float %11600)  ; Frc(value)
  %11604 = fsub fast float -0.000000e+00, %11601
  %11605 = fsub fast float -0.000000e+00, %11602
  %11606 = fsub fast float -0.000000e+00, %11603
  %11607 = select i1 %11595, float %11601, float %11604
  %11608 = select i1 %11596, float %11602, float %11605
  %11609 = select i1 %11597, float %11603, float %11606
  %11610 = fmul fast float %11607, 6.000000e+00
  %11611 = fmul fast float %11608, 6.000000e+00
  %11612 = fmul fast float %11609, 6.000000e+00
  %11613 = fadd fast float %11610, -3.000000e+00
  %11614 = fadd fast float %11611, -3.000000e+00
  %11615 = fadd fast float %11612, -3.000000e+00
  %11616 = call float @dx.op.unary.f32(i32 6, float %11613)  ; FAbs(value)
  %11617 = call float @dx.op.unary.f32(i32 6, float %11614)  ; FAbs(value)
  %11618 = call float @dx.op.unary.f32(i32 6, float %11615)  ; FAbs(value)
  %11619 = fadd fast float %11616, -1.000000e+00
  %11620 = fadd fast float %11617, -1.000000e+00
  %11621 = fadd fast float %11618, -1.000000e+00
  %11622 = call float @dx.op.unary.f32(i32 7, float %11619)  ; Saturate(value)
  %11623 = call float @dx.op.unary.f32(i32 7, float %11620)  ; Saturate(value)
  %11624 = call float @dx.op.unary.f32(i32 7, float %11621)  ; Saturate(value)
  %11625 = fsub fast float %11622, %11584
  %11626 = fsub fast float %11623, %11585
  %11627 = fsub fast float %11624, %11586
  %11628 = fmul fast float %11625, %11548
  %11629 = fmul fast float %11626, %11548
  %11630 = fmul fast float %11627, %11548
  %11631 = fadd fast float %11628, %11584
  %11632 = fadd fast float %11629, %11585
  %11633 = fadd fast float %11630, %11586
  br label %11638

; <label>:11634                                   ; preds = %11531
  %11635 = icmp ne i32 %11458, 0
  %11636 = select i1 %11635, float 1.000000e+00, float 0.000000e+00
  %11637 = select i1 %11635, float 0.000000e+00, float 1.000000e+00
  br label %11638

; <label>:11638                                   ; preds = %11634, %11535, %11529, %11505, %11462
  %11639 = phi float [ %11498, %11462 ], [ %11631, %11535 ], [ %11636, %11634 ], [ 0.000000e+00, %11505 ], [ %11530, %11529 ]
  %11640 = phi float [ %11499, %11462 ], [ %11632, %11535 ], [ %11637, %11634 ], [ 0.000000e+00, %11505 ], [ %11530, %11529 ]
  %11641 = phi float [ %11500, %11462 ], [ %11633, %11535 ], [ 0.000000e+00, %11634 ], [ 0.000000e+00, %11505 ], [ %11530, %11529 ]
  %11642 = fsub fast float %11639, %10745
  %11643 = fsub fast float %11640, %10746
  %11644 = fsub fast float %11641, %10747
  %11645 = fmul fast float %11642, 5.000000e-01
  %11646 = fmul fast float %11643, 5.000000e-01
  %11647 = fmul fast float %11644, 5.000000e-01
  %11648 = fadd fast float %11645, %10745
  %11649 = fadd fast float %11646, %10746
  %11650 = fadd fast float %11647, %10747
  br label %11742

; <label>:11651                                   ; preds = %11412
  %11652 = icmp eq i32 %10766, 41
  br i1 %11652, label %11653, label %11734

; <label>:11653                                   ; preds = %11651
  %11654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %11655 = extractvalue %dx.types.CBufRet.i32 %11654, 0
  %11656 = icmp eq i32 %11655, 2
  %11657 = and i32 %1337, 2
  %11658 = icmp ne i32 %11657, 0
  %11659 = and i1 %11658, %11656
  %11660 = icmp eq i32 %11655, 3
  %11661 = and i32 %1337, 4
  %11662 = icmp ne i32 %11661, 0
  %11663 = and i1 %11662, %11660
  %11664 = or i1 %11663, %11659
  %11665 = icmp eq i32 %11655, 4
  %11666 = and i32 %1337, 8
  %11667 = icmp ne i32 %11666, 0
  %11668 = and i1 %11667, %11665
  %11669 = or i1 %11668, %11664
  %11670 = icmp eq i32 %11655, 5
  %11671 = and i32 %1337, 16
  %11672 = icmp ne i32 %11671, 0
  %11673 = and i1 %11672, %11670
  %11674 = or i1 %11673, %11669
  %11675 = icmp eq i32 %11655, 6
  %11676 = and i32 %1337, 32
  %11677 = icmp ne i32 %11676, 0
  %11678 = and i1 %11677, %11675
  %11679 = or i1 %11678, %11674
  %11680 = icmp eq i32 %11655, 8
  %11681 = and i32 %1337, 64
  %11682 = icmp ne i32 %11681, 0
  %11683 = and i1 %11682, %11680
  %11684 = or i1 %11683, %11679
  %11685 = icmp eq i32 %11655, 9
  %11686 = and i32 %1337, 128
  %11687 = icmp ne i32 %11686, 0
  %11688 = and i1 %11687, %11685
  %11689 = or i1 %11688, %11684
  %11690 = icmp eq i32 %11655, 11
  %11691 = and i32 %1337, 160
  %11692 = icmp ne i32 %11691, 0
  %11693 = and i1 %11692, %11690
  %11694 = or i1 %11693, %11689
  %11695 = icmp eq i32 %11655, 13
  %11696 = and i32 %1337, 256
  %11697 = icmp ne i32 %11696, 0
  %11698 = and i1 %11697, %11695
  %11699 = or i1 %11698, %11694
  %11700 = icmp eq i32 %11655, 14
  %11701 = and i32 %1337, 512
  %11702 = icmp ne i32 %11701, 0
  %11703 = and i1 %11702, %11700
  %11704 = or i1 %11703, %11699
  %11705 = icmp eq i32 %11655, 7
  %11706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %11707 = extractvalue %dx.types.ResRet.i32 %11706, 0
  %11708 = and i32 %11707, 1024
  %11709 = icmp ne i32 %11708, 0
  %11710 = and i1 %11705, %11709
  %11711 = or i1 %11710, %11704
  %11712 = icmp eq i32 %11655, 10
  %11713 = and i32 %11707, 2048
  %11714 = icmp ne i32 %11713, 0
  %11715 = and i1 %11712, %11714
  %11716 = or i1 %11715, %11711
  %11717 = icmp eq i32 %11655, 12
  %11718 = and i32 %11707, 3072
  %11719 = icmp ne i32 %11718, 0
  %11720 = and i1 %11717, %11719
  %11721 = or i1 %11720, %11716
  %11722 = icmp eq i32 %11655, 15
  %11723 = and i32 %11707, 4096
  %11724 = icmp ne i32 %11723, 0
  %11725 = and i1 %11722, %11724
  %11726 = or i1 %11725, %11721
  %11727 = select i1 %11726, float 5.000000e-01, float %10745
  %11728 = select i1 %11726, float 0x3FB99999A0000000, float %10746
  %11729 = select i1 %11726, float 0x3FB99999A0000000, float %10747
  %11730 = fcmp fast ogt float %74, 0.000000e+00
  %11731 = and i1 %11730, %11705
  %11732 = select i1 %11731, float 1.000000e+00, float %11728
  %11733 = select i1 %11731, float 1.000000e+00, float %11729
  br label %11742

; <label>:11734                                   ; preds = %11651
  %11735 = icmp eq i32 %10766, 45
  br i1 %11735, label %11736, label %11742

; <label>:11736                                   ; preds = %11734
  %11737 = fcmp fast ogt float %1338, %1339
  %11738 = fsub fast float %1338, %1339
  %11739 = call float @dx.op.unary.f32(i32 6, float %11738)  ; FAbs(value)
  %11740 = select i1 %11737, float %11739, float 0.000000e+00
  %11741 = select i1 %11737, float 0.000000e+00, float %11739
  br label %11742

; <label>:11742                                   ; preds = %11736, %11734, %11653, %11638, %11404, %11397, %11391, %11370, %11329, %11327, %11270, %11242, %11214, %11210, %11148, %11106, %11051, %11046, %11032, %10990, %10983, %10976, %10972, %10970, %10968, %10966, %10964, %10962, %10960, %10958, %10956, %10954, %10940, %10936, %10934, %10932, %10923, %10832, %10812, %10771, %10744
  %11743 = phi float [ %10807, %10771 ], [ %10813, %10812 ], [ %10917, %10832 ], [ %10929, %10923 ], [ %10949, %10940 ], [ %10955, %10954 ], [ %10980, %10976 ], [ %11048, %11046 ], [ %11101, %11051 ], [ %11207, %11148 ], [ %11234, %11214 ], [ %11262, %11242 ], [ %11322, %11270 ], [ %11364, %11329 ], [ %11377, %11370 ], [ %11394, %11391 ], [ %11409, %11404 ], [ %10745, %11397 ], [ %11648, %11638 ], [ %11727, %11653 ], [ %11740, %11736 ], [ %10745, %11734 ], [ %10745, %10744 ], [ 0.000000e+00, %10932 ], [ 0.000000e+00, %10970 ], [ %74, %10983 ], [ 1.000000e+00, %11032 ], [ 0.000000e+00, %10990 ], [ 0.000000e+00, %11106 ], [ 0.000000e+00, %11327 ], [ %310, %10934 ], [ %325, %10936 ], [ %365, %10956 ], [ %378, %10958 ], [ %1332, %10960 ], [ %80, %10962 ], [ %1333, %10964 ], [ %1334, %10966 ], [ %1340, %10968 ], [ %74, %10972 ], [ 0.000000e+00, %11210 ]
  %11744 = phi float [ %10808, %10771 ], [ %10814, %10812 ], [ %10918, %10832 ], [ %10930, %10923 ], [ %10951, %10940 ], [ %10955, %10954 ], [ %10981, %10976 ], [ %11049, %11046 ], [ %11102, %11051 ], [ %11208, %11148 ], [ %11236, %11214 ], [ %11264, %11242 ], [ %11323, %11270 ], [ %11365, %11329 ], [ %11375, %11370 ], [ %11395, %11391 ], [ %11410, %11404 ], [ %10746, %11397 ], [ %11649, %11638 ], [ %11732, %11653 ], [ %11741, %11736 ], [ %10746, %11734 ], [ %10746, %10744 ], [ 0.000000e+00, %10932 ], [ 1.000000e+00, %10970 ], [ %75, %10983 ], [ 0.000000e+00, %11032 ], [ 1.000000e+00, %10990 ], [ 1.000000e+00, %11106 ], [ 1.000000e+00, %11327 ], [ %310, %10934 ], [ %325, %10936 ], [ %365, %10956 ], [ %378, %10958 ], [ %1332, %10960 ], [ %80, %10962 ], [ %1333, %10964 ], [ %1334, %10966 ], [ %1340, %10968 ], [ %75, %10972 ], [ 0.000000e+00, %11210 ]
  %11745 = phi float [ %10809, %10771 ], [ %10815, %10812 ], [ %10919, %10832 ], [ %10931, %10923 ], [ 0.000000e+00, %10940 ], [ %10955, %10954 ], [ %10982, %10976 ], [ %11050, %11046 ], [ %11103, %11051 ], [ %11209, %11148 ], [ %11239, %11214 ], [ %11267, %11242 ], [ %11324, %11270 ], [ %11366, %11329 ], [ %11376, %11370 ], [ %11396, %11391 ], [ %11411, %11404 ], [ %10747, %11397 ], [ %11650, %11638 ], [ %11733, %11653 ], [ 0.000000e+00, %11736 ], [ %10747, %11734 ], [ %10747, %10744 ], [ 0.000000e+00, %10932 ], [ 1.000000e+00, %10970 ], [ %76, %10983 ], [ 1.000000e+00, %11032 ], [ 1.000000e+00, %10990 ], [ 1.000000e+00, %11106 ], [ 0.000000e+00, %11327 ], [ %310, %10934 ], [ %325, %10936 ], [ %365, %10956 ], [ %378, %10958 ], [ %1332, %10960 ], [ %80, %10962 ], [ %1333, %10964 ], [ %1334, %10966 ], [ %1340, %10968 ], [ %76, %10972 ], [ 0.000000e+00, %11210 ]
  %11746 = fadd fast float %1357, 0x3FE3C6EF40000000
  %11747 = call float @dx.op.unary.f32(i32 22, float %11746)  ; Frc(value)
  %11748 = call float @dx.op.unary.f32(i32 23, float %11743)  ; Log(value)
  %11749 = fadd fast float %11748, -7.000000e+00
  %11750 = call float @dx.op.unary.f32(i32 21, float %11749)  ; Exp(value)
  %11751 = fmul fast float %11747, 2.000000e+00
  %11752 = fadd fast float %11751, -1.000000e+00
  %11753 = fmul fast float %11750, %11752
  %11754 = fcmp fast ogt float %11743, 0.000000e+00
  %11755 = select i1 %11754, float %11753, float 0.000000e+00
  %11756 = fadd fast float %11755, %11743
  %11757 = fadd fast float %1357, 0x3FF3C6EF40000000
  %11758 = call float @dx.op.unary.f32(i32 22, float %11757)  ; Frc(value)
  %11759 = call float @dx.op.unary.f32(i32 23, float %11744)  ; Log(value)
  %11760 = fadd fast float %11759, -7.000000e+00
  %11761 = call float @dx.op.unary.f32(i32 21, float %11760)  ; Exp(value)
  %11762 = fmul fast float %11758, 2.000000e+00
  %11763 = fadd fast float %11762, -1.000000e+00
  %11764 = fmul fast float %11761, %11763
  %11765 = fcmp fast ogt float %11744, 0.000000e+00
  %11766 = select i1 %11765, float %11764, float 0.000000e+00
  %11767 = fadd fast float %11766, %11744
  %11768 = fadd fast float %1357, 0x3FFDAA66E0000000
  %11769 = call float @dx.op.unary.f32(i32 22, float %11768)  ; Frc(value)
  %11770 = call float @dx.op.unary.f32(i32 23, float %11745)  ; Log(value)
  %11771 = fadd fast float %11770, -6.000000e+00
  %11772 = call float @dx.op.unary.f32(i32 21, float %11771)  ; Exp(value)
  %11773 = fmul fast float %11769, 2.000000e+00
  %11774 = fadd fast float %11773, -1.000000e+00
  %11775 = fmul fast float %11772, %11774
  %11776 = fcmp fast ogt float %11745, 0.000000e+00
  %11777 = select i1 %11776, float %11775, float 0.000000e+00
  %11778 = fadd fast float %11777, %11745
  %11779 = call float @dx.op.binary.f32(i32 36, float %11756, float 3.225500e+04)  ; FMin(a,b)
  %11780 = call float @dx.op.binary.f32(i32 36, float %11767, float 3.225500e+04)  ; FMin(a,b)
  %11781 = call float @dx.op.binary.f32(i32 36, float %11778, float 3.225500e+04)  ; FMin(a,b)
  %11782 = fmul fast float %11779, %8737
  %11783 = fmul fast float %11780, %8737
  %11784 = fmul fast float %11781, %8737
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %11782)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %11783)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %11784)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8737)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:11785                                   ; preds = %9909
  %11786 = fcmp fast olt float %2053, %9892
  br i1 %11786, label %9895, label %11787

; <label>:11787                                   ; preds = %11785
  %11788 = fcmp fast olt float %2053, %9893
  br i1 %11788, label %9895, label %10096

; <label>:11789                                   ; preds = %9987
  %11790 = fcmp fast olt float %89, 5.120000e+02
  br i1 %11790, label %9973, label %11791

; <label>:11791                                   ; preds = %11789
  %11792 = fcmp fast olt float %89, 1.024000e+03
  br i1 %11792, label %9973, label %11793

; <label>:11793                                   ; preds = %11791
  %11794 = fcmp fast olt float %89, 1.536000e+03
  br i1 %11794, label %9973, label %11795

; <label>:11795                                   ; preds = %11793
  %11796 = fcmp fast olt float %89, 2.048000e+03
  br i1 %11796, label %9973, label %11797

; <label>:11797                                   ; preds = %11795
  %11798 = fcmp fast olt float %89, 3.072000e+03
  br i1 %11798, label %9973, label %11799

; <label>:11799                                   ; preds = %11797
  %11800 = fcmp fast olt float %89, 4.096000e+03
  br i1 %11800, label %9973, label %11801

; <label>:11801                                   ; preds = %11799
  %11802 = fcmp fast olt float %89, 6.144000e+03
  br i1 %11802, label %9973, label %11803

; <label>:11803                                   ; preds = %11801
  %11804 = fcmp fast olt float %89, 8.192000e+03
  br i1 %11804, label %9973, label %10096

; <label>:11805                                   ; preds = %10019
  %11806 = fcmp fast olt float %8833, %10002
  br i1 %11806, label %10005, label %11807

; <label>:11807                                   ; preds = %11805
  %11808 = fcmp fast olt float %8833, %10003
  br i1 %11808, label %10005, label %10096
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!84}
!dx.entryPoints = !{!85}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !69, !72, !76}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
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
!84 = !{[29 x i32] [i32 27, i32 4, i32 15, i32 15, i32 7, i32 15, i32 7, i32 7, i32 7, i32 7, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 2, i32 4, i32 0, i32 1, i32 2, i32 4]}
!85 = !{void ()* @ps_main, !"ps_main", !86, !4, !107}
!86 = !{!87, !105, null}
!87 = !{!88, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104}
!88 = !{i32 0, !"SV_Position", i8 9, i8 3, !89, i8 4, i32 1, i8 4, i32 0, i8 0, !90}
!89 = !{i32 0}
!90 = !{i32 3, i32 15}
!91 = !{i32 1, !"NORMAL", i8 9, i8 0, !89, i8 2, i32 1, i8 3, i32 1, i8 0, !92}
!92 = !{i32 3, i32 7}
!93 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !89, i8 2, i32 1, i8 2, i32 2, i8 0, !94}
!94 = !{i32 3, i32 3}
!95 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !89, i8 2, i32 1, i8 1, i32 1, i8 3, !96}
!96 = !{i32 3, i32 1}
!97 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !89, i8 1, i32 1, i8 1, i32 3, i8 0, !96}
!98 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !89, i8 1, i32 1, i8 1, i32 3, i8 1, !96}
!99 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !89, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!100 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !101, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!101 = !{i32 1}
!102 = !{i32 8, !"DEBUG_VALUE", i8 9, i8 0, !89, i8 2, i32 1, i8 4, i32 5, i8 0, !92}
!103 = !{i32 9, !"WIREFRAME_COLOR", i8 9, i8 0, !89, i8 2, i32 1, i8 3, i32 6, i8 0, !92}
!104 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !89, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!105 = !{!106}
!106 = !{i32 0, !"SV_Target", i8 9, i8 16, !89, i8 0, i32 1, i8 4, i32 0, i8 0, !90}
!107 = !{i32 0, i64 24}
!108 = !{!109, !109, i64 0}
!109 = !{!"float", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !{!113, !115, !116}
!113 = distinct !{!113, !114, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!114 = distinct !{!114, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!115 = distinct !{!115, !114, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!116 = distinct !{!116, !114, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %normalOffsets"}
!119 = distinct !{!119, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!120 = distinct !{!120, !121}
!121 = !{!"llvm.loop.unroll.disable"}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !121}
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
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = !{!143, !143, i64 0}
!143 = !{!"int", !110, i64 0}
!144 = !{!145, !147}
!145 = distinct !{!145, !146, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!146 = distinct !{!146, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!147 = distinct !{!147, !148, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!148 = distinct !{!148, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = !{!145, !147, !151, !153}
!151 = distinct !{!151, !152, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!152 = distinct !{!152, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!153 = distinct !{!153, !154, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!154 = distinct !{!154, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!155 = distinct !{!155, !121}
!156 = distinct !{!156, !121}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = !{!168, !170, !172, !173, !175, !176, !177, !179, !180, !181}
!168 = distinct !{!168, !169, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!169 = distinct !{!169, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!170 = distinct !{!170, !171, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!171 = distinct !{!171, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!172 = distinct !{!172, !171, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!173 = distinct !{!173, !174, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!174 = distinct !{!174, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!175 = distinct !{!175, !174, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!176 = distinct !{!176, !174, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!177 = distinct !{!177, !178, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!178 = distinct !{!178, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!179 = distinct !{!179, !178, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!180 = distinct !{!180, !178, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!181 = distinct !{!181, !182, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!182 = distinct !{!182, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"\01?sort@@YAXAIAM00@Z: %c"}
!185 = distinct !{!185, !"\01?sort@@YAXAIAM00@Z"}
!186 = !{!187, !188, !168, !170, !172, !173, !175, !176, !177, !179, !180, !181}
!187 = distinct !{!187, !185, !"\01?sort@@YAXAIAM00@Z: %a"}
!188 = distinct !{!188, !185, !"\01?sort@@YAXAIAM00@Z: %b"}
!189 = !{!188}
!190 = !{!187, !184, !168, !170, !172, !173, !175, !176, !177, !179, !180, !181}
!191 = !{!187}
!192 = !{!188, !184, !168, !170, !172, !173, !175, !176, !177, !179, !180, !181}
!193 = !{!194}
!194 = distinct !{!194, !195, !"\01?sort@@YAXAIAM00@Z: %c"}
!195 = distinct !{!195, !"\01?sort@@YAXAIAM00@Z"}
!196 = !{!197, !198, !168, !170, !172, !173, !175, !176, !177, !179, !180, !181}
!197 = distinct !{!197, !195, !"\01?sort@@YAXAIAM00@Z: %a"}
!198 = distinct !{!198, !195, !"\01?sort@@YAXAIAM00@Z: %b"}
!199 = !{!198}
!200 = !{!197, !194, !168, !170, !172, !173, !175, !176, !177, !179, !180, !181}
!201 = !{!197}
!202 = !{!198, !194, !168, !170, !172, !173, !175, !176, !177, !179, !180, !181}
!203 = distinct !{!203, !"dx.controlflow.hints", i32 1}
!204 = distinct !{!204, !"dx.controlflow.hints", i32 2}
!205 = distinct !{!205, !"dx.controlflow.hints", i32 1}
!206 = distinct !{!206, !"dx.controlflow.hints", i32 1}
!207 = distinct !{!207, !"dx.controlflow.hints", i32 1}
!208 = distinct !{!208, !"dx.controlflow.hints", i32 1}
!209 = distinct !{!209, !"dx.controlflow.hints", i32 1}

