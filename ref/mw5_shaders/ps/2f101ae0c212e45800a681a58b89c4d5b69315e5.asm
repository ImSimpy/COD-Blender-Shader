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
; shader hash: bb05f35d9abc744eac6a546a703398b5
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
  br i1 %436, label %1876, label %437

; <label>:437                                     ; preds = %433
  br label %438

; <label>:438                                     ; preds = %1852, %437
  %439 = phi i32 [ %1853, %1852 ], [ %205, %437 ]
  %440 = phi float [ %1854, %1852 ], [ 0.000000e+00, %437 ]
  %441 = phi float [ %1855, %1852 ], [ 0.000000e+00, %437 ]
  %442 = phi float [ %1856, %1852 ], [ 0.000000e+00, %437 ]
  %443 = phi float [ %1857, %1852 ], [ 0.000000e+00, %437 ]
  %444 = phi float [ %1858, %1852 ], [ 0.000000e+00, %437 ]
  %445 = phi float [ %1859, %1852 ], [ 0.000000e+00, %437 ]
  %446 = phi float [ %1860, %1852 ], [ 0.000000e+00, %437 ]
  %447 = phi float [ %1861, %1852 ], [ 0.000000e+00, %437 ]
  %448 = phi i32 [ %1862, %1852 ], [ 0, %437 ]
  %449 = phi i32 [ %1863, %1852 ], [ %182, %437 ]
  %450 = phi i32 [ %1864, %1852 ], [ %182, %437 ]
  %451 = phi float [ %1865, %1852 ], [ 0.000000e+00, %437 ]
  %452 = phi float [ %1866, %1852 ], [ 0.000000e+00, %437 ]
  %453 = phi i32 [ %1867, %1852 ], [ %182, %437 ]
  %454 = phi i32 [ %1868, %1852 ], [ 0, %437 ]
  %455 = phi float [ %1869, %1852 ], [ 0.000000e+00, %437 ]
  %456 = phi float [ %1870, %1852 ], [ 0.000000e+00, %437 ]
  %457 = phi float [ %1871, %1852 ], [ 0.000000e+00, %437 ]
  %458 = phi i32 [ %1872, %1852 ], [ -1, %437 ]
  %459 = phi float [ %1873, %1852 ], [ 0.000000e+00, %437 ]
  %460 = phi i32 [ %465, %1852 ], [ %203, %437 ]
  %461 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %460)  ; FirstbitLo(value)
  %462 = and i32 %461, 31
  %463 = shl i32 1, %462
  %464 = xor i32 %463, -1
  %465 = and i32 %460, %464
  %466 = shl i32 %461, 2
  %467 = add i32 %383, %466
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 32767
  %471 = add i32 %216, %466
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = fmul fast float %475, %81
  %477 = fmul fast float %475, %82
  %478 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %479 = fadd fast float %476, %478
  %480 = fadd fast float %477, %478
  %481 = add i32 %466, %231
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = add i32 %483, 0
  %485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %484, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %486 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %485, i32 0)  ; GetDimensions(handle,mipLevel)
  %487 = extractvalue %dx.types.Dimensions %486, 0
  %488 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %487)  ; FirstbitLo(value)
  %489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.i32 %489, 1
  %491 = sub nsw i32 %490, %488
  %492 = sitofp i32 %491 to float
  %493 = fsub fast float %179, %492
  %494 = call float @dx.op.binary.f32(i32 35, float %493, float 0.000000e+00)  ; FMax(a,b)
  %495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %485, %dx.types.Handle %61, float %479, float %480, float %473, float undef, i32 0, i32 0, i32 undef, float %494)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = fcmp fast ogt float %496, 0.000000e+00
  br i1 %497, label %498, label %1852

; <label>:498                                     ; preds = %438
  %499 = add i32 %448, 1
  %500 = mul nuw nsw i32 %470, 928
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = or i32 %500, 8
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = or i32 %500, 12
  %507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 1
  %509 = or i32 %500, 20
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = or i32 %500, 24
  %513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = extractvalue %dx.types.ResRet.f32 %513, 1
  %516 = extractvalue %dx.types.ResRet.f32 %513, 2
  %517 = extractvalue %dx.types.ResRet.f32 %513, 3
  %518 = add nuw nsw i32 %500, 40
  %519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = add nuw nsw i32 %500, 72
  %522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = add nuw nsw i32 %500, 80
  %526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = add nuw nsw i32 %500, 228
  %529 = add nuw nsw i32 %500, 516
  %530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 1
  %532 = add nuw nsw i32 %500, 528
  %533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = extractvalue %dx.types.ResRet.f32 %533, 1
  %536 = add nuw nsw i32 %500, 540
  %537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = extractvalue %dx.types.ResRet.f32 %537, 1
  %540 = add nuw nsw i32 %500, 548
  %541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = add nuw nsw i32 %500, 552
  %544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = add nuw nsw i32 %500, 596
  %549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = extractvalue %dx.types.ResRet.f32 %549, 1
  %552 = add nuw nsw i32 %500, 620
  %553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = extractvalue %dx.types.ResRet.f32 %553, 1
  %556 = add nuw nsw i32 %500, 628
  %557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = extractvalue %dx.types.ResRet.f32 %557, 1
  %560 = extractvalue %dx.types.ResRet.f32 %557, 2
  %561 = extractvalue %dx.types.ResRet.f32 %557, 3
  %562 = add nuw nsw i32 %500, 644
  %563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = add nuw nsw i32 %500, 648
  %566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = add nuw nsw i32 %500, 652
  %569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 0
  %571 = add nuw nsw i32 %500, 656
  %572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = add nuw nsw i32 %500, 660
  %575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = add nuw nsw i32 %500, 664
  %578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = add nuw nsw i32 %500, 676
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = extractvalue %dx.types.ResRet.f32 %582, 1
  %585 = add nuw nsw i32 %500, 696
  %586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = extractvalue %dx.types.ResRet.f32 %586, 1
  %589 = add nuw nsw i32 %500, 704
  %590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.f32 %590, 0
  %592 = add nuw nsw i32 %500, 708
  %593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = add nuw nsw i32 %500, 716
  %597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = add nuw nsw i32 %500, 720
  %600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = add nuw nsw i32 %500, 732
  %604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 1
  %606 = add nuw nsw i32 %500, 744
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = add nuw nsw i32 %500, 748
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = add nuw nsw i32 %500, 752
  %613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = add nuw nsw i32 %500, 756
  %616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = extractvalue %dx.types.ResRet.f32 %616, 3
  %621 = add nuw nsw i32 %500, 780
  %622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = extractvalue %dx.types.ResRet.f32 %622, 1
  %625 = add nuw nsw i32 %500, 792
  %626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = extractvalue %dx.types.ResRet.f32 %626, 1
  %629 = add nuw nsw i32 %500, 800
  %630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.f32 %630, 0
  %632 = extractvalue %dx.types.ResRet.f32 %630, 1
  %633 = add nuw nsw i32 %500, 812
  %634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = add nuw nsw i32 %500, 816
  %637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 1
  %639 = add nuw nsw i32 %500, 852
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = add nuw nsw i32 %500, 860
  %643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 2
  %645 = add nuw nsw i32 %500, 884
  %646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = extractvalue %dx.types.ResRet.f32 %646, 1
  %649 = extractvalue %dx.types.ResRet.f32 %646, 2
  %650 = add nuw nsw i32 %500, 896
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = add nuw nsw i32 %500, 900
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = add nuw nsw i32 %500, 904
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = add nuw nsw i32 %500, 908
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = add nuw nsw i32 %500, 912
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %662, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = add nuw nsw i32 %500, 916
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = lshr i32 %439, 24
  %669 = uitofp i32 %668 to float
  %670 = fmul fast float %669, 0x3F70101020000000
  %671 = and i32 %502, 128
  %672 = icmp ne i32 %671, 0
  %673 = extractvalue %dx.types.CBufRet.i32 %489, 0
  %674 = and i32 %673, 512
  %675 = icmp ne i32 %674, 0
  %676 = and i1 %672, %675
  %677 = select i1 %676, float 0.000000e+00, float %496
  %678 = fadd fast float %677, %670
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %680 = fmul fast float %679, 2.550000e+02
  %681 = fptoui float %680 to i32
  %682 = shl i32 %681, 24
  %683 = and i32 %439, 16777215
  %684 = or i32 %682, %683
  %685 = fcmp fast ogt float %496, %459
  %686 = select i1 %685, i32 %470, i32 %458
  %687 = select i1 %685, float %496, float %459
  %688 = fcmp fast ole float %80, 0x3FA4B5DCC0000000
  %689 = fmul fast float %80, 0x3FB3D07220000000
  %690 = fadd fast float %80, 0x3FAC28F5C0000000
  %691 = fmul fast float %690, 0x3FEE54EDE0000000
  %692 = call float @dx.op.unary.f32(i32 23, float %691)  ; Log(value)
  %693 = fmul fast float %692, 0x4003333340000000
  %694 = call float @dx.op.unary.f32(i32 21, float %693)  ; Exp(value)
  %695 = select i1 %688, float %689, float %694
  %696 = call float @dx.op.unary.f32(i32 7, float %695)  ; Saturate(value)
  %697 = fmul fast float %550, %365
  %698 = fadd fast float %697, %551
  %699 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %700 = fmul fast float %699, %496
  %701 = fadd fast float %700, %445
  %702 = call float @dx.op.binary.f32(i32 35, float %696, float %699)  ; FMax(a,b)
  %703 = add i32 %655, 0
  %704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %703, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.i32 %705, 0
  %707 = and i32 %706, 65536
  %708 = icmp eq i32 %707, 0
  %709 = and i32 %706, 262144
  %710 = icmp ne i32 %709, 0
  %711 = and i32 %706, 1048576
  %712 = icmp ne i32 %711, 0
  br i1 %708, label %987, label %713

; <label>:713                                     ; preds = %498
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 0
  %718 = extractvalue %dx.types.CBufRet.f32 %716, 1
  %719 = fadd fast float %717, %155
  %720 = fadd fast float %718, %156
  %721 = fmul fast float %155, %155
  %722 = fmul fast float %156, %156
  %723 = fadd fast float %721, %722
  %724 = fmul fast float %157, %157
  %725 = fadd fast float %723, %724
  %726 = call float @dx.op.unary.f32(i32 24, float %725)  ; Sqrt(value)
  br i1 %712, label %727, label %773

; <label>:727                                     ; preds = %713
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = fcmp fast ogt float %726, %729
  %731 = zext i1 %730 to i32
  %732 = extractvalue %dx.types.CBufRet.f32 %728, 1
  %733 = fcmp fast ogt float %726, %732
  %734 = zext i1 %733 to i32
  %735 = add nuw nsw i32 %734, %731
  %736 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %737 = fcmp fast ogt float %726, %736
  %738 = zext i1 %737 to i32
  %739 = add nuw nsw i32 %735, %738
  %740 = icmp ult i32 %739, 3
  %741 = zext i1 %740 to i32
  %742 = shl nuw nsw i32 %739, 2
  %743 = add nuw nsw i32 %742, 48
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %743)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 1
  %746 = fcmp fast ogt float %726, %745
  %747 = zext i1 %746 to i32
  %748 = or i32 %742, 1
  %749 = add nuw nsw i32 %748, 48
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %749)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 1
  %752 = fcmp fast ogt float %726, %751
  %753 = zext i1 %752 to i32
  %754 = add nuw nsw i32 %753, %747
  %755 = or i32 %742, 2
  %756 = add nuw nsw i32 %755, 48
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %756)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 1
  %759 = fcmp fast ogt float %726, %758
  %760 = zext i1 %759 to i32
  %761 = add nuw nsw i32 %754, %760
  %762 = add i32 %511, -1
  %763 = call i32 @dx.op.binary.i32(i32 40, i32 %761, i32 %762)  ; UMin(a,b)
  %764 = add i32 %742, %763
  %765 = call i32 @dx.op.binary.i32(i32 40, i32 %764, i32 12)  ; UMin(a,b)
  %766 = add i32 %765, 48
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %766)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 0
  %769 = fcmp fast oge float %726, %768
  %770 = zext i1 %769 to i32
  %771 = call i32 @dx.op.binary.i32(i32 40, i32 %511, i32 %741)  ; UMin(a,b)
  %772 = call i32 @dx.op.binary.i32(i32 40, i32 %770, i32 %771)  ; UMin(a,b)
  br label %773

; <label>:773                                     ; preds = %727, %713
  %774 = phi i32 [ %765, %727 ], [ 0, %713 ]
  %775 = phi i32 [ %772, %727 ], [ 0, %713 ]
  %776 = add i32 %775, %511
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %976, label %778

; <label>:778                                     ; preds = %773
  br label %779

; <label>:779                                     ; preds = %945, %778
  %780 = phi float [ %972, %945 ], [ 0.000000e+00, %778 ]
  %781 = phi float [ %964, %945 ], [ 0.000000e+00, %778 ]
  %782 = phi float [ %965, %945 ], [ 0.000000e+00, %778 ]
  %783 = phi i32 [ %795, %945 ], [ %774, %778 ]
  %784 = phi i32 [ %973, %945 ], [ 0, %778 ]
  %785 = add i32 %784, %783
  br i1 %712, label %786, label %794

; <label>:786                                     ; preds = %779
  %787 = and i32 %785, -4
  %788 = add i32 %787, %511
  %789 = icmp uge i32 %785, %788
  %790 = sub i32 4, %511
  %791 = select i1 %789, i32 %790, i32 0
  %792 = add i32 %791, %783
  %793 = add i32 %791, %785
  br label %794

; <label>:794                                     ; preds = %786, %779
  %795 = phi i32 [ %792, %786 ], [ %783, %779 ]
  %796 = phi i32 [ %793, %786 ], [ %785, %779 ]
  %797 = and i32 %796, 3
  %798 = select i1 %712, i32 %797, i32 %784
  %799 = lshr i32 %796, 2
  %800 = select i1 %712, i32 %799, i32 0
  %801 = add i32 %796, 32
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %801)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 0
  %804 = extractvalue %dx.types.CBufRet.f32 %802, 1
  %805 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %806 = extractvalue %dx.types.CBufRet.f32 %802, 3
  %807 = fmul fast float %803, %726
  %808 = fadd fast float %807, %804
  %809 = call float @dx.op.unary.f32(i32 7, float %808)  ; Saturate(value)
  %810 = fmul fast float %805, %726
  %811 = fadd fast float %810, %806
  %812 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  %813 = call float @dx.op.binary.f32(i32 36, float %809, float %812)  ; FMin(a,b)
  %814 = select i1 %712, float %813, float 1.000000e+00
  %815 = mul i32 %798, 72
  %816 = add i32 %528, %815
  %817 = add i32 %816, 16
  %818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = extractvalue %dx.types.ResRet.f32 %818, 1
  %821 = extractvalue %dx.types.ResRet.f32 %818, 2
  %822 = extractvalue %dx.types.ResRet.f32 %818, 3
  %823 = add i32 %816, 36
  %824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = add i32 %816, 56
  %827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = fmul fast float %352, 3.906250e-03
  %830 = fmul fast float %829, %527
  %831 = fmul fast float %830, %825
  %832 = fmul fast float %831, %828
  %833 = extractvalue %dx.types.ResRet.f32 %827, 1
  %834 = fadd fast float %832, %833
  %835 = call float @dx.op.binary.f32(i32 35, float %834, float 0.000000e+00)  ; FMax(a,b)
  %836 = add i32 %816, 32
  %837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  br i1 %710, label %839, label %872

; <label>:839                                     ; preds = %794
  %840 = fmul fast float %825, %347
  %841 = fmul fast float %825, %348
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 1
  %844 = add i32 %816, 40
  %845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = extractvalue %dx.types.ResRet.f32 %845, 1
  %848 = extractvalue %dx.types.ResRet.f32 %845, 2
  %849 = extractvalue %dx.types.ResRet.f32 %845, 3
  %850 = fadd fast float %843, %195
  %851 = fadd fast float %850, %848
  %852 = fmul fast float %850, %847
  %853 = call float @dx.op.unary.f32(i32 29, float %852)  ; Round_z(value)
  %854 = fmul fast float %846, %853
  %855 = fsub fast float %850, %854
  %856 = fmul fast float %851, %847
  %857 = call float @dx.op.unary.f32(i32 29, float %856)  ; Round_z(value)
  %858 = fmul fast float %857, %846
  %859 = fsub fast float %851, %858
  %860 = fmul fast float %855, %840
  %861 = fmul fast float %855, %841
  %862 = fmul fast float %859, %840
  %863 = fmul fast float %859, %841
  %864 = fsub fast float %719, %860
  %865 = fsub fast float %720, %861
  %866 = fsub fast float %719, %862
  %867 = fsub fast float %720, %863
  %868 = fsub fast float %848, %855
  %869 = call float @dx.op.unary.f32(i32 6, float %868)  ; FAbs(value)
  %870 = fmul fast float %869, %849
  %871 = call float @dx.op.unary.f32(i32 7, float %870)  ; Saturate(value)
  br label %872

; <label>:872                                     ; preds = %839, %794
  %873 = phi float [ %864, %839 ], [ %719, %794 ]
  %874 = phi float [ %865, %839 ], [ %720, %794 ]
  %875 = phi float [ %866, %839 ], [ %719, %794 ]
  %876 = phi float [ %867, %839 ], [ %720, %794 ]
  %877 = phi float [ %871, %839 ], [ 0.000000e+00, %794 ]
  %878 = fmul fast float %505, 4.000000e+00
  %879 = uitofp i32 %800 to float
  %880 = fadd fast float %879, %878
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 0
  %883 = extractvalue %dx.types.CBufRet.f32 %881, 1
  %884 = extractvalue %dx.types.CBufRet.f32 %881, 2
  %885 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %886 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 0
  store float %882, float* %886, align 4
  %887 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 1
  store float %883, float* %887, align 4
  %888 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 2
  store float %884, float* %888, align 4
  %889 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 3
  store float %885, float* %889, align 4
  %890 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 %800
  %891 = load float, float* %890, align 4, !tbaa !109, !noalias !113
  %892 = fmul fast float %891, %508
  %893 = select i1 %712, float %892, float %508
  %894 = fmul fast float %873, %819
  %895 = call float @dx.op.tertiary.f32(i32 46, float %820, float %874, float %894)  ; FMad(a,b,c)
  %896 = fmul fast float %873, %821
  %897 = call float @dx.op.tertiary.f32(i32 46, float %822, float %874, float %896)  ; FMad(a,b,c)
  %898 = add i32 %816, 8
  %899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = extractvalue %dx.types.ResRet.f32 %899, 1
  %902 = fadd fast float %900, %895
  %903 = fadd fast float %901, %897
  %904 = fmul fast float %902, %893
  %905 = fmul fast float %903, %893
  %906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = extractvalue %dx.types.ResRet.f32 %906, 1
  %909 = fmul fast float %904, %907
  %910 = fmul fast float %905, %908
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %913 = fadd fast float %909, %912
  %914 = fadd fast float %910, %912
  %915 = fmul fast float %875, %819
  %916 = call float @dx.op.tertiary.f32(i32 46, float %820, float %876, float %915)  ; FMad(a,b,c)
  %917 = fmul fast float %875, %821
  %918 = call float @dx.op.tertiary.f32(i32 46, float %822, float %876, float %917)  ; FMad(a,b,c)
  %919 = fadd fast float %900, %916
  %920 = fadd fast float %901, %918
  %921 = fmul fast float %919, %893
  %922 = fmul fast float %920, %893
  %923 = fmul fast float %921, %907
  %924 = fmul fast float %922, %908
  %925 = fadd fast float %923, %912
  %926 = fadd fast float %924, %912
  %927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %62, float %913, float %914, float %880, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %928 = extractvalue %dx.types.ResRet.f32 %927, 0
  %929 = extractvalue %dx.types.ResRet.f32 %927, 1
  %930 = extractvalue %dx.types.ResRet.f32 %927, 3
  %931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %62, float %925, float %926, float %880, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %710, label %932, label %945

; <label>:932                                     ; preds = %872
  %933 = extractvalue %dx.types.ResRet.f32 %931, 3
  %934 = extractvalue %dx.types.ResRet.f32 %931, 1
  %935 = extractvalue %dx.types.ResRet.f32 %931, 0
  %936 = fsub fast float %935, %928
  %937 = fsub fast float %934, %929
  %938 = fsub fast float %933, %930
  %939 = fmul fast float %936, %877
  %940 = fmul fast float %937, %877
  %941 = fmul fast float %938, %877
  %942 = fadd fast float %939, %928
  %943 = fadd fast float %940, %929
  %944 = fadd fast float %941, %930
  br label %945

; <label>:945                                     ; preds = %932, %872
  %946 = phi float [ %942, %932 ], [ %928, %872 ]
  %947 = phi float [ %943, %932 ], [ %929, %872 ]
  %948 = phi float [ %944, %932 ], [ %930, %872 ]
  %949 = fmul fast float %946, 2.000000e+00
  %950 = fmul fast float %947, 2.000000e+00
  %951 = fadd fast float %949, -1.000000e+00
  %952 = fadd fast float %950, -1.000000e+00
  %953 = fmul fast float %951, %819
  %954 = call float @dx.op.tertiary.f32(i32 46, float %952, float %821, float %953)  ; FMad(a,b,c)
  %955 = fmul fast float %951, %820
  %956 = call float @dx.op.tertiary.f32(i32 46, float %952, float %822, float %955)  ; FMad(a,b,c)
  %957 = fmul fast float %814, %715
  %958 = fmul fast float %957, %835
  %959 = fmul fast float %958, %838
  %960 = fmul fast float %954, %959
  %961 = fmul fast float %960, %907
  %962 = fmul fast float %956, %959
  %963 = fmul fast float %962, %908
  %964 = fadd fast float %961, %781
  %965 = fadd fast float %963, %782
  %966 = add i32 %816, 64
  %967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.f32 %967, 0
  %969 = fmul fast float %968, %948
  %970 = extractvalue %dx.types.ResRet.f32 %967, 1
  %971 = fadd fast float %969, %970
  %972 = call float @dx.op.binary.f32(i32 35, float %780, float %971)  ; FMax(a,b)
  %973 = add nuw i32 %784, 1
  %974 = icmp eq i32 %973, %776
  br i1 %974, label %975, label %779

; <label>:975                                     ; preds = %945
  br label %976

; <label>:976                                     ; preds = %975, %773
  %977 = phi float [ 0.000000e+00, %773 ], [ %972, %975 ]
  %978 = phi float [ 0.000000e+00, %773 ], [ %964, %975 ]
  %979 = phi float [ 0.000000e+00, %773 ], [ %965, %975 ]
  %980 = call float @dx.op.dot3.f32(i32 55, float %978, float %979, float 1.000000e+00, float %978, float %979, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %981 = call float @dx.op.unary.f32(i32 25, float %980)  ; Rsqrt(value)
  %982 = fmul fast float %981, %978
  %983 = fmul fast float %981, %979
  %984 = fmul fast float %977, %554
  %985 = fadd fast float %984, %555
  %986 = call float @dx.op.unary.f32(i32 7, float %985)  ; Saturate(value)
  br label %987

; <label>:987                                     ; preds = %976, %498
  %988 = phi float [ %982, %976 ], [ 0.000000e+00, %498 ]
  %989 = phi float [ %983, %976 ], [ 0.000000e+00, %498 ]
  %990 = phi float [ %981, %976 ], [ 0.000000e+00, %498 ]
  %991 = phi float [ %986, %976 ], [ 0.000000e+00, %498 ]
  %992 = fmul fast float %988, %496
  %993 = fmul fast float %989, %496
  %994 = fadd fast float %992, %440
  %995 = fadd fast float %993, %441
  %996 = fadd fast float %991, %702
  %997 = fmul fast float %990, %496
  %998 = fadd fast float %992, %442
  %999 = fadd fast float %993, %443
  %1000 = fadd fast float %997, %444
  %1001 = fmul fast float %991, %496
  %1002 = fadd fast float %1001, %446
  %1003 = fmul fast float %996, %496
  %1004 = fadd fast float %1003, %447
  %1005 = icmp ne i32 %511, 0
  %1006 = select i1 %1005, i32 2, i32 0
  %1007 = fcmp fast ogt float %991, 0.000000e+00
  %1008 = select i1 %1007, i32 4, i32 0
  %1009 = fmul fast float %594, %352
  %1010 = fadd fast float %1009, %595
  %1011 = call float @dx.op.binary.f32(i32 35, float %1010, float 0.000000e+00)  ; FMax(a,b)
  %1012 = fmul fast float %1011, %587
  %1013 = fadd fast float %1012, %588
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1015 = fmul fast float %1014, %996
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 1
  %1018 = fcmp fast oge float %1015, %1017
  %1019 = fmul fast float %1015, %496
  %1020 = fadd fast float %1019, %451
  %1021 = icmp ne i32 %641, 0
  %1022 = select i1 %1021, i32 8, i32 0
  %1023 = shl i32 %502, 3
  %1024 = and i32 %1023, 16
  %1025 = and i32 %502, 2
  %1026 = icmp ne i32 %1025, 0
  %1027 = and i1 %1026, %1018
  %1028 = select i1 %1027, i32 32, i32 0
  %1029 = shl i32 %502, 2
  %1030 = and i32 %1029, 256
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = fmul fast float %1032, %89
  %1034 = extractvalue %dx.types.CBufRet.f32 %1031, 1
  %1035 = fadd fast float %1033, %1034
  %1036 = call float @dx.op.unary.f32(i32 7, float %1035)  ; Saturate(value)
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = fmul fast float %1038, %1036
  %1040 = select i1 %1021, float %1039, float 0.000000e+00
  %1041 = fcmp fast ogt float %1040, 0.000000e+00
  %1042 = or i1 %1027, %1041
  br i1 %1042, label %1043, label %1320

; <label>:1043                                    ; preds = %987
  %1044 = select i1 %1018, float %996, float 0.000000e+00
  %1045 = add i32 %227, 0
  %1046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1045, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1047 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1046, i32 0)  ; GetDimensions(handle,mipLevel)
  %1048 = extractvalue %dx.types.Dimensions %1047, 0
  %1049 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1048)  ; FirstbitLo(value)
  %1050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.i32 %1050, 1
  %1052 = sub nsw i32 %1051, %1049
  %1053 = sitofp i32 %1052 to float
  %1054 = fsub fast float %547, %1053
  %1055 = call float @dx.op.binary.f32(i32 35, float %1054, float 0.000000e+00)  ; FMax(a,b)
  %1056 = fmul fast float %531, %237
  %1057 = fmul fast float %531, %238
  %1058 = fmul fast float %545, %81
  %1059 = fmul fast float %545, %82
  %1060 = call float @dx.op.unary.f32(i32 22, float %1058)  ; Frc(value)
  %1061 = call float @dx.op.unary.f32(i32 22, float %1059)  ; Frc(value)
  %1062 = fmul fast float %1060, 2.000000e+00
  %1063 = fmul fast float %1061, 2.000000e+00
  %1064 = fadd fast float %1062, -1.000000e+00
  %1065 = fadd fast float %1063, -1.000000e+00
  %1066 = call float @dx.op.unary.f32(i32 6, float %1064)  ; FAbs(value)
  %1067 = call float @dx.op.unary.f32(i32 6, float %1065)  ; FAbs(value)
  %1068 = fsub fast float 1.000000e+00, %1066
  %1069 = fmul fast float %1068, %1067
  %1070 = fsub fast float %1068, %1069
  %1071 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %1070, float* %1071, align 4, !tbaa !109, !noalias !118
  %1072 = fmul fast float %1067, %1066
  %1073 = fsub fast float %1066, %1072
  %1074 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %1073, float* %1074, align 4, !tbaa !109, !noalias !118
  %1075 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %1069, float* %1075, align 4, !tbaa !109, !noalias !118
  %1076 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %1072, float* %1076, align 4, !tbaa !109, !noalias !118
  br label %1077

; <label>:1077                                    ; preds = %1301, %1043
  %1078 = phi float [ 0.000000e+00, %1043 ], [ %1302, %1301 ]
  %1079 = phi float [ 0.000000e+00, %1043 ], [ %1303, %1301 ]
  %1080 = phi float [ 0.000000e+00, %1043 ], [ %1304, %1301 ]
  %1081 = phi float [ 0.000000e+00, %1043 ], [ %1305, %1301 ]
  %1082 = phi float [ 0.000000e+00, %1043 ], [ %1306, %1301 ]
  %1083 = phi i32 [ 0, %1043 ], [ %1307, %1301 ]
  %1084 = phi float [ %994, %1043 ], [ %1179, %1301 ]
  %1085 = phi float [ %995, %1043 ], [ %1180, %1301 ]
  %1086 = mul i32 %1083, 2
  %1087 = add i32 0, %1086
  %1088 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1087
  %1089 = load float, float* %1088, align 4
  %1090 = mul i32 %1083, 2
  %1091 = add i32 1, %1090
  %1092 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1091
  %1093 = load float, float* %1092, align 4
  %1094 = fmul fast float %1089, 5.000000e-01
  %1095 = fmul fast float %1093, 5.000000e-01
  %1096 = fsub fast float 1.000000e+00, %1089
  %1097 = fsub fast float 1.000000e+00, %1093
  %1098 = fmul fast float %1096, 5.000000e-01
  %1099 = fmul fast float %1097, 5.000000e-01
  %1100 = fadd fast float %1094, %1058
  %1101 = fadd fast float %1095, %1059
  %1102 = call float @dx.op.unary.f32(i32 27, float %1100)  ; Round_ni(value)
  %1103 = call float @dx.op.unary.f32(i32 27, float %1101)  ; Round_ni(value)
  %1104 = fadd fast float %1102, %1098
  %1105 = fadd fast float %1103, %1099
  %1106 = fmul fast float %1104, %546
  %1107 = fmul fast float %1105, %546
  %1108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.f32 %1108, 0
  %1110 = fmul fast float %1106, %1109
  %1111 = fmul fast float %1107, %1109
  %1112 = extractvalue %dx.types.CBufRet.f32 %1108, 1
  %1113 = fadd fast float %1110, %1112
  %1114 = fadd fast float %1111, %1112
  %1115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1046, %dx.types.Handle %64, float %1113, float %1114, float %215, float undef, i32 0, i32 0, i32 undef, float %1055)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 3
  %1120 = fmul fast float %1119, 2.000000e+00
  %1121 = fmul fast float %1120, %1116
  %1122 = fmul fast float %1120, %1117
  %1123 = fsub fast float %1121, %1119
  %1124 = fsub fast float %1122, %1119
  %1125 = fmul fast float %1123, %1123
  %1126 = fmul fast float %1124, %1124
  %1127 = fadd fast float %1125, %1126
  %1128 = call float @dx.op.unary.f32(i32 24, float %1127)  ; Sqrt(value)
  %1129 = fcmp fast ogt float %1128, 0.000000e+00
  %1130 = fdiv fast float 1.000000e+00, %1128
  %1131 = fmul fast float %1123, %1130
  %1132 = fmul fast float %1124, %1130
  %1133 = select i1 %1129, float %1131, float 0.000000e+00
  %1134 = select i1 %1129, float %1132, float 0.000000e+00
  br i1 %1041, label %1135, label %1178

; <label>:1135                                    ; preds = %1077
  %1136 = add i32 %641, 0
  %1137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1136, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1140 = fmul fast float %542, %531
  %1141 = fmul fast float %1140, %1128
  %1142 = fsub fast float -0.000000e+00, %1133
  %1143 = fmul fast float %1134, %1056
  %1144 = call float @dx.op.tertiary.f32(i32 46, float %1142, float %1057, float %1143)  ; FMad(a,b,c)
  %1145 = fmul fast float %1133, %1056
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1134, float %1057, float %1145)  ; FMad(a,b,c)
  %1147 = fmul fast float %1141, %1139
  %1148 = fsub fast float %1146, %1147
  %1149 = fmul fast float %1144, %534
  %1150 = fmul fast float %1148, %535
  %1151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1152 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1137, %dx.types.Handle %1151, float %1149, float %1150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 1
  %1154 = extractvalue %dx.types.ResRet.f32 %1152, 3
  %1155 = fadd fast float %1153, %1154
  %1156 = fmul fast float %1155, %644
  %1157 = fsub fast float %1156, %644
  %1158 = fsub fast float %1153, %1154
  %1159 = fmul fast float %1158, %644
  %1160 = fmul fast float %1157, %1134
  %1161 = call float @dx.op.tertiary.f32(i32 46, float %1133, float %1159, float %1160)  ; FMad(a,b,c)
  %1162 = fmul fast float %1157, %1142
  %1163 = call float @dx.op.tertiary.f32(i32 46, float %1134, float %1159, float %1162)  ; FMad(a,b,c)
  %1164 = fmul fast float %1161, %534
  %1165 = fmul fast float %1163, %535
  %1166 = fmul fast float %538, %352
  %1167 = fadd fast float %1166, %539
  %1168 = call float @dx.op.binary.f32(i32 35, float %1167, float 0.000000e+00)  ; FMax(a,b)
  %1169 = fmul fast float %1040, %496
  %1170 = fmul fast float %1169, %1168
  %1171 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %1083
  %1172 = load float, float* %1171, align 4, !tbaa !109, !noalias !118
  %1173 = fmul fast float %1170, %1172
  %1174 = fmul fast float %1164, %1173
  %1175 = fmul fast float %1165, %1173
  %1176 = fadd fast float %1174, %1084
  %1177 = fadd fast float %1175, %1085
  br label %1178

; <label>:1178                                    ; preds = %1135, %1077
  %1179 = phi float [ %1176, %1135 ], [ %1084, %1077 ]
  %1180 = phi float [ %1177, %1135 ], [ %1085, %1077 ]
  %1181 = fcmp fast ogt float %1044, 0.000000e+00
  %1182 = and i1 %1026, %1181
  br i1 %1182, label %1183, label %1301

; <label>:1183                                    ; preds = %1178
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1186 = fmul fast float %591, %531
  %1187 = fmul fast float %1128, %1186
  %1188 = fsub fast float -0.000000e+00, %1133
  %1189 = fmul fast float %1134, %1056
  %1190 = call float @dx.op.tertiary.f32(i32 46, float %1188, float %1057, float %1189)  ; FMad(a,b,c)
  %1191 = fmul fast float %1133, %1056
  %1192 = call float @dx.op.tertiary.f32(i32 46, float %1134, float %1057, float %1191)  ; FMad(a,b,c)
  %1193 = fmul fast float %1187, %1185
  %1194 = fsub fast float %1192, %1193
  %1195 = fmul fast float %1190, %579
  %1196 = fmul fast float %1194, %580
  %1197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %1197, float %1195, float %1196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = fmul fast float %1012, %1199
  %1201 = fadd fast float %1200, %588
  %1202 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 2
  %1205 = fmul fast float %1204, %89
  %1206 = extractvalue %dx.types.CBufRet.f32 %1203, 3
  %1207 = fadd fast float %1205, %1206
  %1208 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1209 = fcmp fast ogt float %1202, 0.000000e+00
  %1210 = fcmp fast ogt float %1208, 0.000000e+00
  %1211 = and i1 %1209, %1210
  %1212 = and i32 %502, 64
  %1213 = icmp ne i32 %1212, 0
  %1214 = and i1 %1213, %1211
  br i1 %1214, label %1215, label %1283

; <label>:1215                                    ; preds = %1183
  %1216 = add i32 %661, 0
  %1217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1216, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1218 = add i32 %664, 0
  %1219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1218, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1220 = fmul fast float %1190, %583
  %1221 = fmul fast float %1194, %584
  %1222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1217, %dx.types.Handle %1197, float %1220, float %1221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.ResRet.f32 %1222, 2
  %1226 = extractvalue %dx.types.ResRet.f32 %1222, 3
  %1227 = fmul fast float %1223, %647
  %1228 = fadd fast float %1227, %648
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1230 = fadd fast float %1224, %1226
  %1231 = fmul fast float %1230, %649
  %1232 = fsub fast float %1231, %649
  %1233 = fsub fast float %1224, %1226
  %1234 = fmul fast float %1233, %649
  %1235 = fmul fast float %1232, %1134
  %1236 = call float @dx.op.tertiary.f32(i32 46, float %1133, float %1234, float %1235)  ; FMad(a,b,c)
  %1237 = fmul fast float %1232, %1188
  %1238 = call float @dx.op.tertiary.f32(i32 46, float %1134, float %1234, float %1237)  ; FMad(a,b,c)
  %1239 = fmul fast float %1236, %583
  %1240 = fmul fast float %1238, %584
  %1241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1219, %dx.types.Handle %1197, float %1220, float %1221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = fsub fast float 1.000000e+00, %1202
  %1244 = bitcast float %1202 to i32
  %1245 = sitofp i32 %1244 to float
  %1246 = fadd fast float %1245, 0xC1CFBF8940000000
  %1247 = fmul fast float %1246, %576
  %1248 = fadd fast float %1247, 0x41CFBF8940000000
  %1249 = fptosi float %1248 to i32
  %1250 = bitcast i32 %1249 to float
  %1251 = bitcast float %1243 to i32
  %1252 = sitofp i32 %1251 to float
  %1253 = fadd fast float %1252, 0xC1CFBF8940000000
  %1254 = fmul fast float %1253, %576
  %1255 = fadd fast float %1254, 0x41CFBF8940000000
  %1256 = fptosi float %1255 to i32
  %1257 = bitcast i32 %1256 to float
  %1258 = fmul fast float %1250, %573
  %1259 = fmul fast float %1257, %573
  %1260 = fsub fast float %1243, %1258
  %1261 = fadd fast float %1259, %1243
  %1262 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1263 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1264 = fsub fast float %1242, %1262
  %1265 = fsub fast float %1263, %1262
  %1266 = bitcast float %1265 to i32
  %1267 = sub nsw i32 2129859010, %1266
  %1268 = bitcast i32 %1267 to float
  %1269 = fmul fast float %1268, %1264
  %1270 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1271 = fmul fast float %1208, %570
  %1272 = fmul fast float %1271, %1270
  %1273 = fmul fast float %1239, %1272
  %1274 = fmul fast float %1240, %1272
  %1275 = fadd fast float %1225, -1.000000e+00
  %1276 = fmul fast float %1272, %1275
  %1277 = fadd fast float %1276, 1.000000e+00
  %1278 = fsub fast float %1229, %564
  %1279 = fmul fast float %1272, %1278
  %1280 = fadd fast float %1279, %564
  %1281 = fmul fast float %1272, %1243
  %1282 = fadd fast float %1281, %1202
  br label %1283

; <label>:1283                                    ; preds = %1215, %1183
  %1284 = phi float [ %1282, %1215 ], [ %1202, %1183 ]
  %1285 = phi float [ %1280, %1215 ], [ %564, %1183 ]
  %1286 = phi float [ %1277, %1215 ], [ 1.000000e+00, %1183 ]
  %1287 = phi float [ %1273, %1215 ], [ 0.000000e+00, %1183 ]
  %1288 = phi float [ %1274, %1215 ], [ 0.000000e+00, %1183 ]
  %1289 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %1083
  %1290 = load float, float* %1289, align 4, !tbaa !109, !noalias !118
  %1291 = fmul fast float %1290, %1284
  %1292 = fmul fast float %1291, %1287
  %1293 = fmul fast float %1291, %1288
  %1294 = fadd fast float %1292, %1078
  %1295 = fadd fast float %1293, %1079
  %1296 = fmul fast float %1291, %1286
  %1297 = fadd fast float %1296, %1080
  %1298 = fmul fast float %1291, %1285
  %1299 = fadd fast float %1298, %1081
  %1300 = fadd fast float %1291, %1082
  br label %1301

; <label>:1301                                    ; preds = %1283, %1178
  %1302 = phi float [ %1294, %1283 ], [ %1078, %1178 ]
  %1303 = phi float [ %1295, %1283 ], [ %1079, %1178 ]
  %1304 = phi float [ %1297, %1283 ], [ %1080, %1178 ]
  %1305 = phi float [ %1299, %1283 ], [ %1081, %1178 ]
  %1306 = phi float [ %1300, %1283 ], [ %1082, %1178 ]
  %1307 = add nuw nsw i32 %1083, 1
  %1308 = icmp eq i32 %1307, 4
  br i1 %1308, label %1309, label %1077, !llvm.loop !125

; <label>:1309                                    ; preds = %1301
  %1310 = fmul fast float %1306, %1044
  %1311 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1310)  ; FMax(a,b)
  %1312 = fmul fast float %1306, %1302
  %1313 = fmul fast float %1306, %1303
  %1314 = fadd fast float %1304, -1.000000e+00
  %1315 = fmul fast float %1306, %1314
  %1316 = fadd fast float %1315, 1.000000e+00
  %1317 = fsub fast float %1305, %520
  %1318 = fmul fast float %1306, %1317
  %1319 = fadd fast float %1318, %520
  br label %1320

; <label>:1320                                    ; preds = %1309, %987
  %1321 = phi float [ %1179, %1309 ], [ %994, %987 ]
  %1322 = phi float [ %1180, %1309 ], [ %995, %987 ]
  %1323 = phi float [ %1311, %1309 ], [ 0.000000e+00, %987 ]
  %1324 = phi float [ %1312, %1309 ], [ 0.000000e+00, %987 ]
  %1325 = phi float [ %1313, %1309 ], [ 0.000000e+00, %987 ]
  %1326 = phi float [ %1316, %1309 ], [ 1.000000e+00, %987 ]
  %1327 = phi float [ %1319, %1309 ], [ %520, %987 ]
  %1328 = fmul fast float %627, %352
  %1329 = fadd fast float %1328, %628
  %1330 = call float @dx.op.binary.f32(i32 35, float %1329, float 0.000000e+00)  ; FMax(a,b)
  %1331 = fmul fast float %1330, %623
  %1332 = fadd fast float %1331, %624
  %1333 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  %1334 = fmul fast float %1333, %996
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 1
  %1337 = fcmp fast oge float %1334, %1336
  %1338 = fmul fast float %1334, %496
  %1339 = fadd fast float %1338, %452
  %1340 = shl i32 %502, 4
  %1341 = and i32 %1340, 64
  %1342 = and i32 %502, 4
  %1343 = icmp ne i32 %1342, 0
  %1344 = and i1 %1343, %1337
  %1345 = select i1 %1344, i32 128, i32 0
  br i1 %1344, label %1346, label %1634

; <label>:1346                                    ; preds = %1320
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 0
  %1349 = extractvalue %dx.types.CBufRet.f32 %1347, 1
  %1350 = fsub fast float %155, %237
  %1351 = fadd fast float %1350, %1348
  %1352 = fsub fast float %156, %238
  %1353 = fadd fast float %1352, %1349
  %1354 = fmul fast float %1351, %598
  %1355 = fmul fast float %1353, %598
  %1356 = fadd fast float %1354, %237
  %1357 = fadd fast float %1355, %238
  %1358 = add i32 %667, 0
  %1359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1358, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1360 = fmul fast float %1356, %605
  %1361 = fmul fast float %1357, %605
  %1362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1363 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1359, %dx.types.Handle %1362, float %1360, float %1361, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1364 = extractvalue %dx.types.ResRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.ResRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.ResRet.f32 %1363, 2
  %1367 = fmul fast float %1364, 2.000000e+00
  %1368 = fmul fast float %1365, 2.000000e+00
  %1369 = fadd fast float %1367, -1.000000e+00
  %1370 = fadd fast float %1368, -1.000000e+00
  %1371 = fmul fast float %1366, %601
  %1372 = fmul fast float %1371, %614
  %1373 = fmul fast float %1372, %1369
  %1374 = fmul fast float %1372, %1370
  %1375 = fsub fast float %347, %1373
  %1376 = fsub fast float %348, %1374
  %1377 = fmul fast float %1375, %611
  %1378 = fmul fast float %1376, %611
  %1379 = fadd fast float %1377, %1373
  %1380 = fadd fast float %1378, %1374
  %1381 = fmul fast float %1379, %614
  %1382 = fmul fast float %1380, %614
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1385 = fmul fast float %614, %195
  %1386 = fadd fast float %1384, %1385
  %1387 = fadd fast float %1386, %619
  %1388 = fmul fast float %1386, %618
  %1389 = call float @dx.op.unary.f32(i32 29, float %1388)  ; Round_z(value)
  %1390 = fmul fast float %1389, %617
  %1391 = fsub fast float %1386, %1390
  %1392 = fmul fast float %1387, %618
  %1393 = call float @dx.op.unary.f32(i32 29, float %1392)  ; Round_z(value)
  %1394 = fmul fast float %1393, %617
  %1395 = fsub fast float %1387, %1394
  %1396 = fmul fast float %1381, %1391
  %1397 = fmul fast float %1382, %1391
  %1398 = fmul fast float %1381, %1395
  %1399 = fmul fast float %1382, %1395
  %1400 = fsub fast float %1356, %1396
  %1401 = fsub fast float %1357, %1397
  %1402 = fsub fast float %1356, %1398
  %1403 = fsub fast float %1357, %1399
  %1404 = fsub fast float %619, %1391
  %1405 = call float @dx.op.unary.f32(i32 6, float %1404)  ; FAbs(value)
  %1406 = fmul fast float %1405, %620
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1408 = fmul fast float %1400, %602
  %1409 = fmul fast float %1401, %602
  %1410 = fmul fast float %1402, %602
  %1411 = fmul fast float %1403, %602
  %1412 = fcmp fast ogt float %608, 0.000000e+00
  br i1 %1412, label %1413, label %1500

; <label>:1413                                    ; preds = %1346
  %1414 = fmul fast float %608, %195
  %1415 = fmul fast float %1414, 5.000000e-01
  %1416 = fadd fast float %1415, 5.000000e-01
  %1417 = call float @dx.op.unary.f32(i32 22, float %1416)  ; Frc(value)
  %1418 = call float @dx.op.unary.f32(i32 22, float %1415)  ; Frc(value)
  %1419 = call float @dx.op.unary.f32(i32 27, float %1416)  ; Round_ni(value)
  %1420 = call float @dx.op.unary.f32(i32 27, float %1415)  ; Round_ni(value)
  %1421 = fmul fast float %1419, 2.000000e+00
  %1422 = fmul fast float %1420, 2.000000e+00
  %1423 = fadd fast float %1422, 1.000000e+00
  %1424 = fsub fast float 1.000000e+00, %1417
  %1425 = fsub fast float 1.000000e+00, %1418
  %1426 = call float @dx.op.binary.f32(i32 36, float %1417, float %1424)  ; FMin(a,b)
  %1427 = call float @dx.op.binary.f32(i32 36, float %1418, float %1425)  ; FMin(a,b)
  %1428 = fmul fast float %1426, 2.000000e+00
  %1429 = fmul fast float %1427, 2.000000e+00
  %1430 = call float @dx.op.dot3.f32(i32 55, float %1421, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1431 = call float @dx.op.dot3.f32(i32 55, float %1421, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1432 = call float @dx.op.dot3.f32(i32 55, float %1421, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1433 = call float @dx.op.unary.f32(i32 13, float %1430)  ; Sin(value)
  %1434 = call float @dx.op.unary.f32(i32 13, float %1431)  ; Sin(value)
  %1435 = call float @dx.op.unary.f32(i32 13, float %1432)  ; Sin(value)
  %1436 = fmul fast float %1433, 0x40E55DD180000000
  %1437 = fmul fast float %1434, 0x40E55DD180000000
  %1438 = fmul fast float %1435, 0x40E55DD180000000
  %1439 = call float @dx.op.unary.f32(i32 22, float %1436)  ; Frc(value)
  %1440 = call float @dx.op.unary.f32(i32 22, float %1437)  ; Frc(value)
  %1441 = call float @dx.op.unary.f32(i32 22, float %1438)  ; Frc(value)
  %1442 = fmul fast float %1439, 0x401921FB60000000
  %1443 = call float @dx.op.unary.f32(i32 12, float %1442)  ; Cos(value)
  %1444 = call float @dx.op.unary.f32(i32 13, float %1442)  ; Sin(value)
  %1445 = fsub fast float -0.000000e+00, %1444
  %1446 = call float @dx.op.dot3.f32(i32 55, float %1423, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1447 = call float @dx.op.dot3.f32(i32 55, float %1423, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1448 = call float @dx.op.dot3.f32(i32 55, float %1423, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1449 = call float @dx.op.unary.f32(i32 13, float %1446)  ; Sin(value)
  %1450 = call float @dx.op.unary.f32(i32 13, float %1447)  ; Sin(value)
  %1451 = call float @dx.op.unary.f32(i32 13, float %1448)  ; Sin(value)
  %1452 = fmul fast float %1449, 0x40E55DD180000000
  %1453 = fmul fast float %1450, 0x40E55DD180000000
  %1454 = fmul fast float %1451, 0x40E55DD180000000
  %1455 = call float @dx.op.unary.f32(i32 22, float %1452)  ; Frc(value)
  %1456 = call float @dx.op.unary.f32(i32 22, float %1453)  ; Frc(value)
  %1457 = call float @dx.op.unary.f32(i32 22, float %1454)  ; Frc(value)
  %1458 = fmul fast float %1455, 0x401921FB60000000
  %1459 = call float @dx.op.unary.f32(i32 12, float %1458)  ; Cos(value)
  %1460 = call float @dx.op.unary.f32(i32 13, float %1458)  ; Sin(value)
  %1461 = fsub fast float -0.000000e+00, %1460
  %1462 = fmul fast float %1443, %1408
  %1463 = call float @dx.op.tertiary.f32(i32 46, float %1409, float %1445, float %1462)  ; FMad(a,b,c)
  %1464 = fmul fast float %1444, %1408
  %1465 = call float @dx.op.tertiary.f32(i32 46, float %1409, float %1443, float %1464)  ; FMad(a,b,c)
  %1466 = fadd fast float %1463, %1440
  %1467 = fadd fast float %1465, %1441
  %1468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %1362, float %1466, float %1467, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = fmul fast float %1469, %1428
  %1471 = fmul fast float %1459, %1408
  %1472 = call float @dx.op.tertiary.f32(i32 46, float %1409, float %1461, float %1471)  ; FMad(a,b,c)
  %1473 = fmul fast float %1460, %1408
  %1474 = call float @dx.op.tertiary.f32(i32 46, float %1409, float %1459, float %1473)  ; FMad(a,b,c)
  %1475 = fadd fast float %1472, %1456
  %1476 = fadd fast float %1474, %1457
  %1477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %1362, float %1475, float %1476, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 0
  %1479 = fmul fast float %1478, %1429
  %1480 = fadd fast float %1479, %1470
  %1481 = fmul fast float %1443, %1410
  %1482 = call float @dx.op.tertiary.f32(i32 46, float %1411, float %1445, float %1481)  ; FMad(a,b,c)
  %1483 = fmul fast float %1444, %1410
  %1484 = call float @dx.op.tertiary.f32(i32 46, float %1411, float %1443, float %1483)  ; FMad(a,b,c)
  %1485 = fadd fast float %1482, %1440
  %1486 = fadd fast float %1484, %1441
  %1487 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %1362, float %1485, float %1486, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1488 = extractvalue %dx.types.ResRet.f32 %1487, 0
  %1489 = fmul fast float %1488, %1428
  %1490 = fmul fast float %1459, %1410
  %1491 = call float @dx.op.tertiary.f32(i32 46, float %1411, float %1461, float %1490)  ; FMad(a,b,c)
  %1492 = fmul fast float %1460, %1410
  %1493 = call float @dx.op.tertiary.f32(i32 46, float %1411, float %1459, float %1492)  ; FMad(a,b,c)
  %1494 = fadd fast float %1491, %1456
  %1495 = fadd fast float %1493, %1457
  %1496 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %1362, float %1494, float %1495, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1497 = extractvalue %dx.types.ResRet.f32 %1496, 0
  %1498 = fmul fast float %1497, %1429
  %1499 = fadd fast float %1498, %1489
  br label %1505

; <label>:1500                                    ; preds = %1346
  %1501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %1362, float %1408, float %1409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  %1503 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %1362, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  br label %1505

; <label>:1505                                    ; preds = %1500, %1413
  %1506 = phi float [ %1480, %1413 ], [ %1502, %1500 ]
  %1507 = phi float [ %1499, %1413 ], [ %1504, %1500 ]
  %1508 = fsub fast float %1507, %1506
  %1509 = fmul fast float %1508, %1407
  %1510 = fadd fast float %1509, %1506
  %1511 = fmul fast float %1331, %1510
  %1512 = fadd fast float %1511, %624
  %1513 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1516 = fmul fast float %1515, %89
  %1517 = extractvalue %dx.types.CBufRet.f32 %1514, 3
  %1518 = fadd fast float %1516, %1517
  %1519 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1520 = fcmp fast ogt float %1513, 0.000000e+00
  %1521 = fcmp fast ogt float %1519, 0.000000e+00
  %1522 = and i1 %1520, %1521
  %1523 = and i32 %502, 64
  %1524 = icmp ne i32 %1523, 0
  %1525 = and i1 %1524, %1522
  br i1 %1525, label %1526, label %1614

; <label>:1526                                    ; preds = %1505
  %1527 = add i32 %661, 0
  %1528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1527, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1529 = fmul fast float %1408, %631
  %1530 = fmul fast float %1409, %632
  %1531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1528, %dx.types.Handle %1362, float %1529, float %1530, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1532 = extractvalue %dx.types.ResRet.f32 %1531, 0
  %1533 = extractvalue %dx.types.ResRet.f32 %1531, 1
  %1534 = extractvalue %dx.types.ResRet.f32 %1531, 2
  %1535 = extractvalue %dx.types.ResRet.f32 %1531, 3
  %1536 = fmul fast float %1532, %647
  %1537 = fadd fast float %1536, %648
  %1538 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  %1539 = fadd fast float %1533, %1535
  %1540 = fmul fast float %1539, %649
  %1541 = fsub fast float %1540, %649
  %1542 = fsub fast float %1533, %1535
  %1543 = fmul fast float %1542, %649
  %1544 = fmul fast float %1410, %631
  %1545 = fmul fast float %1411, %632
  %1546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1528, %dx.types.Handle %1362, float %1544, float %1545, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1547 = extractvalue %dx.types.ResRet.f32 %1546, 0
  %1548 = extractvalue %dx.types.ResRet.f32 %1546, 1
  %1549 = extractvalue %dx.types.ResRet.f32 %1546, 2
  %1550 = extractvalue %dx.types.ResRet.f32 %1546, 3
  %1551 = fmul fast float %1547, %647
  %1552 = fadd fast float %1551, %648
  %1553 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  %1554 = fadd fast float %1548, %1550
  %1555 = fsub fast float %1548, %1550
  %1556 = fsub fast float %1554, %1539
  %1557 = fsub fast float %1555, %1542
  %1558 = fmul fast float %1407, %649
  %1559 = fmul fast float %1558, %1556
  %1560 = fmul fast float %1558, %1557
  %1561 = fadd fast float %1559, %1541
  %1562 = fmul fast float %631, %1561
  %1563 = fadd fast float %1560, %1543
  %1564 = fmul fast float %632, %1563
  %1565 = fsub fast float %1549, %1534
  %1566 = fmul fast float %1565, %1407
  %1567 = fsub fast float %1553, %1538
  %1568 = fmul fast float %1567, %1407
  %1569 = fsub fast float %1547, %1532
  %1570 = fmul fast float %1569, %1407
  %1571 = fsub fast float 1.000000e+00, %1513
  %1572 = bitcast float %1513 to i32
  %1573 = sitofp i32 %1572 to float
  %1574 = fadd fast float %1573, 0xC1CFBF8940000000
  %1575 = fmul fast float %1574, %576
  %1576 = fadd fast float %1575, 0x41CFBF8940000000
  %1577 = fptosi float %1576 to i32
  %1578 = bitcast i32 %1577 to float
  %1579 = bitcast float %1571 to i32
  %1580 = sitofp i32 %1579 to float
  %1581 = fadd fast float %1580, 0xC1CFBF8940000000
  %1582 = fmul fast float %1581, %576
  %1583 = fadd fast float %1582, 0x41CFBF8940000000
  %1584 = fptosi float %1583 to i32
  %1585 = bitcast i32 %1584 to float
  %1586 = fmul fast float %1578, %573
  %1587 = fmul fast float %1585, %573
  %1588 = fsub fast float %1571, %1586
  %1589 = fadd fast float %1587, %1571
  %1590 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1591 = call float @dx.op.unary.f32(i32 7, float %1589)  ; Saturate(value)
  %1592 = fsub fast float %1532, %1590
  %1593 = fadd fast float %1592, %1570
  %1594 = fsub fast float %1591, %1590
  %1595 = bitcast float %1594 to i32
  %1596 = sub nsw i32 2129859010, %1595
  %1597 = bitcast i32 %1596 to float
  %1598 = fmul fast float %1597, %1593
  %1599 = call float @dx.op.unary.f32(i32 7, float %1598)  ; Saturate(value)
  %1600 = fmul fast float %1519, %570
  %1601 = fmul fast float %1600, %1599
  %1602 = fmul fast float %1562, %1601
  %1603 = fmul fast float %1564, %1601
  %1604 = fadd fast float %1534, -1.000000e+00
  %1605 = fadd fast float %1604, %1566
  %1606 = fmul fast float %1601, %1605
  %1607 = fadd fast float %1606, 1.000000e+00
  %1608 = fsub fast float %1538, %564
  %1609 = fadd fast float %1608, %1568
  %1610 = fmul fast float %1601, %1609
  %1611 = fadd fast float %1610, %564
  %1612 = fmul fast float %1601, %1571
  %1613 = fadd fast float %1612, %1513
  br label %1614

; <label>:1614                                    ; preds = %1526, %1505
  %1615 = phi float [ %1613, %1526 ], [ %1513, %1505 ]
  %1616 = phi float [ %1602, %1526 ], [ 0.000000e+00, %1505 ]
  %1617 = phi float [ %1603, %1526 ], [ 0.000000e+00, %1505 ]
  %1618 = phi float [ %1607, %1526 ], [ 1.000000e+00, %1505 ]
  %1619 = phi float [ %1611, %1526 ], [ %564, %1505 ]
  %1620 = fsub fast float %1616, %1324
  %1621 = fsub fast float %1617, %1325
  %1622 = fmul fast float %1620, %1615
  %1623 = fmul fast float %1621, %1615
  %1624 = fadd fast float %1622, %1324
  %1625 = fadd fast float %1623, %1325
  %1626 = fsub fast float %1618, %1326
  %1627 = fmul fast float %1626, %1615
  %1628 = fadd fast float %1627, %1326
  %1629 = fsub fast float %1619, %1327
  %1630 = fmul fast float %1629, %1615
  %1631 = fadd fast float %1630, %1327
  %1632 = fmul fast float %1615, %996
  %1633 = call float @dx.op.binary.f32(i32 35, float %1323, float %1632)  ; FMax(a,b)
  br label %1634

; <label>:1634                                    ; preds = %1614, %1320
  %1635 = phi float [ %1633, %1614 ], [ %1323, %1320 ]
  %1636 = phi float [ %1624, %1614 ], [ %1324, %1320 ]
  %1637 = phi float [ %1625, %1614 ], [ %1325, %1320 ]
  %1638 = phi float [ %1628, %1614 ], [ %1326, %1320 ]
  %1639 = phi float [ %1631, %1614 ], [ %1327, %1320 ]
  %1640 = and i32 %502, 16
  %1641 = icmp eq i32 %1640, 0
  br i1 %1641, label %1642, label %1643

; <label>:1642                                    ; preds = %1634
  br label %1709

; <label>:1643                                    ; preds = %1634
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.CBufRet.f32 %1644, 1
  %1647 = fadd fast float %1645, %155
  %1648 = fadd fast float %1646, %156
  %1649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.f32 %1649, 0
  %1651 = extractvalue %dx.types.CBufRet.f32 %1649, 1
  %1652 = fsub fast float %1647, %1650
  %1653 = fsub fast float %1648, %1651
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 2
  %1656 = fmul fast float %1652, %1655
  %1657 = fmul fast float %1653, %1655
  %1658 = fadd fast float %1656, 5.000000e-01
  %1659 = fadd fast float %1657, 5.000000e-01
  %1660 = fcmp fast olt float %1658, 0.000000e+00
  %1661 = fcmp fast olt float %1659, 0.000000e+00
  %1662 = or i1 %1660, %1661
  %1663 = fcmp fast oge float %1658, 1.000000e+00
  %1664 = fcmp fast oge float %1659, 1.000000e+00
  %1665 = or i1 %1663, %1664
  %1666 = or i1 %1662, %1665
  br i1 %1666, label %1700, label %1667

; <label>:1667                                    ; preds = %1643
  %1668 = extractvalue %dx.types.CBufRet.f32 %1644, 2
  %1669 = fadd fast float %1668, %157
  %1670 = fmul fast float %1655, %1647
  %1671 = fmul fast float %1655, %1648
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 2
  %1674 = fsub fast float %1669, %1673
  %1675 = extractvalue %dx.types.CBufRet.f32 %1672, 1
  %1676 = fmul fast float %1674, %1675
  %1677 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1678 = call float @dx.op.binary.f32(i32 36, float %1659, float %1677)  ; FMin(a,b)
  %1679 = call float @dx.op.binary.f32(i32 36, float %1658, float %1678)  ; FMin(a,b)
  %1680 = call float @dx.op.binary.f32(i32 35, float %1659, float %1677)  ; FMax(a,b)
  %1681 = call float @dx.op.binary.f32(i32 35, float %1658, float %1680)  ; FMax(a,b)
  %1682 = fsub fast float 1.000000e+00, %1681
  %1683 = call float @dx.op.binary.f32(i32 36, float %1679, float %1682)  ; FMin(a,b)
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 3
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 1
  %1688 = call float @dx.op.binary.f32(i32 35, float %1687, float %1685)  ; FMax(a,b)
  %1689 = fsub fast float %1688, %1687
  %1690 = fsub fast float %1683, %1687
  %1691 = fdiv fast float %1690, %1689
  %1692 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1693 = fmul fast float %1692, 2.000000e+00
  %1694 = fsub fast float 3.000000e+00, %1693
  %1695 = fmul fast float %1692, %1692
  %1696 = fmul fast float %1695, %1694
  %1697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %62, float %1670, float %1671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1698 = extractvalue %dx.types.ResRet.f32 %1697, 0
  %1699 = fmul fast float %1696, %1698
  br label %1700

; <label>:1700                                    ; preds = %1667, %1643
  %1701 = phi float [ %1699, %1667 ], [ 0.000000e+00, %1643 ]
  %1702 = fmul fast float %638, %237
  %1703 = fmul fast float %638, %238
  %1704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1705 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %1704, float %1702, float %1703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1706 = extractvalue %dx.types.ResRet.f32 %1705, 0
  %1707 = fmul fast float %1706, %1701
  %1708 = call float @dx.op.binary.f32(i32 35, float %1635, float %1707)  ; FMax(a,b)
  br label %1709

; <label>:1709                                    ; preds = %1700, %1642
  %1710 = phi float [ %1708, %1700 ], [ %1635, %1642 ]
  %1711 = fmul fast float %238, 3.906250e-03
  %1712 = fmul fast float %237, 7.812500e-03
  %1713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1714 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %704, %dx.types.Handle %1713, float %1712, float %1711, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %1715 = add i32 %655, 0
  %1716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1715, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1717 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1716, i32 0)  ; GetDimensions(handle,mipLevel)
  %1718 = extractvalue %dx.types.Dimensions %1717, 0
  %1719 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1718)  ; FirstbitLo(value)
  %1720 = uitofp i32 %1719 to float
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 1
  %1723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1724 = extractvalue %dx.types.CBufRet.f32 %1723, 2
  %1725 = fadd fast float %247, -7.000000e+00
  %1726 = fadd fast float %1725, %1720
  %1727 = fadd fast float %1726, %1722
  %1728 = fadd fast float %1727, %1724
  %1729 = call float @dx.op.binary.f32(i32 35, float %1728, float 0.000000e+00)  ; FMax(a,b)
  %1730 = and i32 %502, 8
  %1731 = icmp eq i32 %1730, 0
  br i1 %1731, label %1748, label %1732

; <label>:1732                                    ; preds = %1709
  %1733 = fadd fast float %635, 1.000000e+00
  %1734 = fmul fast float %996, %1733
  %1735 = fsub fast float %1734, %635
  %1736 = fsub fast float %1733, %1735
  %1737 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1738 = fsub fast float 1.000000e+00, %1734
  %1739 = call float @dx.op.unary.f32(i32 7, float %1738)  ; Saturate(value)
  %1740 = fsub fast float %1737, %1739
  %1741 = fsub fast float %1710, %1739
  %1742 = fdiv fast float %1741, %1740
  %1743 = call float @dx.op.unary.f32(i32 7, float %1742)  ; Saturate(value)
  %1744 = fmul fast float %1743, 2.000000e+00
  %1745 = fsub fast float 3.000000e+00, %1744
  %1746 = fmul fast float %1743, %1743
  %1747 = fmul fast float %1746, %1745
  br label %1748

; <label>:1748                                    ; preds = %1732, %1709
  %1749 = phi float [ %1747, %1732 ], [ %1710, %1709 ]
  %1750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1751 = extractvalue %dx.types.CBufRet.f32 %1750, 3
  %1752 = fmul fast float %1751, %1749
  %1753 = fmul fast float %1752, %496
  %1754 = fadd fast float %1753, %457
  %1755 = call float @dx.op.unary.f32(i32 7, float %1754)  ; Saturate(value)
  %1756 = and i32 %502, 32
  %1757 = icmp eq i32 %1756, 0
  br i1 %1757, label %1774, label %1758

; <label>:1758                                    ; preds = %1748
  %1759 = add i32 %658, 0
  %1760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1759, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1760, %dx.types.Handle %63, float %1752, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1762 = extractvalue %dx.types.ResRet.f32 %1761, 0
  %1763 = extractvalue %dx.types.ResRet.f32 %1761, 1
  %1764 = extractvalue %dx.types.ResRet.f32 %1761, 2
  %1765 = extractvalue %dx.types.ResRet.f32 %1761, 3
  %1766 = and i32 %652, 255
  %1767 = uitofp i32 %1766 to float
  %1768 = lshr i32 %652, 8
  %1769 = and i32 %1768, 255
  %1770 = uitofp i32 %1769 to float
  %1771 = fmul fast float %1765, %1767
  %1772 = fadd fast float %1771, %1770
  %1773 = fmul fast float %1772, 0x3F70101000000000
  br label %1774

; <label>:1774                                    ; preds = %1758, %1748
  %1775 = phi float [ %1762, %1758 ], [ %558, %1748 ]
  %1776 = phi float [ %1763, %1758 ], [ %559, %1748 ]
  %1777 = phi float [ %1764, %1758 ], [ %560, %1748 ]
  %1778 = phi float [ %1773, %1758 ], [ %561, %1748 ]
  %1779 = fsub fast float %1775, %514
  %1780 = fsub fast float %1776, %515
  %1781 = fsub fast float %1777, %516
  %1782 = fmul fast float %1779, %1752
  %1783 = fmul fast float %1780, %1752
  %1784 = fmul fast float %1781, %1752
  %1785 = fadd fast float %1782, %514
  %1786 = fadd fast float %1783, %515
  %1787 = fadd fast float %1784, %516
  %1788 = fsub fast float %1778, %517
  %1789 = fmul fast float %1788, %1752
  %1790 = fadd fast float %1789, %517
  %1791 = fsub fast float %1639, %520
  %1792 = fmul fast float %1752, %1791
  %1793 = fadd fast float %1792, %520
  %1794 = fadd fast float %1638, -1.000000e+00
  %1795 = fmul fast float %1752, %1794
  %1796 = fadd fast float %1795, 1.000000e+00
  %1797 = fmul fast float %1753, %1636
  %1798 = fmul fast float %1753, %1637
  %1799 = fadd fast float %1797, %1321
  %1800 = fadd fast float %1798, %1322
  %1801 = fmul fast float %523, %378
  %1802 = fadd fast float %1801, %524
  %1803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1803, 2
  %1805 = fcmp fast oge float %1802, %1804
  %1806 = select i1 %1805, i32 512, i32 0
  %1807 = or i32 %1024, %454
  %1808 = or i32 %1807, %1030
  %1809 = or i32 %1808, %1341
  %1810 = or i32 %1809, %1006
  %1811 = or i32 %1810, %1022
  %1812 = or i32 %1811, %1008
  %1813 = or i32 %1812, %1028
  %1814 = or i32 %1813, %1345
  %1815 = or i32 %1814, %1806
  %1816 = and i32 %449, 65535
  %1817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1816)  ; LegacyF16ToF32(value)
  %1818 = lshr i32 %449, 16
  %1819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1818)  ; LegacyF16ToF32(value)
  %1820 = and i32 %450, 65535
  %1821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1820)  ; LegacyF16ToF32(value)
  %1822 = lshr i32 %450, 16
  %1823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1822)  ; LegacyF16ToF32(value)
  %1824 = fmul fast float %1785, %496
  %1825 = fmul fast float %1786, %496
  %1826 = fmul fast float %1787, %496
  %1827 = fmul fast float %1790, %496
  %1828 = fadd fast float %1817, %1824
  %1829 = fadd fast float %1819, %1825
  %1830 = fadd fast float %1821, %1826
  %1831 = fadd fast float %1823, %1827
  %1832 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1828)  ; LegacyF32ToF16(value)
  %1833 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1829)  ; LegacyF32ToF16(value)
  %1834 = shl i32 %1833, 16
  %1835 = or i32 %1834, %1832
  %1836 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1830)  ; LegacyF32ToF16(value)
  %1837 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1831)  ; LegacyF32ToF16(value)
  %1838 = shl i32 %1837, 16
  %1839 = or i32 %1838, %1836
  %1840 = and i32 %453, 65535
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = lshr i32 %453, 16
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = fmul fast float %1796, %496
  %1845 = fmul fast float %1793, %496
  %1846 = fadd fast float %1841, %1844
  %1847 = fadd fast float %1843, %1845
  %1848 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1846)  ; LegacyF32ToF16(value)
  %1849 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1847)  ; LegacyF32ToF16(value)
  %1850 = shl i32 %1849, 16
  %1851 = or i32 %1850, %1848
  br label %1852

; <label>:1852                                    ; preds = %1774, %438
  %1853 = phi i32 [ %684, %1774 ], [ %439, %438 ]
  %1854 = phi float [ %1799, %1774 ], [ %440, %438 ]
  %1855 = phi float [ %1800, %1774 ], [ %441, %438 ]
  %1856 = phi float [ %998, %1774 ], [ %442, %438 ]
  %1857 = phi float [ %999, %1774 ], [ %443, %438 ]
  %1858 = phi float [ %1000, %1774 ], [ %444, %438 ]
  %1859 = phi float [ %701, %1774 ], [ %445, %438 ]
  %1860 = phi float [ %1002, %1774 ], [ %446, %438 ]
  %1861 = phi float [ %1004, %1774 ], [ %447, %438 ]
  %1862 = phi i32 [ %499, %1774 ], [ %448, %438 ]
  %1863 = phi i32 [ %1835, %1774 ], [ %449, %438 ]
  %1864 = phi i32 [ %1839, %1774 ], [ %450, %438 ]
  %1865 = phi float [ %1020, %1774 ], [ %451, %438 ]
  %1866 = phi float [ %1339, %1774 ], [ %452, %438 ]
  %1867 = phi i32 [ %1851, %1774 ], [ %453, %438 ]
  %1868 = phi i32 [ %1815, %1774 ], [ %454, %438 ]
  %1869 = phi float [ %1714, %1774 ], [ %455, %438 ]
  %1870 = phi float [ %1729, %1774 ], [ %456, %438 ]
  %1871 = phi float [ %1755, %1774 ], [ %457, %438 ]
  %1872 = phi i32 [ %686, %1774 ], [ %458, %438 ]
  %1873 = phi float [ %687, %1774 ], [ %459, %438 ]
  %1874 = icmp eq i32 %465, 0
  br i1 %1874, label %1875, label %438

; <label>:1875                                    ; preds = %1852
  br label %1876

; <label>:1876                                    ; preds = %1875, %433
  %1877 = phi i32 [ %205, %433 ], [ %1853, %1875 ]
  %1878 = phi float [ 0.000000e+00, %433 ], [ %1854, %1875 ]
  %1879 = phi float [ 0.000000e+00, %433 ], [ %1855, %1875 ]
  %1880 = phi float [ 0.000000e+00, %433 ], [ %1856, %1875 ]
  %1881 = phi float [ 0.000000e+00, %433 ], [ %1857, %1875 ]
  %1882 = phi float [ 0.000000e+00, %433 ], [ %1858, %1875 ]
  %1883 = phi float [ 0.000000e+00, %433 ], [ %1859, %1875 ]
  %1884 = phi float [ 0.000000e+00, %433 ], [ %1860, %1875 ]
  %1885 = phi float [ 0.000000e+00, %433 ], [ %1861, %1875 ]
  %1886 = phi i32 [ 0, %433 ], [ %1862, %1875 ]
  %1887 = phi i32 [ %182, %433 ], [ %1863, %1875 ]
  %1888 = phi i32 [ %182, %433 ], [ %1864, %1875 ]
  %1889 = phi float [ 0.000000e+00, %433 ], [ %1865, %1875 ]
  %1890 = phi float [ 0.000000e+00, %433 ], [ %1866, %1875 ]
  %1891 = phi i32 [ %182, %433 ], [ %1867, %1875 ]
  %1892 = phi i32 [ 0, %433 ], [ %1868, %1875 ]
  %1893 = phi float [ 0.000000e+00, %433 ], [ %1869, %1875 ]
  %1894 = phi float [ 0.000000e+00, %433 ], [ %1870, %1875 ]
  %1895 = phi float [ 0.000000e+00, %433 ], [ %1871, %1875 ]
  %1896 = phi i32 [ -1, %433 ], [ %1872, %1875 ]
  %1897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1897, 0
  %1899 = extractvalue %dx.types.CBufRet.f32 %1897, 1
  %1900 = extractvalue %dx.types.CBufRet.f32 %1897, 2
  %1901 = fadd fast float %1898, %155
  %1902 = fadd fast float %1899, %156
  %1903 = fadd fast float %1900, %157
  %1904 = call float @dx.op.unary.f32(i32 83, float %1901)  ; DerivCoarseX(value)
  %1905 = call float @dx.op.unary.f32(i32 83, float %1902)  ; DerivCoarseX(value)
  %1906 = call float @dx.op.unary.f32(i32 83, float %1903)  ; DerivCoarseX(value)
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 2
  %1909 = fmul fast float %1908, %1904
  %1910 = fmul fast float %1908, %1905
  %1911 = fmul fast float %1908, %1906
  %1912 = call float @dx.op.unary.f32(i32 84, float %1901)  ; DerivCoarseY(value)
  %1913 = call float @dx.op.unary.f32(i32 84, float %1902)  ; DerivCoarseY(value)
  %1914 = call float @dx.op.unary.f32(i32 84, float %1903)  ; DerivCoarseY(value)
  %1915 = fmul fast float %1908, %1912
  %1916 = fmul fast float %1908, %1913
  %1917 = fmul fast float %1908, %1914
  %1918 = fmul fast float %1917, %1910
  %1919 = fmul fast float %1916, %1911
  %1920 = fsub fast float %1918, %1919
  %1921 = fmul fast float %1915, %1911
  %1922 = fmul fast float %1917, %1909
  %1923 = fsub fast float %1921, %1922
  %1924 = fmul fast float %1916, %1909
  %1925 = fmul fast float %1915, %1910
  %1926 = fsub fast float %1924, %1925
  %1927 = fmul fast float %1920, %1920
  %1928 = fmul fast float %1923, %1923
  %1929 = fadd fast float %1927, %1928
  %1930 = fmul fast float %1926, %1926
  %1931 = fadd fast float %1929, %1930
  %1932 = call float @dx.op.unary.f32(i32 24, float %1931)  ; Sqrt(value)
  %1933 = icmp eq i32 %1896, -1
  br i1 %1933, label %2028, label %1934

; <label>:1934                                    ; preds = %1876
  %1935 = mul i32 %1896, 928
  %1936 = add i32 %1935, 832
  %1937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  %1939 = add i32 %1935, 836
  %1940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %1939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1942 = add i32 %1935, 920
  %1943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 0
  %1945 = add i32 %1935, 924
  %1946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %1947 = extractvalue %dx.types.ResRet.f32 %1946, 0
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 0
  %1950 = fmul fast float %1949, %1941
  %1951 = extractvalue %dx.types.CBufRet.f32 %1948, 1
  %1952 = fadd fast float %1950, %1951
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 210)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 0
  %1955 = fadd fast float %1954, %1938
  %1956 = fcmp fast ogt float %1952, 0.000000e+00
  %1957 = fcmp fast ogt float %1895, %1955
  %1958 = and i1 %1956, %1957
  br i1 %1958, label %1959, label %2028

; <label>:1959                                    ; preds = %1934
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 3
  %1962 = fmul fast float %1901, 7.000000e+00
  %1963 = fadd fast float %1962, 9.175040e+05
  %1964 = fmul fast float %1902, 9.000000e+00
  %1965 = fadd fast float %1964, 1.179648e+06
  %1966 = fmul fast float %1961, 1.370000e+02
  %1967 = bitcast float %1963 to i32
  %1968 = bitcast float %1965 to i32
  %1969 = bitcast float %1966 to i32
  %1970 = shl i32 %1968, 17
  %1971 = xor i32 %1970, %1967
  %1972 = xor i32 %1971, %1969
  %1973 = xor i32 %1972, 61
  %1974 = lshr i32 %1972, 16
  %1975 = xor i32 %1973, %1974
  %1976 = mul i32 %1975, 9
  %1977 = lshr i32 %1976, 4
  %1978 = xor i32 %1977, %1976
  %1979 = mul i32 %1978, 668265261
  %1980 = lshr i32 %1979, 15
  %1981 = xor i32 %1980, %1979
  %1982 = uitofp i32 %1981 to float
  %1983 = fmul fast float %1982, 0x3DF0000000000000
  %1984 = fmul fast float %1952, %1932
  %1985 = fcmp fast ugt float %1983, %1984
  br i1 %1985, label %2028, label %1986

; <label>:1986                                    ; preds = %1959
  %1987 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 6)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1988 = add i32 %1987, 6
  %1989 = icmp ugt i32 %1988, 4095
  br i1 %1989, label %1990, label %1993

; <label>:1990                                    ; preds = %1986
  %1991 = icmp ult i32 %1987, 4096
  br i1 %1991, label %1992, label %1993

; <label>:1992                                    ; preds = %1990
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1987, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1993

; <label>:1993                                    ; preds = %1992, %1990, %1986
  %1994 = phi i32 [ %1987, %1986 ], [ 0, %1992 ], [ 0, %1990 ]
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2028, label %1996

; <label>:1996                                    ; preds = %1993
  %1997 = fsub fast float %1903, %312
  %1998 = shl i32 %1896, 16
  %1999 = or i32 %1998, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1994, i32 0, i32 %1999, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2000 = bitcast float %1997 to i32
  %2001 = add i32 %1994, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2001, i32 0, i32 %2000, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2002 = bitcast float %1901 to i32
  %2003 = add i32 %1994, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2003, i32 0, i32 %2002, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2004 = bitcast float %1902 to i32
  %2005 = add i32 %1994, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2005, i32 0, i32 %2004, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2006 = bitcast float %1903 to i32
  %2007 = add i32 %1994, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2007, i32 0, i32 %2006, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2008 = fadd fast float %119, 1.000000e+00
  %2009 = fadd fast float %120, 1.000000e+00
  %2010 = fadd fast float %121, 1.000000e+00
  %2011 = fmul fast float %2008, 5.000000e-01
  %2012 = fmul fast float %2009, 5.000000e-01
  %2013 = fmul fast float %2010, 5.000000e-01
  %2014 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  %2015 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2016 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  %2017 = fmul fast float %2014, 1.023000e+03
  %2018 = fmul fast float %2015, 1.023000e+03
  %2019 = fmul fast float %2016, 1.023000e+03
  %2020 = fptoui float %2017 to i32
  %2021 = fptoui float %2018 to i32
  %2022 = fptoui float %2019 to i32
  %2023 = shl i32 %2021, 10
  %2024 = or i32 %2023, %2020
  %2025 = shl i32 %2022, 20
  %2026 = or i32 %2024, %2025
  %2027 = add i32 %1994, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2027, i32 0, i32 %2026, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2028

; <label>:2028                                    ; preds = %1996, %1993, %1959, %1934, %1876
  %2029 = phi float [ %1944, %1996 ], [ %1944, %1993 ], [ %1944, %1959 ], [ %1944, %1934 ], [ 0.000000e+00, %1876 ]
  %2030 = phi float [ %1947, %1996 ], [ %1947, %1993 ], [ %1947, %1959 ], [ %1947, %1934 ], [ 0.000000e+00, %1876 ]
  %2031 = phi i32 [ 1, %1996 ], [ 1, %1993 ], [ 1, %1959 ], [ 0, %1934 ], [ 0, %1876 ]
  %2032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2032, 2
  %2034 = fmul fast float %2033, 0x3FE3C6EF40000000
  %2035 = frem fast float %100, 2.560000e+02
  %2036 = frem fast float %101, 2.560000e+02
  %2037 = fptoui float %2035 to i32
  %2038 = fptoui float %2036 to i32
  %2039 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %2037, i32 %2038, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2040 = extractvalue %dx.types.ResRet.f32 %2039, 0
  %2041 = extractvalue %dx.types.ResRet.f32 %2039, 1
  %2042 = fadd fast float %2040, %2034
  %2043 = fadd fast float %2041, %2034
  %2044 = call float @dx.op.unary.f32(i32 22, float %2042)  ; Frc(value)
  %2045 = call float @dx.op.unary.f32(i32 22, float %2043)  ; Frc(value)
  %2046 = fcmp fast ogt float %121, 0.000000e+00
  %2047 = fcmp fast olt float %121, 0.000000e+00
  %2048 = zext i1 %2046 to i32
  %2049 = zext i1 %2047 to i32
  %2050 = sub nsw i32 %2048, %2049
  %2051 = sitofp i32 %2050 to float
  %2052 = fadd fast float %2051, %121
  %2053 = fdiv fast float -1.000000e+00, %2052
  %2054 = fmul fast float %119, %120
  %2055 = fmul fast float %2054, %2053
  %2056 = fmul fast float %119, %119
  %2057 = fmul fast float %2056, %2051
  %2058 = fmul fast float %2057, %2053
  %2059 = fadd fast float %2058, 1.000000e+00
  %2060 = fmul fast float %2055, %2051
  %2061 = fmul fast float %2051, %119
  %2062 = fsub fast float -0.000000e+00, %2061
  %2063 = fmul fast float %120, %120
  %2064 = fmul fast float %2063, %2053
  %2065 = fadd fast float %2064, %2051
  %2066 = fsub fast float -0.000000e+00, %120
  %2067 = and i32 %1887, 65535
  %2068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2067)  ; LegacyF16ToF32(value)
  %2069 = lshr i32 %1887, 16
  %2070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2069)  ; LegacyF16ToF32(value)
  %2071 = and i32 %1888, 65535
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = lshr i32 %1888, 16
  %2074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2073)  ; LegacyF16ToF32(value)
  %2075 = and i32 %1891, 65535
  %2076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2075)  ; LegacyF16ToF32(value)
  %2077 = lshr i32 %1891, 16
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = call float @dx.op.unary.f32(i32 7, float %2078)  ; Saturate(value)
  %2080 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %2081 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %2082 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %2083 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %2084 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %2085 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %2086 = fadd fast float %2080, %155
  %2087 = fadd fast float %2081, %156
  %2088 = fadd fast float %2082, %157
  %2089 = fadd fast float %2083, %155
  %2090 = fadd fast float %2084, %156
  %2091 = fadd fast float %2085, %157
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.CBufRet.f32 %2092, 1
  %2095 = extractvalue %dx.types.CBufRet.f32 %2092, 2
  %2096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2097 = extractvalue %dx.types.CBufRet.f32 %2096, 2
  %2098 = extractvalue %dx.types.CBufRet.f32 %2096, 3
  %2099 = fmul fast float %2093, %100
  %2100 = fmul fast float %2099, %2097
  %2101 = fmul fast float %2094, %101
  %2102 = fmul fast float %2101, %2098
  %2103 = fptoui float %2100 to i32
  %2104 = fptoui float %2102 to i32
  %2105 = fadd fast float %2093, -1.000000e+00
  %2106 = fadd fast float %2094, -1.000000e+00
  %2107 = fptoui float %2105 to i32
  %2108 = fptoui float %2106 to i32
  %2109 = call i32 @dx.op.binary.i32(i32 40, i32 %2103, i32 %2107)  ; UMin(a,b)
  %2110 = call i32 @dx.op.binary.i32(i32 40, i32 %2104, i32 %2108)  ; UMin(a,b)
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 2
  %2113 = extractvalue %dx.types.CBufRet.f32 %2111, 3
  %2114 = fmul fast float %2112, %89
  %2115 = fsub fast float %2114, %2113
  %2116 = fadd fast float %2095, -1.000000e+00
  %2117 = call float @dx.op.binary.f32(i32 36, float %2115, float %2116)  ; FMin(a,b)
  %2118 = fptoui float %2117 to i32
  %2119 = fptoui float %2093 to i32
  %2120 = fptoui float %2094 to i32
  %2121 = mul i32 %2118, %2120
  %2122 = add i32 %2121, %2110
  %2123 = mul i32 %2122, %2119
  %2124 = add i32 %2123, %2109
  %2125 = shl i32 %2124, 2
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = and i32 %2127, 1023
  %2129 = lshr i32 %2127, 10
  %2130 = icmp eq i32 %2128, 0
  br i1 %2130, label %2527, label %2131

; <label>:2131                                    ; preds = %2028
  %2132 = and i32 %2127, 1023
  br label %2133

; <label>:2133                                    ; preds = %2254, %2131
  %2134 = phi float [ %2255, %2254 ], [ 0.000000e+00, %2131 ]
  %2135 = phi float [ %2256, %2254 ], [ 0.000000e+00, %2131 ]
  %2136 = phi float [ %2257, %2254 ], [ 0.000000e+00, %2131 ]
  %2137 = phi float [ %2258, %2254 ], [ %1878, %2131 ]
  %2138 = phi float [ %2259, %2254 ], [ %1879, %2131 ]
  %2139 = phi float [ %2260, %2254 ], [ %2076, %2131 ]
  %2140 = phi float [ %2261, %2254 ], [ %2079, %2131 ]
  %2141 = phi float [ %2262, %2254 ], [ 0.000000e+00, %2131 ]
  %2142 = phi float [ %2263, %2254 ], [ %2074, %2131 ]
  %2143 = phi float [ %2264, %2254 ], [ %2068, %2131 ]
  %2144 = phi float [ %2265, %2254 ], [ %2070, %2131 ]
  %2145 = phi float [ %2266, %2254 ], [ %2072, %2131 ]
  %2146 = phi i32 [ %2267, %2254 ], [ 0, %2131 ]
  %2147 = phi i32 [ %2203, %2254 ], [ 0, %2131 ]
  %2148 = add nuw nsw i32 %2147, %2129
  %2149 = shl i32 %2148, 2
  %2150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2149, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.i32 %2150, 0
  %2152 = shl i32 %2151, 8
  %2153 = or i32 %2152, 48
  %2154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.f32 %2154, 0
  %2156 = extractvalue %dx.types.ResRet.f32 %2154, 1
  %2157 = extractvalue %dx.types.ResRet.f32 %2154, 2
  %2158 = extractvalue %dx.types.ResRet.f32 %2154, 3
  %2159 = or i32 %2152, 64
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = extractvalue %dx.types.ResRet.i32 %2160, 1
  %2163 = or i32 %2152, 80
  %2164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2163, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.f32 %2164, 2
  %2166 = extractvalue %dx.types.ResRet.f32 %2164, 3
  %2167 = or i32 %2152, 96
  %2168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.ResRet.f32 %2168, 1
  %2171 = extractvalue %dx.types.ResRet.f32 %2168, 2
  %2172 = extractvalue %dx.types.ResRet.f32 %2168, 3
  %2173 = or i32 %2152, 112
  %2174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2173, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.f32 %2174, 2
  %2176 = or i32 %2152, 128
  %2177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.f32 %2177, 0
  %2179 = extractvalue %dx.types.ResRet.f32 %2177, 1
  %2180 = extractvalue %dx.types.ResRet.f32 %2177, 2
  %2181 = extractvalue %dx.types.ResRet.f32 %2177, 3
  %2182 = or i32 %2152, 144
  %2183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2182, i32 undef)  ; BufferLoad(srv,index,wot)
  %2184 = extractvalue %dx.types.ResRet.f32 %2183, 0
  %2185 = extractvalue %dx.types.ResRet.f32 %2183, 1
  %2186 = extractvalue %dx.types.ResRet.f32 %2183, 2
  %2187 = extractvalue %dx.types.ResRet.f32 %2183, 3
  %2188 = or i32 %2152, 160
  %2189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2188, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.f32 %2189, 0
  %2191 = extractvalue %dx.types.ResRet.f32 %2189, 1
  %2192 = extractvalue %dx.types.ResRet.f32 %2189, 2
  %2193 = or i32 %2152, 192
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = or i32 %2152, 208
  %2197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2196, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.f32 %2197, 0
  %2199 = or i32 %2152, 248
  %2200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.f32 %2200, 0
  %2202 = extractvalue %dx.types.ResRet.f32 %2200, 1
  %2203 = add nuw nsw i32 %2147, 1
  %2204 = bitcast float %2158 to i32
  %2205 = and i32 %2204, 512
  %2206 = icmp ne i32 %2205, 0
  %2207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.f32 %2207, 0
  %2209 = extractvalue %dx.types.ResRet.f32 %2207, 1
  %2210 = extractvalue %dx.types.ResRet.f32 %2207, 2
  %2211 = extractvalue %dx.types.ResRet.f32 %2207, 3
  %2212 = call float @dx.op.dot4.f32(i32 56, float %2208, float %2209, float %2210, float %2211, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2213 = or i32 %2152, 16
  %2214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.f32 %2214, 0
  %2216 = extractvalue %dx.types.ResRet.f32 %2214, 1
  %2217 = extractvalue %dx.types.ResRet.f32 %2214, 2
  %2218 = extractvalue %dx.types.ResRet.f32 %2214, 3
  %2219 = call float @dx.op.dot4.f32(i32 56, float %2215, float %2216, float %2217, float %2218, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2220 = or i32 %2152, 32
  %2221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.f32 %2221, 0
  %2223 = extractvalue %dx.types.ResRet.f32 %2221, 1
  %2224 = extractvalue %dx.types.ResRet.f32 %2221, 2
  %2225 = extractvalue %dx.types.ResRet.f32 %2221, 3
  %2226 = call float @dx.op.dot4.f32(i32 56, float %2222, float %2223, float %2224, float %2225, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2227 = call float @dx.op.unary.f32(i32 27, float %2212)  ; Round_ni(value)
  %2228 = call float @dx.op.unary.f32(i32 6, float %2227)  ; FAbs(value)
  %2229 = call float @dx.op.unary.f32(i32 27, float %2219)  ; Round_ni(value)
  %2230 = call float @dx.op.unary.f32(i32 6, float %2229)  ; FAbs(value)
  %2231 = call float @dx.op.unary.f32(i32 6, float %2226)  ; FAbs(value)
  %2232 = call float @dx.op.unary.f32(i32 27, float %2231)  ; Round_ni(value)
  %2233 = fadd fast float %2230, %2228
  %2234 = fadd fast float %2233, %2232
  %2235 = fcmp fast oeq float %2234, 0.000000e+00
  %2236 = call float @dx.op.dot4.f32(i32 56, float %2208, float %2209, float %2210, float %2211, float %2086, float %2087, float %2088, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2237 = call float @dx.op.dot4.f32(i32 56, float %2215, float %2216, float %2217, float %2218, float %2086, float %2087, float %2088, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2238 = call float @dx.op.dot4.f32(i32 56, float %2208, float %2209, float %2210, float %2211, float %2089, float %2090, float %2091, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2239 = call float @dx.op.dot4.f32(i32 56, float %2215, float %2216, float %2217, float %2218, float %2089, float %2090, float %2091, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2240 = fsub fast float %2236, %2212
  %2241 = fsub fast float %2238, %2212
  %2242 = fsub fast float %2237, %2219
  %2243 = fsub fast float %2239, %2219
  %2244 = call float @dx.op.dot3.f32(i32 55, float %2155, float %2156, float %2157, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 2
  %2247 = call float @dx.op.unary.f32(i32 6, float %2244)  ; FAbs(value)
  %2248 = fadd fast float %2247, %2246
  %2249 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2250 = extractvalue %dx.types.CBufRet.f32 %2245, 0
  %2251 = fcmp fast ogt float %2249, %2250
  %2252 = and i1 %2235, %2251
  %2253 = and i1 %2206, %2252
  br i1 %2253, label %2269, label %2254

; <label>:2254                                    ; preds = %2513, %2351, %2269, %2133
  %2255 = phi float [ %2134, %2269 ], [ %2134, %2351 ], [ %2523, %2513 ], [ %2134, %2133 ]
  %2256 = phi float [ %2135, %2269 ], [ %2135, %2351 ], [ %2524, %2513 ], [ %2135, %2133 ]
  %2257 = phi float [ %2136, %2269 ], [ %2136, %2351 ], [ %2525, %2513 ], [ %2136, %2133 ]
  %2258 = phi float [ %2137, %2269 ], [ %2137, %2351 ], [ %2487, %2513 ], [ %2137, %2133 ]
  %2259 = phi float [ %2138, %2269 ], [ %2138, %2351 ], [ %2488, %2513 ], [ %2138, %2133 ]
  %2260 = phi float [ %2139, %2269 ], [ %2139, %2351 ], [ %2482, %2513 ], [ %2139, %2133 ]
  %2261 = phi float [ %2140, %2269 ], [ %2140, %2351 ], [ %2479, %2513 ], [ %2140, %2133 ]
  %2262 = phi float [ %2141, %2269 ], [ %2141, %2351 ], [ %2476, %2513 ], [ %2141, %2133 ]
  %2263 = phi float [ %2142, %2269 ], [ %2142, %2351 ], [ %2474, %2513 ], [ %2142, %2133 ]
  %2264 = phi float [ %2143, %2269 ], [ %2143, %2351 ], [ %2469, %2513 ], [ %2143, %2133 ]
  %2265 = phi float [ %2144, %2269 ], [ %2144, %2351 ], [ %2470, %2513 ], [ %2144, %2133 ]
  %2266 = phi float [ %2145, %2269 ], [ %2145, %2351 ], [ %2471, %2513 ], [ %2145, %2133 ]
  %2267 = phi i32 [ %2277, %2269 ], [ %2277, %2351 ], [ %2277, %2513 ], [ %2146, %2133 ]
  %2268 = icmp eq i32 %2203, %2132
  br i1 %2268, label %2526, label %2133

; <label>:2269                                    ; preds = %2133
  %2270 = extractvalue %dx.types.ResRet.f32 %2174, 3
  %2271 = extractvalue %dx.types.ResRet.f32 %2174, 1
  %2272 = extractvalue %dx.types.ResRet.f32 %2174, 0
  %2273 = extractvalue %dx.types.ResRet.f32 %2164, 1
  %2274 = extractvalue %dx.types.ResRet.f32 %2164, 0
  %2275 = extractvalue %dx.types.ResRet.i32 %2160, 3
  %2276 = extractvalue %dx.types.ResRet.i32 %2160, 2
  %2277 = add i32 %2146, 1
  %2278 = add i32 %2275, 0
  %2279 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2278, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2281 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2279, %dx.types.Handle %2280, float %2212, float %2219, float undef, float undef, i32 0, i32 0, i32 undef, float %2240, float %2242, float undef, float %2241, float %2243, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2282 = extractvalue %dx.types.ResRet.f32 %2281, 0
  %2283 = fmul fast float %2282, %2274
  %2284 = fadd fast float %2283, %2273
  %2285 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2286 = fmul fast float %2212, %2169
  %2287 = call float @dx.op.tertiary.f32(i32 46, float %2170, float %2219, float %2286)  ; FMad(a,b,c)
  %2288 = fadd fast float %2287, %2272
  %2289 = fmul fast float %2212, %2171
  %2290 = call float @dx.op.tertiary.f32(i32 46, float %2172, float %2219, float %2289)  ; FMad(a,b,c)
  %2291 = fadd fast float %2290, %2271
  %2292 = fmul fast float %2240, %2169
  %2293 = call float @dx.op.tertiary.f32(i32 46, float %2170, float %2242, float %2292)  ; FMad(a,b,c)
  %2294 = fmul fast float %2240, %2171
  %2295 = call float @dx.op.tertiary.f32(i32 46, float %2172, float %2242, float %2294)  ; FMad(a,b,c)
  %2296 = fmul fast float %2241, %2169
  %2297 = call float @dx.op.tertiary.f32(i32 46, float %2170, float %2243, float %2296)  ; FMad(a,b,c)
  %2298 = fmul fast float %2241, %2171
  %2299 = call float @dx.op.tertiary.f32(i32 46, float %2172, float %2243, float %2298)  ; FMad(a,b,c)
  %2300 = add i32 %2276, 0
  %2301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2300, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2302 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2301, %dx.types.Handle %2280, float %2288, float %2291, float undef, float undef, i32 0, i32 0, i32 undef, float %2293, float %2295, float undef, float %2297, float %2299, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2303 = extractvalue %dx.types.ResRet.f32 %2302, 0
  %2304 = and i32 %2204, 1024
  %2305 = icmp ne i32 %2304, 0
  %2306 = fcmp fast ogt float %2303, 0x3FE0101020000000
  %2307 = uitofp i1 %2306 to float
  %2308 = select i1 %2305, float %2307, float %2303
  %2309 = and i32 %2204, 8192
  %2310 = icmp ne i32 %2309, 0
  %2311 = select i1 %2310, float %2270, float 1.000000e+00
  %2312 = fmul fast float %2212, 2.000000e+00
  %2313 = fadd fast float %2312, -1.000000e+00
  %2314 = call float @dx.op.unary.f32(i32 6, float %2313)  ; FAbs(value)
  %2315 = fmul fast float %2314, %2201
  %2316 = fsub fast float %2315, %2201
  %2317 = call float @dx.op.unary.f32(i32 7, float %2316)  ; Saturate(value)
  %2318 = fmul fast float %2219, 2.000000e+00
  %2319 = fadd fast float %2318, -1.000000e+00
  %2320 = call float @dx.op.unary.f32(i32 6, float %2319)  ; FAbs(value)
  %2321 = fmul fast float %2320, %2202
  %2322 = fsub fast float %2321, %2202
  %2323 = call float @dx.op.unary.f32(i32 7, float %2322)  ; Saturate(value)
  %2324 = fmul fast float %2231, %2165
  %2325 = fsub fast float %2324, %2165
  %2326 = call float @dx.op.unary.f32(i32 7, float %2325)  ; Saturate(value)
  %2327 = fmul fast float %2285, %2311
  %2328 = fmul fast float %2327, %2282
  %2329 = fmul fast float %2328, %2317
  %2330 = fmul fast float %2329, %2308
  %2331 = fmul fast float %2330, %2323
  %2332 = fmul fast float %2331, %2326
  %2333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2334 = extractvalue %dx.types.CBufRet.f32 %2333, 1
  %2335 = extractvalue %dx.types.CBufRet.f32 %2333, 0
  %2336 = fsub fast float %2249, %2335
  %2337 = fmul fast float %2336, %2334
  %2338 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2339 = fmul fast float %2332, %2166
  %2340 = fadd fast float %2332, %2166
  %2341 = fmul fast float %2340, %2175
  %2342 = fsub fast float %2341, %2175
  %2343 = call float @dx.op.unary.f32(i32 7, float %2342)  ; Saturate(value)
  %2344 = and i32 %2204, 128
  %2345 = icmp ne i32 %2344, 0
  %2346 = select i1 %2345, float %2343, float %2339
  %2347 = fmul fast float %2346, %2338
  %2348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.f32 %2348, 0
  %2350 = fcmp fast ugt float %2347, %2349
  br i1 %2350, label %2351, label %2254

; <label>:2351                                    ; preds = %2269
  br i1 %2310, label %2254, label %2352

; <label>:2352                                    ; preds = %2351
  %2353 = and i32 %2204, 4
  %2354 = and i32 %2204, 8
  %2355 = add i32 %2161, 0
  %2356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2355, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2358 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2356, %dx.types.Handle %2357, float %2288, float %2291, float undef, float undef, i32 0, i32 0, i32 undef, float %2293, float %2295, float undef, float %2297, float %2299, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2359 = extractvalue %dx.types.ResRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.ResRet.f32 %2358, 1
  %2361 = extractvalue %dx.types.ResRet.f32 %2358, 2
  %2362 = extractvalue %dx.types.ResRet.f32 %2358, 3
  %2363 = bitcast float %2187 to i32
  %2364 = and i32 %2363, 255
  %2365 = uitofp i32 %2364 to float
  %2366 = lshr i32 %2363, 8
  %2367 = and i32 %2366, 255
  %2368 = uitofp i32 %2367 to float
  %2369 = fmul fast float %2362, %2365
  %2370 = fadd fast float %2369, %2368
  %2371 = fmul fast float %2370, 0x3F70101000000000
  %2372 = add i32 %2162, 0
  %2373 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2372, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2374 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2373, %dx.types.Handle %2357, float %2288, float %2291, float undef, float undef, i32 0, i32 0, i32 undef, float %2293, float %2295, float undef, float %2297, float %2299, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2375 = extractvalue %dx.types.ResRet.f32 %2374, 0
  %2376 = extractvalue %dx.types.ResRet.f32 %2374, 1
  %2377 = extractvalue %dx.types.ResRet.f32 %2374, 2
  %2378 = extractvalue %dx.types.ResRet.f32 %2374, 3
  %2379 = bitcast float %2181 to i32
  %2380 = and i32 %2379, 255
  %2381 = uitofp i32 %2380 to float
  %2382 = lshr i32 %2379, 8
  %2383 = and i32 %2382, 255
  %2384 = uitofp i32 %2383 to float
  %2385 = lshr i32 %2379, 16
  %2386 = and i32 %2385, 255
  %2387 = uitofp i32 %2386 to float
  %2388 = fmul fast float %2387, 0x3F70101000000000
  %2389 = fmul fast float %2375, %2381
  %2390 = fadd fast float %2389, %2384
  %2391 = fmul fast float %2390, 0x3F70101000000000
  %2392 = fadd fast float %2376, -5.000000e-01
  %2393 = fadd fast float %2378, -5.000000e-01
  %2394 = fmul fast float %2392, %2388
  %2395 = fmul fast float %2393, %2388
  %2396 = fadd fast float %2394, 5.000000e-01
  %2397 = fadd fast float %2395, 5.000000e-01
  %2398 = fmul fast float %2359, %2190
  %2399 = fmul fast float %2360, %2191
  %2400 = fmul fast float %2361, %2192
  %2401 = fmul fast float %2396, 2.000000e+00
  %2402 = fadd fast float %2401, -1.000000e+00
  %2403 = fmul fast float %2397, 2.000000e+00
  %2404 = fadd fast float %2403, -1.000000e+00
  %2405 = fadd fast float %2402, %2404
  %2406 = fmul fast float %2405, 5.000000e-01
  %2407 = fsub fast float %2402, %2404
  %2408 = fmul fast float %2407, 5.000000e-01
  %2409 = call float @dx.op.unary.f32(i32 6, float %2406)  ; FAbs(value)
  %2410 = fsub fast float 1.000000e+00, %2409
  %2411 = call float @dx.op.unary.f32(i32 6, float %2408)  ; FAbs(value)
  %2412 = fsub fast float %2410, %2411
  %2413 = call float @dx.op.dot3.f32(i32 55, float %2406, float %2408, float %2412, float %2406, float %2408, float %2412)  ; Dot3(ax,ay,az,bx,by,bz)
  %2414 = call float @dx.op.unary.f32(i32 25, float %2413)  ; Rsqrt(value)
  %2415 = fmul fast float %2406, %2414
  %2416 = fmul fast float %2408, %2414
  %2417 = fmul fast float %2414, %2412
  %2418 = fmul fast float %2417, %2155
  %2419 = fmul fast float %2417, %2156
  %2420 = fmul fast float %2417, %2157
  %2421 = fmul fast float %2415, %2178
  %2422 = fmul fast float %2415, %2179
  %2423 = fmul fast float %2415, %2180
  %2424 = fadd fast float %2421, %2418
  %2425 = fadd fast float %2422, %2419
  %2426 = fadd fast float %2423, %2420
  %2427 = fmul fast float %2416, %2184
  %2428 = fmul fast float %2416, %2185
  %2429 = fmul fast float %2416, %2186
  %2430 = fadd fast float %2424, %2427
  %2431 = fadd fast float %2425, %2428
  %2432 = fadd fast float %2426, %2429
  %2433 = call float @dx.op.dot3.f32(i32 55, float %2430, float %2431, float %2432, float %2430, float %2431, float %2432)  ; Dot3(ax,ay,az,bx,by,bz)
  %2434 = call float @dx.op.unary.f32(i32 25, float %2433)  ; Rsqrt(value)
  %2435 = fmul fast float %2430, %2434
  %2436 = fmul fast float %2431, %2434
  %2437 = fmul fast float %2432, %2434
  %2438 = fcmp fast ogt float %2244, %2250
  %2439 = fsub fast float -0.000000e+00, %2435
  %2440 = fsub fast float -0.000000e+00, %2436
  %2441 = fsub fast float -0.000000e+00, %2437
  %2442 = select i1 %2438, float %2435, float %2439
  %2443 = select i1 %2438, float %2436, float %2440
  %2444 = select i1 %2438, float %2437, float %2441
  %2445 = fmul fast float %2442, %2059
  %2446 = call float @dx.op.tertiary.f32(i32 46, float %2443, float %2060, float %2445)  ; FMad(a,b,c)
  %2447 = call float @dx.op.tertiary.f32(i32 46, float %2444, float %2062, float %2446)  ; FMad(a,b,c)
  %2448 = fmul fast float %2442, %2055
  %2449 = call float @dx.op.tertiary.f32(i32 46, float %2443, float %2065, float %2448)  ; FMad(a,b,c)
  %2450 = call float @dx.op.tertiary.f32(i32 46, float %2444, float %2066, float %2449)  ; FMad(a,b,c)
  %2451 = icmp ne i32 %2354, 0
  %2452 = select i1 %2451, float 1.000000e+00, float 0.000000e+00
  %2453 = fmul fast float %2347, %2452
  %2454 = and i32 %2204, 1
  %2455 = icmp ne i32 %2454, 0
  %2456 = fadd fast float %2447, %2137
  %2457 = fadd fast float %2450, %2138
  %2458 = select i1 %2455, float %2456, float %2447
  %2459 = select i1 %2455, float %2457, float %2450
  %2460 = icmp ne i32 %2353, 0
  %2461 = select i1 %2460, float 1.000000e+00, float 0.000000e+00
  %2462 = fmul fast float %2347, %2461
  %2463 = fsub fast float %2398, %2143
  %2464 = fsub fast float %2399, %2144
  %2465 = fsub fast float %2400, %2145
  %2466 = fmul fast float %2463, %2462
  %2467 = fmul fast float %2464, %2462
  %2468 = fmul fast float %2465, %2462
  %2469 = fadd fast float %2466, %2143
  %2470 = fadd fast float %2467, %2144
  %2471 = fadd fast float %2468, %2145
  %2472 = fsub fast float %2371, %2142
  %2473 = fmul fast float %2472, %2462
  %2474 = fadd fast float %2473, %2142
  %2475 = fadd fast float %2347, %2141
  %2476 = call float @dx.op.unary.f32(i32 7, float %2475)  ; Saturate(value)
  %2477 = fsub fast float %2391, %2140
  %2478 = fmul fast float %2477, %2453
  %2479 = fadd fast float %2478, %2140
  %2480 = fsub fast float %2377, %2139
  %2481 = fmul fast float %2480, %2453
  %2482 = fadd fast float %2481, %2139
  %2483 = fsub fast float %2458, %2137
  %2484 = fsub fast float %2459, %2138
  %2485 = fmul fast float %2483, %2453
  %2486 = fmul fast float %2484, %2453
  %2487 = fadd fast float %2485, %2137
  %2488 = fadd fast float %2486, %2138
  %2489 = and i32 %2204, 16
  %2490 = icmp eq i32 %2489, 0
  br i1 %2490, label %2513, label %2491

; <label>:2491                                    ; preds = %2352
  %2492 = bitcast float %2198 to i32
  %2493 = add i32 %2195, 0
  %2494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2493, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2495 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2494, %dx.types.Handle %2357, float %2288, float %2291, float undef, float undef, i32 0, i32 0, i32 undef, float %2293, float %2295, float undef, float %2297, float %2299, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2496 = extractvalue %dx.types.ResRet.f32 %2495, 0
  %2497 = extractvalue %dx.types.ResRet.f32 %2495, 1
  %2498 = extractvalue %dx.types.ResRet.f32 %2495, 2
  %2499 = and i32 %2492, 65535
  %2500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2499)  ; LegacyF16ToF32(value)
  %2501 = fmul fast float %2496, %2190
  %2502 = fmul fast float %2497, %2191
  %2503 = fmul fast float %2498, %2192
  %2504 = and i32 %2204, 16384
  %2505 = icmp ne i32 %2504, 0
  %2506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.f32 %2506, 0
  %2508 = select i1 %2505, float %2507, float 1.000000e+00
  %2509 = fmul fast float %2508, %2500
  %2510 = fmul fast float %2501, %2509
  %2511 = fmul fast float %2502, %2509
  %2512 = fmul fast float %2503, %2509
  br label %2513

; <label>:2513                                    ; preds = %2491, %2352
  %2514 = phi float [ %2510, %2491 ], [ 0.000000e+00, %2352 ]
  %2515 = phi float [ %2511, %2491 ], [ 0.000000e+00, %2352 ]
  %2516 = phi float [ %2512, %2491 ], [ 0.000000e+00, %2352 ]
  %2517 = fsub fast float %2514, %2134
  %2518 = fsub fast float %2515, %2135
  %2519 = fsub fast float %2516, %2136
  %2520 = fmul fast float %2517, %2347
  %2521 = fmul fast float %2518, %2347
  %2522 = fmul fast float %2519, %2347
  %2523 = fadd fast float %2520, %2134
  %2524 = fadd fast float %2521, %2135
  %2525 = fadd fast float %2522, %2136
  br label %2254

; <label>:2526                                    ; preds = %2254
  br label %2527

; <label>:2527                                    ; preds = %2526, %2028
  %2528 = phi float [ 0.000000e+00, %2028 ], [ %2255, %2526 ]
  %2529 = phi float [ 0.000000e+00, %2028 ], [ %2256, %2526 ]
  %2530 = phi float [ 0.000000e+00, %2028 ], [ %2257, %2526 ]
  %2531 = phi float [ %1878, %2028 ], [ %2258, %2526 ]
  %2532 = phi float [ %1879, %2028 ], [ %2259, %2526 ]
  %2533 = phi float [ %2076, %2028 ], [ %2260, %2526 ]
  %2534 = phi float [ %2079, %2028 ], [ %2261, %2526 ]
  %2535 = phi float [ 0.000000e+00, %2028 ], [ %2262, %2526 ]
  %2536 = phi float [ %2074, %2028 ], [ %2263, %2526 ]
  %2537 = phi float [ %2068, %2028 ], [ %2264, %2526 ]
  %2538 = phi float [ %2070, %2028 ], [ %2265, %2526 ]
  %2539 = phi float [ %2072, %2028 ], [ %2266, %2526 ]
  %2540 = phi i32 [ 0, %2028 ], [ %2267, %2526 ]
  %2541 = uitofp i32 %2540 to float
  %2542 = fptoui float %2541 to i32
  %2543 = shl i32 %2542, 16
  %2544 = and i32 %2543, 16711680
  %2545 = call float @dx.op.dot2.f32(i32 54, float %2531, float %2532, float %2531, float %2532)  ; Dot2(ax,ay,bx,by)
  %2546 = fmul fast float %2545, 0x3FE3333340000000
  %2547 = fsub fast float 1.000000e+00, %2546
  %2548 = call float @dx.op.dot3.f32(i32 55, float %2531, float %2532, float %2547, float %2531, float %2532, float %2547)  ; Dot3(ax,ay,az,bx,by,bz)
  %2549 = call float @dx.op.unary.f32(i32 25, float %2548)  ; Rsqrt(value)
  %2550 = fmul fast float %2549, %2531
  %2551 = fmul fast float %2549, %2532
  %2552 = fmul fast float %2547, %2549
  %2553 = fmul fast float %2552, %119
  %2554 = fmul fast float %2552, %120
  %2555 = fmul fast float %2552, %121
  %2556 = fmul fast float %2550, %2059
  %2557 = fmul fast float %2550, %2060
  %2558 = fmul fast float %2550, %2062
  %2559 = fadd fast float %2553, %2556
  %2560 = fadd fast float %2554, %2557
  %2561 = fadd fast float %2555, %2558
  %2562 = fmul fast float %2551, %2055
  %2563 = fmul fast float %2551, %2065
  %2564 = fmul fast float %2551, %2066
  %2565 = fadd fast float %2559, %2562
  %2566 = fadd fast float %2560, %2563
  %2567 = fadd fast float %2561, %2564
  %2568 = call float @dx.op.dot3.f32(i32 55, float %2565, float %2566, float %2567, float %2565, float %2566, float %2567)  ; Dot3(ax,ay,az,bx,by,bz)
  %2569 = call float @dx.op.unary.f32(i32 25, float %2568)  ; Rsqrt(value)
  %2570 = fmul fast float %2565, %2569
  %2571 = fmul fast float %2566, %2569
  %2572 = fmul fast float %2567, %2569
  %2573 = fadd fast float %2536, 0xBFB99999A0000000
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2575 = fmul fast float %2574, 0x3FF1C71C80000000
  %2576 = call float @dx.op.binary.f32(i32 36, float %2536, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2577 = fsub fast float 1.000000e+00, %2575
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2579 = fmul fast float %2578, %2537
  %2580 = fmul fast float %2578, %2538
  %2581 = fmul fast float %2578, %2539
  %2582 = call float @dx.op.unary.f32(i32 7, float %2579)  ; Saturate(value)
  %2583 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  %2584 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  %2585 = fmul fast float %2575, %2537
  %2586 = fmul fast float %2575, %2538
  %2587 = fmul fast float %2575, %2539
  %2588 = fadd fast float %2585, %2576
  %2589 = fadd fast float %2586, %2576
  %2590 = fadd fast float %2587, %2576
  %2591 = call float @dx.op.unary.f32(i32 7, float %2588)  ; Saturate(value)
  %2592 = call float @dx.op.unary.f32(i32 7, float %2589)  ; Saturate(value)
  %2593 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  %2594 = fmul fast float %2592, 0x401CF23780000000
  %2595 = fadd fast float %2594, 0x3FF32641C0000000
  %2596 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %2597 = call float @dx.op.unary.f32(i32 25, float %2596)  ; Rsqrt(value)
  %2598 = fmul fast float %2597, %155
  %2599 = fmul fast float %2597, %156
  %2600 = fmul fast float %2597, %157
  %2601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2602 = extractvalue %dx.types.CBufRet.f32 %2601, 0
  %2603 = fdiv fast float 1.000000e+00, %2595
  %2604 = select i1 %117, float %2603, float %2595
  %2605 = fadd fast float %2604, -1.000000e+00
  %2606 = fadd fast float %2604, 1.000000e+00
  %2607 = fdiv fast float %2605, %2606
  %2608 = fmul fast float %2607, %2607
  %2609 = call float @dx.op.dot3.f32(i32 55, float %2598, float %2599, float %2600, float %2570, float %2571, float %2572)  ; Dot3(ax,ay,az,bx,by,bz)
  %2610 = select i1 %117, float 0.000000e+00, float %2602
  %2611 = fadd fast float %2609, %2610
  %2612 = call float @dx.op.binary.f32(i32 35, float %2611, float -1.000000e+00)  ; FMax(a,b)
  %2613 = call float @dx.op.binary.f32(i32 36, float %2612, float 1.000000e+00)  ; FMin(a,b)
  %2614 = fmul fast float %2604, %2604
  %2615 = fmul fast float %2613, %2613
  %2616 = fsub fast float 1.000000e+00, %2615
  %2617 = fmul fast float %2614, %2616
  %2618 = fsub fast float 1.000000e+00, %2617
  %2619 = fcmp fast olt float %2604, 1.000000e+00
  %2620 = select i1 %2619, float %2615, float %2618
  %2621 = fcmp fast ogt float %2618, 0.000000e+00
  %2622 = fsub fast float 1.000000e+00, %2608
  %2623 = call float @dx.op.unary.f32(i32 24, float %2620)  ; Sqrt(value)
  %2624 = fsub fast float 1.000000e+00, %2623
  %2625 = call float @dx.op.unary.f32(i32 23, float %2624)  ; Log(value)
  %2626 = fmul fast float %2625, 5.000000e+00
  %2627 = call float @dx.op.unary.f32(i32 21, float %2626)  ; Exp(value)
  %2628 = fmul fast float %2627, %2622
  %2629 = fadd fast float %2628, %2608
  %2630 = select i1 %2621, float %2629, float 1.000000e+00
  %2631 = lshr i32 %1877, 24
  %2632 = uitofp i32 %2631 to float
  %2633 = fmul fast float %2632, 0x3F70101020000000
  %2634 = call float @dx.op.unary.f32(i32 7, float %2633)  ; Saturate(value)
  %2635 = fmul fast float %155, %155
  %2636 = fmul fast float %156, %156
  %2637 = fadd fast float %2636, %2635
  %2638 = fmul fast float %157, %157
  %2639 = fadd fast float %2637, %2638
  %2640 = call float @dx.op.unary.f32(i32 24, float %2639)  ; Sqrt(value)
  %2641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %2642 = extractvalue %dx.types.CBufRet.f32 %2641, 0
  %2643 = fmul fast float %2642, %2640
  %2644 = extractvalue %dx.types.CBufRet.f32 %2641, 1
  %2645 = fadd fast float %2643, %2644
  %2646 = call float @dx.op.unary.f32(i32 7, float %2645)  ; Saturate(value)
  %2647 = fmul fast float %2634, 2.550000e+02
  %2648 = fmul fast float %2647, %2646
  %2649 = fptoui float %2648 to i32
  %2650 = fsub fast float 1.000000e+00, %2591
  %2651 = fsub fast float 1.000000e+00, %2592
  %2652 = fsub fast float 1.000000e+00, %2593
  %2653 = fmul fast float %2630, %2650
  %2654 = fmul fast float %2630, %2651
  %2655 = fmul fast float %2630, %2652
  %2656 = fadd fast float %2653, %2591
  %2657 = fadd fast float %2654, %2592
  %2658 = fadd fast float %2655, %2593
  %2659 = fptoui float %100 to i32
  %2660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2661 = extractvalue %dx.types.CBufRet.f32 %2660, 0
  %2662 = fmul fast float %2661, 5.000000e-01
  %2663 = fptoui float %2662 to i32
  %2664 = icmp eq i32 %2659, %2663
  %2665 = fptoui float %101 to i32
  %2666 = extractvalue %dx.types.CBufRet.f32 %2660, 1
  %2667 = fmul fast float %2666, 5.000000e-01
  %2668 = fptoui float %2667 to i32
  %2669 = icmp eq i32 %2665, %2668
  %2670 = and i1 %2664, %2669
  br i1 %2670, label %2671, label %2695

; <label>:2671                                    ; preds = %2527
  %2672 = call float @dx.op.binary.f32(i32 35, float %2657, float %2658)  ; FMax(a,b)
  %2673 = call float @dx.op.binary.f32(i32 35, float %2656, float %2672)  ; FMax(a,b)
  %2674 = fsub fast float 1.000000e+00, %2673
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 0
  %2677 = extractvalue %dx.types.CBufRet.f32 %2675, 1
  %2678 = extractvalue %dx.types.CBufRet.f32 %2675, 2
  %2679 = fadd fast float %2676, %155
  %2680 = fadd fast float %2677, %156
  %2681 = fadd fast float %2678, %157
  %2682 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %45, i32 0, i32 %2659, i32 %2665, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2683 = extractvalue %dx.types.ResRet.f32 %2682, 0
  %2684 = fcmp fast ogt float %2683, -1.000000e+00
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 1
  %2687 = select i1 %2684, float %2686, float 1.000000e+00
  %2688 = fadd fast float %2683, 1.000000e+00
  %2689 = fmul fast float %2687, %2688
  %2690 = call float @dx.op.unary.f32(i32 6, float %2689)  ; FAbs(value)
  %2691 = call float @dx.op.unary.f32(i32 83, float %81)  ; DerivCoarseX(value)
  %2692 = call float @dx.op.unary.f32(i32 83, float %82)  ; DerivCoarseX(value)
  %2693 = call float @dx.op.unary.f32(i32 84, float %81)  ; DerivCoarseY(value)
  %2694 = call float @dx.op.unary.f32(i32 84, float %82)  ; DerivCoarseY(value)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %2679, float %2680, float %2681, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %100, float %101, float %88, float %89, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %347, float %348, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %310, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %312, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %325, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %327, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %2690, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %2630, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %2656, float %2657, float %2658, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %2674, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %199, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %1889, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float %1890, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %2691, float %2692, float %2693, float %2694, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
  br label %2695

; <label>:2695                                    ; preds = %2671, %2527
  %2696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2697 = extractvalue %dx.types.CBufRet.f32 %2696, 3
  %2698 = fmul fast float %2697, %2534
  %2699 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  %2700 = call float @dx.op.unary.f32(i32 7, float %2533)  ; Saturate(value)
  %2701 = fsub fast float 1.000000e+00, %2535
  %2702 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %2701)  ; FMin(a,b)
  %2703 = fmul fast float %81, 6.553500e+04
  %2704 = call float @dx.op.unary.f32(i32 26, float %2703)  ; Round_ne(value)
  %2705 = fptosi float %2704 to i32
  %2706 = call i32 @dx.op.binary.i32(i32 37, i32 %2705, i32 0)  ; IMax(a,b)
  %2707 = call i32 @dx.op.binary.i32(i32 38, i32 %2706, i32 65535)  ; IMin(a,b)
  %2708 = fmul fast float %82, 6.553500e+04
  %2709 = call float @dx.op.unary.f32(i32 26, float %2708)  ; Round_ne(value)
  %2710 = fptosi float %2709 to i32
  %2711 = call i32 @dx.op.binary.i32(i32 37, i32 %2710, i32 0)  ; IMax(a,b)
  %2712 = call i32 @dx.op.binary.i32(i32 38, i32 %2711, i32 65535)  ; IMin(a,b)
  %2713 = shl i32 %2712, 16
  %2714 = or i32 %2713, %2707
  %2715 = call float @dx.op.dot3.f32(i32 55, float %2591, float %2592, float %2593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2716 = fsub fast float 1.000000e+00, %2715
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %58, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = and i32 %2718, 255
  %2720 = uitofp i32 %2719 to float
  %2721 = lshr i32 %2718, 8
  %2722 = and i32 %2721, 255
  %2723 = uitofp i32 %2722 to float
  %2724 = fmul fast float %2723, %2716
  %2725 = fadd fast float %2724, %2720
  %2726 = fmul fast float %2725, 0x3F70101020000000
  %2727 = call float @dx.op.unary.f32(i32 7, float %2726)  ; Saturate(value)
  %2728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2729 = extractvalue %dx.types.CBufRet.f32 %2728, 0
  %2730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2732 = extractvalue %dx.types.CBufRet.i32 %2731, 3
  %2733 = and i32 %2732, 3
  %2734 = icmp ne i32 %2733, 0
  %2735 = and i32 %2732, 4
  %2736 = icmp ne i32 %2735, 0
  %2737 = and i1 %2734, %2736
  br i1 %2737, label %2738, label %2749

; <label>:2738                                    ; preds = %2695
  %2739 = extractvalue %dx.types.CBufRet.f32 %2730, 3
  %2740 = fmul fast float %2739, %101
  %2741 = extractvalue %dx.types.CBufRet.f32 %2730, 2
  %2742 = fmul fast float %2741, %100
  %2743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %63, float %2742, float %2740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2744 = extractvalue %dx.types.ResRet.f32 %2743, 0
  %2745 = fsub fast float 1.000000e+00, %2744
  %2746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2747 = extractvalue %dx.types.CBufRet.f32 %2746, 0
  %2748 = fcmp fast olt float %2745, %2747
  br label %2752

; <label>:2749                                    ; preds = %2695
  %2750 = icmp eq i32 %2735, 0
  %2751 = and i1 %2734, %2750
  br label %2752

; <label>:2752                                    ; preds = %2749, %2738
  %2753 = phi i1 [ %2748, %2738 ], [ %2751, %2749 ]
  %2754 = fsub fast float -0.000000e+00, %157
  %2755 = fsub fast float -0.000000e+00, %2598
  %2756 = fsub fast float -0.000000e+00, %2599
  %2757 = fsub fast float -0.000000e+00, %2600
  %2758 = select i1 %2753, float 0.000000e+00, float %2593
  %2759 = call float @dx.op.dot3.f32(i32 55, float %2570, float %2571, float %2572, float %2755, float %2756, float %2757)  ; Dot3(ax,ay,az,bx,by,bz)
  %2760 = call float @dx.op.unary.f32(i32 7, float %2759)  ; Saturate(value)
  %2761 = fmul fast float %2609, 2.000000e+00
  %2762 = fmul fast float %2761, %2570
  %2763 = fmul fast float %2761, %2571
  %2764 = fmul fast float %2761, %2572
  %2765 = fsub fast float %2598, %2762
  %2766 = fsub fast float %2599, %2763
  %2767 = fsub fast float %2600, %2764
  %2768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %2769 = extractvalue %dx.types.CBufRet.f32 %2768, 0
  %2770 = bitcast float %2769 to i32
  %2771 = lshr i32 %2770, 8
  %2772 = and i32 %2771, 255
  %2773 = uitofp i32 %2772 to float
  %2774 = fptoui float %2773 to i32
  %2775 = and i32 %2774, 4
  %2776 = icmp ne i32 %2775, 0
  %2777 = select i1 %2776, float %2700, float 1.000000e+00
  %2778 = call float @dx.op.binary.f32(i32 36, float %2777, float 1.000000e+00)  ; FMin(a,b)
  %2779 = fsub fast float 1.000000e+00, %2778
  %2780 = bitcast float %2779 to i32
  %2781 = ashr i32 %2780, 1
  %2782 = add nsw i32 %2781, 532487669
  %2783 = bitcast i32 %2782 to float
  %2784 = fsub fast float 1.000000e+00, %2699
  %2785 = call float @dx.op.binary.f32(i32 35, float %2784, float 0x3F847AE140000000)  ; FMax(a,b)
  %2786 = fmul fast float %2785, %2785
  %2787 = fmul fast float %2786, %2786
  %2788 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %63, float %2783, float %2787, float %2788, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2790 = extractvalue %dx.types.ResRet.f32 %2789, 0
  %2791 = and i32 %2774, 1
  %2792 = icmp ne i32 %2791, 0
  %2793 = fsub fast float 1.000000e+00, %2777
  %2794 = bitcast float %2793 to i32
  %2795 = sub nsw i32 2129859010, %2794
  %2796 = bitcast i32 %2795 to float
  %2797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2798 = extractvalue %dx.types.CBufRet.i32 %2797, 0
  %2799 = icmp eq i32 %2798, 1
  %2800 = select i1 %2799, float 0.000000e+00, float 1.000000e+00
  %2801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.f32 %2801, 0
  %2803 = fcmp fast ogt float %2802, 0.000000e+00
  %2804 = fcmp fast ogt float %2800, 0.000000e+00
  %2805 = and i1 %2803, %2804
  br i1 %2805, label %2806, label %2990, !dx.controlflow.hints !127

; <label>:2806                                    ; preds = %2752
  %2807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2808 = extractvalue %dx.types.CBufRet.f32 %2807, 0
  %2809 = extractvalue %dx.types.CBufRet.f32 %2807, 1
  %2810 = extractvalue %dx.types.CBufRet.f32 %2807, 2
  %2811 = fadd fast float %2808, %155
  %2812 = fadd fast float %2809, %156
  %2813 = fadd fast float %2810, %157
  %2814 = fmul fast float %2570, 3.200000e+01
  %2815 = fmul fast float %2571, 3.200000e+01
  %2816 = fadd fast float %2811, %2814
  %2817 = fadd fast float %2812, %2815
  %2818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.f32 %2818, 0
  %2820 = extractvalue %dx.types.CBufRet.f32 %2818, 1
  %2821 = fsub fast float %2816, %2819
  %2822 = fsub fast float %2817, %2820
  %2823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2824 = extractvalue %dx.types.CBufRet.f32 %2823, 0
  %2825 = extractvalue %dx.types.CBufRet.f32 %2823, 1
  %2826 = fmul fast float %2821, %2824
  %2827 = fmul fast float %2822, %2825
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
  %2842 = fcmp fast oge float %2826, 0.000000e+00
  %2843 = fcmp fast ole float %2826, 1.000000e+00
  %2844 = and i1 %2843, %2842
  %2845 = fcmp fast oge float %2827, 0.000000e+00
  %2846 = and i1 %2845, %2844
  %2847 = fcmp fast ole float %2827, 1.000000e+00
  %2848 = and i1 %2847, %2846
  %2849 = fcmp fast ogt float %2841, 0.000000e+00
  %2850 = and i1 %2849, %2848
  br i1 %2850, label %2851, label %2974, !dx.controlflow.hints !128

; <label>:2851                                    ; preds = %2806
  %2852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2853 = extractvalue %dx.types.CBufRet.f32 %2852, 2
  %2854 = extractvalue %dx.types.CBufRet.f32 %2852, 3
  %2855 = fmul fast float %2853, %2826
  %2856 = fmul fast float %2854, %2827
  %2857 = call float @dx.op.unary.f32(i32 27, float %2855)  ; Round_ni(value)
  %2858 = call float @dx.op.unary.f32(i32 27, float %2856)  ; Round_ni(value)
  %2859 = fptosi float %2857 to i32
  %2860 = fptosi float %2858 to i32
  %2861 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %41, i32 0, i32 %2859, i32 %2860, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = lshr i32 %2862, 16
  %2864 = icmp eq i32 %2863, 65535
  br i1 %2864, label %2974, label %2865

; <label>:2865                                    ; preds = %2851
  %2866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2867 = extractvalue %dx.types.CBufRet.f32 %2866, 0
  %2868 = fmul fast float %2867, %2826
  %2869 = extractvalue %dx.types.CBufRet.f32 %2866, 1
  %2870 = fadd fast float %2868, %2869
  %2871 = extractvalue %dx.types.CBufRet.f32 %2866, 2
  %2872 = fmul fast float %2871, %2827
  %2873 = extractvalue %dx.types.CBufRet.f32 %2866, 3
  %2874 = fadd fast float %2872, %2873
  %2875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %63, float %2870, float %2874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = extractvalue %dx.types.ResRet.f32 %2875, 1
  %2878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2879 = extractvalue %dx.types.CBufRet.f32 %2878, 1
  %2880 = extractvalue %dx.types.CBufRet.f32 %2878, 0
  %2881 = fsub fast float %2879, %2880
  %2882 = fmul fast float %2881, %2876
  %2883 = fadd fast float %2882, %2880
  %2884 = extractvalue %dx.types.CBufRet.f32 %2878, 3
  %2885 = extractvalue %dx.types.CBufRet.f32 %2878, 2
  %2886 = fsub fast float %2884, %2885
  %2887 = fmul fast float %2886, %2877
  %2888 = fadd fast float %2887, %2885
  %2889 = fsub fast float %2813, %2883
  %2890 = fsub fast float %2888, %2883
  %2891 = fdiv fast float %2889, %2890
  %2892 = call float @dx.op.unary.f32(i32 7, float %2891)  ; Saturate(value)
  %2893 = extractvalue %dx.types.CBufRet.f32 %2801, 1
  %2894 = extractvalue %dx.types.CBufRet.f32 %2852, 0
  %2895 = extractvalue %dx.types.CBufRet.f32 %2852, 1
  %2896 = fmul fast float %2894, %2826
  %2897 = fmul fast float %2895, %2827
  %2898 = fmul fast float %2896, 1.250000e-01
  %2899 = fmul fast float %2897, 1.250000e-01
  %2900 = call float @dx.op.unary.f32(i32 27, float %2898)  ; Round_ni(value)
  %2901 = call float @dx.op.unary.f32(i32 27, float %2899)  ; Round_ni(value)
  %2902 = fmul fast float %2900, 8.000000e+00
  %2903 = fmul fast float %2901, 8.000000e+00
  %2904 = fsub fast float %2896, %2902
  %2905 = fsub fast float %2897, %2903
  %2906 = fadd fast float %2904, 5.000000e-01
  %2907 = fadd fast float %2905, 5.000000e-01
  %2908 = and i32 %2863, 255
  %2909 = lshr i32 %2862, 24
  %2910 = mul nuw nsw i32 %2908, 9
  %2911 = uitofp i32 %2910 to float
  %2912 = mul nuw nsw i32 %2909, 9
  %2913 = uitofp i32 %2912 to float
  %2914 = fadd fast float %2906, %2911
  %2915 = fadd fast float %2907, %2913
  %2916 = fdiv fast float %2914, %2802
  %2917 = fdiv fast float %2915, %2893
  %2918 = fmul fast float %2892, 4.375000e-01
  %2919 = fadd fast float %2918, 3.125000e-02
  %2920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %2916, float %2917, float %2919, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2921 = extractvalue %dx.types.ResRet.f32 %2920, 0
  %2922 = extractvalue %dx.types.ResRet.f32 %2920, 1
  %2923 = extractvalue %dx.types.ResRet.f32 %2920, 2
  %2924 = fadd fast float %2918, 5.312500e-01
  %2925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %2916, float %2917, float %2924, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2926 = extractvalue %dx.types.ResRet.f32 %2925, 0
  %2927 = extractvalue %dx.types.ResRet.f32 %2925, 1
  %2928 = extractvalue %dx.types.ResRet.f32 %2925, 2
  %2929 = fmul fast float %2926, 2.000000e+00
  %2930 = fmul fast float %2927, 2.000000e+00
  %2931 = fmul fast float %2928, 2.000000e+00
  %2932 = fadd fast float %2929, -1.000000e+00
  %2933 = fadd fast float %2930, -1.000000e+00
  %2934 = fadd fast float %2931, -1.000000e+00
  %2935 = fmul fast float %2932, %2932
  %2936 = fmul fast float %2933, %2933
  %2937 = fadd fast float %2935, %2936
  %2938 = fmul fast float %2934, %2934
  %2939 = fadd fast float %2937, %2938
  %2940 = call float @dx.op.unary.f32(i32 24, float %2939)  ; Sqrt(value)
  %2941 = fcmp fast ogt float %2940, 0.000000e+00
  br i1 %2941, label %2942, label %2946

; <label>:2942                                    ; preds = %2865
  %2943 = fdiv fast float %2932, %2940
  %2944 = fdiv fast float %2933, %2940
  %2945 = fdiv fast float %2934, %2940
  br label %2946

; <label>:2946                                    ; preds = %2942, %2865
  %2947 = phi float [ %2943, %2942 ], [ 0.000000e+00, %2865 ]
  %2948 = phi float [ %2944, %2942 ], [ 0.000000e+00, %2865 ]
  %2949 = phi float [ %2945, %2942 ], [ 0.000000e+00, %2865 ]
  %2950 = call float @dx.op.dot3.f32(i32 55, float %2947, float %2948, float %2949, float %2570, float %2571, float %2572)  ; Dot3(ax,ay,az,bx,by,bz)
  %2951 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2950)  ; FMax(a,b)
  %2952 = fmul fast float %2951, 0x400C5BF8A0000000
  %2953 = fmul fast float %2921, %2841
  %2954 = fmul fast float %2953, %2952
  %2955 = fmul fast float %2922, %2841
  %2956 = fmul fast float %2955, %2952
  %2957 = fmul fast float %2923, %2841
  %2958 = fmul fast float %2957, %2952
  %2959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.f32 %2959, 3
  %2961 = fmul fast float %2954, %2960
  %2962 = fmul fast float %2956, %2960
  %2963 = fmul fast float %2958, %2960
  %2964 = fcmp fast ogt float %2813, %2888
  br i1 %2964, label %2965, label %2974

; <label>:2965                                    ; preds = %2946
  %2966 = fmul fast float %2890, 0x3FC24924A0000000
  %2967 = fsub fast float %2813, %2888
  %2968 = fdiv fast float %2967, %2966
  %2969 = call float @dx.op.unary.f32(i32 7, float %2968)  ; Saturate(value)
  %2970 = fsub fast float 1.000000e+00, %2969
  %2971 = fmul fast float %2970, %2961
  %2972 = fmul fast float %2970, %2962
  %2973 = fmul fast float %2970, %2963
  br label %2974

; <label>:2974                                    ; preds = %2965, %2946, %2851, %2806
  %2975 = phi float [ %2973, %2965 ], [ %2963, %2946 ], [ 0.000000e+00, %2851 ], [ 0.000000e+00, %2806 ]
  %2976 = phi float [ %2972, %2965 ], [ %2962, %2946 ], [ 0.000000e+00, %2851 ], [ 0.000000e+00, %2806 ]
  %2977 = phi float [ %2971, %2965 ], [ %2961, %2946 ], [ 0.000000e+00, %2851 ], [ 0.000000e+00, %2806 ]
  %2978 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2977)  ; FMax(a,b)
  %2979 = fmul fast float %2978, 0x3FD20DD760000000
  %2980 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2976)  ; FMax(a,b)
  %2981 = fmul fast float %2980, 0x3FD20DD760000000
  %2982 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2975)  ; FMax(a,b)
  %2983 = fmul fast float %2982, 0x3FD20DD760000000
  %2984 = call float @dx.op.binary.f32(i32 35, float %2979, float 0.000000e+00)  ; FMax(a,b)
  %2985 = call float @dx.op.binary.f32(i32 35, float %2981, float 0.000000e+00)  ; FMax(a,b)
  %2986 = call float @dx.op.binary.f32(i32 35, float %2983, float 0.000000e+00)  ; FMax(a,b)
  %2987 = fmul fast float %2984, %2800
  %2988 = fmul fast float %2985, %2800
  %2989 = fmul fast float %2986, %2800
  br label %2990

; <label>:2990                                    ; preds = %2974, %2752
  %2991 = phi float [ %2987, %2974 ], [ 0.000000e+00, %2752 ]
  %2992 = phi float [ %2988, %2974 ], [ 0.000000e+00, %2752 ]
  %2993 = phi float [ %2989, %2974 ], [ 0.000000e+00, %2752 ]
  br i1 %2799, label %2994, label %3786, !dx.controlflow.hints !129

; <label>:2994                                    ; preds = %2990
  %2995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2996 = extractvalue %dx.types.CBufRet.f32 %2995, 0
  %2997 = extractvalue %dx.types.CBufRet.f32 %2995, 1
  %2998 = extractvalue %dx.types.CBufRet.f32 %2995, 2
  %2999 = fadd fast float %2996, %155
  %3000 = fadd fast float %2997, %156
  %3001 = fadd fast float %2998, %157
  %3002 = fmul fast float %2570, 3.200000e+01
  %3003 = fmul fast float %2571, 3.200000e+01
  %3004 = fadd fast float %2999, %3002
  %3005 = fadd fast float %3000, %3003
  %3006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3007 = extractvalue %dx.types.CBufRet.f32 %3006, 0
  %3008 = extractvalue %dx.types.CBufRet.f32 %3006, 1
  %3009 = fsub fast float %3004, %3007
  %3010 = fsub fast float %3005, %3008
  %3011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3012 = extractvalue %dx.types.CBufRet.f32 %3011, 0
  %3013 = extractvalue %dx.types.CBufRet.f32 %3011, 1
  %3014 = fmul fast float %3009, %3012
  %3015 = fmul fast float %3010, %3013
  %3016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3017 = extractvalue %dx.types.CBufRet.f32 %3016, 0
  %3018 = fmul fast float %3014, %3017
  %3019 = extractvalue %dx.types.CBufRet.f32 %3016, 1
  %3020 = fadd fast float %3018, %3019
  %3021 = extractvalue %dx.types.CBufRet.f32 %3016, 2
  %3022 = fmul fast float %3021, %3015
  %3023 = extractvalue %dx.types.CBufRet.f32 %3016, 3
  %3024 = fadd fast float %3022, %3023
  %3025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %63, float %3020, float %3024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3026 = extractvalue %dx.types.ResRet.f32 %3025, 0
  %3027 = extractvalue %dx.types.ResRet.f32 %3025, 1
  %3028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3029 = extractvalue %dx.types.CBufRet.f32 %3028, 1
  %3030 = extractvalue %dx.types.CBufRet.f32 %3028, 0
  %3031 = fsub fast float %3029, %3030
  %3032 = fmul fast float %3031, %3026
  %3033 = fadd fast float %3032, %3030
  %3034 = extractvalue %dx.types.CBufRet.f32 %3028, 3
  %3035 = extractvalue %dx.types.CBufRet.f32 %3028, 2
  %3036 = fsub fast float %3034, %3035
  %3037 = fmul fast float %3036, %3027
  %3038 = fadd fast float %3037, %3035
  %3039 = fsub fast float %3001, %3033
  %3040 = fsub fast float %3038, %3033
  %3041 = fdiv fast float %3039, %3040
  %3042 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 0
  %3045 = fmul fast float %3044, %3042
  %3046 = extractvalue %dx.types.CBufRet.f32 %3043, 1
  %3047 = fadd fast float %3045, %3046
  %3048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %63, float %3020, float %3024, float %3047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3049 = extractvalue %dx.types.ResRet.f32 %3048, 0
  %3050 = extractvalue %dx.types.ResRet.f32 %3048, 1
  %3051 = extractvalue %dx.types.ResRet.f32 %3048, 2
  %3052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3053 = extractvalue %dx.types.CBufRet.f32 %3052, 0
  %3054 = extractvalue %dx.types.CBufRet.f32 %3052, 1
  %3055 = extractvalue %dx.types.CBufRet.f32 %3052, 2
  %3056 = fmul fast float %3053, %3049
  %3057 = fmul fast float %3054, %3050
  %3058 = fmul fast float %3055, %3051
  %3059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3060 = extractvalue %dx.types.CBufRet.f32 %3059, 0
  %3061 = extractvalue %dx.types.CBufRet.f32 %3059, 1
  %3062 = extractvalue %dx.types.CBufRet.f32 %3059, 2
  %3063 = fadd fast float %3056, %3060
  %3064 = fadd fast float %3057, %3061
  %3065 = fadd fast float %3058, %3062
  %3066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3067 = extractvalue %dx.types.CBufRet.f32 %3066, 0
  %3068 = fmul fast float %3067, %3014
  %3069 = extractvalue %dx.types.CBufRet.f32 %3066, 1
  %3070 = fadd fast float %3068, %3069
  %3071 = extractvalue %dx.types.CBufRet.f32 %3066, 2
  %3072 = fmul fast float %3071, %3015
  %3073 = extractvalue %dx.types.CBufRet.f32 %3066, 3
  %3074 = fadd fast float %3072, %3073
  %3075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3076 = extractvalue %dx.types.CBufRet.f32 %3075, 0
  %3077 = extractvalue %dx.types.CBufRet.f32 %3075, 1
  %3078 = extractvalue %dx.types.CBufRet.f32 %3075, 2
  %3079 = extractvalue %dx.types.CBufRet.f32 %3075, 3
  %3080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3081 = extractvalue %dx.types.CBufRet.f32 %3080, 0
  %3082 = extractvalue %dx.types.CBufRet.f32 %3080, 1
  %3083 = extractvalue %dx.types.CBufRet.f32 %3080, 2
  %3084 = extractvalue %dx.types.CBufRet.f32 %3080, 3
  %3085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %3070, float %3074, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3086 = extractvalue %dx.types.ResRet.f32 %3085, 0
  %3087 = extractvalue %dx.types.ResRet.f32 %3085, 1
  %3088 = extractvalue %dx.types.ResRet.f32 %3085, 2
  %3089 = extractvalue %dx.types.ResRet.f32 %3085, 3
  %3090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %3070, float %3074, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3091 = extractvalue %dx.types.ResRet.f32 %3090, 0
  %3092 = extractvalue %dx.types.ResRet.f32 %3090, 1
  %3093 = extractvalue %dx.types.ResRet.f32 %3090, 2
  %3094 = extractvalue %dx.types.ResRet.f32 %3090, 3
  %3095 = fmul fast float %3086, %3063
  %3096 = fmul fast float %3091, %3063
  %3097 = fmul fast float %3093, %3063
  %3098 = fmul fast float %3089, %3063
  %3099 = fadd fast float %3095, %3076
  %3100 = fadd fast float %3096, %3077
  %3101 = fadd fast float %3097, %3078
  %3102 = fadd fast float %3098, %3079
  %3103 = fmul fast float %3087, %3063
  %3104 = fmul fast float %3092, %3063
  %3105 = fadd fast float %3103, %3081
  %3106 = fadd fast float %3104, %3082
  %3107 = fmul fast float %3088, %3063
  %3108 = fmul fast float %3094, %3063
  %3109 = fadd fast float %3107, %3083
  %3110 = fadd fast float %3108, %3084
  %3111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %3070, float %3074, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3112 = extractvalue %dx.types.ResRet.f32 %3111, 0
  %3113 = extractvalue %dx.types.ResRet.f32 %3111, 1
  %3114 = extractvalue %dx.types.ResRet.f32 %3111, 2
  %3115 = extractvalue %dx.types.ResRet.f32 %3111, 3
  %3116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %3070, float %3074, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3117 = extractvalue %dx.types.ResRet.f32 %3116, 0
  %3118 = extractvalue %dx.types.ResRet.f32 %3116, 1
  %3119 = extractvalue %dx.types.ResRet.f32 %3116, 2
  %3120 = extractvalue %dx.types.ResRet.f32 %3116, 3
  %3121 = fmul fast float %3112, %3064
  %3122 = fmul fast float %3117, %3064
  %3123 = fmul fast float %3119, %3064
  %3124 = fmul fast float %3115, %3064
  %3125 = fadd fast float %3099, %3121
  %3126 = fadd fast float %3100, %3122
  %3127 = fadd fast float %3101, %3123
  %3128 = fadd fast float %3102, %3124
  %3129 = fmul fast float %3113, %3064
  %3130 = fmul fast float %3118, %3064
  %3131 = fadd fast float %3105, %3129
  %3132 = fadd fast float %3106, %3130
  %3133 = fmul fast float %3114, %3064
  %3134 = fmul fast float %3120, %3064
  %3135 = fadd fast float %3109, %3133
  %3136 = fadd fast float %3110, %3134
  %3137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %3070, float %3074, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3138 = extractvalue %dx.types.ResRet.f32 %3137, 0
  %3139 = extractvalue %dx.types.ResRet.f32 %3137, 1
  %3140 = extractvalue %dx.types.ResRet.f32 %3137, 2
  %3141 = extractvalue %dx.types.ResRet.f32 %3137, 3
  %3142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %3070, float %3074, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3143 = extractvalue %dx.types.ResRet.f32 %3142, 0
  %3144 = extractvalue %dx.types.ResRet.f32 %3142, 1
  %3145 = extractvalue %dx.types.ResRet.f32 %3142, 2
  %3146 = extractvalue %dx.types.ResRet.f32 %3142, 3
  %3147 = fmul fast float %3138, %3065
  %3148 = fmul fast float %3143, %3065
  %3149 = fmul fast float %3145, %3065
  %3150 = fmul fast float %3141, %3065
  %3151 = fadd fast float %3125, %3147
  %3152 = fadd fast float %3126, %3148
  %3153 = fadd fast float %3127, %3149
  %3154 = fadd fast float %3128, %3150
  %3155 = fmul fast float %3139, %3065
  %3156 = fmul fast float %3144, %3065
  %3157 = fadd fast float %3131, %3155
  %3158 = fadd fast float %3132, %3156
  %3159 = fmul fast float %3140, %3065
  %3160 = fmul fast float %3146, %3065
  %3161 = fadd fast float %3135, %3159
  %3162 = fadd fast float %3136, %3160
  %3163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3164 = extractvalue %dx.types.CBufRet.f32 %3163, 0
  %3165 = fsub fast float %2999, %3164
  %3166 = fsub fast float %3007, %2999
  %3167 = call float @dx.op.binary.f32(i32 35, float %3166, float %3165)  ; FMax(a,b)
  %3168 = extractvalue %dx.types.CBufRet.f32 %3163, 1
  %3169 = fsub fast float %3000, %3168
  %3170 = fsub fast float %3008, %3000
  %3171 = call float @dx.op.binary.f32(i32 35, float %3170, float %3169)  ; FMax(a,b)
  %3172 = call float @dx.op.binary.f32(i32 35, float %3167, float %3171)  ; FMax(a,b)
  %3173 = extractvalue %dx.types.CBufRet.f32 %3011, 3
  %3174 = fmul fast float %3173, %3172
  %3175 = call float @dx.op.unary.f32(i32 7, float %3174)  ; Saturate(value)
  %3176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3177 = extractvalue %dx.types.CBufRet.f32 %3176, 0
  %3178 = extractvalue %dx.types.CBufRet.f32 %3176, 1
  %3179 = extractvalue %dx.types.CBufRet.f32 %3176, 2
  %3180 = extractvalue %dx.types.CBufRet.f32 %3176, 3
  %3181 = fsub fast float %3177, %3151
  %3182 = fsub fast float %3178, %3152
  %3183 = fsub fast float %3179, %3153
  %3184 = fsub fast float %3180, %3154
  %3185 = fmul fast float %3181, %3175
  %3186 = fmul fast float %3182, %3175
  %3187 = fmul fast float %3183, %3175
  %3188 = fmul fast float %3184, %3175
  %3189 = fadd fast float %3185, %3151
  %3190 = fadd fast float %3186, %3152
  %3191 = fadd fast float %3187, %3153
  %3192 = fadd fast float %3188, %3154
  %3193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3194 = extractvalue %dx.types.CBufRet.f32 %3193, 0
  %3195 = extractvalue %dx.types.CBufRet.f32 %3193, 1
  %3196 = fsub fast float %3194, %3157
  %3197 = fsub fast float %3195, %3158
  %3198 = fmul fast float %3196, %3175
  %3199 = fmul fast float %3197, %3175
  %3200 = fadd fast float %3198, %3157
  %3201 = fadd fast float %3199, %3158
  %3202 = extractvalue %dx.types.CBufRet.f32 %3193, 2
  %3203 = extractvalue %dx.types.CBufRet.f32 %3193, 3
  %3204 = fsub fast float %3202, %3161
  %3205 = fsub fast float %3203, %3162
  %3206 = fmul fast float %3204, %3175
  %3207 = fmul fast float %3205, %3175
  %3208 = fadd fast float %3206, %3161
  %3209 = fadd fast float %3207, %3162
  %3210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3211 = extractvalue %dx.types.CBufRet.f32 %3210, 0
  %3212 = fmul fast float %3211, %3189
  %3213 = fmul fast float %3211, %3190
  %3214 = fmul fast float %3211, %3191
  %3215 = fmul fast float %3211, %3192
  %3216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3217 = extractvalue %dx.types.CBufRet.f32 %3216, 0
  %3218 = fmul fast float %3217, %3200
  %3219 = fmul fast float %3217, %3201
  %3220 = fadd fast float %3218, %3212
  %3221 = fadd fast float %3219, %3214
  %3222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3222, 0
  %3224 = fmul fast float %3223, %3208
  %3225 = fmul fast float %3223, %3209
  %3226 = fadd fast float %3220, %3224
  %3227 = fadd fast float %3221, %3225
  %3228 = extractvalue %dx.types.CBufRet.f32 %3210, 1
  %3229 = fmul fast float %3228, %3189
  %3230 = fmul fast float %3228, %3190
  %3231 = fmul fast float %3228, %3191
  %3232 = fmul fast float %3228, %3192
  %3233 = extractvalue %dx.types.CBufRet.f32 %3216, 1
  %3234 = fmul fast float %3233, %3200
  %3235 = fmul fast float %3233, %3201
  %3236 = fadd fast float %3234, %3229
  %3237 = fadd fast float %3235, %3231
  %3238 = extractvalue %dx.types.CBufRet.f32 %3222, 1
  %3239 = fmul fast float %3238, %3208
  %3240 = fmul fast float %3238, %3209
  %3241 = fadd fast float %3236, %3239
  %3242 = fadd fast float %3237, %3240
  %3243 = extractvalue %dx.types.CBufRet.f32 %3210, 2
  %3244 = fmul fast float %3243, %3189
  %3245 = fmul fast float %3243, %3190
  %3246 = fmul fast float %3243, %3191
  %3247 = fmul fast float %3243, %3192
  %3248 = extractvalue %dx.types.CBufRet.f32 %3216, 2
  %3249 = fmul fast float %3248, %3200
  %3250 = fmul fast float %3248, %3201
  %3251 = fadd fast float %3249, %3244
  %3252 = fadd fast float %3250, %3246
  %3253 = extractvalue %dx.types.CBufRet.f32 %3222, 2
  %3254 = fmul fast float %3253, %3208
  %3255 = fmul fast float %3253, %3209
  %3256 = fadd fast float %3251, %3254
  %3257 = fadd fast float %3252, %3255
  %3258 = fmul fast float %3245, %3245
  %3259 = fmul fast float %3257, %3257
  %3260 = fmul fast float %3247, %3247
  %3261 = fadd fast float %3260, %3258
  %3262 = fadd fast float %3261, %3259
  %3263 = call float @dx.op.unary.f32(i32 24, float %3262)  ; Sqrt(value)
  %3264 = fcmp fast ugt float %3263, 0.000000e+00
  br i1 %3264, label %3265, label %3280

; <label>:3265                                    ; preds = %2994
  %3266 = fsub fast float -0.000000e+00, %3247
  %3267 = fdiv fast float %3266, %3263
  %3268 = fsub fast float -0.000000e+00, %3245
  %3269 = fdiv fast float %3268, %3263
  %3270 = fdiv fast float %3257, %3263
  %3271 = fmul fast float %3256, 0x3FE279A760000000
  %3272 = fmul fast float %3269, %3245
  %3273 = fmul fast float %3270, %3257
  %3274 = fmul fast float %3267, %3247
  %3275 = fadd fast float %3272, %3274
  %3276 = fsub fast float %3275, %3273
  %3277 = call float @dx.op.unary.f32(i32 6, float %3276)  ; FAbs(value)
  %3278 = fadd fast float %3277, 0x3DDB7CDFE0000000
  %3279 = fdiv fast float %3271, %3278
  br label %3280

; <label>:3280                                    ; preds = %3265, %2994
  %3281 = phi float [ %3279, %3265 ], [ 1.000000e+00, %2994 ]
  %3282 = fmul fast float %3230, %3230
  %3283 = fmul fast float %3242, %3242
  %3284 = fmul fast float %3232, %3232
  %3285 = fadd fast float %3284, %3282
  %3286 = fadd fast float %3285, %3283
  %3287 = call float @dx.op.unary.f32(i32 24, float %3286)  ; Sqrt(value)
  %3288 = fcmp fast ugt float %3287, 0.000000e+00
  br i1 %3288, label %3289, label %3304

; <label>:3289                                    ; preds = %3280
  %3290 = fsub fast float -0.000000e+00, %3232
  %3291 = fdiv fast float %3290, %3287
  %3292 = fsub fast float -0.000000e+00, %3230
  %3293 = fdiv fast float %3292, %3287
  %3294 = fdiv fast float %3242, %3287
  %3295 = fmul fast float %3241, 0x3FE279A760000000
  %3296 = fmul fast float %3293, %3230
  %3297 = fmul fast float %3294, %3242
  %3298 = fmul fast float %3291, %3232
  %3299 = fadd fast float %3296, %3298
  %3300 = fsub fast float %3299, %3297
  %3301 = call float @dx.op.unary.f32(i32 6, float %3300)  ; FAbs(value)
  %3302 = fadd fast float %3301, 0x3DDB7CDFE0000000
  %3303 = fdiv fast float %3295, %3302
  br label %3304

; <label>:3304                                    ; preds = %3289, %3280
  %3305 = phi float [ %3303, %3289 ], [ 1.000000e+00, %3280 ]
  %3306 = call float @dx.op.binary.f32(i32 36, float %3305, float %3281)  ; FMin(a,b)
  %3307 = fmul fast float %3213, %3213
  %3308 = fmul fast float %3227, %3227
  %3309 = fmul fast float %3215, %3215
  %3310 = fadd fast float %3309, %3307
  %3311 = fadd fast float %3310, %3308
  %3312 = call float @dx.op.unary.f32(i32 24, float %3311)  ; Sqrt(value)
  %3313 = fcmp fast ugt float %3312, 0.000000e+00
  br i1 %3313, label %3314, label %3329

; <label>:3314                                    ; preds = %3304
  %3315 = fsub fast float -0.000000e+00, %3215
  %3316 = fdiv fast float %3315, %3312
  %3317 = fsub fast float -0.000000e+00, %3213
  %3318 = fdiv fast float %3317, %3312
  %3319 = fdiv fast float %3227, %3312
  %3320 = fmul fast float %3226, 0x3FE279A760000000
  %3321 = fmul fast float %3318, %3213
  %3322 = fmul fast float %3319, %3227
  %3323 = fmul fast float %3316, %3215
  %3324 = fadd fast float %3321, %3323
  %3325 = fsub fast float %3324, %3322
  %3326 = call float @dx.op.unary.f32(i32 6, float %3325)  ; FAbs(value)
  %3327 = fadd fast float %3326, 0x3DDB7CDFE0000000
  %3328 = fdiv fast float %3320, %3327
  br label %3329

; <label>:3329                                    ; preds = %3314, %3304
  %3330 = phi float [ %3328, %3314 ], [ 1.000000e+00, %3304 ]
  %3331 = call float @dx.op.binary.f32(i32 36, float %3330, float %3306)  ; FMin(a,b)
  %3332 = call float @dx.op.unary.f32(i32 7, float %3331)  ; Saturate(value)
  %3333 = fcmp fast olt float %3332, 1.000000e+00
  br i1 %3333, label %3334, label %3344

; <label>:3334                                    ; preds = %3329
  %3335 = fmul fast float %3332, %3213
  %3336 = fmul fast float %3332, %3227
  %3337 = fmul fast float %3332, %3215
  %3338 = fmul fast float %3332, %3230
  %3339 = fmul fast float %3332, %3242
  %3340 = fmul fast float %3332, %3232
  %3341 = fmul fast float %3332, %3245
  %3342 = fmul fast float %3332, %3257
  %3343 = fmul fast float %3332, %3247
  br label %3344

; <label>:3344                                    ; preds = %3334, %3329
  %3345 = phi float [ %3341, %3334 ], [ %3245, %3329 ]
  %3346 = phi float [ %3342, %3334 ], [ %3257, %3329 ]
  %3347 = phi float [ %3343, %3334 ], [ %3247, %3329 ]
  %3348 = phi float [ %3338, %3334 ], [ %3230, %3329 ]
  %3349 = phi float [ %3339, %3334 ], [ %3242, %3329 ]
  %3350 = phi float [ %3340, %3334 ], [ %3232, %3329 ]
  %3351 = phi float [ %3335, %3334 ], [ %3213, %3329 ]
  %3352 = phi float [ %3336, %3334 ], [ %3227, %3329 ]
  %3353 = phi float [ %3337, %3334 ], [ %3215, %3329 ]
  %3354 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3226)  ; FMax(a,b)
  %3355 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3241)  ; FMax(a,b)
  %3356 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3256)  ; FMax(a,b)
  %3357 = fcmp fast oge float %3014, 0.000000e+00
  %3358 = and i1 %3357, %2803
  %3359 = fcmp fast ole float %3014, 1.000000e+00
  %3360 = and i1 %3359, %3358
  %3361 = fcmp fast oge float %3015, 0.000000e+00
  %3362 = and i1 %3361, %3360
  %3363 = fcmp fast ole float %3015, 1.000000e+00
  %3364 = and i1 %3363, %3362
  br i1 %3364, label %3365, label %3505, !dx.controlflow.hints !130

; <label>:3365                                    ; preds = %3344
  %3366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3367 = extractvalue %dx.types.CBufRet.f32 %3366, 2
  %3368 = extractvalue %dx.types.CBufRet.f32 %3366, 3
  %3369 = fmul fast float %3367, %3014
  %3370 = fmul fast float %3368, %3015
  %3371 = call float @dx.op.unary.f32(i32 27, float %3369)  ; Round_ni(value)
  %3372 = call float @dx.op.unary.f32(i32 27, float %3370)  ; Round_ni(value)
  %3373 = fptosi float %3371 to i32
  %3374 = fptosi float %3372 to i32
  %3375 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %41, i32 0, i32 %3373, i32 %3374, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = and i32 %3376, 65535
  %3378 = lshr i32 %3376, 16
  %3379 = icmp eq i32 %3377, 65535
  br i1 %3379, label %3416, label %3380

; <label>:3380                                    ; preds = %3365
  %3381 = extractvalue %dx.types.CBufRet.f32 %2801, 1
  %3382 = extractvalue %dx.types.CBufRet.f32 %3366, 0
  %3383 = extractvalue %dx.types.CBufRet.f32 %3366, 1
  %3384 = fmul fast float %3382, %3014
  %3385 = fmul fast float %3383, %3015
  %3386 = fmul fast float %3384, 1.250000e-01
  %3387 = fmul fast float %3385, 1.250000e-01
  %3388 = call float @dx.op.unary.f32(i32 27, float %3386)  ; Round_ni(value)
  %3389 = call float @dx.op.unary.f32(i32 27, float %3387)  ; Round_ni(value)
  %3390 = fmul fast float %3388, 8.000000e+00
  %3391 = fmul fast float %3389, 8.000000e+00
  %3392 = and i32 %3376, 255
  %3393 = lshr i32 %3376, 8
  %3394 = and i32 %3393, 255
  %3395 = mul nuw nsw i32 %3392, 9
  %3396 = uitofp i32 %3395 to float
  %3397 = mul nuw nsw i32 %3394, 9
  %3398 = uitofp i32 %3397 to float
  %3399 = fadd fast float %3396, 5.000000e-01
  %3400 = fadd fast float %3399, %3384
  %3401 = fsub fast float %3400, %3390
  %3402 = fadd fast float %3398, 5.000000e-01
  %3403 = fadd fast float %3402, %3385
  %3404 = fsub fast float %3403, %3391
  %3405 = fdiv fast float %3401, %2802
  %3406 = fdiv fast float %3404, %3381
  %3407 = fmul fast float %3042, 4.375000e-01
  %3408 = fadd fast float %3407, 3.125000e-02
  %3409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %3405, float %3406, float %3408, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3411 = extractvalue %dx.types.ResRet.f32 %3409, 1
  %3412 = extractvalue %dx.types.ResRet.f32 %3409, 2
  %3413 = fadd fast float %3410, %3354
  %3414 = fadd fast float %3411, %3355
  %3415 = fadd fast float %3412, %3356
  br label %3416

; <label>:3416                                    ; preds = %3380, %3365
  %3417 = phi float [ %3415, %3380 ], [ %3356, %3365 ]
  %3418 = phi float [ %3414, %3380 ], [ %3355, %3365 ]
  %3419 = phi float [ %3413, %3380 ], [ %3354, %3365 ]
  %3420 = icmp eq i32 %3378, 65535
  br i1 %3420, label %3505, label %3421

; <label>:3421                                    ; preds = %3416
  %3422 = extractvalue %dx.types.CBufRet.f32 %2801, 1
  %3423 = extractvalue %dx.types.CBufRet.f32 %3366, 0
  %3424 = extractvalue %dx.types.CBufRet.f32 %3366, 1
  %3425 = fmul fast float %3423, %3014
  %3426 = fmul fast float %3424, %3015
  %3427 = fmul fast float %3425, 1.250000e-01
  %3428 = fmul fast float %3426, 1.250000e-01
  %3429 = call float @dx.op.unary.f32(i32 27, float %3427)  ; Round_ni(value)
  %3430 = call float @dx.op.unary.f32(i32 27, float %3428)  ; Round_ni(value)
  %3431 = fmul fast float %3429, 8.000000e+00
  %3432 = fmul fast float %3430, 8.000000e+00
  %3433 = fsub fast float %3425, %3431
  %3434 = fsub fast float %3426, %3432
  %3435 = fadd fast float %3433, 5.000000e-01
  %3436 = fadd fast float %3434, 5.000000e-01
  %3437 = and i32 %3378, 255
  %3438 = lshr i32 %3376, 24
  %3439 = mul nuw nsw i32 %3437, 9
  %3440 = uitofp i32 %3439 to float
  %3441 = mul nuw nsw i32 %3438, 9
  %3442 = uitofp i32 %3441 to float
  %3443 = fadd fast float %3435, %3440
  %3444 = fadd fast float %3436, %3442
  %3445 = fdiv fast float %3443, %2802
  %3446 = fdiv fast float %3444, %3422
  %3447 = fmul fast float %3042, 4.375000e-01
  %3448 = fadd fast float %3447, 3.125000e-02
  %3449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %3445, float %3446, float %3448, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3450 = extractvalue %dx.types.ResRet.f32 %3449, 0
  %3451 = extractvalue %dx.types.ResRet.f32 %3449, 1
  %3452 = extractvalue %dx.types.ResRet.f32 %3449, 2
  %3453 = fadd fast float %3447, 5.312500e-01
  %3454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %3445, float %3446, float %3453, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3455 = extractvalue %dx.types.ResRet.f32 %3454, 0
  %3456 = extractvalue %dx.types.ResRet.f32 %3454, 1
  %3457 = extractvalue %dx.types.ResRet.f32 %3454, 2
  %3458 = fmul fast float %3455, 2.000000e+00
  %3459 = fmul fast float %3456, 2.000000e+00
  %3460 = fmul fast float %3457, 2.000000e+00
  %3461 = fadd fast float %3458, -1.000000e+00
  %3462 = fadd fast float %3459, -1.000000e+00
  %3463 = fadd fast float %3460, -1.000000e+00
  %3464 = fmul fast float %3461, %3461
  %3465 = fmul fast float %3462, %3462
  %3466 = fadd fast float %3464, %3465
  %3467 = fmul fast float %3463, %3463
  %3468 = fadd fast float %3466, %3467
  %3469 = call float @dx.op.unary.f32(i32 24, float %3468)  ; Sqrt(value)
  %3470 = fcmp fast ogt float %3469, 0.000000e+00
  br i1 %3470, label %3471, label %3475

; <label>:3471                                    ; preds = %3421
  %3472 = fdiv fast float %3461, %3469
  %3473 = fdiv fast float %3462, %3469
  %3474 = fdiv fast float %3463, %3469
  br label %3475

; <label>:3475                                    ; preds = %3471, %3421
  %3476 = phi float [ %3472, %3471 ], [ 0.000000e+00, %3421 ]
  %3477 = phi float [ %3473, %3471 ], [ 0.000000e+00, %3421 ]
  %3478 = phi float [ %3474, %3471 ], [ 0.000000e+00, %3421 ]
  %3479 = fmul fast float %155, %155
  %3480 = fmul fast float %156, %156
  %3481 = fadd fast float %3479, %3480
  %3482 = call float @dx.op.unary.f32(i32 24, float %3481)  ; Sqrt(value)
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.CBufRet.f32 %3483, 1
  %3486 = fsub fast float %3482, %3484
  %3487 = fdiv fast float %3486, %3485
  %3488 = call float @dx.op.unary.f32(i32 7, float %3487)  ; Saturate(value)
  %3489 = fmul fast float %3488, 2.000000e+00
  %3490 = fsub fast float 3.000000e+00, %3489
  %3491 = fmul fast float %3488, %3488
  %3492 = fmul fast float %3491, %3490
  %3493 = call float @dx.op.dot3.f32(i32 55, float %3476, float %3477, float %3478, float %2570, float %2571, float %2572)  ; Dot3(ax,ay,az,bx,by,bz)
  %3494 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3493)  ; FMax(a,b)
  %3495 = fmul fast float %3494, 0x400C5BF8A0000000
  %3496 = fmul fast float %3492, %3450
  %3497 = fmul fast float %3496, %3495
  %3498 = fadd fast float %3497, %3419
  %3499 = fmul fast float %3492, %3451
  %3500 = fmul fast float %3499, %3495
  %3501 = fadd fast float %3500, %3418
  %3502 = fmul fast float %3492, %3452
  %3503 = fmul fast float %3502, %3495
  %3504 = fadd fast float %3503, %3417
  br label %3505

; <label>:3505                                    ; preds = %3475, %3416, %3344
  %3506 = phi float [ %3504, %3475 ], [ %3417, %3416 ], [ %3356, %3344 ]
  %3507 = phi float [ %3501, %3475 ], [ %3418, %3416 ], [ %3355, %3344 ]
  %3508 = phi float [ %3498, %3475 ], [ %3419, %3416 ], [ %3354, %3344 ]
  %3509 = fcmp fast ogt float %3001, %3038
  %3510 = and i1 %3357, %3509
  %3511 = and i1 %3359, %3510
  %3512 = and i1 %3361, %3511
  %3513 = and i1 %3363, %3512
  br i1 %3513, label %3514, label %3571, !dx.controlflow.hints !131

; <label>:3514                                    ; preds = %3505
  %3515 = fmul fast float %3040, 0x3FC24924A0000000
  %3516 = fsub fast float %3001, %3038
  %3517 = fdiv fast float %3516, %3515
  %3518 = call float @dx.op.unary.f32(i32 7, float %3517)  ; Saturate(value)
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 0
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 0
  %3523 = extractvalue %dx.types.CBufRet.f32 %3521, 1
  %3524 = extractvalue %dx.types.CBufRet.f32 %3521, 2
  %3525 = fsub fast float %3520, %3508
  %3526 = fsub fast float %3522, %3351
  %3527 = fsub fast float %3523, %3352
  %3528 = fsub fast float %3524, %3353
  %3529 = fmul fast float %3525, %3518
  %3530 = fmul fast float %3526, %3518
  %3531 = fmul fast float %3527, %3518
  %3532 = fmul fast float %3528, %3518
  %3533 = fadd fast float %3529, %3508
  %3534 = fadd fast float %3530, %3351
  %3535 = fadd fast float %3531, %3352
  %3536 = fadd fast float %3532, %3353
  %3537 = extractvalue %dx.types.CBufRet.f32 %3519, 1
  %3538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3539 = extractvalue %dx.types.CBufRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.CBufRet.f32 %3538, 1
  %3541 = extractvalue %dx.types.CBufRet.f32 %3538, 2
  %3542 = fsub fast float %3537, %3507
  %3543 = fsub fast float %3539, %3348
  %3544 = fsub fast float %3540, %3349
  %3545 = fsub fast float %3541, %3350
  %3546 = fmul fast float %3542, %3518
  %3547 = fmul fast float %3543, %3518
  %3548 = fmul fast float %3544, %3518
  %3549 = fmul fast float %3545, %3518
  %3550 = fadd fast float %3546, %3507
  %3551 = fadd fast float %3547, %3348
  %3552 = fadd fast float %3548, %3349
  %3553 = fadd fast float %3549, %3350
  %3554 = extractvalue %dx.types.CBufRet.f32 %3519, 2
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 0
  %3557 = extractvalue %dx.types.CBufRet.f32 %3555, 1
  %3558 = extractvalue %dx.types.CBufRet.f32 %3555, 2
  %3559 = fsub fast float %3554, %3506
  %3560 = fsub fast float %3556, %3345
  %3561 = fsub fast float %3557, %3346
  %3562 = fsub fast float %3558, %3347
  %3563 = fmul fast float %3559, %3518
  %3564 = fmul fast float %3560, %3518
  %3565 = fmul fast float %3561, %3518
  %3566 = fmul fast float %3562, %3518
  %3567 = fadd fast float %3563, %3506
  %3568 = fadd fast float %3564, %3345
  %3569 = fadd fast float %3565, %3346
  %3570 = fadd fast float %3566, %3347
  br label %3571

; <label>:3571                                    ; preds = %3514, %3505
  %3572 = phi float [ %3567, %3514 ], [ %3506, %3505 ]
  %3573 = phi float [ %3568, %3514 ], [ %3345, %3505 ]
  %3574 = phi float [ %3569, %3514 ], [ %3346, %3505 ]
  %3575 = phi float [ %3570, %3514 ], [ %3347, %3505 ]
  %3576 = phi float [ %3550, %3514 ], [ %3507, %3505 ]
  %3577 = phi float [ %3551, %3514 ], [ %3348, %3505 ]
  %3578 = phi float [ %3552, %3514 ], [ %3349, %3505 ]
  %3579 = phi float [ %3553, %3514 ], [ %3350, %3505 ]
  %3580 = phi float [ %3533, %3514 ], [ %3508, %3505 ]
  %3581 = phi float [ %3534, %3514 ], [ %3351, %3505 ]
  %3582 = phi float [ %3535, %3514 ], [ %3352, %3505 ]
  %3583 = phi float [ %3536, %3514 ], [ %3353, %3505 ]
  %3584 = extractvalue %dx.types.CBufRet.f32 %3163, 3
  %3585 = fmul fast float %3584, %3580
  %3586 = fmul fast float %3584, %3576
  %3587 = fmul fast float %3584, %3572
  %3588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3589 = extractvalue %dx.types.CBufRet.f32 %3588, 3
  %3590 = fmul fast float %3585, %3589
  %3591 = fmul fast float %3586, %3589
  %3592 = fmul fast float %3587, %3589
  %3593 = call float @dx.op.dot3.f32(i32 55, float %3590, float %3591, float %3592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3594 = fmul fast float %3593, 0x3FD20DD760000000
  %3595 = fmul fast float %3581, 1.500000e+00
  %3596 = fmul fast float %3595, %3584
  %3597 = fmul fast float %3596, %3589
  %3598 = fmul fast float %3582, 1.500000e+00
  %3599 = fmul fast float %3598, %3584
  %3600 = fmul fast float %3599, %3589
  %3601 = fmul fast float %3583, 1.500000e+00
  %3602 = fmul fast float %3601, %3584
  %3603 = fmul fast float %3602, %3589
  %3604 = fmul fast float %3577, 1.500000e+00
  %3605 = fmul fast float %3604, %3584
  %3606 = fmul fast float %3605, %3589
  %3607 = fmul fast float %3578, 1.500000e+00
  %3608 = fmul fast float %3607, %3584
  %3609 = fmul fast float %3608, %3589
  %3610 = fmul fast float %3579, 1.500000e+00
  %3611 = fmul fast float %3610, %3584
  %3612 = fmul fast float %3611, %3589
  %3613 = fmul fast float %3573, 1.500000e+00
  %3614 = fmul fast float %3613, %3584
  %3615 = fmul fast float %3614, %3589
  %3616 = fmul fast float %3574, 1.500000e+00
  %3617 = fmul fast float %3616, %3584
  %3618 = fmul fast float %3617, %3589
  %3619 = fmul fast float %3575, 1.500000e+00
  %3620 = fmul fast float %3619, %3584
  %3621 = fmul fast float %3620, %3589
  %3622 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3590)  ; FMax(a,b)
  %3623 = call float @dx.op.dot3.f32(i32 55, float %3597, float %3600, float %3603, float %3597, float %3600, float %3603)  ; Dot3(ax,ay,az,bx,by,bz)
  %3624 = fcmp fast oeq float %3623, 0.000000e+00
  %3625 = fcmp fast oeq float %3622, 0.000000e+00
  %3626 = or i1 %3625, %3624
  br i1 %3626, label %3656, label %3627

; <label>:3627                                    ; preds = %3571
  %3628 = fsub fast float -0.000000e+00, %3603
  %3629 = fsub fast float -0.000000e+00, %3597
  %3630 = call float @dx.op.unary.f32(i32 24, float %3623)  ; Sqrt(value)
  %3631 = fdiv fast float %3630, %3622
  %3632 = fcmp fast ogt float %3631, 0x3FFB6F8900000000
  %3633 = select i1 %3632, float 0x3FFB6F8900000000, float %3631
  %3634 = fmul fast float %3633, 0x3FE8A23460000000
  %3635 = call float @dx.op.unary.f32(i32 7, float %3634)  ; Saturate(value)
  %3636 = call float @dx.op.binary.f32(i32 35, float %3633, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3637 = fmul fast float %3635, %3622
  %3638 = fmul fast float %3636, 0x3FF279A740000000
  %3639 = fadd fast float %3638, -1.000000e+00
  %3640 = call float @dx.op.dot3.f32(i32 55, float %3628, float %3629, float %3600, float %3628, float %3629, float %3600)  ; Dot3(ax,ay,az,bx,by,bz)
  %3641 = call float @dx.op.unary.f32(i32 25, float %3640)  ; Rsqrt(value)
  %3642 = fmul fast float %3641, %3628
  %3643 = fmul fast float %3641, %3629
  %3644 = fmul fast float %3641, %3600
  %3645 = fmul fast float %3639, %3639
  %3646 = fsub fast float 1.000000e+00, %3645
  %3647 = fmul fast float %3636, 0x40005F8BE0000000
  %3648 = fsub fast float 0x400C5BF8A0000000, %3647
  %3649 = fdiv fast float %3637, %3648
  %3650 = fmul fast float %3649, 0x3FEE31C3C0000000
  %3651 = fmul fast float %3650, %3646
  %3652 = fmul fast float %3636, 0x3FDACB7480000000
  %3653 = fadd fast float %3652, 0xBFD7347680000000
  %3654 = fmul fast float %3653, %3649
  %3655 = fmul fast float %3654, %3646
  br label %3656

; <label>:3656                                    ; preds = %3627, %3571
  %3657 = phi float [ %3642, %3627 ], [ 0.000000e+00, %3571 ]
  %3658 = phi float [ %3643, %3627 ], [ 0.000000e+00, %3571 ]
  %3659 = phi float [ %3644, %3627 ], [ 0.000000e+00, %3571 ]
  %3660 = phi float [ %3651, %3627 ], [ 0.000000e+00, %3571 ]
  %3661 = phi float [ %3655, %3627 ], [ 0.000000e+00, %3571 ]
  %3662 = call float @dx.op.dot3.f32(i32 55, float %3657, float %3658, float %3659, float %2570, float %2571, float %2572)  ; Dot3(ax,ay,az,bx,by,bz)
  %3663 = fmul fast float %3662, %3662
  %3664 = fmul fast float %3663, 0x3FEE471020000000
  %3665 = fadd fast float %3664, 0xBFD42F6020000000
  %3666 = fmul fast float %3622, 0x3FD20DD760000000
  %3667 = fmul fast float %3665, %3661
  %3668 = fmul fast float %3660, 0x3FDF454380000000
  %3669 = fmul fast float %3668, %3662
  %3670 = fadd fast float %3669, %3666
  %3671 = fadd fast float %3670, %3667
  %3672 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3591)  ; FMax(a,b)
  %3673 = call float @dx.op.dot3.f32(i32 55, float %3606, float %3609, float %3612, float %3606, float %3609, float %3612)  ; Dot3(ax,ay,az,bx,by,bz)
  %3674 = fcmp fast oeq float %3673, 0.000000e+00
  %3675 = fcmp fast oeq float %3672, 0.000000e+00
  %3676 = or i1 %3675, %3674
  br i1 %3676, label %3706, label %3677

; <label>:3677                                    ; preds = %3656
  %3678 = fsub fast float -0.000000e+00, %3612
  %3679 = fsub fast float -0.000000e+00, %3606
  %3680 = call float @dx.op.unary.f32(i32 24, float %3673)  ; Sqrt(value)
  %3681 = fdiv fast float %3680, %3672
  %3682 = fcmp fast ogt float %3681, 0x3FFB6F8900000000
  %3683 = select i1 %3682, float 0x3FFB6F8900000000, float %3681
  %3684 = fmul fast float %3683, 0x3FE8A23460000000
  %3685 = call float @dx.op.unary.f32(i32 7, float %3684)  ; Saturate(value)
  %3686 = call float @dx.op.binary.f32(i32 35, float %3683, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3687 = fmul fast float %3685, %3672
  %3688 = fmul fast float %3686, 0x3FF279A740000000
  %3689 = fadd fast float %3688, -1.000000e+00
  %3690 = call float @dx.op.dot3.f32(i32 55, float %3678, float %3679, float %3609, float %3678, float %3679, float %3609)  ; Dot3(ax,ay,az,bx,by,bz)
  %3691 = call float @dx.op.unary.f32(i32 25, float %3690)  ; Rsqrt(value)
  %3692 = fmul fast float %3691, %3678
  %3693 = fmul fast float %3691, %3679
  %3694 = fmul fast float %3691, %3609
  %3695 = fmul fast float %3689, %3689
  %3696 = fsub fast float 1.000000e+00, %3695
  %3697 = fmul fast float %3686, 0x40005F8BE0000000
  %3698 = fsub fast float 0x400C5BF8A0000000, %3697
  %3699 = fdiv fast float %3687, %3698
  %3700 = fmul fast float %3699, 0x3FEE31C3C0000000
  %3701 = fmul fast float %3700, %3696
  %3702 = fmul fast float %3686, 0x3FDACB7480000000
  %3703 = fadd fast float %3702, 0xBFD7347680000000
  %3704 = fmul fast float %3703, %3699
  %3705 = fmul fast float %3704, %3696
  br label %3706

; <label>:3706                                    ; preds = %3677, %3656
  %3707 = phi float [ %3692, %3677 ], [ 0.000000e+00, %3656 ]
  %3708 = phi float [ %3693, %3677 ], [ 0.000000e+00, %3656 ]
  %3709 = phi float [ %3694, %3677 ], [ 0.000000e+00, %3656 ]
  %3710 = phi float [ %3701, %3677 ], [ 0.000000e+00, %3656 ]
  %3711 = phi float [ %3705, %3677 ], [ 0.000000e+00, %3656 ]
  %3712 = call float @dx.op.dot3.f32(i32 55, float %3707, float %3708, float %3709, float %2570, float %2571, float %2572)  ; Dot3(ax,ay,az,bx,by,bz)
  %3713 = fmul fast float %3712, %3712
  %3714 = fmul fast float %3713, 0x3FEE471020000000
  %3715 = fadd fast float %3714, 0xBFD42F6020000000
  %3716 = fmul fast float %3672, 0x3FD20DD760000000
  %3717 = fmul fast float %3715, %3711
  %3718 = fmul fast float %3710, 0x3FDF454380000000
  %3719 = fmul fast float %3718, %3712
  %3720 = fadd fast float %3719, %3716
  %3721 = fadd fast float %3720, %3717
  %3722 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3592)  ; FMax(a,b)
  %3723 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3618, float %3621, float %3615, float %3618, float %3621)  ; Dot3(ax,ay,az,bx,by,bz)
  %3724 = fcmp fast oeq float %3723, 0.000000e+00
  %3725 = fcmp fast oeq float %3722, 0.000000e+00
  %3726 = or i1 %3725, %3724
  br i1 %3726, label %3756, label %3727

; <label>:3727                                    ; preds = %3706
  %3728 = fsub fast float -0.000000e+00, %3621
  %3729 = fsub fast float -0.000000e+00, %3615
  %3730 = call float @dx.op.unary.f32(i32 24, float %3723)  ; Sqrt(value)
  %3731 = fdiv fast float %3730, %3722
  %3732 = fcmp fast ogt float %3731, 0x3FFB6F8900000000
  %3733 = select i1 %3732, float 0x3FFB6F8900000000, float %3731
  %3734 = fmul fast float %3733, 0x3FE8A23460000000
  %3735 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3736 = call float @dx.op.binary.f32(i32 35, float %3733, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3737 = fmul fast float %3735, %3722
  %3738 = fmul fast float %3736, 0x3FF279A740000000
  %3739 = fadd fast float %3738, -1.000000e+00
  %3740 = call float @dx.op.dot3.f32(i32 55, float %3728, float %3729, float %3618, float %3728, float %3729, float %3618)  ; Dot3(ax,ay,az,bx,by,bz)
  %3741 = call float @dx.op.unary.f32(i32 25, float %3740)  ; Rsqrt(value)
  %3742 = fmul fast float %3741, %3728
  %3743 = fmul fast float %3741, %3729
  %3744 = fmul fast float %3741, %3618
  %3745 = fmul fast float %3739, %3739
  %3746 = fsub fast float 1.000000e+00, %3745
  %3747 = fmul fast float %3736, 0x40005F8BE0000000
  %3748 = fsub fast float 0x400C5BF8A0000000, %3747
  %3749 = fdiv fast float %3737, %3748
  %3750 = fmul fast float %3749, 0x3FEE31C3C0000000
  %3751 = fmul fast float %3750, %3746
  %3752 = fmul fast float %3736, 0x3FDACB7480000000
  %3753 = fadd fast float %3752, 0xBFD7347680000000
  %3754 = fmul fast float %3753, %3749
  %3755 = fmul fast float %3754, %3746
  br label %3756

; <label>:3756                                    ; preds = %3727, %3706
  %3757 = phi float [ %3742, %3727 ], [ 0.000000e+00, %3706 ]
  %3758 = phi float [ %3743, %3727 ], [ 0.000000e+00, %3706 ]
  %3759 = phi float [ %3744, %3727 ], [ 0.000000e+00, %3706 ]
  %3760 = phi float [ %3751, %3727 ], [ 0.000000e+00, %3706 ]
  %3761 = phi float [ %3755, %3727 ], [ 0.000000e+00, %3706 ]
  %3762 = call float @dx.op.dot3.f32(i32 55, float %3757, float %3758, float %3759, float %2570, float %2571, float %2572)  ; Dot3(ax,ay,az,bx,by,bz)
  %3763 = fmul fast float %3762, %3762
  %3764 = fmul fast float %3763, 0x3FEE471020000000
  %3765 = fadd fast float %3764, 0xBFD42F6020000000
  %3766 = fmul fast float %3722, 0x3FD20DD760000000
  %3767 = fmul fast float %3765, %3761
  %3768 = fmul fast float %3760, 0x3FDF454380000000
  %3769 = fmul fast float %3768, %3762
  %3770 = fadd fast float %3769, %3766
  %3771 = fadd fast float %3770, %3767
  %3772 = call float @dx.op.binary.f32(i32 35, float %3671, float 0.000000e+00)  ; FMax(a,b)
  %3773 = call float @dx.op.binary.f32(i32 35, float %3721, float 0.000000e+00)  ; FMax(a,b)
  %3774 = call float @dx.op.binary.f32(i32 35, float %3771, float 0.000000e+00)  ; FMax(a,b)
  %3775 = fsub fast float %2991, %3772
  %3776 = fsub fast float %2992, %3773
  %3777 = fsub fast float %2993, %3774
  %3778 = fmul fast float %3775, %2800
  %3779 = fmul fast float %3776, %2800
  %3780 = fmul fast float %3777, %2800
  %3781 = fadd fast float %3778, %3772
  %3782 = fadd fast float %3779, %3773
  %3783 = fadd fast float %3780, %3774
  %3784 = fmul fast float %3594, %2800
  %3785 = fsub fast float %3594, %3784
  br label %3786

; <label>:3786                                    ; preds = %3756, %2990
  %3787 = phi float [ %3785, %3756 ], [ 0.000000e+00, %2990 ]
  %3788 = phi float [ %3781, %3756 ], [ %2991, %2990 ]
  %3789 = phi float [ %3782, %3756 ], [ %2992, %2990 ]
  %3790 = phi float [ %3783, %3756 ], [ %2993, %2990 ]
  %3791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3791, 0
  %3793 = call float @dx.op.binary.f32(i32 36, float %2582, float %3792)  ; FMin(a,b)
  %3794 = fmul fast float %3793, %2779
  %3795 = fsub fast float 1.000000e+00, %3794
  %3796 = bitcast float %3795 to i32
  %3797 = sub nsw i32 2129859010, %3796
  %3798 = bitcast i32 %3797 to float
  %3799 = call float @dx.op.binary.f32(i32 36, float %2583, float %3792)  ; FMin(a,b)
  %3800 = fmul fast float %3799, %2779
  %3801 = fsub fast float 1.000000e+00, %3800
  %3802 = bitcast float %3801 to i32
  %3803 = sub nsw i32 2129859010, %3802
  %3804 = bitcast i32 %3803 to float
  %3805 = call float @dx.op.binary.f32(i32 36, float %2584, float %3792)  ; FMin(a,b)
  %3806 = fmul fast float %3805, %2779
  %3807 = fsub fast float 1.000000e+00, %3806
  %3808 = bitcast float %3807 to i32
  %3809 = sub nsw i32 2129859010, %3808
  %3810 = bitcast i32 %3809 to float
  %3811 = fmul fast float %3788, %2778
  %3812 = fmul fast float %3811, %3798
  %3813 = fmul fast float %3789, %2778
  %3814 = fmul fast float %3813, %3804
  %3815 = fmul fast float %3790, %2778
  %3816 = fmul fast float %3815, %3810
  %3817 = extractvalue %dx.types.CBufRet.i32 %2797, 2
  %3818 = and i32 %3817, 1
  %3819 = icmp ne i32 %3818, 0
  %3820 = fsub fast float 1.000000e+00, %2800
  %3821 = select i1 %3819, float %2800, float %3812
  %3822 = select i1 %3819, float %3820, float %3814
  %3823 = select i1 %3819, float 0.000000e+00, float %3816
  %3824 = call float @dx.op.dot3.f32(i32 55, float %3821, float %3822, float %3823, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3825 = select i1 %2753, float 0.000000e+00, float %3821
  %3826 = select i1 %2753, float %3824, float %3822
  %3827 = select i1 %2753, float 0.000000e+00, float %3823
  %3828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.f32 %3828, 0
  %3830 = bitcast float %3829 to i32
  %3831 = lshr i32 %3830, 8
  %3832 = and i32 %3831, 255
  %3833 = uitofp i32 %3832 to float
  %3834 = fptoui float %3833 to i32
  %3835 = icmp eq i32 %3834, 23
  br i1 %3835, label %3836, label %3859

; <label>:3836                                    ; preds = %3786
  %3837 = fmul fast float %3810, %2778
  %3838 = fmul fast float %3804, %2778
  %3839 = fmul fast float %3798, %2778
  %3840 = fadd fast float %3839, 1.000000e+00
  %3841 = fadd fast float %3838, 1.000000e+00
  %3842 = fadd fast float %3837, 1.000000e+00
  %3843 = fmul fast float %3840, 5.000000e-01
  %3844 = fmul fast float %3841, 5.000000e-01
  %3845 = fmul fast float %3842, 5.000000e-01
  %3846 = call float @dx.op.unary.f32(i32 7, float %3843)  ; Saturate(value)
  %3847 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3848 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  %3849 = fmul fast float %3846, 1.023000e+03
  %3850 = fmul fast float %3847, 1.023000e+03
  %3851 = fmul fast float %3848, 1.023000e+03
  %3852 = fptoui float %3849 to i32
  %3853 = fptoui float %3850 to i32
  %3854 = fptoui float %3851 to i32
  %3855 = shl i32 %3853, 10
  %3856 = or i32 %3855, %3852
  %3857 = shl i32 %3854, 20
  %3858 = or i32 %3856, %3857
  br label %3859

; <label>:3859                                    ; preds = %3836, %3786
  %3860 = phi i32 [ %3858, %3836 ], [ 0, %3786 ]
  %3861 = fsub fast float 1.000000e+00, %2758
  %3862 = fmul fast float %3861, %2630
  %3863 = fadd fast float %3862, %2758
  %3864 = call float @dx.op.binary.f32(i32 35, float %2657, float %3863)  ; FMax(a,b)
  %3865 = call float @dx.op.binary.f32(i32 35, float %2656, float %3864)  ; FMax(a,b)
  %3866 = fsub fast float 1.000000e+00, %3865
  %3867 = extractvalue %dx.types.CBufRet.f32 %2768, 2
  %3868 = fcmp fast olt float %3867, 0.000000e+00
  br i1 %3868, label %3869, label %4580

; <label>:3869                                    ; preds = %3859
  %3870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3870, 2
  %3872 = extractvalue %dx.types.CBufRet.f32 %3870, 3
  %3873 = fmul fast float %3871, %100
  %3874 = fmul fast float %3872, %101
  %3875 = fptoui float %3873 to i32
  %3876 = fptoui float %3874 to i32
  %3877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.f32 %3877, 0
  %3879 = extractvalue %dx.types.CBufRet.f32 %3877, 2
  %3880 = extractvalue %dx.types.CBufRet.f32 %3877, 3
  %3881 = fadd fast float %89, -4.000000e+00
  %3882 = call float @dx.op.binary.f32(i32 35, float %3881, float 0.000000e+00)  ; FMax(a,b)
  %3883 = fadd fast float %3882, %3878
  %3884 = fmul fast float %3883, %3879
  %3885 = call float @dx.op.unary.f32(i32 23, float %3884)  ; Log(value)
  %3886 = fmul fast float %3885, %3880
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 2
  %3889 = fmul fast float %3886, %3888
  %3890 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3892 = extractvalue %dx.types.CBufRet.i32 %3891, 1
  %3893 = add i32 %3892, -1
  %3894 = uitofp i32 %3892 to float
  %3895 = fmul fast float %3894, %3890
  %3896 = fptoui float %3895 to i32
  %3897 = call i32 @dx.op.binary.i32(i32 40, i32 %3896, i32 %3893)  ; UMin(a,b)
  %3898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.i32 %3898, 2
  %3900 = extractvalue %dx.types.CBufRet.i32 %3898, 3
  %3901 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3876, i32 %3899, i32 %3875)  ; UMad(a,b,c)
  %3902 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3897, i32 %3900, i32 %3901)  ; UMad(a,b,c)
  %3903 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %3904 = fptoui float %3903 to i32
  %3905 = lshr i32 %3904, 5
  %3906 = call i32 @dx.op.binary.i32(i32 40, i32 %3905, i32 8191)  ; UMin(a,b)
  %3907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.i32 %3907, 2
  %3909 = add nsw i32 %3908, -1
  %3910 = call i32 @dx.op.binary.i32(i32 37, i32 %3909, i32 0)  ; IMax(a,b)
  %3911 = shl i32 %3906, 2
  %3912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3911, i32 undef)  ; BufferLoad(srv,index,wot)
  %3913 = extractvalue %dx.types.ResRet.i32 %3912, 0
  %3914 = lshr i32 %3913, 16
  %3915 = and i32 %3913, 65535
  %3916 = lshr i32 %3913, 21
  %3917 = lshr i32 %3915, 5
  %3918 = call i32 @dx.op.binary.i32(i32 40, i32 %3917, i32 %3910)  ; UMin(a,b)
  %3919 = icmp ugt i32 %3916, %3918
  br i1 %3919, label %4505, label %3920

; <label>:3920                                    ; preds = %3869
  br label %3921

; <label>:3921                                    ; preds = %4487, %3920
  %3922 = phi i32 [ %4488, %4487 ], [ %2544, %3920 ]
  %3923 = phi i32 [ %4489, %4487 ], [ %3860, %3920 ]
  %3924 = phi float [ %4490, %4487 ], [ 0.000000e+00, %3920 ]
  %3925 = phi float [ %4491, %4487 ], [ 0.000000e+00, %3920 ]
  %3926 = phi float [ %4492, %4487 ], [ 0.000000e+00, %3920 ]
  %3927 = phi float [ %4493, %4487 ], [ 0.000000e+00, %3920 ]
  %3928 = phi float [ %4494, %4487 ], [ 0.000000e+00, %3920 ]
  %3929 = phi float [ %4495, %4487 ], [ 0.000000e+00, %3920 ]
  %3930 = phi i32 [ %4496, %4487 ], [ 0, %3920 ]
  %3931 = phi float [ %4497, %4487 ], [ 0.000000e+00, %3920 ]
  %3932 = phi float [ %4498, %4487 ], [ 0.000000e+00, %3920 ]
  %3933 = phi float [ %4499, %4487 ], [ 0.000000e+00, %3920 ]
  %3934 = phi i32 [ %4500, %4487 ], [ 1, %3920 ]
  %3935 = phi float [ %4501, %4487 ], [ 1.000000e+00, %3920 ]
  %3936 = phi i32 [ %4502, %4487 ], [ %3916, %3920 ]
  %3937 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.i32 %3937, 2
  %3939 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3902, i32 %3938, i32 %3936)  ; UMad(a,b,c)
  %3940 = shl i32 %3939, 2
  %3941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.i32 %3941, 0
  %3943 = shl i32 %3936, 5
  %3944 = sub nsw i32 %3914, %3943
  %3945 = call i32 @dx.op.binary.i32(i32 37, i32 %3944, i32 0)  ; IMax(a,b)
  %3946 = call i32 @dx.op.binary.i32(i32 38, i32 %3945, i32 31)  ; IMin(a,b)
  %3947 = sub nsw i32 1, %3914
  %3948 = add nsw i32 %3947, %3915
  %3949 = call i32 @dx.op.binary.i32(i32 37, i32 %3948, i32 0)  ; IMax(a,b)
  %3950 = call i32 @dx.op.binary.i32(i32 38, i32 %3949, i32 32)  ; IMin(a,b)
  %3951 = and i32 %3950, 31
  %3952 = shl i32 -1, %3951
  %3953 = xor i32 %3952, -1
  %3954 = and i32 %3946, 31
  %3955 = shl i32 %3953, %3954
  %3956 = icmp eq i32 %3950, 32
  %3957 = select i1 %3956, i32 -1, i32 %3955
  %3958 = and i32 %3957, %3942
  %3959 = icmp eq i32 %3958, 0
  br i1 %3959, label %4487, label %3960

; <label>:3960                                    ; preds = %3921
  br label %3961

; <label>:3961                                    ; preds = %4098, %3960
  %3962 = phi i32 [ %4099, %4098 ], [ %3922, %3960 ]
  %3963 = phi i32 [ %4100, %4098 ], [ %3923, %3960 ]
  %3964 = phi float [ %4101, %4098 ], [ %3924, %3960 ]
  %3965 = phi float [ %4102, %4098 ], [ %3925, %3960 ]
  %3966 = phi float [ %4103, %4098 ], [ %3926, %3960 ]
  %3967 = phi float [ %4104, %4098 ], [ %3927, %3960 ]
  %3968 = phi float [ %4105, %4098 ], [ %3928, %3960 ]
  %3969 = phi float [ %4106, %4098 ], [ %3929, %3960 ]
  %3970 = phi i32 [ %4107, %4098 ], [ %3930, %3960 ]
  %3971 = phi float [ %4108, %4098 ], [ %3931, %3960 ]
  %3972 = phi float [ %4109, %4098 ], [ %3932, %3960 ]
  %3973 = phi float [ %4110, %4098 ], [ %3933, %3960 ]
  %3974 = phi i32 [ %4111, %4098 ], [ %3934, %3960 ]
  %3975 = phi float [ %4112, %4098 ], [ %3935, %3960 ]
  %3976 = phi i32 [ %3981, %4098 ], [ %3958, %3960 ]
  %3977 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3976)  ; FirstbitLo(value)
  %3978 = add i32 %3977, %3943
  %3979 = and i32 %3977, 31
  %3980 = shl i32 1, %3979
  %3981 = xor i32 %3980, %3976
  %3982 = mul i32 %3978, 72
  %3983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3982, i32 undef)  ; BufferLoad(srv,index,wot)
  %3984 = extractvalue %dx.types.ResRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.ResRet.f32 %3983, 1
  %3986 = extractvalue %dx.types.ResRet.f32 %3983, 2
  %3987 = add i32 %3982, 12
  %3988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3987, i32 undef)  ; BufferLoad(srv,index,wot)
  %3989 = extractvalue %dx.types.ResRet.i32 %3988, 0
  %3990 = add i32 %3982, 16
  %3991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3990, i32 undef)  ; BufferLoad(srv,index,wot)
  %3992 = extractvalue %dx.types.ResRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.ResRet.f32 %3991, 1
  %3994 = extractvalue %dx.types.ResRet.f32 %3991, 2
  %3995 = add i32 %3982, 28
  %3996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3995, i32 undef)  ; BufferLoad(srv,index,wot)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %3998 = add i32 %3982, 32
  %3999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3998, i32 undef)  ; BufferLoad(srv,index,wot)
  %4000 = extractvalue %dx.types.ResRet.f32 %3999, 0
  %4001 = extractvalue %dx.types.ResRet.f32 %3999, 1
  %4002 = extractvalue %dx.types.ResRet.f32 %3999, 2
  %4003 = extractvalue %dx.types.ResRet.f32 %3999, 3
  %4004 = add i32 %3982, 48
  %4005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4004, i32 undef)  ; BufferLoad(srv,index,wot)
  %4006 = extractvalue %dx.types.ResRet.f32 %4005, 0
  %4007 = extractvalue %dx.types.ResRet.f32 %4005, 1
  %4008 = add i32 %3982, 56
  %4009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4008, i32 undef)  ; BufferLoad(srv,index,wot)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.ResRet.f32 %4009, 1
  %4012 = add i32 %3982, 64
  %4013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4012, i32 undef)  ; BufferLoad(srv,index,wot)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.ResRet.f32 %4013, 1
  %4016 = mul i32 %3978, 60
  %4017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.f32 %4017, 0
  %4019 = extractvalue %dx.types.ResRet.f32 %4017, 1
  %4020 = extractvalue %dx.types.ResRet.f32 %4017, 2
  %4021 = add i32 %4016, 12
  %4022 = add i32 %4016, 48
  %4023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.ResRet.f32 %4023, 1
  %4026 = extractvalue %dx.types.ResRet.f32 %4023, 2
  %4027 = and i32 %3989, 32767
  %4028 = bitcast float %3984 to i32
  %4029 = bitcast float %3985 to i32
  %4030 = and i32 %3989, 32768
  %4031 = icmp ne i32 %4030, 0
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 3
  %4034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4035 = extractvalue %dx.types.CBufRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.CBufRet.f32 %4034, 1
  %4037 = extractvalue %dx.types.CBufRet.f32 %4034, 2
  %4038 = fsub fast float %4018, %4035
  %4039 = fsub fast float %4019, %4036
  %4040 = fsub fast float %4020, %4037
  %4041 = fsub fast float %155, %4038
  %4042 = fsub fast float %156, %4039
  %4043 = fsub fast float %157, %4040
  %4044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4021, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.ResRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.ResRet.f32 %4044, 2
  %4048 = call float @dx.op.dot3.f32(i32 55, float %4041, float %4042, float %4043, float %4045, float %4046, float %4047)  ; Dot3(ax,ay,az,bx,by,bz)
  %4049 = add i32 %4016, 24
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = extractvalue %dx.types.ResRet.f32 %4050, 1
  %4053 = extractvalue %dx.types.ResRet.f32 %4050, 2
  %4054 = call float @dx.op.dot3.f32(i32 55, float %4041, float %4042, float %4043, float %4051, float %4052, float %4053)  ; Dot3(ax,ay,az,bx,by,bz)
  %4055 = add i32 %4016, 36
  %4056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4055, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.ResRet.f32 %4056, 1
  %4059 = extractvalue %dx.types.ResRet.f32 %4056, 2
  %4060 = call float @dx.op.dot3.f32(i32 55, float %4041, float %4042, float %4043, float %4057, float %4058, float %4059)  ; Dot3(ax,ay,az,bx,by,bz)
  %4061 = call float @dx.op.unary.f32(i32 6, float %4048)  ; FAbs(value)
  %4062 = call float @dx.op.unary.f32(i32 6, float %4054)  ; FAbs(value)
  %4063 = call float @dx.op.unary.f32(i32 6, float %4060)  ; FAbs(value)
  %4064 = fsub fast float %4024, %4061
  %4065 = fsub fast float %4025, %4062
  %4066 = fsub fast float %4026, %4063
  %4067 = fmul fast float %4064, %3992
  %4068 = fmul fast float %4065, %3993
  %4069 = fmul fast float %4066, %3994
  %4070 = call float @dx.op.binary.f32(i32 36, float %4068, float %4069)  ; FMin(a,b)
  %4071 = call float @dx.op.binary.f32(i32 36, float %4067, float %4070)  ; FMin(a,b)
  %4072 = call float @dx.op.unary.f32(i32 7, float %4071)  ; Saturate(value)
  %4073 = call float @dx.op.binary.f32(i32 36, float %3975, float %4072)  ; FMin(a,b)
  %4074 = uitofp i1 %4031 to float
  %4075 = select i1 %117, float 1.000000e+00, float 2.000000e+00
  %4076 = fsub fast float %4075, %4074
  %4077 = fmul fast float %4073, %4076
  %4078 = lshr i32 %3962, 8
  %4079 = and i32 %4078, 255
  %4080 = uitofp i32 %4079 to float
  %4081 = fptoui float %4080 to i32
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 1
  %4084 = bitcast float %4083 to i32
  %4085 = lshr i32 %4084, 24
  %4086 = uitofp i32 %4085 to float
  %4087 = fptoui float %4086 to i32
  %4088 = icmp ne i32 %4087, 1
  %4089 = zext i1 %4088 to i32
  %4090 = add i32 %4089, %4081
  %4091 = uitofp i32 %4090 to float
  %4092 = fptoui float %4091 to i32
  %4093 = shl i32 %4092, 8
  %4094 = and i32 %4093, 65280
  %4095 = and i32 %3962, -65281
  %4096 = or i32 %4094, %4095
  %4097 = fcmp fast ogt float %4077, 0.000000e+00
  br i1 %4097, label %4114, label %4098

; <label>:4098                                    ; preds = %4470, %4339, %3961
  %4099 = phi i32 [ %4417, %4339 ], [ %4096, %3961 ], [ %4417, %4470 ]
  %4100 = phi i32 [ %3963, %4339 ], [ %3963, %3961 ], [ %4485, %4470 ]
  %4101 = phi float [ %4403, %4339 ], [ %3964, %3961 ], [ %4403, %4470 ]
  %4102 = phi float [ %4404, %4339 ], [ %3965, %3961 ], [ %4404, %4470 ]
  %4103 = phi float [ %4405, %4339 ], [ %3966, %3961 ], [ %4405, %4470 ]
  %4104 = phi float [ %4464, %4339 ], [ %3967, %3961 ], [ %4464, %4470 ]
  %4105 = phi float [ %4465, %4339 ], [ %3968, %3961 ], [ %4465, %4470 ]
  %4106 = phi float [ %4466, %4339 ], [ %3969, %3961 ], [ %4466, %4470 ]
  %4107 = phi i32 [ %4468, %4339 ], [ %3970, %3961 ], [ %4468, %4470 ]
  %4108 = phi float [ %4421, %4339 ], [ %3971, %3961 ], [ %4421, %4470 ]
  %4109 = phi float [ %4422, %4339 ], [ %3972, %3961 ], [ %4422, %4470 ]
  %4110 = phi float [ %4423, %4339 ], [ %3973, %3961 ], [ %4423, %4470 ]
  %4111 = phi i32 [ 0, %4339 ], [ %3974, %3961 ], [ 0, %4470 ]
  %4112 = phi float [ %4406, %4339 ], [ %3975, %3961 ], [ %4406, %4470 ]
  %4113 = icmp eq i32 %3976, %3980
  br i1 %4113, label %4486, label %3961

; <label>:4114                                    ; preds = %3961
  %4115 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4116 = bitcast float %4115 to i32
  %4117 = lshr i32 %4116, 8
  %4118 = and i32 %4117, 255
  %4119 = uitofp i32 %4118 to float
  %4120 = fptoui float %4119 to i32
  %4121 = and i32 %4120, 2
  %4122 = icmp eq i32 %4121, 0
  br i1 %4122, label %4129, label %4123

; <label>:4123                                    ; preds = %4114
  %4124 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %4125 = call float @dx.op.unary.f32(i32 25, float %4124)  ; Rsqrt(value)
  %4126 = fmul fast float %4125, %155
  %4127 = fmul fast float %4125, %156
  %4128 = fmul fast float %4125, %157
  br label %4129

; <label>:4129                                    ; preds = %4123, %4114
  %4130 = phi float [ %4126, %4123 ], [ %2570, %4114 ]
  %4131 = phi float [ %4127, %4123 ], [ %2571, %4114 ]
  %4132 = phi float [ %4128, %4123 ], [ %2572, %4114 ]
  %4133 = icmp ne i32 %4028, -1
  %4134 = fcmp oeq float %4033, 0.000000e+00
  %4135 = and i1 %4134, %4133
  br i1 %4135, label %4136, label %4260

; <label>:4136                                    ; preds = %4129
  %4137 = fsub fast float -0.000000e+00, %4045
  %4138 = fsub fast float -0.000000e+00, %4046
  %4139 = fsub fast float -0.000000e+00, %4047
  %4140 = call float @dx.op.dot3.f32(i32 55, float %4130, float %4131, float %4132, float %4137, float %4138, float %4139)  ; Dot3(ax,ay,az,bx,by,bz)
  %4141 = fsub fast float -0.000000e+00, %4140
  %4142 = call float @dx.op.dot3.f32(i32 55, float %4041, float %4042, float %4043, float %4137, float %4138, float %4139)  ; Dot3(ax,ay,az,bx,by,bz)
  %4143 = fadd fast float %4142, %4007
  %4144 = fadd fast float %4006, %4142
  %4145 = fsub fast float -0.000000e+00, %4144
  %4146 = fcmp ogt float %4140, -0.000000e+00
  %4147 = select i1 %4146, float %4145, float %4143
  %4148 = call float @dx.op.unary.f32(i32 6, float %4141)  ; FAbs(value)
  %4149 = fdiv fast float 1.000000e+00, %4148
  %4150 = fmul fast float %4147, %4149
  %4151 = call float @dx.op.binary.f32(i32 35, float %4150, float 0.000000e+00)  ; FMax(a,b)
  %4152 = fsub fast float -0.000000e+00, %4051
  %4153 = fsub fast float -0.000000e+00, %4052
  %4154 = fsub fast float -0.000000e+00, %4053
  %4155 = call float @dx.op.dot3.f32(i32 55, float %4130, float %4131, float %4132, float %4152, float %4153, float %4154)  ; Dot3(ax,ay,az,bx,by,bz)
  %4156 = fsub fast float -0.000000e+00, %4155
  %4157 = call float @dx.op.dot3.f32(i32 55, float %4041, float %4042, float %4043, float %4152, float %4153, float %4154)  ; Dot3(ax,ay,az,bx,by,bz)
  %4158 = fadd fast float %4157, %4011
  %4159 = fadd fast float %4010, %4157
  %4160 = fsub fast float -0.000000e+00, %4159
  %4161 = fcmp ogt float %4155, -0.000000e+00
  %4162 = select i1 %4161, float %4160, float %4158
  %4163 = call float @dx.op.unary.f32(i32 6, float %4156)  ; FAbs(value)
  %4164 = fdiv fast float 1.000000e+00, %4163
  %4165 = fmul fast float %4162, %4164
  %4166 = call float @dx.op.binary.f32(i32 35, float %4165, float 0.000000e+00)  ; FMax(a,b)
  %4167 = fsub fast float -0.000000e+00, %4057
  %4168 = fsub fast float -0.000000e+00, %4058
  %4169 = fsub fast float -0.000000e+00, %4059
  %4170 = call float @dx.op.dot3.f32(i32 55, float %4130, float %4131, float %4132, float %4167, float %4168, float %4169)  ; Dot3(ax,ay,az,bx,by,bz)
  %4171 = fsub fast float -0.000000e+00, %4170
  %4172 = call float @dx.op.dot3.f32(i32 55, float %4041, float %4042, float %4043, float %4167, float %4168, float %4169)  ; Dot3(ax,ay,az,bx,by,bz)
  %4173 = fadd fast float %4172, %4015
  %4174 = fadd fast float %4014, %4172
  %4175 = fsub fast float -0.000000e+00, %4174
  %4176 = fcmp ogt float %4170, -0.000000e+00
  %4177 = select i1 %4176, float %4175, float %4173
  %4178 = call float @dx.op.unary.f32(i32 6, float %4171)  ; FAbs(value)
  %4179 = fdiv fast float 1.000000e+00, %4178
  %4180 = fmul fast float %4177, %4179
  %4181 = call float @dx.op.binary.f32(i32 35, float %4180, float 0.000000e+00)  ; FMax(a,b)
  %4182 = call float @dx.op.binary.f32(i32 36, float %4166, float %4181)  ; FMin(a,b)
  %4183 = call float @dx.op.binary.f32(i32 36, float %4151, float %4182)  ; FMin(a,b)
  %4184 = fmul fast float %4183, %4130
  %4185 = fmul fast float %4183, %4131
  %4186 = fmul fast float %4183, %4132
  %4187 = fadd fast float %4184, %155
  %4188 = fadd fast float %4185, %156
  %4189 = fadd fast float %4186, %157
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 0
  %4192 = extractvalue %dx.types.CBufRet.f32 %4190, 1
  %4193 = extractvalue %dx.types.CBufRet.f32 %4190, 2
  %4194 = fadd fast float %4187, %4191
  %4195 = fadd fast float %4188, %4192
  %4196 = fadd fast float %4189, %4193
  %4197 = fcmp fast olt float %4151, %4166
  %4198 = fcmp fast olt float %4151, %4181
  %4199 = and i1 %4197, %4198
  br i1 %4199, label %4203, label %4200

; <label>:4200                                    ; preds = %4136
  %4201 = fcmp fast olt float %4166, %4181
  br i1 %4201, label %4202, label %4203

; <label>:4202                                    ; preds = %4200
  br label %4203

; <label>:4203                                    ; preds = %4202, %4200, %4136
  %4204 = phi float [ 0.000000e+00, %4202 ], [ 0.000000e+00, %4200 ], [ 1.000000e+00, %4136 ]
  %4205 = phi float [ 1.000000e+00, %4202 ], [ 0.000000e+00, %4200 ], [ 0.000000e+00, %4136 ]
  %4206 = phi float [ 0.000000e+00, %4202 ], [ 1.000000e+00, %4200 ], [ 0.000000e+00, %4136 ]
  %4207 = phi float [ %4051, %4202 ], [ %4057, %4200 ], [ %4045, %4136 ]
  %4208 = phi float [ %4052, %4202 ], [ %4058, %4200 ], [ %4046, %4136 ]
  %4209 = phi float [ %4053, %4202 ], [ %4059, %4200 ], [ %4047, %4136 ]
  %4210 = call float @dx.op.unary.f32(i32 6, float %4209)  ; FAbs(value)
  %4211 = fcmp fast olt float %4210, 0x3FE276C8C0000000
  %4212 = select i1 %4211, float 0.000000e+00, float 1.000000e+00
  %4213 = select i1 %4211, float 1.000000e+00, float 0.000000e+00
  %4214 = fmul fast float %4213, %4208
  %4215 = fmul fast float %4212, %4209
  %4216 = fsub fast float %4214, %4215
  %4217 = fmul fast float %4207, %4213
  %4218 = fsub fast float -0.000000e+00, %4217
  %4219 = fmul fast float %4212, %4207
  %4220 = call float @dx.op.dot3.f32(i32 55, float %4216, float %4218, float %4219, float %4216, float %4218, float %4219)  ; Dot3(ax,ay,az,bx,by,bz)
  %4221 = call float @dx.op.unary.f32(i32 25, float %4220)  ; Rsqrt(value)
  %4222 = fmul fast float %4216, %4221
  %4223 = fmul fast float %4221, %4218
  %4224 = fmul fast float %4219, %4221
  %4225 = fmul fast float %4224, %4208
  %4226 = fmul fast float %4223, %4209
  %4227 = fsub fast float %4225, %4226
  %4228 = fmul fast float %4222, %4209
  %4229 = fmul fast float %4224, %4207
  %4230 = fsub fast float %4228, %4229
  %4231 = fmul fast float %4223, %4207
  %4232 = fmul fast float %4222, %4208
  %4233 = fsub fast float %4231, %4232
  %4234 = call float @dx.op.dot3.f32(i32 55, float %4227, float %4230, float %4233, float %4227, float %4230, float %4233)  ; Dot3(ax,ay,az,bx,by,bz)
  %4235 = call float @dx.op.unary.f32(i32 25, float %4234)  ; Rsqrt(value)
  %4236 = fmul fast float %4227, %4235
  %4237 = fmul fast float %4230, %4235
  %4238 = fmul fast float %4233, %4235
  %4239 = call float @dx.op.dot3.f32(i32 55, float %4194, float %4195, float %4196, float %4222, float %4223, float %4224)  ; Dot3(ax,ay,az,bx,by,bz)
  %4240 = call float @dx.op.dot3.f32(i32 55, float %4194, float %4195, float %4196, float %4236, float %4237, float %4238)  ; Dot3(ax,ay,az,bx,by,bz)
  %4241 = fmul fast float %4239, 0x3FA99999A0000000
  %4242 = fmul fast float %4240, 0x3FA99999A0000000
  %4243 = call float @dx.op.unary.f32(i32 22, float %4241)  ; Frc(value)
  %4244 = call float @dx.op.unary.f32(i32 22, float %4242)  ; Frc(value)
  %4245 = fadd fast float %4243, 0xBFB99999A0000000
  %4246 = fadd fast float %4244, 0xBFB99999A0000000
  %4247 = call float @dx.op.unary.f32(i32 6, float %4245)  ; FAbs(value)
  %4248 = call float @dx.op.unary.f32(i32 6, float %4246)  ; FAbs(value)
  %4249 = fmul fast float %4247, 1.000000e+01
  %4250 = fmul fast float %4248, 1.000000e+01
  %4251 = call float @dx.op.binary.f32(i32 36, float %4249, float %4250)  ; FMin(a,b)
  %4252 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4253 = fsub fast float 1.000000e+00, %4252
  %4254 = fmul fast float %4253, %4204
  %4255 = fmul fast float %4253, %4205
  %4256 = fmul fast float %4253, %4206
  %4257 = fsub fast float %4187, %3984
  %4258 = fsub fast float %4188, %3985
  %4259 = fsub fast float %4189, %3986
  br label %4267

; <label>:4260                                    ; preds = %4129
  %4261 = fmul fast float %4130, 8.096000e+03
  %4262 = fmul fast float %4131, 8.096000e+03
  %4263 = fmul fast float %4132, 8.096000e+03
  %4264 = fadd fast float %4261, %155
  %4265 = fadd fast float %4262, %156
  %4266 = fadd fast float %4263, %157
  br label %4267

; <label>:4267                                    ; preds = %4260, %4203
  %4268 = phi float [ %4130, %4260 ], [ %4257, %4203 ]
  %4269 = phi float [ %4131, %4260 ], [ %4258, %4203 ]
  %4270 = phi float [ %4132, %4260 ], [ %4259, %4203 ]
  %4271 = phi float [ %4264, %4260 ], [ %4187, %4203 ]
  %4272 = phi float [ %4265, %4260 ], [ %4188, %4203 ]
  %4273 = phi float [ %4266, %4260 ], [ %4189, %4203 ]
  %4274 = phi float [ 0.000000e+00, %4260 ], [ %4254, %4203 ]
  %4275 = phi float [ 0.000000e+00, %4260 ], [ %4255, %4203 ]
  %4276 = phi float [ 0.000000e+00, %4260 ], [ %4256, %4203 ]
  %4277 = fcmp fast olt float %4003, 1.000000e+00
  br i1 %4277, label %4278, label %4309, !dx.controlflow.hints !132

; <label>:4278                                    ; preds = %4267
  %4279 = fmul fast float %4270, %4001
  %4280 = fmul fast float %4269, %4002
  %4281 = fsub fast float %4279, %4280
  %4282 = fmul fast float %4268, %4002
  %4283 = fmul fast float %4270, %4000
  %4284 = fsub fast float %4282, %4283
  %4285 = fmul fast float %4269, %4000
  %4286 = fmul fast float %4268, %4001
  %4287 = fsub fast float %4285, %4286
  %4288 = fmul fast float %4281, 2.000000e+00
  %4289 = fmul fast float %4284, 2.000000e+00
  %4290 = fmul fast float %4287, 2.000000e+00
  %4291 = fmul fast float %4288, %4003
  %4292 = fmul fast float %4289, %4003
  %4293 = fmul fast float %4290, %4003
  %4294 = fmul fast float %4290, %4001
  %4295 = fmul fast float %4289, %4002
  %4296 = fmul fast float %4288, %4002
  %4297 = fmul fast float %4290, %4000
  %4298 = fmul fast float %4289, %4000
  %4299 = fmul fast float %4288, %4001
  %4300 = fadd fast float %4294, %4268
  %4301 = fadd fast float %4300, %4291
  %4302 = fsub fast float %4301, %4295
  %4303 = fsub fast float %4269, %4297
  %4304 = fadd fast float %4303, %4292
  %4305 = fadd fast float %4304, %4296
  %4306 = fadd fast float %4293, %4270
  %4307 = fsub fast float %4306, %4299
  %4308 = fadd fast float %4307, %4298
  br label %4309

; <label>:4309                                    ; preds = %4278, %4267
  %4310 = phi float [ %4302, %4278 ], [ %4268, %4267 ]
  %4311 = phi float [ %4305, %4278 ], [ %4269, %4267 ]
  %4312 = phi float [ %4308, %4278 ], [ %4270, %4267 ]
  br i1 %4135, label %4313, label %4336

; <label>:4313                                    ; preds = %4309
  %4314 = fsub fast float %4271, %155
  %4315 = fsub fast float %4272, %156
  %4316 = fsub fast float %4273, %157
  %4317 = fsub fast float %4271, %3984
  %4318 = fsub fast float %4272, %3985
  %4319 = fsub fast float %4273, %3986
  %4320 = call float @dx.op.dot3.f32(i32 55, float %4314, float %4315, float %4316, float %4314, float %4315, float %4316)  ; Dot3(ax,ay,az,bx,by,bz)
  %4321 = call float @dx.op.dot3.f32(i32 55, float %4317, float %4318, float %4319, float %4317, float %4318, float %4319)  ; Dot3(ax,ay,az,bx,by,bz)
  %4322 = fadd fast float %4321, 0x3EE4F8B580000000
  %4323 = fdiv fast float %4320, %4322
  %4324 = bitcast float %4323 to i32
  %4325 = ashr i32 %4324, 1
  %4326 = add nsw i32 %4325, 532487669
  %4327 = bitcast i32 %4326 to float
  %4328 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4329 = fmul fast float %4328, 0x4009981AE0000000
  %4330 = fsub fast float 0x40111BBD80000000, %4329
  %4331 = fmul fast float %4330, %4328
  %4332 = fadd fast float %4331, 0xC0009F6020000000
  %4333 = fmul fast float %4332, %4328
  %4334 = fadd fast float %4333, 1.000000e+00
  %4335 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  br label %4339

; <label>:4336                                    ; preds = %4309
  %4337 = icmp ne i32 %4029, -1
  %4338 = zext i1 %4337 to i32
  br label %4339

; <label>:4339                                    ; preds = %4336, %4313
  %4340 = phi float [ 0.000000e+00, %4336 ], [ %4335, %4313 ]
  %4341 = phi i32 [ %4338, %4336 ], [ 0, %4313 ]
  %4342 = fmul float %4340, 5.000000e+00
  %4343 = fsub float 5.000000e+00, %4342
  %4344 = icmp ne i32 %4341, 0
  %4345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.f32 %4345, 3
  %4347 = fadd fast float %4346, %4343
  %4348 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4347)  ; FMax(a,b)
  %4349 = call float @dx.op.unary.f32(i32 6, float %4310)  ; FAbs(value)
  %4350 = call float @dx.op.unary.f32(i32 6, float %4311)  ; FAbs(value)
  %4351 = fadd fast float %4350, %4349
  %4352 = call float @dx.op.unary.f32(i32 6, float %4312)  ; FAbs(value)
  %4353 = fadd fast float %4351, %4352
  %4354 = fcmp fast oeq float %4353, 0.000000e+00
  %4355 = fdiv fast float 1.000000e+00, %4353
  %4356 = select i1 %4354, float 1.000000e+00, float %4355
  %4357 = fmul fast float %4356, %4310
  %4358 = fmul fast float %4356, %4311
  %4359 = call float @dx.op.unary.f32(i32 6, float %4358)  ; FAbs(value)
  %4360 = call float @dx.op.unary.f32(i32 6, float %4357)  ; FAbs(value)
  %4361 = fsub fast float 1.000000e+00, %4359
  %4362 = fsub fast float 1.000000e+00, %4360
  %4363 = fcmp fast oge float %4357, 0.000000e+00
  %4364 = fcmp fast oge float %4358, 0.000000e+00
  %4365 = select i1 %4363, float 1.000000e+00, float -1.000000e+00
  %4366 = select i1 %4364, float 1.000000e+00, float -1.000000e+00
  %4367 = fcmp fast ole float %4312, 0.000000e+00
  %4368 = fmul fast float %4365, %4361
  %4369 = fmul fast float %4366, %4362
  %4370 = select i1 %4367, float %4368, float %4357
  %4371 = select i1 %4367, float %4369, float %4358
  %4372 = fmul fast float %4370, 5.000000e-01
  %4373 = fmul fast float %4371, 5.000000e-01
  %4374 = fadd fast float %4372, 5.000000e-01
  %4375 = fadd fast float %4373, 5.000000e-01
  %4376 = uitofp i32 %4027 to float
  %4377 = call float @dx.op.binary.f32(i32 36, float %4348, float 3.000000e+00)  ; FMin(a,b)
  %4378 = fadd fast float %4377, 2.000000e+00
  %4379 = call float @dx.op.unary.f32(i32 21, float %4378)  ; Exp(value)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4345, 1
  %4381 = fmul fast float %4380, %4379
  %4382 = fmul fast float %4381, 2.000000e+00
  %4383 = fsub fast float 1.000000e+00, %4382
  %4384 = fmul fast float %4374, %4383
  %4385 = fmul fast float %4375, %4383
  %4386 = fadd fast float %4384, %4381
  %4387 = fadd fast float %4385, %4381
  %4388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %4386, float %4387, float %4376, float undef, i32 0, i32 0, i32 undef, float %4348)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.ResRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.ResRet.f32 %4388, 2
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 3
  %4394 = fmul fast float %4393, %3997
  %4395 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %4394)  ; FMin(a,b)
  %4396 = select i1 %4344, float %4395, float %4394
  %4397 = fmul fast float %4389, %4077
  %4398 = fmul fast float %4397, %4396
  %4399 = fmul fast float %4390, %4077
  %4400 = fmul fast float %4399, %4396
  %4401 = fmul fast float %4391, %4077
  %4402 = fmul fast float %4401, %4396
  %4403 = fadd fast float %4398, %3964
  %4404 = fadd fast float %4400, %3965
  %4405 = fadd fast float %4402, %3966
  %4406 = fsub fast float %3975, %4077
  %4407 = and i32 %4092, 255
  %4408 = uitofp i32 %4407 to float
  %4409 = fptoui float %4408 to i32
  %4410 = icmp eq i32 %4087, 1
  %4411 = zext i1 %4410 to i32
  %4412 = add i32 %4411, %4409
  %4413 = uitofp i32 %4412 to float
  %4414 = fptoui float %4413 to i32
  %4415 = shl i32 %4414, 8
  %4416 = and i32 %4415, 65280
  %4417 = or i32 %4416, %4095
  %4418 = fmul fast float %4274, %4077
  %4419 = fmul fast float %4275, %4077
  %4420 = fmul fast float %4276, %4077
  %4421 = fadd fast float %4418, %3971
  %4422 = fadd fast float %4419, %3972
  %4423 = fadd fast float %4420, %3973
  %4424 = fmul fast float %4376, 0x3FE3C6EF40000000
  %4425 = call float @dx.op.unary.f32(i32 22, float %4424)  ; Frc(value)
  %4426 = fadd fast float %4425, 0x3FE5555560000000
  %4427 = fadd fast float %4425, 0x3FD5555560000000
  %4428 = fsub fast float -0.000000e+00, %4425
  %4429 = fsub fast float -0.000000e+00, %4426
  %4430 = fsub fast float -0.000000e+00, %4427
  %4431 = fcmp fast oge float %4425, %4428
  %4432 = fcmp fast oge float %4426, %4429
  %4433 = fcmp fast oge float %4427, %4430
  %4434 = call float @dx.op.unary.f32(i32 6, float %4425)  ; FAbs(value)
  %4435 = call float @dx.op.unary.f32(i32 6, float %4426)  ; FAbs(value)
  %4436 = call float @dx.op.unary.f32(i32 6, float %4427)  ; FAbs(value)
  %4437 = call float @dx.op.unary.f32(i32 22, float %4434)  ; Frc(value)
  %4438 = call float @dx.op.unary.f32(i32 22, float %4435)  ; Frc(value)
  %4439 = call float @dx.op.unary.f32(i32 22, float %4436)  ; Frc(value)
  %4440 = fsub fast float -0.000000e+00, %4437
  %4441 = fsub fast float -0.000000e+00, %4438
  %4442 = fsub fast float -0.000000e+00, %4439
  %4443 = select i1 %4431, float %4437, float %4440
  %4444 = select i1 %4432, float %4438, float %4441
  %4445 = select i1 %4433, float %4439, float %4442
  %4446 = fmul fast float %4443, 6.000000e+00
  %4447 = fmul fast float %4444, 6.000000e+00
  %4448 = fmul fast float %4445, 6.000000e+00
  %4449 = fadd fast float %4446, -3.000000e+00
  %4450 = fadd fast float %4447, -3.000000e+00
  %4451 = fadd fast float %4448, -3.000000e+00
  %4452 = call float @dx.op.unary.f32(i32 6, float %4449)  ; FAbs(value)
  %4453 = call float @dx.op.unary.f32(i32 6, float %4450)  ; FAbs(value)
  %4454 = call float @dx.op.unary.f32(i32 6, float %4451)  ; FAbs(value)
  %4455 = fadd fast float %4452, -1.000000e+00
  %4456 = fadd fast float %4453, -1.000000e+00
  %4457 = fadd fast float %4454, -1.000000e+00
  %4458 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4459 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4460 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4461 = fmul fast float %4458, %4077
  %4462 = fmul fast float %4459, %4077
  %4463 = fmul fast float %4460, %4077
  %4464 = fadd fast float %4461, %3967
  %4465 = fadd fast float %4462, %3968
  %4466 = fadd fast float %4463, %3969
  %4467 = icmp eq i32 %4027, 0
  %4468 = select i1 %4467, i32 1, i32 %3970
  %4469 = icmp eq i32 %3974, 0
  br i1 %4469, label %4098, label %4470

; <label>:4470                                    ; preds = %4339
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 0
  %4473 = bitcast float %4472 to i32
  %4474 = lshr i32 %4473, 8
  %4475 = and i32 %4474, 255
  %4476 = uitofp i32 %4475 to float
  %4477 = fptoui float %4476 to i32
  %4478 = icmp eq i32 %4477, 16
  %4479 = bitcast float %4394 to i32
  %4480 = select i1 %4478, i32 %4479, i32 %3963
  %4481 = icmp eq i32 %4477, 17
  %4482 = select i1 %4481, i32 1065353216, i32 %4480
  %4483 = icmp eq i32 %4477, 18
  %4484 = bitcast float %4396 to i32
  %4485 = select i1 %4483, i32 %4484, i32 %4482
  br label %4098

; <label>:4486                                    ; preds = %4098
  br label %4487

; <label>:4487                                    ; preds = %4486, %3921
  %4488 = phi i32 [ %3922, %3921 ], [ %4099, %4486 ]
  %4489 = phi i32 [ %3923, %3921 ], [ %4100, %4486 ]
  %4490 = phi float [ %3924, %3921 ], [ %4101, %4486 ]
  %4491 = phi float [ %3925, %3921 ], [ %4102, %4486 ]
  %4492 = phi float [ %3926, %3921 ], [ %4103, %4486 ]
  %4493 = phi float [ %3927, %3921 ], [ %4104, %4486 ]
  %4494 = phi float [ %3928, %3921 ], [ %4105, %4486 ]
  %4495 = phi float [ %3929, %3921 ], [ %4106, %4486 ]
  %4496 = phi i32 [ %3930, %3921 ], [ %4107, %4486 ]
  %4497 = phi float [ %3931, %3921 ], [ %4108, %4486 ]
  %4498 = phi float [ %3932, %3921 ], [ %4109, %4486 ]
  %4499 = phi float [ %3933, %3921 ], [ %4110, %4486 ]
  %4500 = phi i32 [ %3934, %3921 ], [ %4111, %4486 ]
  %4501 = phi float [ %3935, %3921 ], [ %4112, %4486 ]
  %4502 = add i32 %3936, 1
  %4503 = icmp ugt i32 %4502, %3918
  br i1 %4503, label %4504, label %3921, !llvm.loop !133

; <label>:4504                                    ; preds = %4487
  br label %4505

; <label>:4505                                    ; preds = %4504, %3869
  %4506 = phi i32 [ %2544, %3869 ], [ %4488, %4504 ]
  %4507 = phi i32 [ %3860, %3869 ], [ %4489, %4504 ]
  %4508 = phi float [ 0.000000e+00, %3869 ], [ %4490, %4504 ]
  %4509 = phi float [ 0.000000e+00, %3869 ], [ %4491, %4504 ]
  %4510 = phi float [ 0.000000e+00, %3869 ], [ %4492, %4504 ]
  %4511 = phi float [ 0.000000e+00, %3869 ], [ %4493, %4504 ]
  %4512 = phi float [ 0.000000e+00, %3869 ], [ %4494, %4504 ]
  %4513 = phi float [ 0.000000e+00, %3869 ], [ %4495, %4504 ]
  %4514 = phi i32 [ 0, %3869 ], [ %4496, %4504 ]
  %4515 = phi float [ 0.000000e+00, %3869 ], [ %4497, %4504 ]
  %4516 = phi float [ 0.000000e+00, %3869 ], [ %4498, %4504 ]
  %4517 = phi float [ 0.000000e+00, %3869 ], [ %4499, %4504 ]
  %4518 = call float @dx.op.dot3.f32(i32 55, float %4508, float %4509, float %4510, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4519 = select i1 %2753, float %4518, float %4509
  %4520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.f32 %4520, 0
  %4522 = bitcast float %4521 to i32
  %4523 = lshr i32 %4522, 8
  %4524 = and i32 %4523, 255
  %4525 = uitofp i32 %4524 to float
  %4526 = fptoui float %4525 to i32
  %4527 = icmp eq i32 %4526, 13
  br i1 %4527, label %4528, label %4548

; <label>:4528                                    ; preds = %4505
  %4529 = fadd fast float %4511, 1.000000e+00
  %4530 = fadd fast float %4512, 1.000000e+00
  %4531 = fadd fast float %4513, 1.000000e+00
  %4532 = fmul fast float %4529, 5.000000e-01
  %4533 = fmul fast float %4530, 5.000000e-01
  %4534 = fmul fast float %4531, 5.000000e-01
  %4535 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4536 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4537 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4538 = fmul fast float %4535, 1.023000e+03
  %4539 = fmul fast float %4536, 1.023000e+03
  %4540 = fmul fast float %4537, 1.023000e+03
  %4541 = fptoui float %4538 to i32
  %4542 = fptoui float %4539 to i32
  %4543 = fptoui float %4540 to i32
  %4544 = shl i32 %4542, 10
  %4545 = or i32 %4544, %4541
  %4546 = shl i32 %4543, 20
  %4547 = or i32 %4545, %4546
  br label %4548

; <label>:4548                                    ; preds = %4528, %4505
  %4549 = phi i32 [ %4547, %4528 ], [ %4507, %4505 ]
  %4550 = icmp eq i32 %4526, 14
  %4551 = select i1 %4550, i32 %4514, i32 %4549
  %4552 = icmp eq i32 %4526, 22
  br i1 %4552, label %4553, label %4573

; <label>:4553                                    ; preds = %4548
  %4554 = fadd fast float %4515, 1.000000e+00
  %4555 = fadd fast float %4516, 1.000000e+00
  %4556 = fadd fast float %4517, 1.000000e+00
  %4557 = fmul fast float %4554, 5.000000e-01
  %4558 = fmul fast float %4555, 5.000000e-01
  %4559 = fmul fast float %4556, 5.000000e-01
  %4560 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  %4561 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4562 = call float @dx.op.unary.f32(i32 7, float %4559)  ; Saturate(value)
  %4563 = fmul fast float %4560, 1.023000e+03
  %4564 = fmul fast float %4561, 1.023000e+03
  %4565 = fmul fast float %4562, 1.023000e+03
  %4566 = fptoui float %4563 to i32
  %4567 = fptoui float %4564 to i32
  %4568 = fptoui float %4565 to i32
  %4569 = shl i32 %4567, 10
  %4570 = or i32 %4569, %4566
  %4571 = shl i32 %4568, 20
  %4572 = or i32 %4570, %4571
  br label %4573

; <label>:4573                                    ; preds = %4553, %4548
  %4574 = phi i32 [ %4572, %4553 ], [ %4551, %4548 ]
  %4575 = fmul fast float %4508, 0x3FD45F3060000000
  %4576 = select i1 %2753, float 0.000000e+00, float %4575
  %4577 = fmul fast float %4519, 0x3FD45F3060000000
  %4578 = fmul fast float %4510, 0x3FD45F3060000000
  %4579 = select i1 %2753, float 0.000000e+00, float %4578
  br label %4580

; <label>:4580                                    ; preds = %4573, %3859
  %4581 = phi i32 [ %4506, %4573 ], [ %2544, %3859 ]
  %4582 = phi i32 [ %4574, %4573 ], [ %3860, %3859 ]
  %4583 = phi float [ %4576, %4573 ], [ %3825, %3859 ]
  %4584 = phi float [ %4577, %4573 ], [ %3826, %3859 ]
  %4585 = phi float [ %4579, %4573 ], [ %3827, %3859 ]
  %4586 = phi i1 [ false, %4573 ], [ true, %3859 ]
  %4587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4588 = extractvalue %dx.types.CBufRet.i32 %4587, 0
  %4589 = and i32 %4588, 524288
  %4590 = icmp ne i32 %4589, 0
  %4591 = select i1 %4590, float 0.000000e+00, float 1.000000e+00
  %4592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4593 = extractvalue %dx.types.CBufRet.f32 %4592, 0
  %4594 = bitcast float %4593 to i32
  %4595 = and i32 %4594, 255
  %4596 = uitofp i32 %4595 to float
  %4597 = fptoui float %4596 to i32
  %4598 = icmp eq i32 %4597, 38
  %4599 = select i1 %4598, i32 0, i32 %4582
  %4600 = lshr i32 %4594, 8
  %4601 = and i32 %4600, 255
  %4602 = uitofp i32 %4601 to float
  %4603 = fptoui float %4602 to i32
  %4604 = icmp eq i32 %4603, 24
  br i1 %4604, label %4605, label %4616

; <label>:4605                                    ; preds = %4580
  %4606 = fadd fast float %2790, 1.000000e+00
  %4607 = fmul fast float %4606, 5.000000e-01
  %4608 = select i1 %2792, float %4607, float 1.000000e+00
  %4609 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4610 = fmul fast float %4609, 1.023000e+03
  %4611 = fptoui float %4610 to i32
  %4612 = shl i32 %4611, 10
  %4613 = or i32 %4612, %4611
  %4614 = shl i32 %4611, 20
  %4615 = or i32 %4613, %4614
  br label %4616

; <label>:4616                                    ; preds = %4605, %4580
  %4617 = phi i32 [ %4599, %4580 ], [ %4615, %4605 ]
  %4618 = xor i1 %4590, true
  %4619 = zext i1 %4618 to i32
  br i1 %4590, label %4620, label %4904

; <label>:4620                                    ; preds = %4616
  %4621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4622 = extractvalue %dx.types.CBufRet.f32 %4621, 0
  %4623 = extractvalue %dx.types.CBufRet.f32 %4621, 1
  %4624 = extractvalue %dx.types.CBufRet.f32 %4621, 2
  %4625 = extractvalue %dx.types.CBufRet.f32 %4621, 3
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 0
  %4628 = extractvalue %dx.types.CBufRet.f32 %4626, 1
  %4629 = extractvalue %dx.types.CBufRet.f32 %4626, 2
  %4630 = extractvalue %dx.types.CBufRet.f32 %4626, 3
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.CBufRet.f32 %4631, 1
  %4634 = extractvalue %dx.types.CBufRet.f32 %4631, 2
  %4635 = extractvalue %dx.types.CBufRet.f32 %4631, 3
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 0
  %4638 = extractvalue %dx.types.CBufRet.f32 %4636, 1
  %4639 = extractvalue %dx.types.CBufRet.f32 %4636, 2
  %4640 = extractvalue %dx.types.CBufRet.f32 %4636, 3
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 0
  %4643 = extractvalue %dx.types.CBufRet.f32 %4641, 1
  %4644 = extractvalue %dx.types.CBufRet.f32 %4641, 2
  %4645 = extractvalue %dx.types.CBufRet.f32 %4641, 3
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4648 = extractvalue %dx.types.CBufRet.f32 %4646, 1
  %4649 = extractvalue %dx.types.CBufRet.f32 %4646, 2
  %4650 = extractvalue %dx.types.CBufRet.f32 %4646, 3
  %4651 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4648, float %4649, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %4652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4652, 1
  %4654 = extractvalue %dx.types.CBufRet.f32 %4652, 0
  %4655 = select i1 %117, float %4654, float %4653
  %4656 = fmul fast float %4651, 8.000000e+00
  %4657 = fmul fast float %4656, %4655
  %4658 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4659 = fcmp fast ogt float %4658, 0.000000e+00
  br i1 %4659, label %4660, label %4878, !dx.controlflow.hints !134

; <label>:4660                                    ; preds = %4620
  %4661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = extractvalue %dx.types.CBufRet.f32 %4661, 1
  %4663 = fmul fast float %2044, 2.000000e+00
  %4664 = fmul fast float %2045, 2.000000e+00
  %4665 = fadd fast float %4663, -1.000000e+00
  %4666 = fadd fast float %4664, -1.000000e+00
  %4667 = fmul fast float %4662, %4665
  %4668 = fmul fast float %4662, %4666
  %4669 = fadd fast float %4667, %100
  %4670 = fadd fast float %4668, %101
  %4671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4672 = extractvalue %dx.types.CBufRet.f32 %4671, 2
  %4673 = extractvalue %dx.types.CBufRet.f32 %4671, 3
  %4674 = fmul fast float %4669, %4672
  %4675 = fmul fast float %4670, %4673
  %4676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %64, float %4674, float %4675, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4677 = extractvalue %dx.types.ResRet.f32 %4676, 0
  %4678 = fcmp fast une float %4677, 0xFFF0000000000000
  %4679 = fcmp fast une float %4677, 0x7FF0000000000000
  %4680 = and i1 %4678, %4679
  %4681 = call float @dx.op.unary.f32(i32 6, float %4677)  ; FAbs(value)
  %4682 = fsub fast float 1.000000e+00, %4681
  %4683 = select i1 %4680, float 1.000000e+00, float 0.000000e+00
  %4684 = fmul fast float %4683, %4658
  %4685 = fcmp fast ogt float %4684, 0.000000e+00
  br i1 %4685, label %4686, label %4878, !dx.controlflow.hints !135

; <label>:4686                                    ; preds = %4660
  %4687 = fmul fast float %4622, %155
  %4688 = call float @dx.op.tertiary.f32(i32 46, float %156, float %4623, float %4687)  ; FMad(a,b,c)
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %157, float %4624, float %4688)  ; FMad(a,b,c)
  %4690 = fadd fast float %4689, %4625
  %4691 = fmul fast float %4627, %155
  %4692 = call float @dx.op.tertiary.f32(i32 46, float %156, float %4628, float %4691)  ; FMad(a,b,c)
  %4693 = call float @dx.op.tertiary.f32(i32 46, float %157, float %4629, float %4692)  ; FMad(a,b,c)
  %4694 = fadd fast float %4693, %4630
  %4695 = fmul fast float %4632, %155
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %156, float %4633, float %4695)  ; FMad(a,b,c)
  %4697 = call float @dx.op.tertiary.f32(i32 46, float %157, float %4634, float %4696)  ; FMad(a,b,c)
  %4698 = fadd fast float %4697, %4635
  %4699 = fdiv fast float 1.000000e+00, %4698
  %4700 = fmul fast float %4699, %4690
  %4701 = fmul fast float %4699, %4694
  %4702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.f32 %4702, 0
  %4704 = extractvalue %dx.types.CBufRet.f32 %4702, 1
  %4705 = fmul fast float %4700, %4703
  %4706 = fmul fast float %4701, %4704
  %4707 = extractvalue %dx.types.CBufRet.f32 %4702, 2
  %4708 = extractvalue %dx.types.CBufRet.f32 %4702, 3
  %4709 = fadd fast float %4705, %4707
  %4710 = fadd fast float %4706, %4708
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 3
  %4713 = fmul fast float %4712, %2765
  %4714 = fmul fast float %4712, %2766
  %4715 = fmul fast float %4712, %2767
  %4716 = fadd fast float %4713, %155
  %4717 = fadd fast float %4714, %156
  %4718 = fadd fast float %4715, %157
  %4719 = fmul fast float %4716, %4622
  %4720 = call float @dx.op.tertiary.f32(i32 46, float %4717, float %4623, float %4719)  ; FMad(a,b,c)
  %4721 = call float @dx.op.tertiary.f32(i32 46, float %4718, float %4624, float %4720)  ; FMad(a,b,c)
  %4722 = fadd fast float %4721, %4625
  %4723 = fmul fast float %4716, %4627
  %4724 = call float @dx.op.tertiary.f32(i32 46, float %4717, float %4628, float %4723)  ; FMad(a,b,c)
  %4725 = call float @dx.op.tertiary.f32(i32 46, float %4718, float %4629, float %4724)  ; FMad(a,b,c)
  %4726 = fadd fast float %4725, %4630
  %4727 = fmul fast float %4716, %4632
  %4728 = call float @dx.op.tertiary.f32(i32 46, float %4717, float %4633, float %4727)  ; FMad(a,b,c)
  %4729 = call float @dx.op.tertiary.f32(i32 46, float %4718, float %4634, float %4728)  ; FMad(a,b,c)
  %4730 = fadd fast float %4729, %4635
  %4731 = fdiv fast float 1.000000e+00, %4730
  %4732 = fmul fast float %4731, %4722
  %4733 = fmul fast float %4731, %4726
  %4734 = fmul fast float %4709, 2.000000e+00
  %4735 = fadd fast float %4734, -1.000000e+00
  %4736 = call float @dx.op.unary.f32(i32 6, float %4735)  ; FAbs(value)
  %4737 = fmul fast float %4736, 5.000000e+00
  %4738 = fadd fast float %4737, -4.000000e+00
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = fsub fast float %4700, %4732
  %4741 = fmul fast float %4703, %4740
  %4742 = fmul fast float %4741, %4739
  %4743 = fsub fast float %4732, %4700
  %4744 = fmul fast float %4703, %4743
  %4745 = fadd fast float %4744, %4742
  %4746 = fsub fast float %4733, %4701
  %4747 = fmul fast float %4704, %4746
  %4748 = fmul fast float %4745, %4682
  %4749 = fmul fast float %4747, %4682
  %4750 = fadd fast float %4748, %4709
  %4751 = fadd fast float %4749, %4710
  %4752 = fsub fast float %4731, %4699
  %4753 = fmul fast float %4752, %4682
  %4754 = fadd fast float %4753, %4699
  %4755 = fdiv fast float 1.000000e+00, %4754
  %4756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %63, float %4750, float %4751, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4757 = extractvalue %dx.types.ResRet.f32 %4756, 0
  %4758 = extractvalue %dx.types.ResRet.f32 %4756, 1
  %4759 = extractvalue %dx.types.ResRet.f32 %4756, 2
  %4760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4761 = extractvalue %dx.types.CBufRet.f32 %4760, 1
  %4762 = fmul fast float %4761, %4757
  %4763 = fmul fast float %4761, %4758
  %4764 = fmul fast float %4761, %4759
  %4765 = call float @dx.op.binary.f32(i32 35, float %4755, float 0x3810000000000000)  ; FMax(a,b)
  %4766 = fdiv fast float %4698, %4765
  %4767 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.CBufRet.f32 %4768, 1
  %4771 = extractvalue %dx.types.CBufRet.f32 %4768, 2
  %4772 = fadd fast float %4769, %155
  %4773 = fadd fast float %4770, %156
  %4774 = fadd fast float %4771, %157
  %4775 = fmul fast float %4772, %4637
  %4776 = call float @dx.op.tertiary.f32(i32 46, float %4773, float %4638, float %4775)  ; FMad(a,b,c)
  %4777 = call float @dx.op.tertiary.f32(i32 46, float %4774, float %4639, float %4776)  ; FMad(a,b,c)
  %4778 = fadd fast float %4777, %4640
  %4779 = fmul fast float %4772, %4642
  %4780 = call float @dx.op.tertiary.f32(i32 46, float %4773, float %4643, float %4779)  ; FMad(a,b,c)
  %4781 = call float @dx.op.tertiary.f32(i32 46, float %4774, float %4644, float %4780)  ; FMad(a,b,c)
  %4782 = fadd fast float %4781, %4645
  %4783 = fmul fast float %4772, %4647
  %4784 = call float @dx.op.tertiary.f32(i32 46, float %4773, float %4648, float %4783)  ; FMad(a,b,c)
  %4785 = call float @dx.op.tertiary.f32(i32 46, float %4774, float %4649, float %4784)  ; FMad(a,b,c)
  %4786 = fadd fast float %4785, %4650
  %4787 = fdiv fast float 1.000000e+00, %4786
  %4788 = fmul fast float %4787, %4778
  %4789 = fmul fast float %4787, %4782
  %4790 = fmul fast float %4788, %4703
  %4791 = fmul fast float %4789, %4704
  %4792 = fadd fast float %4790, %4707
  %4793 = fadd fast float %4791, %4708
  %4794 = fadd fast float %4713, %4772
  %4795 = fadd fast float %4714, %4773
  %4796 = fadd fast float %4715, %4774
  %4797 = fmul fast float %4794, %4637
  %4798 = call float @dx.op.tertiary.f32(i32 46, float %4795, float %4638, float %4797)  ; FMad(a,b,c)
  %4799 = call float @dx.op.tertiary.f32(i32 46, float %4796, float %4639, float %4798)  ; FMad(a,b,c)
  %4800 = fadd fast float %4799, %4640
  %4801 = fmul fast float %4794, %4642
  %4802 = call float @dx.op.tertiary.f32(i32 46, float %4795, float %4643, float %4801)  ; FMad(a,b,c)
  %4803 = call float @dx.op.tertiary.f32(i32 46, float %4796, float %4644, float %4802)  ; FMad(a,b,c)
  %4804 = fadd fast float %4803, %4645
  %4805 = fmul fast float %4794, %4647
  %4806 = call float @dx.op.tertiary.f32(i32 46, float %4795, float %4648, float %4805)  ; FMad(a,b,c)
  %4807 = call float @dx.op.tertiary.f32(i32 46, float %4796, float %4649, float %4806)  ; FMad(a,b,c)
  %4808 = fadd fast float %4807, %4650
  %4809 = fdiv fast float 1.000000e+00, %4808
  %4810 = fmul fast float %4809, %4800
  %4811 = fmul fast float %4809, %4804
  %4812 = fmul fast float %4792, 2.000000e+00
  %4813 = fadd fast float %4812, -1.000000e+00
  %4814 = call float @dx.op.unary.f32(i32 6, float %4813)  ; FAbs(value)
  %4815 = fmul fast float %4814, 5.000000e+00
  %4816 = fadd fast float %4815, -4.000000e+00
  %4817 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4818 = fsub fast float %4788, %4810
  %4819 = fmul fast float %4703, %4818
  %4820 = fmul fast float %4819, %4817
  %4821 = fsub fast float %4810, %4788
  %4822 = fmul fast float %4703, %4821
  %4823 = fadd fast float %4822, %4820
  %4824 = fsub fast float %4811, %4789
  %4825 = fmul fast float %4704, %4824
  %4826 = fmul fast float %4823, %4682
  %4827 = fmul fast float %4825, %4682
  %4828 = fadd fast float %4826, %4792
  %4829 = fadd fast float %4827, %4793
  %4830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %63, float %4828, float %4829, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4831 = extractvalue %dx.types.ResRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.ResRet.f32 %4830, 1
  %4833 = extractvalue %dx.types.ResRet.f32 %4830, 2
  %4834 = extractvalue %dx.types.CBufRet.f32 %4760, 2
  %4835 = fmul fast float %4834, %4831
  %4836 = fmul fast float %4834, %4832
  %4837 = fmul fast float %4834, %4833
  %4838 = and i32 %2649, 255
  %4839 = uitofp i32 %4838 to float
  %4840 = fmul fast float %4839, 0x3F70101020000000
  %4841 = fmul fast float %4840, %4767
  %4842 = extractvalue %dx.types.CBufRet.f32 %4652, 2
  %4843 = fadd fast float %4842, %4841
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4845 = call float @dx.op.binary.f32(i32 35, float %4762, float 0x3810000000000000)  ; FMax(a,b)
  %4846 = call float @dx.op.binary.f32(i32 35, float %4763, float 0x3810000000000000)  ; FMax(a,b)
  %4847 = call float @dx.op.binary.f32(i32 35, float %4764, float 0x3810000000000000)  ; FMax(a,b)
  %4848 = call float @dx.op.unary.f32(i32 23, float %4845)  ; Log(value)
  %4849 = call float @dx.op.unary.f32(i32 23, float %4846)  ; Log(value)
  %4850 = call float @dx.op.unary.f32(i32 23, float %4847)  ; Log(value)
  %4851 = call float @dx.op.binary.f32(i32 35, float %4835, float 0x3810000000000000)  ; FMax(a,b)
  %4852 = call float @dx.op.binary.f32(i32 35, float %4836, float 0x3810000000000000)  ; FMax(a,b)
  %4853 = call float @dx.op.binary.f32(i32 35, float %4837, float 0x3810000000000000)  ; FMax(a,b)
  %4854 = call float @dx.op.unary.f32(i32 23, float %4851)  ; Log(value)
  %4855 = call float @dx.op.unary.f32(i32 23, float %4852)  ; Log(value)
  %4856 = call float @dx.op.unary.f32(i32 23, float %4853)  ; Log(value)
  %4857 = fsub fast float %4848, %4854
  %4858 = fsub fast float %4849, %4855
  %4859 = fsub fast float %4850, %4856
  %4860 = fmul fast float %4857, %4844
  %4861 = fmul fast float %4858, %4844
  %4862 = fmul fast float %4859, %4844
  %4863 = fadd fast float %4860, %4854
  %4864 = fadd fast float %4861, %4855
  %4865 = fadd fast float %4862, %4856
  %4866 = call float @dx.op.unary.f32(i32 21, float %4863)  ; Exp(value)
  %4867 = call float @dx.op.unary.f32(i32 21, float %4864)  ; Exp(value)
  %4868 = call float @dx.op.unary.f32(i32 21, float %4865)  ; Exp(value)
  %4869 = select i1 %2753, float 0.000000e+00, float %4867
  %4870 = select i1 %2753, float 0.000000e+00, float %4868
  %4871 = fmul fast float %4829, 2.000000e+00
  %4872 = fadd fast float %4871, -1.000000e+00
  %4873 = fmul fast float %4872, %4872
  %4874 = fsub fast float 1.000000e+00, %4873
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4877 = fmul fast float %4876, %4684
  br label %4878

; <label>:4878                                    ; preds = %4686, %4660, %4620
  %4879 = phi float [ %4866, %4686 ], [ 0.000000e+00, %4660 ], [ 0.000000e+00, %4620 ]
  %4880 = phi float [ %4869, %4686 ], [ 0.000000e+00, %4660 ], [ 0.000000e+00, %4620 ]
  %4881 = phi float [ %4870, %4686 ], [ 0.000000e+00, %4660 ], [ 0.000000e+00, %4620 ]
  %4882 = phi float [ %4877, %4686 ], [ 0.000000e+00, %4660 ], [ 0.000000e+00, %4620 ]
  %4883 = phi float [ %4682, %4686 ], [ %4682, %4660 ], [ 0.000000e+00, %4620 ]
  %4884 = phi float [ %4877, %4686 ], [ %4684, %4660 ], [ 0.000000e+00, %4620 ]
  %4885 = icmp eq i32 %4603, 25
  br i1 %4885, label %4886, label %4889

; <label>:4886                                    ; preds = %4878
  %4887 = call float @dx.op.unary.f32(i32 6, float %4883)  ; FAbs(value)
  %4888 = bitcast float %4887 to i32
  br label %4889

; <label>:4889                                    ; preds = %4886, %4878
  %4890 = phi i32 [ %4888, %4886 ], [ %4617, %4878 ]
  %4891 = icmp eq i32 %4603, 26
  %4892 = bitcast float %4884 to i32
  %4893 = select i1 %4891, i32 %4892, i32 %4890
  %4894 = icmp eq i32 %4603, 27
  %4895 = select i1 %4894, i32 0, i32 %4893
  %4896 = fcmp fast olt float %4882, 1.000000e+00
  %4897 = or i1 %4896, %4618
  %4898 = zext i1 %4897 to i32
  %4899 = fmul fast float %4882, %4591
  %4900 = fsub fast float %4882, %4899
  %4901 = fmul fast float %4900, %4879
  %4902 = fmul fast float %4900, %4880
  %4903 = fmul fast float %4900, %4881
  br label %4904

; <label>:4904                                    ; preds = %4889, %4616
  %4905 = phi i32 [ %4617, %4616 ], [ %4895, %4889 ]
  %4906 = phi float [ 0.000000e+00, %4616 ], [ %4900, %4889 ]
  %4907 = phi float [ 0.000000e+00, %4616 ], [ %4901, %4889 ]
  %4908 = phi float [ 0.000000e+00, %4616 ], [ %4902, %4889 ]
  %4909 = phi float [ 0.000000e+00, %4616 ], [ %4903, %4889 ]
  %4910 = phi i32 [ %4619, %4616 ], [ %4898, %4889 ]
  %4911 = icmp ne i32 %4910, 0
  %4912 = add i32 %4603, -13
  %4913 = icmp ult i32 %4912, 2
  %4914 = or i1 %4913, %4911
  %4915 = icmp eq i32 %4603, 22
  %4916 = or i1 %4914, %4915
  br i1 %4916, label %4917, label %5651

; <label>:4917                                    ; preds = %4904
  %4918 = select i1 %4586, float %3787, float 1.000000e+00
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 2
  %4921 = extractvalue %dx.types.CBufRet.f32 %4919, 3
  %4922 = fmul fast float %4920, %100
  %4923 = fmul fast float %4921, %101
  %4924 = fptoui float %4922 to i32
  %4925 = fptoui float %4923 to i32
  %4926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4927 = extractvalue %dx.types.CBufRet.f32 %4926, 0
  %4928 = extractvalue %dx.types.CBufRet.f32 %4926, 2
  %4929 = extractvalue %dx.types.CBufRet.f32 %4926, 3
  %4930 = fadd fast float %89, -4.000000e+00
  %4931 = call float @dx.op.binary.f32(i32 35, float %4930, float 0.000000e+00)  ; FMax(a,b)
  %4932 = fadd fast float %4931, %4927
  %4933 = fmul fast float %4932, %4928
  %4934 = call float @dx.op.unary.f32(i32 23, float %4933)  ; Log(value)
  %4935 = fmul fast float %4934, %4929
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 2
  %4938 = fmul fast float %4935, %4937
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4941 = extractvalue %dx.types.CBufRet.i32 %4940, 1
  %4942 = add i32 %4941, -1
  %4943 = uitofp i32 %4941 to float
  %4944 = fmul fast float %4943, %4939
  %4945 = fptoui float %4944 to i32
  %4946 = call i32 @dx.op.binary.i32(i32 40, i32 %4945, i32 %4942)  ; UMin(a,b)
  %4947 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4948 = extractvalue %dx.types.CBufRet.i32 %4947, 2
  %4949 = extractvalue %dx.types.CBufRet.i32 %4947, 3
  %4950 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4925, i32 %4948, i32 %4924)  ; UMad(a,b,c)
  %4951 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4946, i32 %4949, i32 %4950)  ; UMad(a,b,c)
  %4952 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %4953 = fptoui float %4952 to i32
  %4954 = lshr i32 %4953, 5
  %4955 = call i32 @dx.op.binary.i32(i32 40, i32 %4954, i32 8191)  ; UMin(a,b)
  %4956 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4957 = extractvalue %dx.types.CBufRet.i32 %4956, 2
  %4958 = add nsw i32 %4957, -1
  %4959 = call i32 @dx.op.binary.i32(i32 37, i32 %4958, i32 0)  ; IMax(a,b)
  %4960 = shl i32 %4955, 2
  %4961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4960, i32 undef)  ; BufferLoad(srv,index,wot)
  %4962 = extractvalue %dx.types.ResRet.i32 %4961, 0
  %4963 = lshr i32 %4962, 16
  %4964 = and i32 %4962, 65535
  %4965 = lshr i32 %4962, 21
  %4966 = lshr i32 %4964, 5
  %4967 = call i32 @dx.op.binary.i32(i32 40, i32 %4966, i32 %4959)  ; UMin(a,b)
  %4968 = icmp ugt i32 %4965, %4967
  br i1 %4968, label %5563, label %4969

; <label>:4969                                    ; preds = %4917
  br label %4970

; <label>:4970                                    ; preds = %5545, %4969
  %4971 = phi i32 [ %5546, %5545 ], [ %4581, %4969 ]
  %4972 = phi i32 [ %5547, %5545 ], [ %4905, %4969 ]
  %4973 = phi float [ %5548, %5545 ], [ 0.000000e+00, %4969 ]
  %4974 = phi float [ %5549, %5545 ], [ 0.000000e+00, %4969 ]
  %4975 = phi float [ %5550, %5545 ], [ 0.000000e+00, %4969 ]
  %4976 = phi float [ %5551, %5545 ], [ 0.000000e+00, %4969 ]
  %4977 = phi float [ %5552, %5545 ], [ 0.000000e+00, %4969 ]
  %4978 = phi float [ %5553, %5545 ], [ 0.000000e+00, %4969 ]
  %4979 = phi i32 [ %5554, %5545 ], [ 0, %4969 ]
  %4980 = phi float [ %5555, %5545 ], [ 0.000000e+00, %4969 ]
  %4981 = phi float [ %5556, %5545 ], [ 0.000000e+00, %4969 ]
  %4982 = phi float [ %5557, %5545 ], [ 0.000000e+00, %4969 ]
  %4983 = phi i32 [ %5558, %5545 ], [ 1, %4969 ]
  %4984 = phi float [ %5559, %5545 ], [ 1.000000e+00, %4969 ]
  %4985 = phi i32 [ %5560, %5545 ], [ %4965, %4969 ]
  %4986 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4987 = extractvalue %dx.types.CBufRet.i32 %4986, 2
  %4988 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4951, i32 %4987, i32 %4985)  ; UMad(a,b,c)
  %4989 = shl i32 %4988, 2
  %4990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4989, i32 undef)  ; BufferLoad(srv,index,wot)
  %4991 = extractvalue %dx.types.ResRet.i32 %4990, 0
  %4992 = shl i32 %4985, 5
  %4993 = sub nsw i32 %4963, %4992
  %4994 = call i32 @dx.op.binary.i32(i32 37, i32 %4993, i32 0)  ; IMax(a,b)
  %4995 = call i32 @dx.op.binary.i32(i32 38, i32 %4994, i32 31)  ; IMin(a,b)
  %4996 = sub nsw i32 1, %4963
  %4997 = add nsw i32 %4996, %4964
  %4998 = call i32 @dx.op.binary.i32(i32 37, i32 %4997, i32 0)  ; IMax(a,b)
  %4999 = call i32 @dx.op.binary.i32(i32 38, i32 %4998, i32 32)  ; IMin(a,b)
  %5000 = and i32 %4999, 31
  %5001 = shl i32 -1, %5000
  %5002 = xor i32 %5001, -1
  %5003 = and i32 %4995, 31
  %5004 = shl i32 %5002, %5003
  %5005 = icmp eq i32 %4999, 32
  %5006 = select i1 %5005, i32 -1, i32 %5004
  %5007 = and i32 %5006, %4991
  %5008 = icmp eq i32 %5007, 0
  br i1 %5008, label %5545, label %5009

; <label>:5009                                    ; preds = %4970
  br label %5010

; <label>:5010                                    ; preds = %5147, %5009
  %5011 = phi i32 [ %5148, %5147 ], [ %4971, %5009 ]
  %5012 = phi i32 [ %5149, %5147 ], [ %4972, %5009 ]
  %5013 = phi float [ %5150, %5147 ], [ %4973, %5009 ]
  %5014 = phi float [ %5151, %5147 ], [ %4974, %5009 ]
  %5015 = phi float [ %5152, %5147 ], [ %4975, %5009 ]
  %5016 = phi float [ %5153, %5147 ], [ %4976, %5009 ]
  %5017 = phi float [ %5154, %5147 ], [ %4977, %5009 ]
  %5018 = phi float [ %5155, %5147 ], [ %4978, %5009 ]
  %5019 = phi i32 [ %5156, %5147 ], [ %4979, %5009 ]
  %5020 = phi float [ %5157, %5147 ], [ %4980, %5009 ]
  %5021 = phi float [ %5158, %5147 ], [ %4981, %5009 ]
  %5022 = phi float [ %5159, %5147 ], [ %4982, %5009 ]
  %5023 = phi i32 [ %5160, %5147 ], [ %4983, %5009 ]
  %5024 = phi float [ %5161, %5147 ], [ %4984, %5009 ]
  %5025 = phi i32 [ %5030, %5147 ], [ %5007, %5009 ]
  %5026 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5025)  ; FirstbitLo(value)
  %5027 = add i32 %5026, %4992
  %5028 = and i32 %5026, 31
  %5029 = shl i32 1, %5028
  %5030 = xor i32 %5029, %5025
  %5031 = mul i32 %5027, 72
  %5032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5031, i32 undef)  ; BufferLoad(srv,index,wot)
  %5033 = extractvalue %dx.types.ResRet.f32 %5032, 0
  %5034 = extractvalue %dx.types.ResRet.f32 %5032, 1
  %5035 = extractvalue %dx.types.ResRet.f32 %5032, 2
  %5036 = add i32 %5031, 12
  %5037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %5036, i32 undef)  ; BufferLoad(srv,index,wot)
  %5038 = extractvalue %dx.types.ResRet.i32 %5037, 0
  %5039 = add i32 %5031, 16
  %5040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5039, i32 undef)  ; BufferLoad(srv,index,wot)
  %5041 = extractvalue %dx.types.ResRet.f32 %5040, 0
  %5042 = extractvalue %dx.types.ResRet.f32 %5040, 1
  %5043 = extractvalue %dx.types.ResRet.f32 %5040, 2
  %5044 = add i32 %5031, 28
  %5045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5044, i32 undef)  ; BufferLoad(srv,index,wot)
  %5046 = extractvalue %dx.types.ResRet.f32 %5045, 0
  %5047 = add i32 %5031, 32
  %5048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5047, i32 undef)  ; BufferLoad(srv,index,wot)
  %5049 = extractvalue %dx.types.ResRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.ResRet.f32 %5048, 1
  %5051 = extractvalue %dx.types.ResRet.f32 %5048, 2
  %5052 = extractvalue %dx.types.ResRet.f32 %5048, 3
  %5053 = add i32 %5031, 48
  %5054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5053, i32 undef)  ; BufferLoad(srv,index,wot)
  %5055 = extractvalue %dx.types.ResRet.f32 %5054, 0
  %5056 = extractvalue %dx.types.ResRet.f32 %5054, 1
  %5057 = add i32 %5031, 56
  %5058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5057, i32 undef)  ; BufferLoad(srv,index,wot)
  %5059 = extractvalue %dx.types.ResRet.f32 %5058, 0
  %5060 = extractvalue %dx.types.ResRet.f32 %5058, 1
  %5061 = add i32 %5031, 64
  %5062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5061, i32 undef)  ; BufferLoad(srv,index,wot)
  %5063 = extractvalue %dx.types.ResRet.f32 %5062, 0
  %5064 = extractvalue %dx.types.ResRet.f32 %5062, 1
  %5065 = mul i32 %5027, 60
  %5066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5065, i32 undef)  ; BufferLoad(srv,index,wot)
  %5067 = extractvalue %dx.types.ResRet.f32 %5066, 0
  %5068 = extractvalue %dx.types.ResRet.f32 %5066, 1
  %5069 = extractvalue %dx.types.ResRet.f32 %5066, 2
  %5070 = add i32 %5065, 12
  %5071 = add i32 %5065, 48
  %5072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5071, i32 undef)  ; BufferLoad(srv,index,wot)
  %5073 = extractvalue %dx.types.ResRet.f32 %5072, 0
  %5074 = extractvalue %dx.types.ResRet.f32 %5072, 1
  %5075 = extractvalue %dx.types.ResRet.f32 %5072, 2
  %5076 = and i32 %5038, 32767
  %5077 = bitcast float %5033 to i32
  %5078 = bitcast float %5034 to i32
  %5079 = and i32 %5038, 32768
  %5080 = icmp ne i32 %5079, 0
  %5081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %5082 = extractvalue %dx.types.CBufRet.f32 %5081, 3
  %5083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5084 = extractvalue %dx.types.CBufRet.f32 %5083, 0
  %5085 = extractvalue %dx.types.CBufRet.f32 %5083, 1
  %5086 = extractvalue %dx.types.CBufRet.f32 %5083, 2
  %5087 = fsub fast float %5067, %5084
  %5088 = fsub fast float %5068, %5085
  %5089 = fsub fast float %5069, %5086
  %5090 = fsub fast float %155, %5087
  %5091 = fsub fast float %156, %5088
  %5092 = fsub fast float %157, %5089
  %5093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5070, i32 undef)  ; BufferLoad(srv,index,wot)
  %5094 = extractvalue %dx.types.ResRet.f32 %5093, 0
  %5095 = extractvalue %dx.types.ResRet.f32 %5093, 1
  %5096 = extractvalue %dx.types.ResRet.f32 %5093, 2
  %5097 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %5094, float %5095, float %5096)  ; Dot3(ax,ay,az,bx,by,bz)
  %5098 = add i32 %5065, 24
  %5099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5098, i32 undef)  ; BufferLoad(srv,index,wot)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = extractvalue %dx.types.ResRet.f32 %5099, 1
  %5102 = extractvalue %dx.types.ResRet.f32 %5099, 2
  %5103 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %5100, float %5101, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = add i32 %5065, 36
  %5105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5104, i32 undef)  ; BufferLoad(srv,index,wot)
  %5106 = extractvalue %dx.types.ResRet.f32 %5105, 0
  %5107 = extractvalue %dx.types.ResRet.f32 %5105, 1
  %5108 = extractvalue %dx.types.ResRet.f32 %5105, 2
  %5109 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %5106, float %5107, float %5108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5110 = call float @dx.op.unary.f32(i32 6, float %5097)  ; FAbs(value)
  %5111 = call float @dx.op.unary.f32(i32 6, float %5103)  ; FAbs(value)
  %5112 = call float @dx.op.unary.f32(i32 6, float %5109)  ; FAbs(value)
  %5113 = fsub fast float %5073, %5110
  %5114 = fsub fast float %5074, %5111
  %5115 = fsub fast float %5075, %5112
  %5116 = fmul fast float %5113, %5041
  %5117 = fmul fast float %5114, %5042
  %5118 = fmul fast float %5115, %5043
  %5119 = call float @dx.op.binary.f32(i32 36, float %5117, float %5118)  ; FMin(a,b)
  %5120 = call float @dx.op.binary.f32(i32 36, float %5116, float %5119)  ; FMin(a,b)
  %5121 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5122 = call float @dx.op.binary.f32(i32 36, float %5024, float %5121)  ; FMin(a,b)
  %5123 = uitofp i1 %5080 to float
  %5124 = select i1 %117, float 1.000000e+00, float 2.000000e+00
  %5125 = fsub fast float %5124, %5123
  %5126 = fmul fast float %5122, %5125
  %5127 = lshr i32 %5011, 8
  %5128 = and i32 %5127, 255
  %5129 = uitofp i32 %5128 to float
  %5130 = fptoui float %5129 to i32
  %5131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5131, 1
  %5133 = bitcast float %5132 to i32
  %5134 = lshr i32 %5133, 24
  %5135 = uitofp i32 %5134 to float
  %5136 = fptoui float %5135 to i32
  %5137 = icmp ne i32 %5136, 1
  %5138 = zext i1 %5137 to i32
  %5139 = add i32 %5138, %5130
  %5140 = uitofp i32 %5139 to float
  %5141 = fptoui float %5140 to i32
  %5142 = shl i32 %5141, 8
  %5143 = and i32 %5142, 65280
  %5144 = and i32 %5011, -65281
  %5145 = or i32 %5143, %5144
  %5146 = fcmp fast ogt float %5126, 0.000000e+00
  br i1 %5146, label %5163, label %5147

; <label>:5147                                    ; preds = %5527, %5396, %5010
  %5148 = phi i32 [ %5474, %5396 ], [ %5145, %5010 ], [ %5474, %5527 ]
  %5149 = phi i32 [ %5012, %5396 ], [ %5012, %5010 ], [ %5543, %5527 ]
  %5150 = phi float [ %5460, %5396 ], [ %5013, %5010 ], [ %5460, %5527 ]
  %5151 = phi float [ %5461, %5396 ], [ %5014, %5010 ], [ %5461, %5527 ]
  %5152 = phi float [ %5462, %5396 ], [ %5015, %5010 ], [ %5462, %5527 ]
  %5153 = phi float [ %5521, %5396 ], [ %5016, %5010 ], [ %5521, %5527 ]
  %5154 = phi float [ %5522, %5396 ], [ %5017, %5010 ], [ %5522, %5527 ]
  %5155 = phi float [ %5523, %5396 ], [ %5018, %5010 ], [ %5523, %5527 ]
  %5156 = phi i32 [ %5525, %5396 ], [ %5019, %5010 ], [ %5525, %5527 ]
  %5157 = phi float [ %5478, %5396 ], [ %5020, %5010 ], [ %5478, %5527 ]
  %5158 = phi float [ %5479, %5396 ], [ %5021, %5010 ], [ %5479, %5527 ]
  %5159 = phi float [ %5480, %5396 ], [ %5022, %5010 ], [ %5480, %5527 ]
  %5160 = phi i32 [ 0, %5396 ], [ %5023, %5010 ], [ 0, %5527 ]
  %5161 = phi float [ %5463, %5396 ], [ %5024, %5010 ], [ %5463, %5527 ]
  %5162 = icmp eq i32 %5025, %5029
  br i1 %5162, label %5544, label %5010

; <label>:5163                                    ; preds = %5010
  %5164 = extractvalue %dx.types.CBufRet.f32 %5131, 0
  %5165 = bitcast float %5164 to i32
  %5166 = lshr i32 %5165, 8
  %5167 = and i32 %5166, 255
  %5168 = uitofp i32 %5167 to float
  %5169 = fptoui float %5168 to i32
  %5170 = and i32 %5169, 2
  %5171 = icmp eq i32 %5170, 0
  br i1 %5171, label %5178, label %5172

; <label>:5172                                    ; preds = %5163
  %5173 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = call float @dx.op.unary.f32(i32 25, float %5173)  ; Rsqrt(value)
  %5175 = fmul fast float %5174, %155
  %5176 = fmul fast float %5174, %156
  %5177 = fmul fast float %5174, %157
  br label %5178

; <label>:5178                                    ; preds = %5172, %5163
  %5179 = phi float [ %5175, %5172 ], [ %2765, %5163 ]
  %5180 = phi float [ %5176, %5172 ], [ %2766, %5163 ]
  %5181 = phi float [ %5177, %5172 ], [ %2767, %5163 ]
  %5182 = icmp ne i32 %5077, -1
  %5183 = fcmp oeq float %5082, 0.000000e+00
  %5184 = and i1 %5183, %5182
  br i1 %5184, label %5185, label %5309

; <label>:5185                                    ; preds = %5178
  %5186 = fsub fast float -0.000000e+00, %5094
  %5187 = fsub fast float -0.000000e+00, %5095
  %5188 = fsub fast float -0.000000e+00, %5096
  %5189 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5180, float %5181, float %5186, float %5187, float %5188)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = fsub fast float -0.000000e+00, %5189
  %5191 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %5186, float %5187, float %5188)  ; Dot3(ax,ay,az,bx,by,bz)
  %5192 = fadd fast float %5191, %5056
  %5193 = fadd fast float %5055, %5191
  %5194 = fsub fast float -0.000000e+00, %5193
  %5195 = fcmp ogt float %5189, -0.000000e+00
  %5196 = select i1 %5195, float %5194, float %5192
  %5197 = call float @dx.op.unary.f32(i32 6, float %5190)  ; FAbs(value)
  %5198 = fdiv fast float 1.000000e+00, %5197
  %5199 = fmul fast float %5196, %5198
  %5200 = call float @dx.op.binary.f32(i32 35, float %5199, float 0.000000e+00)  ; FMax(a,b)
  %5201 = fsub fast float -0.000000e+00, %5100
  %5202 = fsub fast float -0.000000e+00, %5101
  %5203 = fsub fast float -0.000000e+00, %5102
  %5204 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5180, float %5181, float %5201, float %5202, float %5203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5205 = fsub fast float -0.000000e+00, %5204
  %5206 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %5201, float %5202, float %5203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5207 = fadd fast float %5206, %5060
  %5208 = fadd fast float %5059, %5206
  %5209 = fsub fast float -0.000000e+00, %5208
  %5210 = fcmp ogt float %5204, -0.000000e+00
  %5211 = select i1 %5210, float %5209, float %5207
  %5212 = call float @dx.op.unary.f32(i32 6, float %5205)  ; FAbs(value)
  %5213 = fdiv fast float 1.000000e+00, %5212
  %5214 = fmul fast float %5211, %5213
  %5215 = call float @dx.op.binary.f32(i32 35, float %5214, float 0.000000e+00)  ; FMax(a,b)
  %5216 = fsub fast float -0.000000e+00, %5106
  %5217 = fsub fast float -0.000000e+00, %5107
  %5218 = fsub fast float -0.000000e+00, %5108
  %5219 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5180, float %5181, float %5216, float %5217, float %5218)  ; Dot3(ax,ay,az,bx,by,bz)
  %5220 = fsub fast float -0.000000e+00, %5219
  %5221 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %5216, float %5217, float %5218)  ; Dot3(ax,ay,az,bx,by,bz)
  %5222 = fadd fast float %5221, %5064
  %5223 = fadd fast float %5063, %5221
  %5224 = fsub fast float -0.000000e+00, %5223
  %5225 = fcmp ogt float %5219, -0.000000e+00
  %5226 = select i1 %5225, float %5224, float %5222
  %5227 = call float @dx.op.unary.f32(i32 6, float %5220)  ; FAbs(value)
  %5228 = fdiv fast float 1.000000e+00, %5227
  %5229 = fmul fast float %5226, %5228
  %5230 = call float @dx.op.binary.f32(i32 35, float %5229, float 0.000000e+00)  ; FMax(a,b)
  %5231 = call float @dx.op.binary.f32(i32 36, float %5215, float %5230)  ; FMin(a,b)
  %5232 = call float @dx.op.binary.f32(i32 36, float %5200, float %5231)  ; FMin(a,b)
  %5233 = fmul fast float %5232, %5179
  %5234 = fmul fast float %5232, %5180
  %5235 = fmul fast float %5232, %5181
  %5236 = fadd fast float %5233, %155
  %5237 = fadd fast float %5234, %156
  %5238 = fadd fast float %5235, %157
  %5239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5240 = extractvalue %dx.types.CBufRet.f32 %5239, 0
  %5241 = extractvalue %dx.types.CBufRet.f32 %5239, 1
  %5242 = extractvalue %dx.types.CBufRet.f32 %5239, 2
  %5243 = fadd fast float %5236, %5240
  %5244 = fadd fast float %5237, %5241
  %5245 = fadd fast float %5238, %5242
  %5246 = fcmp fast olt float %5200, %5215
  %5247 = fcmp fast olt float %5200, %5230
  %5248 = and i1 %5246, %5247
  br i1 %5248, label %5252, label %5249

; <label>:5249                                    ; preds = %5185
  %5250 = fcmp fast olt float %5215, %5230
  br i1 %5250, label %5251, label %5252

; <label>:5251                                    ; preds = %5249
  br label %5252

; <label>:5252                                    ; preds = %5251, %5249, %5185
  %5253 = phi float [ 0.000000e+00, %5251 ], [ 0.000000e+00, %5249 ], [ 1.000000e+00, %5185 ]
  %5254 = phi float [ 1.000000e+00, %5251 ], [ 0.000000e+00, %5249 ], [ 0.000000e+00, %5185 ]
  %5255 = phi float [ 0.000000e+00, %5251 ], [ 1.000000e+00, %5249 ], [ 0.000000e+00, %5185 ]
  %5256 = phi float [ %5100, %5251 ], [ %5106, %5249 ], [ %5094, %5185 ]
  %5257 = phi float [ %5101, %5251 ], [ %5107, %5249 ], [ %5095, %5185 ]
  %5258 = phi float [ %5102, %5251 ], [ %5108, %5249 ], [ %5096, %5185 ]
  %5259 = call float @dx.op.unary.f32(i32 6, float %5258)  ; FAbs(value)
  %5260 = fcmp fast olt float %5259, 0x3FE276C8C0000000
  %5261 = select i1 %5260, float 0.000000e+00, float 1.000000e+00
  %5262 = select i1 %5260, float 1.000000e+00, float 0.000000e+00
  %5263 = fmul fast float %5262, %5257
  %5264 = fmul fast float %5261, %5258
  %5265 = fsub fast float %5263, %5264
  %5266 = fmul fast float %5256, %5262
  %5267 = fsub fast float -0.000000e+00, %5266
  %5268 = fmul fast float %5261, %5256
  %5269 = call float @dx.op.dot3.f32(i32 55, float %5265, float %5267, float %5268, float %5265, float %5267, float %5268)  ; Dot3(ax,ay,az,bx,by,bz)
  %5270 = call float @dx.op.unary.f32(i32 25, float %5269)  ; Rsqrt(value)
  %5271 = fmul fast float %5265, %5270
  %5272 = fmul fast float %5270, %5267
  %5273 = fmul fast float %5268, %5270
  %5274 = fmul fast float %5273, %5257
  %5275 = fmul fast float %5272, %5258
  %5276 = fsub fast float %5274, %5275
  %5277 = fmul fast float %5271, %5258
  %5278 = fmul fast float %5273, %5256
  %5279 = fsub fast float %5277, %5278
  %5280 = fmul fast float %5272, %5256
  %5281 = fmul fast float %5271, %5257
  %5282 = fsub fast float %5280, %5281
  %5283 = call float @dx.op.dot3.f32(i32 55, float %5276, float %5279, float %5282, float %5276, float %5279, float %5282)  ; Dot3(ax,ay,az,bx,by,bz)
  %5284 = call float @dx.op.unary.f32(i32 25, float %5283)  ; Rsqrt(value)
  %5285 = fmul fast float %5276, %5284
  %5286 = fmul fast float %5279, %5284
  %5287 = fmul fast float %5282, %5284
  %5288 = call float @dx.op.dot3.f32(i32 55, float %5243, float %5244, float %5245, float %5271, float %5272, float %5273)  ; Dot3(ax,ay,az,bx,by,bz)
  %5289 = call float @dx.op.dot3.f32(i32 55, float %5243, float %5244, float %5245, float %5285, float %5286, float %5287)  ; Dot3(ax,ay,az,bx,by,bz)
  %5290 = fmul fast float %5288, 0x3FA99999A0000000
  %5291 = fmul fast float %5289, 0x3FA99999A0000000
  %5292 = call float @dx.op.unary.f32(i32 22, float %5290)  ; Frc(value)
  %5293 = call float @dx.op.unary.f32(i32 22, float %5291)  ; Frc(value)
  %5294 = fadd fast float %5292, 0xBFB99999A0000000
  %5295 = fadd fast float %5293, 0xBFB99999A0000000
  %5296 = call float @dx.op.unary.f32(i32 6, float %5294)  ; FAbs(value)
  %5297 = call float @dx.op.unary.f32(i32 6, float %5295)  ; FAbs(value)
  %5298 = fmul fast float %5296, 1.000000e+01
  %5299 = fmul fast float %5297, 1.000000e+01
  %5300 = call float @dx.op.binary.f32(i32 36, float %5298, float %5299)  ; FMin(a,b)
  %5301 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5302 = fsub fast float 1.000000e+00, %5301
  %5303 = fmul fast float %5302, %5253
  %5304 = fmul fast float %5302, %5254
  %5305 = fmul fast float %5302, %5255
  %5306 = fsub fast float %5236, %5033
  %5307 = fsub fast float %5237, %5034
  %5308 = fsub fast float %5238, %5035
  br label %5316

; <label>:5309                                    ; preds = %5178
  %5310 = fmul fast float %5179, 8.096000e+03
  %5311 = fmul fast float %5180, 8.096000e+03
  %5312 = fmul fast float %5181, 8.096000e+03
  %5313 = fadd fast float %5310, %155
  %5314 = fadd fast float %5311, %156
  %5315 = fadd fast float %5312, %157
  br label %5316

; <label>:5316                                    ; preds = %5309, %5252
  %5317 = phi float [ %5179, %5309 ], [ %5306, %5252 ]
  %5318 = phi float [ %5180, %5309 ], [ %5307, %5252 ]
  %5319 = phi float [ %5181, %5309 ], [ %5308, %5252 ]
  %5320 = phi float [ %5313, %5309 ], [ %5236, %5252 ]
  %5321 = phi float [ %5314, %5309 ], [ %5237, %5252 ]
  %5322 = phi float [ %5315, %5309 ], [ %5238, %5252 ]
  %5323 = phi float [ 0.000000e+00, %5309 ], [ %5303, %5252 ]
  %5324 = phi float [ 0.000000e+00, %5309 ], [ %5304, %5252 ]
  %5325 = phi float [ 0.000000e+00, %5309 ], [ %5305, %5252 ]
  %5326 = fcmp fast olt float %5052, 1.000000e+00
  br i1 %5326, label %5327, label %5358, !dx.controlflow.hints !132

; <label>:5327                                    ; preds = %5316
  %5328 = fmul fast float %5319, %5050
  %5329 = fmul fast float %5318, %5051
  %5330 = fsub fast float %5328, %5329
  %5331 = fmul fast float %5317, %5051
  %5332 = fmul fast float %5319, %5049
  %5333 = fsub fast float %5331, %5332
  %5334 = fmul fast float %5318, %5049
  %5335 = fmul fast float %5317, %5050
  %5336 = fsub fast float %5334, %5335
  %5337 = fmul fast float %5330, 2.000000e+00
  %5338 = fmul fast float %5333, 2.000000e+00
  %5339 = fmul fast float %5336, 2.000000e+00
  %5340 = fmul fast float %5337, %5052
  %5341 = fmul fast float %5338, %5052
  %5342 = fmul fast float %5339, %5052
  %5343 = fmul fast float %5339, %5050
  %5344 = fmul fast float %5338, %5051
  %5345 = fmul fast float %5337, %5051
  %5346 = fmul fast float %5339, %5049
  %5347 = fmul fast float %5338, %5049
  %5348 = fmul fast float %5337, %5050
  %5349 = fadd fast float %5343, %5317
  %5350 = fadd fast float %5349, %5340
  %5351 = fsub fast float %5350, %5344
  %5352 = fsub fast float %5318, %5346
  %5353 = fadd fast float %5352, %5341
  %5354 = fadd fast float %5353, %5345
  %5355 = fadd fast float %5342, %5319
  %5356 = fsub fast float %5355, %5348
  %5357 = fadd fast float %5356, %5347
  br label %5358

; <label>:5358                                    ; preds = %5327, %5316
  %5359 = phi float [ %5351, %5327 ], [ %5317, %5316 ]
  %5360 = phi float [ %5354, %5327 ], [ %5318, %5316 ]
  %5361 = phi float [ %5357, %5327 ], [ %5319, %5316 ]
  br i1 %5184, label %5362, label %5393

; <label>:5362                                    ; preds = %5358
  %5363 = fmul fast float %2699, 0x400187C840000000
  %5364 = fadd fast float %5363, 0xC00EFC2120000000
  %5365 = fmul fast float %5364, %2699
  %5366 = fadd fast float %5365, 0x3FE5D16340000000
  %5367 = fmul fast float %5366, %2699
  %5368 = fadd fast float %5367, 1.000000e+00
  %5369 = call float @dx.op.unary.f32(i32 7, float %5368)  ; Saturate(value)
  %5370 = fsub fast float %5320, %155
  %5371 = fsub fast float %5321, %156
  %5372 = fsub fast float %5322, %157
  %5373 = fsub fast float %5320, %5033
  %5374 = fsub fast float %5321, %5034
  %5375 = fsub fast float %5322, %5035
  %5376 = call float @dx.op.dot3.f32(i32 55, float %5370, float %5371, float %5372, float %5370, float %5371, float %5372)  ; Dot3(ax,ay,az,bx,by,bz)
  %5377 = call float @dx.op.dot3.f32(i32 55, float %5373, float %5374, float %5375, float %5373, float %5374, float %5375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5378 = fadd fast float %5377, 0x3EE4F8B580000000
  %5379 = fdiv fast float %5376, %5378
  %5380 = bitcast float %5379 to i32
  %5381 = ashr i32 %5380, 1
  %5382 = add nsw i32 %5381, 532487669
  %5383 = bitcast i32 %5382 to float
  %5384 = fmul fast float %5383, %5369
  %5385 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5386 = fmul fast float %5385, 0x4009981AE0000000
  %5387 = fsub fast float 0x40111BBD80000000, %5386
  %5388 = fmul fast float %5387, %5385
  %5389 = fadd fast float %5388, 0xC0009F6020000000
  %5390 = fmul fast float %5389, %5385
  %5391 = fadd fast float %5390, 1.000000e+00
  %5392 = call float @dx.op.unary.f32(i32 7, float %5391)  ; Saturate(value)
  br label %5396

; <label>:5393                                    ; preds = %5358
  %5394 = icmp ne i32 %5078, -1
  %5395 = zext i1 %5394 to i32
  br label %5396

; <label>:5396                                    ; preds = %5393, %5362
  %5397 = phi float [ %2699, %5393 ], [ %5392, %5362 ]
  %5398 = phi i32 [ %5395, %5393 ], [ 0, %5362 ]
  %5399 = fmul float %5397, 5.000000e+00
  %5400 = fsub float 5.000000e+00, %5399
  %5401 = icmp ne i32 %5398, 0
  %5402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.f32 %5402, 3
  %5404 = fadd fast float %5403, %5400
  %5405 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5404)  ; FMax(a,b)
  %5406 = call float @dx.op.unary.f32(i32 6, float %5359)  ; FAbs(value)
  %5407 = call float @dx.op.unary.f32(i32 6, float %5360)  ; FAbs(value)
  %5408 = fadd fast float %5407, %5406
  %5409 = call float @dx.op.unary.f32(i32 6, float %5361)  ; FAbs(value)
  %5410 = fadd fast float %5408, %5409
  %5411 = fcmp fast oeq float %5410, 0.000000e+00
  %5412 = fdiv fast float 1.000000e+00, %5410
  %5413 = select i1 %5411, float 1.000000e+00, float %5412
  %5414 = fmul fast float %5413, %5359
  %5415 = fmul fast float %5413, %5360
  %5416 = call float @dx.op.unary.f32(i32 6, float %5415)  ; FAbs(value)
  %5417 = call float @dx.op.unary.f32(i32 6, float %5414)  ; FAbs(value)
  %5418 = fsub fast float 1.000000e+00, %5416
  %5419 = fsub fast float 1.000000e+00, %5417
  %5420 = fcmp fast oge float %5414, 0.000000e+00
  %5421 = fcmp fast oge float %5415, 0.000000e+00
  %5422 = select i1 %5420, float 1.000000e+00, float -1.000000e+00
  %5423 = select i1 %5421, float 1.000000e+00, float -1.000000e+00
  %5424 = fcmp fast ole float %5361, 0.000000e+00
  %5425 = fmul fast float %5422, %5418
  %5426 = fmul fast float %5423, %5419
  %5427 = select i1 %5424, float %5425, float %5414
  %5428 = select i1 %5424, float %5426, float %5415
  %5429 = fmul fast float %5427, 5.000000e-01
  %5430 = fmul fast float %5428, 5.000000e-01
  %5431 = fadd fast float %5429, 5.000000e-01
  %5432 = fadd fast float %5430, 5.000000e-01
  %5433 = uitofp i32 %5076 to float
  %5434 = call float @dx.op.binary.f32(i32 36, float %5405, float 3.000000e+00)  ; FMin(a,b)
  %5435 = fadd fast float %5434, 2.000000e+00
  %5436 = call float @dx.op.unary.f32(i32 21, float %5435)  ; Exp(value)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5402, 1
  %5438 = fmul fast float %5437, %5436
  %5439 = fmul fast float %5438, 2.000000e+00
  %5440 = fsub fast float 1.000000e+00, %5439
  %5441 = fmul fast float %5431, %5440
  %5442 = fmul fast float %5432, %5440
  %5443 = fadd fast float %5441, %5438
  %5444 = fadd fast float %5442, %5438
  %5445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %5443, float %5444, float %5433, float undef, i32 0, i32 0, i32 undef, float %5405)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.ResRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.ResRet.f32 %5445, 2
  %5449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5450 = extractvalue %dx.types.CBufRet.f32 %5449, 3
  %5451 = fmul fast float %5450, %5046
  %5452 = call float @dx.op.binary.f32(i32 36, float %4918, float %5451)  ; FMin(a,b)
  %5453 = select i1 %5401, float %5452, float %5451
  %5454 = fmul fast float %5446, %5126
  %5455 = fmul fast float %5454, %5453
  %5456 = fmul fast float %5447, %5126
  %5457 = fmul fast float %5456, %5453
  %5458 = fmul fast float %5448, %5126
  %5459 = fmul fast float %5458, %5453
  %5460 = fadd fast float %5455, %5013
  %5461 = fadd fast float %5457, %5014
  %5462 = fadd fast float %5459, %5015
  %5463 = fsub fast float %5024, %5126
  %5464 = and i32 %5141, 255
  %5465 = uitofp i32 %5464 to float
  %5466 = fptoui float %5465 to i32
  %5467 = icmp eq i32 %5136, 1
  %5468 = zext i1 %5467 to i32
  %5469 = add i32 %5468, %5466
  %5470 = uitofp i32 %5469 to float
  %5471 = fptoui float %5470 to i32
  %5472 = shl i32 %5471, 8
  %5473 = and i32 %5472, 65280
  %5474 = or i32 %5473, %5144
  %5475 = fmul fast float %5323, %5126
  %5476 = fmul fast float %5324, %5126
  %5477 = fmul fast float %5325, %5126
  %5478 = fadd fast float %5475, %5020
  %5479 = fadd fast float %5476, %5021
  %5480 = fadd fast float %5477, %5022
  %5481 = fmul fast float %5433, 0x3FE3C6EF40000000
  %5482 = call float @dx.op.unary.f32(i32 22, float %5481)  ; Frc(value)
  %5483 = fadd fast float %5482, 0x3FE5555560000000
  %5484 = fadd fast float %5482, 0x3FD5555560000000
  %5485 = fsub fast float -0.000000e+00, %5482
  %5486 = fsub fast float -0.000000e+00, %5483
  %5487 = fsub fast float -0.000000e+00, %5484
  %5488 = fcmp fast oge float %5482, %5485
  %5489 = fcmp fast oge float %5483, %5486
  %5490 = fcmp fast oge float %5484, %5487
  %5491 = call float @dx.op.unary.f32(i32 6, float %5482)  ; FAbs(value)
  %5492 = call float @dx.op.unary.f32(i32 6, float %5483)  ; FAbs(value)
  %5493 = call float @dx.op.unary.f32(i32 6, float %5484)  ; FAbs(value)
  %5494 = call float @dx.op.unary.f32(i32 22, float %5491)  ; Frc(value)
  %5495 = call float @dx.op.unary.f32(i32 22, float %5492)  ; Frc(value)
  %5496 = call float @dx.op.unary.f32(i32 22, float %5493)  ; Frc(value)
  %5497 = fsub fast float -0.000000e+00, %5494
  %5498 = fsub fast float -0.000000e+00, %5495
  %5499 = fsub fast float -0.000000e+00, %5496
  %5500 = select i1 %5488, float %5494, float %5497
  %5501 = select i1 %5489, float %5495, float %5498
  %5502 = select i1 %5490, float %5496, float %5499
  %5503 = fmul fast float %5500, 6.000000e+00
  %5504 = fmul fast float %5501, 6.000000e+00
  %5505 = fmul fast float %5502, 6.000000e+00
  %5506 = fadd fast float %5503, -3.000000e+00
  %5507 = fadd fast float %5504, -3.000000e+00
  %5508 = fadd fast float %5505, -3.000000e+00
  %5509 = call float @dx.op.unary.f32(i32 6, float %5506)  ; FAbs(value)
  %5510 = call float @dx.op.unary.f32(i32 6, float %5507)  ; FAbs(value)
  %5511 = call float @dx.op.unary.f32(i32 6, float %5508)  ; FAbs(value)
  %5512 = fadd fast float %5509, -1.000000e+00
  %5513 = fadd fast float %5510, -1.000000e+00
  %5514 = fadd fast float %5511, -1.000000e+00
  %5515 = call float @dx.op.unary.f32(i32 7, float %5512)  ; Saturate(value)
  %5516 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5517 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5518 = fmul fast float %5515, %5126
  %5519 = fmul fast float %5516, %5126
  %5520 = fmul fast float %5517, %5126
  %5521 = fadd fast float %5518, %5016
  %5522 = fadd fast float %5519, %5017
  %5523 = fadd fast float %5520, %5018
  %5524 = icmp eq i32 %5076, 0
  %5525 = select i1 %5524, i32 1, i32 %5019
  %5526 = icmp eq i32 %5023, 0
  br i1 %5526, label %5147, label %5527

; <label>:5527                                    ; preds = %5396
  %5528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5529 = extractvalue %dx.types.CBufRet.f32 %5528, 0
  %5530 = bitcast float %5529 to i32
  %5531 = lshr i32 %5530, 8
  %5532 = and i32 %5531, 255
  %5533 = uitofp i32 %5532 to float
  %5534 = fptoui float %5533 to i32
  %5535 = icmp eq i32 %5534, 16
  %5536 = bitcast float %5451 to i32
  %5537 = select i1 %5535, i32 %5536, i32 %5012
  %5538 = icmp eq i32 %5534, 17
  %5539 = bitcast float %4918 to i32
  %5540 = select i1 %5538, i32 %5539, i32 %5537
  %5541 = icmp eq i32 %5534, 18
  %5542 = bitcast float %5453 to i32
  %5543 = select i1 %5541, i32 %5542, i32 %5540
  br label %5147

; <label>:5544                                    ; preds = %5147
  br label %5545

; <label>:5545                                    ; preds = %5544, %4970
  %5546 = phi i32 [ %4971, %4970 ], [ %5148, %5544 ]
  %5547 = phi i32 [ %4972, %4970 ], [ %5149, %5544 ]
  %5548 = phi float [ %4973, %4970 ], [ %5150, %5544 ]
  %5549 = phi float [ %4974, %4970 ], [ %5151, %5544 ]
  %5550 = phi float [ %4975, %4970 ], [ %5152, %5544 ]
  %5551 = phi float [ %4976, %4970 ], [ %5153, %5544 ]
  %5552 = phi float [ %4977, %4970 ], [ %5154, %5544 ]
  %5553 = phi float [ %4978, %4970 ], [ %5155, %5544 ]
  %5554 = phi i32 [ %4979, %4970 ], [ %5156, %5544 ]
  %5555 = phi float [ %4980, %4970 ], [ %5157, %5544 ]
  %5556 = phi float [ %4981, %4970 ], [ %5158, %5544 ]
  %5557 = phi float [ %4982, %4970 ], [ %5159, %5544 ]
  %5558 = phi i32 [ %4983, %4970 ], [ %5160, %5544 ]
  %5559 = phi float [ %4984, %4970 ], [ %5161, %5544 ]
  %5560 = add i32 %4985, 1
  %5561 = icmp ugt i32 %5560, %4967
  br i1 %5561, label %5562, label %4970, !llvm.loop !133

; <label>:5562                                    ; preds = %5545
  br label %5563

; <label>:5563                                    ; preds = %5562, %4917
  %5564 = phi i32 [ %4581, %4917 ], [ %5546, %5562 ]
  %5565 = phi i32 [ %4905, %4917 ], [ %5547, %5562 ]
  %5566 = phi float [ 0.000000e+00, %4917 ], [ %5548, %5562 ]
  %5567 = phi float [ 0.000000e+00, %4917 ], [ %5549, %5562 ]
  %5568 = phi float [ 0.000000e+00, %4917 ], [ %5550, %5562 ]
  %5569 = phi float [ 0.000000e+00, %4917 ], [ %5551, %5562 ]
  %5570 = phi float [ 0.000000e+00, %4917 ], [ %5552, %5562 ]
  %5571 = phi float [ 0.000000e+00, %4917 ], [ %5553, %5562 ]
  %5572 = phi i32 [ 0, %4917 ], [ %5554, %5562 ]
  %5573 = phi float [ 0.000000e+00, %4917 ], [ %5555, %5562 ]
  %5574 = phi float [ 0.000000e+00, %4917 ], [ %5556, %5562 ]
  %5575 = phi float [ 0.000000e+00, %4917 ], [ %5557, %5562 ]
  %5576 = call float @dx.op.dot3.f32(i32 55, float %5566, float %5567, float %5568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5577 = select i1 %2753, float 0.000000e+00, float %5566
  %5578 = select i1 %2753, float %5576, float %5567
  %5579 = select i1 %2753, float 0.000000e+00, float %5568
  %5580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5581 = extractvalue %dx.types.CBufRet.f32 %5580, 0
  %5582 = bitcast float %5581 to i32
  %5583 = lshr i32 %5582, 8
  %5584 = and i32 %5583, 255
  %5585 = uitofp i32 %5584 to float
  %5586 = fptoui float %5585 to i32
  %5587 = icmp eq i32 %5586, 13
  br i1 %5587, label %5588, label %5608

; <label>:5588                                    ; preds = %5563
  %5589 = fadd fast float %5569, 1.000000e+00
  %5590 = fadd fast float %5570, 1.000000e+00
  %5591 = fadd fast float %5571, 1.000000e+00
  %5592 = fmul fast float %5589, 5.000000e-01
  %5593 = fmul fast float %5590, 5.000000e-01
  %5594 = fmul fast float %5591, 5.000000e-01
  %5595 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5596 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5597 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5598 = fmul fast float %5595, 1.023000e+03
  %5599 = fmul fast float %5596, 1.023000e+03
  %5600 = fmul fast float %5597, 1.023000e+03
  %5601 = fptoui float %5598 to i32
  %5602 = fptoui float %5599 to i32
  %5603 = fptoui float %5600 to i32
  %5604 = shl i32 %5602, 10
  %5605 = or i32 %5604, %5601
  %5606 = shl i32 %5603, 20
  %5607 = or i32 %5605, %5606
  br label %5608

; <label>:5608                                    ; preds = %5588, %5563
  %5609 = phi i32 [ %5607, %5588 ], [ %5565, %5563 ]
  %5610 = icmp eq i32 %5586, 14
  %5611 = select i1 %5610, i32 %5572, i32 %5609
  %5612 = icmp eq i32 %5586, 22
  br i1 %5612, label %5613, label %5633

; <label>:5613                                    ; preds = %5608
  %5614 = fadd fast float %5573, 1.000000e+00
  %5615 = fadd fast float %5574, 1.000000e+00
  %5616 = fadd fast float %5575, 1.000000e+00
  %5617 = fmul fast float %5614, 5.000000e-01
  %5618 = fmul fast float %5615, 5.000000e-01
  %5619 = fmul fast float %5616, 5.000000e-01
  %5620 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5621 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5622 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5623 = fmul fast float %5620, 1.023000e+03
  %5624 = fmul fast float %5621, 1.023000e+03
  %5625 = fmul fast float %5622, 1.023000e+03
  %5626 = fptoui float %5623 to i32
  %5627 = fptoui float %5624 to i32
  %5628 = fptoui float %5625 to i32
  %5629 = shl i32 %5627, 10
  %5630 = or i32 %5629, %5626
  %5631 = shl i32 %5628, 20
  %5632 = or i32 %5630, %5631
  br label %5633

; <label>:5633                                    ; preds = %5613, %5608
  %5634 = phi i32 [ %5632, %5613 ], [ %5611, %5608 ]
  %5635 = fcmp fast olt float %4906, 0.000000e+00
  %5636 = call float @dx.op.unary.f32(i32 6, float %4906)  ; FAbs(value)
  %5637 = fmul fast float %5636, %4907
  %5638 = fmul fast float %5636, %4908
  %5639 = fmul fast float %5636, %4909
  %5640 = select i1 %5635, float %4907, float %5637
  %5641 = select i1 %5635, float %4908, float %5638
  %5642 = select i1 %5635, float %4909, float %5639
  %5643 = fsub fast float 1.000000e+00, %5636
  %5644 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5645 = fmul fast float %5644, %5577
  %5646 = fmul fast float %5644, %5578
  %5647 = fmul fast float %5644, %5579
  %5648 = fadd fast float %5640, %5645
  %5649 = fadd fast float %5641, %5646
  %5650 = fadd fast float %5642, %5647
  br label %5651

; <label>:5651                                    ; preds = %5633, %4904
  %5652 = phi i32 [ %4581, %4904 ], [ %5564, %5633 ]
  %5653 = phi i32 [ %4905, %4904 ], [ %5634, %5633 ]
  %5654 = phi float [ %4907, %4904 ], [ %5648, %5633 ]
  %5655 = phi float [ %4908, %4904 ], [ %5649, %5633 ]
  %5656 = phi float [ %4909, %4904 ], [ %5650, %5633 ]
  %5657 = fmul fast float %4583, %3866
  %5658 = fmul fast float %4584, %3866
  %5659 = fmul fast float %4585, %3866
  %5660 = fmul fast float %5654, %2656
  %5661 = fmul fast float %5655, %2657
  %5662 = fmul fast float %5656, %3863
  %5663 = fadd fast float %5660, %2528
  %5664 = fadd fast float %5661, %2529
  %5665 = fadd fast float %5662, %2530
  %5666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5666, 3
  %5668 = fcmp fast oeq float %5667, 0.000000e+00
  br i1 %5668, label %7494, label %5669

; <label>:5669                                    ; preds = %5651
  %5670 = extractvalue %dx.types.CBufRet.f32 %5666, 0
  %5671 = extractvalue %dx.types.CBufRet.f32 %5666, 1
  %5672 = extractvalue %dx.types.CBufRet.f32 %5666, 2
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 0
  %5675 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5676 = extractvalue %dx.types.CBufRet.f32 %5673, 2
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 0
  %5679 = extractvalue %dx.types.CBufRet.f32 %5677, 1
  %5680 = call float @dx.op.dot3.f32(i32 55, float %5674, float %5675, float %5676, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5681 = select i1 %2753, float %5678, float %5674
  %5682 = select i1 %2753, float %5680, float %5675
  %5683 = select i1 %2753, float %5679, float %5676
  %5684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5685 = extractvalue %dx.types.CBufRet.f32 %5684, 0
  %5686 = extractvalue %dx.types.CBufRet.f32 %5684, 1
  %5687 = extractvalue %dx.types.CBufRet.f32 %5684, 2
  %5688 = extractvalue %dx.types.CBufRet.f32 %5684, 3
  %5689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5690 = extractvalue %dx.types.CBufRet.f32 %5689, 0
  %5691 = extractvalue %dx.types.CBufRet.f32 %5689, 1
  %5692 = extractvalue %dx.types.CBufRet.f32 %5689, 2
  %5693 = extractvalue %dx.types.CBufRet.f32 %5689, 3
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 0
  %5696 = extractvalue %dx.types.CBufRet.f32 %5694, 1
  %5697 = extractvalue %dx.types.CBufRet.f32 %5694, 2
  %5698 = extractvalue %dx.types.CBufRet.f32 %5694, 3
  %5699 = fmul fast float %5685, %155
  %5700 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5686, float %5699)  ; FMad(a,b,c)
  %5701 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5687, float %5700)  ; FMad(a,b,c)
  %5702 = fadd fast float %5701, %5688
  %5703 = fmul fast float %5690, %155
  %5704 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5691, float %5703)  ; FMad(a,b,c)
  %5705 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5692, float %5704)  ; FMad(a,b,c)
  %5706 = fadd fast float %5705, %5693
  %5707 = fmul fast float %5695, %155
  %5708 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5696, float %5707)  ; FMad(a,b,c)
  %5709 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5697, float %5708)  ; FMad(a,b,c)
  %5710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5711 = extractvalue %dx.types.CBufRet.f32 %5710, 0
  %5712 = extractvalue %dx.types.CBufRet.f32 %5710, 1
  %5713 = extractvalue %dx.types.CBufRet.f32 %5710, 3
  %5714 = fmul fast float %5713, %5702
  %5715 = fmul fast float %5713, %5706
  %5716 = fadd fast float %5714, %5711
  %5717 = fadd fast float %5715, %5712
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 0
  %5720 = extractvalue %dx.types.CBufRet.f32 %5718, 1
  %5721 = extractvalue %dx.types.CBufRet.f32 %5718, 3
  %5722 = fmul fast float %5721, %5702
  %5723 = fmul fast float %5721, %5706
  %5724 = fadd fast float %5722, %5719
  %5725 = fadd fast float %5723, %5720
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 1
  %5728 = fsub fast float -0.000000e+00, %5698
  %5729 = fsub fast float %5728, %5709
  %5730 = fadd fast float %5729, %5727
  %5731 = extractvalue %dx.types.CBufRet.f32 %5726, 2
  %5732 = fmul fast float %5730, %5731
  %5733 = fsub fast float 1.000000e+00, %5732
  %5734 = call float @dx.op.unary.f32(i32 7, float %5733)  ; Saturate(value)
  %5735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5736 = extractvalue %dx.types.CBufRet.f32 %5735, 0
  %5737 = extractvalue %dx.types.CBufRet.f32 %5735, 1
  %5738 = fsub fast float %5724, %5736
  %5739 = fsub fast float %5725, %5737
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5742 = extractvalue %dx.types.CBufRet.f32 %5741, 0
  %5743 = extractvalue %dx.types.CBufRet.f32 %5741, 1
  %5744 = fsub fast float %5716, %5742
  %5745 = fsub fast float %5717, %5743
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5748 = extractvalue %dx.types.CBufRet.f32 %5747, 0
  %5749 = extractvalue %dx.types.CBufRet.f32 %5747, 1
  %5750 = fsub fast float %5702, %5748
  %5751 = fsub fast float %5706, %5749
  %5752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.f32 %5753, 0
  %5755 = bitcast float %5754 to i32
  %5756 = lshr i32 %5755, 8
  %5757 = and i32 %5756, 255
  %5758 = uitofp i32 %5757 to float
  %5759 = fptoui float %5758 to i32
  %5760 = and i32 %5759, -2
  %5761 = icmp eq i32 %5760, 10
  br i1 %5761, label %5762, label %5832

; <label>:5762                                    ; preds = %5669
  %5763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5764 = extractvalue %dx.types.CBufRet.f32 %5763, 0
  %5765 = fcmp fast olt float %5750, 0.000000e+00
  %5766 = extractvalue %dx.types.CBufRet.f32 %5752, 0
  %5767 = extractvalue %dx.types.CBufRet.f32 %5752, 2
  %5768 = select i1 %5765, float %5766, float %5767
  %5769 = fmul fast float %5768, %5750
  %5770 = call float @dx.op.unary.f32(i32 6, float %5769)  ; FAbs(value)
  %5771 = fcmp fast olt float %5751, 0.000000e+00
  %5772 = extractvalue %dx.types.CBufRet.f32 %5752, 1
  %5773 = extractvalue %dx.types.CBufRet.f32 %5752, 3
  %5774 = select i1 %5771, float %5772, float %5773
  %5775 = fmul fast float %5774, %5751
  %5776 = call float @dx.op.unary.f32(i32 6, float %5775)  ; FAbs(value)
  %5777 = call float @dx.op.binary.f32(i32 35, float %5770, float %5776)  ; FMax(a,b)
  %5778 = fsub fast float %5764, %5777
  %5779 = call float @dx.op.unary.f32(i32 7, float %5778)  ; Saturate(value)
  %5780 = fmul fast float %5779, %5734
  %5781 = fcmp fast olt float %5744, 0.000000e+00
  %5782 = extractvalue %dx.types.CBufRet.f32 %5746, 0
  %5783 = extractvalue %dx.types.CBufRet.f32 %5746, 2
  %5784 = select i1 %5781, float %5782, float %5783
  %5785 = fmul fast float %5784, %5744
  %5786 = call float @dx.op.unary.f32(i32 6, float %5785)  ; FAbs(value)
  %5787 = fcmp fast olt float %5745, 0.000000e+00
  %5788 = extractvalue %dx.types.CBufRet.f32 %5746, 1
  %5789 = extractvalue %dx.types.CBufRet.f32 %5746, 3
  %5790 = select i1 %5787, float %5788, float %5789
  %5791 = fmul fast float %5790, %5745
  %5792 = call float @dx.op.unary.f32(i32 6, float %5791)  ; FAbs(value)
  %5793 = call float @dx.op.binary.f32(i32 35, float %5786, float %5792)  ; FMax(a,b)
  %5794 = fsub fast float %5764, %5793
  %5795 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5796 = fmul fast float %5795, %5734
  %5797 = fcmp fast olt float %5738, 0.000000e+00
  %5798 = extractvalue %dx.types.CBufRet.f32 %5740, 0
  %5799 = extractvalue %dx.types.CBufRet.f32 %5740, 2
  %5800 = select i1 %5797, float %5798, float %5799
  %5801 = fmul fast float %5800, %5738
  %5802 = call float @dx.op.unary.f32(i32 6, float %5801)  ; FAbs(value)
  %5803 = fcmp fast olt float %5739, 0.000000e+00
  %5804 = extractvalue %dx.types.CBufRet.f32 %5740, 1
  %5805 = extractvalue %dx.types.CBufRet.f32 %5740, 3
  %5806 = select i1 %5803, float %5804, float %5805
  %5807 = fmul fast float %5806, %5739
  %5808 = call float @dx.op.unary.f32(i32 6, float %5807)  ; FAbs(value)
  %5809 = call float @dx.op.binary.f32(i32 35, float %5802, float %5808)  ; FMax(a,b)
  %5810 = fsub fast float %5764, %5809
  %5811 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5812 = fmul fast float %5811, %5734
  %5813 = fadd fast float %5780, 1.000000e+00
  %5814 = fadd fast float %5796, 1.000000e+00
  %5815 = fadd fast float %5812, 1.000000e+00
  %5816 = fmul fast float %5813, 5.000000e-01
  %5817 = fmul fast float %5814, 5.000000e-01
  %5818 = fmul fast float %5815, 5.000000e-01
  %5819 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5820 = call float @dx.op.unary.f32(i32 7, float %5817)  ; Saturate(value)
  %5821 = call float @dx.op.unary.f32(i32 7, float %5818)  ; Saturate(value)
  %5822 = fmul fast float %5819, 1.023000e+03
  %5823 = fmul fast float %5820, 1.023000e+03
  %5824 = fmul fast float %5821, 1.023000e+03
  %5825 = fptoui float %5822 to i32
  %5826 = fptoui float %5823 to i32
  %5827 = fptoui float %5824 to i32
  %5828 = shl i32 %5826, 10
  %5829 = or i32 %5828, %5825
  %5830 = shl i32 %5827, 20
  %5831 = or i32 %5829, %5830
  br label %5832

; <label>:5832                                    ; preds = %5762, %5669
  %5833 = phi i32 [ %5831, %5762 ], [ %5653, %5669 ]
  %5834 = fcmp fast olt float %5667, 0.000000e+00
  br i1 %5834, label %7146, label %5835

; <label>:5835                                    ; preds = %5832
  %5836 = fadd fast float %5709, %5698
  %5837 = fsub fast float %5727, %5836
  %5838 = fmul fast float %5837, %5731
  %5839 = fsub fast float 1.000000e+00, %5838
  %5840 = call float @dx.op.unary.f32(i32 7, float %5839)  ; Saturate(value)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5718, 2
  %5842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5843 = extractvalue %dx.types.CBufRet.f32 %5842, 2
  %5844 = fadd fast float %5843, %5841
  %5845 = fcmp fast ogt float %5844, 0.000000e+00
  br i1 %5845, label %5846, label %5865

; <label>:5846                                    ; preds = %5835
  %5847 = fcmp fast olt float %5738, 0.000000e+00
  %5848 = fcmp fast olt float %5739, 0.000000e+00
  %5849 = extractvalue %dx.types.CBufRet.f32 %5740, 0
  %5850 = extractvalue %dx.types.CBufRet.f32 %5740, 1
  %5851 = extractvalue %dx.types.CBufRet.f32 %5740, 2
  %5852 = extractvalue %dx.types.CBufRet.f32 %5740, 3
  %5853 = select i1 %5847, float %5849, float %5851
  %5854 = select i1 %5848, float %5850, float %5852
  %5855 = fmul fast float %5853, %5738
  %5856 = fmul fast float %5854, %5739
  %5857 = call float @dx.op.unary.f32(i32 6, float %5855)  ; FAbs(value)
  %5858 = call float @dx.op.unary.f32(i32 6, float %5856)  ; FAbs(value)
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = call float @dx.op.binary.f32(i32 35, float %5857, float %5858)  ; FMax(a,b)
  %5862 = fsub fast float %5860, %5861
  %5863 = call float @dx.op.unary.f32(i32 7, float %5862)  ; Saturate(value)
  %5864 = fmul fast float %5863, %5840
  br label %5865

; <label>:5865                                    ; preds = %5846, %5835
  %5866 = phi float [ %5864, %5846 ], [ 0.000000e+00, %5835 ]
  %5867 = extractvalue %dx.types.CBufRet.f32 %5710, 2
  %5868 = extractvalue %dx.types.CBufRet.f32 %5842, 1
  %5869 = fadd fast float %5868, %5867
  %5870 = fcmp fast ogt float %5869, 0.000000e+00
  br i1 %5870, label %5871, label %5890

; <label>:5871                                    ; preds = %5865
  %5872 = fcmp fast olt float %5744, 0.000000e+00
  %5873 = fcmp fast olt float %5745, 0.000000e+00
  %5874 = extractvalue %dx.types.CBufRet.f32 %5746, 0
  %5875 = extractvalue %dx.types.CBufRet.f32 %5746, 1
  %5876 = extractvalue %dx.types.CBufRet.f32 %5746, 2
  %5877 = extractvalue %dx.types.CBufRet.f32 %5746, 3
  %5878 = select i1 %5872, float %5874, float %5876
  %5879 = select i1 %5873, float %5875, float %5877
  %5880 = fmul fast float %5878, %5744
  %5881 = fmul fast float %5879, %5745
  %5882 = call float @dx.op.unary.f32(i32 6, float %5880)  ; FAbs(value)
  %5883 = call float @dx.op.unary.f32(i32 6, float %5881)  ; FAbs(value)
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 0
  %5886 = call float @dx.op.binary.f32(i32 35, float %5882, float %5883)  ; FMax(a,b)
  %5887 = fsub fast float %5885, %5886
  %5888 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5889 = fmul fast float %5888, %5840
  br label %5890

; <label>:5890                                    ; preds = %5871, %5865
  %5891 = phi float [ %5889, %5871 ], [ 0.000000e+00, %5865 ]
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 1
  %5894 = call float @dx.op.unary.f32(i32 7, float %5893)  ; Saturate(value)
  %5895 = fcmp fast olt float %5750, 0.000000e+00
  %5896 = fcmp fast olt float %5751, 0.000000e+00
  %5897 = extractvalue %dx.types.CBufRet.f32 %5752, 0
  %5898 = extractvalue %dx.types.CBufRet.f32 %5752, 1
  %5899 = extractvalue %dx.types.CBufRet.f32 %5752, 2
  %5900 = extractvalue %dx.types.CBufRet.f32 %5752, 3
  %5901 = select i1 %5895, float %5897, float %5899
  %5902 = select i1 %5896, float %5898, float %5900
  %5903 = fmul fast float %5901, %5750
  %5904 = fmul fast float %5902, %5751
  %5905 = call float @dx.op.unary.f32(i32 6, float %5903)  ; FAbs(value)
  %5906 = call float @dx.op.unary.f32(i32 6, float %5904)  ; FAbs(value)
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5909 = call float @dx.op.binary.f32(i32 35, float %5905, float %5906)  ; FMax(a,b)
  %5910 = fsub fast float %5908, %5909
  %5911 = call float @dx.op.unary.f32(i32 7, float %5910)  ; Saturate(value)
  %5912 = call float @dx.op.binary.f32(i32 36, float %5911, float %5894)  ; FMin(a,b)
  %5913 = fmul fast float %5912, %5840
  %5914 = fsub fast float %5891, %5913
  %5915 = fsub fast float %5866, %5891
  %5916 = fsub fast float %5915, %5913
  %5917 = call float @dx.op.binary.f32(i32 35, float %5891, float %5866)  ; FMax(a,b)
  %5918 = call float @dx.op.binary.f32(i32 35, float %5913, float %5917)  ; FMax(a,b)
  %5919 = fcmp fast olt float %5918, 1.000000e+00
  br i1 %5919, label %5920, label %6591, !dx.controlflow.hints !136

; <label>:5920                                    ; preds = %5890
  %5921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5921, 0
  %5923 = fcmp fast une float %5922, 0.000000e+00
  br i1 %5923, label %5924, label %6591, !dx.controlflow.hints !137

; <label>:5924                                    ; preds = %5920
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.CBufRet.f32 %5925, 1
  %5928 = extractvalue %dx.types.CBufRet.f32 %5925, 2
  %5929 = extractvalue %dx.types.CBufRet.f32 %5925, 3
  %5930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5931 = extractvalue %dx.types.CBufRet.f32 %5930, 0
  %5932 = extractvalue %dx.types.CBufRet.f32 %5930, 1
  %5933 = extractvalue %dx.types.CBufRet.f32 %5930, 2
  %5934 = extractvalue %dx.types.CBufRet.f32 %5930, 3
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.CBufRet.f32 %5935, 1
  %5938 = extractvalue %dx.types.CBufRet.f32 %5935, 2
  %5939 = extractvalue %dx.types.CBufRet.f32 %5935, 3
  %5940 = fmul fast float %5926, %155
  %5941 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5927, float %5940)  ; FMad(a,b,c)
  %5942 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5928, float %5941)  ; FMad(a,b,c)
  %5943 = fadd fast float %5942, %5929
  %5944 = fmul fast float %5931, %155
  %5945 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5932, float %5944)  ; FMad(a,b,c)
  %5946 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5933, float %5945)  ; FMad(a,b,c)
  %5947 = fadd fast float %5946, %5934
  %5948 = fmul fast float %5936, %155
  %5949 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5937, float %5948)  ; FMad(a,b,c)
  %5950 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5938, float %5949)  ; FMad(a,b,c)
  %5951 = fadd fast float %5950, %5939
  %5952 = fcmp fast oge float %5943, 1.000000e+00
  %5953 = fcmp fast oge float %5947, 1.000000e+00
  %5954 = or i1 %5952, %5953
  %5955 = fcmp fast olt float %5943, 0.000000e+00
  %5956 = fcmp fast olt float %5947, 0.000000e+00
  %5957 = or i1 %5955, %5956
  %5958 = or i1 %5954, %5957
  br i1 %5958, label %6591, label %5959, !dx.controlflow.hints !138

; <label>:5959                                    ; preds = %5924
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5963 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5965 = extractvalue %dx.types.CBufRet.f32 %5964, 1
  %5966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.i32 %5966, 2
  %5968 = uitofp i32 %5967 to float
  %5969 = extractvalue %dx.types.CBufRet.i32 %5966, 3
  %5970 = uitofp i32 %5969 to float
  %5971 = extractvalue %dx.types.CBufRet.f32 %5960, 3
  %5972 = fmul fast float %5971, 2.000000e+00
  %5973 = fsub fast float %5943, %5961
  %5974 = fsub fast float %5947, %5962
  %5975 = fmul fast float %5972, %5973
  %5976 = fmul fast float %5972, %5974
  %5977 = fdiv fast float 1.000000e+00, %5672
  %5978 = fmul fast float %5976, %5977
  %5979 = call float @dx.op.unary.f32(i32 6, float %5978)  ; FAbs(value)
  %5980 = fmul fast float %5963, %157
  %5981 = fmul fast float %5980, %5972
  %5982 = call float @dx.op.unary.f32(i32 6, float %5981)  ; FAbs(value)
  %5983 = call float @dx.op.unary.f32(i32 6, float %5975)  ; FAbs(value)
  %5984 = call float @dx.op.binary.f32(i32 35, float %5982, float %5979)  ; FMax(a,b)
  %5985 = call float @dx.op.binary.f32(i32 35, float %5983, float %5984)  ; FMax(a,b)
  %5986 = fmul fast float %5985, 2.000000e+00
  %5987 = call float @dx.op.unary.f32(i32 23, float %5986)  ; Log(value)
  %5988 = call float @dx.op.binary.f32(i32 35, float %5987, float %5968)  ; FMax(a,b)
  %5989 = call float @dx.op.unary.f32(i32 22, float %5988)  ; Frc(value)
  %5990 = fadd fast float %5989, 0xBFEA666660000000
  %5991 = fmul fast float %5990, 8.000000e+00
  %5992 = call float @dx.op.unary.f32(i32 7, float %5991)  ; Saturate(value)
  %5993 = call float @dx.op.unary.f32(i32 27, float %5988)  ; Round_ni(value)
  %5994 = fadd fast float %5993, %5992
  %5995 = call float @dx.op.binary.f32(i32 36, float %5994, float %5970)  ; FMin(a,b)
  %5996 = call float @dx.op.unary.f32(i32 27, float %5995)  ; Round_ni(value)
  %5997 = fsub fast float -0.000000e+00, %5996
  %5998 = call float @dx.op.unary.f32(i32 21, float %5997)  ; Exp(value)
  %5999 = fmul fast float %5998, %5972
  %6000 = fmul fast float %5999, %5943
  %6001 = fmul fast float %5999, %5947
  %6002 = fmul fast float %6000, 5.000000e-01
  %6003 = fmul fast float %6001, 5.000000e-01
  %6004 = fadd fast float %6002, 5.000000e-01
  %6005 = fadd fast float %6003, 5.000000e-01
  %6006 = fmul fast float %6000, 2.500000e-01
  %6007 = fmul fast float %6001, 2.500000e-01
  %6008 = fadd fast float %6006, 5.000000e-01
  %6009 = fadd fast float %6007, 5.000000e-01
  %6010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6011 = extractvalue %dx.types.ResRet.i32 %6010, 0
  %6012 = and i32 %6011, 536870911
  %6013 = lshr i32 %6012, 9
  %6014 = uitofp i32 %6013 to float
  %6015 = fmul fast float %6014, %5943
  %6016 = fmul fast float %6014, %5947
  %6017 = call float @dx.op.unary.f32(i32 22, float %6015)  ; Frc(value)
  %6018 = call float @dx.op.unary.f32(i32 22, float %6016)  ; Frc(value)
  %6019 = call float @dx.op.unary.f32(i32 22, float %5992)  ; Frc(value)
  %6020 = fcmp fast une float %6019, 0.000000e+00
  br i1 %6020, label %6021, label %6119, !dx.controlflow.hints !139

; <label>:6021                                    ; preds = %5959
  %6022 = call float @dx.op.unary.f32(i32 21, float %5993)  ; Exp(value)
  %6023 = fmul fast float %6022, 1.953125e-03
  %6024 = fcmp fast olt float %6017, %6023
  %6025 = fcmp fast olt float %6018, %6023
  %6026 = or i1 %6024, %6025
  %6027 = fsub fast float 1.000000e+00, %6023
  %6028 = fcmp fast ogt float %6017, %6027
  %6029 = fcmp fast ogt float %6018, %6027
  %6030 = or i1 %6028, %6029
  %6031 = or i1 %6026, %6030
  br i1 %6031, label %6032, label %6198, !dx.controlflow.hints !140

; <label>:6032                                    ; preds = %6021
  %6033 = fmul fast float %5965, 5.000000e-01
  %6034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6035 = extractvalue %dx.types.CBufRet.i32 %6034, 0
  %6036 = fmul fast float %5947, 3.530000e+02
  %6037 = uitofp i32 %6012 to float
  %6038 = fmul fast float %6036, %6037
  %6039 = fmul fast float %5943, 6.130000e+02
  %6040 = fadd fast float %6038, %6039
  %6041 = fptoui float %6040 to i32
  %6042 = add i32 %6035, %6041
  %6043 = mul i32 %6042, -63
  %6044 = lshr i32 %6043, 17
  %6045 = xor i32 %6044, %6043
  %6046 = mul i32 %6045, -511
  %6047 = mul i32 %6045, -8176
  %6048 = xor i32 %6046, %6047
  %6049 = mul i32 %6048, -7
  %6050 = mul i32 %6048, -7168
  %6051 = xor i32 %6049, %6050
  %6052 = lshr i32 %6051, 15
  %6053 = xor i32 %6052, %6049
  %6054 = and i32 %6053, 15
  %6055 = mul i32 %6054, 2
  %6056 = add i32 0, %6055
  %6057 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6056
  %6058 = load float, float* %6057, align 4
  %6059 = mul i32 %6054, 2
  %6060 = add i32 1, %6059
  %6061 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6060
  %6062 = load float, float* %6061, align 4
  %6063 = fmul fast float %5947, 2.770000e+02
  %6064 = fmul fast float %6063, %6037
  %6065 = fmul fast float %5943, 5.990000e+02
  %6066 = fadd fast float %6064, %6065
  %6067 = fptoui float %6066 to i32
  %6068 = mul i32 %6067, -63
  %6069 = lshr i32 %6068, 17
  %6070 = xor i32 %6069, %6068
  %6071 = mul i32 %6070, -511
  %6072 = mul i32 %6070, -8176
  %6073 = xor i32 %6071, %6072
  %6074 = mul i32 %6073, -7
  %6075 = mul i32 %6073, -7168
  %6076 = xor i32 %6074, %6075
  %6077 = lshr i32 %6076, 15
  %6078 = xor i32 %6077, %6074
  %6079 = and i32 %6078, 63
  %6080 = mul i32 %6079, 2
  %6081 = add i32 0, %6080
  %6082 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6081
  %6083 = load float, float* %6082, align 4
  %6084 = mul i32 %6079, 2
  %6085 = add i32 1, %6084
  %6086 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6085
  %6087 = load float, float* %6086, align 4
  %6088 = call float @dx.op.dot2.f32(i32 54, float %6058, float %6062, float %6083, float %6087)  ; Dot2(ax,ay,bx,by)
  %6089 = fsub fast float -0.000000e+00, %6083
  %6090 = call float @dx.op.dot2.f32(i32 54, float %6058, float %6062, float %6089, float %6087)  ; Dot2(ax,ay,bx,by)
  %6091 = fmul fast float %6088, %6033
  %6092 = fmul fast float %6090, %6033
  %6093 = fdiv fast float 2.000000e+00, %5999
  %6094 = fmul fast float %6022, 9.765625e-04
  %6095 = fcmp fast olt float %6017, %6094
  %6096 = fcmp fast olt float %6018, %6094
  %6097 = or i1 %6095, %6096
  %6098 = fsub fast float 1.000000e+00, %6094
  %6099 = fcmp fast ogt float %6017, %6098
  %6100 = fcmp fast ogt float %6018, %6098
  %6101 = or i1 %6099, %6100
  %6102 = or i1 %6097, %6101
  %6103 = fmul fast float %6091, 2.000000e+00
  br i1 %6102, label %6104, label %6108

; <label>:6104                                    ; preds = %6032
  %6105 = fmul fast float %6092, 2.000000e+00
  %6106 = fadd fast float %6103, %6004
  %6107 = fadd fast float %6105, %6005
  br label %6108

; <label>:6108                                    ; preds = %6104, %6032
  %6109 = phi float [ %6106, %6104 ], [ %6004, %6032 ]
  %6110 = phi float [ %6107, %6104 ], [ %6005, %6032 ]
  %6111 = phi i32 [ 3, %6104 ], [ 2, %6032 ]
  %6112 = fadd fast float %6091, %6008
  %6113 = fadd fast float %6092, %6009
  %6114 = fmul fast float %6103, %6093
  %6115 = fmul fast float %6093, 2.000000e+00
  %6116 = fmul fast float %6115, %6092
  %6117 = fadd fast float %6114, %5943
  %6118 = fadd fast float %6116, %5947
  br label %6198

; <label>:6119                                    ; preds = %5959
  %6120 = call float @dx.op.unary.f32(i32 21, float %5996)  ; Exp(value)
  %6121 = fmul fast float %6120, 9.765625e-04
  %6122 = fcmp fast olt float %6017, %6121
  %6123 = fcmp fast olt float %6018, %6121
  %6124 = or i1 %6122, %6123
  %6125 = fsub fast float 1.000000e+00, %6121
  %6126 = fcmp fast ogt float %6017, %6125
  %6127 = fcmp fast ogt float %6018, %6125
  %6128 = or i1 %6126, %6127
  %6129 = or i1 %6124, %6128
  br i1 %6129, label %6130, label %6198, !dx.controlflow.hints !141

; <label>:6130                                    ; preds = %6119
  %6131 = fmul fast float %5965, 5.000000e-01
  %6132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.i32 %6132, 0
  %6134 = fmul fast float %5947, 3.530000e+02
  %6135 = uitofp i32 %6012 to float
  %6136 = fmul fast float %6134, %6135
  %6137 = fmul fast float %5943, 6.130000e+02
  %6138 = fadd fast float %6136, %6137
  %6139 = fptoui float %6138 to i32
  %6140 = add i32 %6133, %6139
  %6141 = mul i32 %6140, -63
  %6142 = lshr i32 %6141, 17
  %6143 = xor i32 %6142, %6141
  %6144 = mul i32 %6143, -511
  %6145 = mul i32 %6143, -8176
  %6146 = xor i32 %6144, %6145
  %6147 = mul i32 %6146, -7
  %6148 = mul i32 %6146, -7168
  %6149 = xor i32 %6147, %6148
  %6150 = lshr i32 %6149, 15
  %6151 = xor i32 %6150, %6147
  %6152 = and i32 %6151, 15
  %6153 = mul i32 %6152, 2
  %6154 = add i32 0, %6153
  %6155 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6154
  %6156 = load float, float* %6155, align 4
  %6157 = mul i32 %6152, 2
  %6158 = add i32 1, %6157
  %6159 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6158
  %6160 = load float, float* %6159, align 4
  %6161 = fmul fast float %5947, 2.770000e+02
  %6162 = fmul fast float %6161, %6135
  %6163 = fmul fast float %5943, 5.990000e+02
  %6164 = fadd fast float %6162, %6163
  %6165 = fptoui float %6164 to i32
  %6166 = mul i32 %6165, -63
  %6167 = lshr i32 %6166, 17
  %6168 = xor i32 %6167, %6166
  %6169 = mul i32 %6168, -511
  %6170 = mul i32 %6168, -8176
  %6171 = xor i32 %6169, %6170
  %6172 = mul i32 %6171, -7
  %6173 = mul i32 %6171, -7168
  %6174 = xor i32 %6172, %6173
  %6175 = lshr i32 %6174, 15
  %6176 = xor i32 %6175, %6172
  %6177 = and i32 %6176, 63
  %6178 = mul i32 %6177, 2
  %6179 = add i32 0, %6178
  %6180 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6179
  %6181 = load float, float* %6180, align 4
  %6182 = mul i32 %6177, 2
  %6183 = add i32 1, %6182
  %6184 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6183
  %6185 = load float, float* %6184, align 4
  %6186 = call float @dx.op.dot2.f32(i32 54, float %6156, float %6160, float %6181, float %6185)  ; Dot2(ax,ay,bx,by)
  %6187 = fsub fast float -0.000000e+00, %6181
  %6188 = call float @dx.op.dot2.f32(i32 54, float %6156, float %6160, float %6187, float %6185)  ; Dot2(ax,ay,bx,by)
  %6189 = fmul fast float %6186, %6131
  %6190 = fmul fast float %6188, %6131
  %6191 = fadd fast float %6189, %6004
  %6192 = fadd fast float %6190, %6005
  %6193 = fdiv fast float 2.000000e+00, %5999
  %6194 = fmul fast float %6193, %6189
  %6195 = fmul fast float %6190, %6193
  %6196 = fadd fast float %6194, %5943
  %6197 = fadd fast float %6195, %5947
  br label %6198

; <label>:6198                                    ; preds = %6130, %6119, %6108, %6021
  %6199 = phi float [ %6112, %6108 ], [ %6008, %6021 ], [ %6008, %6130 ], [ %6008, %6119 ]
  %6200 = phi float [ %6113, %6108 ], [ %6009, %6021 ], [ %6009, %6130 ], [ %6009, %6119 ]
  %6201 = phi float [ %6109, %6108 ], [ %6004, %6021 ], [ %6191, %6130 ], [ %6004, %6119 ]
  %6202 = phi float [ %6110, %6108 ], [ %6005, %6021 ], [ %6192, %6130 ], [ %6005, %6119 ]
  %6203 = phi i32 [ %6111, %6108 ], [ 0, %6021 ], [ 1, %6130 ], [ 0, %6119 ]
  %6204 = phi float [ %6117, %6108 ], [ %5943, %6021 ], [ %6196, %6130 ], [ %5943, %6119 ]
  %6205 = phi float [ %6118, %6108 ], [ %5947, %6021 ], [ %6197, %6130 ], [ %5947, %6119 ]
  %6206 = fsub fast float %5970, %5968
  %6207 = fptoui float %6206 to i32
  %6208 = add i32 %6207, 320
  %6209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %6208)  ; CBufferLoadLegacy(handle,regIndex)
  %6210 = extractvalue %dx.types.CBufRet.f32 %6209, 0
  %6211 = extractvalue %dx.types.CBufRet.f32 %6209, 1
  %6212 = fcmp fast une float %5995, %5970
  %6213 = fsub fast float %6204, %6210
  %6214 = fsub fast float %6205, %6211
  %6215 = call float @dx.op.unary.f32(i32 6, float %6213)  ; FAbs(value)
  %6216 = call float @dx.op.unary.f32(i32 6, float %6214)  ; FAbs(value)
  %6217 = fmul fast float %6215, %5999
  %6218 = fmul fast float %6216, %5999
  %6219 = fcmp fast olt float %6217, 1.000000e+00
  %6220 = fcmp fast olt float %6218, 1.000000e+00
  %6221 = and i1 %6219, %6220
  %6222 = or i1 %6212, %6221
  br i1 %6222, label %6223, label %6591, !dx.controlflow.hints !142

; <label>:6223                                    ; preds = %6198
  %6224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.i32 %6224, 2
  %6226 = sitofp i32 %6225 to float
  %6227 = fsub fast float %5995, %6226
  %6228 = call float @dx.op.unary.f32(i32 27, float %6227)  ; Round_ni(value)
  %6229 = call float @dx.op.unary.f32(i32 22, float %5995)  ; Frc(value)
  %6230 = icmp eq i32 %6203, 0
  %6231 = call float @dx.op.unary.f32(i32 22, float %6201)  ; Frc(value)
  %6232 = call float @dx.op.unary.f32(i32 22, float %6202)  ; Frc(value)
  br i1 %6230, label %6303, label %6233, !dx.controlflow.hints !143

; <label>:6233                                    ; preds = %6223
  %6234 = and i32 %6203, 1
  %6235 = icmp eq i32 %6234, 0
  br i1 %6235, label %6249, label %6236, !dx.controlflow.hints !144

; <label>:6236                                    ; preds = %6233
  %6237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6238 = extractvalue %dx.types.CBufRet.f32 %6237, 0
  %6239 = fmul fast float %6231, %6238
  %6240 = fmul fast float %6232, %6238
  %6241 = fptoui float %6239 to i32
  %6242 = fptoui float %6240 to i32
  %6243 = fptoui float %6228 to i32
  %6244 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %6241, i32 %6242, i32 %6243, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6245 = extractvalue %dx.types.ResRet.f32 %6244, 0
  %6246 = extractvalue %dx.types.ResRet.f32 %6244, 1
  %6247 = extractvalue %dx.types.ResRet.f32 %6244, 2
  %6248 = extractvalue %dx.types.ResRet.f32 %6244, 3
  br label %6255

; <label>:6249                                    ; preds = %6233
  %6250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %62, float %6231, float %6232, float %6228, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6251 = extractvalue %dx.types.ResRet.f32 %6250, 0
  %6252 = extractvalue %dx.types.ResRet.f32 %6250, 1
  %6253 = extractvalue %dx.types.ResRet.f32 %6250, 2
  %6254 = extractvalue %dx.types.ResRet.f32 %6250, 3
  br label %6255

; <label>:6255                                    ; preds = %6249, %6236
  %6256 = phi float [ %6245, %6236 ], [ %6251, %6249 ]
  %6257 = phi float [ %6246, %6236 ], [ %6252, %6249 ]
  %6258 = phi float [ %6247, %6236 ], [ %6253, %6249 ]
  %6259 = phi float [ %6248, %6236 ], [ %6254, %6249 ]
  %6260 = fcmp fast ogt float %6229, 0.000000e+00
  br i1 %6260, label %6261, label %6331

; <label>:6261                                    ; preds = %6255
  %6262 = and i32 %6203, 2
  %6263 = icmp eq i32 %6262, 0
  %6264 = fadd fast float %6228, 1.000000e+00
  %6265 = call float @dx.op.unary.f32(i32 22, float %6199)  ; Frc(value)
  %6266 = call float @dx.op.unary.f32(i32 22, float %6200)  ; Frc(value)
  br i1 %6263, label %6280, label %6267, !dx.controlflow.hints !145

; <label>:6267                                    ; preds = %6261
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 0
  %6270 = fmul fast float %6265, %6269
  %6271 = fmul fast float %6266, %6269
  %6272 = fptoui float %6270 to i32
  %6273 = fptoui float %6271 to i32
  %6274 = fptoui float %6264 to i32
  %6275 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %6272, i32 %6273, i32 %6274, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6276 = extractvalue %dx.types.ResRet.f32 %6275, 0
  %6277 = extractvalue %dx.types.ResRet.f32 %6275, 1
  %6278 = extractvalue %dx.types.ResRet.f32 %6275, 2
  %6279 = extractvalue %dx.types.ResRet.f32 %6275, 3
  br label %6286

; <label>:6280                                    ; preds = %6261
  %6281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %62, float %6265, float %6266, float %6264, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6282 = extractvalue %dx.types.ResRet.f32 %6281, 0
  %6283 = extractvalue %dx.types.ResRet.f32 %6281, 1
  %6284 = extractvalue %dx.types.ResRet.f32 %6281, 2
  %6285 = extractvalue %dx.types.ResRet.f32 %6281, 3
  br label %6286

; <label>:6286                                    ; preds = %6280, %6267
  %6287 = phi float [ %6276, %6267 ], [ %6282, %6280 ]
  %6288 = phi float [ %6277, %6267 ], [ %6283, %6280 ]
  %6289 = phi float [ %6278, %6267 ], [ %6284, %6280 ]
  %6290 = phi float [ %6279, %6267 ], [ %6285, %6280 ]
  %6291 = fsub fast float %6287, %6256
  %6292 = fsub fast float %6288, %6257
  %6293 = fsub fast float %6289, %6258
  %6294 = fsub fast float %6290, %6259
  %6295 = fmul fast float %6291, %6229
  %6296 = fmul fast float %6292, %6229
  %6297 = fmul fast float %6293, %6229
  %6298 = fmul fast float %6294, %6229
  %6299 = fadd fast float %6295, %6256
  %6300 = fadd fast float %6296, %6257
  %6301 = fadd fast float %6297, %6258
  %6302 = fadd fast float %6298, %6259
  br label %6331

; <label>:6303                                    ; preds = %6223
  %6304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %62, float %6231, float %6232, float %6228, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6305 = extractvalue %dx.types.ResRet.f32 %6304, 0
  %6306 = extractvalue %dx.types.ResRet.f32 %6304, 1
  %6307 = extractvalue %dx.types.ResRet.f32 %6304, 2
  %6308 = extractvalue %dx.types.ResRet.f32 %6304, 3
  %6309 = fcmp fast ogt float %6229, 0.000000e+00
  br i1 %6309, label %6310, label %6331, !dx.controlflow.hints !146

; <label>:6310                                    ; preds = %6303
  %6311 = fadd fast float %6228, 1.000000e+00
  %6312 = call float @dx.op.unary.f32(i32 22, float %6199)  ; Frc(value)
  %6313 = call float @dx.op.unary.f32(i32 22, float %6200)  ; Frc(value)
  %6314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %62, float %6312, float %6313, float %6311, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6315 = extractvalue %dx.types.ResRet.f32 %6314, 0
  %6316 = extractvalue %dx.types.ResRet.f32 %6314, 1
  %6317 = extractvalue %dx.types.ResRet.f32 %6314, 2
  %6318 = extractvalue %dx.types.ResRet.f32 %6314, 3
  %6319 = fsub fast float %6315, %6305
  %6320 = fsub fast float %6316, %6306
  %6321 = fsub fast float %6317, %6307
  %6322 = fsub fast float %6318, %6308
  %6323 = fmul fast float %6319, %6229
  %6324 = fmul fast float %6320, %6229
  %6325 = fmul fast float %6321, %6229
  %6326 = fmul fast float %6322, %6229
  %6327 = fadd fast float %6323, %6305
  %6328 = fadd fast float %6324, %6306
  %6329 = fadd fast float %6325, %6307
  %6330 = fadd fast float %6326, %6308
  br label %6331

; <label>:6331                                    ; preds = %6310, %6303, %6286, %6255
  %6332 = phi float [ %6299, %6286 ], [ %6256, %6255 ], [ %6327, %6310 ], [ %6305, %6303 ]
  %6333 = phi float [ %6300, %6286 ], [ %6257, %6255 ], [ %6328, %6310 ], [ %6306, %6303 ]
  %6334 = phi float [ %6301, %6286 ], [ %6258, %6255 ], [ %6329, %6310 ], [ %6307, %6303 ]
  %6335 = phi float [ %6302, %6286 ], [ %6259, %6255 ], [ %6330, %6310 ], [ %6308, %6303 ]
  %6336 = fadd fast float %6332, -5.000000e-01
  %6337 = fadd fast float %6334, -5.000000e-01
  %6338 = fmul fast float %6336, 0xBFD5555560000000
  %6339 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6337, float %6338)  ; FMad(a,b,c)
  %6340 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6333, float 0.000000e+00)  ; FMad(a,b,c)
  %6341 = fadd fast float %6340, %6335
  %6342 = fmul fast float %6336, -7.500000e-01
  %6343 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6337, float %6342)  ; FMad(a,b,c)
  %6344 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6333, float 0.000000e+00)  ; FMad(a,b,c)
  %6345 = fadd fast float %6344, %6335
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 0
  %6350 = extractvalue %dx.types.CBufRet.f32 %6348, 1
  %6351 = extractvalue %dx.types.CBufRet.f32 %6348, 2
  %6352 = extractvalue %dx.types.CBufRet.f32 %6348, 3
  %6353 = fsub fast float %6349, %6339
  %6354 = fsub fast float %6350, %6341
  %6355 = fsub fast float %6351, %6343
  %6356 = fsub fast float %6352, %6345
  %6357 = fmul fast float %6353, %6347
  %6358 = fmul fast float %6354, %6347
  %6359 = fmul fast float %6355, %6347
  %6360 = fmul fast float %6356, %6347
  %6361 = fadd fast float %6357, %6339
  %6362 = fadd fast float %6358, %6341
  %6363 = fadd fast float %6359, %6343
  %6364 = fadd fast float %6360, %6345
  %6365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6366 = extractvalue %dx.types.ResRet.i32 %6365, 0
  %6367 = and i32 %6366, 536870911
  %6368 = uitofp i32 %6367 to float
  %6369 = fmul fast float %6368, %6204
  %6370 = fmul fast float %6368, %6205
  %6371 = fptoui float %6369 to i32
  %6372 = fptoui float %6370 to i32
  %6373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6374 = extractvalue %dx.types.ResRet.i32 %6373, 0
  %6375 = and i32 %6374, 31
  %6376 = lshr i32 %6371, %6375
  %6377 = lshr i32 %6372, %6375
  %6378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6379 = extractvalue %dx.types.ResRet.i32 %6378, 0
  %6380 = and i32 %6379, 31
  %6381 = shl i32 1, %6380
  %6382 = call i32 @dx.op.binary.i32(i32 40, i32 %6381, i32 4)  ; UMin(a,b)
  %6383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6384 = extractvalue %dx.types.ResRet.i32 %6383, 0
  %6385 = extractvalue %dx.types.ResRet.i32 %6383, 1
  %6386 = icmp eq i32 %6382, 0
  br i1 %6386, label %6428, label %6387

; <label>:6387                                    ; preds = %6331
  br label %6388

; <label>:6388                                    ; preds = %6416, %6387
  %6389 = phi i32 [ %6419, %6416 ], [ 0, %6387 ]
  %6390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6391 = extractvalue %dx.types.ResRet.i32 %6390, 0
  %6392 = lshr i32 %6391, 16
  %6393 = and i32 %6392, 31
  %6394 = shl i32 %6377, %6393
  %6395 = add i32 %6394, %6376
  %6396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6397 = extractvalue %dx.types.ResRet.i32 %6396, 0
  %6398 = and i32 %6397, 31
  %6399 = shl i32 %6395, %6398
  %6400 = add i32 %6399, %6389
  %6401 = shl i32 %6400, 2
  %6402 = add i32 %6401, 32
  %6403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6402, i32 undef)  ; BufferLoad(srv,index,wot)
  %6404 = extractvalue %dx.types.ResRet.i32 %6403, 0
  %6405 = icmp slt i32 %6404, 0
  %6406 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6389
  %6407 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6389
  %6408 = bitcast float* %6406 to i32*
  %6409 = bitcast float* %6407 to i32*
  br i1 %6405, label %6410, label %6416

; <label>:6410                                    ; preds = %6388
  %6411 = and i32 %6404, 1073741823
  %6412 = add nuw nsw i32 %6411, 20
  %6413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6412, i32 undef)  ; BufferLoad(srv,index,wot)
  %6414 = extractvalue %dx.types.ResRet.i32 %6413, 0
  %6415 = extractvalue %dx.types.ResRet.i32 %6413, 1
  br label %6416

; <label>:6416                                    ; preds = %6410, %6388
  %6417 = phi i32 [ %6414, %6410 ], [ %6384, %6388 ]
  %6418 = phi i32 [ %6415, %6410 ], [ %6385, %6388 ]
  store i32 %6417, i32* %6408, align 4
  store i32 %6418, i32* %6409, align 4
  %6419 = add nuw i32 %6389, 1
  %6420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.i32 %6420, 2
  %6422 = icmp eq i32 %6421, 0
  %6423 = icmp ugt i32 %6404, -1073741825
  %6424 = and i1 %6423, %6422
  %6425 = icmp ult i32 %6419, %6382
  %6426 = and i1 %6424, %6425
  br i1 %6426, label %6388, label %6427

; <label>:6427                                    ; preds = %6416
  br label %6428

; <label>:6428                                    ; preds = %6427, %6331
  %6429 = phi i32 [ 0, %6331 ], [ %6419, %6427 ]
  %6430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6430, 2
  %6432 = fptoui float %6431 to i32
  %6433 = icmp eq i32 %6432, 0
  br i1 %6433, label %6485, label %6434

; <label>:6434                                    ; preds = %6428
  br label %6435

; <label>:6435                                    ; preds = %6480, %6434
  %6436 = phi i32 [ %6481, %6480 ], [ %6429, %6434 ]
  %6437 = phi i32 [ %6482, %6480 ], [ 0, %6434 ]
  %6438 = lshr i32 %6437, 2
  %6439 = and i32 %6437, 3
  %6440 = add nuw nsw i32 %6438, 83
  %6441 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 %6440)  ; CBufferLoadLegacy(handle,regIndex)
  %6442 = extractvalue %dx.types.CBufRet.i32 %6441, 0
  %6443 = extractvalue %dx.types.CBufRet.i32 %6441, 1
  %6444 = extractvalue %dx.types.CBufRet.i32 %6441, 2
  %6445 = extractvalue %dx.types.CBufRet.i32 %6441, 3
  %6446 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %6442, i32* %6446, align 4
  %6447 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %6443, i32* %6447, align 4
  %6448 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %6444, i32* %6448, align 4
  %6449 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %6445, i32* %6449, align 4
  %6450 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %6439
  %6451 = load i32, i32* %6450, align 4, !tbaa !147, !noalias !149
  %6452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6453 = extractvalue %dx.types.ResRet.i32 %6452, 0
  %6454 = lshr i32 %6453, 16
  %6455 = and i32 %6454, 31
  %6456 = shl i32 %6377, %6455
  %6457 = add i32 %6456, %6376
  %6458 = shl i32 %6457, 2
  %6459 = add i32 %6458, %6451
  %6460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6459, i32 undef)  ; BufferLoad(srv,index,wot)
  %6461 = extractvalue %dx.types.ResRet.i32 %6460, 0
  %6462 = icmp eq i32 %6461, 0
  br i1 %6462, label %6480, label %6463

; <label>:6463                                    ; preds = %6435
  %6464 = icmp slt i32 %6461, 0
  %6465 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6436
  %6466 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6436
  %6467 = bitcast float* %6465 to i32*
  %6468 = bitcast float* %6466 to i32*
  br i1 %6464, label %6469, label %6476

; <label>:6469                                    ; preds = %6463
  %6470 = and i32 %6461, 1073741823
  %6471 = add i32 %6451, 20
  %6472 = add i32 %6471, %6470
  %6473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6472, i32 undef)  ; BufferLoad(srv,index,wot)
  %6474 = extractvalue %dx.types.ResRet.i32 %6473, 0
  %6475 = extractvalue %dx.types.ResRet.i32 %6473, 1
  br label %6476

; <label>:6476                                    ; preds = %6469, %6463
  %6477 = phi i32 [ %6474, %6469 ], [ %6384, %6463 ]
  %6478 = phi i32 [ %6475, %6469 ], [ %6385, %6463 ]
  store i32 %6477, i32* %6467, align 4
  store i32 %6478, i32* %6468, align 4
  %6479 = add i32 %6436, 1
  br label %6480

; <label>:6480                                    ; preds = %6476, %6435
  %6481 = phi i32 [ %6436, %6435 ], [ %6479, %6476 ]
  %6482 = add nuw i32 %6437, 1
  %6483 = icmp eq i32 %6482, %6432
  br i1 %6483, label %6484, label %6435

; <label>:6484                                    ; preds = %6480
  br label %6485

; <label>:6485                                    ; preds = %6484, %6428
  %6486 = phi i32 [ %6429, %6428 ], [ %6481, %6484 ]
  %6487 = icmp eq i32 %6486, 1
  %6488 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  %6489 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  br i1 %6487, label %6490, label %6493

; <label>:6490                                    ; preds = %6485
  %6491 = load float, float* %6488, align 4
  %6492 = load float, float* %6489, align 4
  br label %6520

; <label>:6493                                    ; preds = %6485
  %6494 = load float, float* %6488, align 4
  %6495 = load float, float* %6489, align 4
  %6496 = fdiv fast float 1.000000e+00, %6495
  %6497 = fsub fast float %6494, %6496
  %6498 = icmp ugt i32 %6486, 1
  br i1 %6498, label %6499, label %6515

; <label>:6499                                    ; preds = %6493
  br label %6500

; <label>:6500                                    ; preds = %6500, %6499
  %6501 = phi float [ %6510, %6500 ], [ %6497, %6499 ]
  %6502 = phi float [ %6511, %6500 ], [ %6494, %6499 ]
  %6503 = phi i32 [ %6512, %6500 ], [ 1, %6499 ]
  %6504 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6503
  %6505 = load float, float* %6504, align 4
  %6506 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6503
  %6507 = load float, float* %6506, align 4
  %6508 = fdiv fast float 1.000000e+00, %6507
  %6509 = fsub fast float %6505, %6508
  %6510 = call float @dx.op.binary.f32(i32 36, float %6501, float %6509)  ; FMin(a,b)
  %6511 = call float @dx.op.binary.f32(i32 35, float %6502, float %6505)  ; FMax(a,b)
  %6512 = add nuw i32 %6503, 1
  %6513 = icmp eq i32 %6512, %6486
  br i1 %6513, label %6514, label %6500

; <label>:6514                                    ; preds = %6500
  br label %6515

; <label>:6515                                    ; preds = %6514, %6493
  %6516 = phi float [ %6497, %6493 ], [ %6510, %6514 ]
  %6517 = phi float [ %6494, %6493 ], [ %6511, %6514 ]
  %6518 = fsub fast float %6517, %6516
  %6519 = fdiv fast float 1.000000e+00, %6518
  br label %6520

; <label>:6520                                    ; preds = %6515, %6490
  %6521 = phi float [ %6491, %6490 ], [ %6517, %6515 ]
  %6522 = phi float [ %6492, %6490 ], [ %6519, %6515 ]
  %6523 = fadd fast float %5951, %6521
  %6524 = fmul fast float %6523, %6522
  %6525 = call float @dx.op.unary.f32(i32 7, float %6524)  ; Saturate(value)
  %6526 = fmul fast float %6525, 2.000000e+00
  %6527 = fsub fast float 1.000000e+00, %6526
  %6528 = fmul fast float %6361, %6361
  %6529 = fsub fast float %6362, %6528
  %6530 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6529)  ; FMax(a,b)
  %6531 = fdiv fast float 1.000000e+00, %6530
  %6532 = fmul fast float %6362, %6361
  %6533 = fsub fast float %6363, %6532
  %6534 = fsub fast float %6527, %6361
  %6535 = fmul fast float %6527, %6527
  %6536 = fsub fast float %6535, %6362
  %6537 = fmul fast float %6531, %6533
  %6538 = fmul fast float %6537, %6534
  %6539 = fsub fast float %6536, %6538
  %6540 = fmul fast float %6362, %6362
  %6541 = fsub fast float %6364, %6540
  %6542 = fmul fast float %6533, %6533
  %6543 = fmul fast float %6542, %6531
  %6544 = fsub fast float %6541, %6543
  %6545 = fdiv fast float %6539, %6544
  %6546 = fmul fast float %6545, %6533
  %6547 = fsub fast float %6534, %6546
  %6548 = fmul fast float %6547, %6531
  %6549 = fmul fast float %6548, %6361
  %6550 = fsub fast float 1.000000e+00, %6549
  %6551 = fmul fast float %6545, %6362
  %6552 = fsub fast float %6550, %6551
  %6553 = fmul fast float %6548, %6548
  %6554 = fmul fast float %6545, 4.000000e+00
  %6555 = fmul fast float %6554, %6552
  %6556 = fsub fast float %6553, %6555
  %6557 = call float @dx.op.unary.f32(i32 24, float %6556)  ; Sqrt(value)
  %6558 = fcmp fast oge float %6548, 0.000000e+00
  %6559 = fsub fast float -0.000000e+00, %6557
  %6560 = select i1 %6558, float %6559, float %6557
  %6561 = fsub fast float %6560, %6548
  %6562 = fdiv fast float %6561, %6545
  %6563 = fdiv fast float %6552, %6561
  %6564 = fmul fast float %6562, 5.000000e-01
  %6565 = fmul fast float %6563, 2.000000e+00
  %6566 = select i1 %6558, float %6564, float %6565
  %6567 = select i1 %6558, float %6565, float %6564
  %6568 = call float @dx.op.binary.f32(i32 35, float %6566, float %6567)  ; FMax(a,b)
  %6569 = call float @dx.op.binary.f32(i32 36, float %6566, float %6567)  ; FMin(a,b)
  %6570 = fcmp fast ogt float %6527, %6568
  %6571 = fsub fast float %6527, %6569
  %6572 = fsub fast float %6527, %6568
  %6573 = fsub fast float %6568, %6569
  %6574 = select i1 %6570, float %6572, float %6573
  %6575 = fmul float %6571, %6574
  %6576 = select i1 %6570, float %6569, float %6527
  %6577 = fcmp fast ogt float %6527, %6569
  %6578 = fmul fast float %6576, %6568
  %6579 = fadd fast float %6576, %6568
  %6580 = fmul fast float %6579, %6361
  %6581 = fadd fast float %6578, %6362
  %6582 = fsub fast float %6581, %6580
  %6583 = fdiv fast float %6582, %6575
  %6584 = select i1 %6577, float %6583, float 0.000000e+00
  %6585 = fsub fast float 1.000000e+00, %6584
  %6586 = select i1 %6570, float %6585, float %6584
  %6587 = call float @dx.op.unary.f32(i32 7, float %6586)  ; Saturate(value)
  %6588 = extractvalue %dx.types.CBufRet.f32 %6346, 3
  %6589 = fmul fast float %6588, %6587
  %6590 = fsub fast float 1.000000e+00, %6589
  br label %6591

; <label>:6591                                    ; preds = %6520, %6198, %5924, %5920, %5890
  %6592 = phi float [ 1.000000e+00, %5890 ], [ %6590, %6520 ], [ 1.000000e+00, %5924 ], [ 1.000000e+00, %6198 ], [ 1.000000e+00, %5920 ]
  %6593 = fcmp fast ogt float %5916, 0.000000e+00
  br i1 %6593, label %6594, label %6758, !dx.controlflow.hints !154

; <label>:6594                                    ; preds = %6591
  %6595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.f32 %6595, 2
  %6597 = fadd fast float %6596, %5836
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 2
  %6600 = extractvalue %dx.types.CBufRet.f32 %6598, 3
  %6601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6602 = extractvalue %dx.types.CBufRet.f32 %6601, 2
  %6603 = call float @dx.op.binary.f32(i32 35, float %6597, float 0.000000e+00)  ; FMax(a,b)
  %6604 = fadd fast float %6603, 0x3F10000000000000
  %6605 = fcmp fast oeq float %6602, 0.000000e+00
  br i1 %6605, label %6606, label %6673

; <label>:6606                                    ; preds = %6594
  %6607 = extractvalue %dx.types.CBufRet.f32 %6598, 1
  %6608 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  %6609 = fmul fast float %6608, %5724
  %6610 = fmul fast float %6607, %5725
  %6611 = fadd fast float %6609, 5.000000e-01
  %6612 = call float @dx.op.unary.f32(i32 27, float %6611)  ; Round_ni(value)
  %6613 = fadd fast float %6610, 5.000000e-01
  %6614 = call float @dx.op.unary.f32(i32 27, float %6613)  ; Round_ni(value)
  %6615 = fsub fast float %6611, %6612
  %6616 = fsub fast float %6613, %6614
  %6617 = fadd fast float %6612, -5.000000e-01
  %6618 = fadd fast float %6614, -5.000000e-01
  %6619 = fmul fast float %6615, 2.000000e+00
  %6620 = fsub fast float 3.000000e+00, %6619
  %6621 = fadd fast float %6619, 1.000000e+00
  %6622 = fsub fast float 2.000000e+00, %6615
  %6623 = bitcast float %6620 to i32
  %6624 = sub nsw i32 2129859010, %6623
  %6625 = bitcast i32 %6624 to float
  %6626 = fmul fast float %6625, %6622
  %6627 = fadd fast float %6626, -1.000000e+00
  %6628 = bitcast float %6621 to i32
  %6629 = sub nsw i32 2129859010, %6628
  %6630 = bitcast i32 %6629 to float
  %6631 = fmul fast float %6630, %6615
  %6632 = fadd fast float %6631, 1.000000e+00
  %6633 = fmul fast float %6616, 2.000000e+00
  %6634 = fsub fast float 3.000000e+00, %6633
  %6635 = fadd fast float %6633, 1.000000e+00
  %6636 = fsub fast float 2.000000e+00, %6616
  %6637 = bitcast float %6634 to i32
  %6638 = sub nsw i32 2129859010, %6637
  %6639 = bitcast i32 %6638 to float
  %6640 = fmul fast float %6639, %6636
  %6641 = fadd fast float %6640, -1.000000e+00
  %6642 = bitcast float %6635 to i32
  %6643 = sub nsw i32 2129859010, %6642
  %6644 = bitcast i32 %6643 to float
  %6645 = fmul fast float %6644, %6616
  %6646 = fadd fast float %6645, 1.000000e+00
  %6647 = fadd fast float %6627, %6617
  %6648 = fmul fast float %6647, %6599
  %6649 = fadd fast float %6641, %6618
  %6650 = fmul fast float %6649, %6600
  %6651 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %6648, float %6650, float undef, float undef, i32 0, i32 0, i32 undef, float %6604)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6652 = extractvalue %dx.types.ResRet.f32 %6651, 0
  %6653 = fmul fast float %6652, %6620
  %6654 = fadd fast float %6632, %6617
  %6655 = fmul fast float %6654, %6599
  %6656 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %6655, float %6650, float undef, float undef, i32 0, i32 0, i32 undef, float %6604)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6657 = extractvalue %dx.types.ResRet.f32 %6656, 0
  %6658 = fmul fast float %6657, %6621
  %6659 = fadd fast float %6646, %6618
  %6660 = fmul fast float %6659, %6600
  %6661 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %6648, float %6660, float undef, float undef, i32 0, i32 0, i32 undef, float %6604)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6662 = extractvalue %dx.types.ResRet.f32 %6661, 0
  %6663 = fmul fast float %6662, %6620
  %6664 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %6655, float %6660, float undef, float undef, i32 0, i32 0, i32 undef, float %6604)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 0
  %6666 = fmul fast float %6665, %6621
  %6667 = fadd fast float %6666, %6663
  %6668 = fmul fast float %6667, %6635
  %6669 = fadd fast float %6658, %6653
  %6670 = fmul fast float %6669, %6634
  %6671 = fadd fast float %6670, %6668
  %6672 = fmul fast float %6671, 6.250000e-02
  br label %6758

; <label>:6673                                    ; preds = %6594
  %6674 = fmul fast float %2044, 0x401921FB60000000
  %6675 = call float @dx.op.unary.f32(i32 13, float %6674)  ; Sin(value)
  %6676 = call float @dx.op.unary.f32(i32 12, float %6674)  ; Cos(value)
  %6677 = fsub fast float -0.000000e+00, %6675
  br label %6678

; <label>:6678                                    ; preds = %6727, %6673
  %6679 = phi float [ 0.000000e+00, %6673 ], [ %6722, %6727 ]
  %6680 = phi float [ 0.000000e+00, %6673 ], [ %6724, %6727 ]
  %6681 = phi i32 [ 0, %6673 ], [ %6728, %6727 ]
  %6682 = mul i32 %6681, 2
  %6683 = add i32 0, %6682
  %6684 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6683
  %6685 = load float, float* %6684, align 4
  %6686 = mul i32 %6681, 2
  %6687 = add i32 1, %6686
  %6688 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6687
  %6689 = load float, float* %6688, align 4
  %6690 = fmul fast float %6685, %6676
  %6691 = call float @dx.op.tertiary.f32(i32 46, float %6689, float %6677, float %6690)  ; FMad(a,b,c)
  %6692 = fmul fast float %6685, %6675
  %6693 = call float @dx.op.tertiary.f32(i32 46, float %6689, float %6676, float %6692)  ; FMad(a,b,c)
  %6694 = fmul fast float %6691, %6602
  %6695 = fmul fast float %6693, %6602
  %6696 = fadd fast float %6694, %5724
  %6697 = fadd fast float %6695, %5725
  %6698 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %64, float %6696, float %6697, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6699 = extractvalue %dx.types.ResRet.f32 %6698, 0
  %6700 = extractvalue %dx.types.ResRet.f32 %6698, 1
  %6701 = extractvalue %dx.types.ResRet.f32 %6698, 2
  %6702 = extractvalue %dx.types.ResRet.f32 %6698, 3
  %6703 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %6699, float* %6703, align 4
  %6704 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %6700, float* %6704, align 4
  %6705 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %6701, float* %6705, align 4
  %6706 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %6702, float* %6706, align 4
  %6707 = fsub fast float %6699, %6604
  %6708 = fcmp fast olt float %6707, 0.000000e+00
  %6709 = select i1 %6708, float 0.000000e+00, float 1.000000e+00
  %6710 = fadd fast float %6709, %6679
  %6711 = fmul fast float %6709, %6707
  %6712 = fadd fast float %6711, %6680
  br label %6713

; <label>:6713                                    ; preds = %6713, %6678
  %6714 = phi i32 [ 1, %6678 ], [ %6725, %6713 ]
  %6715 = phi float [ %6712, %6678 ], [ %6724, %6713 ]
  %6716 = phi float [ %6710, %6678 ], [ %6722, %6713 ]
  %6717 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %6714
  %6718 = load float, float* %6717, align 4, !tbaa !109, !noalias !155
  %6719 = fsub fast float %6718, %6604
  %6720 = fcmp fast olt float %6719, 0.000000e+00
  %6721 = select i1 %6720, float 0.000000e+00, float 1.000000e+00
  %6722 = fadd fast float %6721, %6716
  %6723 = fmul fast float %6721, %6719
  %6724 = fadd fast float %6723, %6715
  %6725 = add nuw nsw i32 %6714, 1
  %6726 = icmp eq i32 %6725, 4
  br i1 %6726, label %6727, label %6713, !llvm.loop !160

; <label>:6727                                    ; preds = %6713
  %6728 = add nuw nsw i32 %6681, 1
  %6729 = icmp eq i32 %6728, 8
  br i1 %6729, label %6730, label %6678, !llvm.loop !161

; <label>:6730                                    ; preds = %6727
  %6731 = fdiv fast float 1.000000e+00, %6722
  %6732 = fmul fast float %6731, %6724
  %6733 = fdiv fast float 1.000000e+00, %6604
  %6734 = fmul fast float %6732, %6733
  %6735 = call float @dx.op.unary.f32(i32 7, float %6734)  ; Saturate(value)
  %6736 = call float @dx.op.binary.f32(i32 35, float %6735, float 0.000000e+00)  ; FMax(a,b)
  %6737 = fmul fast float %6722, 3.125000e-02
  %6738 = call float @dx.op.unary.f32(i32 7, float %6737)  ; Saturate(value)
  %6739 = fmul fast float %6738, 2.000000e+00
  %6740 = fadd fast float %6739, -1.000000e+00
  %6741 = fcmp fast ogt float %6740, 0.000000e+00
  %6742 = fcmp fast olt float %6740, 0.000000e+00
  %6743 = zext i1 %6741 to i32
  %6744 = zext i1 %6742 to i32
  %6745 = sub nsw i32 %6743, %6744
  %6746 = sitofp i32 %6745 to float
  %6747 = fmul fast float %6746, %6740
  %6748 = fsub fast float 1.000000e+00, %6747
  %6749 = fmul fast float %6748, %6748
  %6750 = fmul fast float %6749, %6748
  %6751 = fsub fast float %6748, %6750
  %6752 = fmul fast float %6751, %6736
  %6753 = fsub fast float 1.000000e+00, %6750
  %6754 = fsub fast float %6753, %6752
  %6755 = fmul fast float %6746, 5.000000e-01
  %6756 = fmul fast float %6755, %6754
  %6757 = fsub fast float 5.000000e-01, %6756
  br label %6758

; <label>:6758                                    ; preds = %6730, %6606, %6591
  %6759 = phi float [ 1.000000e+00, %6591 ], [ %6672, %6606 ], [ %6757, %6730 ]
  %6760 = fcmp fast ogt float %5914, 0.000000e+00
  br i1 %6760, label %6761, label %6925, !dx.controlflow.hints !162

; <label>:6761                                    ; preds = %6758
  %6762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6763 = extractvalue %dx.types.CBufRet.f32 %6762, 1
  %6764 = fadd fast float %6763, %5836
  %6765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6765, 2
  %6767 = extractvalue %dx.types.CBufRet.f32 %6765, 3
  %6768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6769 = extractvalue %dx.types.CBufRet.f32 %6768, 1
  %6770 = call float @dx.op.binary.f32(i32 35, float %6764, float 0.000000e+00)  ; FMax(a,b)
  %6771 = fadd fast float %6770, 0x3F10000000000000
  %6772 = fcmp fast oeq float %6769, 0.000000e+00
  br i1 %6772, label %6773, label %6840

; <label>:6773                                    ; preds = %6761
  %6774 = extractvalue %dx.types.CBufRet.f32 %6765, 1
  %6775 = extractvalue %dx.types.CBufRet.f32 %6765, 0
  %6776 = fmul fast float %6775, %5716
  %6777 = fmul fast float %6774, %5717
  %6778 = fadd fast float %6776, 5.000000e-01
  %6779 = call float @dx.op.unary.f32(i32 27, float %6778)  ; Round_ni(value)
  %6780 = fadd fast float %6777, 5.000000e-01
  %6781 = call float @dx.op.unary.f32(i32 27, float %6780)  ; Round_ni(value)
  %6782 = fsub fast float %6778, %6779
  %6783 = fsub fast float %6780, %6781
  %6784 = fadd fast float %6779, -5.000000e-01
  %6785 = fadd fast float %6781, -5.000000e-01
  %6786 = fmul fast float %6782, 2.000000e+00
  %6787 = fsub fast float 3.000000e+00, %6786
  %6788 = fadd fast float %6786, 1.000000e+00
  %6789 = fsub fast float 2.000000e+00, %6782
  %6790 = bitcast float %6787 to i32
  %6791 = sub nsw i32 2129859010, %6790
  %6792 = bitcast i32 %6791 to float
  %6793 = fmul fast float %6792, %6789
  %6794 = fadd fast float %6793, -1.000000e+00
  %6795 = bitcast float %6788 to i32
  %6796 = sub nsw i32 2129859010, %6795
  %6797 = bitcast i32 %6796 to float
  %6798 = fmul fast float %6797, %6782
  %6799 = fadd fast float %6798, 1.000000e+00
  %6800 = fmul fast float %6783, 2.000000e+00
  %6801 = fsub fast float 3.000000e+00, %6800
  %6802 = fadd fast float %6800, 1.000000e+00
  %6803 = fsub fast float 2.000000e+00, %6783
  %6804 = bitcast float %6801 to i32
  %6805 = sub nsw i32 2129859010, %6804
  %6806 = bitcast i32 %6805 to float
  %6807 = fmul fast float %6806, %6803
  %6808 = fadd fast float %6807, -1.000000e+00
  %6809 = bitcast float %6802 to i32
  %6810 = sub nsw i32 2129859010, %6809
  %6811 = bitcast i32 %6810 to float
  %6812 = fmul fast float %6811, %6783
  %6813 = fadd fast float %6812, 1.000000e+00
  %6814 = fadd fast float %6794, %6784
  %6815 = fmul fast float %6814, %6766
  %6816 = fadd fast float %6808, %6785
  %6817 = fmul fast float %6816, %6767
  %6818 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %6815, float %6817, float undef, float undef, i32 0, i32 0, i32 undef, float %6771)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6819 = extractvalue %dx.types.ResRet.f32 %6818, 0
  %6820 = fmul fast float %6819, %6787
  %6821 = fadd fast float %6799, %6784
  %6822 = fmul fast float %6821, %6766
  %6823 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %6822, float %6817, float undef, float undef, i32 0, i32 0, i32 undef, float %6771)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6824 = extractvalue %dx.types.ResRet.f32 %6823, 0
  %6825 = fmul fast float %6824, %6788
  %6826 = fadd fast float %6813, %6785
  %6827 = fmul fast float %6826, %6767
  %6828 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %6815, float %6827, float undef, float undef, i32 0, i32 0, i32 undef, float %6771)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6829 = extractvalue %dx.types.ResRet.f32 %6828, 0
  %6830 = fmul fast float %6829, %6787
  %6831 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %6822, float %6827, float undef, float undef, i32 0, i32 0, i32 undef, float %6771)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6832 = extractvalue %dx.types.ResRet.f32 %6831, 0
  %6833 = fmul fast float %6832, %6788
  %6834 = fadd fast float %6833, %6830
  %6835 = fmul fast float %6834, %6802
  %6836 = fadd fast float %6825, %6820
  %6837 = fmul fast float %6836, %6801
  %6838 = fadd fast float %6837, %6835
  %6839 = fmul fast float %6838, 6.250000e-02
  br label %6925

; <label>:6840                                    ; preds = %6761
  %6841 = fmul fast float %2044, 0x401921FB60000000
  %6842 = call float @dx.op.unary.f32(i32 13, float %6841)  ; Sin(value)
  %6843 = call float @dx.op.unary.f32(i32 12, float %6841)  ; Cos(value)
  %6844 = fsub fast float -0.000000e+00, %6842
  br label %6845

; <label>:6845                                    ; preds = %6894, %6840
  %6846 = phi float [ 0.000000e+00, %6840 ], [ %6889, %6894 ]
  %6847 = phi float [ 0.000000e+00, %6840 ], [ %6891, %6894 ]
  %6848 = phi i32 [ 0, %6840 ], [ %6895, %6894 ]
  %6849 = mul i32 %6848, 2
  %6850 = add i32 0, %6849
  %6851 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6850
  %6852 = load float, float* %6851, align 4
  %6853 = mul i32 %6848, 2
  %6854 = add i32 1, %6853
  %6855 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6854
  %6856 = load float, float* %6855, align 4
  %6857 = fmul fast float %6852, %6843
  %6858 = call float @dx.op.tertiary.f32(i32 46, float %6856, float %6844, float %6857)  ; FMad(a,b,c)
  %6859 = fmul fast float %6852, %6842
  %6860 = call float @dx.op.tertiary.f32(i32 46, float %6856, float %6843, float %6859)  ; FMad(a,b,c)
  %6861 = fmul fast float %6858, %6769
  %6862 = fmul fast float %6860, %6769
  %6863 = fadd fast float %6861, %5716
  %6864 = fadd fast float %6862, %5717
  %6865 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %64, float %6863, float %6864, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6866 = extractvalue %dx.types.ResRet.f32 %6865, 0
  %6867 = extractvalue %dx.types.ResRet.f32 %6865, 1
  %6868 = extractvalue %dx.types.ResRet.f32 %6865, 2
  %6869 = extractvalue %dx.types.ResRet.f32 %6865, 3
  %6870 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6866, float* %6870, align 4
  %6871 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6867, float* %6871, align 4
  %6872 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6868, float* %6872, align 4
  %6873 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6869, float* %6873, align 4
  %6874 = fsub fast float %6866, %6771
  %6875 = fcmp fast olt float %6874, 0.000000e+00
  %6876 = select i1 %6875, float 0.000000e+00, float 1.000000e+00
  %6877 = fadd fast float %6876, %6846
  %6878 = fmul fast float %6876, %6874
  %6879 = fadd fast float %6878, %6847
  br label %6880

; <label>:6880                                    ; preds = %6880, %6845
  %6881 = phi i32 [ 1, %6845 ], [ %6892, %6880 ]
  %6882 = phi float [ %6879, %6845 ], [ %6891, %6880 ]
  %6883 = phi float [ %6877, %6845 ], [ %6889, %6880 ]
  %6884 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6881
  %6885 = load float, float* %6884, align 4, !tbaa !109, !noalias !155
  %6886 = fsub fast float %6885, %6771
  %6887 = fcmp fast olt float %6886, 0.000000e+00
  %6888 = select i1 %6887, float 0.000000e+00, float 1.000000e+00
  %6889 = fadd fast float %6888, %6883
  %6890 = fmul fast float %6888, %6886
  %6891 = fadd fast float %6890, %6882
  %6892 = add nuw nsw i32 %6881, 1
  %6893 = icmp eq i32 %6892, 4
  br i1 %6893, label %6894, label %6880, !llvm.loop !160

; <label>:6894                                    ; preds = %6880
  %6895 = add nuw nsw i32 %6848, 1
  %6896 = icmp eq i32 %6895, 8
  br i1 %6896, label %6897, label %6845, !llvm.loop !161

; <label>:6897                                    ; preds = %6894
  %6898 = fdiv fast float 1.000000e+00, %6889
  %6899 = fmul fast float %6898, %6891
  %6900 = fdiv fast float 1.000000e+00, %6771
  %6901 = fmul fast float %6899, %6900
  %6902 = call float @dx.op.unary.f32(i32 7, float %6901)  ; Saturate(value)
  %6903 = call float @dx.op.binary.f32(i32 35, float %6902, float 0.000000e+00)  ; FMax(a,b)
  %6904 = fmul fast float %6889, 3.125000e-02
  %6905 = call float @dx.op.unary.f32(i32 7, float %6904)  ; Saturate(value)
  %6906 = fmul fast float %6905, 2.000000e+00
  %6907 = fadd fast float %6906, -1.000000e+00
  %6908 = fcmp fast ogt float %6907, 0.000000e+00
  %6909 = fcmp fast olt float %6907, 0.000000e+00
  %6910 = zext i1 %6908 to i32
  %6911 = zext i1 %6909 to i32
  %6912 = sub nsw i32 %6910, %6911
  %6913 = sitofp i32 %6912 to float
  %6914 = fmul fast float %6913, %6907
  %6915 = fsub fast float 1.000000e+00, %6914
  %6916 = fmul fast float %6915, %6915
  %6917 = fmul fast float %6916, %6915
  %6918 = fsub fast float %6915, %6917
  %6919 = fmul fast float %6918, %6903
  %6920 = fsub fast float 1.000000e+00, %6917
  %6921 = fsub fast float %6920, %6919
  %6922 = fmul fast float %6913, 5.000000e-01
  %6923 = fmul fast float %6922, %6921
  %6924 = fsub fast float 5.000000e-01, %6923
  br label %6925

; <label>:6925                                    ; preds = %6897, %6773, %6758
  %6926 = phi float [ 1.000000e+00, %6758 ], [ %6839, %6773 ], [ %6924, %6897 ]
  %6927 = fcmp fast ogt float %5913, 0.000000e+00
  br i1 %6927, label %6928, label %7092, !dx.controlflow.hints !163

; <label>:6928                                    ; preds = %6925
  %6929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6930 = extractvalue %dx.types.CBufRet.f32 %6929, 0
  %6931 = fadd fast float %6930, %5836
  %6932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6932, 2
  %6934 = extractvalue %dx.types.CBufRet.f32 %6932, 3
  %6935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6936 = extractvalue %dx.types.CBufRet.f32 %6935, 0
  %6937 = call float @dx.op.binary.f32(i32 35, float %6931, float 0.000000e+00)  ; FMax(a,b)
  %6938 = fadd fast float %6937, 0x3F10000000000000
  %6939 = fcmp fast oeq float %6936, 0.000000e+00
  br i1 %6939, label %6940, label %7007

; <label>:6940                                    ; preds = %6928
  %6941 = extractvalue %dx.types.CBufRet.f32 %6932, 1
  %6942 = extractvalue %dx.types.CBufRet.f32 %6932, 0
  %6943 = fmul fast float %6942, %5702
  %6944 = fmul fast float %6941, %5706
  %6945 = fadd fast float %6943, 5.000000e-01
  %6946 = call float @dx.op.unary.f32(i32 27, float %6945)  ; Round_ni(value)
  %6947 = fadd fast float %6944, 5.000000e-01
  %6948 = call float @dx.op.unary.f32(i32 27, float %6947)  ; Round_ni(value)
  %6949 = fsub fast float %6945, %6946
  %6950 = fsub fast float %6947, %6948
  %6951 = fadd fast float %6946, -5.000000e-01
  %6952 = fadd fast float %6948, -5.000000e-01
  %6953 = fmul fast float %6949, 2.000000e+00
  %6954 = fsub fast float 3.000000e+00, %6953
  %6955 = fadd fast float %6953, 1.000000e+00
  %6956 = fsub fast float 2.000000e+00, %6949
  %6957 = bitcast float %6954 to i32
  %6958 = sub nsw i32 2129859010, %6957
  %6959 = bitcast i32 %6958 to float
  %6960 = fmul fast float %6959, %6956
  %6961 = fadd fast float %6960, -1.000000e+00
  %6962 = bitcast float %6955 to i32
  %6963 = sub nsw i32 2129859010, %6962
  %6964 = bitcast i32 %6963 to float
  %6965 = fmul fast float %6964, %6949
  %6966 = fadd fast float %6965, 1.000000e+00
  %6967 = fmul fast float %6950, 2.000000e+00
  %6968 = fsub fast float 3.000000e+00, %6967
  %6969 = fadd fast float %6967, 1.000000e+00
  %6970 = fsub fast float 2.000000e+00, %6950
  %6971 = bitcast float %6968 to i32
  %6972 = sub nsw i32 2129859010, %6971
  %6973 = bitcast i32 %6972 to float
  %6974 = fmul fast float %6973, %6970
  %6975 = fadd fast float %6974, -1.000000e+00
  %6976 = bitcast float %6969 to i32
  %6977 = sub nsw i32 2129859010, %6976
  %6978 = bitcast i32 %6977 to float
  %6979 = fmul fast float %6978, %6950
  %6980 = fadd fast float %6979, 1.000000e+00
  %6981 = fadd fast float %6961, %6951
  %6982 = fmul fast float %6981, %6933
  %6983 = fadd fast float %6975, %6952
  %6984 = fmul fast float %6983, %6934
  %6985 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %65, float %6982, float %6984, float undef, float undef, i32 0, i32 0, i32 undef, float %6938)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6986 = extractvalue %dx.types.ResRet.f32 %6985, 0
  %6987 = fmul fast float %6986, %6954
  %6988 = fadd fast float %6966, %6951
  %6989 = fmul fast float %6988, %6933
  %6990 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %65, float %6989, float %6984, float undef, float undef, i32 0, i32 0, i32 undef, float %6938)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6991 = extractvalue %dx.types.ResRet.f32 %6990, 0
  %6992 = fmul fast float %6991, %6955
  %6993 = fadd fast float %6980, %6952
  %6994 = fmul fast float %6993, %6934
  %6995 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %65, float %6982, float %6994, float undef, float undef, i32 0, i32 0, i32 undef, float %6938)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6996 = extractvalue %dx.types.ResRet.f32 %6995, 0
  %6997 = fmul fast float %6996, %6954
  %6998 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %65, float %6989, float %6994, float undef, float undef, i32 0, i32 0, i32 undef, float %6938)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6999 = extractvalue %dx.types.ResRet.f32 %6998, 0
  %7000 = fmul fast float %6999, %6955
  %7001 = fadd fast float %7000, %6997
  %7002 = fmul fast float %7001, %6969
  %7003 = fadd fast float %6992, %6987
  %7004 = fmul fast float %7003, %6968
  %7005 = fadd fast float %7004, %7002
  %7006 = fmul fast float %7005, 6.250000e-02
  br label %7092

; <label>:7007                                    ; preds = %6928
  %7008 = fmul fast float %2044, 0x401921FB60000000
  %7009 = call float @dx.op.unary.f32(i32 13, float %7008)  ; Sin(value)
  %7010 = call float @dx.op.unary.f32(i32 12, float %7008)  ; Cos(value)
  %7011 = fsub fast float -0.000000e+00, %7009
  br label %7012

; <label>:7012                                    ; preds = %7061, %7007
  %7013 = phi float [ 0.000000e+00, %7007 ], [ %7056, %7061 ]
  %7014 = phi float [ 0.000000e+00, %7007 ], [ %7058, %7061 ]
  %7015 = phi i32 [ 0, %7007 ], [ %7062, %7061 ]
  %7016 = mul i32 %7015, 2
  %7017 = add i32 0, %7016
  %7018 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7017
  %7019 = load float, float* %7018, align 4
  %7020 = mul i32 %7015, 2
  %7021 = add i32 1, %7020
  %7022 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7021
  %7023 = load float, float* %7022, align 4
  %7024 = fmul fast float %7019, %7010
  %7025 = call float @dx.op.tertiary.f32(i32 46, float %7023, float %7011, float %7024)  ; FMad(a,b,c)
  %7026 = fmul fast float %7019, %7009
  %7027 = call float @dx.op.tertiary.f32(i32 46, float %7023, float %7010, float %7026)  ; FMad(a,b,c)
  %7028 = fmul fast float %7025, %6936
  %7029 = fmul fast float %7027, %6936
  %7030 = fadd fast float %7028, %5702
  %7031 = fadd fast float %7029, %5706
  %7032 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %64, float %7030, float %7031, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7033 = extractvalue %dx.types.ResRet.f32 %7032, 0
  %7034 = extractvalue %dx.types.ResRet.f32 %7032, 1
  %7035 = extractvalue %dx.types.ResRet.f32 %7032, 2
  %7036 = extractvalue %dx.types.ResRet.f32 %7032, 3
  %7037 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %7033, float* %7037, align 4
  %7038 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %7034, float* %7038, align 4
  %7039 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %7035, float* %7039, align 4
  %7040 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %7036, float* %7040, align 4
  %7041 = fsub fast float %7033, %6938
  %7042 = fcmp fast olt float %7041, 0.000000e+00
  %7043 = select i1 %7042, float 0.000000e+00, float 1.000000e+00
  %7044 = fadd fast float %7043, %7013
  %7045 = fmul fast float %7043, %7041
  %7046 = fadd fast float %7045, %7014
  br label %7047

; <label>:7047                                    ; preds = %7047, %7012
  %7048 = phi i32 [ 1, %7012 ], [ %7059, %7047 ]
  %7049 = phi float [ %7046, %7012 ], [ %7058, %7047 ]
  %7050 = phi float [ %7044, %7012 ], [ %7056, %7047 ]
  %7051 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %7048
  %7052 = load float, float* %7051, align 4, !tbaa !109, !noalias !155
  %7053 = fsub fast float %7052, %6938
  %7054 = fcmp fast olt float %7053, 0.000000e+00
  %7055 = select i1 %7054, float 0.000000e+00, float 1.000000e+00
  %7056 = fadd fast float %7055, %7050
  %7057 = fmul fast float %7055, %7053
  %7058 = fadd fast float %7057, %7049
  %7059 = add nuw nsw i32 %7048, 1
  %7060 = icmp eq i32 %7059, 4
  br i1 %7060, label %7061, label %7047, !llvm.loop !160

; <label>:7061                                    ; preds = %7047
  %7062 = add nuw nsw i32 %7015, 1
  %7063 = icmp eq i32 %7062, 8
  br i1 %7063, label %7064, label %7012, !llvm.loop !161

; <label>:7064                                    ; preds = %7061
  %7065 = fdiv fast float 1.000000e+00, %7056
  %7066 = fmul fast float %7065, %7058
  %7067 = fdiv fast float 1.000000e+00, %6938
  %7068 = fmul fast float %7066, %7067
  %7069 = call float @dx.op.unary.f32(i32 7, float %7068)  ; Saturate(value)
  %7070 = call float @dx.op.binary.f32(i32 35, float %7069, float 0.000000e+00)  ; FMax(a,b)
  %7071 = fmul fast float %7056, 3.125000e-02
  %7072 = call float @dx.op.unary.f32(i32 7, float %7071)  ; Saturate(value)
  %7073 = fmul fast float %7072, 2.000000e+00
  %7074 = fadd fast float %7073, -1.000000e+00
  %7075 = fcmp fast ogt float %7074, 0.000000e+00
  %7076 = fcmp fast olt float %7074, 0.000000e+00
  %7077 = zext i1 %7075 to i32
  %7078 = zext i1 %7076 to i32
  %7079 = sub nsw i32 %7077, %7078
  %7080 = sitofp i32 %7079 to float
  %7081 = fmul fast float %7080, %7074
  %7082 = fsub fast float 1.000000e+00, %7081
  %7083 = fmul fast float %7082, %7082
  %7084 = fmul fast float %7083, %7082
  %7085 = fsub fast float %7082, %7084
  %7086 = fmul fast float %7085, %7070
  %7087 = fsub fast float 1.000000e+00, %7084
  %7088 = fsub fast float %7087, %7086
  %7089 = fmul fast float %7080, 5.000000e-01
  %7090 = fmul fast float %7089, %7088
  %7091 = fsub fast float 5.000000e-01, %7090
  br label %7092

; <label>:7092                                    ; preds = %7064, %6940, %6925
  %7093 = phi float [ 1.000000e+00, %6925 ], [ %7006, %6940 ], [ %7091, %7064 ]
  %7094 = fsub fast float %6759, %6592
  %7095 = fmul fast float %7094, %5866
  %7096 = fadd fast float %7095, %6592
  %7097 = fsub fast float %6926, %7096
  %7098 = fmul fast float %7097, %5891
  %7099 = fadd fast float %7098, %7096
  %7100 = fsub fast float %7093, %7099
  %7101 = fmul fast float %7100, %5913
  %7102 = fadd fast float %7101, %7099
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 2
  %7105 = fcmp fast ogt float %7104, 0.000000e+00
  br i1 %7105, label %7106, label %7146, !dx.controlflow.hints !164

; <label>:7106                                    ; preds = %7092
  %7107 = fcmp fast ugt float %7104, 0.000000e+00
  br i1 %7107, label %7108, label %7143

; <label>:7108                                    ; preds = %7106
  %7109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7110 = extractvalue %dx.types.CBufRet.f32 %7109, 0
  %7111 = extractvalue %dx.types.CBufRet.f32 %7109, 1
  %7112 = extractvalue %dx.types.CBufRet.f32 %7109, 2
  %7113 = extractvalue %dx.types.CBufRet.f32 %7109, 3
  %7114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7115 = extractvalue %dx.types.CBufRet.f32 %7114, 0
  %7116 = extractvalue %dx.types.CBufRet.f32 %7114, 1
  %7117 = extractvalue %dx.types.CBufRet.f32 %7114, 2
  %7118 = extractvalue %dx.types.CBufRet.f32 %7114, 3
  %7119 = extractvalue %dx.types.CBufRet.f32 %7103, 0
  %7120 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %7121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7122 = extractvalue %dx.types.CBufRet.f32 %7121, 0
  %7123 = extractvalue %dx.types.CBufRet.f32 %7121, 1
  %7124 = extractvalue %dx.types.CBufRet.f32 %7121, 2
  %7125 = fadd fast float %7122, %155
  %7126 = fadd fast float %7123, %156
  %7127 = fadd fast float %7124, %157
  %7128 = fmul fast float %7125, %7110
  %7129 = call float @dx.op.tertiary.f32(i32 46, float %7111, float %7126, float %7128)  ; FMad(a,b,c)
  %7130 = call float @dx.op.tertiary.f32(i32 46, float %7112, float %7127, float %7129)  ; FMad(a,b,c)
  %7131 = fadd fast float %7130, %7113
  %7132 = fmul fast float %7125, %7115
  %7133 = call float @dx.op.tertiary.f32(i32 46, float %7116, float %7126, float %7132)  ; FMad(a,b,c)
  %7134 = call float @dx.op.tertiary.f32(i32 46, float %7117, float %7127, float %7133)  ; FMad(a,b,c)
  %7135 = fadd fast float %7134, %7118
  %7136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %14, %dx.types.Handle %60, float %7131, float %7135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7137 = extractvalue %dx.types.ResRet.f32 %7136, 0
  %7138 = fmul fast float %7137, %7120
  %7139 = fadd fast float %7138, %7119
  %7140 = call float @dx.op.unary.f32(i32 7, float %7139)  ; Saturate(value)
  %7141 = fmul fast float %7140, %7104
  %7142 = fsub fast float 1.000000e+00, %7141
  br label %7143

; <label>:7143                                    ; preds = %7108, %7106
  %7144 = phi float [ %7142, %7108 ], [ 1.000000e+00, %7106 ]
  %7145 = fmul fast float %7144, %7102
  br label %7146

; <label>:7146                                    ; preds = %7143, %7092, %5832
  %7147 = phi float [ 1.000000e+00, %5832 ], [ %7145, %7143 ], [ %7102, %7092 ]
  %7148 = call float @dx.op.binary.f32(i32 36, float %7147, float %7147)  ; FMin(a,b)
  %7149 = call float @dx.op.binary.f32(i32 36, float %7147, float %7148)  ; FMin(a,b)
  %7150 = fcmp fast ogt float %7149, 0.000000e+00
  br i1 %7150, label %7151, label %7316, !dx.controlflow.hints !165

; <label>:7151                                    ; preds = %7146
  %7152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7153 = extractvalue %dx.types.CBufRet.f32 %7152, 0
  %7154 = extractvalue %dx.types.CBufRet.f32 %7152, 1
  %7155 = extractvalue %dx.types.CBufRet.f32 %7152, 2
  %7156 = extractvalue %dx.types.CBufRet.f32 %7152, 3
  %7157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.f32 %7157, 0
  %7159 = extractvalue %dx.types.CBufRet.f32 %7157, 1
  %7160 = extractvalue %dx.types.CBufRet.f32 %7157, 2
  %7161 = extractvalue %dx.types.CBufRet.f32 %7157, 3
  %7162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7163 = extractvalue %dx.types.CBufRet.f32 %7162, 0
  %7164 = extractvalue %dx.types.CBufRet.f32 %7162, 1
  %7165 = extractvalue %dx.types.CBufRet.f32 %7162, 2
  %7166 = extractvalue %dx.types.CBufRet.f32 %7162, 3
  %7167 = fmul fast float %7153, %155
  %7168 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7154, float %7167)  ; FMad(a,b,c)
  %7169 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7155, float %7168)  ; FMad(a,b,c)
  %7170 = fadd fast float %7169, %7156
  %7171 = fmul fast float %7158, %155
  %7172 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7159, float %7171)  ; FMad(a,b,c)
  %7173 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7160, float %7172)  ; FMad(a,b,c)
  %7174 = fadd fast float %7173, %7161
  %7175 = fmul fast float %7163, %155
  %7176 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7164, float %7175)  ; FMad(a,b,c)
  %7177 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7165, float %7176)  ; FMad(a,b,c)
  %7178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7179 = extractvalue %dx.types.CBufRet.f32 %7178, 0
  %7180 = extractvalue %dx.types.CBufRet.f32 %7178, 1
  %7181 = extractvalue %dx.types.CBufRet.f32 %7178, 3
  %7182 = fmul fast float %7181, %7170
  %7183 = fmul fast float %7181, %7174
  %7184 = fadd fast float %7182, %7179
  %7185 = fadd fast float %7183, %7180
  %7186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7187 = extractvalue %dx.types.CBufRet.f32 %7186, 0
  %7188 = extractvalue %dx.types.CBufRet.f32 %7186, 1
  %7189 = fsub fast float %7184, %7187
  %7190 = fsub fast float %7185, %7188
  %7191 = fcmp fast olt float %7189, 0.000000e+00
  %7192 = fcmp fast olt float %7190, 0.000000e+00
  %7193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7194 = extractvalue %dx.types.CBufRet.f32 %7193, 0
  %7195 = extractvalue %dx.types.CBufRet.f32 %7193, 1
  %7196 = extractvalue %dx.types.CBufRet.f32 %7193, 2
  %7197 = extractvalue %dx.types.CBufRet.f32 %7193, 3
  %7198 = select i1 %7191, float %7194, float %7196
  %7199 = select i1 %7192, float %7195, float %7197
  %7200 = fmul fast float %7198, %7189
  %7201 = fmul fast float %7199, %7190
  %7202 = call float @dx.op.unary.f32(i32 6, float %7200)  ; FAbs(value)
  %7203 = call float @dx.op.unary.f32(i32 6, float %7201)  ; FAbs(value)
  %7204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7205 = extractvalue %dx.types.CBufRet.f32 %7204, 0
  %7206 = call float @dx.op.binary.f32(i32 35, float %7202, float %7203)  ; FMax(a,b)
  %7207 = fsub fast float %7205, %7206
  %7208 = call float @dx.op.unary.f32(i32 7, float %7207)  ; Saturate(value)
  %7209 = fcmp fast ogt float %7208, 0.000000e+00
  br i1 %7209, label %7210, label %7251, !dx.controlflow.hints !166

; <label>:7210                                    ; preds = %7151
  %7211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %63, float %7184, float %7185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7212 = extractvalue %dx.types.ResRet.f32 %7211, 1
  %7213 = fcmp fast ogt float %7212, 0.000000e+00
  br i1 %7213, label %7214, label %7246

; <label>:7214                                    ; preds = %7210
  %7215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %63, float %7184, float %7185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7216 = extractvalue %dx.types.ResRet.f32 %7215, 0
  %7217 = extractvalue %dx.types.ResRet.f32 %7215, 1
  %7218 = extractvalue %dx.types.ResRet.f32 %7215, 2
  %7219 = extractvalue %dx.types.ResRet.f32 %7215, 3
  %7220 = fsub fast float 1.000000e+00, %7166
  %7221 = fsub fast float %7220, %7177
  %7222 = fmul fast float %7221, 0x400921FB60000000
  %7223 = fadd fast float %7222, 0x3FF921FB60000000
  %7224 = call float @dx.op.unary.f32(i32 13, float %7223)  ; Sin(value)
  %7225 = fadd fast float %7224, -1.000000e+00
  %7226 = fmul fast float %7225, 0x3FD45F3060000000
  %7227 = fmul fast float %7221, 0x401921FB60000000
  %7228 = fadd fast float %7227, 0x400921FB60000000
  %7229 = call float @dx.op.unary.f32(i32 13, float %7228)  ; Sin(value)
  %7230 = fadd fast float %7229, 0x3E7777A5C0000000
  %7231 = fmul fast float %7230, 0x3FC45F3060000000
  %7232 = fmul fast float %7221, 0x4022D97C80000000
  %7233 = fadd fast float %7232, 0x4012D97C80000000
  %7234 = call float @dx.op.unary.f32(i32 13, float %7233)  ; Sin(value)
  %7235 = fadd fast float %7234, 1.000000e+00
  %7236 = fmul fast float %7235, 0x3FBB2995E0000000
  %7237 = fmul fast float %7221, 0x402921FB60000000
  %7238 = fadd fast float %7237, 0x401921FB60000000
  %7239 = call float @dx.op.unary.f32(i32 13, float %7238)  ; Sin(value)
  %7240 = fadd fast float %7239, 0xBE8777A5C0000000
  %7241 = fmul fast float %7240, 0x3FB45F3060000000
  %7242 = call float @dx.op.dot4.f32(i32 56, float %7216, float %7217, float %7218, float %7219, float %7226, float %7231, float %7236, float %7241)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7243 = fmul fast float %7242, 0xBFF7154760000000
  %7244 = call float @dx.op.unary.f32(i32 21, float %7243)  ; Exp(value)
  %7245 = call float @dx.op.unary.f32(i32 7, float %7244)  ; Saturate(value)
  br label %7246

; <label>:7246                                    ; preds = %7214, %7210
  %7247 = phi float [ %7245, %7214 ], [ 1.000000e+00, %7210 ]
  %7248 = fadd fast float %7247, -1.000000e+00
  %7249 = fmul fast float %7248, %7208
  %7250 = fadd fast float %7249, 1.000000e+00
  br label %7251

; <label>:7251                                    ; preds = %7246, %7151
  %7252 = phi float [ %7250, %7246 ], [ 1.000000e+00, %7151 ]
  %7253 = fmul fast float %7252, %7147
  %7254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7255 = extractvalue %dx.types.CBufRet.f32 %7254, 0
  %7256 = extractvalue %dx.types.CBufRet.f32 %7254, 1
  %7257 = extractvalue %dx.types.CBufRet.f32 %7254, 2
  %7258 = fadd fast float %7255, %155
  %7259 = fadd fast float %7256, %156
  %7260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.f32 %7260, 1
  %7262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7263 = extractvalue %dx.types.CBufRet.f32 %7262, 0
  %7264 = extractvalue %dx.types.CBufRet.f32 %7262, 1
  %7265 = extractvalue %dx.types.CBufRet.f32 %7262, 2
  %7266 = fsub fast float -0.000000e+00, %7258
  %7267 = fsub fast float -0.000000e+00, %7259
  %7268 = fsub fast float %2754, %7257
  %7269 = fadd fast float %7268, %7261
  %7270 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7266, float %7267, float %7269)  ; Dot3(ax,ay,az,bx,by,bz)
  %7271 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7263, float %7264, float %7265)  ; Dot3(ax,ay,az,bx,by,bz)
  %7272 = fdiv fast float 1.000000e+00, %7271
  %7273 = fmul fast float %7272, %7270
  %7274 = fmul fast float %7263, %7273
  %7275 = fmul fast float %7264, %7273
  %7276 = fadd fast float %7274, %7258
  %7277 = fadd fast float %7275, %7259
  %7278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7278, 0
  %7280 = extractvalue %dx.types.CBufRet.f32 %7278, 1
  %7281 = fsub fast float %7276, %7279
  %7282 = fsub fast float %7277, %7280
  %7283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7284 = extractvalue %dx.types.CBufRet.f32 %7283, 2
  %7285 = extractvalue %dx.types.CBufRet.f32 %7283, 3
  %7286 = fmul fast float %7281, %7284
  %7287 = fmul fast float %7282, %7285
  %7288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7289 = extractvalue %dx.types.CBufRet.i32 %7288, 3
  %7290 = icmp eq i32 %7289, 0
  br i1 %7290, label %7296, label %7291

; <label>:7291                                    ; preds = %7251
  %7292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %62, float %7286, float %7287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7293 = extractvalue %dx.types.ResRet.f32 %7292, 0
  %7294 = extractvalue %dx.types.ResRet.f32 %7292, 1
  %7295 = extractvalue %dx.types.ResRet.f32 %7292, 2
  br label %7301

; <label>:7296                                    ; preds = %7251
  %7297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %63, float %7286, float %7287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7298 = extractvalue %dx.types.ResRet.f32 %7297, 0
  %7299 = extractvalue %dx.types.ResRet.f32 %7297, 1
  %7300 = extractvalue %dx.types.ResRet.f32 %7297, 2
  br label %7301

; <label>:7301                                    ; preds = %7296, %7291
  %7302 = phi float [ %7293, %7291 ], [ %7298, %7296 ]
  %7303 = phi float [ %7294, %7291 ], [ %7299, %7296 ]
  %7304 = phi float [ %7295, %7291 ], [ %7300, %7296 ]
  %7305 = extractvalue %dx.types.CBufRet.f32 %7260, 2
  %7306 = fmul fast float %7305, %7302
  %7307 = extractvalue %dx.types.CBufRet.f32 %7260, 0
  %7308 = fsub fast float %7273, %7307
  %7309 = fsub fast float %7308, %7306
  %7310 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7309)  ; FMax(a,b)
  %7311 = fmul fast float %7310, %7303
  %7312 = call float @dx.op.binary.f32(i32 36, float %7304, float %7311)  ; FMin(a,b)
  %7313 = fmul fast float %7312, 0xBFF7154760000000
  %7314 = call float @dx.op.unary.f32(i32 21, float %7313)  ; Exp(value)
  %7315 = fmul fast float %7253, %7314
  br label %7316

; <label>:7316                                    ; preds = %7301, %7146
  %7317 = phi float [ %7315, %7301 ], [ %7147, %7146 ]
  %7318 = call float @dx.op.binary.f32(i32 36, float %7317, float %7317)  ; FMin(a,b)
  %7319 = call float @dx.op.binary.f32(i32 36, float %7317, float %7318)  ; FMin(a,b)
  %7320 = fcmp fast ogt float %7319, 0.000000e+00
  br i1 %7320, label %7321, label %7494, !dx.controlflow.hints !167

; <label>:7321                                    ; preds = %7316
  %7322 = fmul fast float %7317, %5681
  %7323 = fmul fast float %7317, %5682
  %7324 = fmul fast float %7317, %5683
  %7325 = fsub fast float %5670, %2598
  %7326 = fsub fast float %5671, %2599
  %7327 = fsub fast float %5672, %2600
  %7328 = call float @dx.op.dot3.f32(i32 55, float %7325, float %7326, float %7327, float %7325, float %7326, float %7327)  ; Dot3(ax,ay,az,bx,by,bz)
  %7329 = call float @dx.op.unary.f32(i32 25, float %7328)  ; Rsqrt(value)
  %7330 = fmul fast float %7329, %7325
  %7331 = fmul fast float %7329, %7326
  %7332 = fmul fast float %7329, %7327
  %7333 = call float @dx.op.dot3.f32(i32 55, float %5670, float %5671, float %5672, float %2570, float %2571, float %2572)  ; Dot3(ax,ay,az,bx,by,bz)
  %7334 = call float @dx.op.dot3.f32(i32 55, float %2755, float %2756, float %2757, float %7330, float %7331, float %7332)  ; Dot3(ax,ay,az,bx,by,bz)
  %7335 = call float @dx.op.unary.f32(i32 7, float %7333)  ; Saturate(value)
  %7336 = fmul fast float %7335, %7335
  %7337 = fmul fast float %7336, %2796
  %7338 = call float @dx.op.unary.f32(i32 7, float %7337)  ; Saturate(value)
  %7339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7340 = extractvalue %dx.types.CBufRet.f32 %7339, 0
  %7341 = bitcast float %7340 to i32
  %7342 = lshr i32 %7341, 8
  %7343 = and i32 %7342, 255
  %7344 = uitofp i32 %7343 to float
  %7345 = fptoui float %7344 to i32
  %7346 = and i32 %7345, 8
  %7347 = icmp ne i32 %7346, 0
  %7348 = select i1 %7347, float %7338, float 1.000000e+00
  %7349 = fmul fast float %7348, %7335
  %7350 = call float @dx.op.dot3.f32(i32 55, float %2570, float %2571, float %2572, float %7330, float %7331, float %7332)  ; Dot3(ax,ay,az,bx,by,bz)
  %7351 = fmul fast float %7350, %7350
  %7352 = call float @dx.op.unary.f32(i32 6, float %7333)  ; FAbs(value)
  %7353 = fsub fast float 1.000000e+00, %2787
  %7354 = fmul fast float %2760, %2760
  %7355 = fmul fast float %7354, %7353
  %7356 = fadd fast float %7355, %2787
  %7357 = bitcast float %7356 to i32
  %7358 = ashr i32 %7357, 1
  %7359 = add nsw i32 %7358, 532487669
  %7360 = bitcast i32 %7359 to float
  %7361 = fadd fast float %7360, %2760
  %7362 = fmul fast float %2787, %7351
  %7363 = fsub fast float 1.000000e+00, %7351
  %7364 = fadd fast float %7363, %7362
  %7365 = fmul fast float %7352, %7352
  %7366 = fmul fast float %7365, %7353
  %7367 = fadd fast float %7366, %2787
  %7368 = bitcast float %7367 to i32
  %7369 = ashr i32 %7368, 1
  %7370 = add nsw i32 %7369, 532487669
  %7371 = bitcast i32 %7370 to float
  %7372 = fadd fast float %7371, %7352
  %7373 = fmul fast float %7364, %7364
  %7374 = fmul fast float %7373, %7361
  %7375 = fmul fast float %7374, %7372
  %7376 = fdiv fast float 0x3FF0A00000000000, %7375
  %7377 = fmul fast float %7376, %2787
  %7378 = call float @dx.op.unary.f32(i32 6, float %7334)  ; FAbs(value)
  %7379 = fsub fast float 1.000000e+00, %7378
  %7380 = bitcast float %7379 to i32
  %7381 = sitofp i32 %7380 to float
  %7382 = fmul fast float %7381, 5.000000e+00
  %7383 = fadd fast float %7382, 0xC1EFBF8940000000
  %7384 = fptosi float %7383 to i32
  %7385 = bitcast i32 %7384 to float
  %7386 = fmul fast float %7385, %2650
  %7387 = fmul fast float %7385, %2651
  %7388 = fmul fast float %7385, %3861
  %7389 = fadd fast float %7386, %2591
  %7390 = fadd fast float %7387, %2592
  %7391 = fadd fast float %7388, %2758
  %7392 = fmul fast float %7333, 9.843750e-01
  %7393 = fmul fast float %2699, 9.843750e-01
  %7394 = fadd fast float %7392, 7.812500e-03
  %7395 = fadd fast float %7393, 7.812500e-03
  %7396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %7394, float %7395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7397 = extractvalue %dx.types.ResRet.f32 %7396, 2
  %7398 = extractvalue %dx.types.ResRet.f32 %7396, 3
  %7399 = fmul fast float %7397, %2591
  %7400 = fmul fast float %7397, %2592
  %7401 = fmul fast float %7397, %2758
  %7402 = fadd fast float %7399, %7398
  %7403 = fadd fast float %7400, %7398
  %7404 = fadd fast float %7401, %7398
  %7405 = call float @dx.op.binary.f32(i32 35, float %7403, float %7404)  ; FMax(a,b)
  %7406 = call float @dx.op.binary.f32(i32 35, float %7402, float %7405)  ; FMax(a,b)
  %7407 = fsub fast float 1.000000e+00, %7406
  %7408 = fsub fast float -0.000000e+00, %2570
  %7409 = fsub fast float -0.000000e+00, %2571
  %7410 = fsub fast float -0.000000e+00, %2572
  %7411 = call float @dx.op.dot3.f32(i32 55, float %5670, float %5671, float %5672, float %7408, float %7409, float %7410)  ; Dot3(ax,ay,az,bx,by,bz)
  %7412 = call float @dx.op.unary.f32(i32 7, float %7411)  ; Saturate(value)
  %7413 = fmul fast float %7412, 9.843750e-01
  %7414 = fadd fast float %7413, 7.812500e-03
  %7415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %7414, float %7395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7416 = extractvalue %dx.types.ResRet.f32 %7415, 2
  %7417 = extractvalue %dx.types.ResRet.f32 %7415, 3
  %7418 = fmul fast float %7416, %2591
  %7419 = fmul fast float %7416, %2592
  %7420 = fmul fast float %7416, %2758
  %7421 = fadd fast float %7418, %7417
  %7422 = fadd fast float %7419, %7417
  %7423 = fadd fast float %7420, %7417
  %7424 = call float @dx.op.binary.f32(i32 35, float %7422, float %7423)  ; FMax(a,b)
  %7425 = call float @dx.op.binary.f32(i32 35, float %7421, float %7424)  ; FMax(a,b)
  %7426 = fsub fast float 1.000000e+00, %7425
  %7427 = fmul fast float %2592, 0x4012D0A400000000
  %7428 = fadd fast float %7427, 0x3FDB6377A0000000
  %7429 = fmul fast float %2784, %7428
  %7430 = call float @dx.op.unary.f32(i32 7, float %7429)  ; Saturate(value)
  %7431 = fsub fast float %5670, %2765
  %7432 = fsub fast float %5671, %2766
  %7433 = fsub fast float %5672, %2767
  %7434 = call float @dx.op.dot3.f32(i32 55, float %7431, float %7432, float %7433, float %7431, float %7432, float %7433)  ; Dot3(ax,ay,az,bx,by,bz)
  %7435 = call float @dx.op.unary.f32(i32 25, float %7434)  ; Rsqrt(value)
  %7436 = fmul fast float %7435, %7431
  %7437 = fmul fast float %7435, %7432
  %7438 = fmul fast float %7435, %7433
  %7439 = call float @dx.op.dot3.f32(i32 55, float %7408, float %7409, float %7410, float %7436, float %7437, float %7438)  ; Dot3(ax,ay,az,bx,by,bz)
  %7440 = fmul fast float %7439, %7439
  %7441 = call float @dx.op.unary.f32(i32 6, float %7412)  ; FAbs(value)
  %7442 = call float @dx.op.binary.f32(i32 35, float %7430, float 0x3F847AE140000000)  ; FMax(a,b)
  %7443 = fmul fast float %7442, %7442
  %7444 = fmul fast float %7443, %7443
  %7445 = fsub fast float 1.000000e+00, %7444
  %7446 = fmul fast float %7354, %7445
  %7447 = fadd fast float %7446, %7444
  %7448 = bitcast float %7447 to i32
  %7449 = ashr i32 %7448, 1
  %7450 = add nsw i32 %7449, 532487669
  %7451 = bitcast i32 %7450 to float
  %7452 = fadd fast float %7451, %2760
  %7453 = fmul fast float %7444, %7440
  %7454 = fsub fast float 1.000000e+00, %7440
  %7455 = fadd fast float %7454, %7453
  %7456 = fmul fast float %7441, %7441
  %7457 = fmul fast float %7456, %7445
  %7458 = fadd fast float %7457, %7444
  %7459 = bitcast float %7458 to i32
  %7460 = ashr i32 %7459, 1
  %7461 = add nsw i32 %7460, 532487669
  %7462 = bitcast i32 %7461 to float
  %7463 = fadd fast float %7462, %7441
  %7464 = fmul fast float %7455, %7455
  %7465 = fmul fast float %7464, %7452
  %7466 = fmul fast float %7465, %7463
  %7467 = fdiv fast float 0x3FF0A00000000000, %7466
  %7468 = fmul fast float %7467, %7444
  %7469 = fmul fast float %7426, %7412
  %7470 = fmul fast float %7469, %7468
  %7471 = fmul fast float %7407, %7349
  %7472 = fmul fast float %7349, %7377
  %7473 = fmul fast float %7472, %7389
  %7474 = fmul fast float %7472, %7390
  %7475 = fmul fast float %7472, %7391
  %7476 = fadd fast float %7470, %7473
  %7477 = fadd fast float %7470, %7474
  %7478 = fadd fast float %7470, %7475
  %7479 = fmul fast float %7471, %7322
  %7480 = fmul fast float %7471, %7323
  %7481 = fmul fast float %7471, %7324
  %7482 = fadd fast float %7479, %5657
  %7483 = fadd fast float %7480, %5658
  %7484 = fadd fast float %7481, %5659
  %7485 = fmul fast float %7476, %7322
  %7486 = fmul fast float %7477, %7323
  %7487 = fmul fast float %7478, %7324
  %7488 = fadd fast float %7485, %5663
  %7489 = fadd fast float %7486, %5664
  %7490 = fadd fast float %7487, %5665
  %7491 = fadd fast float %7485, %5660
  %7492 = fadd fast float %7486, %5661
  %7493 = fadd fast float %7487, %5662
  br label %7494

; <label>:7494                                    ; preds = %7321, %7316, %5651
  %7495 = phi i32 [ %5833, %7321 ], [ %5653, %5651 ], [ %5833, %7316 ]
  %7496 = phi i32 [ 1, %7321 ], [ 0, %5651 ], [ 0, %7316 ]
  %7497 = phi float [ %7485, %7321 ], [ 0.000000e+00, %5651 ], [ 0.000000e+00, %7316 ]
  %7498 = phi float [ %7486, %7321 ], [ 0.000000e+00, %5651 ], [ 0.000000e+00, %7316 ]
  %7499 = phi float [ %7487, %7321 ], [ 0.000000e+00, %5651 ], [ 0.000000e+00, %7316 ]
  %7500 = phi float [ %7479, %7321 ], [ 0.000000e+00, %5651 ], [ 0.000000e+00, %7316 ]
  %7501 = phi float [ %7480, %7321 ], [ 0.000000e+00, %5651 ], [ 0.000000e+00, %7316 ]
  %7502 = phi float [ %7481, %7321 ], [ 0.000000e+00, %5651 ], [ 0.000000e+00, %7316 ]
  %7503 = phi float [ %7491, %7321 ], [ %5660, %5651 ], [ %5660, %7316 ]
  %7504 = phi float [ %7492, %7321 ], [ %5661, %5651 ], [ %5661, %7316 ]
  %7505 = phi float [ %7493, %7321 ], [ %5662, %5651 ], [ %5662, %7316 ]
  %7506 = phi float [ %7482, %7321 ], [ %5657, %5651 ], [ %5657, %7316 ]
  %7507 = phi float [ %7483, %7321 ], [ %5658, %5651 ], [ %5658, %7316 ]
  %7508 = phi float [ %7484, %7321 ], [ %5659, %5651 ], [ %5659, %7316 ]
  %7509 = phi float [ %7317, %7321 ], [ 0.000000e+00, %5651 ], [ 0.000000e+00, %7316 ]
  %7510 = phi float [ %7488, %7321 ], [ %5663, %5651 ], [ %5663, %7316 ]
  %7511 = phi float [ %7489, %7321 ], [ %5664, %5651 ], [ %5664, %7316 ]
  %7512 = phi float [ %7490, %7321 ], [ %5665, %5651 ], [ %5665, %7316 ]
  %7513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7514 = extractvalue %dx.types.CBufRet.i32 %7513, 0
  %7515 = icmp eq i32 %7514, 0
  br i1 %7515, label %8514, label %7516

; <label>:7516                                    ; preds = %7494
  %7517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7518 = extractvalue %dx.types.CBufRet.f32 %7517, 2
  %7519 = extractvalue %dx.types.CBufRet.f32 %7517, 3
  %7520 = fmul fast float %7518, %100
  %7521 = fmul fast float %7519, %101
  %7522 = fptoui float %7520 to i32
  %7523 = fptoui float %7521 to i32
  %7524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7525 = extractvalue %dx.types.CBufRet.f32 %7524, 0
  %7526 = extractvalue %dx.types.CBufRet.f32 %7524, 2
  %7527 = extractvalue %dx.types.CBufRet.f32 %7524, 3
  %7528 = fadd fast float %89, -4.000000e+00
  %7529 = call float @dx.op.binary.f32(i32 35, float %7528, float 0.000000e+00)  ; FMax(a,b)
  %7530 = fadd fast float %7529, %7525
  %7531 = fmul fast float %7530, %7526
  %7532 = call float @dx.op.unary.f32(i32 23, float %7531)  ; Log(value)
  %7533 = fmul fast float %7532, %7527
  %7534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.f32 %7534, 2
  %7536 = fmul fast float %7533, %7535
  %7537 = call float @dx.op.unary.f32(i32 7, float %7536)  ; Saturate(value)
  %7538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7539 = extractvalue %dx.types.CBufRet.i32 %7538, 1
  %7540 = add i32 %7539, -1
  %7541 = uitofp i32 %7539 to float
  %7542 = fmul fast float %7541, %7537
  %7543 = fptoui float %7542 to i32
  %7544 = call i32 @dx.op.binary.i32(i32 40, i32 %7543, i32 %7540)  ; UMin(a,b)
  %7545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7546 = extractvalue %dx.types.CBufRet.i32 %7545, 2
  %7547 = extractvalue %dx.types.CBufRet.i32 %7545, 3
  %7548 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7523, i32 %7546, i32 %7522)  ; UMad(a,b,c)
  %7549 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7544, i32 %7547, i32 %7548)  ; UMad(a,b,c)
  %7550 = add nsw i32 %7514, -1
  %7551 = call i32 @dx.op.binary.i32(i32 37, i32 %7550, i32 0)  ; IMax(a,b)
  %7552 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %7553 = fptoui float %7552 to i32
  %7554 = lshr i32 %7553, 5
  %7555 = call i32 @dx.op.binary.i32(i32 40, i32 %7554, i32 8191)  ; UMin(a,b)
  %7556 = shl i32 %7555, 2
  %7557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7556, i32 undef)  ; BufferLoad(srv,index,wot)
  %7558 = extractvalue %dx.types.ResRet.i32 %7557, 0
  %7559 = lshr i32 %7558, 16
  %7560 = and i32 %7558, 65535
  %7561 = lshr i32 %7558, 21
  %7562 = lshr i32 %7560, 5
  %7563 = call i32 @dx.op.binary.i32(i32 40, i32 %7562, i32 %7551)  ; UMin(a,b)
  %7564 = icmp ugt i32 %7561, %7563
  br i1 %7564, label %8447, label %7565

; <label>:7565                                    ; preds = %7516
  br label %7566

; <label>:7566                                    ; preds = %8416, %7565
  %7567 = phi i32 [ %8417, %8416 ], [ %7495, %7565 ]
  %7568 = phi i32 [ %8418, %8416 ], [ 0, %7565 ]
  %7569 = phi i32 [ %8419, %8416 ], [ 0, %7565 ]
  %7570 = phi i32 [ %8420, %8416 ], [ 0, %7565 ]
  %7571 = phi i32 [ %8421, %8416 ], [ 0, %7565 ]
  %7572 = phi i32 [ %8422, %8416 ], [ 0, %7565 ]
  %7573 = phi i32 [ %8423, %8416 ], [ 0, %7565 ]
  %7574 = phi i32 [ %8424, %8416 ], [ 0, %7565 ]
  %7575 = phi i32 [ %8425, %8416 ], [ 0, %7565 ]
  %7576 = phi i32 [ %8444, %8416 ], [ %7561, %7565 ]
  %7577 = phi float [ %8426, %8416 ], [ %7497, %7565 ]
  %7578 = phi float [ %8427, %8416 ], [ %7498, %7565 ]
  %7579 = phi float [ %8428, %8416 ], [ %7499, %7565 ]
  %7580 = phi float [ %8429, %8416 ], [ %7500, %7565 ]
  %7581 = phi float [ %8430, %8416 ], [ %7501, %7565 ]
  %7582 = phi float [ %8431, %8416 ], [ %7502, %7565 ]
  %7583 = phi float [ %8432, %8416 ], [ %7503, %7565 ]
  %7584 = phi float [ %8433, %8416 ], [ %7504, %7565 ]
  %7585 = phi float [ %8434, %8416 ], [ %7505, %7565 ]
  %7586 = phi float [ %8435, %8416 ], [ %7506, %7565 ]
  %7587 = phi float [ %8436, %8416 ], [ %7507, %7565 ]
  %7588 = phi float [ %8437, %8416 ], [ %7508, %7565 ]
  %7589 = phi float [ %8438, %8416 ], [ %7510, %7565 ]
  %7590 = phi float [ %8439, %8416 ], [ %7511, %7565 ]
  %7591 = phi float [ %8440, %8416 ], [ %7512, %7565 ]
  %7592 = phi float [ %8441, %8416 ], [ %7506, %7565 ]
  %7593 = phi float [ %8442, %8416 ], [ %7507, %7565 ]
  %7594 = phi float [ %8443, %8416 ], [ %7508, %7565 ]
  %7595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7596 = extractvalue %dx.types.CBufRet.i32 %7595, 0
  %7597 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7549, i32 %7596, i32 %7576)  ; UMad(a,b,c)
  %7598 = shl i32 %7597, 2
  %7599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %7598, i32 undef)  ; BufferLoad(srv,index,wot)
  %7600 = extractvalue %dx.types.ResRet.i32 %7599, 0
  %7601 = shl i32 %7576, 5
  %7602 = sub nsw i32 %7559, %7601
  %7603 = call i32 @dx.op.binary.i32(i32 37, i32 %7602, i32 0)  ; IMax(a,b)
  %7604 = call i32 @dx.op.binary.i32(i32 38, i32 %7603, i32 31)  ; IMin(a,b)
  %7605 = sub nsw i32 1, %7559
  %7606 = add nsw i32 %7605, %7560
  %7607 = call i32 @dx.op.binary.i32(i32 37, i32 %7606, i32 0)  ; IMax(a,b)
  %7608 = call i32 @dx.op.binary.i32(i32 38, i32 %7607, i32 32)  ; IMin(a,b)
  %7609 = and i32 %7608, 31
  %7610 = shl i32 -1, %7609
  %7611 = xor i32 %7610, -1
  %7612 = and i32 %7604, 31
  %7613 = shl i32 %7611, %7612
  %7614 = icmp eq i32 %7608, 32
  %7615 = select i1 %7614, i32 -1, i32 %7613
  %7616 = and i32 %7615, %7600
  %7617 = icmp eq i32 %7616, 0
  br i1 %7617, label %8416, label %7618

; <label>:7618                                    ; preds = %7566
  br label %7619

; <label>:7619                                    ; preds = %7814, %7618
  %7620 = phi i32 [ %7815, %7814 ], [ %7567, %7618 ]
  %7621 = phi i32 [ %7804, %7814 ], [ %7568, %7618 ]
  %7622 = phi i32 [ %7806, %7814 ], [ %7569, %7618 ]
  %7623 = phi i32 [ %7808, %7814 ], [ %7570, %7618 ]
  %7624 = phi i32 [ %7810, %7814 ], [ %7571, %7618 ]
  %7625 = phi i32 [ %7816, %7814 ], [ %7572, %7618 ]
  %7626 = phi i32 [ %7817, %7814 ], [ %7573, %7618 ]
  %7627 = phi i32 [ %7818, %7814 ], [ %7574, %7618 ]
  %7628 = phi i32 [ %7819, %7814 ], [ %7575, %7618 ]
  %7629 = phi i32 [ %7652, %7814 ], [ %7616, %7618 ]
  %7630 = phi float [ %7820, %7814 ], [ %7577, %7618 ]
  %7631 = phi float [ %7821, %7814 ], [ %7578, %7618 ]
  %7632 = phi float [ %7822, %7814 ], [ %7579, %7618 ]
  %7633 = phi float [ %7823, %7814 ], [ %7580, %7618 ]
  %7634 = phi float [ %7824, %7814 ], [ %7581, %7618 ]
  %7635 = phi float [ %7825, %7814 ], [ %7582, %7618 ]
  %7636 = phi float [ %7826, %7814 ], [ %7583, %7618 ]
  %7637 = phi float [ %7827, %7814 ], [ %7584, %7618 ]
  %7638 = phi float [ %7828, %7814 ], [ %7585, %7618 ]
  %7639 = phi float [ %7829, %7814 ], [ %7586, %7618 ]
  %7640 = phi float [ %7830, %7814 ], [ %7587, %7618 ]
  %7641 = phi float [ %7831, %7814 ], [ %7588, %7618 ]
  %7642 = phi float [ %7832, %7814 ], [ %7589, %7618 ]
  %7643 = phi float [ %7833, %7814 ], [ %7590, %7618 ]
  %7644 = phi float [ %7834, %7814 ], [ %7591, %7618 ]
  %7645 = phi float [ %7835, %7814 ], [ %7592, %7618 ]
  %7646 = phi float [ %7836, %7814 ], [ %7593, %7618 ]
  %7647 = phi float [ %7837, %7814 ], [ %7594, %7618 ]
  %7648 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7629)  ; FirstbitLo(value)
  %7649 = add i32 %7648, %7601
  %7650 = and i32 %7648, 31
  %7651 = shl i32 1, %7650
  %7652 = xor i32 %7651, %7629
  %7653 = mul i32 %7649, 112
  %7654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7653, i32 undef)  ; BufferLoad(srv,index,wot)
  %7655 = extractvalue %dx.types.ResRet.f32 %7654, 0
  %7656 = extractvalue %dx.types.ResRet.f32 %7654, 1
  %7657 = extractvalue %dx.types.ResRet.f32 %7654, 2
  %7658 = or i32 %7653, 12
  %7659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7658, i32 undef)  ; BufferLoad(srv,index,wot)
  %7660 = extractvalue %dx.types.ResRet.f32 %7659, 0
  %7661 = add i32 %7653, 16
  %7662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7661, i32 undef)  ; BufferLoad(srv,index,wot)
  %7663 = extractvalue %dx.types.ResRet.f32 %7662, 0
  %7664 = extractvalue %dx.types.ResRet.f32 %7662, 1
  %7665 = extractvalue %dx.types.ResRet.f32 %7662, 2
  %7666 = add i32 %7653, 28
  %7667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %7666, i32 undef)  ; BufferLoad(srv,index,wot)
  %7668 = extractvalue %dx.types.ResRet.i32 %7667, 0
  %7669 = add i32 %7653, 32
  %7670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7669, i32 undef)  ; BufferLoad(srv,index,wot)
  %7671 = extractvalue %dx.types.ResRet.f32 %7670, 0
  %7672 = extractvalue %dx.types.ResRet.f32 %7670, 1
  %7673 = extractvalue %dx.types.ResRet.f32 %7670, 2
  %7674 = add i32 %7653, 44
  %7675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7674, i32 undef)  ; BufferLoad(srv,index,wot)
  %7676 = extractvalue %dx.types.ResRet.f32 %7675, 0
  %7677 = add i32 %7653, 48
  %7678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7677, i32 undef)  ; BufferLoad(srv,index,wot)
  %7679 = extractvalue %dx.types.ResRet.f32 %7678, 0
  %7680 = extractvalue %dx.types.ResRet.f32 %7678, 1
  %7681 = extractvalue %dx.types.ResRet.f32 %7678, 2
  %7682 = extractvalue %dx.types.ResRet.f32 %7678, 3
  %7683 = add i32 %7653, 64
  %7684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7683, i32 undef)  ; BufferLoad(srv,index,wot)
  %7685 = extractvalue %dx.types.ResRet.f32 %7684, 0
  %7686 = extractvalue %dx.types.ResRet.f32 %7684, 1
  %7687 = extractvalue %dx.types.ResRet.f32 %7684, 2
  %7688 = extractvalue %dx.types.ResRet.f32 %7684, 3
  %7689 = add i32 %7653, 80
  %7690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7689, i32 undef)  ; BufferLoad(srv,index,wot)
  %7691 = extractvalue %dx.types.ResRet.f32 %7690, 1
  %7692 = extractvalue %dx.types.ResRet.f32 %7690, 2
  %7693 = add i32 %7653, 92
  %7694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %7693, i32 undef)  ; BufferLoad(srv,index,wot)
  %7695 = extractvalue %dx.types.ResRet.i32 %7694, 0
  %7696 = call float @dx.op.dot3.f32(i32 55, float %7655, float %7656, float %7657, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7697 = select i1 %2753, float %7691, float %7655
  %7698 = select i1 %2753, float %7696, float %7656
  %7699 = select i1 %2753, float %7692, float %7657
  %7700 = and i32 %7695, 65535
  %7701 = uitofp i32 %7700 to float
  %7702 = lshr i32 %7695, 16
  %7703 = uitofp i32 %7702 to float
  %7704 = and i32 %7668, 65535
  %7705 = lshr i32 %7668, 24
  %7706 = and i32 %7705, 3
  %7707 = and i32 %7668, 536870912
  %7708 = icmp ne i32 %7707, 0
  %7709 = icmp slt i32 %7668, 0
  %7710 = icmp eq i32 %7706, 2
  %7711 = call float @dx.op.dot3.f32(i32 55, float %7671, float %7672, float %7673, float %7671, float %7672, float %7673)  ; Dot3(ax,ay,az,bx,by,bz)
  %7712 = fsub fast float %155, %7679
  %7713 = fsub fast float %156, %7680
  %7714 = fsub fast float %157, %7681
  %7715 = call float @dx.op.dot3.f32(i32 55, float %7712, float %7713, float %7714, float %7671, float %7672, float %7673)  ; Dot3(ax,ay,az,bx,by,bz)
  %7716 = fdiv fast float %7715, %7711
  %7717 = call float @dx.op.binary.f32(i32 35, float %7716, float -1.000000e+00)  ; FMax(a,b)
  %7718 = call float @dx.op.binary.f32(i32 36, float %7717, float 1.000000e+00)  ; FMin(a,b)
  %7719 = fmul fast float %7718, %7671
  %7720 = fmul fast float %7718, %7672
  %7721 = fmul fast float %7718, %7673
  %7722 = fadd fast float %7719, %7679
  %7723 = fadd fast float %7720, %7680
  %7724 = fadd fast float %7721, %7681
  %7725 = fsub fast float %7722, %155
  %7726 = fsub fast float %7723, %156
  %7727 = fsub fast float %7724, %157
  %7728 = call float @dx.op.dot3.f32(i32 55, float %7725, float %7726, float %7727, float %7725, float %7726, float %7727)  ; Dot3(ax,ay,az,bx,by,bz)
  %7729 = call float @dx.op.unary.f32(i32 24, float %7728)  ; Sqrt(value)
  %7730 = fdiv fast float 1.000000e+00, %7729
  %7731 = fmul fast float %7725, %7730
  %7732 = fmul fast float %7726, %7730
  %7733 = fmul fast float %7727, %7730
  %7734 = fadd fast float %7729, %7660
  %7735 = fdiv fast float 1.000000e+00, %7734
  %7736 = fmul float %7676, %7735
  %7737 = fmul float %7736, %7736
  %7738 = call float @dx.op.unary.f32(i32 7, float %7737)  ; Saturate(value)
  br i1 %7710, label %7739, label %7763

; <label>:7739                                    ; preds = %7619
  %7740 = fmul fast float %7687, %7663
  %7741 = fmul fast float %7687, %7664
  %7742 = fmul fast float %7687, %7665
  %7743 = fsub fast float %7740, %155
  %7744 = fadd fast float %7743, %7722
  %7745 = fsub fast float %7741, %156
  %7746 = fadd fast float %7745, %7723
  %7747 = fsub fast float %7742, %157
  %7748 = fadd fast float %7747, %7724
  %7749 = call float @dx.op.dot3.f32(i32 55, float %7744, float %7746, float %7748, float %7744, float %7746, float %7748)  ; Dot3(ax,ay,az,bx,by,bz)
  %7750 = call float @dx.op.unary.f32(i32 25, float %7749)  ; Rsqrt(value)
  %7751 = fmul fast float %7750, %7744
  %7752 = fmul fast float %7750, %7746
  %7753 = fmul fast float %7750, %7748
  %7754 = fsub fast float %155, %7722
  %7755 = fsub fast float %156, %7723
  %7756 = fsub fast float %157, %7724
  %7757 = fsub fast float -0.000000e+00, %7754
  %7758 = fsub fast float -0.000000e+00, %7755
  %7759 = fsub fast float -0.000000e+00, %7756
  %7760 = call float @dx.op.dot3.f32(i32 55, float %7757, float %7758, float %7759, float %7663, float %7664, float %7665)  ; Dot3(ax,ay,az,bx,by,bz)
  %7761 = fcmp fast ogt float %7760, 0.000000e+00
  %7762 = uitofp i1 %7761 to float
  br label %7763

; <label>:7763                                    ; preds = %7739, %7619
  %7764 = phi float [ %7762, %7739 ], [ 1.000000e+00, %7619 ]
  %7765 = phi float [ %7751, %7739 ], [ %7731, %7619 ]
  %7766 = phi float [ %7752, %7739 ], [ %7732, %7619 ]
  %7767 = phi float [ %7753, %7739 ], [ %7733, %7619 ]
  %7768 = call float @dx.op.dot3.f32(i32 55, float %7663, float %7664, float %7665, float %7765, float %7766, float %7767)  ; Dot3(ax,ay,az,bx,by,bz)
  %7769 = fmul fast float %7768, %7768
  %7770 = call float @dx.op.unary.f32(i32 7, float %7769)  ; Saturate(value)
  %7771 = fsub fast float 1.000000e+00, %7770
  %7772 = fmul fast float %7771, 5.000000e-01
  %7773 = fcmp fast ogt float %7768, 0.000000e+00
  %7774 = fsub fast float 1.000000e+00, %7772
  %7775 = select i1 %7773, float %7772, float %7774
  %7776 = fmul fast float %7775, %7703
  %7777 = fadd fast float %7776, %7701
  %7778 = fmul fast float %7777, 0x3EF0001000000000
  %7779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %63, float %7778, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7780 = extractvalue %dx.types.ResRet.f32 %7779, 0
  %7781 = fmul fast float %7768, %7685
  %7782 = fadd fast float %7781, %7686
  %7783 = call float @dx.op.unary.f32(i32 7, float %7782)  ; Saturate(value)
  %7784 = select i1 %7710, float 1.000000e+00, float %7783
  %7785 = select i1 %7710, float %7783, float 1.000000e+00
  %7786 = fmul fast float %7729, %7682
  %7787 = fsub fast float 1.000000e+00, %7786
  %7788 = fmul fast float %7787, %7688
  %7789 = call float @dx.op.unary.f32(i32 7, float %7788)  ; Saturate(value)
  %7790 = fmul fast float %7789, %7785
  %7791 = fmul fast float %7790, 2.000000e+00
  %7792 = fsub fast float 3.000000e+00, %7791
  %7793 = fmul fast float %7780, %7764
  %7794 = fmul fast float %7790, %7790
  %7795 = fmul fast float %7794, %7793
  %7796 = fmul fast float %7795, %7792
  %7797 = xor i1 %7708, true
  %7798 = and i1 %7710, %7797
  %7799 = icmp ne i32 %7706, 2
  %7800 = and i1 %7799, %7797
  %7801 = and i1 %7708, %7710
  %7802 = and i1 %7708, %7799
  %7803 = zext i1 %7798 to i32
  %7804 = add i32 %7803, %7621
  %7805 = zext i1 %7800 to i32
  %7806 = add i32 %7805, %7622
  %7807 = zext i1 %7801 to i32
  %7808 = add i32 %7807, %7623
  %7809 = zext i1 %7802 to i32
  %7810 = add i32 %7809, %7624
  %7811 = call float @dx.op.binary.f32(i32 36, float %7796, float %7796)  ; FMin(a,b)
  %7812 = call float @dx.op.binary.f32(i32 36, float %7796, float %7811)  ; FMin(a,b)
  %7813 = fcmp fast ogt float %7812, 0.000000e+00
  br i1 %7813, label %7839, label %7814, !dx.controlflow.hints !168

; <label>:7814                                    ; preds = %8400, %7763
  %7815 = phi i32 [ %8410, %8400 ], [ %7620, %7763 ]
  %7816 = phi i32 [ %8411, %8400 ], [ %7625, %7763 ]
  %7817 = phi i32 [ %8412, %8400 ], [ %7626, %7763 ]
  %7818 = phi i32 [ %8413, %8400 ], [ %7627, %7763 ]
  %7819 = phi i32 [ %8414, %8400 ], [ %7628, %7763 ]
  %7820 = phi float [ %8371, %8400 ], [ %7630, %7763 ]
  %7821 = phi float [ %8372, %8400 ], [ %7631, %7763 ]
  %7822 = phi float [ %8373, %8400 ], [ %7632, %7763 ]
  %7823 = phi float [ %8374, %8400 ], [ %7633, %7763 ]
  %7824 = phi float [ %8375, %8400 ], [ %7634, %7763 ]
  %7825 = phi float [ %8376, %8400 ], [ %7635, %7763 ]
  %7826 = phi float [ %8377, %8400 ], [ %7636, %7763 ]
  %7827 = phi float [ %8378, %8400 ], [ %7637, %7763 ]
  %7828 = phi float [ %8379, %8400 ], [ %7638, %7763 ]
  %7829 = phi float [ %8380, %8400 ], [ %7639, %7763 ]
  %7830 = phi float [ %8381, %8400 ], [ %7640, %7763 ]
  %7831 = phi float [ %8382, %8400 ], [ %7641, %7763 ]
  %7832 = phi float [ %8383, %8400 ], [ %7642, %7763 ]
  %7833 = phi float [ %8384, %8400 ], [ %7643, %7763 ]
  %7834 = phi float [ %8385, %8400 ], [ %7644, %7763 ]
  %7835 = phi float [ %8386, %8400 ], [ %7645, %7763 ]
  %7836 = phi float [ %8387, %8400 ], [ %7646, %7763 ]
  %7837 = phi float [ %8388, %8400 ], [ %7647, %7763 ]
  %7838 = icmp eq i32 %7629, %7651
  br i1 %7838, label %8415, label %7619

; <label>:7839                                    ; preds = %7763
  %7840 = icmp eq i32 %7704, 255
  br i1 %7840, label %7978, label %7841, !dx.controlflow.hints !169

; <label>:7841                                    ; preds = %7839
  %7842 = mul nuw nsw i32 %7704, 176
  %7843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7842, i32 undef)  ; BufferLoad(srv,index,wot)
  %7844 = extractvalue %dx.types.ResRet.f32 %7843, 0
  %7845 = extractvalue %dx.types.ResRet.f32 %7843, 1
  %7846 = extractvalue %dx.types.ResRet.f32 %7843, 2
  %7847 = extractvalue %dx.types.ResRet.f32 %7843, 3
  %7848 = add nuw nsw i32 %7842, 16
  %7849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7848, i32 undef)  ; BufferLoad(srv,index,wot)
  %7850 = extractvalue %dx.types.ResRet.f32 %7849, 0
  %7851 = extractvalue %dx.types.ResRet.f32 %7849, 1
  %7852 = add nuw nsw i32 %7842, 32
  %7853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7852, i32 undef)  ; BufferLoad(srv,index,wot)
  %7854 = extractvalue %dx.types.ResRet.f32 %7853, 0
  %7855 = extractvalue %dx.types.ResRet.f32 %7853, 1
  %7856 = add nuw nsw i32 %7842, 48
  %7857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7856, i32 undef)  ; BufferLoad(srv,index,wot)
  %7858 = extractvalue %dx.types.ResRet.f32 %7857, 0
  %7859 = extractvalue %dx.types.ResRet.f32 %7857, 1
  %7860 = extractvalue %dx.types.ResRet.f32 %7857, 2
  %7861 = extractvalue %dx.types.ResRet.f32 %7857, 3
  %7862 = add nuw nsw i32 %7842, 64
  %7863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7862, i32 undef)  ; BufferLoad(srv,index,wot)
  %7864 = extractvalue %dx.types.ResRet.f32 %7863, 0
  %7865 = extractvalue %dx.types.ResRet.f32 %7863, 1
  %7866 = extractvalue %dx.types.ResRet.f32 %7863, 2
  %7867 = extractvalue %dx.types.ResRet.f32 %7863, 3
  %7868 = add nuw nsw i32 %7842, 80
  %7869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7868, i32 undef)  ; BufferLoad(srv,index,wot)
  %7870 = extractvalue %dx.types.ResRet.f32 %7869, 0
  %7871 = extractvalue %dx.types.ResRet.f32 %7869, 1
  %7872 = extractvalue %dx.types.ResRet.f32 %7869, 2
  %7873 = extractvalue %dx.types.ResRet.f32 %7869, 3
  %7874 = add nuw nsw i32 %7842, 96
  %7875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7874, i32 undef)  ; BufferLoad(srv,index,wot)
  %7876 = extractvalue %dx.types.ResRet.f32 %7875, 0
  %7877 = extractvalue %dx.types.ResRet.f32 %7875, 1
  %7878 = extractvalue %dx.types.ResRet.f32 %7875, 2
  %7879 = extractvalue %dx.types.ResRet.f32 %7875, 3
  %7880 = bitcast float %7851 to i32
  %7881 = fmul fast float %7858, %155
  %7882 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7864, float %7881)  ; FMad(a,b,c)
  %7883 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7870, float %7882)  ; FMad(a,b,c)
  %7884 = fadd fast float %7883, %7876
  %7885 = fmul fast float %7859, %155
  %7886 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7865, float %7885)  ; FMad(a,b,c)
  %7887 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7871, float %7886)  ; FMad(a,b,c)
  %7888 = fadd fast float %7887, %7877
  %7889 = fmul fast float %7860, %155
  %7890 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7866, float %7889)  ; FMad(a,b,c)
  %7891 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7872, float %7890)  ; FMad(a,b,c)
  %7892 = fadd fast float %7891, %7878
  %7893 = fmul fast float %7861, %155
  %7894 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7867, float %7893)  ; FMad(a,b,c)
  %7895 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7873, float %7894)  ; FMad(a,b,c)
  %7896 = fadd fast float %7895, %7879
  %7897 = fdiv fast float %7884, %7896
  %7898 = fdiv fast float %7888, %7896
  %7899 = fdiv fast float %7892, %7896
  %7900 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7899)  ; FMax(a,b)
  %7901 = fmul fast float %2044, 0x401921FB60000000
  %7902 = call float @dx.op.unary.f32(i32 13, float %7901)  ; Sin(value)
  %7903 = call float @dx.op.unary.f32(i32 12, float %7901)  ; Cos(value)
  %7904 = fmul fast float %7903, %7855
  %7905 = call float @dx.op.tertiary.f32(i32 46, float %7902, float %7855, float 0.000000e+00)  ; FMad(a,b,c)
  %7906 = fmul fast float %7855, %7902
  %7907 = fsub fast float -0.000000e+00, %7906
  %7908 = call float @dx.op.tertiary.f32(i32 46, float %7903, float %7855, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7909

; <label>:7909                                    ; preds = %7909, %7841
  %7910 = phi float [ 0.000000e+00, %7841 ], [ %7942, %7909 ]
  %7911 = phi float [ 0.000000e+00, %7841 ], [ %7944, %7909 ]
  %7912 = phi i32 [ 0, %7841 ], [ %7945, %7909 ]
  %7913 = mul i32 %7912, 2
  %7914 = add i32 0, %7913
  %7915 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7914
  %7916 = load float, float* %7915, align 4
  %7917 = mul i32 %7912, 2
  %7918 = add i32 1, %7917
  %7919 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7918
  %7920 = load float, float* %7919, align 4
  %7921 = fmul fast float %7904, %7916
  %7922 = call float @dx.op.tertiary.f32(i32 46, float %7920, float %7907, float %7921)  ; FMad(a,b,c)
  %7923 = fmul fast float %7916, %7905
  %7924 = call float @dx.op.tertiary.f32(i32 46, float %7920, float %7908, float %7923)  ; FMad(a,b,c)
  %7925 = fadd fast float %7922, %7897
  %7926 = fadd fast float %7924, %7898
  %7927 = fmul fast float %7925, %7850
  %7928 = fmul fast float %7926, %7850
  %7929 = call float @dx.op.binary.f32(i32 35, float %7927, float %7846)  ; FMax(a,b)
  %7930 = call float @dx.op.binary.f32(i32 35, float %7928, float %7846)  ; FMax(a,b)
  %7931 = call float @dx.op.binary.f32(i32 36, float %7929, float %7847)  ; FMin(a,b)
  %7932 = call float @dx.op.binary.f32(i32 36, float %7930, float %7847)  ; FMin(a,b)
  %7933 = fadd fast float %7931, %7844
  %7934 = fadd fast float %7932, %7845
  %7935 = uitofp i32 %7880 to float
  %7936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %7933, float %7934, float %7935, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7937 = extractvalue %dx.types.ResRet.f32 %7936, 0
  %7938 = fsub fast float %7937, %7900
  %7939 = fsub fast float %7938, %7854
  %7940 = fcmp fast ogt float %7939, 0.000000e+00
  %7941 = select i1 %7940, float 1.000000e+00, float 0.000000e+00
  %7942 = fadd fast float %7941, %7910
  %7943 = select i1 %7940, float %7939, float 0.000000e+00
  %7944 = fadd fast float %7943, %7911
  %7945 = add nuw nsw i32 %7912, 1
  %7946 = icmp eq i32 %7945, 8
  br i1 %7946, label %7947, label %7909

; <label>:7947                                    ; preds = %7909
  %7948 = fdiv fast float 1.000000e+00, %7942
  %7949 = fmul fast float %7948, %7944
  %7950 = fdiv fast float 1.000000e+00, %7900
  %7951 = fmul fast float %7949, %7950
  %7952 = call float @dx.op.unary.f32(i32 7, float %7951)  ; Saturate(value)
  %7953 = call float @dx.op.binary.f32(i32 35, float %7952, float 0.000000e+00)  ; FMax(a,b)
  %7954 = fmul fast float %7942, 1.250000e-01
  %7955 = call float @dx.op.unary.f32(i32 7, float %7954)  ; Saturate(value)
  %7956 = fmul fast float %7955, 2.000000e+00
  %7957 = fadd fast float %7956, -1.000000e+00
  %7958 = fcmp fast ogt float %7957, 0.000000e+00
  %7959 = fcmp fast olt float %7957, 0.000000e+00
  %7960 = zext i1 %7958 to i32
  %7961 = zext i1 %7959 to i32
  %7962 = sub nsw i32 %7960, %7961
  %7963 = sitofp i32 %7962 to float
  %7964 = fmul fast float %7963, %7957
  %7965 = fsub fast float 1.000000e+00, %7964
  %7966 = fmul fast float %7965, %7965
  %7967 = fmul fast float %7966, %7965
  %7968 = fsub fast float %7965, %7967
  %7969 = fmul fast float %7968, %7953
  %7970 = fsub fast float 1.000000e+00, %7967
  %7971 = fsub fast float %7970, %7969
  %7972 = fmul fast float %7963, 5.000000e-01
  %7973 = fmul fast float %7972, %7971
  %7974 = fsub fast float -5.000000e-01, %7973
  %7975 = fmul fast float %7974, %7784
  %7976 = fadd fast float %7975, 1.000000e+00
  %7977 = fmul fast float %7976, %7796
  br label %7978

; <label>:7978                                    ; preds = %7947, %7839
  %7979 = phi float [ %7977, %7947 ], [ %7796, %7839 ]
  %7980 = call float @dx.op.binary.f32(i32 36, float %7979, float %7979)  ; FMin(a,b)
  %7981 = call float @dx.op.binary.f32(i32 36, float %7979, float %7980)  ; FMin(a,b)
  %7982 = fcmp fast ogt float %7981, 0.000000e+00
  br i1 %7982, label %7983, label %8370, !dx.controlflow.hints !170

; <label>:7983                                    ; preds = %7978
  %7984 = fmul fast float %7979, %7697
  %7985 = fmul fast float %7979, %7698
  %7986 = fmul fast float %7979, %7699
  %7987 = fadd fast float %7731, %2570
  %7988 = fadd fast float %7732, %2571
  %7989 = fadd fast float %7733, %2572
  %7990 = call float @dx.op.dot3.f32(i32 55, float %7731, float %7732, float %7733, float %7725, float %7726, float %7727)  ; Dot3(ax,ay,az,bx,by,bz)
  %7991 = call float @dx.op.dot3.f32(i32 55, float %7731, float %7732, float %7733, float %7987, float %7988, float %7989)  ; Dot3(ax,ay,az,bx,by,bz)
  %7992 = fdiv fast float 1.000000e+00, %7991
  %7993 = fmul fast float %7992, %7990
  %7994 = fmul fast float %7993, %7987
  %7995 = fmul fast float %7993, %7988
  %7996 = fmul fast float %7993, %7989
  %7997 = fadd fast float %7712, %7994
  %7998 = fadd fast float %7713, %7995
  %7999 = fadd fast float %7714, %7996
  %8000 = call float @dx.op.dot3.f32(i32 55, float %7997, float %7998, float %7999, float %7671, float %7672, float %7673)  ; Dot3(ax,ay,az,bx,by,bz)
  %8001 = fdiv fast float %8000, %7711
  %8002 = call float @dx.op.binary.f32(i32 35, float %8001, float -1.000000e+00)  ; FMax(a,b)
  %8003 = call float @dx.op.binary.f32(i32 36, float %8002, float 1.000000e+00)  ; FMin(a,b)
  %8004 = fmul fast float %8003, %7671
  %8005 = fmul fast float %8003, %7672
  %8006 = fmul fast float %8003, %7673
  %8007 = fsub fast float %7679, %155
  %8008 = fadd fast float %8007, %8004
  %8009 = fsub fast float %7680, %156
  %8010 = fadd fast float %8009, %8005
  %8011 = fsub fast float %7681, %157
  %8012 = fadd fast float %8011, %8006
  %8013 = call float @dx.op.dot3.f32(i32 55, float %8008, float %8010, float %8012, float %8008, float %8010, float %8012)  ; Dot3(ax,ay,az,bx,by,bz)
  %8014 = call float @dx.op.unary.f32(i32 25, float %8013)  ; Rsqrt(value)
  %8015 = fmul fast float %8008, %8014
  %8016 = fmul fast float %8010, %8014
  %8017 = fmul fast float %8012, %8014
  %8018 = fsub fast float %8015, %2598
  %8019 = fsub fast float %8016, %2599
  %8020 = fsub fast float %8017, %2600
  %8021 = call float @dx.op.dot3.f32(i32 55, float %8018, float %8019, float %8020, float %8018, float %8019, float %8020)  ; Dot3(ax,ay,az,bx,by,bz)
  %8022 = call float @dx.op.unary.f32(i32 25, float %8021)  ; Rsqrt(value)
  %8023 = fmul fast float %8018, %8022
  %8024 = fmul fast float %8019, %8022
  %8025 = fmul fast float %8020, %8022
  %8026 = call float @dx.op.dot3.f32(i32 55, float %8015, float %8016, float %8017, float %2570, float %2571, float %2572)  ; Dot3(ax,ay,az,bx,by,bz)
  %8027 = call float @dx.op.dot3.f32(i32 55, float %2755, float %2756, float %2757, float %8023, float %8024, float %8025)  ; Dot3(ax,ay,az,bx,by,bz)
  %8028 = fmul fast float %8014, %7676
  %8029 = fmul fast float %8028, %8028
  %8030 = bitcast float %8029 to i32
  %8031 = ashr i32 %8030, 1
  %8032 = sub nsw i32 1597463007, %8031
  %8033 = bitcast i32 %8032 to float
  %8034 = fmul fast float %8033, %8026
  %8035 = fmul fast float %8034, %8034
  %8036 = fsub fast float 1.000000e+00, %8035
  %8037 = fmul fast float %8026, %8029
  %8038 = call float @dx.op.unary.f32(i32 7, float %8037)  ; Saturate(value)
  %8039 = fmul fast float %8034, 5.000000e-01
  %8040 = fadd fast float %8039, 5.000000e-01
  %8041 = fmul fast float %8040, %8029
  %8042 = call float @dx.op.unary.f32(i32 7, float %8041)  ; Saturate(value)
  %8043 = bitcast float %8042 to i32
  %8044 = ashr i32 %8043, 1
  %8045 = add nsw i32 %8044, 532487669
  %8046 = bitcast i32 %8045 to float
  %8047 = fmul fast float %8046, %8042
  %8048 = fcmp fast ogt float %8036, 0.000000e+00
  %8049 = select i1 %8048, float %8047, float %8038
  %8050 = call float @dx.op.unary.f32(i32 7, float %8026)  ; Saturate(value)
  %8051 = fmul fast float %8050, %8050
  %8052 = fmul fast float %8051, %2796
  %8053 = call float @dx.op.unary.f32(i32 7, float %8052)  ; Saturate(value)
  %8054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %8055 = extractvalue %dx.types.CBufRet.f32 %8054, 0
  %8056 = bitcast float %8055 to i32
  %8057 = lshr i32 %8056, 8
  %8058 = and i32 %8057, 255
  %8059 = uitofp i32 %8058 to float
  %8060 = fptoui float %8059 to i32
  %8061 = and i32 %8060, 8
  %8062 = icmp ne i32 %8061, 0
  %8063 = select i1 %8062, float %8053, float 1.000000e+00
  %8064 = fmul fast float %8063, %8049
  %8065 = call float @dx.op.dot3.f32(i32 55, float %7671, float %7672, float %7673, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %8066 = call float @dx.op.dot3.f32(i32 55, float %7671, float %7672, float %7673, float %7725, float %7726, float %7727)  ; Dot3(ax,ay,az,bx,by,bz)
  %8067 = call float @dx.op.dot3.f32(i32 55, float %2765, float %2766, float %2767, float %7725, float %7726, float %7727)  ; Dot3(ax,ay,az,bx,by,bz)
  %8068 = fmul fast float %8065, %8065
  %8069 = fsub fast float %7711, %8068
  %8070 = fmul fast float %8067, %8065
  %8071 = fsub fast float %8070, %8066
  %8072 = fdiv fast float %8071, %8069
  %8073 = call float @dx.op.binary.f32(i32 35, float %8072, float -1.500000e+00)  ; FMax(a,b)
  %8074 = call float @dx.op.binary.f32(i32 36, float %8073, float 1.500000e+00)  ; FMin(a,b)
  %8075 = fmul fast float %8074, %8074
  %8076 = fmul fast float %8075, 0x3FC2F68380000000
  %8077 = fmul fast float %8076, %8074
  %8078 = fsub fast float %8074, %8077
  %8079 = fmul fast float %8078, %7671
  %8080 = fmul fast float %8078, %7672
  %8081 = fmul fast float %8078, %7673
  %8082 = fadd fast float %8079, %7722
  %8083 = fadd fast float %8080, %7723
  %8084 = fadd fast float %8081, %7724
  %8085 = fsub fast float %8082, %155
  %8086 = fsub fast float %8083, %156
  %8087 = fsub fast float %8084, %157
  %8088 = call float @dx.op.dot3.f32(i32 55, float %8085, float %8086, float %8087, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %8089 = fmul fast float %8088, %2765
  %8090 = fmul fast float %8088, %2766
  %8091 = fmul fast float %8088, %2767
  %8092 = fsub fast float %8089, %8085
  %8093 = fsub fast float %8090, %8086
  %8094 = fsub fast float %8091, %8087
  %8095 = call float @dx.op.dot3.f32(i32 55, float %8092, float %8093, float %8094, float %8092, float %8093, float %8094)  ; Dot3(ax,ay,az,bx,by,bz)
  %8096 = bitcast float %8095 to i32
  %8097 = ashr i32 %8096, 1
  %8098 = sub nsw i32 1597463007, %8097
  %8099 = bitcast i32 %8098 to float
  %8100 = fmul fast float %8099, %7676
  %8101 = call float @dx.op.dot3.f32(i32 55, float %8085, float %8086, float %8087, float %8085, float %8086, float %8087)  ; Dot3(ax,ay,az,bx,by,bz)
  %8102 = bitcast float %8101 to i32
  %8103 = ashr i32 %8102, 1
  %8104 = sub nsw i32 1597463007, %8103
  %8105 = bitcast i32 %8104 to float
  %8106 = fmul fast float %8100, %8100
  %8107 = fadd fast float %8106, 1.250000e-01
  %8108 = call float @dx.op.unary.f32(i32 25, float %8107)  ; Rsqrt(value)
  %8109 = fmul fast float %8100, %8108
  %8110 = fmul fast float %8092, %8109
  %8111 = fmul fast float %8093, %8109
  %8112 = fmul fast float %8094, %8109
  %8113 = fadd fast float %8085, %8110
  %8114 = fadd fast float %8086, %8111
  %8115 = fadd fast float %8087, %8112
  %8116 = call float @dx.op.dot3.f32(i32 55, float %8113, float %8114, float %8115, float %8113, float %8114, float %8115)  ; Dot3(ax,ay,az,bx,by,bz)
  %8117 = call float @dx.op.unary.f32(i32 25, float %8116)  ; Rsqrt(value)
  %8118 = fmul fast float %8113, %8117
  %8119 = fmul fast float %8114, %8117
  %8120 = fmul fast float %8115, %8117
  %8121 = fsub fast float %8118, %2598
  %8122 = fsub fast float %8119, %2599
  %8123 = fsub fast float %8120, %2600
  %8124 = call float @dx.op.dot3.f32(i32 55, float %8121, float %8122, float %8123, float %8121, float %8122, float %8123)  ; Dot3(ax,ay,az,bx,by,bz)
  %8125 = call float @dx.op.unary.f32(i32 25, float %8124)  ; Rsqrt(value)
  %8126 = fmul fast float %8121, %8125
  %8127 = fmul fast float %8122, %8125
  %8128 = fmul fast float %8123, %8125
  %8129 = call float @dx.op.dot3.f32(i32 55, float %2570, float %2571, float %2572, float %8126, float %8127, float %8128)  ; Dot3(ax,ay,az,bx,by,bz)
  %8130 = fmul fast float %8129, %8129
  %8131 = call float @dx.op.unary.f32(i32 6, float %8026)  ; FAbs(value)
  %8132 = fsub fast float 1.000000e+00, %2787
  %8133 = fmul fast float %2760, %2760
  %8134 = fmul fast float %8133, %8132
  %8135 = fadd fast float %8134, %2787
  %8136 = bitcast float %8135 to i32
  %8137 = ashr i32 %8136, 1
  %8138 = add nsw i32 %8137, 532487669
  %8139 = bitcast i32 %8138 to float
  %8140 = fadd fast float %8139, %2760
  %8141 = fmul fast float %2787, %8130
  %8142 = fsub fast float 1.000000e+00, %8130
  %8143 = fadd fast float %8142, %8141
  %8144 = fmul fast float %8131, %8131
  %8145 = fmul fast float %8144, %8132
  %8146 = fadd fast float %8145, %2787
  %8147 = bitcast float %8146 to i32
  %8148 = ashr i32 %8147, 1
  %8149 = add nsw i32 %8148, 532487669
  %8150 = bitcast i32 %8149 to float
  %8151 = fadd fast float %8150, %8131
  %8152 = fmul fast float %8143, %8143
  %8153 = fmul fast float %8152, %8140
  %8154 = fmul fast float %8153, %8151
  %8155 = fdiv fast float 1.000000e+00, %8154
  %8156 = bitcast float %2787 to i32
  %8157 = sitofp i32 %8156 to float
  %8158 = fmul fast float %8157, 0x3FE7F73180000000
  %8159 = fadd fast float %8158, 0x41AFE27C40000000
  %8160 = fptosi float %8159 to i32
  %8161 = bitcast i32 %8160 to float
  %8162 = fmul fast float %7676, 0x3FD80E9D60000000
  %8163 = fmul fast float %8162, %8105
  %8164 = fadd fast float %8161, %8163
  %8165 = bitcast float %8164 to i32
  %8166 = sub nsw i32 2129859010, %8165
  %8167 = bitcast i32 %8166 to float
  %8168 = fmul fast float %2787, %8155
  %8169 = fmul fast float %8168, %8161
  %8170 = fmul fast float %8169, %8167
  %8171 = call float @dx.op.unary.f32(i32 6, float %8027)  ; FAbs(value)
  %8172 = fsub fast float 1.000000e+00, %8171
  %8173 = bitcast float %8172 to i32
  %8174 = sitofp i32 %8173 to float
  %8175 = fmul fast float %8174, 5.000000e+00
  %8176 = fadd fast float %8175, 0xC1EFBF8940000000
  %8177 = fptosi float %8176 to i32
  %8178 = bitcast i32 %8177 to float
  %8179 = fmul fast float %8178, %2650
  %8180 = fmul fast float %8178, %2651
  %8181 = fmul fast float %8178, %3861
  %8182 = fadd fast float %8179, %2591
  %8183 = fadd fast float %8180, %2592
  %8184 = fadd fast float %8181, %2758
  %8185 = fmul fast float %8026, 9.843750e-01
  %8186 = fmul fast float %2699, 9.843750e-01
  %8187 = fadd fast float %8185, 7.812500e-03
  %8188 = fadd fast float %8186, 7.812500e-03
  %8189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %8187, float %8188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8190 = extractvalue %dx.types.ResRet.f32 %8189, 2
  %8191 = extractvalue %dx.types.ResRet.f32 %8189, 3
  %8192 = fmul fast float %8190, %2591
  %8193 = fmul fast float %8190, %2592
  %8194 = fmul fast float %8190, %2758
  %8195 = fadd fast float %8192, %8191
  %8196 = fadd fast float %8193, %8191
  %8197 = fadd fast float %8194, %8191
  %8198 = call float @dx.op.binary.f32(i32 35, float %8196, float %8197)  ; FMax(a,b)
  %8199 = call float @dx.op.binary.f32(i32 35, float %8195, float %8198)  ; FMax(a,b)
  %8200 = fsub fast float 1.000000e+00, %8199
  %8201 = fsub fast float -0.000000e+00, %2570
  %8202 = fsub fast float -0.000000e+00, %2571
  %8203 = fsub fast float -0.000000e+00, %2572
  %8204 = call float @dx.op.dot3.f32(i32 55, float %7731, float %7732, float %7733, float %8201, float %8202, float %8203)  ; Dot3(ax,ay,az,bx,by,bz)
  %8205 = call float @dx.op.unary.f32(i32 7, float %8204)  ; Saturate(value)
  %8206 = fmul fast float %8205, 9.843750e-01
  %8207 = fadd fast float %8206, 7.812500e-03
  %8208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %8207, float %8188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8209 = extractvalue %dx.types.ResRet.f32 %8208, 2
  %8210 = extractvalue %dx.types.ResRet.f32 %8208, 3
  %8211 = fmul fast float %2592, 0x4012D0A400000000
  %8212 = fadd fast float %8211, 0x3FDB6377A0000000
  %8213 = fmul fast float %2784, %8212
  %8214 = call float @dx.op.unary.f32(i32 7, float %8213)  ; Saturate(value)
  %8215 = call float @dx.op.dot3.f32(i32 55, float %7671, float %7672, float %7673, float %2598, float %2599, float %2600)  ; Dot3(ax,ay,az,bx,by,bz)
  %8216 = call float @dx.op.dot3.f32(i32 55, float %2598, float %2599, float %2600, float %7725, float %7726, float %7727)  ; Dot3(ax,ay,az,bx,by,bz)
  %8217 = fmul fast float %8215, %8215
  %8218 = fsub fast float %7711, %8217
  %8219 = fmul fast float %8216, %8215
  %8220 = fsub fast float %8219, %8066
  %8221 = fdiv fast float %8220, %8218
  %8222 = call float @dx.op.binary.f32(i32 35, float %8221, float -1.500000e+00)  ; FMax(a,b)
  %8223 = call float @dx.op.binary.f32(i32 36, float %8222, float 1.500000e+00)  ; FMin(a,b)
  %8224 = fmul fast float %8223, %8223
  %8225 = fmul fast float %8224, 0x3FC2F68380000000
  %8226 = fmul fast float %8225, %8223
  %8227 = fsub fast float %8223, %8226
  %8228 = fmul fast float %8227, %7671
  %8229 = fmul fast float %8227, %7672
  %8230 = fmul fast float %8227, %7673
  %8231 = fadd fast float %8228, %7722
  %8232 = fadd fast float %8229, %7723
  %8233 = fadd fast float %8230, %7724
  %8234 = fsub fast float %8231, %155
  %8235 = fsub fast float %8232, %156
  %8236 = fsub fast float %8233, %157
  %8237 = call float @dx.op.dot3.f32(i32 55, float %8234, float %8235, float %8236, float %2598, float %2599, float %2600)  ; Dot3(ax,ay,az,bx,by,bz)
  %8238 = fmul fast float %8237, %2598
  %8239 = fmul fast float %8237, %2599
  %8240 = fmul fast float %8237, %2600
  %8241 = fsub fast float %8238, %8234
  %8242 = fsub fast float %8239, %8235
  %8243 = fsub fast float %8240, %8236
  %8244 = call float @dx.op.dot3.f32(i32 55, float %8241, float %8242, float %8243, float %8241, float %8242, float %8243)  ; Dot3(ax,ay,az,bx,by,bz)
  %8245 = bitcast float %8244 to i32
  %8246 = ashr i32 %8245, 1
  %8247 = sub nsw i32 1597463007, %8246
  %8248 = bitcast i32 %8247 to float
  %8249 = fmul fast float %8248, %7676
  %8250 = fmul fast float %8249, %8249
  %8251 = fadd fast float %8250, 1.250000e-01
  %8252 = call float @dx.op.unary.f32(i32 25, float %8251)  ; Rsqrt(value)
  %8253 = fmul fast float %8249, %8252
  %8254 = fmul fast float %8241, %8253
  %8255 = fmul fast float %8242, %8253
  %8256 = fmul fast float %8243, %8253
  %8257 = fadd fast float %8234, %8254
  %8258 = fadd fast float %8235, %8255
  %8259 = fadd fast float %8236, %8256
  %8260 = call float @dx.op.dot3.f32(i32 55, float %8257, float %8258, float %8259, float %8257, float %8258, float %8259)  ; Dot3(ax,ay,az,bx,by,bz)
  %8261 = call float @dx.op.unary.f32(i32 25, float %8260)  ; Rsqrt(value)
  %8262 = fmul fast float %8257, %8261
  %8263 = fmul fast float %8258, %8261
  %8264 = fmul fast float %8259, %8261
  %8265 = fsub fast float %8262, %2765
  %8266 = fsub fast float %8263, %2766
  %8267 = fsub fast float %8264, %2767
  %8268 = call float @dx.op.dot3.f32(i32 55, float %8265, float %8266, float %8267, float %8265, float %8266, float %8267)  ; Dot3(ax,ay,az,bx,by,bz)
  %8269 = call float @dx.op.unary.f32(i32 25, float %8268)  ; Rsqrt(value)
  %8270 = fmul fast float %8265, %8269
  %8271 = fmul fast float %8266, %8269
  %8272 = fmul fast float %8267, %8269
  %8273 = call float @dx.op.dot3.f32(i32 55, float %8201, float %8202, float %8203, float %8270, float %8271, float %8272)  ; Dot3(ax,ay,az,bx,by,bz)
  %8274 = fmul fast float %8273, %8273
  %8275 = call float @dx.op.unary.f32(i32 6, float %8205)  ; FAbs(value)
  %8276 = call float @dx.op.binary.f32(i32 35, float %8214, float 0x3F847AE140000000)  ; FMax(a,b)
  %8277 = fmul fast float %8276, %8276
  %8278 = fmul fast float %8277, %8277
  %8279 = fsub fast float 1.000000e+00, %8278
  %8280 = fmul fast float %8278, %8274
  %8281 = fsub fast float 1.000000e+00, %8274
  %8282 = fadd fast float %8281, %8280
  %8283 = bitcast float %8278 to i32
  %8284 = sitofp i32 %8283 to float
  %8285 = fmul fast float %8284, 0x3FE7F73180000000
  %8286 = fadd fast float %8285, 0x41AFE27C40000000
  %8287 = fptosi float %8286 to i32
  %8288 = bitcast i32 %8287 to float
  br i1 %7709, label %8289, label %8334

; <label>:8289                                    ; preds = %7983
  %8290 = fmul fast float %8282, %8282
  %8291 = fmul fast float %8133, %8279
  %8292 = fadd fast float %8291, %8278
  %8293 = bitcast float %8292 to i32
  %8294 = ashr i32 %8293, 1
  %8295 = add nsw i32 %8294, 532487669
  %8296 = bitcast i32 %8295 to float
  %8297 = fadd fast float %8296, %2760
  %8298 = fmul fast float %8290, %8297
  %8299 = fmul fast float %8275, %8275
  %8300 = fmul fast float %8299, %8279
  %8301 = fadd fast float %8300, %8278
  %8302 = bitcast float %8301 to i32
  %8303 = ashr i32 %8302, 1
  %8304 = add nsw i32 %8303, 532487669
  %8305 = bitcast i32 %8304 to float
  %8306 = fadd fast float %8305, %8275
  %8307 = fmul fast float %8298, %8306
  %8308 = fdiv fast float 1.000000e+00, %8307
  %8309 = fmul fast float %8278, %8308
  %8310 = fmul fast float %8309, %8288
  %8311 = call float @dx.op.dot3.f32(i32 55, float %8234, float %8235, float %8236, float %8234, float %8235, float %8236)  ; Dot3(ax,ay,az,bx,by,bz)
  %8312 = bitcast float %8311 to i32
  %8313 = ashr i32 %8312, 1
  %8314 = sub nsw i32 1597463007, %8313
  %8315 = bitcast i32 %8314 to float
  %8316 = fmul fast float %8162, %8315
  %8317 = fadd fast float %8288, %8316
  %8318 = bitcast float %8317 to i32
  %8319 = sub nsw i32 2129859010, %8318
  %8320 = bitcast i32 %8319 to float
  %8321 = fmul fast float %8310, %8320
  %8322 = fmul fast float %8209, %2591
  %8323 = fadd fast float %8322, %8210
  %8324 = fmul fast float %8209, %2592
  %8325 = fadd fast float %8324, %8210
  %8326 = fmul fast float %8209, %2758
  %8327 = fadd fast float %8326, %8210
  %8328 = call float @dx.op.binary.f32(i32 35, float %8325, float %8327)  ; FMax(a,b)
  %8329 = call float @dx.op.binary.f32(i32 35, float %8323, float %8328)  ; FMax(a,b)
  %8330 = fsub fast float 1.000000e+00, %8329
  %8331 = fmul fast float %8205, %7738
  %8332 = fmul fast float %8331, %8330
  %8333 = fmul fast float %8332, %8321
  br label %8334

; <label>:8334                                    ; preds = %8289, %7983
  %8335 = phi float [ %8333, %8289 ], [ 0.000000e+00, %7983 ]
  %8336 = fmul fast float %8200, %8064
  %8337 = fmul fast float %8182, %8064
  %8338 = fmul fast float %8337, %8170
  %8339 = fmul fast float %8183, %8064
  %8340 = fmul fast float %8339, %8170
  %8341 = fmul fast float %8184, %8064
  %8342 = fmul fast float %8341, %8170
  %8343 = fadd fast float %8335, %8338
  %8344 = fadd fast float %8335, %8340
  %8345 = fadd fast float %8335, %8342
  %8346 = fmul fast float %8336, %7984
  %8347 = fmul fast float %8336, %7985
  %8348 = fmul fast float %8336, %7986
  %8349 = fadd fast float %8346, %7645
  %8350 = fadd fast float %8347, %7646
  %8351 = fadd fast float %8348, %7647
  %8352 = fmul fast float %8343, %7984
  %8353 = fmul fast float %8344, %7985
  %8354 = fmul fast float %8345, %7986
  %8355 = fadd fast float %8352, %7642
  %8356 = fadd fast float %8353, %7643
  %8357 = fadd fast float %8354, %7644
  %8358 = fadd fast float %8346, %7639
  %8359 = fadd fast float %8347, %7640
  %8360 = fadd fast float %8348, %7641
  %8361 = fadd fast float %8352, %7636
  %8362 = fadd fast float %8353, %7637
  %8363 = fadd fast float %8354, %7638
  %8364 = fadd fast float %8346, %7633
  %8365 = fadd fast float %8347, %7634
  %8366 = fadd fast float %8348, %7635
  %8367 = fadd fast float %8352, %7630
  %8368 = fadd fast float %8353, %7631
  %8369 = fadd fast float %8354, %7632
  br label %8370

; <label>:8370                                    ; preds = %8334, %7978
  %8371 = phi float [ %7630, %7978 ], [ %8367, %8334 ]
  %8372 = phi float [ %7631, %7978 ], [ %8368, %8334 ]
  %8373 = phi float [ %7632, %7978 ], [ %8369, %8334 ]
  %8374 = phi float [ %7633, %7978 ], [ %8364, %8334 ]
  %8375 = phi float [ %7634, %7978 ], [ %8365, %8334 ]
  %8376 = phi float [ %7635, %7978 ], [ %8366, %8334 ]
  %8377 = phi float [ %7636, %7978 ], [ %8361, %8334 ]
  %8378 = phi float [ %7637, %7978 ], [ %8362, %8334 ]
  %8379 = phi float [ %7638, %7978 ], [ %8363, %8334 ]
  %8380 = phi float [ %7639, %7978 ], [ %8358, %8334 ]
  %8381 = phi float [ %7640, %7978 ], [ %8359, %8334 ]
  %8382 = phi float [ %7641, %7978 ], [ %8360, %8334 ]
  %8383 = phi float [ %7642, %7978 ], [ %8355, %8334 ]
  %8384 = phi float [ %7643, %7978 ], [ %8356, %8334 ]
  %8385 = phi float [ %7644, %7978 ], [ %8357, %8334 ]
  %8386 = phi float [ %7645, %7978 ], [ %8349, %8334 ]
  %8387 = phi float [ %7646, %7978 ], [ %8350, %8334 ]
  %8388 = phi float [ %7647, %7978 ], [ %8351, %8334 ]
  %8389 = bitcast i32 %7620 to float
  %8390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8391 = extractvalue %dx.types.CBufRet.f32 %8390, 1
  %8392 = bitcast float %8391 to i32
  %8393 = and i32 %8392, 65535
  %8394 = icmp eq i32 %8393, 65535
  br i1 %8394, label %8395, label %8397

; <label>:8395                                    ; preds = %8370
  %8396 = call float @dx.op.binary.f32(i32 35, float %8389, float %7979)  ; FMax(a,b)
  br label %8400

; <label>:8397                                    ; preds = %8370
  %8398 = icmp eq i32 %8393, %7649
  %8399 = select i1 %8398, float %7979, float %8389
  br label %8400

; <label>:8400                                    ; preds = %8397, %8395
  %8401 = phi float [ %8396, %8395 ], [ %8399, %8397 ]
  %8402 = extractvalue %dx.types.CBufRet.f32 %8390, 0
  %8403 = bitcast float %8402 to i32
  %8404 = lshr i32 %8403, 8
  %8405 = and i32 %8404, 255
  %8406 = uitofp i32 %8405 to float
  %8407 = fptoui float %8406 to i32
  %8408 = icmp eq i32 %8407, 15
  %8409 = bitcast float %8401 to i32
  %8410 = select i1 %8408, i32 %8409, i32 %7620
  %8411 = add i32 %7803, %7625
  %8412 = add i32 %7805, %7626
  %8413 = add i32 %7807, %7627
  %8414 = add i32 %7809, %7628
  br label %7814

; <label>:8415                                    ; preds = %7814
  br label %8416

; <label>:8416                                    ; preds = %8415, %7566
  %8417 = phi i32 [ %7567, %7566 ], [ %7815, %8415 ]
  %8418 = phi i32 [ %7568, %7566 ], [ %7804, %8415 ]
  %8419 = phi i32 [ %7569, %7566 ], [ %7806, %8415 ]
  %8420 = phi i32 [ %7570, %7566 ], [ %7808, %8415 ]
  %8421 = phi i32 [ %7571, %7566 ], [ %7810, %8415 ]
  %8422 = phi i32 [ %7572, %7566 ], [ %7816, %8415 ]
  %8423 = phi i32 [ %7573, %7566 ], [ %7817, %8415 ]
  %8424 = phi i32 [ %7574, %7566 ], [ %7818, %8415 ]
  %8425 = phi i32 [ %7575, %7566 ], [ %7819, %8415 ]
  %8426 = phi float [ %7577, %7566 ], [ %7820, %8415 ]
  %8427 = phi float [ %7578, %7566 ], [ %7821, %8415 ]
  %8428 = phi float [ %7579, %7566 ], [ %7822, %8415 ]
  %8429 = phi float [ %7580, %7566 ], [ %7823, %8415 ]
  %8430 = phi float [ %7581, %7566 ], [ %7824, %8415 ]
  %8431 = phi float [ %7582, %7566 ], [ %7825, %8415 ]
  %8432 = phi float [ %7583, %7566 ], [ %7826, %8415 ]
  %8433 = phi float [ %7584, %7566 ], [ %7827, %8415 ]
  %8434 = phi float [ %7585, %7566 ], [ %7828, %8415 ]
  %8435 = phi float [ %7586, %7566 ], [ %7829, %8415 ]
  %8436 = phi float [ %7587, %7566 ], [ %7830, %8415 ]
  %8437 = phi float [ %7588, %7566 ], [ %7831, %8415 ]
  %8438 = phi float [ %7589, %7566 ], [ %7832, %8415 ]
  %8439 = phi float [ %7590, %7566 ], [ %7833, %8415 ]
  %8440 = phi float [ %7591, %7566 ], [ %7834, %8415 ]
  %8441 = phi float [ %7592, %7566 ], [ %7835, %8415 ]
  %8442 = phi float [ %7593, %7566 ], [ %7836, %8415 ]
  %8443 = phi float [ %7594, %7566 ], [ %7837, %8415 ]
  %8444 = add i32 %7576, 1
  %8445 = icmp ugt i32 %8444, %7563
  br i1 %8445, label %8446, label %7566

; <label>:8446                                    ; preds = %8416
  br label %8447

; <label>:8447                                    ; preds = %8446, %7516
  %8448 = phi i32 [ %7495, %7516 ], [ %8417, %8446 ]
  %8449 = phi i32 [ 0, %7516 ], [ %8418, %8446 ]
  %8450 = phi i32 [ 0, %7516 ], [ %8419, %8446 ]
  %8451 = phi i32 [ 0, %7516 ], [ %8420, %8446 ]
  %8452 = phi i32 [ 0, %7516 ], [ %8421, %8446 ]
  %8453 = phi i32 [ 0, %7516 ], [ %8422, %8446 ]
  %8454 = phi i32 [ 0, %7516 ], [ %8423, %8446 ]
  %8455 = phi i32 [ 0, %7516 ], [ %8424, %8446 ]
  %8456 = phi i32 [ 0, %7516 ], [ %8425, %8446 ]
  %8457 = phi float [ %7497, %7516 ], [ %8426, %8446 ]
  %8458 = phi float [ %7498, %7516 ], [ %8427, %8446 ]
  %8459 = phi float [ %7499, %7516 ], [ %8428, %8446 ]
  %8460 = phi float [ %7500, %7516 ], [ %8429, %8446 ]
  %8461 = phi float [ %7501, %7516 ], [ %8430, %8446 ]
  %8462 = phi float [ %7502, %7516 ], [ %8431, %8446 ]
  %8463 = phi float [ %7503, %7516 ], [ %8432, %8446 ]
  %8464 = phi float [ %7504, %7516 ], [ %8433, %8446 ]
  %8465 = phi float [ %7505, %7516 ], [ %8434, %8446 ]
  %8466 = phi float [ %7506, %7516 ], [ %8435, %8446 ]
  %8467 = phi float [ %7507, %7516 ], [ %8436, %8446 ]
  %8468 = phi float [ %7508, %7516 ], [ %8437, %8446 ]
  %8469 = phi float [ %7510, %7516 ], [ %8438, %8446 ]
  %8470 = phi float [ %7511, %7516 ], [ %8439, %8446 ]
  %8471 = phi float [ %7512, %7516 ], [ %8440, %8446 ]
  %8472 = phi float [ %7506, %7516 ], [ %8441, %8446 ]
  %8473 = phi float [ %7507, %7516 ], [ %8442, %8446 ]
  %8474 = phi float [ %7508, %7516 ], [ %8443, %8446 ]
  %8475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %8476 = extractvalue %dx.types.CBufRet.f32 %8475, 1
  %8477 = bitcast float %8476 to i32
  %8478 = lshr i32 %8477, 24
  %8479 = uitofp i32 %8478 to float
  %8480 = fptoui float %8479 to i32
  %8481 = icmp eq i32 %8480, 1
  %8482 = select i1 %8481, i32 %8453, i32 %8449
  %8483 = uitofp i32 %8482 to float
  %8484 = fptoui float %8483 to i32
  %8485 = shl i32 %8484, 8
  %8486 = select i1 %8481, i32 %8454, i32 %8450
  %8487 = uitofp i32 %8486 to float
  %8488 = fptoui float %8487 to i32
  %8489 = shl i32 %8488, 16
  %8490 = and i32 %8485, 65280
  %8491 = or i32 %8490, %7496
  %8492 = select i1 %8481, i32 %8455, i32 %8451
  %8493 = uitofp i32 %8492 to float
  %8494 = fptoui float %8493 to i32
  %8495 = shl i32 %8494, 24
  %8496 = and i32 %8489, 16711680
  %8497 = or i32 %8491, %8496
  %8498 = or i32 %8497, %8495
  %8499 = select i1 %8481, i32 %8456, i32 %8452
  %8500 = uitofp i32 %8499 to float
  %8501 = fptoui float %8500 to i32
  %8502 = and i32 %8501, 255
  %8503 = and i32 %5652, -256
  %8504 = or i32 %8502, %8503
  %8505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8506 = extractvalue %dx.types.CBufRet.f32 %8505, 0
  %8507 = bitcast float %8506 to i32
  %8508 = lshr i32 %8507, 8
  %8509 = and i32 %8508, 255
  %8510 = uitofp i32 %8509 to float
  %8511 = fptoui float %8510 to i32
  %8512 = icmp eq i32 %8511, 12
  %8513 = select i1 %8512, i32 0, i32 %8448
  br label %8514

; <label>:8514                                    ; preds = %8447, %7494
  %8515 = phi i32 [ %5652, %7494 ], [ %8504, %8447 ]
  %8516 = phi i32 [ 0, %7494 ], [ %8498, %8447 ]
  %8517 = phi i32 [ %7495, %7494 ], [ %8513, %8447 ]
  %8518 = phi float [ %7497, %7494 ], [ %8457, %8447 ]
  %8519 = phi float [ %7498, %7494 ], [ %8458, %8447 ]
  %8520 = phi float [ %7499, %7494 ], [ %8459, %8447 ]
  %8521 = phi float [ %7500, %7494 ], [ %8460, %8447 ]
  %8522 = phi float [ %7501, %7494 ], [ %8461, %8447 ]
  %8523 = phi float [ %7502, %7494 ], [ %8462, %8447 ]
  %8524 = phi float [ %7503, %7494 ], [ %8463, %8447 ]
  %8525 = phi float [ %7504, %7494 ], [ %8464, %8447 ]
  %8526 = phi float [ %7505, %7494 ], [ %8465, %8447 ]
  %8527 = phi float [ %7506, %7494 ], [ %8466, %8447 ]
  %8528 = phi float [ %7507, %7494 ], [ %8467, %8447 ]
  %8529 = phi float [ %7508, %7494 ], [ %8468, %8447 ]
  %8530 = phi float [ %7510, %7494 ], [ %8469, %8447 ]
  %8531 = phi float [ %7511, %7494 ], [ %8470, %8447 ]
  %8532 = phi float [ %7512, %7494 ], [ %8471, %8447 ]
  %8533 = phi float [ %7506, %7494 ], [ %8472, %8447 ]
  %8534 = phi float [ %7507, %7494 ], [ %8473, %8447 ]
  %8535 = phi float [ %7508, %7494 ], [ %8474, %8447 ]
  %8536 = and i32 %2649, 255
  %8537 = uitofp i32 %8536 to float
  %8538 = fmul fast float %8537, 0x3F70101020000000
  %8539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %8540 = extractvalue %dx.types.CBufRet.f32 %8539, 2
  %8541 = extractvalue %dx.types.CBufRet.f32 %8539, 3
  %8542 = fmul fast float %125, %8540
  %8543 = fmul fast float %127, %8541
  %8544 = fsub fast float 1.000000e+00, %8542
  %8545 = fsub fast float 1.000000e+00, %8543
  %8546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8547 = extractvalue %dx.types.CBufRet.f32 %8546, 0
  %8548 = extractvalue %dx.types.CBufRet.f32 %8546, 1
  %8549 = extractvalue %dx.types.CBufRet.f32 %8546, 2
  %8550 = fmul fast float %8544, %8547
  %8551 = fmul fast float %8544, %8548
  %8552 = fmul fast float %8544, %8549
  %8553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.f32 %8553, 0
  %8555 = extractvalue %dx.types.CBufRet.f32 %8553, 1
  %8556 = extractvalue %dx.types.CBufRet.f32 %8553, 2
  %8557 = fmul fast float %8545, %8554
  %8558 = fmul fast float %8545, %8555
  %8559 = fmul fast float %8545, %8556
  %8560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8561 = extractvalue %dx.types.CBufRet.f32 %8560, 0
  %8562 = extractvalue %dx.types.CBufRet.f32 %8560, 1
  %8563 = extractvalue %dx.types.CBufRet.f32 %8560, 2
  %8564 = fadd fast float %8557, %8561
  %8565 = fadd fast float %8564, %8550
  %8566 = fadd fast float %8558, %8562
  %8567 = fadd fast float %8566, %8551
  %8568 = fadd fast float %8559, %8563
  %8569 = fadd fast float %8568, %8552
  %8570 = fmul fast float %8565, %89
  %8571 = fmul fast float %8567, %89
  %8572 = fmul fast float %8569, %89
  %8573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8574 = extractvalue %dx.types.CBufRet.f32 %8573, 2
  %8575 = extractvalue %dx.types.CBufRet.f32 %8573, 3
  %8576 = fmul fast float %8574, %100
  %8577 = fmul fast float %8575, %101
  %8578 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %45, i32 0, i32 %2659, i32 %2665, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8579 = extractvalue %dx.types.ResRet.f32 %8578, 0
  %8580 = fcmp fast olt float %8579, -1.000000e+00
  %8581 = fcmp fast ogt float %8579, -1.000000e+00
  %8582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8583 = extractvalue %dx.types.CBufRet.f32 %8582, 1
  %8584 = select i1 %8581, float %8583, float 1.000000e+00
  %8585 = fadd fast float %8579, 1.000000e+00
  %8586 = fmul fast float %8584, %8585
  %8587 = call float @dx.op.unary.f32(i32 6, float %8586)  ; FAbs(value)
  %8588 = fsub fast float %8587, %89
  %8589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %8590 = extractvalue %dx.types.CBufRet.f32 %8589, 2
  %8591 = fsub fast float %8588, %8590
  %8592 = extractvalue %dx.types.CBufRet.f32 %8589, 3
  %8593 = fmul fast float %8592, %8538
  %8594 = fmul fast float %8593, %8591
  %8595 = call float @dx.op.unary.f32(i32 7, float %8594)  ; Saturate(value)
  %8596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 356)  ; CBufferLoadLegacy(handle,regIndex)
  %8597 = extractvalue %dx.types.CBufRet.f32 %8596, 1
  %8598 = extractvalue %dx.types.CBufRet.f32 %8596, 0
  %8599 = extractvalue %dx.types.CBufRet.f32 %8596, 3
  %8600 = extractvalue %dx.types.CBufRet.f32 %8596, 2
  %8601 = select i1 %8580, float %8597, float %8599
  %8602 = select i1 %8580, float %8598, float %8600
  %8603 = fsub fast float %8588, %8602
  %8604 = fmul fast float %8603, %8601
  %8605 = fsub fast float 1.000000e+00, %8538
  %8606 = fadd fast float %8605, %8604
  %8607 = call float @dx.op.unary.f32(i32 7, float %8606)  ; Saturate(value)
  %8608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %8609 = extractvalue %dx.types.CBufRet.f32 %8608, 1
  %8610 = extractvalue %dx.types.CBufRet.f32 %8608, 2
  %8611 = fsub fast float 1.000000e+00, %8577
  %8612 = fsub fast float 1.000000e+00, %8576
  %8613 = fmul fast float %8577, %8576
  %8614 = fmul fast float %8613, %8611
  %8615 = fmul fast float %8614, %8612
  %8616 = fmul fast float %8615, %8609
  %8617 = call float @dx.op.unary.f32(i32 23, float %8616)  ; Log(value)
  %8618 = fmul fast float %8617, %8610
  %8619 = call float @dx.op.unary.f32(i32 21, float %8618)  ; Exp(value)
  %8620 = call float @dx.op.unary.f32(i32 7, float %8619)  ; Saturate(value)
  %8621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 66)  ; CBufferLoadLegacy(handle,regIndex)
  %8622 = extractvalue %dx.types.CBufRet.f32 %8621, 2
  %8623 = extractvalue %dx.types.CBufRet.f32 %8621, 3
  %8624 = extractvalue %dx.types.CBufRet.f32 %8621, 0
  %8625 = fsub fast float %89, %8624
  %8626 = extractvalue %dx.types.CBufRet.f32 %8608, 0
  %8627 = fmul fast float %8625, %8626
  %8628 = call float @dx.op.unary.f32(i32 7, float %8627)  ; Saturate(value)
  %8629 = fsub fast float %8623, %8622
  %8630 = fmul fast float %8628, %8629
  %8631 = fadd fast float %8630, %8622
  %8632 = fmul fast float %8631, %8595
  %8633 = fmul fast float %8632, %2570
  %8634 = fmul fast float %8632, %2571
  %8635 = fadd fast float %8633, %8570
  %8636 = fadd fast float %8634, %8571
  %8637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %8638 = extractvalue %dx.types.CBufRet.f32 %8637, 0
  %8639 = extractvalue %dx.types.CBufRet.f32 %8637, 1
  %8640 = extractvalue %dx.types.CBufRet.f32 %8637, 2
  %8641 = extractvalue %dx.types.CBufRet.f32 %8637, 3
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 0
  %8644 = extractvalue %dx.types.CBufRet.f32 %8642, 1
  %8645 = extractvalue %dx.types.CBufRet.f32 %8642, 2
  %8646 = extractvalue %dx.types.CBufRet.f32 %8642, 3
  %8647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8647, 0
  %8649 = extractvalue %dx.types.CBufRet.f32 %8647, 1
  %8650 = extractvalue %dx.types.CBufRet.f32 %8647, 2
  %8651 = extractvalue %dx.types.CBufRet.f32 %8647, 3
  %8652 = fmul fast float %8635, %8638
  %8653 = call float @dx.op.tertiary.f32(i32 46, float %8636, float %8639, float %8652)  ; FMad(a,b,c)
  %8654 = call float @dx.op.tertiary.f32(i32 46, float %8572, float %8640, float %8653)  ; FMad(a,b,c)
  %8655 = fadd fast float %8654, %8641
  %8656 = fmul fast float %8635, %8643
  %8657 = call float @dx.op.tertiary.f32(i32 46, float %8636, float %8644, float %8656)  ; FMad(a,b,c)
  %8658 = call float @dx.op.tertiary.f32(i32 46, float %8572, float %8645, float %8657)  ; FMad(a,b,c)
  %8659 = fadd fast float %8658, %8646
  %8660 = fmul fast float %8635, %8648
  %8661 = call float @dx.op.tertiary.f32(i32 46, float %8636, float %8649, float %8660)  ; FMad(a,b,c)
  %8662 = call float @dx.op.tertiary.f32(i32 46, float %8572, float %8650, float %8661)  ; FMad(a,b,c)
  %8663 = fadd fast float %8662, %8651
  %8664 = fdiv fast float %8655, %8663
  %8665 = fdiv fast float %8659, %8663
  %8666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %8667 = extractvalue %dx.types.CBufRet.f32 %8666, 0
  %8668 = extractvalue %dx.types.CBufRet.f32 %8666, 1
  %8669 = fmul fast float %8667, %8664
  %8670 = fmul fast float %8668, %8665
  %8671 = extractvalue %dx.types.CBufRet.f32 %8666, 2
  %8672 = extractvalue %dx.types.CBufRet.f32 %8666, 3
  %8673 = fadd fast float %8669, %8671
  %8674 = fadd fast float %8670, %8672
  %8675 = call float @dx.op.unary.f32(i32 7, float %8673)  ; Saturate(value)
  %8676 = call float @dx.op.unary.f32(i32 7, float %8674)  ; Saturate(value)
  %8677 = fsub fast float %8675, %8576
  %8678 = fsub fast float %8676, %8577
  %8679 = fmul fast float %8677, %8620
  %8680 = fmul fast float %8678, %8620
  %8681 = fadd fast float %8679, %8576
  %8682 = fadd fast float %8680, %8577
  %8683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %8681, float %8682, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8684 = extractvalue %dx.types.ResRet.f32 %8683, 0
  %8685 = fcmp fast ogt float %8684, -1.000000e+00
  %8686 = select i1 %8685, float %8583, float 1.000000e+00
  %8687 = fadd fast float %8684, 1.000000e+00
  %8688 = fmul fast float %8686, %8687
  %8689 = call float @dx.op.unary.f32(i32 6, float %8688)  ; FAbs(value)
  %8690 = fcmp fast ugt float %8689, %8663
  br i1 %8690, label %8692, label %8691

; <label>:8691                                    ; preds = %8514
  br label %8692

; <label>:8692                                    ; preds = %8691, %8514
  %8693 = phi float [ %8576, %8691 ], [ %8681, %8514 ]
  %8694 = phi float [ %8577, %8691 ], [ %8682, %8514 ]
  %8695 = phi float [ %89, %8691 ], [ %8663, %8514 ]
  %8696 = phi float [ %8587, %8691 ], [ %8689, %8514 ]
  br i1 %117, label %8697, label %9207

; <label>:8697                                    ; preds = %8692
  %8698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %8699 = extractvalue %dx.types.CBufRet.f32 %8698, 0
  %8700 = extractvalue %dx.types.CBufRet.f32 %8698, 1
  %8701 = extractvalue %dx.types.CBufRet.f32 %8698, 2
  %8702 = fcmp fast oge float %8700, %8695
  %8703 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.i32 %8703, 0
  %8705 = and i32 %8704, 65538
  %8706 = icmp eq i32 %8705, 65538
  %8707 = and i1 %8706, %8702
  br i1 %8707, label %8708, label %8789

; <label>:8708                                    ; preds = %8697
  %8709 = extractvalue %dx.types.CBufRet.f32 %8539, 0
  %8710 = extractvalue %dx.types.CBufRet.f32 %8539, 1
  %8711 = fmul fast float %8709, %8693
  %8712 = fmul fast float %8710, %8694
  %8713 = fmul fast float %8711, %8540
  %8714 = fmul fast float %8712, %8541
  %8715 = call float @dx.op.unary.f32(i32 7, float %8713)  ; Saturate(value)
  %8716 = call float @dx.op.unary.f32(i32 7, float %8714)  ; Saturate(value)
  %8717 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %63, float %8715, float %8716, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8718 = extractvalue %dx.types.ResRet.f32 %8717, 0
  %8719 = extractvalue %dx.types.ResRet.f32 %8717, 1
  %8720 = extractvalue %dx.types.ResRet.f32 %8717, 2
  %8721 = extractvalue %dx.types.ResRet.f32 %8717, 3
  %8722 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %63, float %8715, float %8716, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8723 = extractvalue %dx.types.ResRet.f32 %8722, 0
  %8724 = extractvalue %dx.types.ResRet.f32 %8722, 1
  %8725 = extractvalue %dx.types.ResRet.f32 %8722, 2
  %8726 = extractvalue %dx.types.ResRet.f32 %8722, 3
  %8727 = call float @dx.op.binary.f32(i32 35, float %8719, float %8720)  ; FMax(a,b)
  %8728 = call float @dx.op.binary.f32(i32 35, float %8718, float %8727)  ; FMax(a,b)
  %8729 = call float @dx.op.binary.f32(i32 35, float %8728, float %8721)  ; FMax(a,b)
  %8730 = call float @dx.op.binary.f32(i32 36, float %8724, float %8725)  ; FMin(a,b)
  %8731 = call float @dx.op.binary.f32(i32 36, float %8723, float %8730)  ; FMin(a,b)
  %8732 = call float @dx.op.binary.f32(i32 36, float %8731, float %8726)  ; FMin(a,b)
  %8733 = fmul fast float %8729, 2.550000e+02
  %8734 = fadd fast float %8733, 0x3F70101020000000
  %8735 = fptoui float %8734 to i32
  %8736 = fmul fast float %8732, 2.550000e+02
  %8737 = fadd fast float %8736, 0x3F70101020000000
  %8738 = fptoui float %8737 to i32
  %8739 = icmp ult i32 %8735, %8738
  br i1 %8739, label %8740, label %8789

; <label>:8740                                    ; preds = %8708
  %8741 = fadd fast float %8696, -4.000000e+00
  %8742 = call float @dx.op.binary.f32(i32 35, float %8741, float 0.000000e+00)  ; FMax(a,b)
  %8743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8744 = extractvalue %dx.types.CBufRet.f32 %8743, 0
  %8745 = fadd fast float %8744, %8742
  %8746 = extractvalue %dx.types.CBufRet.f32 %8743, 2
  %8747 = fmul fast float %8745, %8746
  %8748 = call float @dx.op.unary.f32(i32 23, float %8747)  ; Log(value)
  %8749 = extractvalue %dx.types.CBufRet.f32 %8743, 3
  %8750 = fmul fast float %8749, %8748
  %8751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8752 = extractvalue %dx.types.CBufRet.f32 %8751, 2
  %8753 = fmul fast float %8750, %8752
  %8754 = call float @dx.op.unary.f32(i32 7, float %8753)  ; Saturate(value)
  %8755 = uitofp i32 %8735 to float
  %8756 = uitofp i32 %8738 to float
  %8757 = fadd fast float %8755, 5.000000e-01
  %8758 = fadd fast float %8756, 5.000000e-01
  %8759 = fmul fast float %8752, %8757
  %8760 = fmul fast float %8752, %8758
  %8761 = fadd fast float %8759, 0x3F0FFB4800000000
  %8762 = fadd fast float %8760, 0xBF0FFB4800000000
  %8763 = call float @dx.op.binary.f32(i32 35, float %8754, float %8761)  ; FMax(a,b)
  %8764 = call float @dx.op.binary.f32(i32 36, float %8763, float %8762)  ; FMin(a,b)
  %8765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8766 = extractvalue %dx.types.CBufRet.f32 %8765, 1
  %8767 = extractvalue %dx.types.CBufRet.f32 %8765, 2
  %8768 = extractvalue %dx.types.CBufRet.f32 %8765, 0
  %8769 = fmul fast float %8766, %8764
  %8770 = fadd fast float %8768, %8769
  %8771 = fadd fast float %8768, %8767
  %8772 = fsub fast float %8766, %8767
  %8773 = fadd fast float %8772, %8768
  %8774 = call float @dx.op.binary.f32(i32 35, float %8770, float %8771)  ; FMax(a,b)
  %8775 = call float @dx.op.binary.f32(i32 36, float %8774, float %8773)  ; FMin(a,b)
  %8776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %61, float %8715, float %8716, float %8775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8777 = extractvalue %dx.types.ResRet.f32 %8776, 0
  %8778 = extractvalue %dx.types.ResRet.f32 %8776, 1
  %8779 = extractvalue %dx.types.ResRet.f32 %8776, 2
  %8780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %61, float %8715, float %8716, float %8775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8781 = extractvalue %dx.types.ResRet.f32 %8780, 0
  %8782 = extractvalue %dx.types.ResRet.f32 %8780, 1
  %8783 = extractvalue %dx.types.ResRet.f32 %8780, 2
  %8784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8785 = extractvalue %dx.types.CBufRet.f32 %8784, 1
  %8786 = fmul fast float %8785, %8781
  %8787 = fmul fast float %8785, %8782
  %8788 = fmul fast float %8785, %8783
  br label %8789

; <label>:8789                                    ; preds = %8740, %8708, %8697
  %8790 = phi float [ 0.000000e+00, %8697 ], [ %8786, %8740 ], [ 0.000000e+00, %8708 ]
  %8791 = phi float [ 0.000000e+00, %8697 ], [ %8787, %8740 ], [ 0.000000e+00, %8708 ]
  %8792 = phi float [ 0.000000e+00, %8697 ], [ %8788, %8740 ], [ 0.000000e+00, %8708 ]
  %8793 = phi float [ 1.000000e+00, %8697 ], [ %8777, %8740 ], [ 1.000000e+00, %8708 ]
  %8794 = phi float [ 1.000000e+00, %8697 ], [ %8778, %8740 ], [ 1.000000e+00, %8708 ]
  %8795 = phi float [ 1.000000e+00, %8697 ], [ %8779, %8740 ], [ 1.000000e+00, %8708 ]
  %8796 = fcmp fast olt float %8538, 1.000000e+00
  %8797 = fcmp fast olt float %8699, %8696
  %8798 = or i1 %8796, %8797
  br i1 %8798, label %8799, label %8963

; <label>:8799                                    ; preds = %8789
  %8800 = lshr i32 %2714, 16
  %8801 = uitofp i32 %8800 to float
  %8802 = fmul fast float %8801, 0x3EF0001000000000
  %8803 = and i32 %2707, 65535
  %8804 = uitofp i32 %8803 to float
  %8805 = fmul fast float %8804, 0x3EF0001000000000
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 3
  %8808 = fadd fast float %8807, 3.000000e+00
  %8809 = and i32 %1877, 16383
  %8810 = lshr i32 %1877, 16
  %8811 = and i32 %8810, 255
  %8812 = mul nuw nsw i32 %8809, 148
  %8813 = add nuw nsw i32 %8812, 60
  %8814 = add nuw nsw i32 %8812, 116
  %8815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %8816 = extractvalue %dx.types.CBufRet.i32 %8815, 0
  %8817 = call i32 @dx.op.binary.i32(i32 40, i32 %8809, i32 %8816)  ; UMin(a,b)
  %8818 = mul i32 %8817, 36
  %8819 = add i32 %8818, 4
  %8820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %8821 = extractvalue %dx.types.CBufRet.f32 %8820, 0
  %8822 = fmul fast float %8805, %8821
  %8823 = fmul fast float %8802, %8821
  %8824 = extractvalue %dx.types.CBufRet.f32 %8820, 1
  %8825 = fadd fast float %8822, %8824
  %8826 = fadd fast float %8823, %8824
  %8827 = icmp eq i32 %8811, 0
  br i1 %8827, label %8888, label %8828

; <label>:8828                                    ; preds = %8799
  br label %8829

; <label>:8829                                    ; preds = %8829, %8828
  %8830 = phi float [ %8873, %8829 ], [ 0.000000e+00, %8828 ]
  %8831 = phi float [ %8883, %8829 ], [ 0.000000e+00, %8828 ]
  %8832 = phi float [ %8884, %8829 ], [ 0.000000e+00, %8828 ]
  %8833 = phi float [ %8885, %8829 ], [ 0.000000e+00, %8828 ]
  %8834 = phi float [ %8877, %8829 ], [ 0.000000e+00, %8828 ]
  %8835 = phi float [ %8878, %8829 ], [ 0.000000e+00, %8828 ]
  %8836 = phi float [ %8879, %8829 ], [ 0.000000e+00, %8828 ]
  %8837 = phi i32 [ %8842, %8829 ], [ %8811, %8828 ]
  %8838 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8837)  ; FirstbitLo(value)
  %8839 = and i32 %8838, 31
  %8840 = shl i32 1, %8839
  %8841 = xor i32 %8840, -1
  %8842 = and i32 %8837, %8841
  %8843 = shl i32 %8838, 2
  %8844 = add i32 %8819, %8843
  %8845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %8844, i32 undef)  ; BufferLoad(srv,index,wot)
  %8846 = extractvalue %dx.types.ResRet.i32 %8845, 0
  %8847 = and i32 %8846, 32767
  %8848 = add i32 %8813, %8843
  %8849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %8848, i32 undef)  ; BufferLoad(srv,index,wot)
  %8850 = extractvalue %dx.types.ResRet.f32 %8849, 0
  %8851 = add i32 %8814, %8843
  %8852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %8851, i32 undef)  ; BufferLoad(srv,index,wot)
  %8853 = extractvalue %dx.types.ResRet.i32 %8852, 0
  %8854 = add i32 %8853, 0
  %8855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %8854, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8855, %dx.types.Handle %61, float %8825, float %8826, float %8850, float undef, i32 0, i32 0, i32 undef, float %8808)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8857 = extractvalue %dx.types.ResRet.f32 %8856, 0
  %8858 = mul nuw nsw i32 %8847, 928
  %8859 = add nuw nsw i32 %8858, 44
  %8860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %8859, i32 undef)  ; BufferLoad(srv,index,wot)
  %8861 = extractvalue %dx.types.ResRet.f32 %8860, 0
  %8862 = add nuw nsw i32 %8858, 48
  %8863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %8862, i32 undef)  ; BufferLoad(srv,index,wot)
  %8864 = extractvalue %dx.types.ResRet.f32 %8863, 0
  %8865 = extractvalue %dx.types.ResRet.f32 %8863, 1
  %8866 = extractvalue %dx.types.ResRet.f32 %8863, 2
  %8867 = add nuw nsw i32 %8858, 60
  %8868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %8867, i32 undef)  ; BufferLoad(srv,index,wot)
  %8869 = extractvalue %dx.types.ResRet.f32 %8868, 0
  %8870 = extractvalue %dx.types.ResRet.f32 %8868, 1
  %8871 = extractvalue %dx.types.ResRet.f32 %8868, 2
  %8872 = fmul fast float %8861, %8857
  %8873 = fadd fast float %8872, %8830
  %8874 = fmul fast float %8864, %8857
  %8875 = fmul fast float %8865, %8857
  %8876 = fmul fast float %8866, %8857
  %8877 = fadd fast float %8874, %8834
  %8878 = fadd fast float %8875, %8835
  %8879 = fadd fast float %8876, %8836
  %8880 = fmul fast float %8869, %8857
  %8881 = fmul fast float %8870, %8857
  %8882 = fmul fast float %8871, %8857
  %8883 = fadd fast float %8880, %8831
  %8884 = fadd fast float %8881, %8832
  %8885 = fadd fast float %8882, %8833
  %8886 = icmp eq i32 %8842, 0
  br i1 %8886, label %8887, label %8829

; <label>:8887                                    ; preds = %8829
  br label %8888

; <label>:8888                                    ; preds = %8887, %8799
  %8889 = phi float [ 0.000000e+00, %8799 ], [ %8873, %8887 ]
  %8890 = phi float [ 0.000000e+00, %8799 ], [ %8883, %8887 ]
  %8891 = phi float [ 0.000000e+00, %8799 ], [ %8884, %8887 ]
  %8892 = phi float [ 0.000000e+00, %8799 ], [ %8885, %8887 ]
  %8893 = phi float [ 0.000000e+00, %8799 ], [ %8877, %8887 ]
  %8894 = phi float [ 0.000000e+00, %8799 ], [ %8878, %8887 ]
  %8895 = phi float [ 0.000000e+00, %8799 ], [ %8879, %8887 ]
  %8896 = fmul fast float %8893, 0x3F847AE140000000
  %8897 = fmul fast float %8894, 0x3F847AE140000000
  %8898 = fmul fast float %8895, 0x3F847AE140000000
  %8899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %8900 = extractvalue %dx.types.CBufRet.f32 %8899, 0
  %8901 = extractvalue %dx.types.CBufRet.f32 %8899, 1
  %8902 = extractvalue %dx.types.CBufRet.f32 %8899, 2
  %8903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %8904 = extractvalue %dx.types.CBufRet.f32 %8903, 0
  %8905 = extractvalue %dx.types.CBufRet.f32 %8903, 1
  %8906 = call float @dx.op.dot3.f32(i32 55, float %8900, float %8901, float %8902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8907 = select i1 %2753, float %8904, float %8900
  %8908 = select i1 %2753, float %8906, float %8901
  %8909 = select i1 %2753, float %8905, float %8902
  %8910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8911 = extractvalue %dx.types.CBufRet.f32 %8910, 0
  %8912 = extractvalue %dx.types.CBufRet.f32 %8910, 1
  %8913 = extractvalue %dx.types.CBufRet.f32 %8910, 2
  %8914 = fadd fast float %8893, %8890
  %8915 = fmul fast float %8914, 0x3F847AE140000000
  %8916 = fadd fast float %8894, %8891
  %8917 = fmul fast float %8916, 0x3F847AE140000000
  %8918 = fadd fast float %8895, %8892
  %8919 = fmul fast float %8918, 0x3F847AE140000000
  %8920 = call float @dx.op.dot3.f32(i32 55, float %8911, float %8912, float %8913, float %2598, float %2599, float %2600)  ; Dot3(ax,ay,az,bx,by,bz)
  %8921 = fcmp fast ogt float %8889, 0.000000e+00
  %8922 = select i1 %8921, float 1.000000e+00, float -1.000000e+00
  %8923 = fmul fast float %8922, 5.000000e-01
  %8924 = fmul fast float %8923, %8920
  %8925 = fmul fast float %8922, %8889
  %8926 = fadd fast float %8924, 4.921875e-01
  %8927 = fadd fast float %8925, -3.125000e-02
  %8928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %63, float %8926, float 0x3FB25F3060000000, float %8927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8929 = extractvalue %dx.types.ResRet.f32 %8928, 0
  %8930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %8931 = extractvalue %dx.types.CBufRet.f32 %8930, 0
  %8932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %8933 = extractvalue %dx.types.CBufRet.f32 %8932, 0
  %8934 = fmul fast float %8933, %8931
  %8935 = extractvalue %dx.types.CBufRet.f32 %8932, 1
  %8936 = fadd fast float %8934, %8935
  %8937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %8938 = extractvalue %dx.types.CBufRet.f32 %8937, 0
  %8939 = fmul fast float %8938, %7509
  %8940 = extractvalue %dx.types.CBufRet.f32 %8937, 1
  %8941 = fadd fast float %8939, %8940
  %8942 = call float @dx.op.unary.f32(i32 7, float %8941)  ; Saturate(value)
  %8943 = extractvalue %dx.types.CBufRet.f32 %8930, 3
  %8944 = extractvalue %dx.types.CBufRet.f32 %8932, 2
  %8945 = fmul fast float %8944, %8943
  %8946 = extractvalue %dx.types.CBufRet.f32 %8932, 3
  %8947 = fadd fast float %8945, %8946
  %8948 = fmul fast float %8929, 0x400921FB60000000
  %8949 = fmul fast float %8948, %8936
  %8950 = fmul fast float %8949, %8942
  %8951 = fmul fast float %8907, %8896
  %8952 = fmul fast float %8951, %8950
  %8953 = fmul fast float %8908, %8897
  %8954 = fmul fast float %8953, %8950
  %8955 = fmul fast float %8909, %8898
  %8956 = fmul fast float %8955, %8950
  %8957 = fmul fast float %8896, %3825
  %8958 = fmul fast float %8957, %8947
  %8959 = fmul fast float %8897, %3826
  %8960 = fmul fast float %8959, %8947
  %8961 = fmul fast float %8898, %3827
  %8962 = fmul fast float %8961, %8947
  br label %8963

; <label>:8963                                    ; preds = %8888, %8789
  %8964 = phi float [ %8915, %8888 ], [ 0.000000e+00, %8789 ]
  %8965 = phi float [ %8917, %8888 ], [ 0.000000e+00, %8789 ]
  %8966 = phi float [ %8919, %8888 ], [ 0.000000e+00, %8789 ]
  %8967 = phi float [ %8952, %8888 ], [ 0.000000e+00, %8789 ]
  %8968 = phi float [ %8954, %8888 ], [ 0.000000e+00, %8789 ]
  %8969 = phi float [ %8956, %8888 ], [ 0.000000e+00, %8789 ]
  %8970 = phi float [ %8958, %8888 ], [ 0.000000e+00, %8789 ]
  %8971 = phi float [ %8960, %8888 ], [ 0.000000e+00, %8789 ]
  %8972 = phi float [ %8962, %8888 ], [ 0.000000e+00, %8789 ]
  %8973 = call float @dx.op.binary.f32(i32 35, float %8964, float 0x3F10000000000000)  ; FMax(a,b)
  %8974 = call float @dx.op.binary.f32(i32 35, float %8965, float 0x3F10000000000000)  ; FMax(a,b)
  %8975 = call float @dx.op.binary.f32(i32 35, float %8966, float 0x3F10000000000000)  ; FMax(a,b)
  %8976 = fdiv fast float 1.000000e+00, %8973
  %8977 = fdiv fast float 1.000000e+00, %8974
  %8978 = fdiv fast float 1.000000e+00, %8975
  %8979 = fmul fast float %8964, 0xBFF7154760000000
  %8980 = fmul fast float %8965, 0xBFF7154760000000
  %8981 = fmul fast float %8966, 0xBFF7154760000000
  %8982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %8983 = extractvalue %dx.types.CBufRet.f32 %8982, 3
  %8984 = call float @dx.op.dot3.f32(i32 55, float %8976, float %8977, float %8978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8985 = fmul fast float %8983, %8984
  %8986 = call float @dx.op.binary.f32(i32 35, float %8700, float %8695)  ; FMax(a,b)
  %8987 = fsub fast float %8696, %8986
  %8988 = call float @dx.op.binary.f32(i32 35, float %8987, float 0.000000e+00)  ; FMax(a,b)
  %8989 = fsub fast float %8696, %8695
  %8990 = call float @dx.op.binary.f32(i32 35, float %8989, float 0.000000e+00)  ; FMax(a,b)
  %8991 = call float @dx.op.binary.f32(i32 36, float %8990, float %8985)  ; FMin(a,b)
  %8992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %8993 = extractvalue %dx.types.CBufRet.f32 %8992, 0
  %8994 = fmul fast float %8993, %8991
  %8995 = fmul fast float %8994, %8979
  %8996 = fmul fast float %8994, %8980
  %8997 = fmul fast float %8994, %8981
  %8998 = call float @dx.op.unary.f32(i32 21, float %8995)  ; Exp(value)
  %8999 = call float @dx.op.unary.f32(i32 21, float %8996)  ; Exp(value)
  %9000 = call float @dx.op.unary.f32(i32 21, float %8997)  ; Exp(value)
  %9001 = fmul fast float %8998, %8967
  %9002 = fmul fast float %8999, %8968
  %9003 = fmul fast float %9000, %8969
  %9004 = extractvalue %dx.types.CBufRet.f32 %8992, 1
  %9005 = fmul fast float %9004, %8991
  %9006 = fmul fast float %9005, %8979
  %9007 = fmul fast float %9005, %8980
  %9008 = fmul fast float %9005, %8981
  %9009 = call float @dx.op.unary.f32(i32 21, float %9006)  ; Exp(value)
  %9010 = call float @dx.op.unary.f32(i32 21, float %9007)  ; Exp(value)
  %9011 = call float @dx.op.unary.f32(i32 21, float %9008)  ; Exp(value)
  %9012 = fmul fast float %9009, %8970
  %9013 = fmul fast float %9010, %8971
  %9014 = fmul fast float %9011, %8972
  %9015 = fadd fast float %9012, %9001
  %9016 = fadd fast float %9013, %9002
  %9017 = fadd fast float %9014, %9003
  %9018 = fmul fast float %8988, %8979
  %9019 = fmul fast float %8988, %8980
  %9020 = fmul fast float %8988, %8981
  %9021 = call float @dx.op.unary.f32(i32 21, float %9018)  ; Exp(value)
  %9022 = call float @dx.op.unary.f32(i32 21, float %9019)  ; Exp(value)
  %9023 = call float @dx.op.unary.f32(i32 21, float %9020)  ; Exp(value)
  %9024 = call float @dx.op.unary.f32(i32 7, float %9021)  ; Saturate(value)
  %9025 = call float @dx.op.unary.f32(i32 7, float %9022)  ; Saturate(value)
  %9026 = call float @dx.op.unary.f32(i32 7, float %9023)  ; Saturate(value)
  %9027 = fmul fast float %9024, %9015
  %9028 = fmul fast float %9025, %9016
  %9029 = fmul fast float %9026, %9017
  %9030 = fsub fast float %9015, %9027
  %9031 = fsub fast float %9016, %9028
  %9032 = fsub fast float %9017, %9029
  %9033 = fmul fast float %8976, %8793
  %9034 = fmul fast float %9033, %9030
  %9035 = fmul fast float %8977, %8794
  %9036 = fmul fast float %9035, %9031
  %9037 = fmul fast float %8978, %8795
  %9038 = fmul fast float %9037, %9032
  %9039 = fadd fast float %9034, %8790
  %9040 = fadd fast float %9036, %8791
  %9041 = fadd fast float %9038, %8792
  %9042 = fmul fast float %9024, %8793
  %9043 = fmul fast float %9025, %8794
  %9044 = fmul fast float %9026, %8795
  %9045 = fmul fast float %8990, %8979
  %9046 = fmul fast float %8990, %8980
  %9047 = fmul fast float %8990, %8981
  %9048 = call float @dx.op.unary.f32(i32 21, float %9045)  ; Exp(value)
  %9049 = call float @dx.op.unary.f32(i32 21, float %9046)  ; Exp(value)
  %9050 = call float @dx.op.unary.f32(i32 21, float %9047)  ; Exp(value)
  %9051 = call float @dx.op.unary.f32(i32 7, float %9048)  ; Saturate(value)
  %9052 = call float @dx.op.unary.f32(i32 7, float %9049)  ; Saturate(value)
  %9053 = call float @dx.op.unary.f32(i32 7, float %9050)  ; Saturate(value)
  %9054 = fmul fast float %9051, %9015
  %9055 = fmul fast float %9052, %9016
  %9056 = fmul fast float %9053, %9017
  %9057 = fsub fast float %9015, %9054
  %9058 = fsub fast float %9016, %9055
  %9059 = fsub fast float %9017, %9056
  %9060 = fmul fast float %9057, %8976
  %9061 = fmul fast float %9058, %8977
  %9062 = fmul fast float %9059, %8978
  %9063 = fsub fast float %8695, %8699
  %9064 = fmul fast float %8701, %9063
  %9065 = call float @dx.op.unary.f32(i32 7, float %9064)  ; Saturate(value)
  %9066 = fmul fast float %9065, %9065
  %9067 = fmul fast float %9065, 2.000000e+00
  %9068 = fsub fast float 3.000000e+00, %9067
  %9069 = fmul fast float %9066, %9068
  %9070 = fsub fast float %9060, %9039
  %9071 = fsub fast float %9061, %9040
  %9072 = fsub fast float %9062, %9041
  %9073 = fmul fast float %9069, %9070
  %9074 = fmul fast float %9069, %9071
  %9075 = fmul fast float %9069, %9072
  %9076 = fadd fast float %9073, %9039
  %9077 = fadd fast float %9074, %9040
  %9078 = fadd fast float %9075, %9041
  %9079 = fsub fast float %9051, %9042
  %9080 = fsub fast float %9052, %9043
  %9081 = fsub fast float %9053, %9044
  %9082 = fmul fast float %9069, %9079
  %9083 = fmul fast float %9069, %9080
  %9084 = fmul fast float %9069, %9081
  %9085 = fadd fast float %9082, %9042
  %9086 = fadd fast float %9083, %9043
  %9087 = fadd fast float %9084, %9044
  br i1 %8796, label %9088, label %9156

; <label>:9088                                    ; preds = %8963
  %9089 = extractvalue %dx.types.CBufRet.f32 %8992, 3
  %9090 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %9089)  ; Dot3(ax,ay,az,bx,by,bz)
  %9091 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2755, float %2756, float %2757)  ; Dot3(ax,ay,az,bx,by,bz)
  %9092 = fdiv fast float 1.000000e+00, %9091
  %9093 = fmul fast float %9092, %9090
  %9094 = fcmp ogt float %2600, -0.000000e+00
  %9095 = select i1 %9094, float %9089, float %9093
  %9096 = call float @dx.op.binary.f32(i32 36, float %9095, float %8985)  ; FMin(a,b)
  %9097 = fmul fast float %8993, %9096
  %9098 = fmul fast float %9097, %8979
  %9099 = fmul fast float %9097, %8980
  %9100 = fmul fast float %9097, %8981
  %9101 = call float @dx.op.unary.f32(i32 21, float %9098)  ; Exp(value)
  %9102 = call float @dx.op.unary.f32(i32 21, float %9099)  ; Exp(value)
  %9103 = call float @dx.op.unary.f32(i32 21, float %9100)  ; Exp(value)
  %9104 = fmul fast float %9101, %8967
  %9105 = fmul fast float %9102, %8968
  %9106 = fmul fast float %9103, %8969
  %9107 = fmul fast float %9004, %9096
  %9108 = fmul fast float %9107, %8979
  %9109 = fmul fast float %9107, %8980
  %9110 = fmul fast float %9107, %8981
  %9111 = call float @dx.op.unary.f32(i32 21, float %9108)  ; Exp(value)
  %9112 = call float @dx.op.unary.f32(i32 21, float %9109)  ; Exp(value)
  %9113 = call float @dx.op.unary.f32(i32 21, float %9110)  ; Exp(value)
  %9114 = fmul fast float %9111, %8970
  %9115 = fmul fast float %9112, %8971
  %9116 = fmul fast float %9113, %8972
  %9117 = fadd fast float %9114, %9104
  %9118 = fadd fast float %9115, %9105
  %9119 = fadd fast float %9116, %9106
  %9120 = fmul fast float %9095, %8979
  %9121 = fmul fast float %9095, %8980
  %9122 = fmul fast float %9095, %8981
  %9123 = call float @dx.op.unary.f32(i32 21, float %9120)  ; Exp(value)
  %9124 = call float @dx.op.unary.f32(i32 21, float %9121)  ; Exp(value)
  %9125 = call float @dx.op.unary.f32(i32 21, float %9122)  ; Exp(value)
  %9126 = call float @dx.op.unary.f32(i32 7, float %9123)  ; Saturate(value)
  %9127 = call float @dx.op.unary.f32(i32 7, float %9124)  ; Saturate(value)
  %9128 = call float @dx.op.unary.f32(i32 7, float %9125)  ; Saturate(value)
  %9129 = fmul fast float %9126, %9117
  %9130 = fmul fast float %9127, %9118
  %9131 = fmul fast float %9128, %9119
  %9132 = fsub fast float %9117, %9129
  %9133 = fsub fast float %9118, %9130
  %9134 = fsub fast float %9119, %9131
  %9135 = fmul fast float %9132, %8976
  %9136 = fmul fast float %9133, %8977
  %9137 = fmul fast float %9134, %8978
  %9138 = fsub fast float %9076, %9135
  %9139 = fsub fast float %9077, %9136
  %9140 = fsub fast float %9078, %9137
  %9141 = fmul fast float %9138, %8538
  %9142 = fmul fast float %9139, %8538
  %9143 = fmul fast float %9140, %8538
  %9144 = fadd fast float %9141, %9135
  %9145 = fadd fast float %9142, %9136
  %9146 = fadd fast float %9143, %9137
  %9147 = fsub fast float %9085, %9126
  %9148 = fsub fast float %9086, %9127
  %9149 = fsub fast float %9087, %9128
  %9150 = fmul fast float %9147, %8538
  %9151 = fmul fast float %9148, %8538
  %9152 = fmul fast float %9149, %8538
  %9153 = fadd fast float %9150, %9126
  %9154 = fadd fast float %9151, %9127
  %9155 = fadd fast float %9152, %9128
  br label %9156

; <label>:9156                                    ; preds = %9088, %8963
  %9157 = phi float [ %9144, %9088 ], [ %9076, %8963 ]
  %9158 = phi float [ %9145, %9088 ], [ %9077, %8963 ]
  %9159 = phi float [ %9146, %9088 ], [ %9078, %8963 ]
  %9160 = phi float [ %9153, %9088 ], [ %9085, %8963 ]
  %9161 = phi float [ %9154, %9088 ], [ %9086, %8963 ]
  %9162 = phi float [ %9155, %9088 ], [ %9087, %8963 ]
  %9163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9164 = extractvalue %dx.types.CBufRet.i32 %9163, 3
  %9165 = and i32 %9164, 3
  %9166 = icmp ne i32 %9165, 0
  %9167 = and i32 %9164, 4
  %9168 = icmp ne i32 %9167, 0
  %9169 = and i1 %9166, %9168
  br i1 %9169, label %9170, label %9177

; <label>:9170                                    ; preds = %9156
  %9171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %63, float %8693, float %8694, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9172 = extractvalue %dx.types.ResRet.f32 %9171, 0
  %9173 = fsub fast float 1.000000e+00, %9172
  %9174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %9175 = extractvalue %dx.types.CBufRet.f32 %9174, 0
  %9176 = fcmp fast olt float %9173, %9175
  br label %9180

; <label>:9177                                    ; preds = %9156
  %9178 = icmp eq i32 %9167, 0
  %9179 = and i1 %9166, %9178
  br label %9180

; <label>:9180                                    ; preds = %9177, %9170
  %9181 = phi i1 [ %9176, %9170 ], [ %9179, %9177 ]
  %9182 = xor i1 %2753, %9181
  %9183 = select i1 %9182, float 0.000000e+00, float %8538
  %9184 = fcmp fast ogt float %9183, 0.000000e+00
  %9185 = select i1 %9184, float %8693, float 0.000000e+00
  %9186 = select i1 %9184, float %8694, float 0.000000e+00
  %9187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %63, float %9185, float %9186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9188 = extractvalue %dx.types.ResRet.f32 %9187, 0
  %9189 = extractvalue %dx.types.ResRet.f32 %9187, 1
  %9190 = extractvalue %dx.types.ResRet.f32 %9187, 2
  %9191 = fmul fast float %9189, %9183
  %9192 = fmul fast float %9190, %9183
  %9193 = select i1 %2753, float 0.000000e+00, float %9191
  %9194 = select i1 %2753, float 0.000000e+00, float %9192
  %9195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9196 = extractvalue %dx.types.CBufRet.f32 %9195, 1
  %9197 = fmul fast float %9183, %9160
  %9198 = fmul fast float %9197, %9188
  %9199 = fmul fast float %9198, %9196
  %9200 = fmul fast float %9196, %9161
  %9201 = fmul fast float %9200, %9193
  %9202 = fmul fast float %9196, %9162
  %9203 = fmul fast float %9202, %9194
  %9204 = fadd fast float %9199, %9157
  %9205 = fadd fast float %9201, %9158
  %9206 = fadd fast float %9203, %9159
  br label %9246

; <label>:9207                                    ; preds = %8692
  %9208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9209 = extractvalue %dx.types.CBufRet.i32 %9208, 3
  %9210 = and i32 %9209, 3
  %9211 = icmp ne i32 %9210, 0
  %9212 = and i32 %9209, 4
  %9213 = icmp ne i32 %9212, 0
  %9214 = and i1 %9211, %9213
  br i1 %9214, label %9215, label %9222

; <label>:9215                                    ; preds = %9207
  %9216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %63, float %8693, float %8694, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9217 = extractvalue %dx.types.ResRet.f32 %9216, 0
  %9218 = fsub fast float 1.000000e+00, %9217
  %9219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %9220 = extractvalue %dx.types.CBufRet.f32 %9219, 0
  %9221 = fcmp fast olt float %9218, %9220
  br label %9225

; <label>:9222                                    ; preds = %9207
  %9223 = icmp eq i32 %9212, 0
  %9224 = and i1 %9211, %9223
  br label %9225

; <label>:9225                                    ; preds = %9222, %9215
  %9226 = phi i1 [ %9221, %9215 ], [ %9224, %9222 ]
  %9227 = xor i1 %2753, %9226
  %9228 = select i1 %9227, float 0.000000e+00, float %8538
  %9229 = fcmp fast ogt float %9228, 0.000000e+00
  %9230 = select i1 %9229, float %8693, float 0.000000e+00
  %9231 = select i1 %9229, float %8694, float 0.000000e+00
  %9232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %63, float %9230, float %9231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9233 = extractvalue %dx.types.ResRet.f32 %9232, 0
  %9234 = extractvalue %dx.types.ResRet.f32 %9232, 1
  %9235 = extractvalue %dx.types.ResRet.f32 %9232, 2
  %9236 = fmul fast float %9233, %9228
  %9237 = fmul fast float %9234, %9228
  %9238 = fmul fast float %9235, %9228
  %9239 = select i1 %2753, float 0.000000e+00, float %9237
  %9240 = select i1 %2753, float 0.000000e+00, float %9238
  %9241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9242 = extractvalue %dx.types.CBufRet.f32 %9241, 1
  %9243 = fmul fast float %9236, %9242
  %9244 = fmul fast float %9239, %9242
  %9245 = fmul fast float %9240, %9242
  br label %9246

; <label>:9246                                    ; preds = %9225, %9180
  %9247 = phi float [ %9243, %9225 ], [ %9204, %9180 ]
  %9248 = phi float [ %9244, %9225 ], [ %9205, %9180 ]
  %9249 = phi float [ %9245, %9225 ], [ %9206, %9180 ]
  %9250 = fmul fast float %9247, %3866
  %9251 = fmul fast float %9248, %3866
  %9252 = fmul fast float %9249, %3866
  %9253 = select i1 %117, float %8607, float 1.000000e+00
  %9254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9255 = extractvalue %dx.types.CBufRet.f32 %9254, 0
  %9256 = bitcast float %9255 to i32
  %9257 = and i32 %9256, 255
  %9258 = uitofp i32 %9257 to float
  %9259 = fptoui float %9258 to i32
  %9260 = icmp eq i32 %9259, 13
  br i1 %9260, label %9261, label %9281

; <label>:9261                                    ; preds = %9246
  %9262 = fadd fast float %2058, 2.000000e+00
  %9263 = fadd fast float %2060, 1.000000e+00
  %9264 = fsub fast float 1.000000e+00, %2061
  %9265 = fmul fast float %9262, 5.000000e-01
  %9266 = fmul fast float %9263, 5.000000e-01
  %9267 = fmul fast float %9264, 5.000000e-01
  %9268 = call float @dx.op.unary.f32(i32 7, float %9265)  ; Saturate(value)
  %9269 = call float @dx.op.unary.f32(i32 7, float %9266)  ; Saturate(value)
  %9270 = call float @dx.op.unary.f32(i32 7, float %9267)  ; Saturate(value)
  %9271 = fmul fast float %9268, 1.023000e+03
  %9272 = fmul fast float %9269, 1.023000e+03
  %9273 = fmul fast float %9270, 1.023000e+03
  %9274 = fptoui float %9271 to i32
  %9275 = fptoui float %9272 to i32
  %9276 = fptoui float %9273 to i32
  %9277 = shl i32 %9275, 10
  %9278 = or i32 %9277, %9274
  %9279 = shl i32 %9276, 20
  %9280 = or i32 %9278, %9279
  br label %9281

; <label>:9281                                    ; preds = %9261, %9246
  %9282 = phi i32 [ %9280, %9261 ], [ %8517, %9246 ]
  %9283 = icmp eq i32 %9259, 14
  br i1 %9283, label %9284, label %9304

; <label>:9284                                    ; preds = %9281
  %9285 = fadd fast float %2055, 1.000000e+00
  %9286 = fadd fast float %2065, 1.000000e+00
  %9287 = fsub fast float 1.000000e+00, %120
  %9288 = fmul fast float %9285, 5.000000e-01
  %9289 = fmul fast float %9286, 5.000000e-01
  %9290 = fmul fast float %9287, 5.000000e-01
  %9291 = call float @dx.op.unary.f32(i32 7, float %9288)  ; Saturate(value)
  %9292 = call float @dx.op.unary.f32(i32 7, float %9289)  ; Saturate(value)
  %9293 = call float @dx.op.unary.f32(i32 7, float %9290)  ; Saturate(value)
  %9294 = fmul fast float %9291, 1.023000e+03
  %9295 = fmul fast float %9292, 1.023000e+03
  %9296 = fmul fast float %9293, 1.023000e+03
  %9297 = fptoui float %9294 to i32
  %9298 = fptoui float %9295 to i32
  %9299 = fptoui float %9296 to i32
  %9300 = shl i32 %9298, 10
  %9301 = or i32 %9300, %9297
  %9302 = shl i32 %9299, 20
  %9303 = or i32 %9301, %9302
  br label %9304

; <label>:9304                                    ; preds = %9284, %9281
  %9305 = phi i32 [ %9303, %9284 ], [ %9282, %9281 ]
  %9306 = icmp eq i32 %9259, 15
  br i1 %9306, label %9307, label %9327

; <label>:9307                                    ; preds = %9304
  %9308 = fadd fast float %119, 1.000000e+00
  %9309 = fadd fast float %120, 1.000000e+00
  %9310 = fadd fast float %121, 1.000000e+00
  %9311 = fmul fast float %9308, 5.000000e-01
  %9312 = fmul fast float %9309, 5.000000e-01
  %9313 = fmul fast float %9310, 5.000000e-01
  %9314 = call float @dx.op.unary.f32(i32 7, float %9311)  ; Saturate(value)
  %9315 = call float @dx.op.unary.f32(i32 7, float %9312)  ; Saturate(value)
  %9316 = call float @dx.op.unary.f32(i32 7, float %9313)  ; Saturate(value)
  %9317 = fmul fast float %9314, 1.023000e+03
  %9318 = fmul fast float %9315, 1.023000e+03
  %9319 = fmul fast float %9316, 1.023000e+03
  %9320 = fptoui float %9317 to i32
  %9321 = fptoui float %9318 to i32
  %9322 = fptoui float %9319 to i32
  %9323 = shl i32 %9321, 10
  %9324 = or i32 %9323, %9320
  %9325 = shl i32 %9322, 20
  %9326 = or i32 %9324, %9325
  br label %9327

; <label>:9327                                    ; preds = %9307, %9304
  %9328 = phi i32 [ %9326, %9307 ], [ %9305, %9304 ]
  %9329 = fsub fast float 1.000000e+00, %2760
  %9330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9331 = extractvalue %dx.types.CBufRet.f32 %9330, 0
  %9332 = fmul fast float %9331, %9329
  %9333 = fmul fast float %2572, 2.000000e+00
  %9334 = fmul fast float %9333, %2609
  %9335 = fsub fast float %2600, %9334
  %9336 = call float @dx.op.unary.f32(i32 7, float %9335)  ; Saturate(value)
  %9337 = fsub fast float 1.000000e+00, %9336
  %9338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9339 = extractvalue %dx.types.CBufRet.f32 %9338, 3
  %9340 = fmul fast float %9339, %9337
  %9341 = fsub fast float 1.000000e+00, %2727
  %9342 = call float @dx.op.unary.f32(i32 7, float %9341)  ; Saturate(value)
  %9343 = fadd fast float %8535, %2729
  %9344 = fmul fast float %9343, %2727
  %9345 = fmul fast float %9340, %9342
  %9346 = icmp eq i32 %9259, 39
  %9347 = icmp eq i32 %9259, 40
  %9348 = select i1 %9347, float %2727, float 0.000000e+00
  %9349 = select i1 %9346, float %9343, float %9348
  %9350 = fmul fast float %8533, %2582
  %9351 = fmul fast float %8534, %2583
  %9352 = fmul fast float %8535, %2584
  %9353 = fadd fast float %9350, %8530
  %9354 = fadd fast float %9353, %9250
  %9355 = fadd fast float %9351, %8531
  %9356 = fadd fast float %9355, %9251
  %9357 = fadd fast float %9352, %8532
  %9358 = fadd fast float %9357, %9252
  br i1 %117, label %9359, label %10161

; <label>:9359                                    ; preds = %9327
  %9360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9361 = extractvalue %dx.types.CBufRet.f32 %9360, 0
  %9362 = extractvalue %dx.types.CBufRet.f32 %9360, 1
  %9363 = extractvalue %dx.types.CBufRet.f32 %9360, 2
  %9364 = extractvalue %dx.types.CBufRet.f32 %9360, 3
  %9365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9365, 0
  %9367 = extractvalue %dx.types.CBufRet.f32 %9365, 1
  %9368 = extractvalue %dx.types.CBufRet.f32 %9365, 2
  %9369 = extractvalue %dx.types.CBufRet.f32 %9365, 3
  %9370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9371 = extractvalue %dx.types.CBufRet.f32 %9370, 0
  %9372 = extractvalue %dx.types.CBufRet.f32 %9370, 1
  %9373 = extractvalue %dx.types.CBufRet.f32 %9370, 2
  %9374 = extractvalue %dx.types.CBufRet.f32 %9370, 3
  %9375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9376 = extractvalue %dx.types.CBufRet.f32 %9375, 0
  %9377 = extractvalue %dx.types.CBufRet.f32 %9375, 1
  %9378 = extractvalue %dx.types.CBufRet.f32 %9375, 2
  %9379 = extractvalue %dx.types.CBufRet.f32 %9375, 3
  %9380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9381 = extractvalue %dx.types.CBufRet.f32 %9380, 3
  %9382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9383 = extractvalue %dx.types.CBufRet.f32 %9382, 3
  %9384 = extractvalue %dx.types.CBufRet.f32 %9382, 0
  %9385 = extractvalue %dx.types.CBufRet.f32 %9382, 1
  %9386 = extractvalue %dx.types.CBufRet.f32 %9382, 2
  %9387 = fcmp fast olt float %9386, -5.000000e-01
  %9388 = fmul fast float %2597, %2596
  %9389 = fadd fast float %9388, %9364
  %9390 = call float @dx.op.dot3.f32(i32 55, float %2598, float %2599, float %2600, float %9361, float %9362, float %9363)  ; Dot3(ax,ay,az,bx,by,bz)
  %9391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9392 = extractvalue %dx.types.CBufRet.i32 %9391, 1
  %9393 = and i32 %9392, 1
  %9394 = icmp ne i32 %9393, 0
  %9395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9396 = extractvalue %dx.types.CBufRet.f32 %9395, 2
  %9397 = fcmp fast ogt float %9396, 0.000000e+00
  %9398 = and i1 %9394, %9397
  br i1 %9398, label %9399, label %9805, !dx.controlflow.hints !171

; <label>:9399                                    ; preds = %9359
  %9400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9401 = extractvalue %dx.types.CBufRet.f32 %9400, 3
  %9402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9403 = extractvalue %dx.types.CBufRet.f32 %9402, 2
  %9404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9405 = extractvalue %dx.types.CBufRet.f32 %9404, 2
  %9406 = fsub fast float %9403, %9405
  %9407 = and i32 %9392, 2
  %9408 = extractvalue %dx.types.CBufRet.i32 %9391, 0
  %9409 = call i32 @dx.op.binary.i32(i32 40, i32 %9408, i32 3)  ; UMin(a,b)
  %9410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9411 = extractvalue %dx.types.CBufRet.f32 %9410, 0
  %9412 = extractvalue %dx.types.CBufRet.f32 %9410, 1
  %9413 = extractvalue %dx.types.CBufRet.f32 %9404, 0
  %9414 = extractvalue %dx.types.CBufRet.f32 %9404, 1
  %9415 = fsub fast float %9411, %9413
  %9416 = fsub fast float %9412, %9414
  %9417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9418 = extractvalue %dx.types.CBufRet.f32 %9417, 0
  %9419 = fcmp fast ogt float %9418, 0.000000e+00
  %9420 = fsub fast float -0.000000e+00, %9415
  %9421 = fsub fast float -0.000000e+00, %9416
  %9422 = call float @dx.op.dot2.f32(i32 54, float %2598, float %2599, float %2598, float %2599)  ; Dot2(ax,ay,bx,by)
  %9423 = call float @dx.op.dot2.f32(i32 54, float %2598, float %2599, float %9420, float %9421)  ; Dot2(ax,ay,bx,by)
  %9424 = fmul fast float %9423, 2.000000e+00
  %9425 = call float @dx.op.dot2.f32(i32 54, float %9420, float %9421, float %9420, float %9421)  ; Dot2(ax,ay,bx,by)
  %9426 = fmul fast float %9418, %9418
  %9427 = fsub fast float %9425, %9426
  %9428 = fmul fast float %9424, %9424
  %9429 = fmul fast float %9422, 4.000000e+00
  %9430 = fmul fast float %9429, %9427
  %9431 = fsub fast float %9428, %9430
  %9432 = fcmp fast ogt float %9431, 0.000000e+00
  br i1 %9432, label %9433, label %9448

; <label>:9433                                    ; preds = %9399
  %9434 = fcmp fast ogt float %9424, 0.000000e+00
  %9435 = call float @dx.op.unary.f32(i32 24, float %9431)  ; Sqrt(value)
  %9436 = fsub fast float -0.000000e+00, %9435
  %9437 = select i1 %9434, float %9435, float %9436
  %9438 = fadd fast float %9437, %9424
  %9439 = fmul float %9438, -5.000000e-01
  %9440 = fdiv fast float %9439, %9422
  %9441 = call float @dx.op.binary.f32(i32 35, float %9440, float 0.000000e+00)  ; FMax(a,b)
  %9442 = call float @dx.op.binary.f32(i32 36, float %9388, float %9441)  ; FMin(a,b)
  %9443 = fdiv fast float %9427, %9439
  %9444 = call float @dx.op.binary.f32(i32 35, float %9443, float 0.000000e+00)  ; FMax(a,b)
  %9445 = call float @dx.op.binary.f32(i32 36, float %9388, float %9444)  ; FMin(a,b)
  %9446 = call float @dx.op.binary.f32(i32 36, float %9442, float %9445)  ; FMin(a,b)
  %9447 = call float @dx.op.binary.f32(i32 35, float %9442, float %9445)  ; FMax(a,b)
  br label %9448

; <label>:9448                                    ; preds = %9433, %9399
  %9449 = phi float [ %9447, %9433 ], [ -1.000000e+00, %9399 ]
  %9450 = phi float [ %9446, %9433 ], [ -1.000000e+00, %9399 ]
  %9451 = phi i1 [ true, %9433 ], [ false, %9399 ]
  %9452 = and i1 %9419, %9451
  br i1 %9452, label %9453, label %9455

; <label>:9453                                    ; preds = %9448
  %9454 = fcmp fast oeq float %9450, %9449
  br i1 %9454, label %9758, label %9456

; <label>:9455                                    ; preds = %9448
  br i1 %9419, label %9758, label %9456

; <label>:9456                                    ; preds = %9455, %9453
  %9457 = phi float [ %9388, %9455 ], [ %9449, %9453 ]
  %9458 = phi float [ 0.000000e+00, %9455 ], [ %9450, %9453 ]
  %9459 = icmp ne i32 %9407, 0
  %9460 = fmul fast float %9457, %2600
  %9461 = fadd fast float %9460, %9401
  %9462 = fmul fast float %9461, %9457
  %9463 = select i1 %9459, float 0.000000e+00, float %9462
  %9464 = fcmp fast oeq float %2600, 0.000000e+00
  %9465 = fdiv fast float %9406, %2600
  %9466 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9465)  ; FMax(a,b)
  %9467 = select i1 %9464, float %9457, float %9466
  %9468 = call float @dx.op.binary.f32(i32 36, float %9457, float %9467)  ; FMin(a,b)
  %9469 = fcmp fast ogt float %2600, 0.000000e+00
  %9470 = fcmp fast olt float %9406, 0.000000e+00
  br i1 %9469, label %9471, label %9528

; <label>:9471                                    ; preds = %9456
  %9472 = icmp eq i32 %9407, 0
  br i1 %9470, label %9473, label %9517

; <label>:9473                                    ; preds = %9471
  %9474 = select i1 %9472, float %9457, float 0.000000e+00
  %9475 = fsub fast float -0.000000e+00, %9474
  %9476 = call float @dx.op.unary.f32(i32 6, float %9475)  ; FAbs(value)
  %9477 = fmul fast float %9474, %2600
  %9478 = fadd fast float %9477, %9401
  %9479 = fmul fast float %9476, %9478
  %9480 = fsub fast float %9463, %9479
  %9481 = fsub fast float %9457, %9476
  %9482 = select i1 %9472, float %9481, float 0.000000e+00
  %9483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9484 = extractvalue %dx.types.CBufRet.f32 %9483, 0
  %9485 = extractvalue %dx.types.CBufRet.f32 %9483, 1
  %9486 = extractvalue %dx.types.CBufRet.f32 %9483, 2
  %9487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9488 = extractvalue %dx.types.CBufRet.f32 %9487, 0
  %9489 = extractvalue %dx.types.CBufRet.f32 %9487, 1
  %9490 = extractvalue %dx.types.CBufRet.f32 %9487, 2
  %9491 = extractvalue %dx.types.CBufRet.f32 %9487, 3
  %9492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9493 = extractvalue %dx.types.CBufRet.f32 %9492, 3
  %9494 = call float @dx.op.binary.f32(i32 36, float %9480, float %9493)  ; FMin(a,b)
  %9495 = fmul fast float %9491, %9482
  %9496 = call float @dx.op.unary.f32(i32 7, float %9495)  ; Saturate(value)
  %9497 = fsub fast float %9488, %9484
  %9498 = fsub fast float %9489, %9485
  %9499 = fsub fast float %9490, %9486
  %9500 = fmul fast float %9496, %9497
  %9501 = fmul fast float %9496, %9498
  %9502 = fmul fast float %9496, %9499
  %9503 = fadd fast float %9500, %9484
  %9504 = fadd fast float %9501, %9485
  %9505 = fadd fast float %9502, %9486
  %9506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9507 = extractvalue %dx.types.CBufRet.f32 %9506, 0
  %9508 = extractvalue %dx.types.CBufRet.f32 %9506, 1
  %9509 = fadd fast float %9508, %9507
  %9510 = call float @dx.op.unary.f32(i32 7, float %9509)  ; Saturate(value)
  %9511 = extractvalue %dx.types.CBufRet.f32 %9506, 2
  %9512 = extractvalue %dx.types.CBufRet.f32 %9506, 3
  %9513 = fadd fast float %9512, %9511
  %9514 = call float @dx.op.unary.f32(i32 7, float %9513)  ; Saturate(value)
  %9515 = fmul fast float %9510, %9494
  %9516 = fmul fast float %9515, %9514
  br label %9758

; <label>:9517                                    ; preds = %9471
  br i1 %9472, label %9518, label %9539

; <label>:9518                                    ; preds = %9517
  %9519 = call float @dx.op.binary.f32(i32 36, float %9468, float %9458)  ; FMin(a,b)
  %9520 = fsub fast float %9468, %9519
  %9521 = fsub fast float %9520, %9457
  %9522 = call float @dx.op.unary.f32(i32 6, float %9521)  ; FAbs(value)
  %9523 = fadd fast float %9520, %9457
  %9524 = fmul fast float %9523, %2600
  %9525 = fadd fast float %9524, %9401
  %9526 = fmul fast float %9525, %9522
  %9527 = fsub fast float %9463, %9526
  br label %9539

; <label>:9528                                    ; preds = %9456
  br i1 %9470, label %9529, label %9539

; <label>:9529                                    ; preds = %9528
  %9530 = call float @dx.op.binary.f32(i32 35, float %9458, float %9468)  ; FMax(a,b)
  %9531 = icmp eq i32 %9407, 0
  %9532 = select i1 %9531, float %9468, float 0.000000e+00
  %9533 = fsub fast float -0.000000e+00, %9532
  %9534 = call float @dx.op.unary.f32(i32 6, float %9533)  ; FAbs(value)
  %9535 = fmul fast float %9532, %2600
  %9536 = fadd fast float %9535, %9401
  %9537 = fmul fast float %9534, %9536
  %9538 = fsub fast float %9463, %9537
  br label %9539

; <label>:9539                                    ; preds = %9529, %9528, %9518, %9517
  %9540 = phi float [ %9458, %9517 ], [ %9458, %9518 ], [ %9530, %9529 ], [ %9458, %9528 ]
  %9541 = phi float [ 0.000000e+00, %9517 ], [ %9522, %9518 ], [ %9534, %9529 ], [ 0.000000e+00, %9528 ]
  %9542 = phi float [ %9463, %9517 ], [ %9527, %9518 ], [ %9538, %9529 ], [ %9463, %9528 ]
  %9543 = phi float [ %9468, %9517 ], [ %9468, %9518 ], [ %9457, %9529 ], [ %9457, %9528 ]
  %9544 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %9544, align 4, !tbaa !109, !noalias !172
  %9545 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %9545, align 4, !tbaa !109, !noalias !172
  %9546 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %9546, align 4, !tbaa !109, !noalias !172
  %9547 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %9547, align 4, !tbaa !109, !noalias !172
  %9548 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %9548, align 4, !tbaa !109, !noalias !172
  %9549 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %9549, align 4, !tbaa !109, !noalias !172
  %9550 = icmp sgt i32 %9409, 0
  br i1 %9550, label %9551, label %9612

; <label>:9551                                    ; preds = %9539
  br label %9552

; <label>:9552                                    ; preds = %9601, %9551
  %9553 = phi i32 [ %9602, %9601 ], [ 0, %9551 ]
  %9554 = phi i32 [ %9603, %9601 ], [ 0, %9551 ]
  %9555 = add nuw i32 %9554, 171
  %9556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %9555)  ; CBufferLoadLegacy(handle,regIndex)
  %9557 = extractvalue %dx.types.CBufRet.f32 %9556, 0
  %9558 = extractvalue %dx.types.CBufRet.f32 %9556, 1
  %9559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9560 = extractvalue %dx.types.CBufRet.f32 %9559, 0
  %9561 = extractvalue %dx.types.CBufRet.f32 %9559, 1
  %9562 = fsub fast float %9557, %9560
  %9563 = fsub fast float %9558, %9561
  %9564 = extractvalue %dx.types.CBufRet.f32 %9556, 2
  %9565 = fsub fast float -0.000000e+00, %9562
  %9566 = fsub fast float -0.000000e+00, %9563
  %9567 = call float @dx.op.dot2.f32(i32 54, float %2598, float %2599, float %9565, float %9566)  ; Dot2(ax,ay,bx,by)
  %9568 = fmul fast float %9567, 2.000000e+00
  %9569 = call float @dx.op.dot2.f32(i32 54, float %9565, float %9566, float %9565, float %9566)  ; Dot2(ax,ay,bx,by)
  %9570 = fmul fast float %9564, %9564
  %9571 = fsub fast float %9569, %9570
  %9572 = fmul fast float %9568, %9568
  %9573 = fmul fast float %9429, %9571
  %9574 = fsub fast float %9572, %9573
  %9575 = fcmp fast ogt float %9574, 0.000000e+00
  br i1 %9575, label %9576, label %9591

; <label>:9576                                    ; preds = %9552
  %9577 = fcmp fast ogt float %9568, 0.000000e+00
  %9578 = call float @dx.op.unary.f32(i32 24, float %9574)  ; Sqrt(value)
  %9579 = fsub fast float -0.000000e+00, %9578
  %9580 = select i1 %9577, float %9578, float %9579
  %9581 = fadd fast float %9580, %9568
  %9582 = fmul float %9581, -5.000000e-01
  %9583 = fdiv fast float %9582, %9422
  %9584 = call float @dx.op.binary.f32(i32 35, float %9583, float 0.000000e+00)  ; FMax(a,b)
  %9585 = call float @dx.op.binary.f32(i32 36, float %9457, float %9584)  ; FMin(a,b)
  %9586 = fdiv fast float %9571, %9582
  %9587 = call float @dx.op.binary.f32(i32 35, float %9586, float 0.000000e+00)  ; FMax(a,b)
  %9588 = call float @dx.op.binary.f32(i32 36, float %9457, float %9587)  ; FMin(a,b)
  %9589 = call float @dx.op.binary.f32(i32 36, float %9585, float %9588)  ; FMin(a,b)
  %9590 = call float @dx.op.binary.f32(i32 35, float %9585, float %9588)  ; FMax(a,b)
  br label %9591

; <label>:9591                                    ; preds = %9576, %9552
  %9592 = phi float [ %9590, %9576 ], [ -1.000000e+00, %9552 ]
  %9593 = phi float [ %9589, %9576 ], [ -1.000000e+00, %9552 ]
  %9594 = phi i1 [ true, %9576 ], [ false, %9552 ]
  br i1 %9594, label %9595, label %9601

; <label>:9595                                    ; preds = %9591
  %9596 = call float @dx.op.binary.f32(i32 35, float %9540, float %9593)  ; FMax(a,b)
  %9597 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %9554
  store float %9596, float* %9597, align 4, !tbaa !109, !noalias !172
  %9598 = call float @dx.op.binary.f32(i32 35, float %9540, float %9592)  ; FMax(a,b)
  %9599 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %9554
  store float %9598, float* %9599, align 4, !tbaa !109, !noalias !172
  %9600 = add nsw i32 %9553, 1
  br label %9601

; <label>:9601                                    ; preds = %9595, %9591
  %9602 = phi i32 [ %9600, %9595 ], [ %9553, %9591 ]
  %9603 = add nuw nsw i32 %9554, 1
  %9604 = icmp eq i32 %9603, %9409
  br i1 %9604, label %9605, label %9552

; <label>:9605                                    ; preds = %9601
  %9606 = load float, float* %9546, align 4, !tbaa !109, !alias.scope !188, !noalias !191
  %9607 = load float, float* %9545, align 4, !tbaa !109, !alias.scope !194, !noalias !195
  %9608 = load float, float* %9544, align 4, !tbaa !109, !alias.scope !196, !noalias !197
  %9609 = load float, float* %9549, align 4, !tbaa !109, !alias.scope !198, !noalias !201
  %9610 = load float, float* %9548, align 4, !tbaa !109, !alias.scope !204, !noalias !205
  %9611 = load float, float* %9547, align 4, !tbaa !109, !alias.scope !206, !noalias !207
  br label %9612

; <label>:9612                                    ; preds = %9605, %9539
  %9613 = phi float [ -1.000000e+00, %9539 ], [ %9611, %9605 ]
  %9614 = phi float [ -1.000000e+00, %9539 ], [ %9610, %9605 ]
  %9615 = phi float [ -1.000000e+00, %9539 ], [ %9609, %9605 ]
  %9616 = phi float [ -1.000000e+00, %9539 ], [ %9608, %9605 ]
  %9617 = phi float [ -1.000000e+00, %9539 ], [ %9607, %9605 ]
  %9618 = phi float [ -1.000000e+00, %9539 ], [ %9606, %9605 ]
  %9619 = phi i32 [ 0, %9539 ], [ %9602, %9605 ]
  %9620 = call float @dx.op.binary.f32(i32 36, float %9617, float %9618)  ; FMin(a,b)
  %9621 = call float @dx.op.binary.f32(i32 36, float %9616, float %9620)  ; FMin(a,b)
  %9622 = call float @dx.op.binary.f32(i32 35, float %9616, float %9617)  ; FMax(a,b)
  %9623 = call float @dx.op.binary.f32(i32 36, float %9622, float %9618)  ; FMin(a,b)
  %9624 = call float @dx.op.binary.f32(i32 36, float %9616, float %9617)  ; FMin(a,b)
  %9625 = call float @dx.op.binary.f32(i32 35, float %9624, float %9623)  ; FMax(a,b)
  %9626 = call float @dx.op.binary.f32(i32 35, float %9617, float %9618)  ; FMax(a,b)
  %9627 = call float @dx.op.binary.f32(i32 35, float %9616, float %9626)  ; FMax(a,b)
  store float %9621, float* %9544, align 4, !tbaa !109, !alias.scope !196, !noalias !197
  store float %9625, float* %9545, align 4, !tbaa !109, !alias.scope !194, !noalias !195
  store float %9627, float* %9546, align 4, !tbaa !109, !alias.scope !188, !noalias !191
  %9628 = call float @dx.op.binary.f32(i32 36, float %9614, float %9615)  ; FMin(a,b)
  %9629 = call float @dx.op.binary.f32(i32 36, float %9613, float %9628)  ; FMin(a,b)
  %9630 = call float @dx.op.binary.f32(i32 35, float %9613, float %9614)  ; FMax(a,b)
  %9631 = call float @dx.op.binary.f32(i32 36, float %9630, float %9615)  ; FMin(a,b)
  %9632 = call float @dx.op.binary.f32(i32 36, float %9613, float %9614)  ; FMin(a,b)
  %9633 = call float @dx.op.binary.f32(i32 35, float %9632, float %9631)  ; FMax(a,b)
  %9634 = call float @dx.op.binary.f32(i32 35, float %9614, float %9615)  ; FMax(a,b)
  %9635 = call float @dx.op.binary.f32(i32 35, float %9613, float %9634)  ; FMax(a,b)
  store float %9629, float* %9547, align 4, !tbaa !109, !alias.scope !206, !noalias !207
  store float %9633, float* %9548, align 4, !tbaa !109, !alias.scope !204, !noalias !205
  store float %9635, float* %9549, align 4, !tbaa !109, !alias.scope !198, !noalias !201
  %9636 = sub nsw i32 3, %9619
  %9637 = icmp sgt i32 %9636, 2
  br i1 %9637, label %9638, label %9676

; <label>:9638                                    ; preds = %9612
  %9639 = icmp eq i32 %9407, 0
  %9640 = fsub fast float %9457, %9541
  %9641 = select i1 %9639, float %9640, float %9541
  %9642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9643 = extractvalue %dx.types.CBufRet.f32 %9642, 0
  %9644 = extractvalue %dx.types.CBufRet.f32 %9642, 1
  %9645 = extractvalue %dx.types.CBufRet.f32 %9642, 2
  %9646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9647 = extractvalue %dx.types.CBufRet.f32 %9646, 0
  %9648 = extractvalue %dx.types.CBufRet.f32 %9646, 1
  %9649 = extractvalue %dx.types.CBufRet.f32 %9646, 2
  %9650 = extractvalue %dx.types.CBufRet.f32 %9646, 3
  %9651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9652 = extractvalue %dx.types.CBufRet.f32 %9651, 3
  %9653 = call float @dx.op.binary.f32(i32 36, float %9542, float %9652)  ; FMin(a,b)
  %9654 = fmul fast float %9650, %9641
  %9655 = call float @dx.op.unary.f32(i32 7, float %9654)  ; Saturate(value)
  %9656 = fsub fast float %9647, %9643
  %9657 = fsub fast float %9648, %9644
  %9658 = fsub fast float %9649, %9645
  %9659 = fmul fast float %9655, %9656
  %9660 = fmul fast float %9655, %9657
  %9661 = fmul fast float %9655, %9658
  %9662 = fadd fast float %9659, %9643
  %9663 = fadd fast float %9660, %9644
  %9664 = fadd fast float %9661, %9645
  %9665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9666 = extractvalue %dx.types.CBufRet.f32 %9665, 0
  %9667 = extractvalue %dx.types.CBufRet.f32 %9665, 1
  %9668 = fadd fast float %9667, %9666
  %9669 = call float @dx.op.unary.f32(i32 7, float %9668)  ; Saturate(value)
  %9670 = extractvalue %dx.types.CBufRet.f32 %9665, 2
  %9671 = extractvalue %dx.types.CBufRet.f32 %9665, 3
  %9672 = fadd fast float %9671, %9670
  %9673 = call float @dx.op.unary.f32(i32 7, float %9672)  ; Saturate(value)
  %9674 = fmul fast float %9669, %9653
  %9675 = fmul fast float %9674, %9673
  br label %9758

; <label>:9676                                    ; preds = %9612
  %9677 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %9636
  %9678 = load float, float* %9677, align 4, !tbaa !109, !noalias !172
  %9679 = fcmp fast olt float %9678, %9543
  %9680 = icmp sgt i32 %9619, 0
  %9681 = and i1 %9680, %9679
  br i1 %9681, label %9682, label %9719

; <label>:9682                                    ; preds = %9676
  br label %9683

; <label>:9683                                    ; preds = %9712, %9682
  %9684 = phi float [ %9713, %9712 ], [ %9541, %9682 ]
  %9685 = phi float [ %9714, %9712 ], [ %9542, %9682 ]
  %9686 = phi float [ %9694, %9712 ], [ %9678, %9682 ]
  %9687 = phi i32 [ %9691, %9712 ], [ %9636, %9682 ]
  %9688 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %9687
  %9689 = load float, float* %9688, align 4, !tbaa !109, !noalias !172
  %9690 = icmp slt i32 %9687, 2
  %9691 = add nsw i32 %9687, 1
  %9692 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %9691
  %9693 = load float, float* %9692, align 4, !tbaa !109, !noalias !172
  %9694 = select i1 %9690, float %9693, float %9457
  %9695 = call float @dx.op.binary.f32(i32 36, float %9694, float %9689)  ; FMin(a,b)
  %9696 = call float @dx.op.binary.f32(i32 36, float %9543, float %9695)  ; FMin(a,b)
  %9697 = icmp eq i32 %9407, 0
  %9698 = fadd fast float %9696, %9686
  %9699 = fmul fast float %9698, %2600
  %9700 = fadd fast float %9699, %9401
  br i1 %9697, label %9706, label %9701

; <label>:9701                                    ; preds = %9683
  %9702 = fsub fast float %9696, %9686
  %9703 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9702)  ; FMax(a,b)
  %9704 = fmul fast float %9703, %9700
  %9705 = fadd fast float %9704, %9685
  br label %9712

; <label>:9706                                    ; preds = %9683
  %9707 = fsub fast float %9686, %9696
  %9708 = call float @dx.op.unary.f32(i32 6, float %9707)  ; FAbs(value)
  %9709 = fadd fast float %9708, %9684
  %9710 = fmul fast float %9708, %9700
  %9711 = fsub fast float %9685, %9710
  br label %9712

; <label>:9712                                    ; preds = %9706, %9701
  %9713 = phi float [ %9703, %9701 ], [ %9709, %9706 ]
  %9714 = phi float [ %9705, %9701 ], [ %9711, %9706 ]
  %9715 = fcmp fast olt float %9694, %9543
  %9716 = icmp slt i32 %9691, 3
  %9717 = and i1 %9716, %9715
  br i1 %9717, label %9683, label %9718

; <label>:9718                                    ; preds = %9712
  br label %9719

; <label>:9719                                    ; preds = %9718, %9676
  %9720 = phi float [ %9541, %9676 ], [ %9713, %9718 ]
  %9721 = phi float [ %9542, %9676 ], [ %9714, %9718 ]
  %9722 = fsub fast float %9457, %9720
  %9723 = select i1 %9459, float %9720, float %9722
  %9724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9725 = extractvalue %dx.types.CBufRet.f32 %9724, 0
  %9726 = extractvalue %dx.types.CBufRet.f32 %9724, 1
  %9727 = extractvalue %dx.types.CBufRet.f32 %9724, 2
  %9728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9729 = extractvalue %dx.types.CBufRet.f32 %9728, 0
  %9730 = extractvalue %dx.types.CBufRet.f32 %9728, 1
  %9731 = extractvalue %dx.types.CBufRet.f32 %9728, 2
  %9732 = extractvalue %dx.types.CBufRet.f32 %9728, 3
  %9733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9734 = extractvalue %dx.types.CBufRet.f32 %9733, 3
  %9735 = call float @dx.op.binary.f32(i32 36, float %9721, float %9734)  ; FMin(a,b)
  %9736 = fmul fast float %9732, %9723
  %9737 = call float @dx.op.unary.f32(i32 7, float %9736)  ; Saturate(value)
  %9738 = fsub fast float %9729, %9725
  %9739 = fsub fast float %9730, %9726
  %9740 = fsub fast float %9731, %9727
  %9741 = fmul fast float %9737, %9738
  %9742 = fmul fast float %9737, %9739
  %9743 = fmul fast float %9737, %9740
  %9744 = fadd fast float %9741, %9725
  %9745 = fadd fast float %9742, %9726
  %9746 = fadd fast float %9743, %9727
  %9747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9748 = extractvalue %dx.types.CBufRet.f32 %9747, 0
  %9749 = extractvalue %dx.types.CBufRet.f32 %9747, 1
  %9750 = fadd fast float %9749, %9748
  %9751 = call float @dx.op.unary.f32(i32 7, float %9750)  ; Saturate(value)
  %9752 = extractvalue %dx.types.CBufRet.f32 %9747, 2
  %9753 = extractvalue %dx.types.CBufRet.f32 %9747, 3
  %9754 = fadd fast float %9753, %9752
  %9755 = call float @dx.op.unary.f32(i32 7, float %9754)  ; Saturate(value)
  %9756 = fmul fast float %9751, %9735
  %9757 = fmul fast float %9756, %9755
  br label %9758

; <label>:9758                                    ; preds = %9719, %9638, %9473, %9455, %9453
  %9759 = phi float [ %9482, %9473 ], [ %9641, %9638 ], [ %9723, %9719 ], [ 0.000000e+00, %9453 ], [ 0.000000e+00, %9455 ]
  %9760 = phi float [ %9516, %9473 ], [ %9675, %9638 ], [ %9757, %9719 ], [ 0.000000e+00, %9453 ], [ 0.000000e+00, %9455 ]
  %9761 = phi float [ %9503, %9473 ], [ %9662, %9638 ], [ %9744, %9719 ], [ 0.000000e+00, %9453 ], [ 0.000000e+00, %9455 ]
  %9762 = phi float [ %9504, %9473 ], [ %9663, %9638 ], [ %9745, %9719 ], [ 0.000000e+00, %9453 ], [ 0.000000e+00, %9455 ]
  %9763 = phi float [ %9505, %9473 ], [ %9664, %9638 ], [ %9746, %9719 ], [ 0.000000e+00, %9453 ], [ 0.000000e+00, %9455 ]
  %9764 = fmul fast float %9396, %9760
  %9765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9766 = extractvalue %dx.types.CBufRet.f32 %9765, 2
  %9767 = fsub fast float %9403, %9766
  %9768 = fcmp fast olt float %9764, -2.000000e+01
  %9769 = call float @dx.op.unary.f32(i32 21, float %9764)  ; Exp(value)
  %9770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9771 = extractvalue %dx.types.CBufRet.f32 %9770, 2
  %9772 = extractvalue %dx.types.CBufRet.f32 %9770, 3
  %9773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9774 = extractvalue %dx.types.CBufRet.f32 %9773, 2
  %9775 = fmul fast float %9772, %9767
  %9776 = call float @dx.op.unary.f32(i32 7, float %9775)  ; Saturate(value)
  %9777 = fsub fast float 1.000000e+00, %9776
  %9778 = fmul fast float %2600, 5.000000e-01
  %9779 = fadd fast float %9778, 5.000000e-01
  %9780 = call float @dx.op.unary.f32(i32 7, float %9779)  ; Saturate(value)
  %9781 = fsub fast float 1.000000e+00, %9780
  %9782 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9777)  ; FMax(a,b)
  %9783 = fdiv fast float %9781, %9782
  %9784 = fsub fast float %9767, %157
  %9785 = call float @dx.op.unary.f32(i32 6, float %9784)  ; FAbs(value)
  %9786 = fmul fast float %9785, %9771
  %9787 = call float @dx.op.unary.f32(i32 7, float %9783)  ; Saturate(value)
  %9788 = fsub fast float 1.000000e+00, %9786
  %9789 = fmul fast float %9788, %9787
  %9790 = fadd fast float %9789, %9786
  %9791 = fmul fast float %9774, %9767
  %9792 = call float @dx.op.unary.f32(i32 7, float %9791)  ; Saturate(value)
  %9793 = fsub fast float 1.000000e+00, %9790
  %9794 = fmul fast float %9793, %9792
  %9795 = fadd fast float %9794, %9790
  %9796 = call float @dx.op.unary.f32(i32 7, float %9795)  ; Saturate(value)
  %9797 = fadd fast float %9769, -1.000000e+00
  %9798 = select i1 %9768, float -1.000000e+00, float %9797
  %9799 = fmul fast float %9796, %9798
  %9800 = fadd fast float %9799, 1.000000e+00
  %9801 = fsub fast float -0.000000e+00, %9799
  %9802 = fmul fast float %9761, %9801
  %9803 = fmul fast float %9762, %9801
  %9804 = fmul fast float %9763, %9801
  br label %9805

; <label>:9805                                    ; preds = %9758, %9359
  %9806 = phi float [ %9759, %9758 ], [ 0.000000e+00, %9359 ]
  %9807 = phi float [ %9800, %9758 ], [ 1.000000e+00, %9359 ]
  %9808 = phi float [ %9802, %9758 ], [ 0.000000e+00, %9359 ]
  %9809 = phi float [ %9803, %9758 ], [ 0.000000e+00, %9359 ]
  %9810 = phi float [ %9804, %9758 ], [ 0.000000e+00, %9359 ]
  %9811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9812 = extractvalue %dx.types.CBufRet.f32 %9811, 1
  %9813 = fsub fast float 1.000000e+00, %9807
  %9814 = fmul fast float %9813, %9389
  %9815 = fmul fast float %9814, %9812
  %9816 = fsub fast float %9389, %9815
  br i1 %9387, label %9817, label %9846, !dx.controlflow.hints !208

; <label>:9817                                    ; preds = %9805
  %9818 = fmul fast float %9390, %9384
  %9819 = fadd fast float %9818, %9385
  %9820 = call float @dx.op.unary.f32(i32 7, float %9819)  ; Saturate(value)
  %9821 = fmul fast float %9366, %9816
  %9822 = fsub fast float -0.000000e+00, %9821
  %9823 = fmul fast float %9367, %9816
  %9824 = fsub fast float -0.000000e+00, %9823
  %9825 = call float @dx.op.unary.f32(i32 21, float %9822)  ; Exp(value)
  %9826 = call float @dx.op.unary.f32(i32 21, float %9824)  ; Exp(value)
  %9827 = call float @dx.op.binary.f32(i32 35, float %9374, float %9825)  ; FMax(a,b)
  %9828 = call float @dx.op.binary.f32(i32 35, float %9374, float %9826)  ; FMax(a,b)
  %9829 = fsub fast float %9828, %9827
  %9830 = fmul fast float %9829, %9820
  %9831 = fadd fast float %9830, %9827
  %9832 = call float @dx.op.unary.f32(i32 7, float %9831)  ; Saturate(value)
  %9833 = fsub fast float %9371, %9376
  %9834 = fsub fast float %9372, %9377
  %9835 = fsub fast float %9373, %9378
  %9836 = fmul fast float %9820, %9833
  %9837 = fmul fast float %9820, %9834
  %9838 = fmul fast float %9820, %9835
  %9839 = fadd fast float %9836, %9376
  %9840 = fadd fast float %9837, %9377
  %9841 = fadd fast float %9838, %9378
  %9842 = fsub fast float 1.000000e+00, %9832
  %9843 = fmul fast float %9842, %9839
  %9844 = fmul fast float %9842, %9840
  %9845 = fmul fast float %9842, %9841
  br label %9905

; <label>:9846                                    ; preds = %9805
  %9847 = fmul fast float %9816, %9383
  %9848 = call float @dx.op.unary.f32(i32 7, float %9847)  ; Saturate(value)
  %9849 = fsub fast float 2.000000e+00, %9848
  %9850 = fmul fast float %9848, 9.921875e-01
  %9851 = fmul fast float %9850, %9849
  %9852 = fadd fast float %9851, 3.906250e-03
  %9853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %63, float %9852, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9854 = extractvalue %dx.types.ResRet.f32 %9853, 0
  %9855 = fsub fast float %9848, %9854
  %9856 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9855)  ; FMax(a,b)
  %9857 = fmul fast float %9369, %157
  %9858 = call float @dx.op.unary.f32(i32 6, float %9857)  ; FAbs(value)
  %9859 = fcmp fast ogt float %9858, 0x3EB0C6F7A0000000
  br i1 %9859, label %9860, label %9866, !dx.controlflow.hints !209

; <label>:9860                                    ; preds = %9846
  %9861 = fmul fast float %9857, 0xBFF7154760000000
  %9862 = call float @dx.op.unary.f32(i32 21, float %9861)  ; Exp(value)
  %9863 = fsub fast float 1.000000e+00, %9862
  %9864 = fdiv fast float %9863, %9857
  %9865 = fmul fast float %9864, %9379
  br label %9866

; <label>:9866                                    ; preds = %9860, %9846
  %9867 = phi float [ %9865, %9860 ], [ %9379, %9846 ]
  %9868 = fadd fast float %9867, %9381
  %9869 = fmul fast float %9868, %9856
  %9870 = fmul fast float %9366, %9869
  %9871 = fsub fast float -0.000000e+00, %9870
  %9872 = fmul fast float %9367, %9869
  %9873 = fsub fast float -0.000000e+00, %9872
  %9874 = fmul fast float %9368, %9869
  %9875 = fsub fast float -0.000000e+00, %9874
  %9876 = call float @dx.op.unary.f32(i32 21, float %9871)  ; Exp(value)
  %9877 = call float @dx.op.unary.f32(i32 21, float %9873)  ; Exp(value)
  %9878 = call float @dx.op.unary.f32(i32 21, float %9875)  ; Exp(value)
  %9879 = fmul fast float %9390, %9390
  %9880 = fadd fast float %9879, 1.000000e+00
  %9881 = fmul fast float %9880, 0x3FAE8EC8A0000000
  %9882 = fmul fast float %9881, %9376
  %9883 = fmul fast float %9881, %9377
  %9884 = fmul fast float %9881, %9378
  %9885 = fmul fast float %9390, %9374
  %9886 = fsub fast float 1.000000e+00, %9885
  %9887 = fmul fast float %9374, %9374
  %9888 = fsub fast float 1.000000e+00, %9887
  %9889 = fmul fast float %9888, 0x3FB45F3060000000
  %9890 = fmul fast float %9886, %9886
  %9891 = fdiv fast float 1.000000e+00, %9890
  %9892 = fmul fast float %9889, %9891
  %9893 = fmul fast float %9892, %9371
  %9894 = fmul fast float %9892, %9372
  %9895 = fmul fast float %9892, %9373
  %9896 = fadd fast float %9893, %9882
  %9897 = fadd fast float %9894, %9883
  %9898 = fadd fast float %9895, %9884
  %9899 = fsub fast float 1.000000e+00, %9876
  %9900 = fsub fast float 1.000000e+00, %9877
  %9901 = fsub fast float 1.000000e+00, %9878
  %9902 = fmul fast float %9896, %9899
  %9903 = fmul fast float %9897, %9900
  %9904 = fmul fast float %9898, %9901
  br label %9905

; <label>:9905                                    ; preds = %9866, %9817
  %9906 = phi float [ %9843, %9817 ], [ %9902, %9866 ]
  %9907 = phi float [ %9844, %9817 ], [ %9903, %9866 ]
  %9908 = phi float [ %9845, %9817 ], [ %9904, %9866 ]
  %9909 = phi float [ %9832, %9817 ], [ %9876, %9866 ]
  %9910 = phi float [ %9832, %9817 ], [ %9877, %9866 ]
  %9911 = phi float [ %9832, %9817 ], [ %9878, %9866 ]
  br i1 %9398, label %9912, label %10110, !dx.controlflow.hints !210

; <label>:9912                                    ; preds = %9905
  %9913 = extractvalue %dx.types.CBufRet.f32 %9811, 0
  %9914 = fmul fast float %9913, %9813
  %9915 = fsub fast float %9808, %9906
  %9916 = fsub fast float %9809, %9907
  %9917 = fsub fast float %9810, %9908
  %9918 = fmul fast float %9914, %9915
  %9919 = fmul fast float %9914, %9916
  %9920 = fmul fast float %9914, %9917
  %9921 = fadd fast float %9918, %9906
  %9922 = fadd fast float %9919, %9907
  %9923 = fadd fast float %9920, %9908
  %9924 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9909)  ; FMax(a,b)
  %9925 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9910)  ; FMax(a,b)
  %9926 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9911)  ; FMax(a,b)
  %9927 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9807)  ; FMax(a,b)
  %9928 = call float @dx.op.binary.f32(i32 35, float %9806, float %9816)  ; FMax(a,b)
  %9929 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9928)  ; FMax(a,b)
  %9930 = fdiv fast float %9806, %9929
  %9931 = call float @dx.op.unary.f32(i32 7, float %9930)  ; Saturate(value)
  %9932 = fdiv fast float %9816, %9929
  %9933 = call float @dx.op.unary.f32(i32 7, float %9932)  ; Saturate(value)
  %9934 = fcmp fast une float %9927, 1.000000e+00
  br i1 %9934, label %9935, label %9948, !dx.controlflow.hints !211

; <label>:9935                                    ; preds = %9912
  %9936 = call float @dx.op.unary.f32(i32 23, float %9927)  ; Log(value)
  %9937 = fmul fast float %9936, 0x3FE62E4300000000
  %9938 = fmul fast float %9808, %9937
  %9939 = fsub fast float -0.000000e+00, %9938
  %9940 = fmul fast float %9809, %9937
  %9941 = fsub fast float -0.000000e+00, %9940
  %9942 = fmul fast float %9810, %9937
  %9943 = fsub fast float -0.000000e+00, %9942
  %9944 = fsub fast float 1.000000e+00, %9927
  %9945 = fdiv fast float %9939, %9944
  %9946 = fdiv fast float %9941, %9944
  %9947 = fdiv fast float %9943, %9944
  br label %9948

; <label>:9948                                    ; preds = %9935, %9912
  %9949 = phi float [ %9945, %9935 ], [ %9808, %9912 ]
  %9950 = phi float [ %9946, %9935 ], [ %9809, %9912 ]
  %9951 = phi float [ %9947, %9935 ], [ %9810, %9912 ]
  %9952 = phi float [ %9937, %9935 ], [ 0.000000e+00, %9912 ]
  %9953 = fcmp fast une float %9924, 1.000000e+00
  br i1 %9953, label %9954, label %9961, !dx.controlflow.hints !212

; <label>:9954                                    ; preds = %9948
  %9955 = call float @dx.op.unary.f32(i32 23, float %9924)  ; Log(value)
  %9956 = fmul fast float %9955, 0x3FE62E4300000000
  %9957 = fmul fast float %9921, %9956
  %9958 = fsub fast float -0.000000e+00, %9957
  %9959 = fsub fast float 1.000000e+00, %9924
  %9960 = fdiv fast float %9958, %9959
  br label %9961

; <label>:9961                                    ; preds = %9954, %9948
  %9962 = phi float [ %9960, %9954 ], [ %9921, %9948 ]
  %9963 = phi float [ %9956, %9954 ], [ 0.000000e+00, %9948 ]
  %9964 = fcmp fast une float %9925, 1.000000e+00
  br i1 %9964, label %9965, label %9972, !dx.controlflow.hints !212

; <label>:9965                                    ; preds = %9961
  %9966 = call float @dx.op.unary.f32(i32 23, float %9925)  ; Log(value)
  %9967 = fmul fast float %9966, 0x3FE62E4300000000
  %9968 = fmul fast float %9922, %9967
  %9969 = fsub fast float -0.000000e+00, %9968
  %9970 = fsub fast float 1.000000e+00, %9925
  %9971 = fdiv fast float %9969, %9970
  br label %9972

; <label>:9972                                    ; preds = %9965, %9961
  %9973 = phi float [ %9971, %9965 ], [ %9922, %9961 ]
  %9974 = phi float [ %9967, %9965 ], [ 0.000000e+00, %9961 ]
  %9975 = fcmp fast une float %9926, 1.000000e+00
  br i1 %9975, label %9976, label %9983, !dx.controlflow.hints !212

; <label>:9976                                    ; preds = %9972
  %9977 = call float @dx.op.unary.f32(i32 23, float %9926)  ; Log(value)
  %9978 = fmul fast float %9977, 0x3FE62E4300000000
  %9979 = fmul fast float %9923, %9978
  %9980 = fsub fast float -0.000000e+00, %9979
  %9981 = fsub fast float 1.000000e+00, %9926
  %9982 = fdiv fast float %9980, %9981
  br label %9983

; <label>:9983                                    ; preds = %9976, %9972
  %9984 = phi float [ %9982, %9976 ], [ %9923, %9972 ]
  %9985 = phi float [ %9978, %9976 ], [ 0.000000e+00, %9972 ]
  %9986 = fmul fast float %9949, %9933
  %9987 = fmul fast float %9950, %9933
  %9988 = fmul fast float %9951, %9933
  %9989 = fmul fast float %9952, %9933
  %9990 = fmul fast float %9962, %9931
  %9991 = fmul fast float %9973, %9931
  %9992 = fmul fast float %9984, %9931
  %9993 = fmul fast float %9963, %9931
  %9994 = fmul fast float %9974, %9931
  %9995 = fmul fast float %9985, %9931
  %9996 = fadd fast float %9990, %9986
  %9997 = fadd fast float %9991, %9987
  %9998 = fadd fast float %9992, %9988
  %9999 = fadd fast float %9993, %9989
  %10000 = fadd fast float %9994, %9989
  %10001 = fadd fast float %9995, %9989
  %10002 = fcmp fast une float %9999, 0.000000e+00
  br i1 %10002, label %10003, label %10010, !dx.controlflow.hints !213

; <label>:10003                                   ; preds = %9983
  %10004 = fmul fast float %9999, 0x3FF7154760000000
  %10005 = call float @dx.op.unary.f32(i32 21, float %10004)  ; Exp(value)
  %10006 = fsub fast float 1.000000e+00, %10005
  %10007 = fmul fast float %9996, %10006
  %10008 = fsub fast float -0.000000e+00, %10007
  %10009 = fdiv fast float %10008, %9999
  br label %10010

; <label>:10010                                   ; preds = %10003, %9983
  %10011 = phi float [ %10005, %10003 ], [ 1.000000e+00, %9983 ]
  %10012 = phi float [ %10009, %10003 ], [ %9996, %9983 ]
  %10013 = fcmp fast une float %10000, 0.000000e+00
  br i1 %10013, label %10014, label %10021, !dx.controlflow.hints !213

; <label>:10014                                   ; preds = %10010
  %10015 = fmul fast float %10000, 0x3FF7154760000000
  %10016 = call float @dx.op.unary.f32(i32 21, float %10015)  ; Exp(value)
  %10017 = fsub fast float 1.000000e+00, %10016
  %10018 = fmul fast float %9997, %10017
  %10019 = fsub fast float -0.000000e+00, %10018
  %10020 = fdiv fast float %10019, %10000
  br label %10021

; <label>:10021                                   ; preds = %10014, %10010
  %10022 = phi float [ %10016, %10014 ], [ 1.000000e+00, %10010 ]
  %10023 = phi float [ %10020, %10014 ], [ %9997, %10010 ]
  %10024 = fcmp fast une float %10001, 0.000000e+00
  br i1 %10024, label %10025, label %10032, !dx.controlflow.hints !213

; <label>:10025                                   ; preds = %10021
  %10026 = fmul fast float %10001, 0x3FF7154760000000
  %10027 = call float @dx.op.unary.f32(i32 21, float %10026)  ; Exp(value)
  %10028 = fsub fast float 1.000000e+00, %10027
  %10029 = fmul fast float %9998, %10028
  %10030 = fsub fast float -0.000000e+00, %10029
  %10031 = fdiv fast float %10030, %10001
  br label %10032

; <label>:10032                                   ; preds = %10025, %10021
  %10033 = phi float [ %10027, %10025 ], [ 1.000000e+00, %10021 ]
  %10034 = phi float [ %10031, %10025 ], [ %9998, %10021 ]
  %10035 = fcmp fast ogt float %9931, %9933
  br i1 %10035, label %10036, label %10056

; <label>:10036                                   ; preds = %10032
  %10037 = fsub fast float 1.000000e+00, %9933
  %10038 = fmul fast float %9949, %10037
  %10039 = fmul fast float %9950, %10037
  %10040 = fmul fast float %9951, %10037
  %10041 = fmul fast float %9952, %10037
  %10042 = fcmp fast une float %10041, 0.000000e+00
  br i1 %10042, label %10043, label %10094, !dx.controlflow.hints !214

; <label>:10043                                   ; preds = %10036
  %10044 = fmul fast float %10041, 0x3FF7154760000000
  %10045 = call float @dx.op.unary.f32(i32 21, float %10044)  ; Exp(value)
  %10046 = fsub fast float 1.000000e+00, %10045
  %10047 = fmul fast float %10038, %10046
  %10048 = fsub fast float -0.000000e+00, %10047
  %10049 = fmul fast float %10039, %10046
  %10050 = fsub fast float -0.000000e+00, %10049
  %10051 = fmul fast float %10040, %10046
  %10052 = fsub fast float -0.000000e+00, %10051
  %10053 = fdiv fast float %10048, %10041
  %10054 = fdiv fast float %10050, %10041
  %10055 = fdiv fast float %10052, %10041
  br label %10094

; <label>:10056                                   ; preds = %10032
  %10057 = fsub fast float 1.000000e+00, %9931
  %10058 = fmul fast float %9962, %10057
  %10059 = fmul fast float %9973, %10057
  %10060 = fmul fast float %9984, %10057
  %10061 = fmul fast float %9963, %10057
  %10062 = fmul fast float %9974, %10057
  %10063 = fmul fast float %9985, %10057
  %10064 = fcmp fast une float %10061, 0.000000e+00
  br i1 %10064, label %10065, label %10072, !dx.controlflow.hints !213

; <label>:10065                                   ; preds = %10056
  %10066 = fmul fast float %10061, 0x3FF7154760000000
  %10067 = call float @dx.op.unary.f32(i32 21, float %10066)  ; Exp(value)
  %10068 = fsub fast float 1.000000e+00, %10067
  %10069 = fmul fast float %10058, %10068
  %10070 = fsub fast float -0.000000e+00, %10069
  %10071 = fdiv fast float %10070, %10061
  br label %10072

; <label>:10072                                   ; preds = %10065, %10056
  %10073 = phi float [ %10071, %10065 ], [ %10058, %10056 ]
  %10074 = phi float [ %10067, %10065 ], [ 1.000000e+00, %10056 ]
  %10075 = fcmp fast une float %10062, 0.000000e+00
  br i1 %10075, label %10076, label %10083, !dx.controlflow.hints !213

; <label>:10076                                   ; preds = %10072
  %10077 = fmul fast float %10062, 0x3FF7154760000000
  %10078 = call float @dx.op.unary.f32(i32 21, float %10077)  ; Exp(value)
  %10079 = fsub fast float 1.000000e+00, %10078
  %10080 = fmul fast float %10059, %10079
  %10081 = fsub fast float -0.000000e+00, %10080
  %10082 = fdiv fast float %10081, %10062
  br label %10083

; <label>:10083                                   ; preds = %10076, %10072
  %10084 = phi float [ %10082, %10076 ], [ %10059, %10072 ]
  %10085 = phi float [ %10078, %10076 ], [ 1.000000e+00, %10072 ]
  %10086 = fcmp fast une float %10063, 0.000000e+00
  br i1 %10086, label %10087, label %10094, !dx.controlflow.hints !213

; <label>:10087                                   ; preds = %10083
  %10088 = fmul fast float %10063, 0x3FF7154760000000
  %10089 = call float @dx.op.unary.f32(i32 21, float %10088)  ; Exp(value)
  %10090 = fsub fast float 1.000000e+00, %10089
  %10091 = fmul fast float %10060, %10090
  %10092 = fsub fast float -0.000000e+00, %10091
  %10093 = fdiv fast float %10092, %10063
  br label %10094

; <label>:10094                                   ; preds = %10087, %10083, %10043, %10036
  %10095 = phi float [ %10093, %10087 ], [ %10055, %10043 ], [ %10040, %10036 ], [ %10060, %10083 ]
  %10096 = phi float [ %10084, %10087 ], [ %10054, %10043 ], [ %10039, %10036 ], [ %10084, %10083 ]
  %10097 = phi float [ %10073, %10087 ], [ %10053, %10043 ], [ %10038, %10036 ], [ %10073, %10083 ]
  %10098 = phi float [ %10089, %10087 ], [ %10045, %10043 ], [ 1.000000e+00, %10036 ], [ 1.000000e+00, %10083 ]
  %10099 = phi float [ %10085, %10087 ], [ %10045, %10043 ], [ 1.000000e+00, %10036 ], [ %10085, %10083 ]
  %10100 = phi float [ %10074, %10087 ], [ %10045, %10043 ], [ 1.000000e+00, %10036 ], [ %10074, %10083 ]
  %10101 = fmul fast float %10100, %10012
  %10102 = fmul fast float %10099, %10023
  %10103 = fmul fast float %10098, %10034
  %10104 = fadd fast float %10101, %10097
  %10105 = fadd fast float %10102, %10096
  %10106 = fadd fast float %10103, %10095
  %10107 = fmul fast float %10100, %10011
  %10108 = fmul fast float %10099, %10022
  %10109 = fmul fast float %10098, %10033
  br label %10110

; <label>:10110                                   ; preds = %10094, %9905
  %10111 = phi float [ %10109, %10094 ], [ %9911, %9905 ]
  %10112 = phi float [ %10108, %10094 ], [ %9910, %9905 ]
  %10113 = phi float [ %10107, %10094 ], [ %9909, %9905 ]
  %10114 = phi float [ %10106, %10094 ], [ %9908, %9905 ]
  %10115 = phi float [ %10105, %10094 ], [ %9907, %9905 ]
  %10116 = phi float [ %10104, %10094 ], [ %9906, %9905 ]
  %10117 = call float @dx.op.dot3.f32(i32 55, float %10113, float %10112, float %10111, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10118 = call float @dx.op.dot3.f32(i32 55, float %10116, float %10115, float %10114, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10119 = select i1 %2753, float %10117, float %10113
  %10120 = select i1 %2753, float %10117, float %10112
  %10121 = select i1 %2753, float 1.000000e+00, float %10111
  %10122 = select i1 %2753, float %10118, float %10116
  %10123 = select i1 %2753, float 0.000000e+00, float %10115
  %10124 = select i1 %2753, float 0.000000e+00, float %10114
  %10125 = fmul fast float %10119, %9354
  %10126 = fmul fast float %10120, %9356
  %10127 = fmul fast float %10121, %9358
  %10128 = fadd fast float %10125, %10122
  %10129 = fadd fast float %10126, %10123
  %10130 = fadd fast float %10124, %10127
  %10131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %10132 = extractvalue %dx.types.CBufRet.f32 %10131, 2
  %10133 = extractvalue %dx.types.CBufRet.f32 %10131, 3
  %10134 = fmul fast float %10132, %100
  %10135 = fmul fast float %10133, %101
  %10136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %63, float %10134, float %10135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10137 = extractvalue %dx.types.ResRet.f32 %10136, 0
  %10138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %63, float %10134, float %10135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10139 = extractvalue %dx.types.ResRet.f32 %10138, 0
  %10140 = extractvalue %dx.types.ResRet.f32 %10138, 1
  %10141 = extractvalue %dx.types.ResRet.f32 %10138, 2
  %10142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10143 = extractvalue %dx.types.CBufRet.f32 %10142, 1
  %10144 = fmul fast float %10143, %10139
  %10145 = fmul fast float %10143, %10140
  %10146 = fmul fast float %10143, %10141
  %10147 = fmul fast float %10137, %10113
  %10148 = call float @dx.op.dot3.f32(i32 55, float %10137, float %10137, float %10137, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10149 = call float @dx.op.dot3.f32(i32 55, float %10144, float %10145, float %10146, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10150 = select i1 %2753, float %10148, float %10137
  %10151 = select i1 %2753, float 1.000000e+00, float %10137
  %10152 = select i1 %2753, float %10149, float %10144
  %10153 = select i1 %2753, float 0.000000e+00, float %10145
  %10154 = select i1 %2753, float 0.000000e+00, float %10146
  %10155 = fmul fast float %10150, %10128
  %10156 = fmul fast float %10150, %10129
  %10157 = fmul fast float %10151, %10130
  %10158 = fadd fast float %10155, %10152
  %10159 = fadd fast float %10156, %10153
  %10160 = fadd fast float %10154, %10157
  br label %10161

; <label>:10161                                   ; preds = %10110, %9327
  %10162 = phi float [ %9354, %9327 ], [ %10158, %10110 ]
  %10163 = phi float [ %9356, %9327 ], [ %10159, %10110 ]
  %10164 = phi float [ %9358, %9327 ], [ %10160, %10110 ]
  %10165 = phi float [ 1.000000e+00, %9327 ], [ %10147, %10110 ]
  %10166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %10167 = extractvalue %dx.types.CBufRet.f32 %10166, 2
  %10168 = extractvalue %dx.types.CBufRet.f32 %10166, 3
  %10169 = fmul fast float %10167, %100
  %10170 = fmul fast float %10168, %101
  %10171 = call float @dx.op.unary.f32(i32 7, float %10169)  ; Saturate(value)
  %10172 = call float @dx.op.unary.f32(i32 7, float %10170)  ; Saturate(value)
  %10173 = select i1 %117, i32 0, i32 2
  %10174 = or i32 %10173, 1
  %10175 = uitofp i32 %10174 to float
  %10176 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %63, float %10171, float %10172, float %10175, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10177 = extractvalue %dx.types.ResRet.f32 %10176, 0
  %10178 = extractvalue %dx.types.ResRet.f32 %10176, 1
  %10179 = extractvalue %dx.types.ResRet.f32 %10176, 2
  %10180 = extractvalue %dx.types.ResRet.f32 %10176, 3
  %10181 = add nuw nsw i32 %10173, 2
  %10182 = uitofp i32 %10181 to float
  %10183 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %63, float %10171, float %10172, float %10182, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10184 = extractvalue %dx.types.ResRet.f32 %10183, 0
  %10185 = extractvalue %dx.types.ResRet.f32 %10183, 1
  %10186 = extractvalue %dx.types.ResRet.f32 %10183, 2
  %10187 = extractvalue %dx.types.ResRet.f32 %10183, 3
  %10188 = call float @dx.op.binary.f32(i32 35, float %10178, float %10179)  ; FMax(a,b)
  %10189 = call float @dx.op.binary.f32(i32 35, float %10177, float %10188)  ; FMax(a,b)
  %10190 = call float @dx.op.binary.f32(i32 35, float %10189, float %10180)  ; FMax(a,b)
  %10191 = call float @dx.op.binary.f32(i32 36, float %10185, float %10186)  ; FMin(a,b)
  %10192 = call float @dx.op.binary.f32(i32 36, float %10184, float %10191)  ; FMin(a,b)
  %10193 = call float @dx.op.binary.f32(i32 36, float %10192, float %10187)  ; FMin(a,b)
  %10194 = fmul fast float %10190, 2.550000e+02
  %10195 = fadd fast float %10194, 0x3F70101020000000
  %10196 = fptoui float %10195 to i32
  %10197 = fmul fast float %10193, 2.550000e+02
  %10198 = fadd fast float %10197, 0x3F70101020000000
  %10199 = fptoui float %10198 to i32
  %10200 = icmp ult i32 %10196, %10199
  br i1 %10200, label %10201, label %10253

; <label>:10201                                   ; preds = %10161
  %10202 = fcmp fast ogt float %88, 9.843750e-01
  %10203 = fadd fast float %89, -4.000000e+00
  %10204 = select i1 %10202, float -4.000000e+00, float %10203
  %10205 = call float @dx.op.binary.f32(i32 35, float %10204, float 0.000000e+00)  ; FMax(a,b)
  %10206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10207 = extractvalue %dx.types.CBufRet.f32 %10206, 0
  %10208 = fadd fast float %10207, %10205
  %10209 = extractvalue %dx.types.CBufRet.f32 %10206, 2
  %10210 = fmul fast float %10208, %10209
  %10211 = call float @dx.op.unary.f32(i32 23, float %10210)  ; Log(value)
  %10212 = extractvalue %dx.types.CBufRet.f32 %10206, 3
  %10213 = fmul fast float %10212, %10211
  %10214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10215 = extractvalue %dx.types.CBufRet.f32 %10214, 2
  %10216 = fmul fast float %10213, %10215
  %10217 = call float @dx.op.unary.f32(i32 7, float %10216)  ; Saturate(value)
  %10218 = uitofp i32 %10196 to float
  %10219 = uitofp i32 %10199 to float
  %10220 = fadd fast float %10218, 5.000000e-01
  %10221 = fadd fast float %10219, 5.000000e-01
  %10222 = fmul fast float %10215, %10220
  %10223 = fmul fast float %10215, %10221
  %10224 = fadd fast float %10222, 0x3F0FFB4800000000
  %10225 = fadd fast float %10223, 0xBF0FFB4800000000
  %10226 = call float @dx.op.binary.f32(i32 35, float %10217, float %10224)  ; FMax(a,b)
  %10227 = call float @dx.op.binary.f32(i32 36, float %10226, float %10225)  ; FMin(a,b)
  %10228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10229 = extractvalue %dx.types.CBufRet.f32 %10228, 1
  %10230 = extractvalue %dx.types.CBufRet.f32 %10228, 2
  %10231 = extractvalue %dx.types.CBufRet.f32 %10228, 0
  %10232 = select i1 %117, float 0.000000e+00, float %10231
  %10233 = fmul fast float %10229, %10227
  %10234 = fadd fast float %10232, %10233
  %10235 = fadd fast float %10232, %10230
  %10236 = fsub fast float %10229, %10230
  %10237 = fadd fast float %10236, %10232
  %10238 = call float @dx.op.binary.f32(i32 35, float %10234, float %10235)  ; FMax(a,b)
  %10239 = call float @dx.op.binary.f32(i32 36, float %10238, float %10237)  ; FMin(a,b)
  %10240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %61, float %10171, float %10172, float %10239, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10241 = extractvalue %dx.types.ResRet.f32 %10240, 0
  %10242 = extractvalue %dx.types.ResRet.f32 %10240, 1
  %10243 = extractvalue %dx.types.ResRet.f32 %10240, 2
  %10244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %61, float %10171, float %10172, float %10239, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10245 = extractvalue %dx.types.ResRet.f32 %10244, 0
  %10246 = extractvalue %dx.types.ResRet.f32 %10244, 1
  %10247 = extractvalue %dx.types.ResRet.f32 %10244, 2
  %10248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10249 = extractvalue %dx.types.CBufRet.f32 %10248, 1
  %10250 = fmul fast float %10249, %10245
  %10251 = fmul fast float %10249, %10246
  %10252 = fmul fast float %10249, %10247
  br label %10253

; <label>:10253                                   ; preds = %10201, %10161
  %10254 = phi float [ %10241, %10201 ], [ 1.000000e+00, %10161 ]
  %10255 = phi float [ %10242, %10201 ], [ 1.000000e+00, %10161 ]
  %10256 = phi float [ %10243, %10201 ], [ 1.000000e+00, %10161 ]
  %10257 = phi float [ %10250, %10201 ], [ 0.000000e+00, %10161 ]
  %10258 = phi float [ %10251, %10201 ], [ 0.000000e+00, %10161 ]
  %10259 = phi float [ %10252, %10201 ], [ 0.000000e+00, %10161 ]
  %10260 = fmul fast float %10254, %10165
  %10261 = call float @dx.op.dot3.f32(i32 55, float %10254, float %10255, float %10256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10262 = call float @dx.op.dot3.f32(i32 55, float %10257, float %10258, float %10259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10263 = select i1 %2753, float %10261, float %10254
  %10264 = select i1 %2753, float %10261, float %10255
  %10265 = select i1 %2753, float 1.000000e+00, float %10256
  %10266 = select i1 %2753, float %10262, float %10257
  %10267 = select i1 %2753, float 0.000000e+00, float %10258
  %10268 = select i1 %2753, float 0.000000e+00, float %10259
  %10269 = fmul fast float %10263, %10162
  %10270 = fmul fast float %10264, %10163
  %10271 = fmul fast float %10265, %10164
  %10272 = fadd fast float %10269, %10266
  %10273 = fadd fast float %10270, %10267
  %10274 = fadd fast float %10268, %10271
  %10275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10276 = extractvalue %dx.types.CBufRet.i32 %10275, 3
  %10277 = and i32 %10276, 3
  %10278 = icmp ne i32 %10277, 0
  %10279 = and i32 %10276, 4
  %10280 = icmp ne i32 %10279, 0
  %10281 = and i1 %10278, %10280
  %10282 = and i1 %2753, %10281
  br i1 %10282, label %10283, label %10289

; <label>:10283                                   ; preds = %10253
  %10284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10285 = extractvalue %dx.types.CBufRet.f32 %10284, 1
  %10286 = fadd fast float %10260, -1.000000e+00
  %10287 = fmul fast float %10285, %10286
  %10288 = fadd fast float %10287, 1.000000e+00
  br label %10289

; <label>:10289                                   ; preds = %10283, %10253
  %10290 = phi float [ %10288, %10283 ], [ %10260, %10253 ]
  %10291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10292 = extractvalue %dx.types.CBufRet.f32 %10291, 0
  br i1 %2753, label %10293, label %10307

; <label>:10293                                   ; preds = %10289
  %10294 = fadd fast float %10272, %10273
  %10295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10296 = extractvalue %dx.types.CBufRet.f32 %10295, 3
  %10297 = extractvalue %dx.types.CBufRet.f32 %9338, 1
  %10298 = fsub fast float %9344, %9332
  %10299 = fadd fast float %10298, %9345
  %10300 = fsub fast float %10299, %10297
  %10301 = extractvalue %dx.types.CBufRet.f32 %9338, 2
  %10302 = fmul fast float %10300, %10301
  %10303 = call float @dx.op.unary.f32(i32 7, float %10302)  ; Saturate(value)
  %10304 = fsub fast float %10303, %10296
  %10305 = fmul fast float %10304, %10290
  %10306 = fadd fast float %10305, %10296
  br label %10310

; <label>:10307                                   ; preds = %10289
  %10308 = fmul fast float %10292, %10273
  %10309 = fmul fast float %10292, %10274
  br label %10310

; <label>:10310                                   ; preds = %10307, %10293
  %10311 = phi float [ %10294, %10293 ], [ %10272, %10307 ]
  %10312 = phi float [ %10306, %10293 ], [ %10308, %10307 ]
  %10313 = phi float [ 1.000000e+00, %10293 ], [ %10309, %10307 ]
  %10314 = fmul float %10292, %10311
  switch i32 %9259, label %10612 [
    i32 0, label %10627
    i32 1, label %10315
    i32 2, label %10316
    i32 3, label %10328
    i32 4, label %10337
    i32 5, label %10338
    i32 6, label %10339
    i32 12, label %10340
    i32 13, label %10341
    i32 14, label %10353
    i32 15, label %10365
    i32 16, label %10377
    i32 17, label %10378
    i32 63, label %10611
    i32 18, label %10379
    i32 25, label %10401
    i32 27, label %10402
    i32 28, label %10403
    i32 29, label %10404
    i32 31, label %10405
    i32 32, label %10428
    i32 33, label %10487
    i32 37, label %10505
    i32 38, label %10506
    i32 39, label %10515
    i32 40, label %10538
    i32 41, label %10542
    i32 52, label %10543
    i32 53, label %10544
    i32 54, label %10545
    i32 55, label %10546
    i32 56, label %10547
    i32 57, label %10549
    i32 58, label %10551
    i32 59, label %10589
    i32 60, label %10591
    i32 61, label %10593
    i32 64, label %10595
    i32 62, label %10610
  ]

; <label>:10315                                   ; preds = %10310
  br label %10612

; <label>:10316                                   ; preds = %10310
  %10317 = call float @dx.op.dot3.f32(i32 55, float %2570, float %2571, float %2572, float %2570, float %2571, float %2572)  ; Dot3(ax,ay,az,bx,by,bz)
  %10318 = call float @dx.op.unary.f32(i32 25, float %10317)  ; Rsqrt(value)
  %10319 = fmul fast float %2570, 5.000000e-01
  %10320 = fmul fast float %10319, %10318
  %10321 = fmul fast float %2571, 5.000000e-01
  %10322 = fmul fast float %10321, %10318
  %10323 = fmul fast float %2572, 5.000000e-01
  %10324 = fmul fast float %10323, %10318
  %10325 = fadd fast float %10320, 5.000000e-01
  %10326 = fadd fast float %10322, 5.000000e-01
  %10327 = fadd fast float %10324, 5.000000e-01
  br label %10612

; <label>:10328                                   ; preds = %10310
  %10329 = fcmp fast ole float %2699, 0x3FA4B5DCC0000000
  %10330 = fmul fast float %2699, 0x3FB3D07220000000
  %10331 = fadd fast float %2699, 0x3FAC28F5C0000000
  %10332 = fmul fast float %10331, 0x3FEE54EDE0000000
  %10333 = call float @dx.op.unary.f32(i32 23, float %10332)  ; Log(value)
  %10334 = fmul fast float %10333, 0x4003333340000000
  %10335 = call float @dx.op.unary.f32(i32 21, float %10334)  ; Exp(value)
  %10336 = select i1 %10329, float %10330, float %10335
  br label %10612

; <label>:10337                                   ; preds = %10310
  br label %10612

; <label>:10338                                   ; preds = %10310
  br label %10612

; <label>:10339                                   ; preds = %10310
  br label %10612

; <label>:10340                                   ; preds = %10310
  br label %10612

; <label>:10341                                   ; preds = %10310
  %10342 = and i32 %9328, 1023
  %10343 = uitofp i32 %10342 to float
  %10344 = lshr i32 %9328, 10
  %10345 = and i32 %10344, 1023
  %10346 = uitofp i32 %10345 to float
  %10347 = lshr i32 %9328, 20
  %10348 = and i32 %10347, 1023
  %10349 = uitofp i32 %10348 to float
  %10350 = fmul fast float %10343, 0x3F50040100000000
  %10351 = fmul fast float %10346, 0x3F50040100000000
  %10352 = fmul fast float %10349, 0x3F50040100000000
  br label %10612

; <label>:10353                                   ; preds = %10310
  %10354 = and i32 %9328, 1023
  %10355 = uitofp i32 %10354 to float
  %10356 = lshr i32 %9328, 10
  %10357 = and i32 %10356, 1023
  %10358 = uitofp i32 %10357 to float
  %10359 = lshr i32 %9328, 20
  %10360 = and i32 %10359, 1023
  %10361 = uitofp i32 %10360 to float
  %10362 = fmul fast float %10355, 0x3F50040100000000
  %10363 = fmul fast float %10358, 0x3F50040100000000
  %10364 = fmul fast float %10361, 0x3F50040100000000
  br label %10612

; <label>:10365                                   ; preds = %10310
  %10366 = and i32 %9328, 1023
  %10367 = uitofp i32 %10366 to float
  %10368 = lshr i32 %9328, 10
  %10369 = and i32 %10368, 1023
  %10370 = uitofp i32 %10369 to float
  %10371 = lshr i32 %9328, 20
  %10372 = and i32 %10371, 1023
  %10373 = uitofp i32 %10372 to float
  %10374 = fmul fast float %10367, 0x3F50040100000000
  %10375 = fmul fast float %10370, 0x3F50040100000000
  %10376 = fmul fast float %10373, 0x3F50040100000000
  br label %10612

; <label>:10377                                   ; preds = %10310
  br label %10612

; <label>:10378                                   ; preds = %10310
  br label %10612

; <label>:10379                                   ; preds = %10310
  %10380 = fcmp fast ogt float %2591, 0x3FB99999A0000000
  %10381 = fcmp fast ogt float %2592, 0x3FB99999A0000000
  %10382 = or i1 %10380, %10381
  %10383 = fcmp fast ogt float %2593, 0x3FB99999A0000000
  %10384 = or i1 %10382, %10383
  %10385 = fcmp fast olt float %2591, 0x3FB99999A0000000
  %10386 = fcmp fast olt float %2592, 0x3FB99999A0000000
  %10387 = or i1 %10385, %10386
  %10388 = fcmp fast olt float %2593, 0x3FB99999A0000000
  %10389 = or i1 %10387, %10388
  %10390 = fadd fast float %2591, %2582
  %10391 = fcmp fast ogt float %10390, 1.000000e+00
  %10392 = fadd fast float %2592, %2583
  %10393 = fcmp fast ogt float %10392, 1.000000e+00
  %10394 = or i1 %10391, %10393
  %10395 = fadd fast float %2593, %2584
  %10396 = fcmp fast ogt float %10395, 1.000000e+00
  %10397 = or i1 %10394, %10396
  %10398 = select i1 %10397, float 1.000000e+00, float 0.000000e+00
  %10399 = and i1 %10384, %10389
  %10400 = select i1 %10399, float 1.000000e+00, float 0.000000e+00
  br label %10612

; <label>:10401                                   ; preds = %10310
  br label %10612

; <label>:10402                                   ; preds = %10310
  br label %10612

; <label>:10403                                   ; preds = %10310
  br label %10612

; <label>:10404                                   ; preds = %10310
  br label %10612

; <label>:10405                                   ; preds = %10310
  %10406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %10407 = extractvalue %dx.types.CBufRet.f32 %10406, 0
  %10408 = extractvalue %dx.types.CBufRet.f32 %10406, 2
  %10409 = extractvalue %dx.types.CBufRet.f32 %10406, 3
  %10410 = fcmp fast olt float %2699, %10407
  br i1 %10410, label %10411, label %10425

; <label>:10411                                   ; preds = %12319, %12317, %10425, %10405
  %10412 = phi i32 [ 0, %10405 ], [ 1, %10425 ], [ 2, %12317 ], [ 3, %12319 ]
  %10413 = mul i32 %10412, 3
  %10414 = add i32 0, %10413
  %10415 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10414
  %10416 = load float, float* %10415, align 4
  %10417 = mul i32 %10412, 3
  %10418 = add i32 1, %10417
  %10419 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10418
  %10420 = load float, float* %10419, align 4
  %10421 = mul i32 %10412, 3
  %10422 = add i32 2, %10421
  %10423 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10422
  %10424 = load float, float* %10423, align 4
  br label %10612

; <label>:10425                                   ; preds = %10405
  %10426 = extractvalue %dx.types.CBufRet.f32 %10406, 1
  %10427 = fcmp fast olt float %2699, %10426
  br i1 %10427, label %10411, label %12317

; <label>:10428                                   ; preds = %10310
  %10429 = fcmp fast ole float %2582, 0x3F69A5C380000000
  %10430 = fcmp fast ole float %2583, 0x3F69A5C380000000
  %10431 = fcmp fast ole float %2584, 0x3F69A5C380000000
  %10432 = fmul fast float %2582, 0x4029D70A40000000
  %10433 = fmul fast float %2583, 0x4029D70A40000000
  %10434 = fmul fast float %2584, 0x4029D70A40000000
  %10435 = call float @dx.op.unary.f32(i32 23, float %2582)  ; Log(value)
  %10436 = call float @dx.op.unary.f32(i32 23, float %2583)  ; Log(value)
  %10437 = call float @dx.op.unary.f32(i32 23, float %2584)  ; Log(value)
  %10438 = fmul fast float %10435, 0x3FDAAAAAA0000000
  %10439 = fmul fast float %10436, 0x3FDAAAAAA0000000
  %10440 = fmul fast float %10437, 0x3FDAAAAAA0000000
  %10441 = call float @dx.op.unary.f32(i32 21, float %10438)  ; Exp(value)
  %10442 = call float @dx.op.unary.f32(i32 21, float %10439)  ; Exp(value)
  %10443 = call float @dx.op.unary.f32(i32 21, float %10440)  ; Exp(value)
  %10444 = fmul fast float %10441, 0x3FF0E147A0000000
  %10445 = fmul fast float %10442, 0x3FF0E147A0000000
  %10446 = fmul fast float %10443, 0x3FF0E147A0000000
  %10447 = fadd fast float %10444, 0xBFAC28F5C0000000
  %10448 = fadd fast float %10445, 0xBFAC28F5C0000000
  %10449 = fadd fast float %10446, 0xBFAC28F5C0000000
  %10450 = select i1 %10429, float %10432, float %10447
  %10451 = select i1 %10430, float %10433, float %10448
  %10452 = select i1 %10431, float %10434, float %10449
  %10453 = call float @dx.op.dot3.f32(i32 55, float %10450, float %10451, float %10452, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10454 = fcmp fast olt float %10453, 0x3FA0101020000000
  br i1 %10454, label %10463, label %10455

; <label>:10455                                   ; preds = %10428
  %10456 = fcmp fast ogt float %10453, 0x3FEEFEFF00000000
  br i1 %10456, label %10463, label %10457

; <label>:10457                                   ; preds = %10455
  %10458 = fcmp fast ogt float %10453, 0x3FEF5F5F60000000
  br i1 %10458, label %10463, label %10459

; <label>:10459                                   ; preds = %10457
  %10460 = fadd fast float %10453, %10453
  %10461 = fcmp fast ogt float %10460, 2.550000e+02
  br i1 %10461, label %10462, label %10463

; <label>:10462                                   ; preds = %10459
  br label %10463

; <label>:10463                                   ; preds = %10462, %10459, %10457, %10455, %10428
  %10464 = phi float [ 1.000000e+00, %10462 ], [ %10314, %10459 ], [ 1.000000e+00, %10428 ], [ 0x3FBD1D1D20000000, %10455 ], [ 0.000000e+00, %10457 ]
  %10465 = phi float [ 0.000000e+00, %10462 ], [ %10312, %10459 ], [ 0x3FE6666660000000, %10428 ], [ 1.000000e+00, %10455 ], [ 0.000000e+00, %10457 ]
  %10466 = phi float [ 1.000000e+00, %10462 ], [ %10313, %10459 ], [ 0.000000e+00, %10428 ], [ 0x3FDD5D5D60000000, %10455 ], [ 1.000000e+00, %10457 ]
  %10467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %10468 = extractvalue %dx.types.CBufRet.f32 %10467, 3
  %10469 = fmul fast float %10468, 8.000000e+00
  %10470 = fmul fast float %101, 5.000000e+02
  %10471 = fmul fast float %10470, %10168
  %10472 = fsub fast float %10471, %10469
  %10473 = call float @dx.op.unary.f32(i32 13, float %10472)  ; Sin(value)
  %10474 = fmul fast float %10473, %10473
  %10475 = fmul fast float %10474, 2.000000e+00
  %10476 = fadd fast float %10475, -1.000000e+00
  %10477 = call float @dx.op.unary.f32(i32 7, float %10476)  ; Saturate(value)
  %10478 = fsub fast float %10464, %10314
  %10479 = fsub fast float %10465, %10312
  %10480 = fsub fast float %10466, %10313
  %10481 = fmul fast float %10477, %10478
  %10482 = fmul fast float %10477, %10479
  %10483 = fmul fast float %10477, %10480
  %10484 = fadd fast float %10481, %10314
  %10485 = fadd fast float %10482, %10312
  %10486 = fadd fast float %10483, %10313
  br label %10612

; <label>:10487                                   ; preds = %10310
  %10488 = fcmp fast olt float %89, 1.280000e+02
  br i1 %10488, label %10489, label %10503

; <label>:10489                                   ; preds = %12335, %12333, %12331, %12329, %12327, %12325, %12323, %12321, %10503, %10487
  %10490 = phi i32 [ 0, %10487 ], [ 1, %10503 ], [ 2, %12321 ], [ 3, %12323 ], [ 4, %12325 ], [ 5, %12327 ], [ 6, %12329 ], [ 7, %12331 ], [ 8, %12333 ], [ 9, %12335 ]
  %10491 = mul i32 %10490, 3
  %10492 = add i32 0, %10491
  %10493 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10492
  %10494 = load float, float* %10493, align 4
  %10495 = mul i32 %10490, 3
  %10496 = add i32 1, %10495
  %10497 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10496
  %10498 = load float, float* %10497, align 4
  %10499 = mul i32 %10490, 3
  %10500 = add i32 2, %10499
  %10501 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10500
  %10502 = load float, float* %10501, align 4
  br label %10612

; <label>:10503                                   ; preds = %10487
  %10504 = fcmp fast olt float %89, 2.560000e+02
  br i1 %10504, label %10489, label %12321

; <label>:10505                                   ; preds = %10310
  br label %10612

; <label>:10506                                   ; preds = %10310
  %10507 = bitcast i32 %9328 to float
  %10508 = fcmp fast ogt float %10507, 0.000000e+00
  %10509 = select i1 %10508, float 0.000000e+00, float 1.000000e+00
  %10510 = fcmp fast olt float %10507, 1.000000e+00
  %10511 = select i1 %10510, float 1.000000e+00, float 0.000000e+00
  %10512 = select i1 %10510, float %10509, float 0.000000e+00
  %10513 = fmul fast float %10511, %2699
  %10514 = fmul fast float %10512, %2699
  br label %10612

; <label>:10515                                   ; preds = %10310
  %10516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %10517 = extractvalue %dx.types.CBufRet.f32 %10516, 0
  %10518 = extractvalue %dx.types.CBufRet.f32 %10516, 2
  %10519 = extractvalue %dx.types.CBufRet.f32 %10516, 3
  %10520 = fcmp fast olt float %9349, %10517
  br i1 %10520, label %10521, label %10535

; <label>:10521                                   ; preds = %12339, %12337, %10535, %10515
  %10522 = phi i32 [ 0, %10515 ], [ 1, %10535 ], [ 2, %12337 ], [ 3, %12339 ]
  %10523 = mul i32 %10522, 3
  %10524 = add i32 0, %10523
  %10525 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10524
  %10526 = load float, float* %10525, align 4
  %10527 = mul i32 %10522, 3
  %10528 = add i32 1, %10527
  %10529 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10528
  %10530 = load float, float* %10529, align 4
  %10531 = mul i32 %10522, 3
  %10532 = add i32 2, %10531
  %10533 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10532
  %10534 = load float, float* %10533, align 4
  br label %10612

; <label>:10535                                   ; preds = %10515
  %10536 = extractvalue %dx.types.CBufRet.f32 %10516, 1
  %10537 = fcmp fast olt float %9349, %10536
  br i1 %10537, label %10521, label %12337

; <label>:10538                                   ; preds = %10310
  %10539 = fadd fast float %9349, -5.000000e-01
  %10540 = fmul fast float %10539, 2.000000e+00
  %10541 = call float @dx.op.unary.f32(i32 7, float %10540)  ; Saturate(value)
  br label %10612

; <label>:10542                                   ; preds = %10310
  br label %10612

; <label>:10543                                   ; preds = %10310
  br label %10612

; <label>:10544                                   ; preds = %10310
  br label %10612

; <label>:10545                                   ; preds = %10310
  br label %10612

; <label>:10546                                   ; preds = %10310
  br label %10612

; <label>:10547                                   ; preds = %10310
  %10548 = bitcast i32 %9328 to float
  br label %10612

; <label>:10549                                   ; preds = %10310
  %10550 = bitcast i32 %9328 to float
  br label %10612

; <label>:10551                                   ; preds = %10310
  %10552 = and i32 %9328, 65535
  %10553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10552)  ; LegacyF16ToF32(value)
  %10554 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10555 = fptosi float %10554 to i32
  %10556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10557 = extractvalue %dx.types.CBufRet.f32 %10556, 0
  %10558 = extractvalue %dx.types.CBufRet.f32 %10556, 1
  %10559 = extractvalue %dx.types.CBufRet.f32 %10556, 2
  %10560 = fadd fast float %10557, %155
  %10561 = fadd fast float %10558, %156
  %10562 = fadd fast float %10559, %157
  %10563 = fptosi float %10560 to i32
  %10564 = fptosi float %10561 to i32
  %10565 = fptosi float %10562 to i32
  %10566 = xor i32 %10563, %10564
  %10567 = lshr i32 %10566, 1
  %10568 = and i32 %10567, 1
  %10569 = lshr i32 %10565, 1
  %10570 = and i32 %10569, 1
  %10571 = xor i32 %10570, 1
  %10572 = icmp ne i32 %10568, %10571
  switch i32 %10555, label %10612 [
    i32 -1, label %10573
    i32 -2, label %10574
    i32 -3, label %10576
    i32 -4, label %10578
    i32 -5, label %10580
    i32 -6, label %10581
    i32 -7, label %10582
  ]

; <label>:10573                                   ; preds = %10551
  br label %10612

; <label>:10574                                   ; preds = %10551
  %10575 = select i1 %10572, float 1.000000e+00, float 0.000000e+00
  br label %10612

; <label>:10576                                   ; preds = %10551
  %10577 = select i1 %10572, float 1.000000e+00, float 0.000000e+00
  br label %10612

; <label>:10578                                   ; preds = %10551
  %10579 = select i1 %10572, float 1.000000e+00, float 0.000000e+00
  br label %10612

; <label>:10580                                   ; preds = %10551
  br label %10612

; <label>:10581                                   ; preds = %10551
  br label %10612

; <label>:10582                                   ; preds = %10551
  %10583 = lshr i32 %9328, 16
  %10584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10583)  ; LegacyF16ToF32(value)
  %10585 = fmul fast float %10584, 0x3FD5555560000000
  %10586 = fsub fast float 1.000000e+00, %10585
  %10587 = fmul fast float %10585, %10553
  %10588 = fmul fast float %10586, %10553
  br label %10612

; <label>:10589                                   ; preds = %10310
  %10590 = bitcast i32 %9328 to float
  br label %10612

; <label>:10591                                   ; preds = %10310
  %10592 = bitcast i32 %9328 to float
  br label %10612

; <label>:10593                                   ; preds = %10310
  %10594 = bitcast i32 %9328 to float
  br label %10612

; <label>:10595                                   ; preds = %10310
  %10596 = and i32 %9328, 1023
  %10597 = uitofp i32 %10596 to float
  %10598 = lshr i32 %9328, 10
  %10599 = and i32 %10598, 1023
  %10600 = uitofp i32 %10599 to float
  %10601 = lshr i32 %9328, 20
  %10602 = and i32 %10601, 1023
  %10603 = uitofp i32 %10602 to float
  %10604 = fmul fast float %10597, 0x3F60040100000000
  %10605 = fmul fast float %10600, 0x3F60040100000000
  %10606 = fmul fast float %10603, 0x3F60040100000000
  %10607 = fadd fast float %10604, -1.000000e+00
  %10608 = fadd fast float %10605, -1.000000e+00
  %10609 = fadd fast float %10606, -1.000000e+00
  br label %10612

; <label>:10610                                   ; preds = %10310
  br label %10612

; <label>:10611                                   ; preds = %10310
  br label %10612

; <label>:10612                                   ; preds = %12339, %12335, %12319, %10611, %10610, %10595, %10593, %10591, %10589, %10582, %10581, %10580, %10578, %10576, %10574, %10573, %10551, %10549, %10547, %10546, %10545, %10544, %10543, %10542, %10538, %10521, %10506, %10505, %10489, %10463, %10411, %10404, %10403, %10402, %10401, %10379, %10378, %10377, %10365, %10353, %10341, %10340, %10339, %10338, %10337, %10328, %10316, %10315, %10310
  %10613 = phi float [ %10314, %10310 ], [ 0.000000e+00, %10610 ], [ %10607, %10595 ], [ %10594, %10593 ], [ %10592, %10591 ], [ %10590, %10589 ], [ %10314, %10551 ], [ 0.000000e+00, %10582 ], [ %10553, %10581 ], [ %10553, %10580 ], [ 0.000000e+00, %10578 ], [ %10577, %10576 ], [ %10575, %10574 ], [ %10553, %10573 ], [ %10550, %10549 ], [ %10548, %10547 ], [ 0.000000e+00, %10546 ], [ 0.000000e+00, %10545 ], [ 0.000000e+00, %10544 ], [ %155, %10542 ], [ %10541, %10538 ], [ %10513, %10506 ], [ 0.000000e+00, %10505 ], [ %10484, %10463 ], [ 0.000000e+00, %10404 ], [ 0.000000e+00, %10403 ], [ 0.000000e+00, %10402 ], [ 1.000000e+00, %10401 ], [ 0.000000e+00, %10611 ], [ 1.000000e+00, %10378 ], [ 5.000000e-01, %10377 ], [ %10374, %10365 ], [ %10362, %10353 ], [ %10350, %10341 ], [ %2702, %10340 ], [ %2700, %10339 ], [ %2591, %10338 ], [ %2528, %10337 ], [ %10336, %10328 ], [ %10325, %10316 ], [ %2582, %10315 ], [ %10416, %10411 ], [ %10494, %10489 ], [ %10526, %10521 ], [ 0.000000e+00, %10543 ], [ 1.000000e+00, %12319 ], [ 1.000000e+00, %12335 ], [ 1.000000e+00, %12339 ], [ %10398, %10379 ]
  %10614 = phi float [ %10312, %10310 ], [ 0.000000e+00, %10610 ], [ %10608, %10595 ], [ %10594, %10593 ], [ %10592, %10591 ], [ %10590, %10589 ], [ %10312, %10551 ], [ %10587, %10582 ], [ %10553, %10581 ], [ %10553, %10580 ], [ 0.000000e+00, %10578 ], [ 0.000000e+00, %10576 ], [ 0.000000e+00, %10574 ], [ %10553, %10573 ], [ %10550, %10549 ], [ %10548, %10547 ], [ 0.000000e+00, %10546 ], [ 0.000000e+00, %10545 ], [ 0.000000e+00, %10544 ], [ %156, %10542 ], [ %10541, %10538 ], [ %2699, %10506 ], [ 0.000000e+00, %10505 ], [ %10485, %10463 ], [ 1.000000e+00, %10404 ], [ 1.000000e+00, %10403 ], [ 1.000000e+00, %10402 ], [ 0x3FE6666660000000, %10401 ], [ 0.000000e+00, %10611 ], [ 1.000000e+00, %10378 ], [ 5.000000e-01, %10377 ], [ %10375, %10365 ], [ %10363, %10353 ], [ %10351, %10341 ], [ %2702, %10340 ], [ %2700, %10339 ], [ %2592, %10338 ], [ %2529, %10337 ], [ %10336, %10328 ], [ %10326, %10316 ], [ %2583, %10315 ], [ %10420, %10411 ], [ %10498, %10489 ], [ %10530, %10521 ], [ 0.000000e+00, %10543 ], [ 0.000000e+00, %12319 ], [ 0.000000e+00, %12335 ], [ 0.000000e+00, %12339 ], [ 0.000000e+00, %10379 ]
  %10615 = phi float [ %10313, %10310 ], [ 0.000000e+00, %10610 ], [ %10609, %10595 ], [ %10594, %10593 ], [ %10592, %10591 ], [ %10590, %10589 ], [ %10313, %10551 ], [ %10588, %10582 ], [ %10553, %10581 ], [ 0.000000e+00, %10580 ], [ %10579, %10578 ], [ 0.000000e+00, %10576 ], [ %10575, %10574 ], [ %10553, %10573 ], [ %10550, %10549 ], [ %10548, %10547 ], [ 0.000000e+00, %10546 ], [ 0.000000e+00, %10545 ], [ 0.000000e+00, %10544 ], [ %157, %10542 ], [ %10541, %10538 ], [ %10514, %10506 ], [ 0.000000e+00, %10505 ], [ %10486, %10463 ], [ 0.000000e+00, %10404 ], [ 0.000000e+00, %10403 ], [ 0.000000e+00, %10402 ], [ 0.000000e+00, %10401 ], [ 0.000000e+00, %10611 ], [ 1.000000e+00, %10378 ], [ 5.000000e-01, %10377 ], [ %10376, %10365 ], [ %10364, %10353 ], [ %10352, %10341 ], [ %2702, %10340 ], [ %2700, %10339 ], [ %2593, %10338 ], [ %2530, %10337 ], [ %10336, %10328 ], [ %10327, %10316 ], [ %2584, %10315 ], [ %10424, %10411 ], [ %10502, %10489 ], [ %10534, %10521 ], [ 1.000000e+00, %10543 ], [ 0.000000e+00, %12319 ], [ 0.000000e+00, %12335 ], [ 0.000000e+00, %12339 ], [ %10400, %10379 ]
  %10616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %10617 = extractvalue %dx.types.CBufRet.f32 %10616, 3
  %10618 = fsub fast float %10613, %10314
  %10619 = fsub fast float %10614, %10312
  %10620 = fsub fast float %10615, %10313
  %10621 = fmul fast float %10617, %10618
  %10622 = fmul fast float %10617, %10619
  %10623 = fmul fast float %10617, %10620
  %10624 = fadd fast float %10621, %10314
  %10625 = fadd fast float %10622, %10312
  %10626 = fadd fast float %10623, %10313
  br label %10627

; <label>:10627                                   ; preds = %10612, %10310
  %10628 = phi float [ %10624, %10612 ], [ %10314, %10310 ]
  %10629 = phi float [ %10625, %10612 ], [ %10312, %10310 ]
  %10630 = phi float [ %10626, %10612 ], [ %10313, %10310 ]
  %10631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %10632 = extractvalue %dx.types.CBufRet.f32 %10631, 0
  %10633 = bitcast float %10632 to i32
  %10634 = lshr i32 %10633, 8
  %10635 = and i32 %10634, 255
  %10636 = uitofp i32 %10635 to float
  %10637 = fptoui float %10636 to i32
  switch i32 %10637, label %10874 [
    i32 1, label %10638
    i32 2, label %10644
    i32 3, label %10650
    i32 4, label %10656
    i32 5, label %10662
    i32 6, label %10668
    i32 7, label %10674
    i32 8, label %10680
    i32 9, label %10686
    i32 10, label %10688
    i32 11, label %10709
    i32 12, label %10730
    i32 13, label %10742
    i32 14, label %10757
    i32 15, label %10762
    i32 16, label %10764
    i32 17, label %10766
    i32 18, label %10768
    i32 19, label %10770
    i32 20, label %10781
    i32 21, label %10792
    i32 22, label %10804
    i32 23, label %10838
    i32 24, label %10853
    i32 25, label %10868
    i32 26, label %10870
    i32 27, label %10872
  ]

; <label>:10638                                   ; preds = %10627
  %10639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10640 = extractvalue %dx.types.CBufRet.f32 %10639, 0
  %10641 = fmul fast float %10640, %8527
  %10642 = fmul fast float %10640, %8528
  %10643 = fmul fast float %10640, %8529
  br label %10874

; <label>:10644                                   ; preds = %10627
  %10645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10646 = extractvalue %dx.types.CBufRet.f32 %10645, 0
  %10647 = fmul fast float %10646, %8524
  %10648 = fmul fast float %10646, %8525
  %10649 = fmul fast float %10646, %8526
  br label %10874

; <label>:10650                                   ; preds = %10627
  %10651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10652 = extractvalue %dx.types.CBufRet.f32 %10651, 0
  %10653 = fmul fast float %10652, %2528
  %10654 = fmul fast float %10652, %2529
  %10655 = fmul fast float %10652, %2530
  br label %10874

; <label>:10656                                   ; preds = %10627
  %10657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10658 = extractvalue %dx.types.CBufRet.f32 %10657, 0
  %10659 = fmul fast float %10658, %8521
  %10660 = fmul fast float %10658, %8522
  %10661 = fmul fast float %10658, %8523
  br label %10874

; <label>:10662                                   ; preds = %10627
  %10663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10664 = extractvalue %dx.types.CBufRet.f32 %10663, 0
  %10665 = fmul fast float %10664, %8518
  %10666 = fmul fast float %10664, %8519
  %10667 = fmul fast float %10664, %8520
  br label %10874

; <label>:10668                                   ; preds = %10627
  %10669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10670 = extractvalue %dx.types.CBufRet.f32 %10669, 0
  %10671 = fmul fast float %10670, %5657
  %10672 = fmul fast float %10670, %5658
  %10673 = fmul fast float %10670, %5659
  br label %10874

; <label>:10674                                   ; preds = %10627
  %10675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10676 = extractvalue %dx.types.CBufRet.f32 %10675, 0
  %10677 = fmul fast float %10676, %5657
  %10678 = fmul fast float %10676, %5658
  %10679 = fmul fast float %10676, %5659
  br label %10874

; <label>:10680                                   ; preds = %10627
  %10681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10682 = extractvalue %dx.types.CBufRet.f32 %10681, 0
  %10683 = fmul fast float %5660, %10682
  %10684 = fmul fast float %5661, %10682
  %10685 = fmul fast float %5662, %10682
  br label %10874

; <label>:10686                                   ; preds = %10627
  %10687 = bitcast i32 %9328 to float
  br label %10874

; <label>:10688                                   ; preds = %10627
  %10689 = and i32 %9328, 1023
  %10690 = uitofp i32 %10689 to float
  %10691 = lshr i32 %9328, 10
  %10692 = and i32 %10691, 1023
  %10693 = uitofp i32 %10692 to float
  %10694 = lshr i32 %9328, 20
  %10695 = and i32 %10694, 1023
  %10696 = uitofp i32 %10695 to float
  %10697 = fmul fast float %10690, 0x3F60040100000000
  %10698 = fmul fast float %10693, 0x3F60040100000000
  %10699 = fmul fast float %10696, 0x3F60040100000000
  %10700 = fadd fast float %10697, -1.000000e+00
  %10701 = fadd fast float %10698, -1.000000e+00
  %10702 = fadd fast float %10699, -1.000000e+00
  %10703 = fcmp fast ogt float %10700, 0.000000e+00
  %10704 = select i1 %10703, float 1.000000e+00, float 0.000000e+00
  %10705 = fcmp fast ogt float %10701, 0.000000e+00
  %10706 = select i1 %10705, float 1.000000e+00, float 0.000000e+00
  %10707 = fcmp fast ogt float %10702, 0.000000e+00
  %10708 = select i1 %10707, float 1.000000e+00, float 0.000000e+00
  br label %10874

; <label>:10709                                   ; preds = %10627
  %10710 = and i32 %9328, 1023
  %10711 = uitofp i32 %10710 to float
  %10712 = lshr i32 %9328, 10
  %10713 = and i32 %10712, 1023
  %10714 = uitofp i32 %10713 to float
  %10715 = lshr i32 %9328, 20
  %10716 = and i32 %10715, 1023
  %10717 = uitofp i32 %10716 to float
  %10718 = fmul fast float %10711, 0x3F60040100000000
  %10719 = fmul fast float %10714, 0x3F60040100000000
  %10720 = fmul fast float %10717, 0x3F60040100000000
  %10721 = fadd fast float %10718, -1.000000e+00
  %10722 = fadd fast float %10719, -1.000000e+00
  %10723 = fadd fast float %10720, -1.000000e+00
  %10724 = fmul fast float %10723, %10722
  %10725 = fsub fast float %10723, %10724
  %10726 = fmul fast float %10722, %10721
  %10727 = fmul fast float %10725, %10721
  %10728 = fsub fast float %10722, %10726
  %10729 = fsub fast float %10725, %10727
  br label %10874

; <label>:10730                                   ; preds = %10627
  %10731 = and i32 %9328, 255
  %10732 = uitofp i32 %10731 to float
  %10733 = fmul fast float %10732, 0x3F70101020000000
  %10734 = lshr i32 %9328, 8
  %10735 = and i32 %10734, 255
  %10736 = uitofp i32 %10735 to float
  %10737 = fmul fast float %10736, 0x3F70101020000000
  %10738 = lshr i32 %9328, 16
  %10739 = and i32 %10738, 255
  %10740 = uitofp i32 %10739 to float
  %10741 = fmul fast float %10740, 0x3F70101020000000
  br label %10874

; <label>:10742                                   ; preds = %10627
  %10743 = and i32 %9328, 1023
  %10744 = uitofp i32 %10743 to float
  %10745 = lshr i32 %9328, 10
  %10746 = and i32 %10745, 1023
  %10747 = uitofp i32 %10746 to float
  %10748 = lshr i32 %9328, 20
  %10749 = and i32 %10748, 1023
  %10750 = uitofp i32 %10749 to float
  %10751 = fmul fast float %10744, 0x3F60040100000000
  %10752 = fmul fast float %10747, 0x3F60040100000000
  %10753 = fmul fast float %10750, 0x3F60040100000000
  %10754 = fadd fast float %10751, -1.000000e+00
  %10755 = fadd fast float %10752, -1.000000e+00
  %10756 = fadd fast float %10753, -1.000000e+00
  br label %10874

; <label>:10757                                   ; preds = %10627
  %10758 = icmp ne i32 %9328, 0
  %10759 = select i1 %10758, float 1.000000e+00, float %10628
  %10760 = select i1 %10758, float 0.000000e+00, float %10629
  %10761 = select i1 %10758, float 0.000000e+00, float %10630
  br label %10874

; <label>:10762                                   ; preds = %10627
  %10763 = bitcast i32 %9328 to float
  br label %10874

; <label>:10764                                   ; preds = %10627
  %10765 = bitcast i32 %9328 to float
  br label %10874

; <label>:10766                                   ; preds = %10627
  %10767 = bitcast i32 %9328 to float
  br label %10874

; <label>:10768                                   ; preds = %10627
  %10769 = bitcast i32 %9328 to float
  br label %10874

; <label>:10770                                   ; preds = %10627
  %10771 = and i32 %9328, 65535
  %10772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10771)  ; LegacyF16ToF32(value)
  %10773 = lshr i32 %9328, 16
  %10774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10773)  ; LegacyF16ToF32(value)
  %10775 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10777 = extractvalue %dx.types.CBufRet.f32 %10776, 0
  %10778 = fmul fast float %10777, %10772
  %10779 = fmul fast float %10777, %10774
  %10780 = fmul fast float %10777, %10775
  br label %10874

; <label>:10781                                   ; preds = %10627
  %10782 = and i32 %9328, 65535
  %10783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10782)  ; LegacyF16ToF32(value)
  %10784 = lshr i32 %9328, 16
  %10785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10784)  ; LegacyF16ToF32(value)
  %10786 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10788 = extractvalue %dx.types.CBufRet.f32 %10787, 0
  %10789 = fmul fast float %10788, %10783
  %10790 = fmul fast float %10788, %10785
  %10791 = fmul fast float %10788, %10786
  br label %10874

; <label>:10792                                   ; preds = %10627
  %10793 = and i32 %9328, 1023
  %10794 = uitofp i32 %10793 to float
  %10795 = lshr i32 %9328, 10
  %10796 = and i32 %10795, 1023
  %10797 = uitofp i32 %10796 to float
  %10798 = lshr i32 %9328, 20
  %10799 = and i32 %10798, 1023
  %10800 = uitofp i32 %10799 to float
  %10801 = fmul fast float %10794, 0x3F50040100000000
  %10802 = fmul fast float %10797, 0x3F50040100000000
  %10803 = fmul fast float %10800, 0x3F50040100000000
  br label %10874

; <label>:10804                                   ; preds = %10627
  %10805 = and i32 %9328, 1023
  %10806 = uitofp i32 %10805 to float
  %10807 = lshr i32 %9328, 10
  %10808 = and i32 %10807, 1023
  %10809 = uitofp i32 %10808 to float
  %10810 = lshr i32 %9328, 20
  %10811 = and i32 %10810, 1023
  %10812 = uitofp i32 %10811 to float
  %10813 = fmul fast float %10806, 0x3F60040100000000
  %10814 = fmul fast float %10809, 0x3F60040100000000
  %10815 = fmul fast float %10812, 0x3F60040100000000
  %10816 = fadd fast float %10813, -1.000000e+00
  %10817 = fadd fast float %10814, -1.000000e+00
  %10818 = fadd fast float %10815, -1.000000e+00
  %10819 = call float @dx.op.binary.f32(i32 35, float %10817, float %10818)  ; FMax(a,b)
  %10820 = call float @dx.op.binary.f32(i32 35, float %10816, float %10819)  ; FMax(a,b)
  %10821 = fmul fast float %10820, 2.000000e+00
  %10822 = call float @dx.op.unary.f32(i32 7, float %10821)  ; Saturate(value)
  %10823 = fmul fast float %10806, 0x3F94050140000000
  %10824 = fadd fast float %10823, -1.000000e+01
  %10825 = fmul fast float %10809, 0x3F94050140000000
  %10826 = fadd fast float %10825, -1.000000e+01
  %10827 = fmul fast float %10812, 0x3F94050140000000
  %10828 = fadd fast float %10827, -1.000000e+01
  %10829 = fsub fast float %10824, %10628
  %10830 = fsub fast float %10826, %10629
  %10831 = fsub fast float %10828, %10630
  %10832 = fmul fast float %10822, %10829
  %10833 = fmul fast float %10822, %10830
  %10834 = fmul fast float %10822, %10831
  %10835 = fadd fast float %10832, %10628
  %10836 = fadd fast float %10833, %10629
  %10837 = fadd fast float %10834, %10630
  br label %10874

; <label>:10838                                   ; preds = %10627
  %10839 = and i32 %9328, 1023
  %10840 = uitofp i32 %10839 to float
  %10841 = lshr i32 %9328, 10
  %10842 = and i32 %10841, 1023
  %10843 = uitofp i32 %10842 to float
  %10844 = lshr i32 %9328, 20
  %10845 = and i32 %10844, 1023
  %10846 = uitofp i32 %10845 to float
  %10847 = fmul fast float %10840, 0x3F60040100000000
  %10848 = fmul fast float %10843, 0x3F60040100000000
  %10849 = fmul fast float %10846, 0x3F60040100000000
  %10850 = fadd fast float %10847, -1.000000e+00
  %10851 = fadd fast float %10848, -1.000000e+00
  %10852 = fadd fast float %10849, -1.000000e+00
  br label %10874

; <label>:10853                                   ; preds = %10627
  %10854 = and i32 %9328, 1023
  %10855 = uitofp i32 %10854 to float
  %10856 = lshr i32 %9328, 10
  %10857 = and i32 %10856, 1023
  %10858 = uitofp i32 %10857 to float
  %10859 = lshr i32 %9328, 20
  %10860 = and i32 %10859, 1023
  %10861 = uitofp i32 %10860 to float
  %10862 = fmul fast float %10855, 0x3F60040100000000
  %10863 = fmul fast float %10858, 0x3F60040100000000
  %10864 = fmul fast float %10861, 0x3F60040100000000
  %10865 = fadd fast float %10862, -1.000000e+00
  %10866 = fadd fast float %10863, -1.000000e+00
  %10867 = fadd fast float %10864, -1.000000e+00
  br label %10874

; <label>:10868                                   ; preds = %10627
  %10869 = bitcast i32 %9328 to float
  br label %10874

; <label>:10870                                   ; preds = %10627
  %10871 = bitcast i32 %9328 to float
  br label %10874

; <label>:10872                                   ; preds = %10627
  %10873 = bitcast i32 %9328 to float
  br label %10874

; <label>:10874                                   ; preds = %10872, %10870, %10868, %10853, %10838, %10804, %10792, %10781, %10770, %10768, %10766, %10764, %10762, %10757, %10742, %10730, %10709, %10688, %10686, %10680, %10674, %10668, %10662, %10656, %10650, %10644, %10638, %10627
  %10875 = phi float [ %10628, %10627 ], [ %10873, %10872 ], [ %10871, %10870 ], [ %10869, %10868 ], [ %10865, %10853 ], [ %10850, %10838 ], [ %10835, %10804 ], [ %10801, %10792 ], [ %10789, %10781 ], [ %10778, %10770 ], [ %10769, %10768 ], [ %10767, %10766 ], [ %10765, %10764 ], [ %10763, %10762 ], [ %10754, %10742 ], [ %10733, %10730 ], [ %10721, %10709 ], [ %10704, %10688 ], [ %10687, %10686 ], [ %10683, %10680 ], [ %10677, %10674 ], [ %10671, %10668 ], [ %10665, %10662 ], [ %10659, %10656 ], [ %10653, %10650 ], [ %10647, %10644 ], [ %10641, %10638 ], [ %10759, %10757 ]
  %10876 = phi float [ %10629, %10627 ], [ %10873, %10872 ], [ %10871, %10870 ], [ %10869, %10868 ], [ %10866, %10853 ], [ %10851, %10838 ], [ %10836, %10804 ], [ %10802, %10792 ], [ %10790, %10781 ], [ %10779, %10770 ], [ %10769, %10768 ], [ %10767, %10766 ], [ %10765, %10764 ], [ %10763, %10762 ], [ %10755, %10742 ], [ %10737, %10730 ], [ %10728, %10709 ], [ %10706, %10688 ], [ %10687, %10686 ], [ %10684, %10680 ], [ %10678, %10674 ], [ %10672, %10668 ], [ %10666, %10662 ], [ %10660, %10656 ], [ %10654, %10650 ], [ %10648, %10644 ], [ %10642, %10638 ], [ %10760, %10757 ]
  %10877 = phi float [ %10630, %10627 ], [ %10873, %10872 ], [ %10871, %10870 ], [ %10869, %10868 ], [ %10867, %10853 ], [ %10852, %10838 ], [ %10837, %10804 ], [ %10803, %10792 ], [ %10791, %10781 ], [ %10780, %10770 ], [ %10769, %10768 ], [ %10767, %10766 ], [ %10765, %10764 ], [ %10763, %10762 ], [ %10756, %10742 ], [ %10741, %10730 ], [ %10729, %10709 ], [ %10708, %10688 ], [ %10687, %10686 ], [ %10685, %10680 ], [ %10679, %10674 ], [ %10673, %10668 ], [ %10667, %10662 ], [ %10661, %10656 ], [ %10655, %10650 ], [ %10649, %10644 ], [ %10643, %10638 ], [ %10761, %10757 ]
  %10878 = extractvalue %dx.types.CBufRet.f32 %10631, 3
  %10879 = fsub fast float %10875, %10628
  %10880 = fsub fast float %10876, %10629
  %10881 = fsub fast float %10877, %10630
  %10882 = fmul fast float %10878, %10879
  %10883 = fmul fast float %10878, %10880
  %10884 = fmul fast float %10878, %10881
  %10885 = fadd fast float %10882, %10628
  %10886 = fadd fast float %10883, %10629
  %10887 = fadd fast float %10884, %10630
  %10888 = lshr i32 %10633, 16
  %10889 = and i32 %10888, 255
  %10890 = uitofp i32 %10889 to float
  %10891 = fptoui float %10890 to i32
  switch i32 %10891, label %10938 [
    i32 16, label %10923
    i32 12, label %10922
    i32 3, label %10892
    i32 4, label %10893
    i32 15, label %10894
    i32 5, label %10903
    i32 6, label %10912
    i32 7, label %10921
    i32 11, label %10922
  ]

; <label>:10892                                   ; preds = %10874
  br label %10938

; <label>:10893                                   ; preds = %10874
  br label %10938

; <label>:10894                                   ; preds = %10874
  %10895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %10896 = extractvalue %dx.types.CBufRet.f32 %10895, 0
  %10897 = fadd fast float %10896, %10885
  %10898 = fadd fast float %10896, %10886
  %10899 = fadd fast float %10896, %10887
  %10900 = call float @dx.op.unary.f32(i32 7, float %10897)  ; Saturate(value)
  %10901 = call float @dx.op.unary.f32(i32 7, float %10898)  ; Saturate(value)
  %10902 = call float @dx.op.unary.f32(i32 7, float %10899)  ; Saturate(value)
  br label %10938

; <label>:10903                                   ; preds = %10874
  %10904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10905 = extractvalue %dx.types.CBufRet.f32 %10904, 0
  %10906 = bitcast float %10905 to i32
  %10907 = and i32 %10906, 2130706432
  %10908 = icmp eq i32 %10907, 0
  %10909 = select i1 %10908, float 0.000000e+00, float %10885
  %10910 = select i1 %10908, float 0.000000e+00, float %10886
  %10911 = select i1 %10908, float 0.000000e+00, float %10887
  br label %10938

; <label>:10912                                   ; preds = %10874
  %10913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10914 = extractvalue %dx.types.CBufRet.f32 %10913, 0
  %10915 = bitcast float %10914 to i32
  %10916 = and i32 %10915, 2130706432
  %10917 = icmp eq i32 %10916, 0
  %10918 = select i1 %10917, float 0.000000e+00, float %10885
  %10919 = select i1 %10917, float 0.000000e+00, float %10886
  %10920 = select i1 %10917, float 0.000000e+00, float %10887
  br label %10938

; <label>:10921                                   ; preds = %10874
  br label %10938

; <label>:10922                                   ; preds = %10874, %10874
  br label %10938

; <label>:10923                                   ; preds = %10874
  %10924 = and i32 %9328, 1023
  %10925 = uitofp i32 %10924 to float
  %10926 = lshr i32 %9328, 10
  %10927 = and i32 %10926, 1023
  %10928 = uitofp i32 %10927 to float
  %10929 = lshr i32 %9328, 20
  %10930 = and i32 %10929, 1023
  %10931 = uitofp i32 %10930 to float
  %10932 = fmul fast float %10925, 0x3F60040100000000
  %10933 = fmul fast float %10928, 0x3F60040100000000
  %10934 = fmul fast float %10931, 0x3F60040100000000
  %10935 = fadd fast float %10932, -1.000000e+00
  %10936 = fadd fast float %10933, -1.000000e+00
  %10937 = fadd fast float %10934, -1.000000e+00
  br label %10938

; <label>:10938                                   ; preds = %10923, %10922, %10921, %10912, %10903, %10894, %10893, %10892, %10874
  %10939 = phi float [ 0.000000e+00, %10921 ], [ %10900, %10894 ], [ 0.000000e+00, %10893 ], [ %71, %10922 ], [ %10935, %10923 ], [ 0.000000e+00, %10892 ], [ %10909, %10903 ], [ %10918, %10912 ], [ %10885, %10874 ]
  %10940 = phi float [ 0.000000e+00, %10921 ], [ %10901, %10894 ], [ 0.000000e+00, %10893 ], [ %72, %10922 ], [ %10936, %10923 ], [ 0.000000e+00, %10892 ], [ %10910, %10903 ], [ %10919, %10912 ], [ %10886, %10874 ]
  %10941 = phi float [ 0.000000e+00, %10921 ], [ %10902, %10894 ], [ 1.000000e+00, %10893 ], [ %73, %10922 ], [ %10937, %10923 ], [ 0.000000e+00, %10892 ], [ %10911, %10903 ], [ %10920, %10912 ], [ %10887, %10874 ]
  %10942 = fsub fast float %10939, %10885
  %10943 = fsub fast float %10940, %10886
  %10944 = fsub fast float %10941, %10887
  %10945 = fmul fast float %10878, %10942
  %10946 = fmul fast float %10878, %10943
  %10947 = fmul fast float %10878, %10944
  %10948 = fadd fast float %10945, %10885
  %10949 = fadd fast float %10946, %10886
  %10950 = fadd fast float %10947, %10887
  %10951 = and i32 %8516, 255
  %10952 = uitofp i32 %10951 to float
  %10953 = fptoui float %10952 to i32
  %10954 = lshr i32 %8516, 8
  %10955 = and i32 %10954, 255
  %10956 = uitofp i32 %10955 to float
  %10957 = fptoui float %10956 to i32
  %10958 = lshr i32 %8516, 16
  %10959 = and i32 %10958, 255
  %10960 = uitofp i32 %10959 to float
  %10961 = fptoui float %10960 to i32
  %10962 = lshr i32 %8516, 24
  %10963 = uitofp i32 %10962 to float
  %10964 = fptoui float %10963 to i32
  %10965 = and i32 %8515, 255
  %10966 = uitofp i32 %10965 to float
  %10967 = fptoui float %10966 to i32
  %10968 = lshr i32 %8515, 16
  %10969 = and i32 %10968, 255
  %10970 = uitofp i32 %10969 to float
  %10971 = fptoui float %10970 to i32
  %10972 = lshr i32 %10633, 24
  %10973 = uitofp i32 %10972 to float
  %10974 = fptoui float %10973 to i32
  switch i32 %10974, label %11213 [
    i32 1, label %10975
    i32 2, label %11002
    i32 3, label %11027
    i32 4, label %11050
    i32 5, label %11073
    i32 6, label %11096
    i32 7, label %11120
    i32 8, label %11143
    i32 9, label %11166
    i32 12, label %11188
    i32 13, label %11189
    i32 14, label %11212
  ]

; <label>:10975                                   ; preds = %10938
  %10976 = add i32 %10953, %10967
  %10977 = add i32 %10976, %10964
  %10978 = add i32 %10977, %10957
  %10979 = add i32 %10978, %10961
  %10980 = uitofp i32 %10979 to float
  %10981 = fadd fast float %10980, -4.000000e+00
  %10982 = fmul fast float %10981, 0x3FB5555560000000
  %10983 = call float @dx.op.unary.f32(i32 7, float %10982)  ; Saturate(value)
  %10984 = icmp eq i32 %10979, 0
  %10985 = select i1 %10984, float 0.000000e+00, float %10983
  %10986 = icmp ult i32 %10979, 2
  %10987 = select i1 %10986, float 0.000000e+00, float %10983
  %10988 = add i32 %10979, -1
  %10989 = icmp ult i32 %10988, 2
  %10990 = select i1 %10989, float 1.000000e+00, float %10985
  %10991 = icmp ult i32 %10979, 4
  %10992 = select i1 %10991, float 0.000000e+00, float 1.000000e+00
  %10993 = and i32 %10979, -2
  %10994 = icmp eq i32 %10993, 2
  %10995 = icmp eq i32 %10979, 4
  %10996 = select i1 %10995, float 1.000000e+00, float %10992
  %10997 = or i1 %10995, %10994
  %10998 = select i1 %10997, float 1.000000e+00, float %10987
  %10999 = add i32 %10979, -3
  %11000 = icmp ult i32 %10999, 2
  %11001 = select i1 %11000, float 0.000000e+00, float %10990
  br label %11213

; <label>:11002                                   ; preds = %10938
  %11003 = add i32 %10957, %10953
  %11004 = add i32 %11003, %10961
  %11005 = uitofp i32 %11004 to float
  %11006 = fadd fast float %11005, -4.000000e+00
  %11007 = fmul fast float %11006, 0x3FB5555560000000
  %11008 = call float @dx.op.unary.f32(i32 7, float %11007)  ; Saturate(value)
  %11009 = icmp eq i32 %11004, 0
  %11010 = select i1 %11009, float 0.000000e+00, float %11008
  %11011 = icmp ult i32 %11004, 2
  %11012 = select i1 %11011, float 0.000000e+00, float %11008
  %11013 = add i32 %11004, -1
  %11014 = icmp ult i32 %11013, 2
  %11015 = select i1 %11014, float 1.000000e+00, float %11010
  %11016 = icmp ult i32 %11004, 4
  %11017 = select i1 %11016, float 0.000000e+00, float 1.000000e+00
  %11018 = and i32 %11004, -2
  %11019 = icmp eq i32 %11018, 2
  %11020 = icmp eq i32 %11004, 4
  %11021 = select i1 %11020, float 1.000000e+00, float %11017
  %11022 = or i1 %11020, %11019
  %11023 = select i1 %11022, float 1.000000e+00, float %11012
  %11024 = add i32 %11004, -3
  %11025 = icmp ult i32 %11024, 2
  %11026 = select i1 %11025, float 0.000000e+00, float %11015
  br label %11213

; <label>:11027                                   ; preds = %10938
  %11028 = uitofp i32 %10953 to float
  %11029 = fadd fast float %11028, -4.000000e+00
  %11030 = fmul fast float %11029, 0x3FB5555560000000
  %11031 = call float @dx.op.unary.f32(i32 7, float %11030)  ; Saturate(value)
  %11032 = icmp eq i32 %10953, 0
  %11033 = select i1 %11032, float 0.000000e+00, float %11031
  %11034 = icmp ult i32 %10953, 2
  %11035 = select i1 %11034, float 0.000000e+00, float %11031
  %11036 = add i32 %10953, -1
  %11037 = icmp ult i32 %11036, 2
  %11038 = select i1 %11037, float 1.000000e+00, float %11033
  %11039 = icmp ult i32 %10953, 4
  %11040 = select i1 %11039, float 0.000000e+00, float 1.000000e+00
  %11041 = and i32 %10953, -2
  %11042 = icmp eq i32 %11041, 2
  %11043 = icmp eq i32 %10953, 4
  %11044 = select i1 %11043, float 1.000000e+00, float %11040
  %11045 = or i1 %11043, %11042
  %11046 = select i1 %11045, float 1.000000e+00, float %11035
  %11047 = add i32 %10953, -3
  %11048 = icmp ult i32 %11047, 2
  %11049 = select i1 %11048, float 0.000000e+00, float %11038
  br label %11213

; <label>:11050                                   ; preds = %10938
  %11051 = uitofp i32 %10957 to float
  %11052 = fadd fast float %11051, -4.000000e+00
  %11053 = fmul fast float %11052, 0x3FB5555560000000
  %11054 = call float @dx.op.unary.f32(i32 7, float %11053)  ; Saturate(value)
  %11055 = icmp eq i32 %10957, 0
  %11056 = select i1 %11055, float 0.000000e+00, float %11054
  %11057 = icmp ult i32 %10957, 2
  %11058 = select i1 %11057, float 0.000000e+00, float %11054
  %11059 = add i32 %10957, -1
  %11060 = icmp ult i32 %11059, 2
  %11061 = select i1 %11060, float 1.000000e+00, float %11056
  %11062 = icmp ult i32 %10957, 4
  %11063 = select i1 %11062, float 0.000000e+00, float 1.000000e+00
  %11064 = and i32 %10957, -2
  %11065 = icmp eq i32 %11064, 2
  %11066 = icmp eq i32 %10957, 4
  %11067 = select i1 %11066, float 1.000000e+00, float %11063
  %11068 = or i1 %11066, %11065
  %11069 = select i1 %11068, float 1.000000e+00, float %11058
  %11070 = add i32 %10957, -3
  %11071 = icmp ult i32 %11070, 2
  %11072 = select i1 %11071, float 0.000000e+00, float %11061
  br label %11213

; <label>:11073                                   ; preds = %10938
  %11074 = uitofp i32 %10961 to float
  %11075 = fadd fast float %11074, -4.000000e+00
  %11076 = fmul fast float %11075, 0x3FB5555560000000
  %11077 = call float @dx.op.unary.f32(i32 7, float %11076)  ; Saturate(value)
  %11078 = icmp eq i32 %10961, 0
  %11079 = select i1 %11078, float 0.000000e+00, float %11077
  %11080 = icmp ult i32 %10961, 2
  %11081 = select i1 %11080, float 0.000000e+00, float %11077
  %11082 = add i32 %10961, -1
  %11083 = icmp ult i32 %11082, 2
  %11084 = select i1 %11083, float 1.000000e+00, float %11079
  %11085 = icmp ult i32 %10961, 4
  %11086 = select i1 %11085, float 0.000000e+00, float 1.000000e+00
  %11087 = and i32 %10961, -2
  %11088 = icmp eq i32 %11087, 2
  %11089 = icmp eq i32 %10961, 4
  %11090 = select i1 %11089, float 1.000000e+00, float %11086
  %11091 = or i1 %11089, %11088
  %11092 = select i1 %11091, float 1.000000e+00, float %11081
  %11093 = add i32 %10961, -3
  %11094 = icmp ult i32 %11093, 2
  %11095 = select i1 %11094, float 0.000000e+00, float %11084
  br label %11213

; <label>:11096                                   ; preds = %10938
  %11097 = add i32 %10964, %10967
  %11098 = uitofp i32 %11097 to float
  %11099 = fadd fast float %11098, -4.000000e+00
  %11100 = fmul fast float %11099, 0x3FB5555560000000
  %11101 = call float @dx.op.unary.f32(i32 7, float %11100)  ; Saturate(value)
  %11102 = icmp eq i32 %11097, 0
  %11103 = select i1 %11102, float 0.000000e+00, float %11101
  %11104 = icmp ult i32 %11097, 2
  %11105 = select i1 %11104, float 0.000000e+00, float %11101
  %11106 = add i32 %11097, -1
  %11107 = icmp ult i32 %11106, 2
  %11108 = select i1 %11107, float 1.000000e+00, float %11103
  %11109 = icmp ult i32 %11097, 4
  %11110 = select i1 %11109, float 0.000000e+00, float 1.000000e+00
  %11111 = and i32 %11097, -2
  %11112 = icmp eq i32 %11111, 2
  %11113 = icmp eq i32 %11097, 4
  %11114 = select i1 %11113, float 1.000000e+00, float %11110
  %11115 = or i1 %11113, %11112
  %11116 = select i1 %11115, float 1.000000e+00, float %11105
  %11117 = add i32 %11097, -3
  %11118 = icmp ult i32 %11117, 2
  %11119 = select i1 %11118, float 0.000000e+00, float %11108
  br label %11213

; <label>:11120                                   ; preds = %10938
  %11121 = uitofp i32 %10964 to float
  %11122 = fadd fast float %11121, -4.000000e+00
  %11123 = fmul fast float %11122, 0x3FB5555560000000
  %11124 = call float @dx.op.unary.f32(i32 7, float %11123)  ; Saturate(value)
  %11125 = icmp eq i32 %10964, 0
  %11126 = select i1 %11125, float 0.000000e+00, float %11124
  %11127 = icmp ult i32 %10964, 2
  %11128 = select i1 %11127, float 0.000000e+00, float %11124
  %11129 = add i32 %10964, -1
  %11130 = icmp ult i32 %11129, 2
  %11131 = select i1 %11130, float 1.000000e+00, float %11126
  %11132 = icmp ult i32 %10964, 4
  %11133 = select i1 %11132, float 0.000000e+00, float 1.000000e+00
  %11134 = and i32 %10964, -2
  %11135 = icmp eq i32 %11134, 2
  %11136 = icmp eq i32 %10964, 4
  %11137 = select i1 %11136, float 1.000000e+00, float %11133
  %11138 = or i1 %11136, %11135
  %11139 = select i1 %11138, float 1.000000e+00, float %11128
  %11140 = add i32 %10964, -3
  %11141 = icmp ult i32 %11140, 2
  %11142 = select i1 %11141, float 0.000000e+00, float %11131
  br label %11213

; <label>:11143                                   ; preds = %10938
  %11144 = uitofp i32 %10967 to float
  %11145 = fadd fast float %11144, -4.000000e+00
  %11146 = fmul fast float %11145, 0x3FB5555560000000
  %11147 = call float @dx.op.unary.f32(i32 7, float %11146)  ; Saturate(value)
  %11148 = icmp eq i32 %10967, 0
  %11149 = select i1 %11148, float 0.000000e+00, float %11147
  %11150 = icmp ult i32 %10967, 2
  %11151 = select i1 %11150, float 0.000000e+00, float %11147
  %11152 = add i32 %10967, -1
  %11153 = icmp ult i32 %11152, 2
  %11154 = select i1 %11153, float 1.000000e+00, float %11149
  %11155 = icmp ult i32 %10967, 4
  %11156 = select i1 %11155, float 0.000000e+00, float 1.000000e+00
  %11157 = and i32 %10967, -2
  %11158 = icmp eq i32 %11157, 2
  %11159 = icmp eq i32 %10967, 4
  %11160 = select i1 %11159, float 1.000000e+00, float %11156
  %11161 = or i1 %11159, %11158
  %11162 = select i1 %11161, float 1.000000e+00, float %11151
  %11163 = add i32 %10967, -3
  %11164 = icmp ult i32 %11163, 2
  %11165 = select i1 %11164, float 0.000000e+00, float %11154
  br label %11213

; <label>:11166                                   ; preds = %10938
  %11167 = lshr i32 %8515, 8
  %11168 = and i32 %11167, 255
  %11169 = uitofp i32 %11168 to float
  %11170 = fptoui float %11169 to i32
  %11171 = uitofp i32 %11170 to float
  %11172 = fcmp fast oge float %11171, 1.000000e+00
  %11173 = fcmp fast oge float %11171, 2.000000e+00
  %11174 = or i1 %11173, %11172
  %11175 = select i1 %11174, float 1.000000e+00, float 0.000000e+00
  %11176 = fcmp fast oge float %11171, 3.000000e+00
  %11177 = or i1 %11176, %11173
  %11178 = fcmp fast oge float %11171, 4.000000e+00
  %11179 = or i1 %11178, %11177
  %11180 = select i1 %11179, float 1.000000e+00, float 0.000000e+00
  %11181 = or i1 %11178, %11176
  %11182 = fcmp fast oge float %11171, 5.000000e+00
  %11183 = or i1 %11182, %11178
  %11184 = select i1 %11183, float 1.000000e+00, float 0.000000e+00
  %11185 = select i1 %11182, float 0.000000e+00, float %11180
  %11186 = or i1 %11182, %11181
  %11187 = select i1 %11186, float 0.000000e+00, float %11175
  br label %11213

; <label>:11188                                   ; preds = %10938
  br label %11213

; <label>:11189                                   ; preds = %10938
  %11190 = uitofp i32 %10971 to float
  %11191 = fadd fast float %11190, -4.000000e+00
  %11192 = fmul fast float %11191, 0x3FB5555560000000
  %11193 = call float @dx.op.unary.f32(i32 7, float %11192)  ; Saturate(value)
  %11194 = icmp eq i32 %10971, 0
  %11195 = select i1 %11194, float 0.000000e+00, float %11193
  %11196 = icmp ult i32 %10971, 2
  %11197 = select i1 %11196, float 0.000000e+00, float %11193
  %11198 = add i32 %10971, -1
  %11199 = icmp ult i32 %11198, 2
  %11200 = select i1 %11199, float 1.000000e+00, float %11195
  %11201 = icmp ult i32 %10971, 4
  %11202 = select i1 %11201, float 0.000000e+00, float 1.000000e+00
  %11203 = and i32 %10971, -2
  %11204 = icmp eq i32 %11203, 2
  %11205 = icmp eq i32 %10971, 4
  %11206 = select i1 %11205, float 1.000000e+00, float %11202
  %11207 = or i1 %11205, %11204
  %11208 = select i1 %11207, float 1.000000e+00, float %11197
  %11209 = add i32 %10971, -3
  %11210 = icmp ult i32 %11209, 2
  %11211 = select i1 %11210, float 0.000000e+00, float %11200
  br label %11213

; <label>:11212                                   ; preds = %10938
  br label %11213

; <label>:11213                                   ; preds = %11212, %11189, %11188, %11166, %11143, %11120, %11096, %11073, %11050, %11027, %11002, %10975, %10938
  %11214 = phi float [ %10948, %10938 ], [ 5.000000e-01, %11212 ], [ %11206, %11189 ], [ 1.000000e+00, %11188 ], [ %11184, %11166 ], [ %11160, %11143 ], [ %11137, %11120 ], [ %11114, %11096 ], [ %11090, %11073 ], [ %11067, %11050 ], [ %11044, %11027 ], [ %11021, %11002 ], [ %10996, %10975 ]
  %11215 = phi float [ %10949, %10938 ], [ 5.000000e-01, %11212 ], [ %11208, %11189 ], [ 0.000000e+00, %11188 ], [ %11185, %11166 ], [ %11162, %11143 ], [ %11139, %11120 ], [ %11116, %11096 ], [ %11092, %11073 ], [ %11069, %11050 ], [ %11046, %11027 ], [ %11023, %11002 ], [ %10998, %10975 ]
  %11216 = phi float [ %10950, %10938 ], [ 5.000000e-01, %11212 ], [ %11211, %11189 ], [ 0.000000e+00, %11188 ], [ %11187, %11166 ], [ %11165, %11143 ], [ %11142, %11120 ], [ %11119, %11096 ], [ %11095, %11073 ], [ %11072, %11050 ], [ %11049, %11027 ], [ %11026, %11002 ], [ %11001, %10975 ]
  %11217 = fsub fast float %11214, %10948
  %11218 = fsub fast float %11215, %10949
  %11219 = fsub fast float %11216, %10950
  %11220 = fmul fast float %11217, %10878
  %11221 = fmul fast float %11218, %10878
  %11222 = fmul fast float %11219, %10878
  %11223 = fadd fast float %11220, %10948
  %11224 = fadd fast float %11221, %10949
  %11225 = fadd fast float %11222, %10950
  %11226 = and i32 %10633, 255
  %11227 = uitofp i32 %11226 to float
  %11228 = fptoui float %11227 to i32
  %11229 = icmp ult i32 %11228, 25
  br i1 %11229, label %11230, label %11235

; <label>:11230                                   ; preds = %11213
  %11231 = trunc i32 %11228 to i25
  %11232 = lshr i25 1048574, %11231
  %11233 = and i25 %11232, 1
  %11234 = icmp ne i25 %11233, 0
  br label %11235

; <label>:11235                                   ; preds = %11230, %11213
  %11236 = phi i1 [ %11234, %11230 ], [ true, %11213 ]
  %11237 = or i32 %10891, %10637
  %11238 = or i32 %11237, %10974
  %11239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %11240 = extractvalue %dx.types.CBufRet.f32 %11239, 3
  %11241 = bitcast float %11240 to i32
  %11242 = and i32 %11241, 255
  %11243 = uitofp i32 %11242 to float
  %11244 = fptoui float %11243 to i32
  %11245 = or i32 %11238, %11244
  %11246 = icmp ne i32 %11245, 0
  %11247 = or i1 %11236, %11246
  %11248 = extractvalue %dx.types.CBufRet.f32 %11239, 0
  %11249 = bitcast float %11248 to i32
  %11250 = icmp slt i32 %11249, 0
  %11251 = or i1 %11250, %11247
  br i1 %11251, label %11252, label %11260

; <label>:11252                                   ; preds = %11235
  %11253 = icmp eq i32 %10974, 14
  %11254 = select i1 %11253, float 0.000000e+00, float 1.000000e+00
  %11255 = icmp eq i32 %11228, 0
  br i1 %11255, label %11260, label %11256

; <label>:11256                                   ; preds = %11252
  %11257 = fmul fast float %11254, %11223
  %11258 = fmul fast float %11254, %11224
  %11259 = fmul fast float %11254, %11225
  br label %11260

; <label>:11260                                   ; preds = %11256, %11252, %11235
  %11261 = phi float [ %11257, %11256 ], [ %11223, %11252 ], [ %11223, %11235 ]
  %11262 = phi float [ %11258, %11256 ], [ %11224, %11252 ], [ %11224, %11235 ]
  %11263 = phi float [ %11259, %11256 ], [ %11225, %11252 ], [ %11225, %11235 ]
  %11264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %11265 = extractvalue %dx.types.CBufRet.f32 %11264, 2
  %11266 = extractvalue %dx.types.CBufRet.f32 %11264, 3
  %11267 = fmul fast float %11265, %100
  %11268 = fmul fast float %11266, %101
  %11269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %11270 = extractvalue %dx.types.CBufRet.f32 %11269, 0
  %11271 = fcmp fast oge float %11267, %11270
  %11272 = extractvalue %dx.types.CBufRet.f32 %11269, 2
  %11273 = fcmp fast ole float %11267, %11272
  %11274 = and i1 %11271, %11273
  %11275 = extractvalue %dx.types.CBufRet.f32 %11269, 1
  %11276 = fcmp fast oge float %11268, %11275
  %11277 = and i1 %11274, %11276
  %11278 = extractvalue %dx.types.CBufRet.f32 %11269, 3
  %11279 = fcmp fast ole float %11268, %11278
  %11280 = and i1 %11277, %11279
  %11281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %11282 = extractvalue %dx.types.CBufRet.i32 %11281, 0
  %11283 = icmp ne i32 %11282, 0
  %11284 = and i1 %11283, %11280
  br i1 %11284, label %11285, label %12274

; <label>:11285                                   ; preds = %11260
  %11286 = icmp eq i32 %11282, 1
  br i1 %11286, label %11287, label %11326

; <label>:11287                                   ; preds = %11285
  %11288 = uitofp i32 %199 to float
  %11289 = fmul fast float %11288, 0x3FE3C6EF40000000
  %11290 = call float @dx.op.unary.f32(i32 22, float %11289)  ; Frc(value)
  %11291 = fadd fast float %11290, 0x3FE5555560000000
  %11292 = fadd fast float %11290, 0x3FD5555560000000
  %11293 = fsub fast float -0.000000e+00, %11290
  %11294 = fsub fast float -0.000000e+00, %11291
  %11295 = fsub fast float -0.000000e+00, %11292
  %11296 = fcmp fast oge float %11290, %11293
  %11297 = fcmp fast oge float %11291, %11294
  %11298 = fcmp fast oge float %11292, %11295
  %11299 = call float @dx.op.unary.f32(i32 6, float %11290)  ; FAbs(value)
  %11300 = call float @dx.op.unary.f32(i32 6, float %11291)  ; FAbs(value)
  %11301 = call float @dx.op.unary.f32(i32 6, float %11292)  ; FAbs(value)
  %11302 = call float @dx.op.unary.f32(i32 22, float %11299)  ; Frc(value)
  %11303 = call float @dx.op.unary.f32(i32 22, float %11300)  ; Frc(value)
  %11304 = call float @dx.op.unary.f32(i32 22, float %11301)  ; Frc(value)
  %11305 = fsub fast float -0.000000e+00, %11302
  %11306 = fsub fast float -0.000000e+00, %11303
  %11307 = fsub fast float -0.000000e+00, %11304
  %11308 = select i1 %11296, float %11302, float %11305
  %11309 = select i1 %11297, float %11303, float %11306
  %11310 = select i1 %11298, float %11304, float %11307
  %11311 = fmul fast float %11308, 6.000000e+00
  %11312 = fmul fast float %11309, 6.000000e+00
  %11313 = fmul fast float %11310, 6.000000e+00
  %11314 = fadd fast float %11311, -3.000000e+00
  %11315 = fadd fast float %11312, -3.000000e+00
  %11316 = fadd fast float %11313, -3.000000e+00
  %11317 = call float @dx.op.unary.f32(i32 6, float %11314)  ; FAbs(value)
  %11318 = call float @dx.op.unary.f32(i32 6, float %11315)  ; FAbs(value)
  %11319 = call float @dx.op.unary.f32(i32 6, float %11316)  ; FAbs(value)
  %11320 = fadd fast float %11317, -1.000000e+00
  %11321 = fadd fast float %11318, -1.000000e+00
  %11322 = fadd fast float %11319, -1.000000e+00
  %11323 = call float @dx.op.unary.f32(i32 7, float %11320)  ; Saturate(value)
  %11324 = call float @dx.op.unary.f32(i32 7, float %11321)  ; Saturate(value)
  %11325 = call float @dx.op.unary.f32(i32 7, float %11322)  ; Saturate(value)
  br label %12274

; <label>:11326                                   ; preds = %11285
  %11327 = icmp eq i32 %11282, 2
  br i1 %11327, label %11328, label %11332

; <label>:11328                                   ; preds = %11326
  %11329 = fmul fast float %11261, %74
  %11330 = fmul fast float %11262, %75
  %11331 = fmul fast float %11263, %76
  br label %12274

; <label>:11332                                   ; preds = %11326
  %11333 = icmp eq i32 %11282, 3
  %11334 = icmp eq i32 %11282, 26
  %11335 = or i1 %11333, %11334
  br i1 %11335, label %11336, label %11436

; <label>:11336                                   ; preds = %11332
  br i1 %11333, label %11337, label %11348

; <label>:11337                                   ; preds = %11336
  %11338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %11339 = extractvalue %dx.types.CBufRet.f32 %11338, 3
  %11340 = fsub fast float %179, %11339
  %11341 = fmul fast float %11340, 0x3FD5555560000000
  %11342 = call float @dx.op.unary.f32(i32 7, float %11341)  ; Saturate(value)
  %11343 = fmul fast float %11342, 6.300000e+01
  %11344 = fptoui float %11343 to i32
  %11345 = uitofp i32 %11344 to float
  %11346 = fmul fast float %11345, 0x3FA8618620000000
  %11347 = fadd fast float %11346, %11339
  br label %11348

; <label>:11348                                   ; preds = %11337, %11336
  %11349 = phi float [ %11347, %11337 ], [ %74, %11336 ]
  %11350 = call float @dx.op.unary.f32(i32 27, float %11349)  ; Round_ni(value)
  %11351 = fadd fast float %11350, 1.000000e+00
  %11352 = call float @dx.op.unary.f32(i32 22, float %11349)  ; Frc(value)
  %11353 = fmul fast float %11350, 0x3FE3C6EF40000000
  %11354 = call float @dx.op.unary.f32(i32 22, float %11353)  ; Frc(value)
  %11355 = fadd fast float %11354, 0x3FE5555560000000
  %11356 = fadd fast float %11354, 0x3FD5555560000000
  %11357 = fsub fast float -0.000000e+00, %11354
  %11358 = fsub fast float -0.000000e+00, %11355
  %11359 = fsub fast float -0.000000e+00, %11356
  %11360 = fcmp fast oge float %11354, %11357
  %11361 = fcmp fast oge float %11355, %11358
  %11362 = fcmp fast oge float %11356, %11359
  %11363 = call float @dx.op.unary.f32(i32 6, float %11354)  ; FAbs(value)
  %11364 = call float @dx.op.unary.f32(i32 6, float %11355)  ; FAbs(value)
  %11365 = call float @dx.op.unary.f32(i32 6, float %11356)  ; FAbs(value)
  %11366 = call float @dx.op.unary.f32(i32 22, float %11363)  ; Frc(value)
  %11367 = call float @dx.op.unary.f32(i32 22, float %11364)  ; Frc(value)
  %11368 = call float @dx.op.unary.f32(i32 22, float %11365)  ; Frc(value)
  %11369 = fsub fast float -0.000000e+00, %11366
  %11370 = fsub fast float -0.000000e+00, %11367
  %11371 = fsub fast float -0.000000e+00, %11368
  %11372 = select i1 %11360, float %11366, float %11369
  %11373 = select i1 %11361, float %11367, float %11370
  %11374 = select i1 %11362, float %11368, float %11371
  %11375 = fmul fast float %11372, 6.000000e+00
  %11376 = fmul fast float %11373, 6.000000e+00
  %11377 = fmul fast float %11374, 6.000000e+00
  %11378 = fadd fast float %11375, -3.000000e+00
  %11379 = fadd fast float %11376, -3.000000e+00
  %11380 = fadd fast float %11377, -3.000000e+00
  %11381 = call float @dx.op.unary.f32(i32 6, float %11378)  ; FAbs(value)
  %11382 = call float @dx.op.unary.f32(i32 6, float %11379)  ; FAbs(value)
  %11383 = call float @dx.op.unary.f32(i32 6, float %11380)  ; FAbs(value)
  %11384 = fadd fast float %11381, -1.000000e+00
  %11385 = fadd fast float %11382, -1.000000e+00
  %11386 = fadd fast float %11383, -1.000000e+00
  %11387 = call float @dx.op.unary.f32(i32 7, float %11384)  ; Saturate(value)
  %11388 = call float @dx.op.unary.f32(i32 7, float %11385)  ; Saturate(value)
  %11389 = call float @dx.op.unary.f32(i32 7, float %11386)  ; Saturate(value)
  %11390 = fmul fast float %11351, 0x3FE3C6EF40000000
  %11391 = call float @dx.op.unary.f32(i32 22, float %11390)  ; Frc(value)
  %11392 = fadd fast float %11391, 0x3FE5555560000000
  %11393 = fadd fast float %11391, 0x3FD5555560000000
  %11394 = fsub fast float -0.000000e+00, %11391
  %11395 = fsub fast float -0.000000e+00, %11392
  %11396 = fsub fast float -0.000000e+00, %11393
  %11397 = fcmp fast oge float %11391, %11394
  %11398 = fcmp fast oge float %11392, %11395
  %11399 = fcmp fast oge float %11393, %11396
  %11400 = call float @dx.op.unary.f32(i32 6, float %11391)  ; FAbs(value)
  %11401 = call float @dx.op.unary.f32(i32 6, float %11392)  ; FAbs(value)
  %11402 = call float @dx.op.unary.f32(i32 6, float %11393)  ; FAbs(value)
  %11403 = call float @dx.op.unary.f32(i32 22, float %11400)  ; Frc(value)
  %11404 = call float @dx.op.unary.f32(i32 22, float %11401)  ; Frc(value)
  %11405 = call float @dx.op.unary.f32(i32 22, float %11402)  ; Frc(value)
  %11406 = fsub fast float -0.000000e+00, %11403
  %11407 = fsub fast float -0.000000e+00, %11404
  %11408 = fsub fast float -0.000000e+00, %11405
  %11409 = select i1 %11397, float %11403, float %11406
  %11410 = select i1 %11398, float %11404, float %11407
  %11411 = select i1 %11399, float %11405, float %11408
  %11412 = fmul fast float %11409, 6.000000e+00
  %11413 = fmul fast float %11410, 6.000000e+00
  %11414 = fmul fast float %11411, 6.000000e+00
  %11415 = fadd fast float %11412, -3.000000e+00
  %11416 = fadd fast float %11413, -3.000000e+00
  %11417 = fadd fast float %11414, -3.000000e+00
  %11418 = call float @dx.op.unary.f32(i32 6, float %11415)  ; FAbs(value)
  %11419 = call float @dx.op.unary.f32(i32 6, float %11416)  ; FAbs(value)
  %11420 = call float @dx.op.unary.f32(i32 6, float %11417)  ; FAbs(value)
  %11421 = fadd fast float %11418, -1.000000e+00
  %11422 = fadd fast float %11419, -1.000000e+00
  %11423 = fadd fast float %11420, -1.000000e+00
  %11424 = call float @dx.op.unary.f32(i32 7, float %11421)  ; Saturate(value)
  %11425 = call float @dx.op.unary.f32(i32 7, float %11422)  ; Saturate(value)
  %11426 = call float @dx.op.unary.f32(i32 7, float %11423)  ; Saturate(value)
  %11427 = fsub fast float %11424, %11387
  %11428 = fsub fast float %11425, %11388
  %11429 = fsub fast float %11426, %11389
  %11430 = fmul fast float %11427, %11352
  %11431 = fmul fast float %11428, %11352
  %11432 = fmul fast float %11429, %11352
  %11433 = fadd fast float %11430, %11387
  %11434 = fadd fast float %11431, %11388
  %11435 = fadd fast float %11432, %11389
  br label %12274

; <label>:11436                                   ; preds = %11332
  %11437 = and i32 %11282, -2
  %11438 = icmp eq i32 %11437, 4
  br i1 %11438, label %11439, label %11448

; <label>:11439                                   ; preds = %11436
  %11440 = uitofp i32 %199 to float
  %11441 = fmul fast float %11440, 0x3FE3C6EF40000000
  %11442 = call float @dx.op.unary.f32(i32 22, float %11441)  ; Frc(value)
  %11443 = fmul fast float %11442, 5.000000e-01
  %11444 = fadd fast float %11443, 5.000000e-01
  %11445 = fmul fast float %11444, %74
  %11446 = fmul fast float %11444, %75
  %11447 = fmul fast float %11444, %76
  br label %12274

; <label>:11448                                   ; preds = %11436
  %11449 = icmp eq i32 %11282, 6
  br i1 %11449, label %12274, label %11450

; <label>:11450                                   ; preds = %11448
  %11451 = icmp eq i32 %11282, 7
  br i1 %11451, label %12274, label %11452

; <label>:11452                                   ; preds = %11450
  %11453 = icmp eq i32 %11282, 8
  br i1 %11453, label %12274, label %11454

; <label>:11454                                   ; preds = %11452
  %11455 = icmp eq i32 %11282, 9
  br i1 %11455, label %11456, label %11468

; <label>:11456                                   ; preds = %11454
  %11457 = fcmp fast ogt float %352, 0.000000e+00
  %11458 = call float @dx.op.dot2.f32(i32 54, float %347, float %348, float %347, float %348)  ; Dot2(ax,ay,bx,by)
  %11459 = call float @dx.op.unary.f32(i32 25, float %11458)  ; Rsqrt(value)
  %11460 = fmul fast float %347, 5.000000e-01
  %11461 = fmul fast float %11460, %11459
  %11462 = fmul fast float %348, 5.000000e-01
  %11463 = fmul fast float %11462, %11459
  %11464 = fadd fast float %11461, 5.000000e-01
  %11465 = select i1 %11457, float %11464, float 5.000000e-01
  %11466 = fadd fast float %11463, 5.000000e-01
  %11467 = select i1 %11457, float %11466, float 5.000000e-01
  br label %12274

; <label>:11468                                   ; preds = %11454
  %11469 = icmp eq i32 %11282, 10
  br i1 %11469, label %11470, label %11472

; <label>:11470                                   ; preds = %11468
  %11471 = fmul fast float %352, 0x3F747AE140000000
  br label %12274

; <label>:11472                                   ; preds = %11468
  %11473 = icmp eq i32 %11282, 11
  br i1 %11473, label %12274, label %11474

; <label>:11474                                   ; preds = %11472
  %11475 = icmp eq i32 %11282, 12
  br i1 %11475, label %12274, label %11476

; <label>:11476                                   ; preds = %11474
  %11477 = icmp eq i32 %11282, 13
  br i1 %11477, label %12274, label %11478

; <label>:11478                                   ; preds = %11476
  %11479 = icmp eq i32 %11282, 14
  br i1 %11479, label %12274, label %11480

; <label>:11480                                   ; preds = %11478
  %11481 = icmp eq i32 %11282, 15
  br i1 %11481, label %12274, label %11482

; <label>:11482                                   ; preds = %11480
  %11483 = icmp eq i32 %11282, 16
  br i1 %11483, label %12274, label %11484

; <label>:11484                                   ; preds = %11482
  %11485 = icmp eq i32 %11282, 17
  br i1 %11485, label %12274, label %11486

; <label>:11486                                   ; preds = %11484
  %11487 = icmp eq i32 %11282, 18
  br i1 %11487, label %12274, label %11488

; <label>:11488                                   ; preds = %11486
  %11489 = icmp eq i32 %11282, 19
  br i1 %11489, label %12274, label %11490

; <label>:11490                                   ; preds = %11488
  %11491 = icmp eq i32 %11282, 20
  br i1 %11491, label %11492, label %11499

; <label>:11492                                   ; preds = %11490
  %11493 = fmul fast float %1880, 5.000000e-01
  %11494 = fmul fast float %1881, 5.000000e-01
  %11495 = fmul fast float %1882, 5.000000e-01
  %11496 = fadd fast float %11493, 5.000000e-01
  %11497 = fadd fast float %11494, 5.000000e-01
  %11498 = fadd fast float %11495, 5.000000e-01
  br label %12274

; <label>:11499                                   ; preds = %11490
  %11500 = and i32 %11282, -9
  %11501 = icmp eq i32 %11500, 21
  br i1 %11501, label %12274, label %11502

; <label>:11502                                   ; preds = %11499
  %11503 = icmp eq i32 %11282, 22
  %11504 = icmp eq i32 %11282, 38
  %11505 = or i1 %11503, %11504
  br i1 %11505, label %11506, label %11620

; <label>:11506                                   ; preds = %11502
  %11507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11508 = extractvalue %dx.types.CBufRet.f32 %11507, 0
  %11509 = extractvalue %dx.types.CBufRet.f32 %11507, 1
  %11510 = extractvalue %dx.types.CBufRet.f32 %11507, 2
  %11511 = fadd fast float %11508, %155
  %11512 = fadd fast float %11509, %156
  %11513 = fadd fast float %11510, %157
  %11514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %11515 = extractvalue %dx.types.CBufRet.f32 %11514, 0
  %11516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %11517 = extractvalue %dx.types.CBufRet.f32 %11516, 0
  %11518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %11519 = extractvalue %dx.types.CBufRet.f32 %11518, 0
  %11520 = extractvalue %dx.types.CBufRet.f32 %11514, 1
  %11521 = extractvalue %dx.types.CBufRet.f32 %11516, 1
  %11522 = extractvalue %dx.types.CBufRet.f32 %11518, 1
  %11523 = extractvalue %dx.types.CBufRet.f32 %11514, 3
  %11524 = extractvalue %dx.types.CBufRet.f32 %11516, 3
  %11525 = extractvalue %dx.types.CBufRet.f32 %11518, 3
  %11526 = fadd fast float %11511, %11523
  %11527 = fadd fast float %11512, %11524
  %11528 = fadd fast float %11513, %11525
  %11529 = fmul fast float %11526, %11515
  %11530 = call float @dx.op.tertiary.f32(i32 46, float %11527, float %11517, float %11529)  ; FMad(a,b,c)
  %11531 = call float @dx.op.tertiary.f32(i32 46, float %11528, float %11519, float %11530)  ; FMad(a,b,c)
  %11532 = fmul fast float %11526, %11520
  %11533 = call float @dx.op.tertiary.f32(i32 46, float %11527, float %11521, float %11532)  ; FMad(a,b,c)
  %11534 = call float @dx.op.tertiary.f32(i32 46, float %11528, float %11522, float %11533)  ; FMad(a,b,c)
  %11535 = fsub fast float %11531, %11523
  %11536 = fsub fast float %11534, %11524
  %11537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %11538 = extractvalue %dx.types.CBufRet.f32 %11537, 0
  %11539 = extractvalue %dx.types.CBufRet.f32 %11537, 1
  %11540 = fsub fast float %11535, %11538
  %11541 = fsub fast float %11536, %11539
  %11542 = fmul fast float %11540, %11540
  %11543 = fmul fast float %11541, %11541
  %11544 = fadd fast float %11542, %11543
  %11545 = call float @dx.op.unary.f32(i32 24, float %11544)  ; Sqrt(value)
  %11546 = extractvalue %dx.types.CBufRet.f32 %11537, 2
  %11547 = fcmp fast olt float %11545, %11546
  br i1 %11547, label %11548, label %12274

; <label>:11548                                   ; preds = %11506
  %11549 = fadd fast float %11540, %11546
  %11550 = fadd fast float %11541, %11546
  %11551 = extractvalue %dx.types.CBufRet.f32 %11537, 3
  %11552 = fmul fast float %11549, %11551
  %11553 = fmul fast float %11550, %11551
  %11554 = call float @dx.op.unary.f32(i32 7, float %11552)  ; Saturate(value)
  %11555 = call float @dx.op.unary.f32(i32 7, float %11553)  ; Saturate(value)
  %11556 = fsub fast float 1.000000e+00, %11554
  %11557 = fsub fast float 1.000000e+00, %11555
  %11558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %63, float %11556, float %11557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11559 = extractvalue %dx.types.ResRet.f32 %11558, 0
  %11560 = fcmp fast ugt float %11559, 0.000000e+00
  br i1 %11560, label %11561, label %12274

; <label>:11561                                   ; preds = %11548
  br i1 %11503, label %11562, label %11567

; <label>:11562                                   ; preds = %11561
  %11563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %63, float %11556, float %11557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11564 = extractvalue %dx.types.ResRet.f32 %11563, 0
  %11565 = extractvalue %dx.types.ResRet.f32 %11563, 1
  %11566 = extractvalue %dx.types.ResRet.f32 %11563, 2
  br label %12274

; <label>:11567                                   ; preds = %11561
  %11568 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %54, i32 0)  ; GetDimensions(handle,mipLevel)
  %11569 = extractvalue %dx.types.Dimensions %11568, 0
  %11570 = sitofp i32 %11569 to float
  %11571 = extractvalue %dx.types.Dimensions %11568, 1
  %11572 = sitofp i32 %11571 to float
  %11573 = fmul fast float %11570, %11556
  %11574 = fmul fast float %11572, %11557
  %11575 = call float @dx.op.unary.f32(i32 27, float %11573)  ; Round_ni(value)
  %11576 = call float @dx.op.unary.f32(i32 27, float %11574)  ; Round_ni(value)
  %11577 = fptoui float %11570 to i32
  %11578 = uitofp i32 %11577 to float
  %11579 = fmul fast float %11578, %11576
  %11580 = fadd fast float %11579, %11575
  %11581 = fptoui float %11580 to i32
  %11582 = uitofp i32 %11581 to float
  %11583 = fmul fast float %11582, 0x3FE3C6EF40000000
  %11584 = call float @dx.op.unary.f32(i32 22, float %11583)  ; Frc(value)
  %11585 = fadd fast float %11584, 0x3FE5555560000000
  %11586 = fadd fast float %11584, 0x3FD5555560000000
  %11587 = fsub fast float -0.000000e+00, %11584
  %11588 = fsub fast float -0.000000e+00, %11585
  %11589 = fsub fast float -0.000000e+00, %11586
  %11590 = fcmp fast oge float %11584, %11587
  %11591 = fcmp fast oge float %11585, %11588
  %11592 = fcmp fast oge float %11586, %11589
  %11593 = call float @dx.op.unary.f32(i32 6, float %11584)  ; FAbs(value)
  %11594 = call float @dx.op.unary.f32(i32 6, float %11585)  ; FAbs(value)
  %11595 = call float @dx.op.unary.f32(i32 6, float %11586)  ; FAbs(value)
  %11596 = call float @dx.op.unary.f32(i32 22, float %11593)  ; Frc(value)
  %11597 = call float @dx.op.unary.f32(i32 22, float %11594)  ; Frc(value)
  %11598 = call float @dx.op.unary.f32(i32 22, float %11595)  ; Frc(value)
  %11599 = fsub fast float -0.000000e+00, %11596
  %11600 = fsub fast float -0.000000e+00, %11597
  %11601 = fsub fast float -0.000000e+00, %11598
  %11602 = select i1 %11590, float %11596, float %11599
  %11603 = select i1 %11591, float %11597, float %11600
  %11604 = select i1 %11592, float %11598, float %11601
  %11605 = fmul fast float %11602, 6.000000e+00
  %11606 = fmul fast float %11603, 6.000000e+00
  %11607 = fmul fast float %11604, 6.000000e+00
  %11608 = fadd fast float %11605, -3.000000e+00
  %11609 = fadd fast float %11606, -3.000000e+00
  %11610 = fadd fast float %11607, -3.000000e+00
  %11611 = call float @dx.op.unary.f32(i32 6, float %11608)  ; FAbs(value)
  %11612 = call float @dx.op.unary.f32(i32 6, float %11609)  ; FAbs(value)
  %11613 = call float @dx.op.unary.f32(i32 6, float %11610)  ; FAbs(value)
  %11614 = fadd fast float %11611, -1.000000e+00
  %11615 = fadd fast float %11612, -1.000000e+00
  %11616 = fadd fast float %11613, -1.000000e+00
  %11617 = call float @dx.op.unary.f32(i32 7, float %11614)  ; Saturate(value)
  %11618 = call float @dx.op.unary.f32(i32 7, float %11615)  ; Saturate(value)
  %11619 = call float @dx.op.unary.f32(i32 7, float %11616)  ; Saturate(value)
  br label %12274

; <label>:11620                                   ; preds = %11502
  %11621 = icmp eq i32 %11282, 39
  br i1 %11621, label %11622, label %11726

; <label>:11622                                   ; preds = %11620
  %11623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11624 = extractvalue %dx.types.CBufRet.f32 %11623, 0
  %11625 = extractvalue %dx.types.CBufRet.f32 %11623, 1
  %11626 = extractvalue %dx.types.CBufRet.f32 %11623, 2
  %11627 = fadd fast float %11624, %155
  %11628 = fadd fast float %11625, %156
  %11629 = fadd fast float %11626, %157
  %11630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %11631 = extractvalue %dx.types.CBufRet.f32 %11630, 0
  %11632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %11633 = extractvalue %dx.types.CBufRet.f32 %11632, 0
  %11634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %11635 = extractvalue %dx.types.CBufRet.f32 %11634, 0
  %11636 = extractvalue %dx.types.CBufRet.f32 %11630, 1
  %11637 = extractvalue %dx.types.CBufRet.f32 %11632, 1
  %11638 = extractvalue %dx.types.CBufRet.f32 %11634, 1
  %11639 = extractvalue %dx.types.CBufRet.f32 %11630, 3
  %11640 = extractvalue %dx.types.CBufRet.f32 %11632, 3
  %11641 = extractvalue %dx.types.CBufRet.f32 %11634, 3
  %11642 = fadd fast float %11627, %11639
  %11643 = fadd fast float %11628, %11640
  %11644 = fadd fast float %11629, %11641
  %11645 = fmul fast float %11642, %11631
  %11646 = call float @dx.op.tertiary.f32(i32 46, float %11643, float %11633, float %11645)  ; FMad(a,b,c)
  %11647 = call float @dx.op.tertiary.f32(i32 46, float %11644, float %11635, float %11646)  ; FMad(a,b,c)
  %11648 = fmul fast float %11642, %11636
  %11649 = call float @dx.op.tertiary.f32(i32 46, float %11643, float %11637, float %11648)  ; FMad(a,b,c)
  %11650 = call float @dx.op.tertiary.f32(i32 46, float %11644, float %11638, float %11649)  ; FMad(a,b,c)
  %11651 = fsub fast float %11647, %11639
  %11652 = fsub fast float %11650, %11640
  %11653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %11654 = extractvalue %dx.types.CBufRet.f32 %11653, 0
  %11655 = extractvalue %dx.types.CBufRet.f32 %11653, 1
  %11656 = fsub fast float %11651, %11654
  %11657 = fsub fast float %11652, %11655
  %11658 = fmul fast float %11656, %11656
  %11659 = fmul fast float %11657, %11657
  %11660 = fadd fast float %11658, %11659
  %11661 = call float @dx.op.unary.f32(i32 24, float %11660)  ; Sqrt(value)
  %11662 = extractvalue %dx.types.CBufRet.f32 %11653, 2
  %11663 = fcmp fast olt float %11661, %11662
  br i1 %11663, label %11664, label %12274

; <label>:11664                                   ; preds = %11622
  %11665 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %52, i32 0)  ; GetDimensions(handle,mipLevel)
  %11666 = extractvalue %dx.types.Dimensions %11665, 0
  %11667 = sitofp i32 %11666 to float
  %11668 = extractvalue %dx.types.Dimensions %11665, 1
  %11669 = sitofp i32 %11668 to float
  %11670 = fadd fast float %11656, %11662
  %11671 = fadd fast float %11657, %11662
  %11672 = extractvalue %dx.types.CBufRet.f32 %11653, 3
  %11673 = fmul fast float %11670, %11672
  %11674 = fmul fast float %11671, %11672
  %11675 = call float @dx.op.unary.f32(i32 7, float %11673)  ; Saturate(value)
  %11676 = call float @dx.op.unary.f32(i32 7, float %11674)  ; Saturate(value)
  %11677 = fsub fast float 1.000000e+00, %11675
  %11678 = fsub fast float 1.000000e+00, %11676
  %11679 = fmul fast float %11677, %11667
  %11680 = fmul fast float %11678, %11669
  %11681 = call float @dx.op.unary.f32(i32 27, float %11679)  ; Round_ni(value)
  %11682 = call float @dx.op.unary.f32(i32 27, float %11680)  ; Round_ni(value)
  %11683 = fptoui float %11667 to i32
  %11684 = uitofp i32 %11683 to float
  %11685 = fmul fast float %11682, %11684
  %11686 = fadd fast float %11685, %11681
  %11687 = fptoui float %11686 to i32
  %11688 = uitofp i32 %11687 to float
  %11689 = fmul fast float %11688, 0x3FE3C6EF40000000
  %11690 = call float @dx.op.unary.f32(i32 22, float %11689)  ; Frc(value)
  %11691 = fadd fast float %11690, 0x3FE5555560000000
  %11692 = fadd fast float %11690, 0x3FD5555560000000
  %11693 = fsub fast float -0.000000e+00, %11690
  %11694 = fsub fast float -0.000000e+00, %11691
  %11695 = fsub fast float -0.000000e+00, %11692
  %11696 = fcmp fast oge float %11690, %11693
  %11697 = fcmp fast oge float %11691, %11694
  %11698 = fcmp fast oge float %11692, %11695
  %11699 = call float @dx.op.unary.f32(i32 6, float %11690)  ; FAbs(value)
  %11700 = call float @dx.op.unary.f32(i32 6, float %11691)  ; FAbs(value)
  %11701 = call float @dx.op.unary.f32(i32 6, float %11692)  ; FAbs(value)
  %11702 = call float @dx.op.unary.f32(i32 22, float %11699)  ; Frc(value)
  %11703 = call float @dx.op.unary.f32(i32 22, float %11700)  ; Frc(value)
  %11704 = call float @dx.op.unary.f32(i32 22, float %11701)  ; Frc(value)
  %11705 = fsub fast float -0.000000e+00, %11702
  %11706 = fsub fast float -0.000000e+00, %11703
  %11707 = fsub fast float -0.000000e+00, %11704
  %11708 = select i1 %11696, float %11702, float %11705
  %11709 = select i1 %11697, float %11703, float %11706
  %11710 = select i1 %11698, float %11704, float %11707
  %11711 = fmul fast float %11708, 6.000000e+00
  %11712 = fmul fast float %11709, 6.000000e+00
  %11713 = fmul fast float %11710, 6.000000e+00
  %11714 = fadd fast float %11711, -3.000000e+00
  %11715 = fadd fast float %11712, -3.000000e+00
  %11716 = fadd fast float %11713, -3.000000e+00
  %11717 = call float @dx.op.unary.f32(i32 6, float %11714)  ; FAbs(value)
  %11718 = call float @dx.op.unary.f32(i32 6, float %11715)  ; FAbs(value)
  %11719 = call float @dx.op.unary.f32(i32 6, float %11716)  ; FAbs(value)
  %11720 = fadd fast float %11717, -1.000000e+00
  %11721 = fadd fast float %11718, -1.000000e+00
  %11722 = fadd fast float %11719, -1.000000e+00
  %11723 = call float @dx.op.unary.f32(i32 7, float %11720)  ; Saturate(value)
  %11724 = call float @dx.op.unary.f32(i32 7, float %11721)  ; Saturate(value)
  %11725 = call float @dx.op.unary.f32(i32 7, float %11722)  ; Saturate(value)
  br label %12274

; <label>:11726                                   ; preds = %11620
  %11727 = icmp eq i32 %11282, 23
  br i1 %11727, label %12274, label %11728

; <label>:11728                                   ; preds = %11726
  %11729 = icmp eq i32 %11282, 24
  br i1 %11729, label %11730, label %11756

; <label>:11730                                   ; preds = %11728
  %11731 = and i32 %384, 255
  %11732 = uitofp i32 %11731 to float
  %11733 = fptoui float %11732 to i32
  %11734 = uitofp i32 %11733 to float
  %11735 = fadd fast float %11734, -4.000000e+00
  %11736 = fmul fast float %11735, 0x3FB5555560000000
  %11737 = call float @dx.op.unary.f32(i32 7, float %11736)  ; Saturate(value)
  %11738 = icmp eq i32 %11733, 0
  %11739 = select i1 %11738, float 0.000000e+00, float %11737
  %11740 = icmp ult i32 %11733, 2
  %11741 = select i1 %11740, float 0.000000e+00, float %11737
  %11742 = add i32 %11733, -1
  %11743 = icmp ult i32 %11742, 2
  %11744 = select i1 %11743, float 1.000000e+00, float %11739
  %11745 = icmp ult i32 %11733, 4
  %11746 = select i1 %11745, float 0.000000e+00, float 1.000000e+00
  %11747 = and i32 %11733, -2
  %11748 = icmp eq i32 %11747, 2
  %11749 = icmp eq i32 %11733, 4
  %11750 = select i1 %11749, float 1.000000e+00, float %11746
  %11751 = or i1 %11749, %11748
  %11752 = select i1 %11751, float 1.000000e+00, float %11741
  %11753 = add i32 %11733, -3
  %11754 = icmp ult i32 %11753, 2
  %11755 = select i1 %11754, float 0.000000e+00, float %11744
  br label %12274

; <label>:11756                                   ; preds = %11728
  %11757 = icmp eq i32 %11282, 25
  br i1 %11757, label %11758, label %11784

; <label>:11758                                   ; preds = %11756
  %11759 = and i32 %1886, 255
  %11760 = uitofp i32 %11759 to float
  %11761 = fptoui float %11760 to i32
  %11762 = uitofp i32 %11761 to float
  %11763 = fadd fast float %11762, -4.000000e+00
  %11764 = fmul fast float %11763, 0x3FB5555560000000
  %11765 = call float @dx.op.unary.f32(i32 7, float %11764)  ; Saturate(value)
  %11766 = icmp eq i32 %11761, 0
  %11767 = select i1 %11766, float 0.000000e+00, float %11765
  %11768 = icmp ult i32 %11761, 2
  %11769 = select i1 %11768, float 0.000000e+00, float %11765
  %11770 = add i32 %11761, -1
  %11771 = icmp ult i32 %11770, 2
  %11772 = select i1 %11771, float 1.000000e+00, float %11767
  %11773 = icmp ult i32 %11761, 4
  %11774 = select i1 %11773, float 0.000000e+00, float 1.000000e+00
  %11775 = and i32 %11761, -2
  %11776 = icmp eq i32 %11775, 2
  %11777 = icmp eq i32 %11761, 4
  %11778 = select i1 %11777, float 1.000000e+00, float %11774
  %11779 = or i1 %11777, %11776
  %11780 = select i1 %11779, float 1.000000e+00, float %11769
  %11781 = add i32 %11761, -3
  %11782 = icmp ult i32 %11781, 2
  %11783 = select i1 %11782, float 0.000000e+00, float %11772
  br label %12274

; <label>:11784                                   ; preds = %11756
  %11785 = icmp eq i32 %11282, 27
  br i1 %11785, label %11786, label %11841

; <label>:11786                                   ; preds = %11784
  %11787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %11788 = extractvalue %dx.types.CBufRet.f32 %11787, 2
  %11789 = fptoui float %11788 to i32
  %11790 = fptoui float %179 to i32
  %11791 = and i32 %11790, 31
  %11792 = lshr i32 %11789, %11791
  %11793 = uitofp i32 %11792 to float
  %11794 = fmul fast float %11793, %81
  %11795 = fmul fast float %11793, %82
  %11796 = call float @dx.op.unary.f32(i32 27, float %11794)  ; Round_ni(value)
  %11797 = call float @dx.op.unary.f32(i32 27, float %11795)  ; Round_ni(value)
  %11798 = fptoui float %11796 to i32
  %11799 = fptoui float %11797 to i32
  %11800 = fptoui float %11793 to i32
  %11801 = mul i32 %11800, %11799
  %11802 = add i32 %11801, %11798
  %11803 = uitofp i32 %11802 to float
  %11804 = fmul fast float %11803, 0x3FE3C6EF40000000
  %11805 = call float @dx.op.unary.f32(i32 22, float %11804)  ; Frc(value)
  %11806 = fadd fast float %11805, 0x3FE5555560000000
  %11807 = fadd fast float %11805, 0x3FD5555560000000
  %11808 = fsub fast float -0.000000e+00, %11805
  %11809 = fsub fast float -0.000000e+00, %11806
  %11810 = fsub fast float -0.000000e+00, %11807
  %11811 = fcmp fast oge float %11805, %11808
  %11812 = fcmp fast oge float %11806, %11809
  %11813 = fcmp fast oge float %11807, %11810
  %11814 = call float @dx.op.unary.f32(i32 6, float %11805)  ; FAbs(value)
  %11815 = call float @dx.op.unary.f32(i32 6, float %11806)  ; FAbs(value)
  %11816 = call float @dx.op.unary.f32(i32 6, float %11807)  ; FAbs(value)
  %11817 = call float @dx.op.unary.f32(i32 22, float %11814)  ; Frc(value)
  %11818 = call float @dx.op.unary.f32(i32 22, float %11815)  ; Frc(value)
  %11819 = call float @dx.op.unary.f32(i32 22, float %11816)  ; Frc(value)
  %11820 = fsub fast float -0.000000e+00, %11817
  %11821 = fsub fast float -0.000000e+00, %11818
  %11822 = fsub fast float -0.000000e+00, %11819
  %11823 = select i1 %11811, float %11817, float %11820
  %11824 = select i1 %11812, float %11818, float %11821
  %11825 = select i1 %11813, float %11819, float %11822
  %11826 = fmul fast float %11823, 6.000000e+00
  %11827 = fmul fast float %11824, 6.000000e+00
  %11828 = fmul fast float %11825, 6.000000e+00
  %11829 = fadd fast float %11826, -3.000000e+00
  %11830 = fadd fast float %11827, -3.000000e+00
  %11831 = fadd fast float %11828, -3.000000e+00
  %11832 = call float @dx.op.unary.f32(i32 6, float %11829)  ; FAbs(value)
  %11833 = call float @dx.op.unary.f32(i32 6, float %11830)  ; FAbs(value)
  %11834 = call float @dx.op.unary.f32(i32 6, float %11831)  ; FAbs(value)
  %11835 = fadd fast float %11832, -1.000000e+00
  %11836 = fadd fast float %11833, -1.000000e+00
  %11837 = fadd fast float %11834, -1.000000e+00
  %11838 = call float @dx.op.unary.f32(i32 7, float %11835)  ; Saturate(value)
  %11839 = call float @dx.op.unary.f32(i32 7, float %11836)  ; Saturate(value)
  %11840 = call float @dx.op.unary.f32(i32 7, float %11837)  ; Saturate(value)
  br label %12274

; <label>:11841                                   ; preds = %11784
  %11842 = icmp eq i32 %11282, 30
  br i1 %11842, label %11843, label %11883

; <label>:11843                                   ; preds = %11841
  %11844 = fcmp fast olt float %434, 0.000000e+00
  br i1 %11844, label %12274, label %11845

; <label>:11845                                   ; preds = %11843
  %11846 = fmul fast float %434, 0x3FE3C6EF40000000
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
  br label %12274

; <label>:11883                                   ; preds = %11841
  %11884 = add i32 %11282, -31
  %11885 = icmp ult i32 %11884, 2
  br i1 %11885, label %11886, label %11894

; <label>:11886                                   ; preds = %11883
  %11887 = fcmp fast olt float %435, 0.000000e+00
  %11888 = call float @dx.op.unary.f32(i32 6, float %435)  ; FAbs(value)
  %11889 = fmul fast float %11888, 5.000000e-01
  %11890 = call float @dx.op.unary.f32(i32 7, float %11889)  ; Saturate(value)
  %11891 = select i1 %11887, float 0.000000e+00, float %11890
  %11892 = select i1 %11887, float %11890, float 0.000000e+00
  %11893 = fadd fast float %11890, 5.000000e-01
  br label %12274

; <label>:11894                                   ; preds = %11883
  %11895 = icmp eq i32 %11282, 33
  br i1 %11895, label %11896, label %11899

; <label>:11896                                   ; preds = %11894
  %11897 = icmp ne i32 %2031, 0
  %11898 = uitofp i1 %11897 to float
  br label %12274

; <label>:11899                                   ; preds = %11894
  %11900 = icmp eq i32 %11282, 34
  br i1 %11900, label %11901, label %11910

; <label>:11901                                   ; preds = %11899
  %11902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %11903 = extractvalue %dx.types.CBufRet.f32 %11902, 2
  %11904 = fsub fast float %157, %312
  %11905 = fadd fast float %11904, %11903
  %11906 = fcmp fast ult float %11905, %2030
  br i1 %11906, label %11907, label %12274

; <label>:11907                                   ; preds = %11901
  %11908 = fcmp fast ult float %11905, %2029
  br i1 %11908, label %11909, label %12274

; <label>:11909                                   ; preds = %11907
  br label %12274

; <label>:11910                                   ; preds = %11899
  %11911 = icmp eq i32 %11282, 36
  br i1 %11911, label %11912, label %11944

; <label>:11912                                   ; preds = %11910
  %11913 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %11914 = extractvalue %dx.types.CBufRet.i32 %11913, 0
  %11915 = and i32 %11914, 2048
  %11916 = icmp ne i32 %11915, 0
  %11917 = call float @dx.op.binary.f32(i32 35, float %2657, float %2658)  ; FMax(a,b)
  %11918 = call float @dx.op.binary.f32(i32 35, float %2656, float %11917)  ; FMax(a,b)
  %11919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %11920 = extractvalue %dx.types.CBufRet.f32 %11919, 1
  %11921 = fcmp fast oge float %11918, %11920
  %11922 = and i1 %11916, %11921
  br i1 %11922, label %11923, label %11929

; <label>:11923                                   ; preds = %11912
  %11924 = fsub fast float 1.000000e+00, %11261
  %11925 = fmul fast float %11924, 5.000000e-01
  %11926 = fadd fast float %11925, %11261
  %11927 = fmul fast float %11262, 5.000000e-01
  %11928 = fmul fast float %11263, 5.000000e-01
  br label %12274

; <label>:11929                                   ; preds = %11912
  %11930 = call float @dx.op.dot3.f32(i32 55, float %2755, float %2756, float %2757, float %2570, float %2571, float %2572)  ; Dot3(ax,ay,az,bx,by,bz)
  %11931 = and i32 %11914, 1024
  %11932 = icmp ne i32 %11931, 0
  %11933 = extractvalue %dx.types.CBufRet.f32 %11919, 2
  %11934 = fcmp fast ole float %11930, %11933
  %11935 = and i1 %11932, %11934
  br i1 %11935, label %11936, label %12274

; <label>:11936                                   ; preds = %11929
  %11937 = fsub fast float 1.000000e+00, %11261
  %11938 = fsub fast float 1.000000e+00, %11262
  %11939 = fmul fast float %11937, 5.000000e-01
  %11940 = fmul fast float %11938, 5.000000e-01
  %11941 = fadd fast float %11939, %11261
  %11942 = fadd fast float %11940, %11262
  %11943 = fmul fast float %11263, 5.000000e-01
  br label %12274

; <label>:11944                                   ; preds = %11910
  %11945 = icmp eq i32 %11282, 40
  br i1 %11945, label %11946, label %12183

; <label>:11946                                   ; preds = %11944
  %11947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %11948 = extractvalue %dx.types.CBufRet.f32 %11947, 0
  %11949 = fcmp fast ogt float %2640, %11948
  %11950 = zext i1 %11949 to i32
  %11951 = extractvalue %dx.types.CBufRet.f32 %11947, 1
  %11952 = fcmp fast ogt float %2640, %11951
  %11953 = zext i1 %11952 to i32
  %11954 = add nuw nsw i32 %11953, %11950
  %11955 = extractvalue %dx.types.CBufRet.f32 %11947, 2
  %11956 = fcmp fast ogt float %2640, %11955
  %11957 = zext i1 %11956 to i32
  %11958 = add nuw nsw i32 %11954, %11957
  %11959 = icmp ult i32 %11958, 3
  %11960 = zext i1 %11959 to i32
  %11961 = shl nuw nsw i32 %11958, 2
  %11962 = add nuw nsw i32 %11961, 48
  %11963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11962)  ; CBufferLoadLegacy(handle,regIndex)
  %11964 = extractvalue %dx.types.CBufRet.f32 %11963, 1
  %11965 = fcmp fast ogt float %2640, %11964
  %11966 = zext i1 %11965 to i32
  %11967 = or i32 %11961, 1
  %11968 = add nuw nsw i32 %11967, 48
  %11969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11968)  ; CBufferLoadLegacy(handle,regIndex)
  %11970 = extractvalue %dx.types.CBufRet.f32 %11969, 1
  %11971 = fcmp fast ogt float %2640, %11970
  %11972 = zext i1 %11971 to i32
  %11973 = add nuw nsw i32 %11972, %11966
  %11974 = or i32 %11961, 2
  %11975 = add nuw nsw i32 %11974, 48
  %11976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11975)  ; CBufferLoadLegacy(handle,regIndex)
  %11977 = extractvalue %dx.types.CBufRet.f32 %11976, 1
  %11978 = fcmp fast ogt float %2640, %11977
  %11979 = zext i1 %11978 to i32
  %11980 = add nuw nsw i32 %11973, %11979
  %11981 = call i32 @dx.op.binary.i32(i32 40, i32 %11980, i32 3)  ; UMin(a,b)
  %11982 = add i32 %11961, %11981
  %11983 = call i32 @dx.op.binary.i32(i32 40, i32 %11982, i32 12)  ; UMin(a,b)
  %11984 = add i32 %11983, 48
  %11985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11984)  ; CBufferLoadLegacy(handle,regIndex)
  %11986 = extractvalue %dx.types.CBufRet.f32 %11985, 0
  %11987 = fcmp fast oge float %2640, %11986
  %11988 = zext i1 %11987 to i32
  %11989 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %11960)  ; UMin(a,b)
  %11990 = call i32 @dx.op.binary.i32(i32 40, i32 %11988, i32 %11989)  ; UMin(a,b)
  %11991 = fmul fast float %11272, 7.500000e-01
  %11992 = fadd fast float %11991, %11270
  %11993 = fcmp fast ult float %11267, %11992
  br i1 %11993, label %12033, label %11994

; <label>:11994                                   ; preds = %11946
  %11995 = uitofp i32 %11983 to float
  %11996 = fmul fast float %11995, 0x3FE3C6EF40000000
  %11997 = call float @dx.op.unary.f32(i32 22, float %11996)  ; Frc(value)
  %11998 = fadd fast float %11997, 0x3FE5555560000000
  %11999 = fadd fast float %11997, 0x3FD5555560000000
  %12000 = fsub fast float -0.000000e+00, %11997
  %12001 = fsub fast float -0.000000e+00, %11998
  %12002 = fsub fast float -0.000000e+00, %11999
  %12003 = fcmp fast oge float %11997, %12000
  %12004 = fcmp fast oge float %11998, %12001
  %12005 = fcmp fast oge float %11999, %12002
  %12006 = call float @dx.op.unary.f32(i32 6, float %11997)  ; FAbs(value)
  %12007 = call float @dx.op.unary.f32(i32 6, float %11998)  ; FAbs(value)
  %12008 = call float @dx.op.unary.f32(i32 6, float %11999)  ; FAbs(value)
  %12009 = call float @dx.op.unary.f32(i32 22, float %12006)  ; Frc(value)
  %12010 = call float @dx.op.unary.f32(i32 22, float %12007)  ; Frc(value)
  %12011 = call float @dx.op.unary.f32(i32 22, float %12008)  ; Frc(value)
  %12012 = fsub fast float -0.000000e+00, %12009
  %12013 = fsub fast float -0.000000e+00, %12010
  %12014 = fsub fast float -0.000000e+00, %12011
  %12015 = select i1 %12003, float %12009, float %12012
  %12016 = select i1 %12004, float %12010, float %12013
  %12017 = select i1 %12005, float %12011, float %12014
  %12018 = fmul fast float %12015, 6.000000e+00
  %12019 = fmul fast float %12016, 6.000000e+00
  %12020 = fmul fast float %12017, 6.000000e+00
  %12021 = fadd fast float %12018, -3.000000e+00
  %12022 = fadd fast float %12019, -3.000000e+00
  %12023 = fadd fast float %12020, -3.000000e+00
  %12024 = call float @dx.op.unary.f32(i32 6, float %12021)  ; FAbs(value)
  %12025 = call float @dx.op.unary.f32(i32 6, float %12022)  ; FAbs(value)
  %12026 = call float @dx.op.unary.f32(i32 6, float %12023)  ; FAbs(value)
  %12027 = fadd fast float %12024, -1.000000e+00
  %12028 = fadd fast float %12025, -1.000000e+00
  %12029 = fadd fast float %12026, -1.000000e+00
  %12030 = call float @dx.op.unary.f32(i32 7, float %12027)  ; Saturate(value)
  %12031 = call float @dx.op.unary.f32(i32 7, float %12028)  ; Saturate(value)
  %12032 = call float @dx.op.unary.f32(i32 7, float %12029)  ; Saturate(value)
  br label %12170

; <label>:12033                                   ; preds = %11946
  %12034 = fmul fast float %11272, 5.000000e-01
  %12035 = fadd fast float %12034, %11270
  %12036 = fcmp fast ult float %11267, %12035
  br i1 %12036, label %12063, label %12037

; <label>:12037                                   ; preds = %12033
  %12038 = add i32 %11990, 4
  %12039 = icmp eq i32 %12038, 0
  br i1 %12039, label %12170, label %12040

; <label>:12040                                   ; preds = %12037
  br label %12041

; <label>:12041                                   ; preds = %12041, %12040
  %12042 = phi float [ %12058, %12041 ], [ 0.000000e+00, %12040 ]
  %12043 = phi i32 [ %12059, %12041 ], [ 0, %12040 ]
  %12044 = add i32 %11983, 32
  %12045 = add i32 %12044, %12043
  %12046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %12045)  ; CBufferLoadLegacy(handle,regIndex)
  %12047 = extractvalue %dx.types.CBufRet.f32 %12046, 0
  %12048 = extractvalue %dx.types.CBufRet.f32 %12046, 1
  %12049 = extractvalue %dx.types.CBufRet.f32 %12046, 2
  %12050 = extractvalue %dx.types.CBufRet.f32 %12046, 3
  %12051 = fmul fast float %12047, %2640
  %12052 = fadd fast float %12051, %12048
  %12053 = call float @dx.op.unary.f32(i32 7, float %12052)  ; Saturate(value)
  %12054 = fmul fast float %12049, %2640
  %12055 = fadd fast float %12054, %12050
  %12056 = call float @dx.op.unary.f32(i32 7, float %12055)  ; Saturate(value)
  %12057 = call float @dx.op.binary.f32(i32 36, float %12053, float %12056)  ; FMin(a,b)
  %12058 = fadd fast float %12057, %12042
  %12059 = add nuw i32 %12043, 1
  %12060 = icmp eq i32 %12059, %12038
  br i1 %12060, label %12061, label %12041

; <label>:12061                                   ; preds = %12041
  %12062 = fmul float %12058, 2.500000e-01
  br label %12170

; <label>:12063                                   ; preds = %12033
  %12064 = fmul fast float %11272, 2.500000e-01
  %12065 = fadd fast float %12064, %11270
  %12066 = fcmp fast ult float %11267, %12065
  br i1 %12066, label %12166, label %12067

; <label>:12067                                   ; preds = %12063
  %12068 = add i32 %11983, 32
  %12069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %12068)  ; CBufferLoadLegacy(handle,regIndex)
  %12070 = extractvalue %dx.types.CBufRet.f32 %12069, 0
  %12071 = extractvalue %dx.types.CBufRet.f32 %12069, 1
  %12072 = extractvalue %dx.types.CBufRet.f32 %12069, 2
  %12073 = extractvalue %dx.types.CBufRet.f32 %12069, 3
  %12074 = fmul fast float %12070, %2640
  %12075 = fadd fast float %12074, %12071
  %12076 = call float @dx.op.unary.f32(i32 7, float %12075)  ; Saturate(value)
  %12077 = fmul fast float %12072, %2640
  %12078 = fadd fast float %12077, %12073
  %12079 = call float @dx.op.unary.f32(i32 7, float %12078)  ; Saturate(value)
  %12080 = call float @dx.op.binary.f32(i32 36, float %12076, float %12079)  ; FMin(a,b)
  %12081 = uitofp i32 %11983 to float
  %12082 = fmul fast float %12081, 0x3FE3C6EF40000000
  %12083 = call float @dx.op.unary.f32(i32 22, float %12082)  ; Frc(value)
  %12084 = fadd fast float %12083, 0x3FE5555560000000
  %12085 = fadd fast float %12083, 0x3FD5555560000000
  %12086 = fsub fast float -0.000000e+00, %12083
  %12087 = fsub fast float -0.000000e+00, %12084
  %12088 = fsub fast float -0.000000e+00, %12085
  %12089 = fcmp fast oge float %12083, %12086
  %12090 = fcmp fast oge float %12084, %12087
  %12091 = fcmp fast oge float %12085, %12088
  %12092 = call float @dx.op.unary.f32(i32 6, float %12083)  ; FAbs(value)
  %12093 = call float @dx.op.unary.f32(i32 6, float %12084)  ; FAbs(value)
  %12094 = call float @dx.op.unary.f32(i32 6, float %12085)  ; FAbs(value)
  %12095 = call float @dx.op.unary.f32(i32 22, float %12092)  ; Frc(value)
  %12096 = call float @dx.op.unary.f32(i32 22, float %12093)  ; Frc(value)
  %12097 = call float @dx.op.unary.f32(i32 22, float %12094)  ; Frc(value)
  %12098 = fsub fast float -0.000000e+00, %12095
  %12099 = fsub fast float -0.000000e+00, %12096
  %12100 = fsub fast float -0.000000e+00, %12097
  %12101 = select i1 %12089, float %12095, float %12098
  %12102 = select i1 %12090, float %12096, float %12099
  %12103 = select i1 %12091, float %12097, float %12100
  %12104 = fmul fast float %12101, 6.000000e+00
  %12105 = fmul fast float %12102, 6.000000e+00
  %12106 = fmul fast float %12103, 6.000000e+00
  %12107 = fadd fast float %12104, -3.000000e+00
  %12108 = fadd fast float %12105, -3.000000e+00
  %12109 = fadd fast float %12106, -3.000000e+00
  %12110 = call float @dx.op.unary.f32(i32 6, float %12107)  ; FAbs(value)
  %12111 = call float @dx.op.unary.f32(i32 6, float %12108)  ; FAbs(value)
  %12112 = call float @dx.op.unary.f32(i32 6, float %12109)  ; FAbs(value)
  %12113 = fadd fast float %12110, -1.000000e+00
  %12114 = fadd fast float %12111, -1.000000e+00
  %12115 = fadd fast float %12112, -1.000000e+00
  %12116 = call float @dx.op.unary.f32(i32 7, float %12113)  ; Saturate(value)
  %12117 = call float @dx.op.unary.f32(i32 7, float %12114)  ; Saturate(value)
  %12118 = call float @dx.op.unary.f32(i32 7, float %12115)  ; Saturate(value)
  %12119 = fadd fast float %12081, 1.000000e+00
  %12120 = fmul fast float %12119, 0x3FE3C6EF40000000
  %12121 = call float @dx.op.unary.f32(i32 22, float %12120)  ; Frc(value)
  %12122 = fadd fast float %12121, 0x3FE5555560000000
  %12123 = fadd fast float %12121, 0x3FD5555560000000
  %12124 = fsub fast float -0.000000e+00, %12121
  %12125 = fsub fast float -0.000000e+00, %12122
  %12126 = fsub fast float -0.000000e+00, %12123
  %12127 = fcmp fast oge float %12121, %12124
  %12128 = fcmp fast oge float %12122, %12125
  %12129 = fcmp fast oge float %12123, %12126
  %12130 = call float @dx.op.unary.f32(i32 6, float %12121)  ; FAbs(value)
  %12131 = call float @dx.op.unary.f32(i32 6, float %12122)  ; FAbs(value)
  %12132 = call float @dx.op.unary.f32(i32 6, float %12123)  ; FAbs(value)
  %12133 = call float @dx.op.unary.f32(i32 22, float %12130)  ; Frc(value)
  %12134 = call float @dx.op.unary.f32(i32 22, float %12131)  ; Frc(value)
  %12135 = call float @dx.op.unary.f32(i32 22, float %12132)  ; Frc(value)
  %12136 = fsub fast float -0.000000e+00, %12133
  %12137 = fsub fast float -0.000000e+00, %12134
  %12138 = fsub fast float -0.000000e+00, %12135
  %12139 = select i1 %12127, float %12133, float %12136
  %12140 = select i1 %12128, float %12134, float %12137
  %12141 = select i1 %12129, float %12135, float %12138
  %12142 = fmul fast float %12139, 6.000000e+00
  %12143 = fmul fast float %12140, 6.000000e+00
  %12144 = fmul fast float %12141, 6.000000e+00
  %12145 = fadd fast float %12142, -3.000000e+00
  %12146 = fadd fast float %12143, -3.000000e+00
  %12147 = fadd fast float %12144, -3.000000e+00
  %12148 = call float @dx.op.unary.f32(i32 6, float %12145)  ; FAbs(value)
  %12149 = call float @dx.op.unary.f32(i32 6, float %12146)  ; FAbs(value)
  %12150 = call float @dx.op.unary.f32(i32 6, float %12147)  ; FAbs(value)
  %12151 = fadd fast float %12148, -1.000000e+00
  %12152 = fadd fast float %12149, -1.000000e+00
  %12153 = fadd fast float %12150, -1.000000e+00
  %12154 = call float @dx.op.unary.f32(i32 7, float %12151)  ; Saturate(value)
  %12155 = call float @dx.op.unary.f32(i32 7, float %12152)  ; Saturate(value)
  %12156 = call float @dx.op.unary.f32(i32 7, float %12153)  ; Saturate(value)
  %12157 = fsub fast float %12154, %12116
  %12158 = fsub fast float %12155, %12117
  %12159 = fsub fast float %12156, %12118
  %12160 = fmul fast float %12157, %12080
  %12161 = fmul fast float %12158, %12080
  %12162 = fmul fast float %12159, %12080
  %12163 = fadd fast float %12160, %12116
  %12164 = fadd fast float %12161, %12117
  %12165 = fadd fast float %12162, %12118
  br label %12170

; <label>:12166                                   ; preds = %12063
  %12167 = icmp ne i32 %11990, 0
  %12168 = select i1 %12167, float 1.000000e+00, float 0.000000e+00
  %12169 = select i1 %12167, float 0.000000e+00, float 1.000000e+00
  br label %12170

; <label>:12170                                   ; preds = %12166, %12067, %12061, %12037, %11994
  %12171 = phi float [ %12030, %11994 ], [ %12163, %12067 ], [ %12168, %12166 ], [ 0.000000e+00, %12037 ], [ %12062, %12061 ]
  %12172 = phi float [ %12031, %11994 ], [ %12164, %12067 ], [ %12169, %12166 ], [ 0.000000e+00, %12037 ], [ %12062, %12061 ]
  %12173 = phi float [ %12032, %11994 ], [ %12165, %12067 ], [ 0.000000e+00, %12166 ], [ 0.000000e+00, %12037 ], [ %12062, %12061 ]
  %12174 = fsub fast float %12171, %11261
  %12175 = fsub fast float %12172, %11262
  %12176 = fsub fast float %12173, %11263
  %12177 = fmul fast float %12174, 5.000000e-01
  %12178 = fmul fast float %12175, 5.000000e-01
  %12179 = fmul fast float %12176, 5.000000e-01
  %12180 = fadd fast float %12177, %11261
  %12181 = fadd fast float %12178, %11262
  %12182 = fadd fast float %12179, %11263
  br label %12274

; <label>:12183                                   ; preds = %11944
  %12184 = icmp eq i32 %11282, 41
  br i1 %12184, label %12185, label %12266

; <label>:12185                                   ; preds = %12183
  %12186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %12187 = extractvalue %dx.types.CBufRet.i32 %12186, 0
  %12188 = icmp eq i32 %12187, 2
  %12189 = and i32 %1892, 2
  %12190 = icmp ne i32 %12189, 0
  %12191 = and i1 %12190, %12188
  %12192 = icmp eq i32 %12187, 3
  %12193 = and i32 %1892, 4
  %12194 = icmp ne i32 %12193, 0
  %12195 = and i1 %12194, %12192
  %12196 = or i1 %12195, %12191
  %12197 = icmp eq i32 %12187, 4
  %12198 = and i32 %1892, 8
  %12199 = icmp ne i32 %12198, 0
  %12200 = and i1 %12199, %12197
  %12201 = or i1 %12200, %12196
  %12202 = icmp eq i32 %12187, 5
  %12203 = and i32 %1892, 16
  %12204 = icmp ne i32 %12203, 0
  %12205 = and i1 %12204, %12202
  %12206 = or i1 %12205, %12201
  %12207 = icmp eq i32 %12187, 6
  %12208 = and i32 %1892, 32
  %12209 = icmp ne i32 %12208, 0
  %12210 = and i1 %12209, %12207
  %12211 = or i1 %12210, %12206
  %12212 = icmp eq i32 %12187, 8
  %12213 = and i32 %1892, 64
  %12214 = icmp ne i32 %12213, 0
  %12215 = and i1 %12214, %12212
  %12216 = or i1 %12215, %12211
  %12217 = icmp eq i32 %12187, 9
  %12218 = and i32 %1892, 128
  %12219 = icmp ne i32 %12218, 0
  %12220 = and i1 %12219, %12217
  %12221 = or i1 %12220, %12216
  %12222 = icmp eq i32 %12187, 11
  %12223 = and i32 %1892, 160
  %12224 = icmp ne i32 %12223, 0
  %12225 = and i1 %12224, %12222
  %12226 = or i1 %12225, %12221
  %12227 = icmp eq i32 %12187, 13
  %12228 = and i32 %1892, 256
  %12229 = icmp ne i32 %12228, 0
  %12230 = and i1 %12229, %12227
  %12231 = or i1 %12230, %12226
  %12232 = icmp eq i32 %12187, 14
  %12233 = and i32 %1892, 512
  %12234 = icmp ne i32 %12233, 0
  %12235 = and i1 %12234, %12232
  %12236 = or i1 %12235, %12231
  %12237 = icmp eq i32 %12187, 7
  %12238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %12239 = extractvalue %dx.types.ResRet.i32 %12238, 0
  %12240 = and i32 %12239, 1024
  %12241 = icmp ne i32 %12240, 0
  %12242 = and i1 %12237, %12241
  %12243 = or i1 %12242, %12236
  %12244 = icmp eq i32 %12187, 10
  %12245 = and i32 %12239, 2048
  %12246 = icmp ne i32 %12245, 0
  %12247 = and i1 %12244, %12246
  %12248 = or i1 %12247, %12243
  %12249 = icmp eq i32 %12187, 12
  %12250 = and i32 %12239, 3072
  %12251 = icmp ne i32 %12250, 0
  %12252 = and i1 %12249, %12251
  %12253 = or i1 %12252, %12248
  %12254 = icmp eq i32 %12187, 15
  %12255 = and i32 %12239, 4096
  %12256 = icmp ne i32 %12255, 0
  %12257 = and i1 %12254, %12256
  %12258 = or i1 %12257, %12253
  %12259 = select i1 %12258, float 5.000000e-01, float %11261
  %12260 = select i1 %12258, float 0x3FB99999A0000000, float %11262
  %12261 = select i1 %12258, float 0x3FB99999A0000000, float %11263
  %12262 = fcmp fast ogt float %74, 0.000000e+00
  %12263 = and i1 %12262, %12237
  %12264 = select i1 %12263, float 1.000000e+00, float %12260
  %12265 = select i1 %12263, float 1.000000e+00, float %12261
  br label %12274

; <label>:12266                                   ; preds = %12183
  %12267 = icmp eq i32 %11282, 45
  br i1 %12267, label %12268, label %12274

; <label>:12268                                   ; preds = %12266
  %12269 = fcmp fast ogt float %1893, %1894
  %12270 = fsub fast float %1893, %1894
  %12271 = call float @dx.op.unary.f32(i32 6, float %12270)  ; FAbs(value)
  %12272 = select i1 %12269, float %12271, float 0.000000e+00
  %12273 = select i1 %12269, float 0.000000e+00, float %12271
  br label %12274

; <label>:12274                                   ; preds = %12268, %12266, %12185, %12170, %11936, %11929, %11923, %11909, %11907, %11901, %11896, %11886, %11845, %11843, %11786, %11758, %11730, %11726, %11664, %11622, %11567, %11562, %11548, %11506, %11499, %11492, %11488, %11486, %11484, %11482, %11480, %11478, %11476, %11474, %11472, %11470, %11456, %11452, %11450, %11448, %11439, %11348, %11328, %11287, %11260
  %12275 = phi float [ %11323, %11287 ], [ %11329, %11328 ], [ %11433, %11348 ], [ %11445, %11439 ], [ %11465, %11456 ], [ %11471, %11470 ], [ %11496, %11492 ], [ %11564, %11562 ], [ %11617, %11567 ], [ %11723, %11664 ], [ %11750, %11730 ], [ %11778, %11758 ], [ %11838, %11786 ], [ %11880, %11845 ], [ %11893, %11886 ], [ %11898, %11896 ], [ 1.000000e+00, %11909 ], [ %11926, %11923 ], [ %11941, %11936 ], [ %11261, %11929 ], [ %12180, %12170 ], [ %12259, %12185 ], [ %12272, %12268 ], [ %11261, %12266 ], [ %11261, %11260 ], [ 0.000000e+00, %11448 ], [ 0.000000e+00, %11486 ], [ %74, %11499 ], [ 1.000000e+00, %11548 ], [ 0.000000e+00, %11506 ], [ 0.000000e+00, %11622 ], [ 0.000000e+00, %11843 ], [ 0.000000e+00, %11901 ], [ 0.000000e+00, %11907 ], [ %310, %11450 ], [ %325, %11452 ], [ %365, %11472 ], [ %378, %11474 ], [ %1883, %11476 ], [ %80, %11478 ], [ %1884, %11480 ], [ %1885, %11482 ], [ %1895, %11484 ], [ %74, %11488 ], [ 0.000000e+00, %11726 ]
  %12276 = phi float [ %11324, %11287 ], [ %11330, %11328 ], [ %11434, %11348 ], [ %11446, %11439 ], [ %11467, %11456 ], [ %11471, %11470 ], [ %11497, %11492 ], [ %11565, %11562 ], [ %11618, %11567 ], [ %11724, %11664 ], [ %11752, %11730 ], [ %11780, %11758 ], [ %11839, %11786 ], [ %11881, %11845 ], [ %11891, %11886 ], [ %11898, %11896 ], [ 0.000000e+00, %11909 ], [ %11927, %11923 ], [ %11942, %11936 ], [ %11262, %11929 ], [ %12181, %12170 ], [ %12264, %12185 ], [ %12273, %12268 ], [ %11262, %12266 ], [ %11262, %11260 ], [ 0.000000e+00, %11448 ], [ 1.000000e+00, %11486 ], [ %75, %11499 ], [ 0.000000e+00, %11548 ], [ 1.000000e+00, %11506 ], [ 1.000000e+00, %11622 ], [ 1.000000e+00, %11843 ], [ 0.000000e+00, %11901 ], [ 1.000000e+00, %11907 ], [ %310, %11450 ], [ %325, %11452 ], [ %365, %11472 ], [ %378, %11474 ], [ %1883, %11476 ], [ %80, %11478 ], [ %1884, %11480 ], [ %1885, %11482 ], [ %1895, %11484 ], [ %75, %11488 ], [ 0.000000e+00, %11726 ]
  %12277 = phi float [ %11325, %11287 ], [ %11331, %11328 ], [ %11435, %11348 ], [ %11447, %11439 ], [ 0.000000e+00, %11456 ], [ %11471, %11470 ], [ %11498, %11492 ], [ %11566, %11562 ], [ %11619, %11567 ], [ %11725, %11664 ], [ %11755, %11730 ], [ %11783, %11758 ], [ %11840, %11786 ], [ %11882, %11845 ], [ %11892, %11886 ], [ %11898, %11896 ], [ 0.000000e+00, %11909 ], [ %11928, %11923 ], [ %11943, %11936 ], [ %11263, %11929 ], [ %12182, %12170 ], [ %12265, %12185 ], [ 0.000000e+00, %12268 ], [ %11263, %12266 ], [ %11263, %11260 ], [ 0.000000e+00, %11448 ], [ 1.000000e+00, %11486 ], [ %76, %11499 ], [ 1.000000e+00, %11548 ], [ 1.000000e+00, %11506 ], [ 1.000000e+00, %11622 ], [ 0.000000e+00, %11843 ], [ 1.000000e+00, %11901 ], [ 0.000000e+00, %11907 ], [ %310, %11450 ], [ %325, %11452 ], [ %365, %11472 ], [ %378, %11474 ], [ %1883, %11476 ], [ %80, %11478 ], [ %1884, %11480 ], [ %1885, %11482 ], [ %1895, %11484 ], [ %76, %11488 ], [ 0.000000e+00, %11726 ]
  %12278 = fadd fast float %2044, 0x3FE3C6EF40000000
  %12279 = call float @dx.op.unary.f32(i32 22, float %12278)  ; Frc(value)
  %12280 = call float @dx.op.unary.f32(i32 23, float %12275)  ; Log(value)
  %12281 = fadd fast float %12280, -7.000000e+00
  %12282 = call float @dx.op.unary.f32(i32 21, float %12281)  ; Exp(value)
  %12283 = fmul fast float %12279, 2.000000e+00
  %12284 = fadd fast float %12283, -1.000000e+00
  %12285 = fmul fast float %12282, %12284
  %12286 = fcmp fast ogt float %12275, 0.000000e+00
  %12287 = select i1 %12286, float %12285, float 0.000000e+00
  %12288 = fadd fast float %12287, %12275
  %12289 = fadd fast float %2044, 0x3FF3C6EF40000000
  %12290 = call float @dx.op.unary.f32(i32 22, float %12289)  ; Frc(value)
  %12291 = call float @dx.op.unary.f32(i32 23, float %12276)  ; Log(value)
  %12292 = fadd fast float %12291, -7.000000e+00
  %12293 = call float @dx.op.unary.f32(i32 21, float %12292)  ; Exp(value)
  %12294 = fmul fast float %12290, 2.000000e+00
  %12295 = fadd fast float %12294, -1.000000e+00
  %12296 = fmul fast float %12293, %12295
  %12297 = fcmp fast ogt float %12276, 0.000000e+00
  %12298 = select i1 %12297, float %12296, float 0.000000e+00
  %12299 = fadd fast float %12298, %12276
  %12300 = fadd fast float %2044, 0x3FFDAA66E0000000
  %12301 = call float @dx.op.unary.f32(i32 22, float %12300)  ; Frc(value)
  %12302 = call float @dx.op.unary.f32(i32 23, float %12277)  ; Log(value)
  %12303 = fadd fast float %12302, -6.000000e+00
  %12304 = call float @dx.op.unary.f32(i32 21, float %12303)  ; Exp(value)
  %12305 = fmul fast float %12301, 2.000000e+00
  %12306 = fadd fast float %12305, -1.000000e+00
  %12307 = fmul fast float %12304, %12306
  %12308 = fcmp fast ogt float %12277, 0.000000e+00
  %12309 = select i1 %12308, float %12307, float 0.000000e+00
  %12310 = fadd fast float %12309, %12277
  %12311 = call float @dx.op.binary.f32(i32 36, float %12288, float 3.225500e+04)  ; FMin(a,b)
  %12312 = call float @dx.op.binary.f32(i32 36, float %12299, float 3.225500e+04)  ; FMin(a,b)
  %12313 = call float @dx.op.binary.f32(i32 36, float %12310, float 3.225500e+04)  ; FMin(a,b)
  %12314 = fmul fast float %12311, %9253
  %12315 = fmul fast float %12312, %9253
  %12316 = fmul fast float %12313, %9253
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %12314)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %12315)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %12316)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9253)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:12317                                   ; preds = %10425
  %12318 = fcmp fast olt float %2699, %10408
  br i1 %12318, label %10411, label %12319

; <label>:12319                                   ; preds = %12317
  %12320 = fcmp fast olt float %2699, %10409
  br i1 %12320, label %10411, label %10612

; <label>:12321                                   ; preds = %10503
  %12322 = fcmp fast olt float %89, 5.120000e+02
  br i1 %12322, label %10489, label %12323

; <label>:12323                                   ; preds = %12321
  %12324 = fcmp fast olt float %89, 1.024000e+03
  br i1 %12324, label %10489, label %12325

; <label>:12325                                   ; preds = %12323
  %12326 = fcmp fast olt float %89, 1.536000e+03
  br i1 %12326, label %10489, label %12327

; <label>:12327                                   ; preds = %12325
  %12328 = fcmp fast olt float %89, 2.048000e+03
  br i1 %12328, label %10489, label %12329

; <label>:12329                                   ; preds = %12327
  %12330 = fcmp fast olt float %89, 3.072000e+03
  br i1 %12330, label %10489, label %12331

; <label>:12331                                   ; preds = %12329
  %12332 = fcmp fast olt float %89, 4.096000e+03
  br i1 %12332, label %10489, label %12333

; <label>:12333                                   ; preds = %12331
  %12334 = fcmp fast olt float %89, 6.144000e+03
  br i1 %12334, label %10489, label %12335

; <label>:12335                                   ; preds = %12333
  %12336 = fcmp fast olt float %89, 8.192000e+03
  br i1 %12336, label %10489, label %10612

; <label>:12337                                   ; preds = %10535
  %12338 = fcmp fast olt float %9349, %10518
  br i1 %12338, label %10521, label %12339

; <label>:12339                                   ; preds = %12337
  %12340 = fcmp fast olt float %9349, %10519
  br i1 %12340, label %10521, label %10612
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
!85 = !{[29 x i32] [i32 27, i32 4, i32 15, i32 15, i32 7, i32 15, i32 7, i32 7, i32 7, i32 7, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 2, i32 4, i32 0, i32 1, i32 2, i32 4]}
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

