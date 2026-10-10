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
; shader hash: e2a34f1c7b5b8090ae193bb28468df2a
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
;                                   texture     f32          2d     T57             t8     1
;                                   texture     f32     2darray     T58            t10     1
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 58, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = and i32 %197, 16383
  %199 = shl i32 %78, 2
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %201, 255
  %203 = mul nuw nsw i32 %198, 148
  %204 = add nuw nsw i32 %203, 4
  %205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = add nuw nsw i32 %203, 8
  %208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = add nuw nsw i32 %203, 48
  %211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = add nuw nsw i32 %203, 92
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = add nuw nsw i32 %203, 96
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = add nuw nsw i32 %203, 100
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = add nuw nsw i32 %203, 104
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = add nuw nsw i32 %203, 108
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = add nuw nsw i32 %203, 24
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = add nuw nsw i32 %203, 28
  %250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = add nuw nsw i32 %203, 32
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = add nuw nsw i32 %203, 40
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = add nuw nsw i32 %203, 44
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = add nuw nsw i32 %203, 52
  %264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = add nuw nsw i32 %203, 56
  %267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = add nuw nsw i32 %203, 112
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 32767
  %437 = mul nuw nsw i32 %436, 928
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = or i32 %437, 8
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = or i32 %437, 12
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 1
  %446 = or i32 %437, 20
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = or i32 %437, 24
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = extractvalue %dx.types.ResRet.f32 %450, 3
  %455 = add nuw nsw i32 %437, 40
  %456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = add nuw nsw i32 %437, 72
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = add nuw nsw i32 %437, 80
  %463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = add nuw nsw i32 %437, 228
  %466 = add nuw nsw i32 %437, 516
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 1
  %469 = add nuw nsw i32 %437, 528
  %470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.f32 %470, 0
  %472 = extractvalue %dx.types.ResRet.f32 %470, 1
  %473 = add nuw nsw i32 %437, 540
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = add nuw nsw i32 %437, 548
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = add nuw nsw i32 %437, 552
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = add nuw nsw i32 %437, 596
  %486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = extractvalue %dx.types.ResRet.f32 %486, 1
  %489 = add nuw nsw i32 %437, 620
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = add nuw nsw i32 %437, 628
  %494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = extractvalue %dx.types.ResRet.f32 %494, 1
  %497 = extractvalue %dx.types.ResRet.f32 %494, 2
  %498 = extractvalue %dx.types.ResRet.f32 %494, 3
  %499 = add nuw nsw i32 %437, 644
  %500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = add nuw nsw i32 %437, 648
  %503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = add nuw nsw i32 %437, 652
  %506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = add nuw nsw i32 %437, 656
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = add nuw nsw i32 %437, 660
  %512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.f32 %512, 0
  %514 = add nuw nsw i32 %437, 664
  %515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = add nuw nsw i32 %437, 676
  %519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = add nuw nsw i32 %437, 696
  %523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.f32 %523, 0
  %525 = extractvalue %dx.types.ResRet.f32 %523, 1
  %526 = add nuw nsw i32 %437, 704
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = add nuw nsw i32 %437, 708
  %530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = extractvalue %dx.types.ResRet.f32 %530, 1
  %533 = add nuw nsw i32 %437, 716
  %534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = add nuw nsw i32 %437, 720
  %537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = extractvalue %dx.types.ResRet.f32 %537, 1
  %540 = add nuw nsw i32 %437, 732
  %541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 1
  %543 = add nuw nsw i32 %437, 744
  %544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = add nuw nsw i32 %437, 748
  %547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = add nuw nsw i32 %437, 752
  %550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = add nuw nsw i32 %437, 756
  %553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = extractvalue %dx.types.ResRet.f32 %553, 1
  %556 = extractvalue %dx.types.ResRet.f32 %553, 2
  %557 = extractvalue %dx.types.ResRet.f32 %553, 3
  %558 = add nuw nsw i32 %437, 780
  %559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = add nuw nsw i32 %437, 792
  %563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = extractvalue %dx.types.ResRet.f32 %563, 1
  %566 = add nuw nsw i32 %437, 800
  %567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  %569 = extractvalue %dx.types.ResRet.f32 %567, 1
  %570 = add nuw nsw i32 %437, 812
  %571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = add nuw nsw i32 %437, 816
  %574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 1
  %576 = add nuw nsw i32 %437, 852
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = add nuw nsw i32 %437, 860
  %580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 2
  %582 = add nuw nsw i32 %437, 884
  %583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = add nuw nsw i32 %437, 896
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = add nuw nsw i32 %437, 900
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = add nuw nsw i32 %437, 904
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = add nuw nsw i32 %437, 908
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = add nuw nsw i32 %437, 912
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = add nuw nsw i32 %437, 916
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = and i32 %439, 128
  %606 = icmp ne i32 %605, 0
  %607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.i32 %607, 0
  %609 = and i32 %608, 512
  %610 = icmp ne i32 %609, 0
  %611 = and i1 %606, %610
  %612 = select i1 %611, float 0.000000e+00, float 1.000000e+00
  %613 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %614 = fmul fast float %613, 2.550000e+02
  %615 = fptoui float %614 to i32
  %616 = fcmp fast ole float %79, 0x3FA4B5DCC0000000
  %617 = fmul fast float %79, 0x3FB3D07220000000
  %618 = fadd fast float %79, 0x3FAC28F5C0000000
  %619 = fmul fast float %618, 0x3FEE54EDE0000000
  %620 = call float @dx.op.unary.f32(i32 23, float %619)  ; Log(value)
  %621 = fmul fast float %620, 0x4003333340000000
  %622 = call float @dx.op.unary.f32(i32 21, float %621)  ; Exp(value)
  %623 = select i1 %616, float %617, float %622
  %624 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %625 = fmul fast float %487, %360
  %626 = fadd fast float %625, %488
  %627 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %628 = call float @dx.op.binary.f32(i32 35, float %624, float %627)  ; FMax(a,b)
  %629 = add i32 %592, 0
  %630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %629, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %631 = fmul fast float %464, %347
  %632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.i32 %632, 0
  %634 = and i32 %633, 65536
  %635 = icmp eq i32 %634, 0
  %636 = and i32 %633, 262144
  %637 = icmp ne i32 %636, 0
  %638 = and i32 %633, 1048576
  %639 = icmp ne i32 %638, 0
  br i1 %635, label %915, label %640

; <label>:640                                     ; preds = %428
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 0
  %643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %644 = extractvalue %dx.types.CBufRet.f32 %643, 0
  %645 = extractvalue %dx.types.CBufRet.f32 %643, 1
  %646 = fadd fast float %644, %154
  %647 = fadd fast float %645, %155
  %648 = fmul fast float %154, %154
  %649 = fmul fast float %155, %155
  %650 = fadd fast float %648, %649
  %651 = fmul fast float %156, %156
  %652 = fadd fast float %650, %651
  %653 = call float @dx.op.unary.f32(i32 24, float %652)  ; Sqrt(value)
  br i1 %639, label %654, label %700

; <label>:654                                     ; preds = %640
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 0
  %657 = fcmp fast ogt float %653, %656
  %658 = zext i1 %657 to i32
  %659 = extractvalue %dx.types.CBufRet.f32 %655, 1
  %660 = fcmp fast ogt float %653, %659
  %661 = zext i1 %660 to i32
  %662 = add nuw nsw i32 %661, %658
  %663 = extractvalue %dx.types.CBufRet.f32 %655, 2
  %664 = fcmp fast ogt float %653, %663
  %665 = zext i1 %664 to i32
  %666 = add nuw nsw i32 %662, %665
  %667 = icmp ult i32 %666, 3
  %668 = zext i1 %667 to i32
  %669 = shl nuw nsw i32 %666, 2
  %670 = add nuw nsw i32 %669, 48
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %670)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 1
  %673 = fcmp fast ogt float %653, %672
  %674 = zext i1 %673 to i32
  %675 = or i32 %669, 1
  %676 = add nuw nsw i32 %675, 48
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %676)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %679 = fcmp fast ogt float %653, %678
  %680 = zext i1 %679 to i32
  %681 = add nuw nsw i32 %680, %674
  %682 = or i32 %669, 2
  %683 = add nuw nsw i32 %682, 48
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %683)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 1
  %686 = fcmp fast ogt float %653, %685
  %687 = zext i1 %686 to i32
  %688 = add nuw nsw i32 %681, %687
  %689 = add i32 %448, -1
  %690 = call i32 @dx.op.binary.i32(i32 40, i32 %688, i32 %689)  ; UMin(a,b)
  %691 = add i32 %669, %690
  %692 = call i32 @dx.op.binary.i32(i32 40, i32 %691, i32 12)  ; UMin(a,b)
  %693 = add i32 %692, 48
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %693)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 0
  %696 = fcmp fast oge float %653, %695
  %697 = zext i1 %696 to i32
  %698 = call i32 @dx.op.binary.i32(i32 40, i32 %448, i32 %668)  ; UMin(a,b)
  %699 = call i32 @dx.op.binary.i32(i32 40, i32 %697, i32 %698)  ; UMin(a,b)
  br label %700

; <label>:700                                     ; preds = %654, %640
  %701 = phi i32 [ %692, %654 ], [ 0, %640 ]
  %702 = phi i32 [ %699, %654 ], [ 0, %640 ]
  %703 = fmul fast float %631, 3.906250e-03
  %704 = add i32 %702, %448
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %902, label %706

; <label>:706                                     ; preds = %700
  br label %707

; <label>:707                                     ; preds = %871, %706
  %708 = phi float [ %898, %871 ], [ 0.000000e+00, %706 ]
  %709 = phi float [ %890, %871 ], [ 0.000000e+00, %706 ]
  %710 = phi float [ %891, %871 ], [ 0.000000e+00, %706 ]
  %711 = phi i32 [ %723, %871 ], [ %701, %706 ]
  %712 = phi i32 [ %899, %871 ], [ 0, %706 ]
  %713 = add i32 %712, %711
  br i1 %639, label %714, label %722

; <label>:714                                     ; preds = %707
  %715 = and i32 %713, -4
  %716 = add i32 %715, %448
  %717 = icmp uge i32 %713, %716
  %718 = sub i32 4, %448
  %719 = select i1 %717, i32 %718, i32 0
  %720 = add i32 %719, %711
  %721 = add i32 %719, %713
  br label %722

; <label>:722                                     ; preds = %714, %707
  %723 = phi i32 [ %720, %714 ], [ %711, %707 ]
  %724 = phi i32 [ %721, %714 ], [ %713, %707 ]
  %725 = and i32 %724, 3
  %726 = select i1 %639, i32 %725, i32 %712
  %727 = lshr i32 %724, 2
  %728 = select i1 %639, i32 %727, i32 0
  %729 = add i32 %724, 32
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %729)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %734 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %735 = fmul fast float %731, %653
  %736 = fadd fast float %735, %732
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %738 = fmul fast float %733, %653
  %739 = fadd fast float %738, %734
  %740 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  %741 = call float @dx.op.binary.f32(i32 36, float %737, float %740)  ; FMin(a,b)
  %742 = select i1 %639, float %741, float 1.000000e+00
  %743 = mul i32 %726, 72
  %744 = add i32 %465, %743
  %745 = add i32 %744, 16
  %746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = extractvalue %dx.types.ResRet.f32 %746, 3
  %751 = add i32 %744, 36
  %752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 0
  %754 = fmul fast float %703, %753
  %755 = add i32 %744, 56
  %756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = fmul fast float %754, %757
  %759 = extractvalue %dx.types.ResRet.f32 %756, 1
  %760 = fadd fast float %758, %759
  %761 = call float @dx.op.binary.f32(i32 35, float %760, float 0.000000e+00)  ; FMax(a,b)
  %762 = add i32 %744, 32
  %763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  br i1 %637, label %765, label %798

; <label>:765                                     ; preds = %722
  %766 = fmul fast float %753, %342
  %767 = fmul fast float %753, %343
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 1
  %770 = add i32 %744, 40
  %771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = fadd fast float %769, %194
  %777 = fadd fast float %776, %774
  %778 = fmul fast float %776, %773
  %779 = call float @dx.op.unary.f32(i32 29, float %778)  ; Round_z(value)
  %780 = fmul fast float %772, %779
  %781 = fsub fast float %776, %780
  %782 = fmul fast float %777, %773
  %783 = call float @dx.op.unary.f32(i32 29, float %782)  ; Round_z(value)
  %784 = fmul fast float %783, %772
  %785 = fsub fast float %777, %784
  %786 = fmul fast float %781, %766
  %787 = fmul fast float %781, %767
  %788 = fmul fast float %785, %766
  %789 = fmul fast float %785, %767
  %790 = fsub fast float %646, %786
  %791 = fsub fast float %647, %787
  %792 = fsub fast float %646, %788
  %793 = fsub fast float %647, %789
  %794 = fsub fast float %774, %781
  %795 = call float @dx.op.unary.f32(i32 6, float %794)  ; FAbs(value)
  %796 = fmul fast float %795, %775
  %797 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  br label %798

; <label>:798                                     ; preds = %765, %722
  %799 = phi float [ %790, %765 ], [ %646, %722 ]
  %800 = phi float [ %791, %765 ], [ %647, %722 ]
  %801 = phi float [ %792, %765 ], [ %646, %722 ]
  %802 = phi float [ %793, %765 ], [ %647, %722 ]
  %803 = phi float [ %797, %765 ], [ 0.000000e+00, %722 ]
  %804 = fmul fast float %442, 4.000000e+00
  %805 = uitofp i32 %728 to float
  %806 = fadd fast float %805, %804
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 0
  %809 = extractvalue %dx.types.CBufRet.f32 %807, 1
  %810 = extractvalue %dx.types.CBufRet.f32 %807, 2
  %811 = extractvalue %dx.types.CBufRet.f32 %807, 3
  %812 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 0
  store float %808, float* %812, align 4
  %813 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 1
  store float %809, float* %813, align 4
  %814 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 2
  store float %810, float* %814, align 4
  %815 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 3
  store float %811, float* %815, align 4
  %816 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 %728
  %817 = load float, float* %816, align 4, !tbaa !107, !noalias !111
  %818 = fmul fast float %817, %445
  %819 = select i1 %639, float %818, float %445
  %820 = fmul fast float %799, %747
  %821 = call float @dx.op.tertiary.f32(i32 46, float %748, float %800, float %820)  ; FMad(a,b,c)
  %822 = fmul fast float %799, %749
  %823 = call float @dx.op.tertiary.f32(i32 46, float %750, float %800, float %822)  ; FMad(a,b,c)
  %824 = add i32 %744, 8
  %825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = extractvalue %dx.types.ResRet.f32 %825, 1
  %828 = fadd fast float %826, %821
  %829 = fadd fast float %827, %823
  %830 = fmul fast float %828, %819
  %831 = fmul fast float %829, %819
  %832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  %834 = extractvalue %dx.types.ResRet.f32 %832, 1
  %835 = fmul fast float %830, %833
  %836 = fmul fast float %831, %834
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 2
  %839 = fadd fast float %835, %838
  %840 = fadd fast float %836, %838
  %841 = fmul fast float %801, %747
  %842 = call float @dx.op.tertiary.f32(i32 46, float %748, float %802, float %841)  ; FMad(a,b,c)
  %843 = fmul fast float %801, %749
  %844 = call float @dx.op.tertiary.f32(i32 46, float %750, float %802, float %843)  ; FMad(a,b,c)
  %845 = fadd fast float %826, %842
  %846 = fadd fast float %827, %844
  %847 = fmul fast float %845, %819
  %848 = fmul fast float %846, %819
  %849 = fmul fast float %847, %833
  %850 = fmul fast float %848, %834
  %851 = fadd fast float %849, %838
  %852 = fadd fast float %850, %838
  %853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %61, float %839, float %840, float %806, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %854 = extractvalue %dx.types.ResRet.f32 %853, 0
  %855 = extractvalue %dx.types.ResRet.f32 %853, 1
  %856 = extractvalue %dx.types.ResRet.f32 %853, 3
  %857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %61, float %851, float %852, float %806, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %637, label %858, label %871

; <label>:858                                     ; preds = %798
  %859 = extractvalue %dx.types.ResRet.f32 %857, 3
  %860 = extractvalue %dx.types.ResRet.f32 %857, 1
  %861 = extractvalue %dx.types.ResRet.f32 %857, 0
  %862 = fsub fast float %861, %854
  %863 = fsub fast float %860, %855
  %864 = fsub fast float %859, %856
  %865 = fmul fast float %862, %803
  %866 = fmul fast float %863, %803
  %867 = fmul fast float %864, %803
  %868 = fadd fast float %865, %854
  %869 = fadd fast float %866, %855
  %870 = fadd fast float %867, %856
  br label %871

; <label>:871                                     ; preds = %858, %798
  %872 = phi float [ %868, %858 ], [ %854, %798 ]
  %873 = phi float [ %869, %858 ], [ %855, %798 ]
  %874 = phi float [ %870, %858 ], [ %856, %798 ]
  %875 = fmul fast float %872, 2.000000e+00
  %876 = fmul fast float %873, 2.000000e+00
  %877 = fadd fast float %875, -1.000000e+00
  %878 = fadd fast float %876, -1.000000e+00
  %879 = fmul fast float %877, %747
  %880 = call float @dx.op.tertiary.f32(i32 46, float %878, float %749, float %879)  ; FMad(a,b,c)
  %881 = fmul fast float %877, %748
  %882 = call float @dx.op.tertiary.f32(i32 46, float %878, float %750, float %881)  ; FMad(a,b,c)
  %883 = fmul fast float %742, %642
  %884 = fmul fast float %883, %761
  %885 = fmul fast float %884, %764
  %886 = fmul fast float %880, %885
  %887 = fmul fast float %886, %833
  %888 = fmul fast float %882, %885
  %889 = fmul fast float %888, %834
  %890 = fadd fast float %887, %709
  %891 = fadd fast float %889, %710
  %892 = add i32 %744, 64
  %893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.f32 %893, 0
  %895 = fmul fast float %894, %874
  %896 = extractvalue %dx.types.ResRet.f32 %893, 1
  %897 = fadd fast float %895, %896
  %898 = call float @dx.op.binary.f32(i32 35, float %708, float %897)  ; FMax(a,b)
  %899 = add nuw i32 %712, 1
  %900 = icmp eq i32 %899, %704
  br i1 %900, label %901, label %707

; <label>:901                                     ; preds = %871
  br label %902

; <label>:902                                     ; preds = %901, %700
  %903 = phi float [ 0.000000e+00, %700 ], [ %898, %901 ]
  %904 = phi float [ 0.000000e+00, %700 ], [ %890, %901 ]
  %905 = phi float [ 0.000000e+00, %700 ], [ %891, %901 ]
  %906 = call float @dx.op.dot3.f32(i32 55, float %904, float %905, float 1.000000e+00, float %904, float %905, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %907 = call float @dx.op.unary.f32(i32 25, float %906)  ; Rsqrt(value)
  %908 = fmul fast float %907, %904
  %909 = fmul fast float %907, %905
  %910 = fmul fast float %903, %491
  %911 = fadd fast float %910, %492
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = fmul float %907, 5.000000e-01
  %914 = fadd float %913, 5.000000e-01
  br label %915

; <label>:915                                     ; preds = %902, %428
  %916 = phi float [ %908, %902 ], [ 0.000000e+00, %428 ]
  %917 = phi float [ %909, %902 ], [ 0.000000e+00, %428 ]
  %918 = phi float [ %914, %902 ], [ 5.000000e-01, %428 ]
  %919 = phi float [ %912, %902 ], [ 0.000000e+00, %428 ]
  %920 = fadd fast float %919, %628
  %921 = icmp ne i32 %448, 0
  %922 = select i1 %921, i32 2, i32 0
  %923 = fcmp fast ogt float %919, 0.000000e+00
  %924 = select i1 %923, i32 4, i32 0
  %925 = fmul fast float %531, %347
  %926 = fadd fast float %925, %532
  %927 = call float @dx.op.binary.f32(i32 35, float %926, float 0.000000e+00)  ; FMax(a,b)
  %928 = fmul fast float %927, %524
  %929 = fadd fast float %928, %525
  %930 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %931 = fmul fast float %930, %920
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 1
  %934 = fcmp fast oge float %931, %933
  %935 = icmp ne i32 %578, 0
  %936 = select i1 %935, i32 8, i32 0
  %937 = shl i32 %439, 3
  %938 = and i32 %937, 16
  %939 = and i32 %439, 2
  %940 = icmp ne i32 %939, 0
  %941 = and i1 %940, %934
  %942 = select i1 %941, i32 32, i32 0
  %943 = shl i32 %439, 2
  %944 = and i32 %943, 256
  %945 = or i32 %944, %938
  %946 = or i32 %945, %922
  %947 = or i32 %946, %936
  %948 = or i32 %947, %924
  %949 = or i32 %948, %942
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 0
  %952 = fmul fast float %951, %88
  %953 = extractvalue %dx.types.CBufRet.f32 %950, 1
  %954 = fadd fast float %952, %953
  %955 = call float @dx.op.unary.f32(i32 7, float %954)  ; Saturate(value)
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 0
  %958 = fmul fast float %957, %955
  %959 = select i1 %935, float %958, float 0.000000e+00
  %960 = fcmp fast ogt float %959, 0.000000e+00
  %961 = or i1 %941, %960
  br i1 %961, label %962, label %1238

; <label>:962                                     ; preds = %915
  %963 = select i1 %934, float %920, float 0.000000e+00
  %964 = add i32 %223, 0
  %965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %964, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %966 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %965, i32 0)  ; GetDimensions(handle,mipLevel)
  %967 = extractvalue %dx.types.Dimensions %966, 0
  %968 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %967)  ; FirstbitLo(value)
  %969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.i32 %969, 1
  %971 = sub nsw i32 %970, %968
  %972 = sitofp i32 %971 to float
  %973 = fsub fast float %484, %972
  %974 = call float @dx.op.binary.f32(i32 35, float %973, float 0.000000e+00)  ; FMax(a,b)
  %975 = fmul fast float %468, %232
  %976 = fmul fast float %468, %233
  %977 = fmul fast float %482, %80
  %978 = fmul fast float %482, %81
  %979 = call float @dx.op.unary.f32(i32 22, float %977)  ; Frc(value)
  %980 = call float @dx.op.unary.f32(i32 22, float %978)  ; Frc(value)
  %981 = fmul fast float %979, 2.000000e+00
  %982 = fmul fast float %980, 2.000000e+00
  %983 = fadd fast float %981, -1.000000e+00
  %984 = fadd fast float %982, -1.000000e+00
  %985 = call float @dx.op.unary.f32(i32 6, float %983)  ; FAbs(value)
  %986 = call float @dx.op.unary.f32(i32 6, float %984)  ; FAbs(value)
  %987 = fsub fast float 1.000000e+00, %985
  %988 = fmul fast float %987, %986
  %989 = fsub fast float %987, %988
  %990 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %989, float* %990, align 4, !tbaa !107, !noalias !116
  %991 = fmul fast float %986, %985
  %992 = fsub fast float %985, %991
  %993 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %992, float* %993, align 4, !tbaa !107, !noalias !116
  %994 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %988, float* %994, align 4, !tbaa !107, !noalias !116
  %995 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %991, float* %995, align 4, !tbaa !107, !noalias !116
  br label %996

; <label>:996                                     ; preds = %1219, %962
  %997 = phi float [ 0.000000e+00, %962 ], [ %1220, %1219 ]
  %998 = phi float [ 0.000000e+00, %962 ], [ %1221, %1219 ]
  %999 = phi float [ 0.000000e+00, %962 ], [ %1222, %1219 ]
  %1000 = phi float [ 0.000000e+00, %962 ], [ %1223, %1219 ]
  %1001 = phi float [ 0.000000e+00, %962 ], [ %1224, %1219 ]
  %1002 = phi i32 [ 0, %962 ], [ %1225, %1219 ]
  %1003 = phi float [ %916, %962 ], [ %1097, %1219 ]
  %1004 = phi float [ %917, %962 ], [ %1098, %1219 ]
  %1005 = mul i32 %1002, 2
  %1006 = add i32 0, %1005
  %1007 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1006
  %1008 = load float, float* %1007, align 4
  %1009 = mul i32 %1002, 2
  %1010 = add i32 1, %1009
  %1011 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1010
  %1012 = load float, float* %1011, align 4
  %1013 = fmul fast float %1008, 5.000000e-01
  %1014 = fmul fast float %1012, 5.000000e-01
  %1015 = fsub fast float 1.000000e+00, %1008
  %1016 = fsub fast float 1.000000e+00, %1012
  %1017 = fmul fast float %1015, 5.000000e-01
  %1018 = fmul fast float %1016, 5.000000e-01
  %1019 = fadd fast float %1013, %977
  %1020 = fadd fast float %1014, %978
  %1021 = call float @dx.op.unary.f32(i32 27, float %1019)  ; Round_ni(value)
  %1022 = call float @dx.op.unary.f32(i32 27, float %1020)  ; Round_ni(value)
  %1023 = fadd fast float %1021, %1017
  %1024 = fadd fast float %1022, %1018
  %1025 = fmul fast float %1023, %483
  %1026 = fmul fast float %1024, %483
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 0
  %1029 = fmul fast float %1025, %1028
  %1030 = fmul fast float %1026, %1028
  %1031 = extractvalue %dx.types.CBufRet.f32 %1027, 1
  %1032 = fadd fast float %1029, %1031
  %1033 = fadd fast float %1030, %1031
  %1034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %965, %dx.types.Handle %63, float %1032, float %1033, float %212, float undef, i32 0, i32 0, i32 undef, float %974)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 3
  %1039 = fmul fast float %1038, 2.000000e+00
  %1040 = fmul fast float %1039, %1035
  %1041 = fmul fast float %1039, %1036
  %1042 = fsub fast float %1040, %1038
  %1043 = fsub fast float %1041, %1038
  %1044 = fmul fast float %1042, %1042
  %1045 = fmul fast float %1043, %1043
  %1046 = fadd fast float %1044, %1045
  %1047 = call float @dx.op.unary.f32(i32 24, float %1046)  ; Sqrt(value)
  %1048 = fcmp fast ogt float %1047, 0.000000e+00
  %1049 = fdiv fast float 1.000000e+00, %1047
  %1050 = fmul fast float %1042, %1049
  %1051 = fmul fast float %1043, %1049
  %1052 = select i1 %1048, float %1050, float 0.000000e+00
  %1053 = select i1 %1048, float %1051, float 0.000000e+00
  br i1 %960, label %1054, label %1096

; <label>:1054                                    ; preds = %996
  %1055 = add i32 %578, 0
  %1056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1055, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 1
  %1059 = fmul fast float %479, %468
  %1060 = fmul fast float %1059, %1047
  %1061 = fsub fast float -0.000000e+00, %1052
  %1062 = fmul fast float %1053, %975
  %1063 = call float @dx.op.tertiary.f32(i32 46, float %1061, float %976, float %1062)  ; FMad(a,b,c)
  %1064 = fmul fast float %1052, %975
  %1065 = call float @dx.op.tertiary.f32(i32 46, float %1053, float %976, float %1064)  ; FMad(a,b,c)
  %1066 = fmul fast float %1060, %1058
  %1067 = fsub fast float %1065, %1066
  %1068 = fmul fast float %1063, %471
  %1069 = fmul fast float %1067, %472
  %1070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1056, %dx.types.Handle %1070, float %1068, float %1069, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 3
  %1074 = fadd fast float %1072, %1073
  %1075 = fmul fast float %1074, %581
  %1076 = fsub fast float %1075, %581
  %1077 = fsub fast float %1072, %1073
  %1078 = fmul fast float %1077, %581
  %1079 = fmul fast float %1076, %1053
  %1080 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %1078, float %1079)  ; FMad(a,b,c)
  %1081 = fmul fast float %1076, %1061
  %1082 = call float @dx.op.tertiary.f32(i32 46, float %1053, float %1078, float %1081)  ; FMad(a,b,c)
  %1083 = fmul fast float %1080, %471
  %1084 = fmul fast float %1082, %472
  %1085 = fmul fast float %475, %347
  %1086 = fadd fast float %1085, %476
  %1087 = call float @dx.op.binary.f32(i32 35, float %1086, float 0.000000e+00)  ; FMax(a,b)
  %1088 = fmul fast float %1087, %959
  %1089 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %1002
  %1090 = load float, float* %1089, align 4, !tbaa !107, !noalias !116
  %1091 = fmul fast float %1088, %1090
  %1092 = fmul fast float %1083, %1091
  %1093 = fmul fast float %1084, %1091
  %1094 = fadd fast float %1092, %1003
  %1095 = fadd fast float %1093, %1004
  br label %1096

; <label>:1096                                    ; preds = %1054, %996
  %1097 = phi float [ %1094, %1054 ], [ %1003, %996 ]
  %1098 = phi float [ %1095, %1054 ], [ %1004, %996 ]
  %1099 = fcmp fast ogt float %963, 0.000000e+00
  %1100 = and i1 %940, %1099
  br i1 %1100, label %1101, label %1219

; <label>:1101                                    ; preds = %1096
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 1
  %1104 = fmul fast float %528, %468
  %1105 = fmul fast float %1047, %1104
  %1106 = fsub fast float -0.000000e+00, %1052
  %1107 = fmul fast float %1053, %975
  %1108 = call float @dx.op.tertiary.f32(i32 46, float %1106, float %976, float %1107)  ; FMad(a,b,c)
  %1109 = fmul fast float %1052, %975
  %1110 = call float @dx.op.tertiary.f32(i32 46, float %1053, float %976, float %1109)  ; FMad(a,b,c)
  %1111 = fmul fast float %1105, %1103
  %1112 = fsub fast float %1110, %1111
  %1113 = fmul fast float %1108, %516
  %1114 = fmul fast float %1112, %517
  %1115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %630, %dx.types.Handle %1115, float %1113, float %1114, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = fmul fast float %928, %1117
  %1119 = fadd fast float %1118, %525
  %1120 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1123 = fmul fast float %1122, %88
  %1124 = extractvalue %dx.types.CBufRet.f32 %1121, 3
  %1125 = fadd fast float %1123, %1124
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1127 = fcmp fast ogt float %1120, 0.000000e+00
  %1128 = fcmp fast ogt float %1126, 0.000000e+00
  %1129 = and i1 %1127, %1128
  %1130 = and i32 %439, 64
  %1131 = icmp ne i32 %1130, 0
  %1132 = and i1 %1131, %1129
  br i1 %1132, label %1133, label %1201

; <label>:1133                                    ; preds = %1101
  %1134 = add i32 %598, 0
  %1135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1134, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1136 = add i32 %601, 0
  %1137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1136, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1138 = fmul fast float %1108, %520
  %1139 = fmul fast float %1112, %521
  %1140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1135, %dx.types.Handle %1115, float %1138, float %1139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1144 = extractvalue %dx.types.ResRet.f32 %1140, 3
  %1145 = fmul fast float %1141, %584
  %1146 = fadd fast float %1145, %585
  %1147 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1148 = fadd fast float %1142, %1144
  %1149 = fmul fast float %1148, %586
  %1150 = fsub fast float %1149, %586
  %1151 = fsub fast float %1142, %1144
  %1152 = fmul fast float %1151, %586
  %1153 = fmul fast float %1150, %1053
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %1152, float %1153)  ; FMad(a,b,c)
  %1155 = fmul fast float %1150, %1106
  %1156 = call float @dx.op.tertiary.f32(i32 46, float %1053, float %1152, float %1155)  ; FMad(a,b,c)
  %1157 = fmul fast float %1154, %520
  %1158 = fmul fast float %1156, %521
  %1159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1137, %dx.types.Handle %1115, float %1138, float %1139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = fsub fast float 1.000000e+00, %1120
  %1162 = bitcast float %1120 to i32
  %1163 = sitofp i32 %1162 to float
  %1164 = fadd fast float %1163, 0xC1CFBF8940000000
  %1165 = fmul fast float %1164, %513
  %1166 = fadd fast float %1165, 0x41CFBF8940000000
  %1167 = fptosi float %1166 to i32
  %1168 = bitcast i32 %1167 to float
  %1169 = bitcast float %1161 to i32
  %1170 = sitofp i32 %1169 to float
  %1171 = fadd fast float %1170, 0xC1CFBF8940000000
  %1172 = fmul fast float %1171, %513
  %1173 = fadd fast float %1172, 0x41CFBF8940000000
  %1174 = fptosi float %1173 to i32
  %1175 = bitcast i32 %1174 to float
  %1176 = fmul fast float %1168, %510
  %1177 = fmul fast float %1175, %510
  %1178 = fsub fast float %1161, %1176
  %1179 = fadd fast float %1177, %1161
  %1180 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1181 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1182 = fsub fast float %1160, %1180
  %1183 = fsub fast float %1181, %1180
  %1184 = bitcast float %1183 to i32
  %1185 = sub nsw i32 2129859010, %1184
  %1186 = bitcast i32 %1185 to float
  %1187 = fmul fast float %1186, %1182
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1189 = fmul fast float %1126, %507
  %1190 = fmul fast float %1189, %1188
  %1191 = fmul fast float %1157, %1190
  %1192 = fmul fast float %1158, %1190
  %1193 = fadd fast float %1143, -1.000000e+00
  %1194 = fmul fast float %1190, %1193
  %1195 = fadd fast float %1194, 1.000000e+00
  %1196 = fsub fast float %1147, %501
  %1197 = fmul fast float %1190, %1196
  %1198 = fadd fast float %1197, %501
  %1199 = fmul fast float %1190, %1161
  %1200 = fadd fast float %1199, %1120
  br label %1201

; <label>:1201                                    ; preds = %1133, %1101
  %1202 = phi float [ %1200, %1133 ], [ %1120, %1101 ]
  %1203 = phi float [ %1198, %1133 ], [ %501, %1101 ]
  %1204 = phi float [ %1195, %1133 ], [ 1.000000e+00, %1101 ]
  %1205 = phi float [ %1191, %1133 ], [ 0.000000e+00, %1101 ]
  %1206 = phi float [ %1192, %1133 ], [ 0.000000e+00, %1101 ]
  %1207 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %1002
  %1208 = load float, float* %1207, align 4, !tbaa !107, !noalias !116
  %1209 = fmul fast float %1208, %1202
  %1210 = fmul fast float %1209, %1205
  %1211 = fmul fast float %1209, %1206
  %1212 = fadd fast float %1210, %997
  %1213 = fadd fast float %1211, %998
  %1214 = fmul fast float %1209, %1204
  %1215 = fadd fast float %1214, %999
  %1216 = fmul fast float %1209, %1203
  %1217 = fadd fast float %1216, %1000
  %1218 = fadd fast float %1209, %1001
  br label %1219

; <label>:1219                                    ; preds = %1201, %1096
  %1220 = phi float [ %1212, %1201 ], [ %997, %1096 ]
  %1221 = phi float [ %1213, %1201 ], [ %998, %1096 ]
  %1222 = phi float [ %1215, %1201 ], [ %999, %1096 ]
  %1223 = phi float [ %1217, %1201 ], [ %1000, %1096 ]
  %1224 = phi float [ %1218, %1201 ], [ %1001, %1096 ]
  %1225 = add nuw nsw i32 %1002, 1
  %1226 = icmp eq i32 %1225, 4
  br i1 %1226, label %1227, label %996, !llvm.loop !123

; <label>:1227                                    ; preds = %1219
  %1228 = fmul fast float %1224, %963
  %1229 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1228)  ; FMax(a,b)
  %1230 = fmul fast float %1224, %1220
  %1231 = fmul fast float %1224, %1221
  %1232 = fadd fast float %1222, -1.000000e+00
  %1233 = fmul fast float %1224, %1232
  %1234 = fadd fast float %1233, 1.000000e+00
  %1235 = fsub fast float %1223, %457
  %1236 = fmul fast float %1224, %1235
  %1237 = fadd fast float %1236, %457
  br label %1238

; <label>:1238                                    ; preds = %1227, %915
  %1239 = phi float [ %1097, %1227 ], [ %916, %915 ]
  %1240 = phi float [ %1098, %1227 ], [ %917, %915 ]
  %1241 = phi float [ %1229, %1227 ], [ 0.000000e+00, %915 ]
  %1242 = phi float [ %1230, %1227 ], [ 0.000000e+00, %915 ]
  %1243 = phi float [ %1231, %1227 ], [ 0.000000e+00, %915 ]
  %1244 = phi float [ %1234, %1227 ], [ 1.000000e+00, %915 ]
  %1245 = phi float [ %1237, %1227 ], [ %457, %915 ]
  %1246 = fmul fast float %564, %347
  %1247 = fadd fast float %1246, %565
  %1248 = call float @dx.op.binary.f32(i32 35, float %1247, float 0.000000e+00)  ; FMax(a,b)
  %1249 = fmul fast float %1248, %560
  %1250 = fadd fast float %1249, %561
  %1251 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  %1252 = fmul fast float %1251, %920
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 1
  %1255 = fcmp fast oge float %1252, %1254
  %1256 = shl i32 %439, 4
  %1257 = and i32 %1256, 64
  %1258 = or i32 %949, %1257
  %1259 = and i32 %439, 4
  %1260 = icmp ne i32 %1259, 0
  %1261 = and i1 %1260, %1255
  %1262 = select i1 %1261, i32 128, i32 0
  %1263 = or i32 %1262, %1258
  br i1 %1261, label %1264, label %1553

; <label>:1264                                    ; preds = %1238
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1268 = fsub fast float %154, %232
  %1269 = fadd fast float %1268, %1266
  %1270 = fsub fast float %155, %233
  %1271 = fadd fast float %1270, %1267
  %1272 = fmul fast float %1269, %535
  %1273 = fmul fast float %1271, %535
  %1274 = fadd fast float %1272, %232
  %1275 = fadd fast float %1273, %233
  %1276 = add i32 %604, 0
  %1277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1276, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1278 = fmul fast float %1274, %542
  %1279 = fmul fast float %1275, %542
  %1280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1281 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1277, %dx.types.Handle %1280, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.ResRet.f32 %1281, 1
  %1284 = extractvalue %dx.types.ResRet.f32 %1281, 2
  %1285 = fmul fast float %1282, 2.000000e+00
  %1286 = fmul fast float %1283, 2.000000e+00
  %1287 = fadd fast float %1285, -1.000000e+00
  %1288 = fadd fast float %1286, -1.000000e+00
  %1289 = fmul fast float %1284, %538
  %1290 = fmul fast float %1289, %551
  %1291 = fmul fast float %1290, %1287
  %1292 = fmul fast float %1290, %1288
  %1293 = fsub fast float %342, %1291
  %1294 = fsub fast float %343, %1292
  %1295 = fmul fast float %1293, %548
  %1296 = fmul fast float %1294, %548
  %1297 = fadd fast float %1295, %1291
  %1298 = fadd fast float %1296, %1292
  %1299 = fmul fast float %1297, %551
  %1300 = fmul fast float %1298, %551
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1303 = fmul fast float %551, %194
  %1304 = fadd fast float %1302, %1303
  %1305 = fadd fast float %1304, %556
  %1306 = fmul fast float %1304, %555
  %1307 = call float @dx.op.unary.f32(i32 29, float %1306)  ; Round_z(value)
  %1308 = fmul fast float %1307, %554
  %1309 = fsub fast float %1304, %1308
  %1310 = fmul fast float %1305, %555
  %1311 = call float @dx.op.unary.f32(i32 29, float %1310)  ; Round_z(value)
  %1312 = fmul fast float %1311, %554
  %1313 = fsub fast float %1305, %1312
  %1314 = fmul fast float %1299, %1309
  %1315 = fmul fast float %1300, %1309
  %1316 = fmul fast float %1299, %1313
  %1317 = fmul fast float %1300, %1313
  %1318 = fsub fast float %1274, %1314
  %1319 = fsub fast float %1275, %1315
  %1320 = fsub fast float %1274, %1316
  %1321 = fsub fast float %1275, %1317
  %1322 = fsub fast float %556, %1309
  %1323 = call float @dx.op.unary.f32(i32 6, float %1322)  ; FAbs(value)
  %1324 = fmul fast float %1323, %557
  %1325 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1326 = fmul fast float %1318, %539
  %1327 = fmul fast float %1319, %539
  %1328 = fmul fast float %1320, %539
  %1329 = fmul fast float %1321, %539
  %1330 = fcmp fast ogt float %545, 0.000000e+00
  br i1 %1330, label %1331, label %1418

; <label>:1331                                    ; preds = %1264
  %1332 = fmul fast float %545, %194
  %1333 = fmul fast float %1332, 5.000000e-01
  %1334 = fadd fast float %1333, 5.000000e-01
  %1335 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1336 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1337 = call float @dx.op.unary.f32(i32 27, float %1334)  ; Round_ni(value)
  %1338 = call float @dx.op.unary.f32(i32 27, float %1333)  ; Round_ni(value)
  %1339 = fmul fast float %1337, 2.000000e+00
  %1340 = fmul fast float %1338, 2.000000e+00
  %1341 = fadd fast float %1340, 1.000000e+00
  %1342 = fsub fast float 1.000000e+00, %1335
  %1343 = fsub fast float 1.000000e+00, %1336
  %1344 = call float @dx.op.binary.f32(i32 36, float %1335, float %1342)  ; FMin(a,b)
  %1345 = call float @dx.op.binary.f32(i32 36, float %1336, float %1343)  ; FMin(a,b)
  %1346 = fmul fast float %1344, 2.000000e+00
  %1347 = fmul fast float %1345, 2.000000e+00
  %1348 = call float @dx.op.dot3.f32(i32 55, float %1339, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1349 = call float @dx.op.dot3.f32(i32 55, float %1339, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1350 = call float @dx.op.dot3.f32(i32 55, float %1339, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1351 = call float @dx.op.unary.f32(i32 13, float %1348)  ; Sin(value)
  %1352 = call float @dx.op.unary.f32(i32 13, float %1349)  ; Sin(value)
  %1353 = call float @dx.op.unary.f32(i32 13, float %1350)  ; Sin(value)
  %1354 = fmul fast float %1351, 0x40E55DD180000000
  %1355 = fmul fast float %1352, 0x40E55DD180000000
  %1356 = fmul fast float %1353, 0x40E55DD180000000
  %1357 = call float @dx.op.unary.f32(i32 22, float %1354)  ; Frc(value)
  %1358 = call float @dx.op.unary.f32(i32 22, float %1355)  ; Frc(value)
  %1359 = call float @dx.op.unary.f32(i32 22, float %1356)  ; Frc(value)
  %1360 = fmul fast float %1357, 0x401921FB60000000
  %1361 = call float @dx.op.unary.f32(i32 12, float %1360)  ; Cos(value)
  %1362 = call float @dx.op.unary.f32(i32 13, float %1360)  ; Sin(value)
  %1363 = fsub fast float -0.000000e+00, %1362
  %1364 = call float @dx.op.dot3.f32(i32 55, float %1341, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1365 = call float @dx.op.dot3.f32(i32 55, float %1341, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1366 = call float @dx.op.dot3.f32(i32 55, float %1341, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1367 = call float @dx.op.unary.f32(i32 13, float %1364)  ; Sin(value)
  %1368 = call float @dx.op.unary.f32(i32 13, float %1365)  ; Sin(value)
  %1369 = call float @dx.op.unary.f32(i32 13, float %1366)  ; Sin(value)
  %1370 = fmul fast float %1367, 0x40E55DD180000000
  %1371 = fmul fast float %1368, 0x40E55DD180000000
  %1372 = fmul fast float %1369, 0x40E55DD180000000
  %1373 = call float @dx.op.unary.f32(i32 22, float %1370)  ; Frc(value)
  %1374 = call float @dx.op.unary.f32(i32 22, float %1371)  ; Frc(value)
  %1375 = call float @dx.op.unary.f32(i32 22, float %1372)  ; Frc(value)
  %1376 = fmul fast float %1373, 0x401921FB60000000
  %1377 = call float @dx.op.unary.f32(i32 12, float %1376)  ; Cos(value)
  %1378 = call float @dx.op.unary.f32(i32 13, float %1376)  ; Sin(value)
  %1379 = fsub fast float -0.000000e+00, %1378
  %1380 = fmul fast float %1361, %1326
  %1381 = call float @dx.op.tertiary.f32(i32 46, float %1327, float %1363, float %1380)  ; FMad(a,b,c)
  %1382 = fmul fast float %1362, %1326
  %1383 = call float @dx.op.tertiary.f32(i32 46, float %1327, float %1361, float %1382)  ; FMad(a,b,c)
  %1384 = fadd fast float %1381, %1358
  %1385 = fadd fast float %1383, %1359
  %1386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %630, %dx.types.Handle %1280, float %1384, float %1385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = fmul fast float %1387, %1346
  %1389 = fmul fast float %1377, %1326
  %1390 = call float @dx.op.tertiary.f32(i32 46, float %1327, float %1379, float %1389)  ; FMad(a,b,c)
  %1391 = fmul fast float %1378, %1326
  %1392 = call float @dx.op.tertiary.f32(i32 46, float %1327, float %1377, float %1391)  ; FMad(a,b,c)
  %1393 = fadd fast float %1390, %1374
  %1394 = fadd fast float %1392, %1375
  %1395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %630, %dx.types.Handle %1280, float %1393, float %1394, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = fmul fast float %1396, %1347
  %1398 = fadd fast float %1397, %1388
  %1399 = fmul fast float %1361, %1328
  %1400 = call float @dx.op.tertiary.f32(i32 46, float %1329, float %1363, float %1399)  ; FMad(a,b,c)
  %1401 = fmul fast float %1362, %1328
  %1402 = call float @dx.op.tertiary.f32(i32 46, float %1329, float %1361, float %1401)  ; FMad(a,b,c)
  %1403 = fadd fast float %1400, %1358
  %1404 = fadd fast float %1402, %1359
  %1405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %630, %dx.types.Handle %1280, float %1403, float %1404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1406 = extractvalue %dx.types.ResRet.f32 %1405, 0
  %1407 = fmul fast float %1406, %1346
  %1408 = fmul fast float %1377, %1328
  %1409 = call float @dx.op.tertiary.f32(i32 46, float %1329, float %1379, float %1408)  ; FMad(a,b,c)
  %1410 = fmul fast float %1378, %1328
  %1411 = call float @dx.op.tertiary.f32(i32 46, float %1329, float %1377, float %1410)  ; FMad(a,b,c)
  %1412 = fadd fast float %1409, %1374
  %1413 = fadd fast float %1411, %1375
  %1414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %630, %dx.types.Handle %1280, float %1412, float %1413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1415 = extractvalue %dx.types.ResRet.f32 %1414, 0
  %1416 = fmul fast float %1415, %1347
  %1417 = fadd fast float %1416, %1407
  br label %1423

; <label>:1418                                    ; preds = %1264
  %1419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %630, %dx.types.Handle %1280, float %1326, float %1327, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  %1421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %630, %dx.types.Handle %1280, float %1328, float %1329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1422 = extractvalue %dx.types.ResRet.f32 %1421, 0
  br label %1423

; <label>:1423                                    ; preds = %1418, %1331
  %1424 = phi float [ %1398, %1331 ], [ %1420, %1418 ]
  %1425 = phi float [ %1417, %1331 ], [ %1422, %1418 ]
  %1426 = fsub fast float %1425, %1424
  %1427 = fmul fast float %1426, %1325
  %1428 = fadd fast float %1427, %1424
  %1429 = fmul fast float %1249, %1428
  %1430 = fadd fast float %1429, %561
  %1431 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 2
  %1434 = fmul fast float %1433, %88
  %1435 = extractvalue %dx.types.CBufRet.f32 %1432, 3
  %1436 = fadd fast float %1434, %1435
  %1437 = call float @dx.op.unary.f32(i32 7, float %1436)  ; Saturate(value)
  %1438 = fcmp fast ogt float %1431, 0.000000e+00
  %1439 = fcmp fast ogt float %1437, 0.000000e+00
  %1440 = and i1 %1438, %1439
  %1441 = and i32 %439, 64
  %1442 = icmp ne i32 %1441, 0
  %1443 = and i1 %1442, %1440
  br i1 %1443, label %1444, label %1533

; <label>:1444                                    ; preds = %1423
  %1445 = add i32 %598, 0
  %1446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1445, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1447 = fmul fast float %1326, %568
  %1448 = fmul fast float %1327, %569
  %1449 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1446, %dx.types.Handle %1280, float %1447, float %1448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1450 = extractvalue %dx.types.ResRet.f32 %1449, 0
  %1451 = extractvalue %dx.types.ResRet.f32 %1449, 1
  %1452 = extractvalue %dx.types.ResRet.f32 %1449, 2
  %1453 = extractvalue %dx.types.ResRet.f32 %1449, 3
  %1454 = fmul fast float %1450, %584
  %1455 = fadd fast float %1454, %585
  %1456 = call float @dx.op.unary.f32(i32 7, float %1455)  ; Saturate(value)
  %1457 = fadd fast float %1451, %1453
  %1458 = fmul fast float %1457, %586
  %1459 = fsub fast float %1458, %586
  %1460 = fsub fast float %1451, %1453
  %1461 = fmul fast float %1328, %568
  %1462 = fmul fast float %1329, %569
  %1463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1446, %dx.types.Handle %1280, float %1461, float %1462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.ResRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.ResRet.f32 %1463, 2
  %1467 = extractvalue %dx.types.ResRet.f32 %1463, 3
  %1468 = fmul fast float %1464, %584
  %1469 = fadd fast float %1468, %585
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1471 = fsub fast float %1467, %1457
  %1472 = fadd fast float %1471, %1465
  %1473 = fsub fast float -0.000000e+00, %1460
  %1474 = fsub fast float %1473, %1467
  %1475 = fadd fast float %1474, %1465
  %1476 = fmul fast float %1325, %586
  %1477 = fmul fast float %1476, %1472
  %1478 = fmul fast float %1475, %1325
  %1479 = fadd fast float %1477, %1459
  %1480 = fmul fast float %568, %1479
  %1481 = fadd fast float %1478, %1460
  %1482 = fmul fast float %586, %1481
  %1483 = fmul fast float %569, %1482
  %1484 = fsub fast float %1466, %1452
  %1485 = fmul fast float %1484, %1325
  %1486 = fsub fast float %1470, %1456
  %1487 = fmul fast float %1486, %1325
  %1488 = fsub fast float %1464, %1450
  %1489 = fmul fast float %1488, %1325
  %1490 = fsub fast float 1.000000e+00, %1431
  %1491 = bitcast float %1431 to i32
  %1492 = sitofp i32 %1491 to float
  %1493 = fadd fast float %1492, 0xC1CFBF8940000000
  %1494 = fmul fast float %1493, %513
  %1495 = fadd fast float %1494, 0x41CFBF8940000000
  %1496 = fptosi float %1495 to i32
  %1497 = bitcast i32 %1496 to float
  %1498 = bitcast float %1490 to i32
  %1499 = sitofp i32 %1498 to float
  %1500 = fadd fast float %1499, 0xC1CFBF8940000000
  %1501 = fmul fast float %1500, %513
  %1502 = fadd fast float %1501, 0x41CFBF8940000000
  %1503 = fptosi float %1502 to i32
  %1504 = bitcast i32 %1503 to float
  %1505 = fmul fast float %1497, %510
  %1506 = fmul fast float %1504, %510
  %1507 = fsub fast float %1490, %1505
  %1508 = fadd fast float %1506, %1490
  %1509 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1510 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1511 = fsub fast float %1450, %1509
  %1512 = fadd fast float %1511, %1489
  %1513 = fsub fast float %1510, %1509
  %1514 = bitcast float %1513 to i32
  %1515 = sub nsw i32 2129859010, %1514
  %1516 = bitcast i32 %1515 to float
  %1517 = fmul fast float %1516, %1512
  %1518 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1519 = fmul fast float %1437, %507
  %1520 = fmul fast float %1519, %1518
  %1521 = fmul fast float %1480, %1520
  %1522 = fmul fast float %1483, %1520
  %1523 = fadd fast float %1452, -1.000000e+00
  %1524 = fadd fast float %1523, %1485
  %1525 = fmul fast float %1520, %1524
  %1526 = fadd fast float %1525, 1.000000e+00
  %1527 = fsub fast float %1456, %501
  %1528 = fadd fast float %1527, %1487
  %1529 = fmul fast float %1520, %1528
  %1530 = fadd fast float %1529, %501
  %1531 = fmul fast float %1520, %1490
  %1532 = fadd fast float %1531, %1431
  br label %1533

; <label>:1533                                    ; preds = %1444, %1423
  %1534 = phi float [ %1532, %1444 ], [ %1431, %1423 ]
  %1535 = phi float [ %1521, %1444 ], [ 0.000000e+00, %1423 ]
  %1536 = phi float [ %1522, %1444 ], [ 0.000000e+00, %1423 ]
  %1537 = phi float [ %1526, %1444 ], [ 1.000000e+00, %1423 ]
  %1538 = phi float [ %1530, %1444 ], [ %501, %1423 ]
  %1539 = fsub fast float %1535, %1242
  %1540 = fsub fast float %1536, %1243
  %1541 = fmul fast float %1539, %1534
  %1542 = fmul fast float %1540, %1534
  %1543 = fadd fast float %1541, %1242
  %1544 = fadd fast float %1542, %1243
  %1545 = fsub fast float %1537, %1244
  %1546 = fmul fast float %1545, %1534
  %1547 = fadd fast float %1546, %1244
  %1548 = fsub fast float %1538, %1245
  %1549 = fmul fast float %1548, %1534
  %1550 = fadd fast float %1549, %1245
  %1551 = fmul fast float %1534, %920
  %1552 = call float @dx.op.binary.f32(i32 35, float %1241, float %1551)  ; FMax(a,b)
  br label %1553

; <label>:1553                                    ; preds = %1533, %1238
  %1554 = phi float [ %1552, %1533 ], [ %1241, %1238 ]
  %1555 = phi float [ %1543, %1533 ], [ %1242, %1238 ]
  %1556 = phi float [ %1544, %1533 ], [ %1243, %1238 ]
  %1557 = phi float [ %1547, %1533 ], [ %1244, %1238 ]
  %1558 = phi float [ %1550, %1533 ], [ %1245, %1238 ]
  %1559 = and i32 %439, 16
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1627, label %1561

; <label>:1561                                    ; preds = %1553
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 0
  %1564 = extractvalue %dx.types.CBufRet.f32 %1562, 1
  %1565 = fadd fast float %1563, %154
  %1566 = fadd fast float %1564, %155
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 0
  %1569 = extractvalue %dx.types.CBufRet.f32 %1567, 1
  %1570 = fsub fast float %1565, %1568
  %1571 = fsub fast float %1566, %1569
  %1572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1573 = extractvalue %dx.types.CBufRet.f32 %1572, 2
  %1574 = fmul fast float %1570, %1573
  %1575 = fmul fast float %1571, %1573
  %1576 = fadd fast float %1574, 5.000000e-01
  %1577 = fadd fast float %1575, 5.000000e-01
  %1578 = fcmp fast olt float %1576, 0.000000e+00
  %1579 = fcmp fast olt float %1577, 0.000000e+00
  %1580 = or i1 %1578, %1579
  %1581 = fcmp fast oge float %1576, 1.000000e+00
  %1582 = fcmp fast oge float %1577, 1.000000e+00
  %1583 = or i1 %1581, %1582
  %1584 = or i1 %1580, %1583
  br i1 %1584, label %1618, label %1585

; <label>:1585                                    ; preds = %1561
  %1586 = extractvalue %dx.types.CBufRet.f32 %1562, 2
  %1587 = fadd fast float %1586, %156
  %1588 = fmul fast float %1573, %1565
  %1589 = fmul fast float %1573, %1566
  %1590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1591 = extractvalue %dx.types.CBufRet.f32 %1590, 2
  %1592 = fsub fast float %1587, %1591
  %1593 = extractvalue %dx.types.CBufRet.f32 %1590, 1
  %1594 = fmul fast float %1592, %1593
  %1595 = call float @dx.op.unary.f32(i32 7, float %1594)  ; Saturate(value)
  %1596 = call float @dx.op.binary.f32(i32 36, float %1577, float %1595)  ; FMin(a,b)
  %1597 = call float @dx.op.binary.f32(i32 36, float %1576, float %1596)  ; FMin(a,b)
  %1598 = call float @dx.op.binary.f32(i32 35, float %1577, float %1595)  ; FMax(a,b)
  %1599 = call float @dx.op.binary.f32(i32 35, float %1576, float %1598)  ; FMax(a,b)
  %1600 = fsub fast float 1.000000e+00, %1599
  %1601 = call float @dx.op.binary.f32(i32 36, float %1597, float %1600)  ; FMin(a,b)
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 3
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 1
  %1606 = call float @dx.op.binary.f32(i32 35, float %1605, float %1603)  ; FMax(a,b)
  %1607 = fsub fast float %1606, %1605
  %1608 = fsub fast float %1601, %1605
  %1609 = fdiv fast float %1608, %1607
  %1610 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1611 = fmul fast float %1610, 2.000000e+00
  %1612 = fsub fast float 3.000000e+00, %1611
  %1613 = fmul fast float %1610, %1610
  %1614 = fmul fast float %1613, %1612
  %1615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %61, float %1588, float %1589, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1616 = extractvalue %dx.types.ResRet.f32 %1615, 0
  %1617 = fmul fast float %1614, %1616
  br label %1618

; <label>:1618                                    ; preds = %1585, %1561
  %1619 = phi float [ %1617, %1585 ], [ 0.000000e+00, %1561 ]
  %1620 = fmul fast float %575, %232
  %1621 = fmul fast float %575, %233
  %1622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %630, %dx.types.Handle %1622, float %1620, float %1621, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1624 = extractvalue %dx.types.ResRet.f32 %1623, 0
  %1625 = fmul fast float %1624, %1619
  %1626 = call float @dx.op.binary.f32(i32 35, float %1554, float %1625)  ; FMax(a,b)
  br label %1627

; <label>:1627                                    ; preds = %1618, %1553
  %1628 = phi float [ %1626, %1618 ], [ %1554, %1553 ]
  %1629 = fmul fast float %233, 3.906250e-03
  %1630 = fmul fast float %232, 7.812500e-03
  %1631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1632 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %630, %dx.types.Handle %1631, float %1630, float %1629, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %1633 = add i32 %592, 0
  %1634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1633, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1635 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1634, i32 0)  ; GetDimensions(handle,mipLevel)
  %1636 = extractvalue %dx.types.Dimensions %1635, 0
  %1637 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1636)  ; FirstbitLo(value)
  %1638 = uitofp i32 %1637 to float
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 2
  %1643 = fadd fast float %242, -7.000000e+00
  %1644 = fadd fast float %1643, %1638
  %1645 = fadd fast float %1644, %1640
  %1646 = fadd fast float %1645, %1642
  %1647 = call float @dx.op.binary.f32(i32 35, float %1646, float 0.000000e+00)  ; FMax(a,b)
  %1648 = and i32 %439, 8
  %1649 = icmp eq i32 %1648, 0
  br i1 %1649, label %1666, label %1650

; <label>:1650                                    ; preds = %1627
  %1651 = fadd fast float %572, 1.000000e+00
  %1652 = fmul fast float %920, %1651
  %1653 = fsub fast float %1652, %572
  %1654 = fsub fast float %1651, %1653
  %1655 = call float @dx.op.unary.f32(i32 7, float %1654)  ; Saturate(value)
  %1656 = fsub fast float 1.000000e+00, %1652
  %1657 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1658 = fsub fast float %1655, %1657
  %1659 = fsub fast float %1628, %1657
  %1660 = fdiv fast float %1659, %1658
  %1661 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1662 = fmul fast float %1661, 2.000000e+00
  %1663 = fsub fast float 3.000000e+00, %1662
  %1664 = fmul fast float %1661, %1661
  %1665 = fmul fast float %1664, %1663
  br label %1666

; <label>:1666                                    ; preds = %1650, %1627
  %1667 = phi float [ %1665, %1650 ], [ %1628, %1627 ]
  %1668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1669 = extractvalue %dx.types.CBufRet.f32 %1668, 3
  %1670 = fmul fast float %1669, %1667
  %1671 = call float @dx.op.unary.f32(i32 7, float %1670)  ; Saturate(value)
  %1672 = and i32 %439, 32
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1690, label %1674

; <label>:1674                                    ; preds = %1666
  %1675 = add i32 %595, 0
  %1676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1675, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1676, %dx.types.Handle %62, float %1670, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1678 = extractvalue %dx.types.ResRet.f32 %1677, 0
  %1679 = extractvalue %dx.types.ResRet.f32 %1677, 1
  %1680 = extractvalue %dx.types.ResRet.f32 %1677, 2
  %1681 = extractvalue %dx.types.ResRet.f32 %1677, 3
  %1682 = and i32 %589, 255
  %1683 = uitofp i32 %1682 to float
  %1684 = lshr i32 %589, 8
  %1685 = and i32 %1684, 255
  %1686 = uitofp i32 %1685 to float
  %1687 = fmul fast float %1681, %1683
  %1688 = fadd fast float %1687, %1686
  %1689 = fmul fast float %1688, 0x3F70101000000000
  br label %1690

; <label>:1690                                    ; preds = %1674, %1666
  %1691 = phi float [ %1678, %1674 ], [ %495, %1666 ]
  %1692 = phi float [ %1679, %1674 ], [ %496, %1666 ]
  %1693 = phi float [ %1680, %1674 ], [ %497, %1666 ]
  %1694 = phi float [ %1689, %1674 ], [ %498, %1666 ]
  %1695 = fsub fast float %1691, %451
  %1696 = fsub fast float %1692, %452
  %1697 = fsub fast float %1693, %453
  %1698 = fmul fast float %1695, %1670
  %1699 = fmul fast float %1696, %1670
  %1700 = fmul fast float %1697, %1670
  %1701 = fadd fast float %1698, %451
  %1702 = fadd fast float %1699, %452
  %1703 = fadd fast float %1700, %453
  %1704 = fsub fast float %1694, %454
  %1705 = fmul fast float %1704, %1670
  %1706 = fadd fast float %1705, %454
  %1707 = fsub fast float %1558, %457
  %1708 = fmul fast float %1670, %1707
  %1709 = fadd fast float %1708, %457
  %1710 = fadd fast float %1557, -1.000000e+00
  %1711 = fmul fast float %1670, %1710
  %1712 = fadd fast float %1711, 1.000000e+00
  %1713 = fmul fast float %1670, %1555
  %1714 = fmul fast float %1670, %1556
  %1715 = fadd fast float %1713, %1239
  %1716 = fadd fast float %1714, %1240
  %1717 = fmul fast float %460, %373
  %1718 = fadd fast float %1717, %461
  %1719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1720 = extractvalue %dx.types.CBufRet.f32 %1719, 2
  %1721 = fcmp fast oge float %1718, %1720
  %1722 = and i32 %179, 65535
  %1723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1722)  ; LegacyF16ToF32(value)
  %1724 = lshr i32 %181, 16
  %1725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1724)  ; LegacyF16ToF32(value)
  %1726 = fadd fast float %1701, %1723
  %1727 = fadd fast float %1702, %1725
  %1728 = fadd fast float %1703, %1723
  %1729 = fadd fast float %1706, %1725
  %1730 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1726)  ; LegacyF32ToF16(value)
  %1731 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1727)  ; LegacyF32ToF16(value)
  %1732 = shl i32 %1731, 16
  %1733 = or i32 %1732, %1730
  %1734 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1728)  ; LegacyF32ToF16(value)
  %1735 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1729)  ; LegacyF32ToF16(value)
  %1736 = shl i32 %1735, 16
  %1737 = or i32 %1736, %1734
  %1738 = fadd fast float %1712, %1723
  %1739 = fadd fast float %1709, %1725
  %1740 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1738)  ; LegacyF32ToF16(value)
  %1741 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1739)  ; LegacyF32ToF16(value)
  %1742 = shl i32 %1741, 16
  %1743 = or i32 %1742, %1740
  %1744 = fcmp fast ogt float %1718, 0.000000e+00
  %1745 = select i1 %1744, float 1.000000e+00, float 0.000000e+00
  %1746 = fadd fast float %1723, %1718
  %1747 = fadd fast float %1725, %1745
  %1748 = call float @dx.op.unary.f32(i32 7, float %1746)  ; Saturate(value)
  %1749 = call float @dx.op.unary.f32(i32 7, float %1747)  ; Saturate(value)
  %1750 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1748)  ; LegacyF32ToF16(value)
  %1751 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1749)  ; LegacyF32ToF16(value)
  %1752 = shl i32 %1751, 16
  %1753 = or i32 %1752, %1750
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 2
  %1756 = fmul fast float %1755, 0x3FE3C6EF40000000
  %1757 = frem fast float %99, 2.560000e+02
  %1758 = frem fast float %100, 2.560000e+02
  %1759 = fptoui float %1757 to i32
  %1760 = fptoui float %1758 to i32
  %1761 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %1759, i32 %1760, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1762 = extractvalue %dx.types.ResRet.f32 %1761, 0
  %1763 = extractvalue %dx.types.ResRet.f32 %1761, 1
  %1764 = fadd fast float %1762, %1756
  %1765 = fadd fast float %1763, %1756
  %1766 = call float @dx.op.unary.f32(i32 22, float %1764)  ; Frc(value)
  %1767 = call float @dx.op.unary.f32(i32 22, float %1765)  ; Frc(value)
  %1768 = fcmp fast ogt float %120, 0.000000e+00
  %1769 = fcmp fast olt float %120, 0.000000e+00
  %1770 = zext i1 %1768 to i32
  %1771 = zext i1 %1769 to i32
  %1772 = sub nsw i32 %1770, %1771
  %1773 = sitofp i32 %1772 to float
  %1774 = fadd fast float %1773, %120
  %1775 = fdiv fast float -1.000000e+00, %1774
  %1776 = fmul fast float %118, %119
  %1777 = fmul fast float %1776, %1775
  %1778 = fmul fast float %118, %118
  %1779 = fmul fast float %1778, %1773
  %1780 = fmul fast float %1779, %1775
  %1781 = fadd fast float %1780, 1.000000e+00
  %1782 = fmul fast float %1777, %1773
  %1783 = fmul fast float %1773, %118
  %1784 = fsub fast float -0.000000e+00, %1783
  %1785 = fmul fast float %119, %119
  %1786 = fmul fast float %1785, %1775
  %1787 = fadd fast float %1786, %1773
  %1788 = fsub fast float -0.000000e+00, %119
  %1789 = and i32 %1730, 65535
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = lshr i32 %1733, 16
  %1792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1791)  ; LegacyF16ToF32(value)
  %1793 = and i32 %1734, 65535
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = lshr i32 %1737, 16
  %1796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1795)  ; LegacyF16ToF32(value)
  %1797 = and i32 %1740, 65535
  %1798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1797)  ; LegacyF16ToF32(value)
  %1799 = lshr i32 %1743, 16
  %1800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1799)  ; LegacyF16ToF32(value)
  %1801 = call float @dx.op.unary.f32(i32 7, float %1800)  ; Saturate(value)
  %1802 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %1803 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %1804 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %1805 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %1806 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %1807 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %1808 = fadd fast float %1802, %154
  %1809 = fadd fast float %1803, %155
  %1810 = fadd fast float %1804, %156
  %1811 = fadd fast float %1805, %154
  %1812 = fadd fast float %1806, %155
  %1813 = fadd fast float %1807, %156
  %1814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1815 = extractvalue %dx.types.CBufRet.f32 %1814, 0
  %1816 = extractvalue %dx.types.CBufRet.f32 %1814, 1
  %1817 = extractvalue %dx.types.CBufRet.f32 %1814, 2
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 2
  %1820 = extractvalue %dx.types.CBufRet.f32 %1818, 3
  %1821 = fmul fast float %1815, %99
  %1822 = fmul fast float %1821, %1819
  %1823 = fmul fast float %1816, %100
  %1824 = fmul fast float %1823, %1820
  %1825 = fptoui float %1822 to i32
  %1826 = fptoui float %1824 to i32
  %1827 = fadd fast float %1815, -1.000000e+00
  %1828 = fadd fast float %1816, -1.000000e+00
  %1829 = fptoui float %1827 to i32
  %1830 = fptoui float %1828 to i32
  %1831 = call i32 @dx.op.binary.i32(i32 40, i32 %1825, i32 %1829)  ; UMin(a,b)
  %1832 = call i32 @dx.op.binary.i32(i32 40, i32 %1826, i32 %1830)  ; UMin(a,b)
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 2
  %1835 = extractvalue %dx.types.CBufRet.f32 %1833, 3
  %1836 = fmul fast float %1834, %88
  %1837 = fsub fast float %1836, %1835
  %1838 = fadd fast float %1817, -1.000000e+00
  %1839 = call float @dx.op.binary.f32(i32 36, float %1837, float %1838)  ; FMin(a,b)
  %1840 = fptoui float %1839 to i32
  %1841 = fptoui float %1815 to i32
  %1842 = fptoui float %1816 to i32
  %1843 = mul i32 %1840, %1842
  %1844 = add i32 %1843, %1832
  %1845 = mul i32 %1844, %1841
  %1846 = add i32 %1845, %1831
  %1847 = shl i32 %1846, 2
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = and i32 %1849, 1023
  %1851 = lshr i32 %1849, 10
  %1852 = icmp eq i32 %1850, 0
  br i1 %1852, label %2248, label %1853

; <label>:1853                                    ; preds = %1690
  %1854 = and i32 %1849, 1023
  br label %1855

; <label>:1855                                    ; preds = %1976, %1853
  %1856 = phi float [ %1977, %1976 ], [ 0.000000e+00, %1853 ]
  %1857 = phi float [ %1978, %1976 ], [ 0.000000e+00, %1853 ]
  %1858 = phi float [ %1979, %1976 ], [ 0.000000e+00, %1853 ]
  %1859 = phi float [ %1980, %1976 ], [ %1715, %1853 ]
  %1860 = phi float [ %1981, %1976 ], [ %1716, %1853 ]
  %1861 = phi float [ %1982, %1976 ], [ %1798, %1853 ]
  %1862 = phi float [ %1983, %1976 ], [ %1801, %1853 ]
  %1863 = phi float [ %1984, %1976 ], [ 0.000000e+00, %1853 ]
  %1864 = phi float [ %1985, %1976 ], [ %1796, %1853 ]
  %1865 = phi float [ %1986, %1976 ], [ %1790, %1853 ]
  %1866 = phi float [ %1987, %1976 ], [ %1792, %1853 ]
  %1867 = phi float [ %1988, %1976 ], [ %1794, %1853 ]
  %1868 = phi i32 [ %1989, %1976 ], [ 0, %1853 ]
  %1869 = phi i32 [ %1925, %1976 ], [ 0, %1853 ]
  %1870 = add nuw nsw i32 %1869, %1851
  %1871 = shl i32 %1870, 2
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = shl i32 %1873, 8
  %1875 = or i32 %1874, 48
  %1876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1880 = extractvalue %dx.types.ResRet.f32 %1876, 3
  %1881 = or i32 %1874, 64
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = extractvalue %dx.types.ResRet.i32 %1882, 1
  %1885 = or i32 %1874, 80
  %1886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 2
  %1888 = extractvalue %dx.types.ResRet.f32 %1886, 3
  %1889 = or i32 %1874, 96
  %1890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.f32 %1890, 0
  %1892 = extractvalue %dx.types.ResRet.f32 %1890, 1
  %1893 = extractvalue %dx.types.ResRet.f32 %1890, 2
  %1894 = extractvalue %dx.types.ResRet.f32 %1890, 3
  %1895 = or i32 %1874, 112
  %1896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.f32 %1896, 2
  %1898 = or i32 %1874, 128
  %1899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.ResRet.f32 %1899, 1
  %1902 = extractvalue %dx.types.ResRet.f32 %1899, 2
  %1903 = extractvalue %dx.types.ResRet.f32 %1899, 3
  %1904 = or i32 %1874, 144
  %1905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.ResRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.ResRet.f32 %1905, 2
  %1909 = extractvalue %dx.types.ResRet.f32 %1905, 3
  %1910 = or i32 %1874, 160
  %1911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.ResRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.ResRet.f32 %1911, 2
  %1915 = or i32 %1874, 192
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = or i32 %1874, 208
  %1919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.f32 %1919, 0
  %1921 = or i32 %1874, 248
  %1922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.f32 %1922, 0
  %1924 = extractvalue %dx.types.ResRet.f32 %1922, 1
  %1925 = add nuw nsw i32 %1869, 1
  %1926 = bitcast float %1880 to i32
  %1927 = and i32 %1926, 512
  %1928 = icmp ne i32 %1927, 0
  %1929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.f32 %1929, 0
  %1931 = extractvalue %dx.types.ResRet.f32 %1929, 1
  %1932 = extractvalue %dx.types.ResRet.f32 %1929, 2
  %1933 = extractvalue %dx.types.ResRet.f32 %1929, 3
  %1934 = call float @dx.op.dot4.f32(i32 56, float %1930, float %1931, float %1932, float %1933, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1935 = or i32 %1874, 16
  %1936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = extractvalue %dx.types.ResRet.f32 %1936, 1
  %1939 = extractvalue %dx.types.ResRet.f32 %1936, 2
  %1940 = extractvalue %dx.types.ResRet.f32 %1936, 3
  %1941 = call float @dx.op.dot4.f32(i32 56, float %1937, float %1938, float %1939, float %1940, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1942 = or i32 %1874, 32
  %1943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.ResRet.f32 %1943, 1
  %1946 = extractvalue %dx.types.ResRet.f32 %1943, 2
  %1947 = extractvalue %dx.types.ResRet.f32 %1943, 3
  %1948 = call float @dx.op.dot4.f32(i32 56, float %1944, float %1945, float %1946, float %1947, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1949 = call float @dx.op.unary.f32(i32 27, float %1934)  ; Round_ni(value)
  %1950 = call float @dx.op.unary.f32(i32 6, float %1949)  ; FAbs(value)
  %1951 = call float @dx.op.unary.f32(i32 27, float %1941)  ; Round_ni(value)
  %1952 = call float @dx.op.unary.f32(i32 6, float %1951)  ; FAbs(value)
  %1953 = call float @dx.op.unary.f32(i32 6, float %1948)  ; FAbs(value)
  %1954 = call float @dx.op.unary.f32(i32 27, float %1953)  ; Round_ni(value)
  %1955 = fadd fast float %1952, %1950
  %1956 = fadd fast float %1955, %1954
  %1957 = fcmp fast oeq float %1956, 0.000000e+00
  %1958 = call float @dx.op.dot4.f32(i32 56, float %1930, float %1931, float %1932, float %1933, float %1808, float %1809, float %1810, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1959 = call float @dx.op.dot4.f32(i32 56, float %1937, float %1938, float %1939, float %1940, float %1808, float %1809, float %1810, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1960 = call float @dx.op.dot4.f32(i32 56, float %1930, float %1931, float %1932, float %1933, float %1811, float %1812, float %1813, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1961 = call float @dx.op.dot4.f32(i32 56, float %1937, float %1938, float %1939, float %1940, float %1811, float %1812, float %1813, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1962 = fsub fast float %1958, %1934
  %1963 = fsub fast float %1960, %1934
  %1964 = fsub fast float %1959, %1941
  %1965 = fsub fast float %1961, %1941
  %1966 = call float @dx.op.dot3.f32(i32 55, float %1877, float %1878, float %1879, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 2
  %1969 = call float @dx.op.unary.f32(i32 6, float %1966)  ; FAbs(value)
  %1970 = fadd fast float %1969, %1968
  %1971 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1967, 0
  %1973 = fcmp fast ogt float %1971, %1972
  %1974 = and i1 %1957, %1973
  %1975 = and i1 %1928, %1974
  br i1 %1975, label %1991, label %1976

; <label>:1976                                    ; preds = %2234, %2072, %1991, %1855
  %1977 = phi float [ %1856, %1991 ], [ %1856, %2072 ], [ %2244, %2234 ], [ %1856, %1855 ]
  %1978 = phi float [ %1857, %1991 ], [ %1857, %2072 ], [ %2245, %2234 ], [ %1857, %1855 ]
  %1979 = phi float [ %1858, %1991 ], [ %1858, %2072 ], [ %2246, %2234 ], [ %1858, %1855 ]
  %1980 = phi float [ %1859, %1991 ], [ %1859, %2072 ], [ %2208, %2234 ], [ %1859, %1855 ]
  %1981 = phi float [ %1860, %1991 ], [ %1860, %2072 ], [ %2209, %2234 ], [ %1860, %1855 ]
  %1982 = phi float [ %1861, %1991 ], [ %1861, %2072 ], [ %2203, %2234 ], [ %1861, %1855 ]
  %1983 = phi float [ %1862, %1991 ], [ %1862, %2072 ], [ %2200, %2234 ], [ %1862, %1855 ]
  %1984 = phi float [ %1863, %1991 ], [ %1863, %2072 ], [ %2197, %2234 ], [ %1863, %1855 ]
  %1985 = phi float [ %1864, %1991 ], [ %1864, %2072 ], [ %2195, %2234 ], [ %1864, %1855 ]
  %1986 = phi float [ %1865, %1991 ], [ %1865, %2072 ], [ %2190, %2234 ], [ %1865, %1855 ]
  %1987 = phi float [ %1866, %1991 ], [ %1866, %2072 ], [ %2191, %2234 ], [ %1866, %1855 ]
  %1988 = phi float [ %1867, %1991 ], [ %1867, %2072 ], [ %2192, %2234 ], [ %1867, %1855 ]
  %1989 = phi i32 [ %1999, %1991 ], [ %1999, %2072 ], [ %1999, %2234 ], [ %1868, %1855 ]
  %1990 = icmp eq i32 %1925, %1854
  br i1 %1990, label %2247, label %1855

; <label>:1991                                    ; preds = %1855
  %1992 = extractvalue %dx.types.ResRet.f32 %1896, 3
  %1993 = extractvalue %dx.types.ResRet.f32 %1896, 1
  %1994 = extractvalue %dx.types.ResRet.f32 %1896, 0
  %1995 = extractvalue %dx.types.ResRet.f32 %1886, 1
  %1996 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1997 = extractvalue %dx.types.ResRet.i32 %1882, 3
  %1998 = extractvalue %dx.types.ResRet.i32 %1882, 2
  %1999 = add i32 %1868, 1
  %2000 = add i32 %1997, 0
  %2001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2000, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2002 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2001, %dx.types.Handle %1631, float %1934, float %1941, float undef, float undef, i32 0, i32 0, i32 undef, float %1962, float %1964, float undef, float %1963, float %1965, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = fmul fast float %2003, %1996
  %2005 = fadd fast float %2004, %1995
  %2006 = call float @dx.op.unary.f32(i32 7, float %2005)  ; Saturate(value)
  %2007 = fmul fast float %1934, %1891
  %2008 = call float @dx.op.tertiary.f32(i32 46, float %1892, float %1941, float %2007)  ; FMad(a,b,c)
  %2009 = fadd fast float %2008, %1994
  %2010 = fmul fast float %1934, %1893
  %2011 = call float @dx.op.tertiary.f32(i32 46, float %1894, float %1941, float %2010)  ; FMad(a,b,c)
  %2012 = fadd fast float %2011, %1993
  %2013 = fmul fast float %1962, %1891
  %2014 = call float @dx.op.tertiary.f32(i32 46, float %1892, float %1964, float %2013)  ; FMad(a,b,c)
  %2015 = fmul fast float %1962, %1893
  %2016 = call float @dx.op.tertiary.f32(i32 46, float %1894, float %1964, float %2015)  ; FMad(a,b,c)
  %2017 = fmul fast float %1963, %1891
  %2018 = call float @dx.op.tertiary.f32(i32 46, float %1892, float %1965, float %2017)  ; FMad(a,b,c)
  %2019 = fmul fast float %1963, %1893
  %2020 = call float @dx.op.tertiary.f32(i32 46, float %1894, float %1965, float %2019)  ; FMad(a,b,c)
  %2021 = add i32 %1998, 0
  %2022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2021, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2023 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2022, %dx.types.Handle %1631, float %2009, float %2012, float undef, float undef, i32 0, i32 0, i32 undef, float %2014, float %2016, float undef, float %2018, float %2020, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2024 = extractvalue %dx.types.ResRet.f32 %2023, 0
  %2025 = and i32 %1926, 1024
  %2026 = icmp ne i32 %2025, 0
  %2027 = fcmp fast ogt float %2024, 0x3FE0101020000000
  %2028 = uitofp i1 %2027 to float
  %2029 = select i1 %2026, float %2028, float %2024
  %2030 = and i32 %1926, 8192
  %2031 = icmp ne i32 %2030, 0
  %2032 = select i1 %2031, float %1992, float 1.000000e+00
  %2033 = fmul fast float %1934, 2.000000e+00
  %2034 = fadd fast float %2033, -1.000000e+00
  %2035 = call float @dx.op.unary.f32(i32 6, float %2034)  ; FAbs(value)
  %2036 = fmul fast float %2035, %1923
  %2037 = fsub fast float %2036, %1923
  %2038 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2039 = fmul fast float %1941, 2.000000e+00
  %2040 = fadd fast float %2039, -1.000000e+00
  %2041 = call float @dx.op.unary.f32(i32 6, float %2040)  ; FAbs(value)
  %2042 = fmul fast float %2041, %1924
  %2043 = fsub fast float %2042, %1924
  %2044 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2045 = fmul fast float %1953, %1887
  %2046 = fsub fast float %2045, %1887
  %2047 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2048 = fmul fast float %2006, %2032
  %2049 = fmul fast float %2048, %2003
  %2050 = fmul fast float %2049, %2038
  %2051 = fmul fast float %2050, %2029
  %2052 = fmul fast float %2051, %2044
  %2053 = fmul fast float %2052, %2047
  %2054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.f32 %2054, 1
  %2056 = extractvalue %dx.types.CBufRet.f32 %2054, 0
  %2057 = fsub fast float %1971, %2056
  %2058 = fmul fast float %2057, %2055
  %2059 = call float @dx.op.unary.f32(i32 7, float %2058)  ; Saturate(value)
  %2060 = fmul fast float %2053, %1888
  %2061 = fadd fast float %2053, %1888
  %2062 = fmul fast float %2061, %1897
  %2063 = fsub fast float %2062, %1897
  %2064 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  %2065 = and i32 %1926, 128
  %2066 = icmp ne i32 %2065, 0
  %2067 = select i1 %2066, float %2064, float %2060
  %2068 = fmul fast float %2067, %2059
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 0
  %2071 = fcmp fast ugt float %2068, %2070
  br i1 %2071, label %2072, label %1976

; <label>:2072                                    ; preds = %1991
  br i1 %2031, label %1976, label %2073

; <label>:2073                                    ; preds = %2072
  %2074 = and i32 %1926, 4
  %2075 = and i32 %1926, 8
  %2076 = add i32 %1883, 0
  %2077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2076, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2079 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2077, %dx.types.Handle %2078, float %2009, float %2012, float undef, float undef, i32 0, i32 0, i32 undef, float %2014, float %2016, float undef, float %2018, float %2020, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2080 = extractvalue %dx.types.ResRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.ResRet.f32 %2079, 1
  %2082 = extractvalue %dx.types.ResRet.f32 %2079, 2
  %2083 = extractvalue %dx.types.ResRet.f32 %2079, 3
  %2084 = bitcast float %1909 to i32
  %2085 = and i32 %2084, 255
  %2086 = uitofp i32 %2085 to float
  %2087 = lshr i32 %2084, 8
  %2088 = and i32 %2087, 255
  %2089 = uitofp i32 %2088 to float
  %2090 = fmul fast float %2083, %2086
  %2091 = fadd fast float %2090, %2089
  %2092 = fmul fast float %2091, 0x3F70101000000000
  %2093 = add i32 %1884, 0
  %2094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2093, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2095 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2094, %dx.types.Handle %2078, float %2009, float %2012, float undef, float undef, i32 0, i32 0, i32 undef, float %2014, float %2016, float undef, float %2018, float %2020, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 0
  %2097 = extractvalue %dx.types.ResRet.f32 %2095, 1
  %2098 = extractvalue %dx.types.ResRet.f32 %2095, 2
  %2099 = extractvalue %dx.types.ResRet.f32 %2095, 3
  %2100 = bitcast float %1903 to i32
  %2101 = and i32 %2100, 255
  %2102 = uitofp i32 %2101 to float
  %2103 = lshr i32 %2100, 8
  %2104 = and i32 %2103, 255
  %2105 = uitofp i32 %2104 to float
  %2106 = lshr i32 %2100, 16
  %2107 = and i32 %2106, 255
  %2108 = uitofp i32 %2107 to float
  %2109 = fmul fast float %2108, 0x3F70101000000000
  %2110 = fmul fast float %2096, %2102
  %2111 = fadd fast float %2110, %2105
  %2112 = fmul fast float %2111, 0x3F70101000000000
  %2113 = fadd fast float %2097, -5.000000e-01
  %2114 = fadd fast float %2099, -5.000000e-01
  %2115 = fmul fast float %2113, %2109
  %2116 = fmul fast float %2114, %2109
  %2117 = fadd fast float %2115, 5.000000e-01
  %2118 = fadd fast float %2116, 5.000000e-01
  %2119 = fmul fast float %2080, %1912
  %2120 = fmul fast float %2081, %1913
  %2121 = fmul fast float %2082, %1914
  %2122 = fmul fast float %2117, 2.000000e+00
  %2123 = fadd fast float %2122, -1.000000e+00
  %2124 = fmul fast float %2118, 2.000000e+00
  %2125 = fadd fast float %2124, -1.000000e+00
  %2126 = fadd fast float %2123, %2125
  %2127 = fmul fast float %2126, 5.000000e-01
  %2128 = fsub fast float %2123, %2125
  %2129 = fmul fast float %2128, 5.000000e-01
  %2130 = call float @dx.op.unary.f32(i32 6, float %2127)  ; FAbs(value)
  %2131 = fsub fast float 1.000000e+00, %2130
  %2132 = call float @dx.op.unary.f32(i32 6, float %2129)  ; FAbs(value)
  %2133 = fsub fast float %2131, %2132
  %2134 = call float @dx.op.dot3.f32(i32 55, float %2127, float %2129, float %2133, float %2127, float %2129, float %2133)  ; Dot3(ax,ay,az,bx,by,bz)
  %2135 = call float @dx.op.unary.f32(i32 25, float %2134)  ; Rsqrt(value)
  %2136 = fmul fast float %2127, %2135
  %2137 = fmul fast float %2129, %2135
  %2138 = fmul fast float %2135, %2133
  %2139 = fmul fast float %2138, %1877
  %2140 = fmul fast float %2138, %1878
  %2141 = fmul fast float %2138, %1879
  %2142 = fmul fast float %2136, %1900
  %2143 = fmul fast float %2136, %1901
  %2144 = fmul fast float %2136, %1902
  %2145 = fadd fast float %2142, %2139
  %2146 = fadd fast float %2143, %2140
  %2147 = fadd fast float %2144, %2141
  %2148 = fmul fast float %2137, %1906
  %2149 = fmul fast float %2137, %1907
  %2150 = fmul fast float %2137, %1908
  %2151 = fadd fast float %2145, %2148
  %2152 = fadd fast float %2146, %2149
  %2153 = fadd fast float %2147, %2150
  %2154 = call float @dx.op.dot3.f32(i32 55, float %2151, float %2152, float %2153, float %2151, float %2152, float %2153)  ; Dot3(ax,ay,az,bx,by,bz)
  %2155 = call float @dx.op.unary.f32(i32 25, float %2154)  ; Rsqrt(value)
  %2156 = fmul fast float %2151, %2155
  %2157 = fmul fast float %2152, %2155
  %2158 = fmul fast float %2153, %2155
  %2159 = fcmp fast ogt float %1966, %1972
  %2160 = fsub fast float -0.000000e+00, %2156
  %2161 = fsub fast float -0.000000e+00, %2157
  %2162 = fsub fast float -0.000000e+00, %2158
  %2163 = select i1 %2159, float %2156, float %2160
  %2164 = select i1 %2159, float %2157, float %2161
  %2165 = select i1 %2159, float %2158, float %2162
  %2166 = fmul fast float %2163, %1781
  %2167 = call float @dx.op.tertiary.f32(i32 46, float %2164, float %1782, float %2166)  ; FMad(a,b,c)
  %2168 = call float @dx.op.tertiary.f32(i32 46, float %2165, float %1784, float %2167)  ; FMad(a,b,c)
  %2169 = fmul fast float %2163, %1777
  %2170 = call float @dx.op.tertiary.f32(i32 46, float %2164, float %1787, float %2169)  ; FMad(a,b,c)
  %2171 = call float @dx.op.tertiary.f32(i32 46, float %2165, float %1788, float %2170)  ; FMad(a,b,c)
  %2172 = icmp ne i32 %2075, 0
  %2173 = select i1 %2172, float 1.000000e+00, float 0.000000e+00
  %2174 = fmul fast float %2068, %2173
  %2175 = and i32 %1926, 1
  %2176 = icmp ne i32 %2175, 0
  %2177 = fadd fast float %2168, %1859
  %2178 = fadd fast float %2171, %1860
  %2179 = select i1 %2176, float %2177, float %2168
  %2180 = select i1 %2176, float %2178, float %2171
  %2181 = icmp ne i32 %2074, 0
  %2182 = select i1 %2181, float 1.000000e+00, float 0.000000e+00
  %2183 = fmul fast float %2068, %2182
  %2184 = fsub fast float %2119, %1865
  %2185 = fsub fast float %2120, %1866
  %2186 = fsub fast float %2121, %1867
  %2187 = fmul fast float %2184, %2183
  %2188 = fmul fast float %2185, %2183
  %2189 = fmul fast float %2186, %2183
  %2190 = fadd fast float %2187, %1865
  %2191 = fadd fast float %2188, %1866
  %2192 = fadd fast float %2189, %1867
  %2193 = fsub fast float %2092, %1864
  %2194 = fmul fast float %2193, %2183
  %2195 = fadd fast float %2194, %1864
  %2196 = fadd fast float %2068, %1863
  %2197 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  %2198 = fsub fast float %2112, %1862
  %2199 = fmul fast float %2198, %2174
  %2200 = fadd fast float %2199, %1862
  %2201 = fsub fast float %2098, %1861
  %2202 = fmul fast float %2201, %2174
  %2203 = fadd fast float %2202, %1861
  %2204 = fsub fast float %2179, %1859
  %2205 = fsub fast float %2180, %1860
  %2206 = fmul fast float %2204, %2174
  %2207 = fmul fast float %2205, %2174
  %2208 = fadd fast float %2206, %1859
  %2209 = fadd fast float %2207, %1860
  %2210 = and i32 %1926, 16
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2234, label %2212

; <label>:2212                                    ; preds = %2073
  %2213 = bitcast float %1920 to i32
  %2214 = add i32 %1917, 0
  %2215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2214, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2216 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2215, %dx.types.Handle %2078, float %2009, float %2012, float undef, float undef, i32 0, i32 0, i32 undef, float %2014, float %2016, float undef, float %2018, float %2020, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2217 = extractvalue %dx.types.ResRet.f32 %2216, 0
  %2218 = extractvalue %dx.types.ResRet.f32 %2216, 1
  %2219 = extractvalue %dx.types.ResRet.f32 %2216, 2
  %2220 = and i32 %2213, 65535
  %2221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2220)  ; LegacyF16ToF32(value)
  %2222 = fmul fast float %2217, %1912
  %2223 = fmul fast float %2218, %1913
  %2224 = fmul fast float %2219, %1914
  %2225 = and i32 %1926, 16384
  %2226 = icmp ne i32 %2225, 0
  %2227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2228 = extractvalue %dx.types.CBufRet.f32 %2227, 0
  %2229 = select i1 %2226, float %2228, float 1.000000e+00
  %2230 = fmul fast float %2229, %2221
  %2231 = fmul fast float %2222, %2230
  %2232 = fmul fast float %2223, %2230
  %2233 = fmul fast float %2224, %2230
  br label %2234

; <label>:2234                                    ; preds = %2212, %2073
  %2235 = phi float [ %2231, %2212 ], [ 0.000000e+00, %2073 ]
  %2236 = phi float [ %2232, %2212 ], [ 0.000000e+00, %2073 ]
  %2237 = phi float [ %2233, %2212 ], [ 0.000000e+00, %2073 ]
  %2238 = fsub fast float %2235, %1856
  %2239 = fsub fast float %2236, %1857
  %2240 = fsub fast float %2237, %1858
  %2241 = fmul fast float %2238, %2068
  %2242 = fmul fast float %2239, %2068
  %2243 = fmul fast float %2240, %2068
  %2244 = fadd fast float %2241, %1856
  %2245 = fadd fast float %2242, %1857
  %2246 = fadd fast float %2243, %1858
  br label %1976

; <label>:2247                                    ; preds = %1976
  br label %2248

; <label>:2248                                    ; preds = %2247, %1690
  %2249 = phi float [ 0.000000e+00, %1690 ], [ %1977, %2247 ]
  %2250 = phi float [ 0.000000e+00, %1690 ], [ %1978, %2247 ]
  %2251 = phi float [ 0.000000e+00, %1690 ], [ %1979, %2247 ]
  %2252 = phi float [ %1715, %1690 ], [ %1980, %2247 ]
  %2253 = phi float [ %1716, %1690 ], [ %1981, %2247 ]
  %2254 = phi float [ %1798, %1690 ], [ %1982, %2247 ]
  %2255 = phi float [ %1801, %1690 ], [ %1983, %2247 ]
  %2256 = phi float [ 0.000000e+00, %1690 ], [ %1984, %2247 ]
  %2257 = phi float [ %1796, %1690 ], [ %1985, %2247 ]
  %2258 = phi float [ %1790, %1690 ], [ %1986, %2247 ]
  %2259 = phi float [ %1792, %1690 ], [ %1987, %2247 ]
  %2260 = phi float [ %1794, %1690 ], [ %1988, %2247 ]
  %2261 = phi i32 [ 0, %1690 ], [ %1989, %2247 ]
  %2262 = uitofp i32 %2261 to float
  %2263 = fptoui float %2262 to i32
  %2264 = shl i32 %2263, 16
  %2265 = and i32 %2264, 16711680
  %2266 = call float @dx.op.dot2.f32(i32 54, float %2252, float %2253, float %2252, float %2253)  ; Dot2(ax,ay,bx,by)
  %2267 = fmul fast float %2266, 0x3FE3333340000000
  %2268 = fsub fast float 1.000000e+00, %2267
  %2269 = call float @dx.op.dot3.f32(i32 55, float %2252, float %2253, float %2268, float %2252, float %2253, float %2268)  ; Dot3(ax,ay,az,bx,by,bz)
  %2270 = call float @dx.op.unary.f32(i32 25, float %2269)  ; Rsqrt(value)
  %2271 = fmul fast float %2270, %2252
  %2272 = fmul fast float %2270, %2253
  %2273 = fmul fast float %2268, %2270
  %2274 = fmul fast float %2273, %118
  %2275 = fmul fast float %2273, %119
  %2276 = fmul fast float %2273, %120
  %2277 = fmul fast float %2271, %1781
  %2278 = fmul fast float %2271, %1782
  %2279 = fmul fast float %2271, %1784
  %2280 = fadd fast float %2274, %2277
  %2281 = fadd fast float %2275, %2278
  %2282 = fadd fast float %2276, %2279
  %2283 = fmul fast float %2272, %1777
  %2284 = fmul fast float %2272, %1787
  %2285 = fmul fast float %2272, %1788
  %2286 = fadd fast float %2280, %2283
  %2287 = fadd fast float %2281, %2284
  %2288 = fadd fast float %2282, %2285
  %2289 = call float @dx.op.dot3.f32(i32 55, float %2286, float %2287, float %2288, float %2286, float %2287, float %2288)  ; Dot3(ax,ay,az,bx,by,bz)
  %2290 = call float @dx.op.unary.f32(i32 25, float %2289)  ; Rsqrt(value)
  %2291 = fmul fast float %2286, %2290
  %2292 = fmul fast float %2287, %2290
  %2293 = fmul fast float %2288, %2290
  %2294 = fadd fast float %2257, 0xBFB99999A0000000
  %2295 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2296 = fmul fast float %2295, 0x3FF1C71C80000000
  %2297 = call float @dx.op.binary.f32(i32 36, float %2257, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2298 = fsub fast float 1.000000e+00, %2296
  %2299 = call float @dx.op.unary.f32(i32 7, float %2298)  ; Saturate(value)
  %2300 = fmul fast float %2299, %2258
  %2301 = fmul fast float %2299, %2259
  %2302 = fmul fast float %2299, %2260
  %2303 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2304 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2305 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  %2306 = fmul fast float %2296, %2258
  %2307 = fmul fast float %2296, %2259
  %2308 = fmul fast float %2296, %2260
  %2309 = fadd fast float %2306, %2297
  %2310 = fadd fast float %2307, %2297
  %2311 = fadd fast float %2308, %2297
  %2312 = call float @dx.op.unary.f32(i32 7, float %2309)  ; Saturate(value)
  %2313 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2314 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  %2315 = fmul fast float %2313, 0x401CF23780000000
  %2316 = fadd fast float %2315, 0x3FF32641C0000000
  %2317 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %2318 = call float @dx.op.unary.f32(i32 25, float %2317)  ; Rsqrt(value)
  %2319 = fmul fast float %2318, %154
  %2320 = fmul fast float %2318, %155
  %2321 = fmul fast float %2318, %156
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 0
  %2324 = fdiv fast float 1.000000e+00, %2316
  %2325 = select i1 %116, float %2324, float %2316
  %2326 = fadd fast float %2325, -1.000000e+00
  %2327 = fadd fast float %2325, 1.000000e+00
  %2328 = fdiv fast float %2326, %2327
  %2329 = fmul fast float %2328, %2328
  %2330 = call float @dx.op.dot3.f32(i32 55, float %2319, float %2320, float %2321, float %2291, float %2292, float %2293)  ; Dot3(ax,ay,az,bx,by,bz)
  %2331 = select i1 %116, float 0.000000e+00, float %2323
  %2332 = fadd fast float %2330, %2331
  %2333 = call float @dx.op.binary.f32(i32 35, float %2332, float -1.000000e+00)  ; FMax(a,b)
  %2334 = call float @dx.op.binary.f32(i32 36, float %2333, float 1.000000e+00)  ; FMin(a,b)
  %2335 = fmul fast float %2325, %2325
  %2336 = fmul fast float %2334, %2334
  %2337 = fsub fast float 1.000000e+00, %2336
  %2338 = fmul fast float %2335, %2337
  %2339 = fsub fast float 1.000000e+00, %2338
  %2340 = fcmp fast olt float %2325, 1.000000e+00
  %2341 = select i1 %2340, float %2336, float %2339
  %2342 = fcmp fast ogt float %2339, 0.000000e+00
  %2343 = fsub fast float 1.000000e+00, %2329
  %2344 = call float @dx.op.unary.f32(i32 24, float %2341)  ; Sqrt(value)
  %2345 = fsub fast float 1.000000e+00, %2344
  %2346 = call float @dx.op.unary.f32(i32 23, float %2345)  ; Log(value)
  %2347 = fmul fast float %2346, 5.000000e+00
  %2348 = call float @dx.op.unary.f32(i32 21, float %2347)  ; Exp(value)
  %2349 = fmul fast float %2348, %2343
  %2350 = fadd fast float %2349, %2329
  %2351 = select i1 %2342, float %2350, float 1.000000e+00
  %2352 = select i1 %116, float %2351, float 0.000000e+00
  %2353 = and i32 %615, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = fmul fast float %2354, 0x3F70101020000000
  %2356 = call float @dx.op.unary.f32(i32 7, float %2355)  ; Saturate(value)
  %2357 = fmul fast float %154, %154
  %2358 = fmul fast float %155, %155
  %2359 = fadd fast float %2358, %2357
  %2360 = fmul fast float %156, %156
  %2361 = fadd fast float %2359, %2360
  %2362 = call float @dx.op.unary.f32(i32 24, float %2361)  ; Sqrt(value)
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 0
  %2365 = fmul fast float %2364, %2362
  %2366 = extractvalue %dx.types.CBufRet.f32 %2363, 1
  %2367 = fadd fast float %2365, %2366
  %2368 = call float @dx.op.unary.f32(i32 7, float %2367)  ; Saturate(value)
  %2369 = fmul fast float %2356, 2.550000e+02
  %2370 = fmul fast float %2369, %2368
  %2371 = fptoui float %2370 to i32
  %2372 = fsub fast float -0.000000e+00, %2319
  %2373 = fsub fast float -0.000000e+00, %2320
  %2374 = fsub fast float -0.000000e+00, %2321
  %2375 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2292, float %2293, float %2372, float %2373, float %2374)  ; Dot3(ax,ay,az,bx,by,bz)
  %2376 = call float @dx.op.unary.f32(i32 7, float %2375)  ; Saturate(value)
  %2377 = fsub fast float 1.000000e+00, %2312
  %2378 = fsub fast float 1.000000e+00, %2313
  %2379 = fsub fast float 1.000000e+00, %2314
  %2380 = fmul fast float %2352, %2377
  %2381 = fmul fast float %2352, %2378
  %2382 = fmul fast float %2352, %2379
  %2383 = fadd fast float %2380, %2312
  %2384 = fadd fast float %2381, %2313
  %2385 = fadd fast float %2382, %2314
  %2386 = and i32 %1750, 65535
  %2387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2386)  ; LegacyF16ToF32(value)
  %2388 = lshr i32 %1753, 16
  %2389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2388)  ; LegacyF16ToF32(value)
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 1
  %2392 = fadd fast float %2391, %2387
  %2393 = call float @dx.op.unary.f32(i32 7, float %2392)  ; Saturate(value)
  %2394 = fcmp fast ogt float %2393, 0.000000e+00
  %2395 = call float @dx.op.unary.f32(i32 6, float %2376)  ; FAbs(value)
  %2396 = select i1 %2394, float %2395, float 0.000000e+00
  %2397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %62, float %2393, float %2396, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2398 = extractvalue %dx.types.ResRet.f32 %2397, 0
  %2399 = extractvalue %dx.types.ResRet.f32 %2397, 1
  %2400 = extractvalue %dx.types.ResRet.f32 %2397, 2
  %2401 = fadd fast float %2398, -5.000000e-01
  %2402 = fadd fast float %2399, -5.000000e-01
  %2403 = fadd fast float %2400, -5.000000e-01
  %2404 = fmul fast float %2312, 4.000000e+00
  %2405 = fmul fast float %2404, %2377
  %2406 = fmul fast float %2405, %2389
  %2407 = fmul fast float %2406, %2401
  %2408 = fmul fast float %2313, 4.000000e+00
  %2409 = fmul fast float %2408, %2378
  %2410 = fmul fast float %2409, %2389
  %2411 = fmul fast float %2410, %2402
  %2412 = fmul fast float %2314, 4.000000e+00
  %2413 = fmul fast float %2412, %2379
  %2414 = fmul fast float %2413, %2389
  %2415 = fmul fast float %2414, %2403
  %2416 = fadd fast float %2383, %2407
  %2417 = fadd fast float %2384, %2411
  %2418 = fadd fast float %2385, %2415
  %2419 = call float @dx.op.unary.f32(i32 7, float %2416)  ; Saturate(value)
  %2420 = call float @dx.op.unary.f32(i32 7, float %2417)  ; Saturate(value)
  %2421 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  %2422 = fptoui float %99 to i32
  %2423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.f32 %2423, 0
  %2425 = fmul fast float %2424, 5.000000e-01
  %2426 = fptoui float %2425 to i32
  %2427 = icmp eq i32 %2422, %2426
  %2428 = fptoui float %100 to i32
  %2429 = extractvalue %dx.types.CBufRet.f32 %2423, 1
  %2430 = fmul fast float %2429, 5.000000e-01
  %2431 = fptoui float %2430 to i32
  %2432 = icmp eq i32 %2428, %2431
  %2433 = and i1 %2427, %2432
  br i1 %2433, label %2434, label %2458

; <label>:2434                                    ; preds = %2248
  %2435 = call float @dx.op.binary.f32(i32 35, float %2420, float %2421)  ; FMax(a,b)
  %2436 = call float @dx.op.binary.f32(i32 35, float %2419, float %2435)  ; FMax(a,b)
  %2437 = fsub fast float 1.000000e+00, %2436
  %2438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2439 = extractvalue %dx.types.CBufRet.f32 %2438, 0
  %2440 = extractvalue %dx.types.CBufRet.f32 %2438, 1
  %2441 = extractvalue %dx.types.CBufRet.f32 %2438, 2
  %2442 = fadd fast float %2439, %154
  %2443 = fadd fast float %2440, %155
  %2444 = fadd fast float %2441, %156
  %2445 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %45, i32 0, i32 %2422, i32 %2428, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2446 = extractvalue %dx.types.ResRet.f32 %2445, 0
  %2447 = fcmp fast ogt float %2446, -1.000000e+00
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 1
  %2450 = select i1 %2447, float %2449, float 1.000000e+00
  %2451 = fadd fast float %2446, 1.000000e+00
  %2452 = fmul fast float %2450, %2451
  %2453 = call float @dx.op.unary.f32(i32 6, float %2452)  ; FAbs(value)
  %2454 = call float @dx.op.unary.f32(i32 83, float %80)  ; DerivCoarseX(value)
  %2455 = call float @dx.op.unary.f32(i32 83, float %81)  ; DerivCoarseX(value)
  %2456 = call float @dx.op.unary.f32(i32 84, float %80)  ; DerivCoarseY(value)
  %2457 = call float @dx.op.unary.f32(i32 84, float %81)  ; DerivCoarseY(value)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %2442, float %2443, float %2444, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %99, float %100, float %87, float %88, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %342, float %343, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %305, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %307, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %320, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %322, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %2453, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %2352, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %2419, float %2420, float %2421, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %2437, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %198, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %78, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %931, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float %1252, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %2454, float %2455, float %2456, float %2457, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
  br label %2458

; <label>:2458                                    ; preds = %2434, %2248
  %2459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2459, 3
  %2461 = fmul fast float %2460, %2255
  %2462 = call float @dx.op.unary.f32(i32 7, float %2461)  ; Saturate(value)
  %2463 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2464 = fsub fast float 1.000000e+00, %2256
  %2465 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %2464)  ; FMin(a,b)
  %2466 = call float @dx.op.dot3.f32(i32 55, float %2312, float %2313, float %2314, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 255
  %2471 = uitofp i32 %2470 to float
  %2472 = lshr i32 %2469, 8
  %2473 = and i32 %2472, 255
  %2474 = uitofp i32 %2473 to float
  %2475 = fmul fast float %2474, %2467
  %2476 = fadd fast float %2475, %2471
  %2477 = fmul fast float %2476, 0x3F70101020000000
  %2478 = call float @dx.op.unary.f32(i32 7, float %2477)  ; Saturate(value)
  %2479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2480 = extractvalue %dx.types.CBufRet.f32 %2479, 0
  %2481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2483 = extractvalue %dx.types.CBufRet.i32 %2482, 3
  %2484 = and i32 %2483, 3
  %2485 = icmp ne i32 %2484, 0
  %2486 = and i32 %2483, 4
  %2487 = icmp ne i32 %2486, 0
  %2488 = and i1 %2485, %2487
  br i1 %2488, label %2489, label %2500

; <label>:2489                                    ; preds = %2458
  %2490 = extractvalue %dx.types.CBufRet.f32 %2481, 3
  %2491 = fmul fast float %2490, %100
  %2492 = extractvalue %dx.types.CBufRet.f32 %2481, 2
  %2493 = fmul fast float %2492, %99
  %2494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %62, float %2493, float %2491, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2495 = extractvalue %dx.types.ResRet.f32 %2494, 0
  %2496 = fsub fast float 1.000000e+00, %2495
  %2497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.f32 %2497, 0
  %2499 = fcmp fast olt float %2496, %2498
  br label %2503

; <label>:2500                                    ; preds = %2458
  %2501 = icmp eq i32 %2486, 0
  %2502 = and i1 %2485, %2501
  br label %2503

; <label>:2503                                    ; preds = %2500, %2489
  %2504 = phi i1 [ %2499, %2489 ], [ %2502, %2500 ]
  %2505 = fsub fast float -0.000000e+00, %156
  %2506 = select i1 %2504, float 0.000000e+00, float %2314
  %2507 = fmul fast float %2330, 2.000000e+00
  %2508 = fmul fast float %2507, %2291
  %2509 = fmul fast float %2507, %2292
  %2510 = fmul fast float %2507, %2293
  %2511 = fsub fast float %2319, %2508
  %2512 = fsub fast float %2320, %2509
  %2513 = fsub fast float %2321, %2510
  %2514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %2515 = extractvalue %dx.types.CBufRet.f32 %2514, 0
  %2516 = bitcast float %2515 to i32
  %2517 = lshr i32 %2516, 8
  %2518 = and i32 %2517, 255
  %2519 = uitofp i32 %2518 to float
  %2520 = fptoui float %2519 to i32
  %2521 = and i32 %2520, 4
  %2522 = icmp ne i32 %2521, 0
  %2523 = select i1 %2522, float %2463, float 1.000000e+00
  %2524 = call float @dx.op.binary.f32(i32 36, float %2523, float 1.000000e+00)  ; FMin(a,b)
  %2525 = fsub fast float 1.000000e+00, %2524
  %2526 = bitcast float %2525 to i32
  %2527 = ashr i32 %2526, 1
  %2528 = add nsw i32 %2527, 532487669
  %2529 = bitcast i32 %2528 to float
  %2530 = fsub fast float 1.000000e+00, %2462
  %2531 = call float @dx.op.binary.f32(i32 35, float %2530, float 0x3F847AE140000000)  ; FMax(a,b)
  %2532 = fmul fast float %2531, %2531
  %2533 = fmul fast float %2532, %2532
  %2534 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  %2535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %62, float %2529, float %2533, float %2534, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2536 = extractvalue %dx.types.ResRet.f32 %2535, 0
  %2537 = and i32 %2520, 1
  %2538 = icmp ne i32 %2537, 0
  %2539 = fsub fast float 1.000000e+00, %2523
  %2540 = bitcast float %2539 to i32
  %2541 = sub nsw i32 2129859010, %2540
  %2542 = bitcast i32 %2541 to float
  %2543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.i32 %2543, 0
  %2545 = icmp eq i32 %2544, 1
  %2546 = select i1 %2545, float 0.000000e+00, float 1.000000e+00
  %2547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2548 = extractvalue %dx.types.CBufRet.f32 %2547, 0
  %2549 = fcmp fast ogt float %2548, 0.000000e+00
  %2550 = fcmp fast ogt float %2546, 0.000000e+00
  %2551 = and i1 %2549, %2550
  br i1 %2551, label %2552, label %2736, !dx.controlflow.hints !125

; <label>:2552                                    ; preds = %2503
  %2553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2554 = extractvalue %dx.types.CBufRet.f32 %2553, 0
  %2555 = extractvalue %dx.types.CBufRet.f32 %2553, 1
  %2556 = extractvalue %dx.types.CBufRet.f32 %2553, 2
  %2557 = fadd fast float %2554, %154
  %2558 = fadd fast float %2555, %155
  %2559 = fadd fast float %2556, %156
  %2560 = fmul fast float %2291, 3.200000e+01
  %2561 = fmul fast float %2292, 3.200000e+01
  %2562 = fadd fast float %2557, %2560
  %2563 = fadd fast float %2558, %2561
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 0
  %2566 = extractvalue %dx.types.CBufRet.f32 %2564, 1
  %2567 = fsub fast float %2562, %2565
  %2568 = fsub fast float %2563, %2566
  %2569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2570 = extractvalue %dx.types.CBufRet.f32 %2569, 0
  %2571 = extractvalue %dx.types.CBufRet.f32 %2569, 1
  %2572 = fmul fast float %2567, %2570
  %2573 = fmul fast float %2568, %2571
  %2574 = fmul fast float %154, %154
  %2575 = fmul fast float %155, %155
  %2576 = fadd fast float %2574, %2575
  %2577 = call float @dx.op.unary.f32(i32 24, float %2576)  ; Sqrt(value)
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 0
  %2580 = extractvalue %dx.types.CBufRet.f32 %2578, 1
  %2581 = fsub fast float %2577, %2579
  %2582 = fdiv fast float %2581, %2580
  %2583 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2584 = fmul fast float %2583, 2.000000e+00
  %2585 = fsub fast float 3.000000e+00, %2584
  %2586 = fmul fast float %2583, %2583
  %2587 = fmul fast float %2586, %2585
  %2588 = fcmp fast oge float %2572, 0.000000e+00
  %2589 = fcmp fast ole float %2572, 1.000000e+00
  %2590 = and i1 %2589, %2588
  %2591 = fcmp fast oge float %2573, 0.000000e+00
  %2592 = and i1 %2591, %2590
  %2593 = fcmp fast ole float %2573, 1.000000e+00
  %2594 = and i1 %2593, %2592
  %2595 = fcmp fast ogt float %2587, 0.000000e+00
  %2596 = and i1 %2595, %2594
  br i1 %2596, label %2597, label %2720, !dx.controlflow.hints !126

; <label>:2597                                    ; preds = %2552
  %2598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2599 = extractvalue %dx.types.CBufRet.f32 %2598, 2
  %2600 = extractvalue %dx.types.CBufRet.f32 %2598, 3
  %2601 = fmul fast float %2599, %2572
  %2602 = fmul fast float %2600, %2573
  %2603 = call float @dx.op.unary.f32(i32 27, float %2601)  ; Round_ni(value)
  %2604 = call float @dx.op.unary.f32(i32 27, float %2602)  ; Round_ni(value)
  %2605 = fptosi float %2603 to i32
  %2606 = fptosi float %2604 to i32
  %2607 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %41, i32 0, i32 %2605, i32 %2606, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = lshr i32 %2608, 16
  %2610 = icmp eq i32 %2609, 65535
  br i1 %2610, label %2720, label %2611

; <label>:2611                                    ; preds = %2597
  %2612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2613 = extractvalue %dx.types.CBufRet.f32 %2612, 0
  %2614 = fmul fast float %2613, %2572
  %2615 = extractvalue %dx.types.CBufRet.f32 %2612, 1
  %2616 = fadd fast float %2614, %2615
  %2617 = extractvalue %dx.types.CBufRet.f32 %2612, 2
  %2618 = fmul fast float %2617, %2573
  %2619 = extractvalue %dx.types.CBufRet.f32 %2612, 3
  %2620 = fadd fast float %2618, %2619
  %2621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %62, float %2616, float %2620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2622 = extractvalue %dx.types.ResRet.f32 %2621, 0
  %2623 = extractvalue %dx.types.ResRet.f32 %2621, 1
  %2624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2625 = extractvalue %dx.types.CBufRet.f32 %2624, 1
  %2626 = extractvalue %dx.types.CBufRet.f32 %2624, 0
  %2627 = fsub fast float %2625, %2626
  %2628 = fmul fast float %2627, %2622
  %2629 = fadd fast float %2628, %2626
  %2630 = extractvalue %dx.types.CBufRet.f32 %2624, 3
  %2631 = extractvalue %dx.types.CBufRet.f32 %2624, 2
  %2632 = fsub fast float %2630, %2631
  %2633 = fmul fast float %2632, %2623
  %2634 = fadd fast float %2633, %2631
  %2635 = fsub fast float %2559, %2629
  %2636 = fsub fast float %2634, %2629
  %2637 = fdiv fast float %2635, %2636
  %2638 = call float @dx.op.unary.f32(i32 7, float %2637)  ; Saturate(value)
  %2639 = extractvalue %dx.types.CBufRet.f32 %2547, 1
  %2640 = extractvalue %dx.types.CBufRet.f32 %2598, 0
  %2641 = extractvalue %dx.types.CBufRet.f32 %2598, 1
  %2642 = fmul fast float %2640, %2572
  %2643 = fmul fast float %2641, %2573
  %2644 = fmul fast float %2642, 1.250000e-01
  %2645 = fmul fast float %2643, 1.250000e-01
  %2646 = call float @dx.op.unary.f32(i32 27, float %2644)  ; Round_ni(value)
  %2647 = call float @dx.op.unary.f32(i32 27, float %2645)  ; Round_ni(value)
  %2648 = fmul fast float %2646, 8.000000e+00
  %2649 = fmul fast float %2647, 8.000000e+00
  %2650 = fsub fast float %2642, %2648
  %2651 = fsub fast float %2643, %2649
  %2652 = fadd fast float %2650, 5.000000e-01
  %2653 = fadd fast float %2651, 5.000000e-01
  %2654 = and i32 %2609, 255
  %2655 = lshr i32 %2608, 24
  %2656 = mul nuw nsw i32 %2654, 9
  %2657 = uitofp i32 %2656 to float
  %2658 = mul nuw nsw i32 %2655, 9
  %2659 = uitofp i32 %2658 to float
  %2660 = fadd fast float %2652, %2657
  %2661 = fadd fast float %2653, %2659
  %2662 = fdiv fast float %2660, %2548
  %2663 = fdiv fast float %2661, %2639
  %2664 = fmul fast float %2638, 4.375000e-01
  %2665 = fadd fast float %2664, 3.125000e-02
  %2666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %62, float %2662, float %2663, float %2665, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2667 = extractvalue %dx.types.ResRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.ResRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.ResRet.f32 %2666, 2
  %2670 = fadd fast float %2664, 5.312500e-01
  %2671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %62, float %2662, float %2663, float %2670, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2672 = extractvalue %dx.types.ResRet.f32 %2671, 0
  %2673 = extractvalue %dx.types.ResRet.f32 %2671, 1
  %2674 = extractvalue %dx.types.ResRet.f32 %2671, 2
  %2675 = fmul fast float %2672, 2.000000e+00
  %2676 = fmul fast float %2673, 2.000000e+00
  %2677 = fmul fast float %2674, 2.000000e+00
  %2678 = fadd fast float %2675, -1.000000e+00
  %2679 = fadd fast float %2676, -1.000000e+00
  %2680 = fadd fast float %2677, -1.000000e+00
  %2681 = fmul fast float %2678, %2678
  %2682 = fmul fast float %2679, %2679
  %2683 = fadd fast float %2681, %2682
  %2684 = fmul fast float %2680, %2680
  %2685 = fadd fast float %2683, %2684
  %2686 = call float @dx.op.unary.f32(i32 24, float %2685)  ; Sqrt(value)
  %2687 = fcmp fast ogt float %2686, 0.000000e+00
  br i1 %2687, label %2688, label %2692

; <label>:2688                                    ; preds = %2611
  %2689 = fdiv fast float %2678, %2686
  %2690 = fdiv fast float %2679, %2686
  %2691 = fdiv fast float %2680, %2686
  br label %2692

; <label>:2692                                    ; preds = %2688, %2611
  %2693 = phi float [ %2689, %2688 ], [ 0.000000e+00, %2611 ]
  %2694 = phi float [ %2690, %2688 ], [ 0.000000e+00, %2611 ]
  %2695 = phi float [ %2691, %2688 ], [ 0.000000e+00, %2611 ]
  %2696 = call float @dx.op.dot3.f32(i32 55, float %2693, float %2694, float %2695, float %2291, float %2292, float %2293)  ; Dot3(ax,ay,az,bx,by,bz)
  %2697 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2696)  ; FMax(a,b)
  %2698 = fmul fast float %2697, 0x400C5BF8A0000000
  %2699 = fmul fast float %2667, %2587
  %2700 = fmul fast float %2699, %2698
  %2701 = fmul fast float %2668, %2587
  %2702 = fmul fast float %2701, %2698
  %2703 = fmul fast float %2669, %2587
  %2704 = fmul fast float %2703, %2698
  %2705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2706 = extractvalue %dx.types.CBufRet.f32 %2705, 3
  %2707 = fmul fast float %2700, %2706
  %2708 = fmul fast float %2702, %2706
  %2709 = fmul fast float %2704, %2706
  %2710 = fcmp fast ogt float %2559, %2634
  br i1 %2710, label %2711, label %2720

; <label>:2711                                    ; preds = %2692
  %2712 = fmul fast float %2636, 0x3FC24924A0000000
  %2713 = fsub fast float %2559, %2634
  %2714 = fdiv fast float %2713, %2712
  %2715 = call float @dx.op.unary.f32(i32 7, float %2714)  ; Saturate(value)
  %2716 = fsub fast float 1.000000e+00, %2715
  %2717 = fmul fast float %2716, %2707
  %2718 = fmul fast float %2716, %2708
  %2719 = fmul fast float %2716, %2709
  br label %2720

; <label>:2720                                    ; preds = %2711, %2692, %2597, %2552
  %2721 = phi float [ %2719, %2711 ], [ %2709, %2692 ], [ 0.000000e+00, %2597 ], [ 0.000000e+00, %2552 ]
  %2722 = phi float [ %2718, %2711 ], [ %2708, %2692 ], [ 0.000000e+00, %2597 ], [ 0.000000e+00, %2552 ]
  %2723 = phi float [ %2717, %2711 ], [ %2707, %2692 ], [ 0.000000e+00, %2597 ], [ 0.000000e+00, %2552 ]
  %2724 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2723)  ; FMax(a,b)
  %2725 = fmul fast float %2724, 0x3FD20DD760000000
  %2726 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2722)  ; FMax(a,b)
  %2727 = fmul fast float %2726, 0x3FD20DD760000000
  %2728 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2721)  ; FMax(a,b)
  %2729 = fmul fast float %2728, 0x3FD20DD760000000
  %2730 = call float @dx.op.binary.f32(i32 35, float %2725, float 0.000000e+00)  ; FMax(a,b)
  %2731 = call float @dx.op.binary.f32(i32 35, float %2727, float 0.000000e+00)  ; FMax(a,b)
  %2732 = call float @dx.op.binary.f32(i32 35, float %2729, float 0.000000e+00)  ; FMax(a,b)
  %2733 = fmul fast float %2730, %2546
  %2734 = fmul fast float %2731, %2546
  %2735 = fmul fast float %2732, %2546
  br label %2736

; <label>:2736                                    ; preds = %2720, %2503
  %2737 = phi float [ %2733, %2720 ], [ 0.000000e+00, %2503 ]
  %2738 = phi float [ %2734, %2720 ], [ 0.000000e+00, %2503 ]
  %2739 = phi float [ %2735, %2720 ], [ 0.000000e+00, %2503 ]
  br i1 %2545, label %2740, label %3532, !dx.controlflow.hints !127

; <label>:2740                                    ; preds = %2736
  %2741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2742 = extractvalue %dx.types.CBufRet.f32 %2741, 0
  %2743 = extractvalue %dx.types.CBufRet.f32 %2741, 1
  %2744 = extractvalue %dx.types.CBufRet.f32 %2741, 2
  %2745 = fadd fast float %2742, %154
  %2746 = fadd fast float %2743, %155
  %2747 = fadd fast float %2744, %156
  %2748 = fmul fast float %2291, 3.200000e+01
  %2749 = fmul fast float %2292, 3.200000e+01
  %2750 = fadd fast float %2745, %2748
  %2751 = fadd fast float %2746, %2749
  %2752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2753 = extractvalue %dx.types.CBufRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.CBufRet.f32 %2752, 1
  %2755 = fsub fast float %2750, %2753
  %2756 = fsub fast float %2751, %2754
  %2757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2758 = extractvalue %dx.types.CBufRet.f32 %2757, 0
  %2759 = extractvalue %dx.types.CBufRet.f32 %2757, 1
  %2760 = fmul fast float %2755, %2758
  %2761 = fmul fast float %2756, %2759
  %2762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2763 = extractvalue %dx.types.CBufRet.f32 %2762, 0
  %2764 = fmul fast float %2760, %2763
  %2765 = extractvalue %dx.types.CBufRet.f32 %2762, 1
  %2766 = fadd fast float %2764, %2765
  %2767 = extractvalue %dx.types.CBufRet.f32 %2762, 2
  %2768 = fmul fast float %2767, %2761
  %2769 = extractvalue %dx.types.CBufRet.f32 %2762, 3
  %2770 = fadd fast float %2768, %2769
  %2771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %62, float %2766, float %2770, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2772 = extractvalue %dx.types.ResRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.ResRet.f32 %2771, 1
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 1
  %2776 = extractvalue %dx.types.CBufRet.f32 %2774, 0
  %2777 = fsub fast float %2775, %2776
  %2778 = fmul fast float %2777, %2772
  %2779 = fadd fast float %2778, %2776
  %2780 = extractvalue %dx.types.CBufRet.f32 %2774, 3
  %2781 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %2782 = fsub fast float %2780, %2781
  %2783 = fmul fast float %2782, %2773
  %2784 = fadd fast float %2783, %2781
  %2785 = fsub fast float %2747, %2779
  %2786 = fsub fast float %2784, %2779
  %2787 = fdiv fast float %2785, %2786
  %2788 = call float @dx.op.unary.f32(i32 7, float %2787)  ; Saturate(value)
  %2789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.f32 %2789, 0
  %2791 = fmul fast float %2790, %2788
  %2792 = extractvalue %dx.types.CBufRet.f32 %2789, 1
  %2793 = fadd fast float %2791, %2792
  %2794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %62, float %2766, float %2770, float %2793, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2795 = extractvalue %dx.types.ResRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.ResRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.ResRet.f32 %2794, 2
  %2798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2799 = extractvalue %dx.types.CBufRet.f32 %2798, 0
  %2800 = extractvalue %dx.types.CBufRet.f32 %2798, 1
  %2801 = extractvalue %dx.types.CBufRet.f32 %2798, 2
  %2802 = fmul fast float %2799, %2795
  %2803 = fmul fast float %2800, %2796
  %2804 = fmul fast float %2801, %2797
  %2805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.f32 %2805, 0
  %2807 = extractvalue %dx.types.CBufRet.f32 %2805, 1
  %2808 = extractvalue %dx.types.CBufRet.f32 %2805, 2
  %2809 = fadd fast float %2802, %2806
  %2810 = fadd fast float %2803, %2807
  %2811 = fadd fast float %2804, %2808
  %2812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2813 = extractvalue %dx.types.CBufRet.f32 %2812, 0
  %2814 = fmul fast float %2813, %2760
  %2815 = extractvalue %dx.types.CBufRet.f32 %2812, 1
  %2816 = fadd fast float %2814, %2815
  %2817 = extractvalue %dx.types.CBufRet.f32 %2812, 2
  %2818 = fmul fast float %2817, %2761
  %2819 = extractvalue %dx.types.CBufRet.f32 %2812, 3
  %2820 = fadd fast float %2818, %2819
  %2821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2822 = extractvalue %dx.types.CBufRet.f32 %2821, 0
  %2823 = extractvalue %dx.types.CBufRet.f32 %2821, 1
  %2824 = extractvalue %dx.types.CBufRet.f32 %2821, 2
  %2825 = extractvalue %dx.types.CBufRet.f32 %2821, 3
  %2826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2827 = extractvalue %dx.types.CBufRet.f32 %2826, 0
  %2828 = extractvalue %dx.types.CBufRet.f32 %2826, 1
  %2829 = extractvalue %dx.types.CBufRet.f32 %2826, 2
  %2830 = extractvalue %dx.types.CBufRet.f32 %2826, 3
  %2831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %62, float %2816, float %2820, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2832 = extractvalue %dx.types.ResRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.ResRet.f32 %2831, 1
  %2834 = extractvalue %dx.types.ResRet.f32 %2831, 2
  %2835 = extractvalue %dx.types.ResRet.f32 %2831, 3
  %2836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %62, float %2816, float %2820, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.ResRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.ResRet.f32 %2836, 2
  %2840 = extractvalue %dx.types.ResRet.f32 %2836, 3
  %2841 = fmul fast float %2832, %2809
  %2842 = fmul fast float %2837, %2809
  %2843 = fmul fast float %2839, %2809
  %2844 = fmul fast float %2835, %2809
  %2845 = fadd fast float %2841, %2822
  %2846 = fadd fast float %2842, %2823
  %2847 = fadd fast float %2843, %2824
  %2848 = fadd fast float %2844, %2825
  %2849 = fmul fast float %2833, %2809
  %2850 = fmul fast float %2838, %2809
  %2851 = fadd fast float %2849, %2827
  %2852 = fadd fast float %2850, %2828
  %2853 = fmul fast float %2834, %2809
  %2854 = fmul fast float %2840, %2809
  %2855 = fadd fast float %2853, %2829
  %2856 = fadd fast float %2854, %2830
  %2857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %62, float %2816, float %2820, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2858 = extractvalue %dx.types.ResRet.f32 %2857, 0
  %2859 = extractvalue %dx.types.ResRet.f32 %2857, 1
  %2860 = extractvalue %dx.types.ResRet.f32 %2857, 2
  %2861 = extractvalue %dx.types.ResRet.f32 %2857, 3
  %2862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %62, float %2816, float %2820, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2863 = extractvalue %dx.types.ResRet.f32 %2862, 0
  %2864 = extractvalue %dx.types.ResRet.f32 %2862, 1
  %2865 = extractvalue %dx.types.ResRet.f32 %2862, 2
  %2866 = extractvalue %dx.types.ResRet.f32 %2862, 3
  %2867 = fmul fast float %2858, %2810
  %2868 = fmul fast float %2863, %2810
  %2869 = fmul fast float %2865, %2810
  %2870 = fmul fast float %2861, %2810
  %2871 = fadd fast float %2845, %2867
  %2872 = fadd fast float %2846, %2868
  %2873 = fadd fast float %2847, %2869
  %2874 = fadd fast float %2848, %2870
  %2875 = fmul fast float %2859, %2810
  %2876 = fmul fast float %2864, %2810
  %2877 = fadd fast float %2851, %2875
  %2878 = fadd fast float %2852, %2876
  %2879 = fmul fast float %2860, %2810
  %2880 = fmul fast float %2866, %2810
  %2881 = fadd fast float %2855, %2879
  %2882 = fadd fast float %2856, %2880
  %2883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %62, float %2816, float %2820, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2884 = extractvalue %dx.types.ResRet.f32 %2883, 0
  %2885 = extractvalue %dx.types.ResRet.f32 %2883, 1
  %2886 = extractvalue %dx.types.ResRet.f32 %2883, 2
  %2887 = extractvalue %dx.types.ResRet.f32 %2883, 3
  %2888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %62, float %2816, float %2820, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2889 = extractvalue %dx.types.ResRet.f32 %2888, 0
  %2890 = extractvalue %dx.types.ResRet.f32 %2888, 1
  %2891 = extractvalue %dx.types.ResRet.f32 %2888, 2
  %2892 = extractvalue %dx.types.ResRet.f32 %2888, 3
  %2893 = fmul fast float %2884, %2811
  %2894 = fmul fast float %2889, %2811
  %2895 = fmul fast float %2891, %2811
  %2896 = fmul fast float %2887, %2811
  %2897 = fadd fast float %2871, %2893
  %2898 = fadd fast float %2872, %2894
  %2899 = fadd fast float %2873, %2895
  %2900 = fadd fast float %2874, %2896
  %2901 = fmul fast float %2885, %2811
  %2902 = fmul fast float %2890, %2811
  %2903 = fadd fast float %2877, %2901
  %2904 = fadd fast float %2878, %2902
  %2905 = fmul fast float %2886, %2811
  %2906 = fmul fast float %2892, %2811
  %2907 = fadd fast float %2881, %2905
  %2908 = fadd fast float %2882, %2906
  %2909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2910 = extractvalue %dx.types.CBufRet.f32 %2909, 0
  %2911 = fsub fast float %2745, %2910
  %2912 = fsub fast float %2753, %2745
  %2913 = call float @dx.op.binary.f32(i32 35, float %2912, float %2911)  ; FMax(a,b)
  %2914 = extractvalue %dx.types.CBufRet.f32 %2909, 1
  %2915 = fsub fast float %2746, %2914
  %2916 = fsub fast float %2754, %2746
  %2917 = call float @dx.op.binary.f32(i32 35, float %2916, float %2915)  ; FMax(a,b)
  %2918 = call float @dx.op.binary.f32(i32 35, float %2913, float %2917)  ; FMax(a,b)
  %2919 = extractvalue %dx.types.CBufRet.f32 %2757, 3
  %2920 = fmul fast float %2919, %2918
  %2921 = call float @dx.op.unary.f32(i32 7, float %2920)  ; Saturate(value)
  %2922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2923 = extractvalue %dx.types.CBufRet.f32 %2922, 0
  %2924 = extractvalue %dx.types.CBufRet.f32 %2922, 1
  %2925 = extractvalue %dx.types.CBufRet.f32 %2922, 2
  %2926 = extractvalue %dx.types.CBufRet.f32 %2922, 3
  %2927 = fsub fast float %2923, %2897
  %2928 = fsub fast float %2924, %2898
  %2929 = fsub fast float %2925, %2899
  %2930 = fsub fast float %2926, %2900
  %2931 = fmul fast float %2927, %2921
  %2932 = fmul fast float %2928, %2921
  %2933 = fmul fast float %2929, %2921
  %2934 = fmul fast float %2930, %2921
  %2935 = fadd fast float %2931, %2897
  %2936 = fadd fast float %2932, %2898
  %2937 = fadd fast float %2933, %2899
  %2938 = fadd fast float %2934, %2900
  %2939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.f32 %2939, 0
  %2941 = extractvalue %dx.types.CBufRet.f32 %2939, 1
  %2942 = fsub fast float %2940, %2903
  %2943 = fsub fast float %2941, %2904
  %2944 = fmul fast float %2942, %2921
  %2945 = fmul fast float %2943, %2921
  %2946 = fadd fast float %2944, %2903
  %2947 = fadd fast float %2945, %2904
  %2948 = extractvalue %dx.types.CBufRet.f32 %2939, 2
  %2949 = extractvalue %dx.types.CBufRet.f32 %2939, 3
  %2950 = fsub fast float %2948, %2907
  %2951 = fsub fast float %2949, %2908
  %2952 = fmul fast float %2950, %2921
  %2953 = fmul fast float %2951, %2921
  %2954 = fadd fast float %2952, %2907
  %2955 = fadd fast float %2953, %2908
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 0
  %2958 = fmul fast float %2957, %2935
  %2959 = fmul fast float %2957, %2936
  %2960 = fmul fast float %2957, %2937
  %2961 = fmul fast float %2957, %2938
  %2962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2963 = extractvalue %dx.types.CBufRet.f32 %2962, 0
  %2964 = fmul fast float %2963, %2946
  %2965 = fmul fast float %2963, %2947
  %2966 = fadd fast float %2964, %2958
  %2967 = fadd fast float %2965, %2960
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 0
  %2970 = fmul fast float %2969, %2954
  %2971 = fmul fast float %2969, %2955
  %2972 = fadd fast float %2966, %2970
  %2973 = fadd fast float %2967, %2971
  %2974 = extractvalue %dx.types.CBufRet.f32 %2956, 1
  %2975 = fmul fast float %2974, %2935
  %2976 = fmul fast float %2974, %2936
  %2977 = fmul fast float %2974, %2937
  %2978 = fmul fast float %2974, %2938
  %2979 = extractvalue %dx.types.CBufRet.f32 %2962, 1
  %2980 = fmul fast float %2979, %2946
  %2981 = fmul fast float %2979, %2947
  %2982 = fadd fast float %2980, %2975
  %2983 = fadd fast float %2981, %2977
  %2984 = extractvalue %dx.types.CBufRet.f32 %2968, 1
  %2985 = fmul fast float %2984, %2954
  %2986 = fmul fast float %2984, %2955
  %2987 = fadd fast float %2982, %2985
  %2988 = fadd fast float %2983, %2986
  %2989 = extractvalue %dx.types.CBufRet.f32 %2956, 2
  %2990 = fmul fast float %2989, %2935
  %2991 = fmul fast float %2989, %2936
  %2992 = fmul fast float %2989, %2937
  %2993 = fmul fast float %2989, %2938
  %2994 = extractvalue %dx.types.CBufRet.f32 %2962, 2
  %2995 = fmul fast float %2994, %2946
  %2996 = fmul fast float %2994, %2947
  %2997 = fadd fast float %2995, %2990
  %2998 = fadd fast float %2996, %2992
  %2999 = extractvalue %dx.types.CBufRet.f32 %2968, 2
  %3000 = fmul fast float %2999, %2954
  %3001 = fmul fast float %2999, %2955
  %3002 = fadd fast float %2997, %3000
  %3003 = fadd fast float %2998, %3001
  %3004 = fmul fast float %2991, %2991
  %3005 = fmul fast float %3003, %3003
  %3006 = fmul fast float %2993, %2993
  %3007 = fadd fast float %3006, %3004
  %3008 = fadd fast float %3007, %3005
  %3009 = call float @dx.op.unary.f32(i32 24, float %3008)  ; Sqrt(value)
  %3010 = fcmp fast ugt float %3009, 0.000000e+00
  br i1 %3010, label %3011, label %3026

; <label>:3011                                    ; preds = %2740
  %3012 = fsub fast float -0.000000e+00, %2993
  %3013 = fdiv fast float %3012, %3009
  %3014 = fsub fast float -0.000000e+00, %2991
  %3015 = fdiv fast float %3014, %3009
  %3016 = fdiv fast float %3003, %3009
  %3017 = fmul fast float %3002, 0x3FE279A760000000
  %3018 = fmul fast float %3015, %2991
  %3019 = fmul fast float %3016, %3003
  %3020 = fmul fast float %3013, %2993
  %3021 = fadd fast float %3018, %3020
  %3022 = fsub fast float %3021, %3019
  %3023 = call float @dx.op.unary.f32(i32 6, float %3022)  ; FAbs(value)
  %3024 = fadd fast float %3023, 0x3DDB7CDFE0000000
  %3025 = fdiv fast float %3017, %3024
  br label %3026

; <label>:3026                                    ; preds = %3011, %2740
  %3027 = phi float [ %3025, %3011 ], [ 1.000000e+00, %2740 ]
  %3028 = fmul fast float %2976, %2976
  %3029 = fmul fast float %2988, %2988
  %3030 = fmul fast float %2978, %2978
  %3031 = fadd fast float %3030, %3028
  %3032 = fadd fast float %3031, %3029
  %3033 = call float @dx.op.unary.f32(i32 24, float %3032)  ; Sqrt(value)
  %3034 = fcmp fast ugt float %3033, 0.000000e+00
  br i1 %3034, label %3035, label %3050

; <label>:3035                                    ; preds = %3026
  %3036 = fsub fast float -0.000000e+00, %2978
  %3037 = fdiv fast float %3036, %3033
  %3038 = fsub fast float -0.000000e+00, %2976
  %3039 = fdiv fast float %3038, %3033
  %3040 = fdiv fast float %2988, %3033
  %3041 = fmul fast float %2987, 0x3FE279A760000000
  %3042 = fmul fast float %3039, %2976
  %3043 = fmul fast float %3040, %2988
  %3044 = fmul fast float %3037, %2978
  %3045 = fadd fast float %3042, %3044
  %3046 = fsub fast float %3045, %3043
  %3047 = call float @dx.op.unary.f32(i32 6, float %3046)  ; FAbs(value)
  %3048 = fadd fast float %3047, 0x3DDB7CDFE0000000
  %3049 = fdiv fast float %3041, %3048
  br label %3050

; <label>:3050                                    ; preds = %3035, %3026
  %3051 = phi float [ %3049, %3035 ], [ 1.000000e+00, %3026 ]
  %3052 = call float @dx.op.binary.f32(i32 36, float %3051, float %3027)  ; FMin(a,b)
  %3053 = fmul fast float %2959, %2959
  %3054 = fmul fast float %2973, %2973
  %3055 = fmul fast float %2961, %2961
  %3056 = fadd fast float %3055, %3053
  %3057 = fadd fast float %3056, %3054
  %3058 = call float @dx.op.unary.f32(i32 24, float %3057)  ; Sqrt(value)
  %3059 = fcmp fast ugt float %3058, 0.000000e+00
  br i1 %3059, label %3060, label %3075

; <label>:3060                                    ; preds = %3050
  %3061 = fsub fast float -0.000000e+00, %2961
  %3062 = fdiv fast float %3061, %3058
  %3063 = fsub fast float -0.000000e+00, %2959
  %3064 = fdiv fast float %3063, %3058
  %3065 = fdiv fast float %2973, %3058
  %3066 = fmul fast float %2972, 0x3FE279A760000000
  %3067 = fmul fast float %3064, %2959
  %3068 = fmul fast float %3065, %2973
  %3069 = fmul fast float %3062, %2961
  %3070 = fadd fast float %3067, %3069
  %3071 = fsub fast float %3070, %3068
  %3072 = call float @dx.op.unary.f32(i32 6, float %3071)  ; FAbs(value)
  %3073 = fadd fast float %3072, 0x3DDB7CDFE0000000
  %3074 = fdiv fast float %3066, %3073
  br label %3075

; <label>:3075                                    ; preds = %3060, %3050
  %3076 = phi float [ %3074, %3060 ], [ 1.000000e+00, %3050 ]
  %3077 = call float @dx.op.binary.f32(i32 36, float %3076, float %3052)  ; FMin(a,b)
  %3078 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  %3079 = fcmp fast olt float %3078, 1.000000e+00
  br i1 %3079, label %3080, label %3090

; <label>:3080                                    ; preds = %3075
  %3081 = fmul fast float %3078, %2959
  %3082 = fmul fast float %3078, %2973
  %3083 = fmul fast float %3078, %2961
  %3084 = fmul fast float %3078, %2976
  %3085 = fmul fast float %3078, %2988
  %3086 = fmul fast float %3078, %2978
  %3087 = fmul fast float %3078, %2991
  %3088 = fmul fast float %3078, %3003
  %3089 = fmul fast float %3078, %2993
  br label %3090

; <label>:3090                                    ; preds = %3080, %3075
  %3091 = phi float [ %3087, %3080 ], [ %2991, %3075 ]
  %3092 = phi float [ %3088, %3080 ], [ %3003, %3075 ]
  %3093 = phi float [ %3089, %3080 ], [ %2993, %3075 ]
  %3094 = phi float [ %3084, %3080 ], [ %2976, %3075 ]
  %3095 = phi float [ %3085, %3080 ], [ %2988, %3075 ]
  %3096 = phi float [ %3086, %3080 ], [ %2978, %3075 ]
  %3097 = phi float [ %3081, %3080 ], [ %2959, %3075 ]
  %3098 = phi float [ %3082, %3080 ], [ %2973, %3075 ]
  %3099 = phi float [ %3083, %3080 ], [ %2961, %3075 ]
  %3100 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2972)  ; FMax(a,b)
  %3101 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2987)  ; FMax(a,b)
  %3102 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3002)  ; FMax(a,b)
  %3103 = fcmp fast oge float %2760, 0.000000e+00
  %3104 = and i1 %3103, %2549
  %3105 = fcmp fast ole float %2760, 1.000000e+00
  %3106 = and i1 %3105, %3104
  %3107 = fcmp fast oge float %2761, 0.000000e+00
  %3108 = and i1 %3107, %3106
  %3109 = fcmp fast ole float %2761, 1.000000e+00
  %3110 = and i1 %3109, %3108
  br i1 %3110, label %3111, label %3251, !dx.controlflow.hints !128

; <label>:3111                                    ; preds = %3090
  %3112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3113 = extractvalue %dx.types.CBufRet.f32 %3112, 2
  %3114 = extractvalue %dx.types.CBufRet.f32 %3112, 3
  %3115 = fmul fast float %3113, %2760
  %3116 = fmul fast float %3114, %2761
  %3117 = call float @dx.op.unary.f32(i32 27, float %3115)  ; Round_ni(value)
  %3118 = call float @dx.op.unary.f32(i32 27, float %3116)  ; Round_ni(value)
  %3119 = fptosi float %3117 to i32
  %3120 = fptosi float %3118 to i32
  %3121 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %41, i32 0, i32 %3119, i32 %3120, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = and i32 %3122, 65535
  %3124 = lshr i32 %3122, 16
  %3125 = icmp eq i32 %3123, 65535
  br i1 %3125, label %3162, label %3126

; <label>:3126                                    ; preds = %3111
  %3127 = extractvalue %dx.types.CBufRet.f32 %2547, 1
  %3128 = extractvalue %dx.types.CBufRet.f32 %3112, 0
  %3129 = extractvalue %dx.types.CBufRet.f32 %3112, 1
  %3130 = fmul fast float %3128, %2760
  %3131 = fmul fast float %3129, %2761
  %3132 = fmul fast float %3130, 1.250000e-01
  %3133 = fmul fast float %3131, 1.250000e-01
  %3134 = call float @dx.op.unary.f32(i32 27, float %3132)  ; Round_ni(value)
  %3135 = call float @dx.op.unary.f32(i32 27, float %3133)  ; Round_ni(value)
  %3136 = fmul fast float %3134, 8.000000e+00
  %3137 = fmul fast float %3135, 8.000000e+00
  %3138 = and i32 %3122, 255
  %3139 = lshr i32 %3122, 8
  %3140 = and i32 %3139, 255
  %3141 = mul nuw nsw i32 %3138, 9
  %3142 = uitofp i32 %3141 to float
  %3143 = mul nuw nsw i32 %3140, 9
  %3144 = uitofp i32 %3143 to float
  %3145 = fadd fast float %3142, 5.000000e-01
  %3146 = fadd fast float %3145, %3130
  %3147 = fsub fast float %3146, %3136
  %3148 = fadd fast float %3144, 5.000000e-01
  %3149 = fadd fast float %3148, %3131
  %3150 = fsub fast float %3149, %3137
  %3151 = fdiv fast float %3147, %2548
  %3152 = fdiv fast float %3150, %3127
  %3153 = fmul fast float %2788, 4.375000e-01
  %3154 = fadd fast float %3153, 3.125000e-02
  %3155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %62, float %3151, float %3152, float %3154, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3156 = extractvalue %dx.types.ResRet.f32 %3155, 0
  %3157 = extractvalue %dx.types.ResRet.f32 %3155, 1
  %3158 = extractvalue %dx.types.ResRet.f32 %3155, 2
  %3159 = fadd fast float %3156, %3100
  %3160 = fadd fast float %3157, %3101
  %3161 = fadd fast float %3158, %3102
  br label %3162

; <label>:3162                                    ; preds = %3126, %3111
  %3163 = phi float [ %3161, %3126 ], [ %3102, %3111 ]
  %3164 = phi float [ %3160, %3126 ], [ %3101, %3111 ]
  %3165 = phi float [ %3159, %3126 ], [ %3100, %3111 ]
  %3166 = icmp eq i32 %3124, 65535
  br i1 %3166, label %3251, label %3167

; <label>:3167                                    ; preds = %3162
  %3168 = extractvalue %dx.types.CBufRet.f32 %2547, 1
  %3169 = extractvalue %dx.types.CBufRet.f32 %3112, 0
  %3170 = extractvalue %dx.types.CBufRet.f32 %3112, 1
  %3171 = fmul fast float %3169, %2760
  %3172 = fmul fast float %3170, %2761
  %3173 = fmul fast float %3171, 1.250000e-01
  %3174 = fmul fast float %3172, 1.250000e-01
  %3175 = call float @dx.op.unary.f32(i32 27, float %3173)  ; Round_ni(value)
  %3176 = call float @dx.op.unary.f32(i32 27, float %3174)  ; Round_ni(value)
  %3177 = fmul fast float %3175, 8.000000e+00
  %3178 = fmul fast float %3176, 8.000000e+00
  %3179 = fsub fast float %3171, %3177
  %3180 = fsub fast float %3172, %3178
  %3181 = fadd fast float %3179, 5.000000e-01
  %3182 = fadd fast float %3180, 5.000000e-01
  %3183 = and i32 %3124, 255
  %3184 = lshr i32 %3122, 24
  %3185 = mul nuw nsw i32 %3183, 9
  %3186 = uitofp i32 %3185 to float
  %3187 = mul nuw nsw i32 %3184, 9
  %3188 = uitofp i32 %3187 to float
  %3189 = fadd fast float %3181, %3186
  %3190 = fadd fast float %3182, %3188
  %3191 = fdiv fast float %3189, %2548
  %3192 = fdiv fast float %3190, %3168
  %3193 = fmul fast float %2788, 4.375000e-01
  %3194 = fadd fast float %3193, 3.125000e-02
  %3195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %62, float %3191, float %3192, float %3194, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3196 = extractvalue %dx.types.ResRet.f32 %3195, 0
  %3197 = extractvalue %dx.types.ResRet.f32 %3195, 1
  %3198 = extractvalue %dx.types.ResRet.f32 %3195, 2
  %3199 = fadd fast float %3193, 5.312500e-01
  %3200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %62, float %3191, float %3192, float %3199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3201 = extractvalue %dx.types.ResRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.ResRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.ResRet.f32 %3200, 2
  %3204 = fmul fast float %3201, 2.000000e+00
  %3205 = fmul fast float %3202, 2.000000e+00
  %3206 = fmul fast float %3203, 2.000000e+00
  %3207 = fadd fast float %3204, -1.000000e+00
  %3208 = fadd fast float %3205, -1.000000e+00
  %3209 = fadd fast float %3206, -1.000000e+00
  %3210 = fmul fast float %3207, %3207
  %3211 = fmul fast float %3208, %3208
  %3212 = fadd fast float %3210, %3211
  %3213 = fmul fast float %3209, %3209
  %3214 = fadd fast float %3212, %3213
  %3215 = call float @dx.op.unary.f32(i32 24, float %3214)  ; Sqrt(value)
  %3216 = fcmp fast ogt float %3215, 0.000000e+00
  br i1 %3216, label %3217, label %3221

; <label>:3217                                    ; preds = %3167
  %3218 = fdiv fast float %3207, %3215
  %3219 = fdiv fast float %3208, %3215
  %3220 = fdiv fast float %3209, %3215
  br label %3221

; <label>:3221                                    ; preds = %3217, %3167
  %3222 = phi float [ %3218, %3217 ], [ 0.000000e+00, %3167 ]
  %3223 = phi float [ %3219, %3217 ], [ 0.000000e+00, %3167 ]
  %3224 = phi float [ %3220, %3217 ], [ 0.000000e+00, %3167 ]
  %3225 = fmul fast float %154, %154
  %3226 = fmul fast float %155, %155
  %3227 = fadd fast float %3225, %3226
  %3228 = call float @dx.op.unary.f32(i32 24, float %3227)  ; Sqrt(value)
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.CBufRet.f32 %3229, 1
  %3232 = fsub fast float %3228, %3230
  %3233 = fdiv fast float %3232, %3231
  %3234 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  %3235 = fmul fast float %3234, 2.000000e+00
  %3236 = fsub fast float 3.000000e+00, %3235
  %3237 = fmul fast float %3234, %3234
  %3238 = fmul fast float %3237, %3236
  %3239 = call float @dx.op.dot3.f32(i32 55, float %3222, float %3223, float %3224, float %2291, float %2292, float %2293)  ; Dot3(ax,ay,az,bx,by,bz)
  %3240 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3239)  ; FMax(a,b)
  %3241 = fmul fast float %3240, 0x400C5BF8A0000000
  %3242 = fmul fast float %3238, %3196
  %3243 = fmul fast float %3242, %3241
  %3244 = fadd fast float %3243, %3165
  %3245 = fmul fast float %3238, %3197
  %3246 = fmul fast float %3245, %3241
  %3247 = fadd fast float %3246, %3164
  %3248 = fmul fast float %3238, %3198
  %3249 = fmul fast float %3248, %3241
  %3250 = fadd fast float %3249, %3163
  br label %3251

; <label>:3251                                    ; preds = %3221, %3162, %3090
  %3252 = phi float [ %3250, %3221 ], [ %3163, %3162 ], [ %3102, %3090 ]
  %3253 = phi float [ %3247, %3221 ], [ %3164, %3162 ], [ %3101, %3090 ]
  %3254 = phi float [ %3244, %3221 ], [ %3165, %3162 ], [ %3100, %3090 ]
  %3255 = fcmp fast ogt float %2747, %2784
  %3256 = and i1 %3103, %3255
  %3257 = and i1 %3105, %3256
  %3258 = and i1 %3107, %3257
  %3259 = and i1 %3109, %3258
  br i1 %3259, label %3260, label %3317, !dx.controlflow.hints !129

; <label>:3260                                    ; preds = %3251
  %3261 = fmul fast float %2786, 0x3FC24924A0000000
  %3262 = fsub fast float %2747, %2784
  %3263 = fdiv fast float %3262, %3261
  %3264 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3266 = extractvalue %dx.types.CBufRet.f32 %3265, 0
  %3267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3268 = extractvalue %dx.types.CBufRet.f32 %3267, 0
  %3269 = extractvalue %dx.types.CBufRet.f32 %3267, 1
  %3270 = extractvalue %dx.types.CBufRet.f32 %3267, 2
  %3271 = fsub fast float %3266, %3254
  %3272 = fsub fast float %3268, %3097
  %3273 = fsub fast float %3269, %3098
  %3274 = fsub fast float %3270, %3099
  %3275 = fmul fast float %3271, %3264
  %3276 = fmul fast float %3272, %3264
  %3277 = fmul fast float %3273, %3264
  %3278 = fmul fast float %3274, %3264
  %3279 = fadd fast float %3275, %3254
  %3280 = fadd fast float %3276, %3097
  %3281 = fadd fast float %3277, %3098
  %3282 = fadd fast float %3278, %3099
  %3283 = extractvalue %dx.types.CBufRet.f32 %3265, 1
  %3284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3285 = extractvalue %dx.types.CBufRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.CBufRet.f32 %3284, 1
  %3287 = extractvalue %dx.types.CBufRet.f32 %3284, 2
  %3288 = fsub fast float %3283, %3253
  %3289 = fsub fast float %3285, %3094
  %3290 = fsub fast float %3286, %3095
  %3291 = fsub fast float %3287, %3096
  %3292 = fmul fast float %3288, %3264
  %3293 = fmul fast float %3289, %3264
  %3294 = fmul fast float %3290, %3264
  %3295 = fmul fast float %3291, %3264
  %3296 = fadd fast float %3292, %3253
  %3297 = fadd fast float %3293, %3094
  %3298 = fadd fast float %3294, %3095
  %3299 = fadd fast float %3295, %3096
  %3300 = extractvalue %dx.types.CBufRet.f32 %3265, 2
  %3301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3302 = extractvalue %dx.types.CBufRet.f32 %3301, 0
  %3303 = extractvalue %dx.types.CBufRet.f32 %3301, 1
  %3304 = extractvalue %dx.types.CBufRet.f32 %3301, 2
  %3305 = fsub fast float %3300, %3252
  %3306 = fsub fast float %3302, %3091
  %3307 = fsub fast float %3303, %3092
  %3308 = fsub fast float %3304, %3093
  %3309 = fmul fast float %3305, %3264
  %3310 = fmul fast float %3306, %3264
  %3311 = fmul fast float %3307, %3264
  %3312 = fmul fast float %3308, %3264
  %3313 = fadd fast float %3309, %3252
  %3314 = fadd fast float %3310, %3091
  %3315 = fadd fast float %3311, %3092
  %3316 = fadd fast float %3312, %3093
  br label %3317

; <label>:3317                                    ; preds = %3260, %3251
  %3318 = phi float [ %3313, %3260 ], [ %3252, %3251 ]
  %3319 = phi float [ %3314, %3260 ], [ %3091, %3251 ]
  %3320 = phi float [ %3315, %3260 ], [ %3092, %3251 ]
  %3321 = phi float [ %3316, %3260 ], [ %3093, %3251 ]
  %3322 = phi float [ %3296, %3260 ], [ %3253, %3251 ]
  %3323 = phi float [ %3297, %3260 ], [ %3094, %3251 ]
  %3324 = phi float [ %3298, %3260 ], [ %3095, %3251 ]
  %3325 = phi float [ %3299, %3260 ], [ %3096, %3251 ]
  %3326 = phi float [ %3279, %3260 ], [ %3254, %3251 ]
  %3327 = phi float [ %3280, %3260 ], [ %3097, %3251 ]
  %3328 = phi float [ %3281, %3260 ], [ %3098, %3251 ]
  %3329 = phi float [ %3282, %3260 ], [ %3099, %3251 ]
  %3330 = extractvalue %dx.types.CBufRet.f32 %2909, 3
  %3331 = fmul fast float %3330, %3326
  %3332 = fmul fast float %3330, %3322
  %3333 = fmul fast float %3330, %3318
  %3334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.f32 %3334, 3
  %3336 = fmul fast float %3331, %3335
  %3337 = fmul fast float %3332, %3335
  %3338 = fmul fast float %3333, %3335
  %3339 = call float @dx.op.dot3.f32(i32 55, float %3336, float %3337, float %3338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3340 = fmul fast float %3339, 0x3FD20DD760000000
  %3341 = fmul fast float %3327, 1.500000e+00
  %3342 = fmul fast float %3341, %3330
  %3343 = fmul fast float %3342, %3335
  %3344 = fmul fast float %3328, 1.500000e+00
  %3345 = fmul fast float %3344, %3330
  %3346 = fmul fast float %3345, %3335
  %3347 = fmul fast float %3329, 1.500000e+00
  %3348 = fmul fast float %3347, %3330
  %3349 = fmul fast float %3348, %3335
  %3350 = fmul fast float %3323, 1.500000e+00
  %3351 = fmul fast float %3350, %3330
  %3352 = fmul fast float %3351, %3335
  %3353 = fmul fast float %3324, 1.500000e+00
  %3354 = fmul fast float %3353, %3330
  %3355 = fmul fast float %3354, %3335
  %3356 = fmul fast float %3325, 1.500000e+00
  %3357 = fmul fast float %3356, %3330
  %3358 = fmul fast float %3357, %3335
  %3359 = fmul fast float %3319, 1.500000e+00
  %3360 = fmul fast float %3359, %3330
  %3361 = fmul fast float %3360, %3335
  %3362 = fmul fast float %3320, 1.500000e+00
  %3363 = fmul fast float %3362, %3330
  %3364 = fmul fast float %3363, %3335
  %3365 = fmul fast float %3321, 1.500000e+00
  %3366 = fmul fast float %3365, %3330
  %3367 = fmul fast float %3366, %3335
  %3368 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3336)  ; FMax(a,b)
  %3369 = call float @dx.op.dot3.f32(i32 55, float %3343, float %3346, float %3349, float %3343, float %3346, float %3349)  ; Dot3(ax,ay,az,bx,by,bz)
  %3370 = fcmp fast oeq float %3369, 0.000000e+00
  %3371 = fcmp fast oeq float %3368, 0.000000e+00
  %3372 = or i1 %3371, %3370
  br i1 %3372, label %3402, label %3373

; <label>:3373                                    ; preds = %3317
  %3374 = fsub fast float -0.000000e+00, %3349
  %3375 = fsub fast float -0.000000e+00, %3343
  %3376 = call float @dx.op.unary.f32(i32 24, float %3369)  ; Sqrt(value)
  %3377 = fdiv fast float %3376, %3368
  %3378 = fcmp fast ogt float %3377, 0x3FFB6F8900000000
  %3379 = select i1 %3378, float 0x3FFB6F8900000000, float %3377
  %3380 = fmul fast float %3379, 0x3FE8A23460000000
  %3381 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3382 = call float @dx.op.binary.f32(i32 35, float %3379, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3383 = fmul fast float %3381, %3368
  %3384 = fmul fast float %3382, 0x3FF279A740000000
  %3385 = fadd fast float %3384, -1.000000e+00
  %3386 = call float @dx.op.dot3.f32(i32 55, float %3374, float %3375, float %3346, float %3374, float %3375, float %3346)  ; Dot3(ax,ay,az,bx,by,bz)
  %3387 = call float @dx.op.unary.f32(i32 25, float %3386)  ; Rsqrt(value)
  %3388 = fmul fast float %3387, %3374
  %3389 = fmul fast float %3387, %3375
  %3390 = fmul fast float %3387, %3346
  %3391 = fmul fast float %3385, %3385
  %3392 = fsub fast float 1.000000e+00, %3391
  %3393 = fmul fast float %3382, 0x40005F8BE0000000
  %3394 = fsub fast float 0x400C5BF8A0000000, %3393
  %3395 = fdiv fast float %3383, %3394
  %3396 = fmul fast float %3395, 0x3FEE31C3C0000000
  %3397 = fmul fast float %3396, %3392
  %3398 = fmul fast float %3382, 0x3FDACB7480000000
  %3399 = fadd fast float %3398, 0xBFD7347680000000
  %3400 = fmul fast float %3399, %3395
  %3401 = fmul fast float %3400, %3392
  br label %3402

; <label>:3402                                    ; preds = %3373, %3317
  %3403 = phi float [ %3388, %3373 ], [ 0.000000e+00, %3317 ]
  %3404 = phi float [ %3389, %3373 ], [ 0.000000e+00, %3317 ]
  %3405 = phi float [ %3390, %3373 ], [ 0.000000e+00, %3317 ]
  %3406 = phi float [ %3397, %3373 ], [ 0.000000e+00, %3317 ]
  %3407 = phi float [ %3401, %3373 ], [ 0.000000e+00, %3317 ]
  %3408 = call float @dx.op.dot3.f32(i32 55, float %3403, float %3404, float %3405, float %2291, float %2292, float %2293)  ; Dot3(ax,ay,az,bx,by,bz)
  %3409 = fmul fast float %3408, %3408
  %3410 = fmul fast float %3409, 0x3FEE471020000000
  %3411 = fadd fast float %3410, 0xBFD42F6020000000
  %3412 = fmul fast float %3368, 0x3FD20DD760000000
  %3413 = fmul fast float %3411, %3407
  %3414 = fmul fast float %3406, 0x3FDF454380000000
  %3415 = fmul fast float %3414, %3408
  %3416 = fadd fast float %3415, %3412
  %3417 = fadd fast float %3416, %3413
  %3418 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3337)  ; FMax(a,b)
  %3419 = call float @dx.op.dot3.f32(i32 55, float %3352, float %3355, float %3358, float %3352, float %3355, float %3358)  ; Dot3(ax,ay,az,bx,by,bz)
  %3420 = fcmp fast oeq float %3419, 0.000000e+00
  %3421 = fcmp fast oeq float %3418, 0.000000e+00
  %3422 = or i1 %3421, %3420
  br i1 %3422, label %3452, label %3423

; <label>:3423                                    ; preds = %3402
  %3424 = fsub fast float -0.000000e+00, %3358
  %3425 = fsub fast float -0.000000e+00, %3352
  %3426 = call float @dx.op.unary.f32(i32 24, float %3419)  ; Sqrt(value)
  %3427 = fdiv fast float %3426, %3418
  %3428 = fcmp fast ogt float %3427, 0x3FFB6F8900000000
  %3429 = select i1 %3428, float 0x3FFB6F8900000000, float %3427
  %3430 = fmul fast float %3429, 0x3FE8A23460000000
  %3431 = call float @dx.op.unary.f32(i32 7, float %3430)  ; Saturate(value)
  %3432 = call float @dx.op.binary.f32(i32 35, float %3429, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3433 = fmul fast float %3431, %3418
  %3434 = fmul fast float %3432, 0x3FF279A740000000
  %3435 = fadd fast float %3434, -1.000000e+00
  %3436 = call float @dx.op.dot3.f32(i32 55, float %3424, float %3425, float %3355, float %3424, float %3425, float %3355)  ; Dot3(ax,ay,az,bx,by,bz)
  %3437 = call float @dx.op.unary.f32(i32 25, float %3436)  ; Rsqrt(value)
  %3438 = fmul fast float %3437, %3424
  %3439 = fmul fast float %3437, %3425
  %3440 = fmul fast float %3437, %3355
  %3441 = fmul fast float %3435, %3435
  %3442 = fsub fast float 1.000000e+00, %3441
  %3443 = fmul fast float %3432, 0x40005F8BE0000000
  %3444 = fsub fast float 0x400C5BF8A0000000, %3443
  %3445 = fdiv fast float %3433, %3444
  %3446 = fmul fast float %3445, 0x3FEE31C3C0000000
  %3447 = fmul fast float %3446, %3442
  %3448 = fmul fast float %3432, 0x3FDACB7480000000
  %3449 = fadd fast float %3448, 0xBFD7347680000000
  %3450 = fmul fast float %3449, %3445
  %3451 = fmul fast float %3450, %3442
  br label %3452

; <label>:3452                                    ; preds = %3423, %3402
  %3453 = phi float [ %3438, %3423 ], [ 0.000000e+00, %3402 ]
  %3454 = phi float [ %3439, %3423 ], [ 0.000000e+00, %3402 ]
  %3455 = phi float [ %3440, %3423 ], [ 0.000000e+00, %3402 ]
  %3456 = phi float [ %3447, %3423 ], [ 0.000000e+00, %3402 ]
  %3457 = phi float [ %3451, %3423 ], [ 0.000000e+00, %3402 ]
  %3458 = call float @dx.op.dot3.f32(i32 55, float %3453, float %3454, float %3455, float %2291, float %2292, float %2293)  ; Dot3(ax,ay,az,bx,by,bz)
  %3459 = fmul fast float %3458, %3458
  %3460 = fmul fast float %3459, 0x3FEE471020000000
  %3461 = fadd fast float %3460, 0xBFD42F6020000000
  %3462 = fmul fast float %3418, 0x3FD20DD760000000
  %3463 = fmul fast float %3461, %3457
  %3464 = fmul fast float %3456, 0x3FDF454380000000
  %3465 = fmul fast float %3464, %3458
  %3466 = fadd fast float %3465, %3462
  %3467 = fadd fast float %3466, %3463
  %3468 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3338)  ; FMax(a,b)
  %3469 = call float @dx.op.dot3.f32(i32 55, float %3361, float %3364, float %3367, float %3361, float %3364, float %3367)  ; Dot3(ax,ay,az,bx,by,bz)
  %3470 = fcmp fast oeq float %3469, 0.000000e+00
  %3471 = fcmp fast oeq float %3468, 0.000000e+00
  %3472 = or i1 %3471, %3470
  br i1 %3472, label %3502, label %3473

; <label>:3473                                    ; preds = %3452
  %3474 = fsub fast float -0.000000e+00, %3367
  %3475 = fsub fast float -0.000000e+00, %3361
  %3476 = call float @dx.op.unary.f32(i32 24, float %3469)  ; Sqrt(value)
  %3477 = fdiv fast float %3476, %3468
  %3478 = fcmp fast ogt float %3477, 0x3FFB6F8900000000
  %3479 = select i1 %3478, float 0x3FFB6F8900000000, float %3477
  %3480 = fmul fast float %3479, 0x3FE8A23460000000
  %3481 = call float @dx.op.unary.f32(i32 7, float %3480)  ; Saturate(value)
  %3482 = call float @dx.op.binary.f32(i32 35, float %3479, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3483 = fmul fast float %3481, %3468
  %3484 = fmul fast float %3482, 0x3FF279A740000000
  %3485 = fadd fast float %3484, -1.000000e+00
  %3486 = call float @dx.op.dot3.f32(i32 55, float %3474, float %3475, float %3364, float %3474, float %3475, float %3364)  ; Dot3(ax,ay,az,bx,by,bz)
  %3487 = call float @dx.op.unary.f32(i32 25, float %3486)  ; Rsqrt(value)
  %3488 = fmul fast float %3487, %3474
  %3489 = fmul fast float %3487, %3475
  %3490 = fmul fast float %3487, %3364
  %3491 = fmul fast float %3485, %3485
  %3492 = fsub fast float 1.000000e+00, %3491
  %3493 = fmul fast float %3482, 0x40005F8BE0000000
  %3494 = fsub fast float 0x400C5BF8A0000000, %3493
  %3495 = fdiv fast float %3483, %3494
  %3496 = fmul fast float %3495, 0x3FEE31C3C0000000
  %3497 = fmul fast float %3496, %3492
  %3498 = fmul fast float %3482, 0x3FDACB7480000000
  %3499 = fadd fast float %3498, 0xBFD7347680000000
  %3500 = fmul fast float %3499, %3495
  %3501 = fmul fast float %3500, %3492
  br label %3502

; <label>:3502                                    ; preds = %3473, %3452
  %3503 = phi float [ %3488, %3473 ], [ 0.000000e+00, %3452 ]
  %3504 = phi float [ %3489, %3473 ], [ 0.000000e+00, %3452 ]
  %3505 = phi float [ %3490, %3473 ], [ 0.000000e+00, %3452 ]
  %3506 = phi float [ %3497, %3473 ], [ 0.000000e+00, %3452 ]
  %3507 = phi float [ %3501, %3473 ], [ 0.000000e+00, %3452 ]
  %3508 = call float @dx.op.dot3.f32(i32 55, float %3503, float %3504, float %3505, float %2291, float %2292, float %2293)  ; Dot3(ax,ay,az,bx,by,bz)
  %3509 = fmul fast float %3508, %3508
  %3510 = fmul fast float %3509, 0x3FEE471020000000
  %3511 = fadd fast float %3510, 0xBFD42F6020000000
  %3512 = fmul fast float %3468, 0x3FD20DD760000000
  %3513 = fmul fast float %3511, %3507
  %3514 = fmul fast float %3506, 0x3FDF454380000000
  %3515 = fmul fast float %3514, %3508
  %3516 = fadd fast float %3515, %3512
  %3517 = fadd fast float %3516, %3513
  %3518 = call float @dx.op.binary.f32(i32 35, float %3417, float 0.000000e+00)  ; FMax(a,b)
  %3519 = call float @dx.op.binary.f32(i32 35, float %3467, float 0.000000e+00)  ; FMax(a,b)
  %3520 = call float @dx.op.binary.f32(i32 35, float %3517, float 0.000000e+00)  ; FMax(a,b)
  %3521 = fsub fast float %2737, %3518
  %3522 = fsub fast float %2738, %3519
  %3523 = fsub fast float %2739, %3520
  %3524 = fmul fast float %3521, %2546
  %3525 = fmul fast float %3522, %2546
  %3526 = fmul fast float %3523, %2546
  %3527 = fadd fast float %3524, %3518
  %3528 = fadd fast float %3525, %3519
  %3529 = fadd fast float %3526, %3520
  %3530 = fmul fast float %3340, %2546
  %3531 = fsub fast float %3340, %3530
  br label %3532

; <label>:3532                                    ; preds = %3502, %2736
  %3533 = phi float [ %3531, %3502 ], [ 0.000000e+00, %2736 ]
  %3534 = phi float [ %3527, %3502 ], [ %2737, %2736 ]
  %3535 = phi float [ %3528, %3502 ], [ %2738, %2736 ]
  %3536 = phi float [ %3529, %3502 ], [ %2739, %2736 ]
  %3537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3538 = extractvalue %dx.types.CBufRet.f32 %3537, 0
  %3539 = call float @dx.op.binary.f32(i32 36, float %2303, float %3538)  ; FMin(a,b)
  %3540 = fmul fast float %3539, %2525
  %3541 = fsub fast float 1.000000e+00, %3540
  %3542 = bitcast float %3541 to i32
  %3543 = sub nsw i32 2129859010, %3542
  %3544 = bitcast i32 %3543 to float
  %3545 = call float @dx.op.binary.f32(i32 36, float %2304, float %3538)  ; FMin(a,b)
  %3546 = fmul fast float %3545, %2525
  %3547 = fsub fast float 1.000000e+00, %3546
  %3548 = bitcast float %3547 to i32
  %3549 = sub nsw i32 2129859010, %3548
  %3550 = bitcast i32 %3549 to float
  %3551 = call float @dx.op.binary.f32(i32 36, float %2305, float %3538)  ; FMin(a,b)
  %3552 = fmul fast float %3551, %2525
  %3553 = fsub fast float 1.000000e+00, %3552
  %3554 = bitcast float %3553 to i32
  %3555 = sub nsw i32 2129859010, %3554
  %3556 = bitcast i32 %3555 to float
  %3557 = fmul fast float %3534, %2524
  %3558 = fmul fast float %3557, %3544
  %3559 = fmul fast float %3535, %2524
  %3560 = fmul fast float %3559, %3550
  %3561 = fmul fast float %3536, %2524
  %3562 = fmul fast float %3561, %3556
  %3563 = extractvalue %dx.types.CBufRet.i32 %2543, 2
  %3564 = and i32 %3563, 1
  %3565 = icmp ne i32 %3564, 0
  %3566 = fsub fast float 1.000000e+00, %2546
  %3567 = select i1 %3565, float %2546, float %3558
  %3568 = select i1 %3565, float %3566, float %3560
  %3569 = select i1 %3565, float 0.000000e+00, float %3562
  %3570 = call float @dx.op.dot3.f32(i32 55, float %3567, float %3568, float %3569, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3571 = select i1 %2504, float 0.000000e+00, float %3567
  %3572 = select i1 %2504, float %3570, float %3568
  %3573 = select i1 %2504, float 0.000000e+00, float %3569
  %3574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3575 = extractvalue %dx.types.CBufRet.f32 %3574, 0
  %3576 = bitcast float %3575 to i32
  %3577 = lshr i32 %3576, 8
  %3578 = and i32 %3577, 255
  %3579 = uitofp i32 %3578 to float
  %3580 = fptoui float %3579 to i32
  %3581 = icmp eq i32 %3580, 23
  br i1 %3581, label %3582, label %3605

; <label>:3582                                    ; preds = %3532
  %3583 = fmul fast float %3556, %2524
  %3584 = fmul fast float %3550, %2524
  %3585 = fmul fast float %3544, %2524
  %3586 = fadd fast float %3585, 1.000000e+00
  %3587 = fadd fast float %3584, 1.000000e+00
  %3588 = fadd fast float %3583, 1.000000e+00
  %3589 = fmul fast float %3586, 5.000000e-01
  %3590 = fmul fast float %3587, 5.000000e-01
  %3591 = fmul fast float %3588, 5.000000e-01
  %3592 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3593 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3594 = call float @dx.op.unary.f32(i32 7, float %3591)  ; Saturate(value)
  %3595 = fmul fast float %3592, 1.023000e+03
  %3596 = fmul fast float %3593, 1.023000e+03
  %3597 = fmul fast float %3594, 1.023000e+03
  %3598 = fptoui float %3595 to i32
  %3599 = fptoui float %3596 to i32
  %3600 = fptoui float %3597 to i32
  %3601 = shl i32 %3599, 10
  %3602 = or i32 %3601, %3598
  %3603 = shl i32 %3600, 20
  %3604 = or i32 %3602, %3603
  br label %3605

; <label>:3605                                    ; preds = %3582, %3532
  %3606 = phi i32 [ %3604, %3582 ], [ 0, %3532 ]
  %3607 = fsub fast float 1.000000e+00, %2506
  %3608 = fmul fast float %3607, %2352
  %3609 = fadd fast float %3608, %2506
  %3610 = fcmp fast ogt float %2387, 0.000000e+00
  %3611 = select i1 %3610, float %2395, float 0.000000e+00
  %3612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %62, float %2387, float %3611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = fadd fast float %3613, -5.000000e-01
  %3617 = fadd fast float %3614, -5.000000e-01
  %3618 = fadd fast float %3615, -5.000000e-01
  %3619 = fmul fast float %2406, %3616
  %3620 = fmul fast float %2410, %3617
  %3621 = fmul fast float %2506, 4.000000e+00
  %3622 = fmul fast float %3621, %3607
  %3623 = fmul fast float %3622, %2389
  %3624 = fmul fast float %3623, %3618
  %3625 = fadd fast float %2383, %3619
  %3626 = fadd fast float %2384, %3620
  %3627 = fadd fast float %3609, %3624
  %3628 = call float @dx.op.unary.f32(i32 7, float %3625)  ; Saturate(value)
  %3629 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3630 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3631 = call float @dx.op.binary.f32(i32 35, float %3629, float %3630)  ; FMax(a,b)
  %3632 = call float @dx.op.binary.f32(i32 35, float %3628, float %3631)  ; FMax(a,b)
  %3633 = fsub fast float 1.000000e+00, %3632
  %3634 = extractvalue %dx.types.CBufRet.f32 %2514, 2
  %3635 = fcmp fast olt float %3634, 0.000000e+00
  br i1 %3635, label %3636, label %4347

; <label>:3636                                    ; preds = %3605
  %3637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3638 = extractvalue %dx.types.CBufRet.f32 %3637, 2
  %3639 = extractvalue %dx.types.CBufRet.f32 %3637, 3
  %3640 = fmul fast float %3638, %99
  %3641 = fmul fast float %3639, %100
  %3642 = fptoui float %3640 to i32
  %3643 = fptoui float %3641 to i32
  %3644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3645 = extractvalue %dx.types.CBufRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.CBufRet.f32 %3644, 2
  %3647 = extractvalue %dx.types.CBufRet.f32 %3644, 3
  %3648 = fadd fast float %88, -4.000000e+00
  %3649 = call float @dx.op.binary.f32(i32 35, float %3648, float 0.000000e+00)  ; FMax(a,b)
  %3650 = fadd fast float %3649, %3645
  %3651 = fmul fast float %3650, %3646
  %3652 = call float @dx.op.unary.f32(i32 23, float %3651)  ; Log(value)
  %3653 = fmul fast float %3652, %3647
  %3654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3655 = extractvalue %dx.types.CBufRet.f32 %3654, 2
  %3656 = fmul fast float %3653, %3655
  %3657 = call float @dx.op.unary.f32(i32 7, float %3656)  ; Saturate(value)
  %3658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3659 = extractvalue %dx.types.CBufRet.i32 %3658, 1
  %3660 = add i32 %3659, -1
  %3661 = uitofp i32 %3659 to float
  %3662 = fmul fast float %3661, %3657
  %3663 = fptoui float %3662 to i32
  %3664 = call i32 @dx.op.binary.i32(i32 40, i32 %3663, i32 %3660)  ; UMin(a,b)
  %3665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3666 = extractvalue %dx.types.CBufRet.i32 %3665, 2
  %3667 = extractvalue %dx.types.CBufRet.i32 %3665, 3
  %3668 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3643, i32 %3666, i32 %3642)  ; UMad(a,b,c)
  %3669 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3664, i32 %3667, i32 %3668)  ; UMad(a,b,c)
  %3670 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %3671 = fptoui float %3670 to i32
  %3672 = lshr i32 %3671, 5
  %3673 = call i32 @dx.op.binary.i32(i32 40, i32 %3672, i32 8191)  ; UMin(a,b)
  %3674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.i32 %3674, 2
  %3676 = add nsw i32 %3675, -1
  %3677 = call i32 @dx.op.binary.i32(i32 37, i32 %3676, i32 0)  ; IMax(a,b)
  %3678 = shl i32 %3673, 2
  %3679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3678, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.i32 %3679, 0
  %3681 = lshr i32 %3680, 16
  %3682 = and i32 %3680, 65535
  %3683 = lshr i32 %3680, 21
  %3684 = lshr i32 %3682, 5
  %3685 = call i32 @dx.op.binary.i32(i32 40, i32 %3684, i32 %3677)  ; UMin(a,b)
  %3686 = icmp ugt i32 %3683, %3685
  br i1 %3686, label %4272, label %3687

; <label>:3687                                    ; preds = %3636
  br label %3688

; <label>:3688                                    ; preds = %4254, %3687
  %3689 = phi i32 [ %4255, %4254 ], [ %2265, %3687 ]
  %3690 = phi i32 [ %4256, %4254 ], [ %3606, %3687 ]
  %3691 = phi float [ %4257, %4254 ], [ 0.000000e+00, %3687 ]
  %3692 = phi float [ %4258, %4254 ], [ 0.000000e+00, %3687 ]
  %3693 = phi float [ %4259, %4254 ], [ 0.000000e+00, %3687 ]
  %3694 = phi float [ %4260, %4254 ], [ 0.000000e+00, %3687 ]
  %3695 = phi float [ %4261, %4254 ], [ 0.000000e+00, %3687 ]
  %3696 = phi float [ %4262, %4254 ], [ 0.000000e+00, %3687 ]
  %3697 = phi i32 [ %4263, %4254 ], [ 0, %3687 ]
  %3698 = phi float [ %4264, %4254 ], [ 0.000000e+00, %3687 ]
  %3699 = phi float [ %4265, %4254 ], [ 0.000000e+00, %3687 ]
  %3700 = phi float [ %4266, %4254 ], [ 0.000000e+00, %3687 ]
  %3701 = phi i32 [ %4267, %4254 ], [ 1, %3687 ]
  %3702 = phi float [ %4268, %4254 ], [ 1.000000e+00, %3687 ]
  %3703 = phi i32 [ %4269, %4254 ], [ %3683, %3687 ]
  %3704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3705 = extractvalue %dx.types.CBufRet.i32 %3704, 2
  %3706 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3669, i32 %3705, i32 %3703)  ; UMad(a,b,c)
  %3707 = shl i32 %3706, 2
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = shl i32 %3703, 5
  %3711 = sub nsw i32 %3681, %3710
  %3712 = call i32 @dx.op.binary.i32(i32 37, i32 %3711, i32 0)  ; IMax(a,b)
  %3713 = call i32 @dx.op.binary.i32(i32 38, i32 %3712, i32 31)  ; IMin(a,b)
  %3714 = sub nsw i32 1, %3681
  %3715 = add nsw i32 %3714, %3682
  %3716 = call i32 @dx.op.binary.i32(i32 37, i32 %3715, i32 0)  ; IMax(a,b)
  %3717 = call i32 @dx.op.binary.i32(i32 38, i32 %3716, i32 32)  ; IMin(a,b)
  %3718 = and i32 %3717, 31
  %3719 = shl i32 -1, %3718
  %3720 = xor i32 %3719, -1
  %3721 = and i32 %3713, 31
  %3722 = shl i32 %3720, %3721
  %3723 = icmp eq i32 %3717, 32
  %3724 = select i1 %3723, i32 -1, i32 %3722
  %3725 = and i32 %3724, %3709
  %3726 = icmp eq i32 %3725, 0
  br i1 %3726, label %4254, label %3727

; <label>:3727                                    ; preds = %3688
  br label %3728

; <label>:3728                                    ; preds = %3865, %3727
  %3729 = phi i32 [ %3866, %3865 ], [ %3689, %3727 ]
  %3730 = phi i32 [ %3867, %3865 ], [ %3690, %3727 ]
  %3731 = phi float [ %3868, %3865 ], [ %3691, %3727 ]
  %3732 = phi float [ %3869, %3865 ], [ %3692, %3727 ]
  %3733 = phi float [ %3870, %3865 ], [ %3693, %3727 ]
  %3734 = phi float [ %3871, %3865 ], [ %3694, %3727 ]
  %3735 = phi float [ %3872, %3865 ], [ %3695, %3727 ]
  %3736 = phi float [ %3873, %3865 ], [ %3696, %3727 ]
  %3737 = phi i32 [ %3874, %3865 ], [ %3697, %3727 ]
  %3738 = phi float [ %3875, %3865 ], [ %3698, %3727 ]
  %3739 = phi float [ %3876, %3865 ], [ %3699, %3727 ]
  %3740 = phi float [ %3877, %3865 ], [ %3700, %3727 ]
  %3741 = phi i32 [ %3878, %3865 ], [ %3701, %3727 ]
  %3742 = phi float [ %3879, %3865 ], [ %3702, %3727 ]
  %3743 = phi i32 [ %3748, %3865 ], [ %3725, %3727 ]
  %3744 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3743)  ; FirstbitLo(value)
  %3745 = add i32 %3744, %3710
  %3746 = and i32 %3744, 31
  %3747 = shl i32 1, %3746
  %3748 = xor i32 %3747, %3743
  %3749 = mul i32 %3745, 72
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.ResRet.f32 %3750, 1
  %3753 = extractvalue %dx.types.ResRet.f32 %3750, 2
  %3754 = add i32 %3749, 12
  %3755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3756 = extractvalue %dx.types.ResRet.i32 %3755, 0
  %3757 = add i32 %3749, 16
  %3758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3759 = extractvalue %dx.types.ResRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.ResRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.ResRet.f32 %3758, 2
  %3762 = add i32 %3749, 28
  %3763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3762, i32 undef)  ; BufferLoad(srv,index,wot)
  %3764 = extractvalue %dx.types.ResRet.f32 %3763, 0
  %3765 = add i32 %3749, 32
  %3766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3767 = extractvalue %dx.types.ResRet.f32 %3766, 0
  %3768 = extractvalue %dx.types.ResRet.f32 %3766, 1
  %3769 = extractvalue %dx.types.ResRet.f32 %3766, 2
  %3770 = extractvalue %dx.types.ResRet.f32 %3766, 3
  %3771 = add i32 %3749, 48
  %3772 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3771, i32 undef)  ; BufferLoad(srv,index,wot)
  %3773 = extractvalue %dx.types.ResRet.f32 %3772, 0
  %3774 = extractvalue %dx.types.ResRet.f32 %3772, 1
  %3775 = add i32 %3749, 56
  %3776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3777 = extractvalue %dx.types.ResRet.f32 %3776, 0
  %3778 = extractvalue %dx.types.ResRet.f32 %3776, 1
  %3779 = add i32 %3749, 64
  %3780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.f32 %3780, 0
  %3782 = extractvalue %dx.types.ResRet.f32 %3780, 1
  %3783 = mul i32 %3745, 60
  %3784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3783, i32 undef)  ; BufferLoad(srv,index,wot)
  %3785 = extractvalue %dx.types.ResRet.f32 %3784, 0
  %3786 = extractvalue %dx.types.ResRet.f32 %3784, 1
  %3787 = extractvalue %dx.types.ResRet.f32 %3784, 2
  %3788 = add i32 %3783, 12
  %3789 = add i32 %3783, 48
  %3790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3789, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3792 = extractvalue %dx.types.ResRet.f32 %3790, 1
  %3793 = extractvalue %dx.types.ResRet.f32 %3790, 2
  %3794 = and i32 %3756, 32767
  %3795 = bitcast float %3751 to i32
  %3796 = bitcast float %3752 to i32
  %3797 = and i32 %3756, 32768
  %3798 = icmp ne i32 %3797, 0
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 3
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %3803 = extractvalue %dx.types.CBufRet.f32 %3801, 1
  %3804 = extractvalue %dx.types.CBufRet.f32 %3801, 2
  %3805 = fsub fast float %3785, %3802
  %3806 = fsub fast float %3786, %3803
  %3807 = fsub fast float %3787, %3804
  %3808 = fsub fast float %154, %3805
  %3809 = fsub fast float %155, %3806
  %3810 = fsub fast float %156, %3807
  %3811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3812 = extractvalue %dx.types.ResRet.f32 %3811, 0
  %3813 = extractvalue %dx.types.ResRet.f32 %3811, 1
  %3814 = extractvalue %dx.types.ResRet.f32 %3811, 2
  %3815 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3809, float %3810, float %3812, float %3813, float %3814)  ; Dot3(ax,ay,az,bx,by,bz)
  %3816 = add i32 %3783, 24
  %3817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3820 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3821 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3809, float %3810, float %3818, float %3819, float %3820)  ; Dot3(ax,ay,az,bx,by,bz)
  %3822 = add i32 %3783, 36
  %3823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 1
  %3826 = extractvalue %dx.types.ResRet.f32 %3823, 2
  %3827 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3809, float %3810, float %3824, float %3825, float %3826)  ; Dot3(ax,ay,az,bx,by,bz)
  %3828 = call float @dx.op.unary.f32(i32 6, float %3815)  ; FAbs(value)
  %3829 = call float @dx.op.unary.f32(i32 6, float %3821)  ; FAbs(value)
  %3830 = call float @dx.op.unary.f32(i32 6, float %3827)  ; FAbs(value)
  %3831 = fsub fast float %3791, %3828
  %3832 = fsub fast float %3792, %3829
  %3833 = fsub fast float %3793, %3830
  %3834 = fmul fast float %3831, %3759
  %3835 = fmul fast float %3832, %3760
  %3836 = fmul fast float %3833, %3761
  %3837 = call float @dx.op.binary.f32(i32 36, float %3835, float %3836)  ; FMin(a,b)
  %3838 = call float @dx.op.binary.f32(i32 36, float %3834, float %3837)  ; FMin(a,b)
  %3839 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3840 = call float @dx.op.binary.f32(i32 36, float %3742, float %3839)  ; FMin(a,b)
  %3841 = uitofp i1 %3798 to float
  %3842 = select i1 %116, float 1.000000e+00, float 2.000000e+00
  %3843 = fsub fast float %3842, %3841
  %3844 = fmul fast float %3840, %3843
  %3845 = lshr i32 %3729, 8
  %3846 = and i32 %3845, 255
  %3847 = uitofp i32 %3846 to float
  %3848 = fptoui float %3847 to i32
  %3849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3849, 1
  %3851 = bitcast float %3850 to i32
  %3852 = lshr i32 %3851, 24
  %3853 = uitofp i32 %3852 to float
  %3854 = fptoui float %3853 to i32
  %3855 = icmp ne i32 %3854, 1
  %3856 = zext i1 %3855 to i32
  %3857 = add i32 %3856, %3848
  %3858 = uitofp i32 %3857 to float
  %3859 = fptoui float %3858 to i32
  %3860 = shl i32 %3859, 8
  %3861 = and i32 %3860, 65280
  %3862 = and i32 %3729, -65281
  %3863 = or i32 %3861, %3862
  %3864 = fcmp fast ogt float %3844, 0.000000e+00
  br i1 %3864, label %3881, label %3865

; <label>:3865                                    ; preds = %4237, %4106, %3728
  %3866 = phi i32 [ %4184, %4106 ], [ %3863, %3728 ], [ %4184, %4237 ]
  %3867 = phi i32 [ %3730, %4106 ], [ %3730, %3728 ], [ %4252, %4237 ]
  %3868 = phi float [ %4170, %4106 ], [ %3731, %3728 ], [ %4170, %4237 ]
  %3869 = phi float [ %4171, %4106 ], [ %3732, %3728 ], [ %4171, %4237 ]
  %3870 = phi float [ %4172, %4106 ], [ %3733, %3728 ], [ %4172, %4237 ]
  %3871 = phi float [ %4231, %4106 ], [ %3734, %3728 ], [ %4231, %4237 ]
  %3872 = phi float [ %4232, %4106 ], [ %3735, %3728 ], [ %4232, %4237 ]
  %3873 = phi float [ %4233, %4106 ], [ %3736, %3728 ], [ %4233, %4237 ]
  %3874 = phi i32 [ %4235, %4106 ], [ %3737, %3728 ], [ %4235, %4237 ]
  %3875 = phi float [ %4188, %4106 ], [ %3738, %3728 ], [ %4188, %4237 ]
  %3876 = phi float [ %4189, %4106 ], [ %3739, %3728 ], [ %4189, %4237 ]
  %3877 = phi float [ %4190, %4106 ], [ %3740, %3728 ], [ %4190, %4237 ]
  %3878 = phi i32 [ 0, %4106 ], [ %3741, %3728 ], [ 0, %4237 ]
  %3879 = phi float [ %4173, %4106 ], [ %3742, %3728 ], [ %4173, %4237 ]
  %3880 = icmp eq i32 %3743, %3747
  br i1 %3880, label %4253, label %3728

; <label>:3881                                    ; preds = %3728
  %3882 = extractvalue %dx.types.CBufRet.f32 %3849, 0
  %3883 = bitcast float %3882 to i32
  %3884 = lshr i32 %3883, 8
  %3885 = and i32 %3884, 255
  %3886 = uitofp i32 %3885 to float
  %3887 = fptoui float %3886 to i32
  %3888 = and i32 %3887, 2
  %3889 = icmp eq i32 %3888, 0
  br i1 %3889, label %3896, label %3890

; <label>:3890                                    ; preds = %3881
  %3891 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %3892 = call float @dx.op.unary.f32(i32 25, float %3891)  ; Rsqrt(value)
  %3893 = fmul fast float %3892, %154
  %3894 = fmul fast float %3892, %155
  %3895 = fmul fast float %3892, %156
  br label %3896

; <label>:3896                                    ; preds = %3890, %3881
  %3897 = phi float [ %3893, %3890 ], [ %2291, %3881 ]
  %3898 = phi float [ %3894, %3890 ], [ %2292, %3881 ]
  %3899 = phi float [ %3895, %3890 ], [ %2293, %3881 ]
  %3900 = icmp ne i32 %3795, -1
  %3901 = fcmp oeq float %3800, 0.000000e+00
  %3902 = and i1 %3901, %3900
  br i1 %3902, label %3903, label %4027

; <label>:3903                                    ; preds = %3896
  %3904 = fsub fast float -0.000000e+00, %3812
  %3905 = fsub fast float -0.000000e+00, %3813
  %3906 = fsub fast float -0.000000e+00, %3814
  %3907 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %3904, float %3905, float %3906)  ; Dot3(ax,ay,az,bx,by,bz)
  %3908 = fsub fast float -0.000000e+00, %3907
  %3909 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3809, float %3810, float %3904, float %3905, float %3906)  ; Dot3(ax,ay,az,bx,by,bz)
  %3910 = fadd fast float %3909, %3774
  %3911 = fadd fast float %3773, %3909
  %3912 = fsub fast float -0.000000e+00, %3911
  %3913 = fcmp ogt float %3907, -0.000000e+00
  %3914 = select i1 %3913, float %3912, float %3910
  %3915 = call float @dx.op.unary.f32(i32 6, float %3908)  ; FAbs(value)
  %3916 = fdiv fast float 1.000000e+00, %3915
  %3917 = fmul fast float %3914, %3916
  %3918 = call float @dx.op.binary.f32(i32 35, float %3917, float 0.000000e+00)  ; FMax(a,b)
  %3919 = fsub fast float -0.000000e+00, %3818
  %3920 = fsub fast float -0.000000e+00, %3819
  %3921 = fsub fast float -0.000000e+00, %3820
  %3922 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %3919, float %3920, float %3921)  ; Dot3(ax,ay,az,bx,by,bz)
  %3923 = fsub fast float -0.000000e+00, %3922
  %3924 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3809, float %3810, float %3919, float %3920, float %3921)  ; Dot3(ax,ay,az,bx,by,bz)
  %3925 = fadd fast float %3924, %3778
  %3926 = fadd fast float %3777, %3924
  %3927 = fsub fast float -0.000000e+00, %3926
  %3928 = fcmp ogt float %3922, -0.000000e+00
  %3929 = select i1 %3928, float %3927, float %3925
  %3930 = call float @dx.op.unary.f32(i32 6, float %3923)  ; FAbs(value)
  %3931 = fdiv fast float 1.000000e+00, %3930
  %3932 = fmul fast float %3929, %3931
  %3933 = call float @dx.op.binary.f32(i32 35, float %3932, float 0.000000e+00)  ; FMax(a,b)
  %3934 = fsub fast float -0.000000e+00, %3824
  %3935 = fsub fast float -0.000000e+00, %3825
  %3936 = fsub fast float -0.000000e+00, %3826
  %3937 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %3934, float %3935, float %3936)  ; Dot3(ax,ay,az,bx,by,bz)
  %3938 = fsub fast float -0.000000e+00, %3937
  %3939 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3809, float %3810, float %3934, float %3935, float %3936)  ; Dot3(ax,ay,az,bx,by,bz)
  %3940 = fadd fast float %3939, %3782
  %3941 = fadd fast float %3781, %3939
  %3942 = fsub fast float -0.000000e+00, %3941
  %3943 = fcmp ogt float %3937, -0.000000e+00
  %3944 = select i1 %3943, float %3942, float %3940
  %3945 = call float @dx.op.unary.f32(i32 6, float %3938)  ; FAbs(value)
  %3946 = fdiv fast float 1.000000e+00, %3945
  %3947 = fmul fast float %3944, %3946
  %3948 = call float @dx.op.binary.f32(i32 35, float %3947, float 0.000000e+00)  ; FMax(a,b)
  %3949 = call float @dx.op.binary.f32(i32 36, float %3933, float %3948)  ; FMin(a,b)
  %3950 = call float @dx.op.binary.f32(i32 36, float %3918, float %3949)  ; FMin(a,b)
  %3951 = fmul fast float %3950, %3897
  %3952 = fmul fast float %3950, %3898
  %3953 = fmul fast float %3950, %3899
  %3954 = fadd fast float %3951, %154
  %3955 = fadd fast float %3952, %155
  %3956 = fadd fast float %3953, %156
  %3957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.f32 %3957, 0
  %3959 = extractvalue %dx.types.CBufRet.f32 %3957, 1
  %3960 = extractvalue %dx.types.CBufRet.f32 %3957, 2
  %3961 = fadd fast float %3954, %3958
  %3962 = fadd fast float %3955, %3959
  %3963 = fadd fast float %3956, %3960
  %3964 = fcmp fast olt float %3918, %3933
  %3965 = fcmp fast olt float %3918, %3948
  %3966 = and i1 %3964, %3965
  br i1 %3966, label %3970, label %3967

; <label>:3967                                    ; preds = %3903
  %3968 = fcmp fast olt float %3933, %3948
  br i1 %3968, label %3969, label %3970

; <label>:3969                                    ; preds = %3967
  br label %3970

; <label>:3970                                    ; preds = %3969, %3967, %3903
  %3971 = phi float [ 0.000000e+00, %3969 ], [ 0.000000e+00, %3967 ], [ 1.000000e+00, %3903 ]
  %3972 = phi float [ 1.000000e+00, %3969 ], [ 0.000000e+00, %3967 ], [ 0.000000e+00, %3903 ]
  %3973 = phi float [ 0.000000e+00, %3969 ], [ 1.000000e+00, %3967 ], [ 0.000000e+00, %3903 ]
  %3974 = phi float [ %3818, %3969 ], [ %3824, %3967 ], [ %3812, %3903 ]
  %3975 = phi float [ %3819, %3969 ], [ %3825, %3967 ], [ %3813, %3903 ]
  %3976 = phi float [ %3820, %3969 ], [ %3826, %3967 ], [ %3814, %3903 ]
  %3977 = call float @dx.op.unary.f32(i32 6, float %3976)  ; FAbs(value)
  %3978 = fcmp fast olt float %3977, 0x3FE276C8C0000000
  %3979 = select i1 %3978, float 0.000000e+00, float 1.000000e+00
  %3980 = select i1 %3978, float 1.000000e+00, float 0.000000e+00
  %3981 = fmul fast float %3980, %3975
  %3982 = fmul fast float %3979, %3976
  %3983 = fsub fast float %3981, %3982
  %3984 = fmul fast float %3974, %3980
  %3985 = fsub fast float -0.000000e+00, %3984
  %3986 = fmul fast float %3979, %3974
  %3987 = call float @dx.op.dot3.f32(i32 55, float %3983, float %3985, float %3986, float %3983, float %3985, float %3986)  ; Dot3(ax,ay,az,bx,by,bz)
  %3988 = call float @dx.op.unary.f32(i32 25, float %3987)  ; Rsqrt(value)
  %3989 = fmul fast float %3983, %3988
  %3990 = fmul fast float %3988, %3985
  %3991 = fmul fast float %3986, %3988
  %3992 = fmul fast float %3991, %3975
  %3993 = fmul fast float %3990, %3976
  %3994 = fsub fast float %3992, %3993
  %3995 = fmul fast float %3989, %3976
  %3996 = fmul fast float %3991, %3974
  %3997 = fsub fast float %3995, %3996
  %3998 = fmul fast float %3990, %3974
  %3999 = fmul fast float %3989, %3975
  %4000 = fsub fast float %3998, %3999
  %4001 = call float @dx.op.dot3.f32(i32 55, float %3994, float %3997, float %4000, float %3994, float %3997, float %4000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4002 = call float @dx.op.unary.f32(i32 25, float %4001)  ; Rsqrt(value)
  %4003 = fmul fast float %3994, %4002
  %4004 = fmul fast float %3997, %4002
  %4005 = fmul fast float %4000, %4002
  %4006 = call float @dx.op.dot3.f32(i32 55, float %3961, float %3962, float %3963, float %3989, float %3990, float %3991)  ; Dot3(ax,ay,az,bx,by,bz)
  %4007 = call float @dx.op.dot3.f32(i32 55, float %3961, float %3962, float %3963, float %4003, float %4004, float %4005)  ; Dot3(ax,ay,az,bx,by,bz)
  %4008 = fmul fast float %4006, 0x3FA99999A0000000
  %4009 = fmul fast float %4007, 0x3FA99999A0000000
  %4010 = call float @dx.op.unary.f32(i32 22, float %4008)  ; Frc(value)
  %4011 = call float @dx.op.unary.f32(i32 22, float %4009)  ; Frc(value)
  %4012 = fadd fast float %4010, 0xBFB99999A0000000
  %4013 = fadd fast float %4011, 0xBFB99999A0000000
  %4014 = call float @dx.op.unary.f32(i32 6, float %4012)  ; FAbs(value)
  %4015 = call float @dx.op.unary.f32(i32 6, float %4013)  ; FAbs(value)
  %4016 = fmul fast float %4014, 1.000000e+01
  %4017 = fmul fast float %4015, 1.000000e+01
  %4018 = call float @dx.op.binary.f32(i32 36, float %4016, float %4017)  ; FMin(a,b)
  %4019 = call float @dx.op.unary.f32(i32 7, float %4018)  ; Saturate(value)
  %4020 = fsub fast float 1.000000e+00, %4019
  %4021 = fmul fast float %4020, %3971
  %4022 = fmul fast float %4020, %3972
  %4023 = fmul fast float %4020, %3973
  %4024 = fsub fast float %3954, %3751
  %4025 = fsub fast float %3955, %3752
  %4026 = fsub fast float %3956, %3753
  br label %4034

; <label>:4027                                    ; preds = %3896
  %4028 = fmul fast float %3897, 8.096000e+03
  %4029 = fmul fast float %3898, 8.096000e+03
  %4030 = fmul fast float %3899, 8.096000e+03
  %4031 = fadd fast float %4028, %154
  %4032 = fadd fast float %4029, %155
  %4033 = fadd fast float %4030, %156
  br label %4034

; <label>:4034                                    ; preds = %4027, %3970
  %4035 = phi float [ %3897, %4027 ], [ %4024, %3970 ]
  %4036 = phi float [ %3898, %4027 ], [ %4025, %3970 ]
  %4037 = phi float [ %3899, %4027 ], [ %4026, %3970 ]
  %4038 = phi float [ %4031, %4027 ], [ %3954, %3970 ]
  %4039 = phi float [ %4032, %4027 ], [ %3955, %3970 ]
  %4040 = phi float [ %4033, %4027 ], [ %3956, %3970 ]
  %4041 = phi float [ 0.000000e+00, %4027 ], [ %4021, %3970 ]
  %4042 = phi float [ 0.000000e+00, %4027 ], [ %4022, %3970 ]
  %4043 = phi float [ 0.000000e+00, %4027 ], [ %4023, %3970 ]
  %4044 = fcmp fast olt float %3770, 1.000000e+00
  br i1 %4044, label %4045, label %4076, !dx.controlflow.hints !130

; <label>:4045                                    ; preds = %4034
  %4046 = fmul fast float %4037, %3768
  %4047 = fmul fast float %4036, %3769
  %4048 = fsub fast float %4046, %4047
  %4049 = fmul fast float %4035, %3769
  %4050 = fmul fast float %4037, %3767
  %4051 = fsub fast float %4049, %4050
  %4052 = fmul fast float %4036, %3767
  %4053 = fmul fast float %4035, %3768
  %4054 = fsub fast float %4052, %4053
  %4055 = fmul fast float %4048, 2.000000e+00
  %4056 = fmul fast float %4051, 2.000000e+00
  %4057 = fmul fast float %4054, 2.000000e+00
  %4058 = fmul fast float %4055, %3770
  %4059 = fmul fast float %4056, %3770
  %4060 = fmul fast float %4057, %3770
  %4061 = fmul fast float %4057, %3768
  %4062 = fmul fast float %4056, %3769
  %4063 = fmul fast float %4055, %3769
  %4064 = fmul fast float %4057, %3767
  %4065 = fmul fast float %4056, %3767
  %4066 = fmul fast float %4055, %3768
  %4067 = fadd fast float %4061, %4035
  %4068 = fadd fast float %4067, %4058
  %4069 = fsub fast float %4068, %4062
  %4070 = fsub fast float %4036, %4064
  %4071 = fadd fast float %4070, %4059
  %4072 = fadd fast float %4071, %4063
  %4073 = fadd fast float %4060, %4037
  %4074 = fsub fast float %4073, %4066
  %4075 = fadd fast float %4074, %4065
  br label %4076

; <label>:4076                                    ; preds = %4045, %4034
  %4077 = phi float [ %4069, %4045 ], [ %4035, %4034 ]
  %4078 = phi float [ %4072, %4045 ], [ %4036, %4034 ]
  %4079 = phi float [ %4075, %4045 ], [ %4037, %4034 ]
  br i1 %3902, label %4080, label %4103

; <label>:4080                                    ; preds = %4076
  %4081 = fsub fast float %4038, %154
  %4082 = fsub fast float %4039, %155
  %4083 = fsub fast float %4040, %156
  %4084 = fsub fast float %4038, %3751
  %4085 = fsub fast float %4039, %3752
  %4086 = fsub fast float %4040, %3753
  %4087 = call float @dx.op.dot3.f32(i32 55, float %4081, float %4082, float %4083, float %4081, float %4082, float %4083)  ; Dot3(ax,ay,az,bx,by,bz)
  %4088 = call float @dx.op.dot3.f32(i32 55, float %4084, float %4085, float %4086, float %4084, float %4085, float %4086)  ; Dot3(ax,ay,az,bx,by,bz)
  %4089 = fadd fast float %4088, 0x3EE4F8B580000000
  %4090 = fdiv fast float %4087, %4089
  %4091 = bitcast float %4090 to i32
  %4092 = ashr i32 %4091, 1
  %4093 = add nsw i32 %4092, 532487669
  %4094 = bitcast i32 %4093 to float
  %4095 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4096 = fmul fast float %4095, 0x4009981AE0000000
  %4097 = fsub fast float 0x40111BBD80000000, %4096
  %4098 = fmul fast float %4097, %4095
  %4099 = fadd fast float %4098, 0xC0009F6020000000
  %4100 = fmul fast float %4099, %4095
  %4101 = fadd fast float %4100, 1.000000e+00
  %4102 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  br label %4106

; <label>:4103                                    ; preds = %4076
  %4104 = icmp ne i32 %3796, -1
  %4105 = zext i1 %4104 to i32
  br label %4106

; <label>:4106                                    ; preds = %4103, %4080
  %4107 = phi float [ 0.000000e+00, %4103 ], [ %4102, %4080 ]
  %4108 = phi i32 [ %4105, %4103 ], [ 0, %4080 ]
  %4109 = fmul float %4107, 5.000000e+00
  %4110 = fsub float 5.000000e+00, %4109
  %4111 = icmp ne i32 %4108, 0
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 3
  %4114 = fadd fast float %4113, %4110
  %4115 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4114)  ; FMax(a,b)
  %4116 = call float @dx.op.unary.f32(i32 6, float %4077)  ; FAbs(value)
  %4117 = call float @dx.op.unary.f32(i32 6, float %4078)  ; FAbs(value)
  %4118 = fadd fast float %4117, %4116
  %4119 = call float @dx.op.unary.f32(i32 6, float %4079)  ; FAbs(value)
  %4120 = fadd fast float %4118, %4119
  %4121 = fcmp fast oeq float %4120, 0.000000e+00
  %4122 = fdiv fast float 1.000000e+00, %4120
  %4123 = select i1 %4121, float 1.000000e+00, float %4122
  %4124 = fmul fast float %4123, %4077
  %4125 = fmul fast float %4123, %4078
  %4126 = call float @dx.op.unary.f32(i32 6, float %4125)  ; FAbs(value)
  %4127 = call float @dx.op.unary.f32(i32 6, float %4124)  ; FAbs(value)
  %4128 = fsub fast float 1.000000e+00, %4126
  %4129 = fsub fast float 1.000000e+00, %4127
  %4130 = fcmp fast oge float %4124, 0.000000e+00
  %4131 = fcmp fast oge float %4125, 0.000000e+00
  %4132 = select i1 %4130, float 1.000000e+00, float -1.000000e+00
  %4133 = select i1 %4131, float 1.000000e+00, float -1.000000e+00
  %4134 = fcmp fast ole float %4079, 0.000000e+00
  %4135 = fmul fast float %4132, %4128
  %4136 = fmul fast float %4133, %4129
  %4137 = select i1 %4134, float %4135, float %4124
  %4138 = select i1 %4134, float %4136, float %4125
  %4139 = fmul fast float %4137, 5.000000e-01
  %4140 = fmul fast float %4138, 5.000000e-01
  %4141 = fadd fast float %4139, 5.000000e-01
  %4142 = fadd fast float %4140, 5.000000e-01
  %4143 = uitofp i32 %3794 to float
  %4144 = call float @dx.op.binary.f32(i32 36, float %4115, float 3.000000e+00)  ; FMin(a,b)
  %4145 = fadd fast float %4144, 2.000000e+00
  %4146 = call float @dx.op.unary.f32(i32 21, float %4145)  ; Exp(value)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4112, 1
  %4148 = fmul fast float %4147, %4146
  %4149 = fmul fast float %4148, 2.000000e+00
  %4150 = fsub fast float 1.000000e+00, %4149
  %4151 = fmul fast float %4141, %4150
  %4152 = fmul fast float %4142, %4150
  %4153 = fadd fast float %4151, %4148
  %4154 = fadd fast float %4152, %4148
  %4155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %60, float %4153, float %4154, float %4143, float undef, i32 0, i32 0, i32 undef, float %4115)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4156 = extractvalue %dx.types.ResRet.f32 %4155, 0
  %4157 = extractvalue %dx.types.ResRet.f32 %4155, 1
  %4158 = extractvalue %dx.types.ResRet.f32 %4155, 2
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 3
  %4161 = fmul fast float %4160, %3764
  %4162 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %4161)  ; FMin(a,b)
  %4163 = select i1 %4111, float %4162, float %4161
  %4164 = fmul fast float %4156, %3844
  %4165 = fmul fast float %4164, %4163
  %4166 = fmul fast float %4157, %3844
  %4167 = fmul fast float %4166, %4163
  %4168 = fmul fast float %4158, %3844
  %4169 = fmul fast float %4168, %4163
  %4170 = fadd fast float %4165, %3731
  %4171 = fadd fast float %4167, %3732
  %4172 = fadd fast float %4169, %3733
  %4173 = fsub fast float %3742, %3844
  %4174 = and i32 %3859, 255
  %4175 = uitofp i32 %4174 to float
  %4176 = fptoui float %4175 to i32
  %4177 = icmp eq i32 %3854, 1
  %4178 = zext i1 %4177 to i32
  %4179 = add i32 %4178, %4176
  %4180 = uitofp i32 %4179 to float
  %4181 = fptoui float %4180 to i32
  %4182 = shl i32 %4181, 8
  %4183 = and i32 %4182, 65280
  %4184 = or i32 %4183, %3862
  %4185 = fmul fast float %4041, %3844
  %4186 = fmul fast float %4042, %3844
  %4187 = fmul fast float %4043, %3844
  %4188 = fadd fast float %4185, %3738
  %4189 = fadd fast float %4186, %3739
  %4190 = fadd fast float %4187, %3740
  %4191 = fmul fast float %4143, 0x3FE3C6EF40000000
  %4192 = call float @dx.op.unary.f32(i32 22, float %4191)  ; Frc(value)
  %4193 = fadd fast float %4192, 0x3FE5555560000000
  %4194 = fadd fast float %4192, 0x3FD5555560000000
  %4195 = fsub fast float -0.000000e+00, %4192
  %4196 = fsub fast float -0.000000e+00, %4193
  %4197 = fsub fast float -0.000000e+00, %4194
  %4198 = fcmp fast oge float %4192, %4195
  %4199 = fcmp fast oge float %4193, %4196
  %4200 = fcmp fast oge float %4194, %4197
  %4201 = call float @dx.op.unary.f32(i32 6, float %4192)  ; FAbs(value)
  %4202 = call float @dx.op.unary.f32(i32 6, float %4193)  ; FAbs(value)
  %4203 = call float @dx.op.unary.f32(i32 6, float %4194)  ; FAbs(value)
  %4204 = call float @dx.op.unary.f32(i32 22, float %4201)  ; Frc(value)
  %4205 = call float @dx.op.unary.f32(i32 22, float %4202)  ; Frc(value)
  %4206 = call float @dx.op.unary.f32(i32 22, float %4203)  ; Frc(value)
  %4207 = fsub fast float -0.000000e+00, %4204
  %4208 = fsub fast float -0.000000e+00, %4205
  %4209 = fsub fast float -0.000000e+00, %4206
  %4210 = select i1 %4198, float %4204, float %4207
  %4211 = select i1 %4199, float %4205, float %4208
  %4212 = select i1 %4200, float %4206, float %4209
  %4213 = fmul fast float %4210, 6.000000e+00
  %4214 = fmul fast float %4211, 6.000000e+00
  %4215 = fmul fast float %4212, 6.000000e+00
  %4216 = fadd fast float %4213, -3.000000e+00
  %4217 = fadd fast float %4214, -3.000000e+00
  %4218 = fadd fast float %4215, -3.000000e+00
  %4219 = call float @dx.op.unary.f32(i32 6, float %4216)  ; FAbs(value)
  %4220 = call float @dx.op.unary.f32(i32 6, float %4217)  ; FAbs(value)
  %4221 = call float @dx.op.unary.f32(i32 6, float %4218)  ; FAbs(value)
  %4222 = fadd fast float %4219, -1.000000e+00
  %4223 = fadd fast float %4220, -1.000000e+00
  %4224 = fadd fast float %4221, -1.000000e+00
  %4225 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4226 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4227 = call float @dx.op.unary.f32(i32 7, float %4224)  ; Saturate(value)
  %4228 = fmul fast float %4225, %3844
  %4229 = fmul fast float %4226, %3844
  %4230 = fmul fast float %4227, %3844
  %4231 = fadd fast float %4228, %3734
  %4232 = fadd fast float %4229, %3735
  %4233 = fadd fast float %4230, %3736
  %4234 = icmp eq i32 %3794, 0
  %4235 = select i1 %4234, i32 1, i32 %3737
  %4236 = icmp eq i32 %3741, 0
  br i1 %4236, label %3865, label %4237

; <label>:4237                                    ; preds = %4106
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 0
  %4240 = bitcast float %4239 to i32
  %4241 = lshr i32 %4240, 8
  %4242 = and i32 %4241, 255
  %4243 = uitofp i32 %4242 to float
  %4244 = fptoui float %4243 to i32
  %4245 = icmp eq i32 %4244, 16
  %4246 = bitcast float %4161 to i32
  %4247 = select i1 %4245, i32 %4246, i32 %3730
  %4248 = icmp eq i32 %4244, 17
  %4249 = select i1 %4248, i32 1065353216, i32 %4247
  %4250 = icmp eq i32 %4244, 18
  %4251 = bitcast float %4163 to i32
  %4252 = select i1 %4250, i32 %4251, i32 %4249
  br label %3865

; <label>:4253                                    ; preds = %3865
  br label %4254

; <label>:4254                                    ; preds = %4253, %3688
  %4255 = phi i32 [ %3689, %3688 ], [ %3866, %4253 ]
  %4256 = phi i32 [ %3690, %3688 ], [ %3867, %4253 ]
  %4257 = phi float [ %3691, %3688 ], [ %3868, %4253 ]
  %4258 = phi float [ %3692, %3688 ], [ %3869, %4253 ]
  %4259 = phi float [ %3693, %3688 ], [ %3870, %4253 ]
  %4260 = phi float [ %3694, %3688 ], [ %3871, %4253 ]
  %4261 = phi float [ %3695, %3688 ], [ %3872, %4253 ]
  %4262 = phi float [ %3696, %3688 ], [ %3873, %4253 ]
  %4263 = phi i32 [ %3697, %3688 ], [ %3874, %4253 ]
  %4264 = phi float [ %3698, %3688 ], [ %3875, %4253 ]
  %4265 = phi float [ %3699, %3688 ], [ %3876, %4253 ]
  %4266 = phi float [ %3700, %3688 ], [ %3877, %4253 ]
  %4267 = phi i32 [ %3701, %3688 ], [ %3878, %4253 ]
  %4268 = phi float [ %3702, %3688 ], [ %3879, %4253 ]
  %4269 = add i32 %3703, 1
  %4270 = icmp ugt i32 %4269, %3685
  br i1 %4270, label %4271, label %3688, !llvm.loop !131

; <label>:4271                                    ; preds = %4254
  br label %4272

; <label>:4272                                    ; preds = %4271, %3636
  %4273 = phi i32 [ %2265, %3636 ], [ %4255, %4271 ]
  %4274 = phi i32 [ %3606, %3636 ], [ %4256, %4271 ]
  %4275 = phi float [ 0.000000e+00, %3636 ], [ %4257, %4271 ]
  %4276 = phi float [ 0.000000e+00, %3636 ], [ %4258, %4271 ]
  %4277 = phi float [ 0.000000e+00, %3636 ], [ %4259, %4271 ]
  %4278 = phi float [ 0.000000e+00, %3636 ], [ %4260, %4271 ]
  %4279 = phi float [ 0.000000e+00, %3636 ], [ %4261, %4271 ]
  %4280 = phi float [ 0.000000e+00, %3636 ], [ %4262, %4271 ]
  %4281 = phi i32 [ 0, %3636 ], [ %4263, %4271 ]
  %4282 = phi float [ 0.000000e+00, %3636 ], [ %4264, %4271 ]
  %4283 = phi float [ 0.000000e+00, %3636 ], [ %4265, %4271 ]
  %4284 = phi float [ 0.000000e+00, %3636 ], [ %4266, %4271 ]
  %4285 = call float @dx.op.dot3.f32(i32 55, float %4275, float %4276, float %4277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4286 = select i1 %2504, float %4285, float %4276
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4289 = bitcast float %4288 to i32
  %4290 = lshr i32 %4289, 8
  %4291 = and i32 %4290, 255
  %4292 = uitofp i32 %4291 to float
  %4293 = fptoui float %4292 to i32
  %4294 = icmp eq i32 %4293, 13
  br i1 %4294, label %4295, label %4315

; <label>:4295                                    ; preds = %4272
  %4296 = fadd fast float %4278, 1.000000e+00
  %4297 = fadd fast float %4279, 1.000000e+00
  %4298 = fadd fast float %4280, 1.000000e+00
  %4299 = fmul fast float %4296, 5.000000e-01
  %4300 = fmul fast float %4297, 5.000000e-01
  %4301 = fmul fast float %4298, 5.000000e-01
  %4302 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4303 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4304 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4305 = fmul fast float %4302, 1.023000e+03
  %4306 = fmul fast float %4303, 1.023000e+03
  %4307 = fmul fast float %4304, 1.023000e+03
  %4308 = fptoui float %4305 to i32
  %4309 = fptoui float %4306 to i32
  %4310 = fptoui float %4307 to i32
  %4311 = shl i32 %4309, 10
  %4312 = or i32 %4311, %4308
  %4313 = shl i32 %4310, 20
  %4314 = or i32 %4312, %4313
  br label %4315

; <label>:4315                                    ; preds = %4295, %4272
  %4316 = phi i32 [ %4314, %4295 ], [ %4274, %4272 ]
  %4317 = icmp eq i32 %4293, 14
  %4318 = select i1 %4317, i32 %4281, i32 %4316
  %4319 = icmp eq i32 %4293, 22
  br i1 %4319, label %4320, label %4340

; <label>:4320                                    ; preds = %4315
  %4321 = fadd fast float %4282, 1.000000e+00
  %4322 = fadd fast float %4283, 1.000000e+00
  %4323 = fadd fast float %4284, 1.000000e+00
  %4324 = fmul fast float %4321, 5.000000e-01
  %4325 = fmul fast float %4322, 5.000000e-01
  %4326 = fmul fast float %4323, 5.000000e-01
  %4327 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4329 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4330 = fmul fast float %4327, 1.023000e+03
  %4331 = fmul fast float %4328, 1.023000e+03
  %4332 = fmul fast float %4329, 1.023000e+03
  %4333 = fptoui float %4330 to i32
  %4334 = fptoui float %4331 to i32
  %4335 = fptoui float %4332 to i32
  %4336 = shl i32 %4334, 10
  %4337 = or i32 %4336, %4333
  %4338 = shl i32 %4335, 20
  %4339 = or i32 %4337, %4338
  br label %4340

; <label>:4340                                    ; preds = %4320, %4315
  %4341 = phi i32 [ %4339, %4320 ], [ %4318, %4315 ]
  %4342 = fmul fast float %4275, 0x3FD45F3060000000
  %4343 = select i1 %2504, float 0.000000e+00, float %4342
  %4344 = fmul fast float %4286, 0x3FD45F3060000000
  %4345 = fmul fast float %4277, 0x3FD45F3060000000
  %4346 = select i1 %2504, float 0.000000e+00, float %4345
  br label %4347

; <label>:4347                                    ; preds = %4340, %3605
  %4348 = phi i32 [ %4273, %4340 ], [ %2265, %3605 ]
  %4349 = phi i32 [ %4341, %4340 ], [ %3606, %3605 ]
  %4350 = phi float [ %4343, %4340 ], [ %3571, %3605 ]
  %4351 = phi float [ %4344, %4340 ], [ %3572, %3605 ]
  %4352 = phi float [ %4346, %4340 ], [ %3573, %3605 ]
  %4353 = phi i1 [ false, %4340 ], [ true, %3605 ]
  %4354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.i32 %4354, 0
  %4356 = and i32 %4355, 524288
  %4357 = icmp ne i32 %4356, 0
  %4358 = select i1 %4357, float 0.000000e+00, float 1.000000e+00
  %4359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.f32 %4359, 0
  %4361 = bitcast float %4360 to i32
  %4362 = and i32 %4361, 255
  %4363 = uitofp i32 %4362 to float
  %4364 = fptoui float %4363 to i32
  %4365 = icmp eq i32 %4364, 38
  %4366 = select i1 %4365, i32 0, i32 %4349
  %4367 = lshr i32 %4361, 8
  %4368 = and i32 %4367, 255
  %4369 = uitofp i32 %4368 to float
  %4370 = fptoui float %4369 to i32
  %4371 = icmp eq i32 %4370, 24
  br i1 %4371, label %4372, label %4383

; <label>:4372                                    ; preds = %4347
  %4373 = fadd fast float %2536, 1.000000e+00
  %4374 = fmul fast float %4373, 5.000000e-01
  %4375 = select i1 %2538, float %4374, float 1.000000e+00
  %4376 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4377 = fmul fast float %4376, 1.023000e+03
  %4378 = fptoui float %4377 to i32
  %4379 = shl i32 %4378, 10
  %4380 = or i32 %4379, %4378
  %4381 = shl i32 %4378, 20
  %4382 = or i32 %4380, %4381
  br label %4383

; <label>:4383                                    ; preds = %4372, %4347
  %4384 = phi i32 [ %4366, %4347 ], [ %4382, %4372 ]
  %4385 = xor i1 %4357, true
  %4386 = zext i1 %4385 to i32
  br i1 %4357, label %4387, label %4671

; <label>:4387                                    ; preds = %4383
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.CBufRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.CBufRet.f32 %4388, 2
  %4392 = extractvalue %dx.types.CBufRet.f32 %4388, 3
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 0
  %4395 = extractvalue %dx.types.CBufRet.f32 %4393, 1
  %4396 = extractvalue %dx.types.CBufRet.f32 %4393, 2
  %4397 = extractvalue %dx.types.CBufRet.f32 %4393, 3
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 0
  %4400 = extractvalue %dx.types.CBufRet.f32 %4398, 1
  %4401 = extractvalue %dx.types.CBufRet.f32 %4398, 2
  %4402 = extractvalue %dx.types.CBufRet.f32 %4398, 3
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 0
  %4405 = extractvalue %dx.types.CBufRet.f32 %4403, 1
  %4406 = extractvalue %dx.types.CBufRet.f32 %4403, 2
  %4407 = extractvalue %dx.types.CBufRet.f32 %4403, 3
  %4408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4408, 0
  %4410 = extractvalue %dx.types.CBufRet.f32 %4408, 1
  %4411 = extractvalue %dx.types.CBufRet.f32 %4408, 2
  %4412 = extractvalue %dx.types.CBufRet.f32 %4408, 3
  %4413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.CBufRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.CBufRet.f32 %4413, 2
  %4417 = extractvalue %dx.types.CBufRet.f32 %4413, 3
  %4418 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float %2511, float %2512, float %2513)  ; Dot3(ax,ay,az,bx,by,bz)
  %4419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %4420 = extractvalue %dx.types.CBufRet.f32 %4419, 1
  %4421 = extractvalue %dx.types.CBufRet.f32 %4419, 0
  %4422 = select i1 %116, float %4421, float %4420
  %4423 = fmul fast float %4418, 8.000000e+00
  %4424 = fmul fast float %4423, %4422
  %4425 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4426 = fcmp fast ogt float %4425, 0.000000e+00
  br i1 %4426, label %4427, label %4645, !dx.controlflow.hints !132

; <label>:4427                                    ; preds = %4387
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 1
  %4430 = fmul fast float %1766, 2.000000e+00
  %4431 = fmul fast float %1767, 2.000000e+00
  %4432 = fadd fast float %4430, -1.000000e+00
  %4433 = fadd fast float %4431, -1.000000e+00
  %4434 = fmul fast float %4429, %4432
  %4435 = fmul fast float %4429, %4433
  %4436 = fadd fast float %4434, %99
  %4437 = fadd fast float %4435, %100
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 2
  %4440 = extractvalue %dx.types.CBufRet.f32 %4438, 3
  %4441 = fmul fast float %4436, %4439
  %4442 = fmul fast float %4437, %4440
  %4443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %63, float %4441, float %4442, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = fcmp fast une float %4444, 0xFFF0000000000000
  %4446 = fcmp fast une float %4444, 0x7FF0000000000000
  %4447 = and i1 %4445, %4446
  %4448 = call float @dx.op.unary.f32(i32 6, float %4444)  ; FAbs(value)
  %4449 = fsub fast float 1.000000e+00, %4448
  %4450 = select i1 %4447, float 1.000000e+00, float 0.000000e+00
  %4451 = fmul fast float %4450, %4425
  %4452 = fcmp fast ogt float %4451, 0.000000e+00
  br i1 %4452, label %4453, label %4645, !dx.controlflow.hints !133

; <label>:4453                                    ; preds = %4427
  %4454 = fmul fast float %4389, %154
  %4455 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4390, float %4454)  ; FMad(a,b,c)
  %4456 = call float @dx.op.tertiary.f32(i32 46, float %156, float %4391, float %4455)  ; FMad(a,b,c)
  %4457 = fadd fast float %4456, %4392
  %4458 = fmul fast float %4394, %154
  %4459 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4395, float %4458)  ; FMad(a,b,c)
  %4460 = call float @dx.op.tertiary.f32(i32 46, float %156, float %4396, float %4459)  ; FMad(a,b,c)
  %4461 = fadd fast float %4460, %4397
  %4462 = fmul fast float %4399, %154
  %4463 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4400, float %4462)  ; FMad(a,b,c)
  %4464 = call float @dx.op.tertiary.f32(i32 46, float %156, float %4401, float %4463)  ; FMad(a,b,c)
  %4465 = fadd fast float %4464, %4402
  %4466 = fdiv fast float 1.000000e+00, %4465
  %4467 = fmul fast float %4466, %4457
  %4468 = fmul fast float %4466, %4461
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4471 = extractvalue %dx.types.CBufRet.f32 %4469, 1
  %4472 = fmul fast float %4467, %4470
  %4473 = fmul fast float %4468, %4471
  %4474 = extractvalue %dx.types.CBufRet.f32 %4469, 2
  %4475 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4476 = fadd fast float %4472, %4474
  %4477 = fadd fast float %4473, %4475
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 3
  %4480 = fmul fast float %4479, %2511
  %4481 = fmul fast float %4479, %2512
  %4482 = fmul fast float %4479, %2513
  %4483 = fadd fast float %4480, %154
  %4484 = fadd fast float %4481, %155
  %4485 = fadd fast float %4482, %156
  %4486 = fmul fast float %4483, %4389
  %4487 = call float @dx.op.tertiary.f32(i32 46, float %4484, float %4390, float %4486)  ; FMad(a,b,c)
  %4488 = call float @dx.op.tertiary.f32(i32 46, float %4485, float %4391, float %4487)  ; FMad(a,b,c)
  %4489 = fadd fast float %4488, %4392
  %4490 = fmul fast float %4483, %4394
  %4491 = call float @dx.op.tertiary.f32(i32 46, float %4484, float %4395, float %4490)  ; FMad(a,b,c)
  %4492 = call float @dx.op.tertiary.f32(i32 46, float %4485, float %4396, float %4491)  ; FMad(a,b,c)
  %4493 = fadd fast float %4492, %4397
  %4494 = fmul fast float %4483, %4399
  %4495 = call float @dx.op.tertiary.f32(i32 46, float %4484, float %4400, float %4494)  ; FMad(a,b,c)
  %4496 = call float @dx.op.tertiary.f32(i32 46, float %4485, float %4401, float %4495)  ; FMad(a,b,c)
  %4497 = fadd fast float %4496, %4402
  %4498 = fdiv fast float 1.000000e+00, %4497
  %4499 = fmul fast float %4498, %4489
  %4500 = fmul fast float %4498, %4493
  %4501 = fmul fast float %4476, 2.000000e+00
  %4502 = fadd fast float %4501, -1.000000e+00
  %4503 = call float @dx.op.unary.f32(i32 6, float %4502)  ; FAbs(value)
  %4504 = fmul fast float %4503, 5.000000e+00
  %4505 = fadd fast float %4504, -4.000000e+00
  %4506 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4507 = fsub fast float %4467, %4499
  %4508 = fmul fast float %4470, %4507
  %4509 = fmul fast float %4508, %4506
  %4510 = fsub fast float %4499, %4467
  %4511 = fmul fast float %4470, %4510
  %4512 = fadd fast float %4511, %4509
  %4513 = fsub fast float %4500, %4468
  %4514 = fmul fast float %4471, %4513
  %4515 = fmul fast float %4512, %4449
  %4516 = fmul fast float %4514, %4449
  %4517 = fadd fast float %4515, %4476
  %4518 = fadd fast float %4516, %4477
  %4519 = fsub fast float %4498, %4466
  %4520 = fmul fast float %4519, %4449
  %4521 = fadd fast float %4520, %4466
  %4522 = fdiv fast float 1.000000e+00, %4521
  %4523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %62, float %4517, float %4518, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4524 = extractvalue %dx.types.ResRet.f32 %4523, 0
  %4525 = extractvalue %dx.types.ResRet.f32 %4523, 1
  %4526 = extractvalue %dx.types.ResRet.f32 %4523, 2
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 1
  %4529 = fmul fast float %4528, %4524
  %4530 = fmul fast float %4528, %4525
  %4531 = fmul fast float %4528, %4526
  %4532 = call float @dx.op.binary.f32(i32 35, float %4522, float 0x3810000000000000)  ; FMax(a,b)
  %4533 = fdiv fast float %4465, %4532
  %4534 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.f32 %4535, 0
  %4537 = extractvalue %dx.types.CBufRet.f32 %4535, 1
  %4538 = extractvalue %dx.types.CBufRet.f32 %4535, 2
  %4539 = fadd fast float %4536, %154
  %4540 = fadd fast float %4537, %155
  %4541 = fadd fast float %4538, %156
  %4542 = fmul fast float %4539, %4404
  %4543 = call float @dx.op.tertiary.f32(i32 46, float %4540, float %4405, float %4542)  ; FMad(a,b,c)
  %4544 = call float @dx.op.tertiary.f32(i32 46, float %4541, float %4406, float %4543)  ; FMad(a,b,c)
  %4545 = fadd fast float %4544, %4407
  %4546 = fmul fast float %4539, %4409
  %4547 = call float @dx.op.tertiary.f32(i32 46, float %4540, float %4410, float %4546)  ; FMad(a,b,c)
  %4548 = call float @dx.op.tertiary.f32(i32 46, float %4541, float %4411, float %4547)  ; FMad(a,b,c)
  %4549 = fadd fast float %4548, %4412
  %4550 = fmul fast float %4539, %4414
  %4551 = call float @dx.op.tertiary.f32(i32 46, float %4540, float %4415, float %4550)  ; FMad(a,b,c)
  %4552 = call float @dx.op.tertiary.f32(i32 46, float %4541, float %4416, float %4551)  ; FMad(a,b,c)
  %4553 = fadd fast float %4552, %4417
  %4554 = fdiv fast float 1.000000e+00, %4553
  %4555 = fmul fast float %4554, %4545
  %4556 = fmul fast float %4554, %4549
  %4557 = fmul fast float %4555, %4470
  %4558 = fmul fast float %4556, %4471
  %4559 = fadd fast float %4557, %4474
  %4560 = fadd fast float %4558, %4475
  %4561 = fadd fast float %4480, %4539
  %4562 = fadd fast float %4481, %4540
  %4563 = fadd fast float %4482, %4541
  %4564 = fmul fast float %4561, %4404
  %4565 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4405, float %4564)  ; FMad(a,b,c)
  %4566 = call float @dx.op.tertiary.f32(i32 46, float %4563, float %4406, float %4565)  ; FMad(a,b,c)
  %4567 = fadd fast float %4566, %4407
  %4568 = fmul fast float %4561, %4409
  %4569 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4410, float %4568)  ; FMad(a,b,c)
  %4570 = call float @dx.op.tertiary.f32(i32 46, float %4563, float %4411, float %4569)  ; FMad(a,b,c)
  %4571 = fadd fast float %4570, %4412
  %4572 = fmul fast float %4561, %4414
  %4573 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4415, float %4572)  ; FMad(a,b,c)
  %4574 = call float @dx.op.tertiary.f32(i32 46, float %4563, float %4416, float %4573)  ; FMad(a,b,c)
  %4575 = fadd fast float %4574, %4417
  %4576 = fdiv fast float 1.000000e+00, %4575
  %4577 = fmul fast float %4576, %4567
  %4578 = fmul fast float %4576, %4571
  %4579 = fmul fast float %4559, 2.000000e+00
  %4580 = fadd fast float %4579, -1.000000e+00
  %4581 = call float @dx.op.unary.f32(i32 6, float %4580)  ; FAbs(value)
  %4582 = fmul fast float %4581, 5.000000e+00
  %4583 = fadd fast float %4582, -4.000000e+00
  %4584 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4585 = fsub fast float %4555, %4577
  %4586 = fmul fast float %4470, %4585
  %4587 = fmul fast float %4586, %4584
  %4588 = fsub fast float %4577, %4555
  %4589 = fmul fast float %4470, %4588
  %4590 = fadd fast float %4589, %4587
  %4591 = fsub fast float %4578, %4556
  %4592 = fmul fast float %4471, %4591
  %4593 = fmul fast float %4590, %4449
  %4594 = fmul fast float %4592, %4449
  %4595 = fadd fast float %4593, %4559
  %4596 = fadd fast float %4594, %4560
  %4597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %62, float %4595, float %4596, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = extractvalue %dx.types.ResRet.f32 %4597, 1
  %4600 = extractvalue %dx.types.ResRet.f32 %4597, 2
  %4601 = extractvalue %dx.types.CBufRet.f32 %4527, 2
  %4602 = fmul fast float %4601, %4598
  %4603 = fmul fast float %4601, %4599
  %4604 = fmul fast float %4601, %4600
  %4605 = and i32 %2371, 255
  %4606 = uitofp i32 %4605 to float
  %4607 = fmul fast float %4606, 0x3F70101020000000
  %4608 = fmul fast float %4607, %4534
  %4609 = extractvalue %dx.types.CBufRet.f32 %4419, 2
  %4610 = fadd fast float %4609, %4608
  %4611 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4612 = call float @dx.op.binary.f32(i32 35, float %4529, float 0x3810000000000000)  ; FMax(a,b)
  %4613 = call float @dx.op.binary.f32(i32 35, float %4530, float 0x3810000000000000)  ; FMax(a,b)
  %4614 = call float @dx.op.binary.f32(i32 35, float %4531, float 0x3810000000000000)  ; FMax(a,b)
  %4615 = call float @dx.op.unary.f32(i32 23, float %4612)  ; Log(value)
  %4616 = call float @dx.op.unary.f32(i32 23, float %4613)  ; Log(value)
  %4617 = call float @dx.op.unary.f32(i32 23, float %4614)  ; Log(value)
  %4618 = call float @dx.op.binary.f32(i32 35, float %4602, float 0x3810000000000000)  ; FMax(a,b)
  %4619 = call float @dx.op.binary.f32(i32 35, float %4603, float 0x3810000000000000)  ; FMax(a,b)
  %4620 = call float @dx.op.binary.f32(i32 35, float %4604, float 0x3810000000000000)  ; FMax(a,b)
  %4621 = call float @dx.op.unary.f32(i32 23, float %4618)  ; Log(value)
  %4622 = call float @dx.op.unary.f32(i32 23, float %4619)  ; Log(value)
  %4623 = call float @dx.op.unary.f32(i32 23, float %4620)  ; Log(value)
  %4624 = fsub fast float %4615, %4621
  %4625 = fsub fast float %4616, %4622
  %4626 = fsub fast float %4617, %4623
  %4627 = fmul fast float %4624, %4611
  %4628 = fmul fast float %4625, %4611
  %4629 = fmul fast float %4626, %4611
  %4630 = fadd fast float %4627, %4621
  %4631 = fadd fast float %4628, %4622
  %4632 = fadd fast float %4629, %4623
  %4633 = call float @dx.op.unary.f32(i32 21, float %4630)  ; Exp(value)
  %4634 = call float @dx.op.unary.f32(i32 21, float %4631)  ; Exp(value)
  %4635 = call float @dx.op.unary.f32(i32 21, float %4632)  ; Exp(value)
  %4636 = select i1 %2504, float 0.000000e+00, float %4634
  %4637 = select i1 %2504, float 0.000000e+00, float %4635
  %4638 = fmul fast float %4596, 2.000000e+00
  %4639 = fadd fast float %4638, -1.000000e+00
  %4640 = fmul fast float %4639, %4639
  %4641 = fsub fast float 1.000000e+00, %4640
  %4642 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4643 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4644 = fmul fast float %4643, %4451
  br label %4645

; <label>:4645                                    ; preds = %4453, %4427, %4387
  %4646 = phi float [ %4633, %4453 ], [ 0.000000e+00, %4427 ], [ 0.000000e+00, %4387 ]
  %4647 = phi float [ %4636, %4453 ], [ 0.000000e+00, %4427 ], [ 0.000000e+00, %4387 ]
  %4648 = phi float [ %4637, %4453 ], [ 0.000000e+00, %4427 ], [ 0.000000e+00, %4387 ]
  %4649 = phi float [ %4644, %4453 ], [ 0.000000e+00, %4427 ], [ 0.000000e+00, %4387 ]
  %4650 = phi float [ %4449, %4453 ], [ %4449, %4427 ], [ 0.000000e+00, %4387 ]
  %4651 = phi float [ %4644, %4453 ], [ %4451, %4427 ], [ 0.000000e+00, %4387 ]
  %4652 = icmp eq i32 %4370, 25
  br i1 %4652, label %4653, label %4656

; <label>:4653                                    ; preds = %4645
  %4654 = call float @dx.op.unary.f32(i32 6, float %4650)  ; FAbs(value)
  %4655 = bitcast float %4654 to i32
  br label %4656

; <label>:4656                                    ; preds = %4653, %4645
  %4657 = phi i32 [ %4655, %4653 ], [ %4384, %4645 ]
  %4658 = icmp eq i32 %4370, 26
  %4659 = bitcast float %4651 to i32
  %4660 = select i1 %4658, i32 %4659, i32 %4657
  %4661 = icmp eq i32 %4370, 27
  %4662 = select i1 %4661, i32 0, i32 %4660
  %4663 = fcmp fast olt float %4649, 1.000000e+00
  %4664 = or i1 %4663, %4385
  %4665 = zext i1 %4664 to i32
  %4666 = fmul fast float %4649, %4358
  %4667 = fsub fast float %4649, %4666
  %4668 = fmul fast float %4667, %4646
  %4669 = fmul fast float %4667, %4647
  %4670 = fmul fast float %4667, %4648
  br label %4671

; <label>:4671                                    ; preds = %4656, %4383
  %4672 = phi i32 [ %4384, %4383 ], [ %4662, %4656 ]
  %4673 = phi float [ 0.000000e+00, %4383 ], [ %4667, %4656 ]
  %4674 = phi float [ 0.000000e+00, %4383 ], [ %4668, %4656 ]
  %4675 = phi float [ 0.000000e+00, %4383 ], [ %4669, %4656 ]
  %4676 = phi float [ 0.000000e+00, %4383 ], [ %4670, %4656 ]
  %4677 = phi i32 [ %4386, %4383 ], [ %4665, %4656 ]
  %4678 = icmp ne i32 %4677, 0
  %4679 = add i32 %4370, -13
  %4680 = icmp ult i32 %4679, 2
  %4681 = or i1 %4680, %4678
  %4682 = icmp eq i32 %4370, 22
  %4683 = or i1 %4681, %4682
  br i1 %4683, label %4684, label %5418

; <label>:4684                                    ; preds = %4671
  %4685 = select i1 %4353, float %3533, float 1.000000e+00
  %4686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4686, 2
  %4688 = extractvalue %dx.types.CBufRet.f32 %4686, 3
  %4689 = fmul fast float %4687, %99
  %4690 = fmul fast float %4688, %100
  %4691 = fptoui float %4689 to i32
  %4692 = fptoui float %4690 to i32
  %4693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4694 = extractvalue %dx.types.CBufRet.f32 %4693, 0
  %4695 = extractvalue %dx.types.CBufRet.f32 %4693, 2
  %4696 = extractvalue %dx.types.CBufRet.f32 %4693, 3
  %4697 = fadd fast float %88, -4.000000e+00
  %4698 = call float @dx.op.binary.f32(i32 35, float %4697, float 0.000000e+00)  ; FMax(a,b)
  %4699 = fadd fast float %4698, %4694
  %4700 = fmul fast float %4699, %4695
  %4701 = call float @dx.op.unary.f32(i32 23, float %4700)  ; Log(value)
  %4702 = fmul fast float %4701, %4696
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 2
  %4705 = fmul fast float %4702, %4704
  %4706 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4708 = extractvalue %dx.types.CBufRet.i32 %4707, 1
  %4709 = add i32 %4708, -1
  %4710 = uitofp i32 %4708 to float
  %4711 = fmul fast float %4710, %4706
  %4712 = fptoui float %4711 to i32
  %4713 = call i32 @dx.op.binary.i32(i32 40, i32 %4712, i32 %4709)  ; UMin(a,b)
  %4714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.i32 %4714, 2
  %4716 = extractvalue %dx.types.CBufRet.i32 %4714, 3
  %4717 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4692, i32 %4715, i32 %4691)  ; UMad(a,b,c)
  %4718 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4713, i32 %4716, i32 %4717)  ; UMad(a,b,c)
  %4719 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %4720 = fptoui float %4719 to i32
  %4721 = lshr i32 %4720, 5
  %4722 = call i32 @dx.op.binary.i32(i32 40, i32 %4721, i32 8191)  ; UMin(a,b)
  %4723 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.i32 %4723, 2
  %4725 = add nsw i32 %4724, -1
  %4726 = call i32 @dx.op.binary.i32(i32 37, i32 %4725, i32 0)  ; IMax(a,b)
  %4727 = shl i32 %4722, 2
  %4728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4727, i32 undef)  ; BufferLoad(srv,index,wot)
  %4729 = extractvalue %dx.types.ResRet.i32 %4728, 0
  %4730 = lshr i32 %4729, 16
  %4731 = and i32 %4729, 65535
  %4732 = lshr i32 %4729, 21
  %4733 = lshr i32 %4731, 5
  %4734 = call i32 @dx.op.binary.i32(i32 40, i32 %4733, i32 %4726)  ; UMin(a,b)
  %4735 = icmp ugt i32 %4732, %4734
  br i1 %4735, label %5330, label %4736

; <label>:4736                                    ; preds = %4684
  br label %4737

; <label>:4737                                    ; preds = %5312, %4736
  %4738 = phi i32 [ %5313, %5312 ], [ %4348, %4736 ]
  %4739 = phi i32 [ %5314, %5312 ], [ %4672, %4736 ]
  %4740 = phi float [ %5315, %5312 ], [ 0.000000e+00, %4736 ]
  %4741 = phi float [ %5316, %5312 ], [ 0.000000e+00, %4736 ]
  %4742 = phi float [ %5317, %5312 ], [ 0.000000e+00, %4736 ]
  %4743 = phi float [ %5318, %5312 ], [ 0.000000e+00, %4736 ]
  %4744 = phi float [ %5319, %5312 ], [ 0.000000e+00, %4736 ]
  %4745 = phi float [ %5320, %5312 ], [ 0.000000e+00, %4736 ]
  %4746 = phi i32 [ %5321, %5312 ], [ 0, %4736 ]
  %4747 = phi float [ %5322, %5312 ], [ 0.000000e+00, %4736 ]
  %4748 = phi float [ %5323, %5312 ], [ 0.000000e+00, %4736 ]
  %4749 = phi float [ %5324, %5312 ], [ 0.000000e+00, %4736 ]
  %4750 = phi i32 [ %5325, %5312 ], [ 1, %4736 ]
  %4751 = phi float [ %5326, %5312 ], [ 1.000000e+00, %4736 ]
  %4752 = phi i32 [ %5327, %5312 ], [ %4732, %4736 ]
  %4753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.i32 %4753, 2
  %4755 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4718, i32 %4754, i32 %4752)  ; UMad(a,b,c)
  %4756 = shl i32 %4755, 2
  %4757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4756, i32 undef)  ; BufferLoad(srv,index,wot)
  %4758 = extractvalue %dx.types.ResRet.i32 %4757, 0
  %4759 = shl i32 %4752, 5
  %4760 = sub nsw i32 %4730, %4759
  %4761 = call i32 @dx.op.binary.i32(i32 37, i32 %4760, i32 0)  ; IMax(a,b)
  %4762 = call i32 @dx.op.binary.i32(i32 38, i32 %4761, i32 31)  ; IMin(a,b)
  %4763 = sub nsw i32 1, %4730
  %4764 = add nsw i32 %4763, %4731
  %4765 = call i32 @dx.op.binary.i32(i32 37, i32 %4764, i32 0)  ; IMax(a,b)
  %4766 = call i32 @dx.op.binary.i32(i32 38, i32 %4765, i32 32)  ; IMin(a,b)
  %4767 = and i32 %4766, 31
  %4768 = shl i32 -1, %4767
  %4769 = xor i32 %4768, -1
  %4770 = and i32 %4762, 31
  %4771 = shl i32 %4769, %4770
  %4772 = icmp eq i32 %4766, 32
  %4773 = select i1 %4772, i32 -1, i32 %4771
  %4774 = and i32 %4773, %4758
  %4775 = icmp eq i32 %4774, 0
  br i1 %4775, label %5312, label %4776

; <label>:4776                                    ; preds = %4737
  br label %4777

; <label>:4777                                    ; preds = %4914, %4776
  %4778 = phi i32 [ %4915, %4914 ], [ %4738, %4776 ]
  %4779 = phi i32 [ %4916, %4914 ], [ %4739, %4776 ]
  %4780 = phi float [ %4917, %4914 ], [ %4740, %4776 ]
  %4781 = phi float [ %4918, %4914 ], [ %4741, %4776 ]
  %4782 = phi float [ %4919, %4914 ], [ %4742, %4776 ]
  %4783 = phi float [ %4920, %4914 ], [ %4743, %4776 ]
  %4784 = phi float [ %4921, %4914 ], [ %4744, %4776 ]
  %4785 = phi float [ %4922, %4914 ], [ %4745, %4776 ]
  %4786 = phi i32 [ %4923, %4914 ], [ %4746, %4776 ]
  %4787 = phi float [ %4924, %4914 ], [ %4747, %4776 ]
  %4788 = phi float [ %4925, %4914 ], [ %4748, %4776 ]
  %4789 = phi float [ %4926, %4914 ], [ %4749, %4776 ]
  %4790 = phi i32 [ %4927, %4914 ], [ %4750, %4776 ]
  %4791 = phi float [ %4928, %4914 ], [ %4751, %4776 ]
  %4792 = phi i32 [ %4797, %4914 ], [ %4774, %4776 ]
  %4793 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4792)  ; FirstbitLo(value)
  %4794 = add i32 %4793, %4759
  %4795 = and i32 %4793, 31
  %4796 = shl i32 1, %4795
  %4797 = xor i32 %4796, %4792
  %4798 = mul i32 %4794, 72
  %4799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4798, i32 undef)  ; BufferLoad(srv,index,wot)
  %4800 = extractvalue %dx.types.ResRet.f32 %4799, 0
  %4801 = extractvalue %dx.types.ResRet.f32 %4799, 1
  %4802 = extractvalue %dx.types.ResRet.f32 %4799, 2
  %4803 = add i32 %4798, 12
  %4804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4803, i32 undef)  ; BufferLoad(srv,index,wot)
  %4805 = extractvalue %dx.types.ResRet.i32 %4804, 0
  %4806 = add i32 %4798, 16
  %4807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4806, i32 undef)  ; BufferLoad(srv,index,wot)
  %4808 = extractvalue %dx.types.ResRet.f32 %4807, 0
  %4809 = extractvalue %dx.types.ResRet.f32 %4807, 1
  %4810 = extractvalue %dx.types.ResRet.f32 %4807, 2
  %4811 = add i32 %4798, 28
  %4812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4811, i32 undef)  ; BufferLoad(srv,index,wot)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = add i32 %4798, 32
  %4815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4814, i32 undef)  ; BufferLoad(srv,index,wot)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.ResRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.ResRet.f32 %4815, 2
  %4819 = extractvalue %dx.types.ResRet.f32 %4815, 3
  %4820 = add i32 %4798, 48
  %4821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4820, i32 undef)  ; BufferLoad(srv,index,wot)
  %4822 = extractvalue %dx.types.ResRet.f32 %4821, 0
  %4823 = extractvalue %dx.types.ResRet.f32 %4821, 1
  %4824 = add i32 %4798, 56
  %4825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4824, i32 undef)  ; BufferLoad(srv,index,wot)
  %4826 = extractvalue %dx.types.ResRet.f32 %4825, 0
  %4827 = extractvalue %dx.types.ResRet.f32 %4825, 1
  %4828 = add i32 %4798, 64
  %4829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4828, i32 undef)  ; BufferLoad(srv,index,wot)
  %4830 = extractvalue %dx.types.ResRet.f32 %4829, 0
  %4831 = extractvalue %dx.types.ResRet.f32 %4829, 1
  %4832 = mul i32 %4794, 60
  %4833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4832, i32 undef)  ; BufferLoad(srv,index,wot)
  %4834 = extractvalue %dx.types.ResRet.f32 %4833, 0
  %4835 = extractvalue %dx.types.ResRet.f32 %4833, 1
  %4836 = extractvalue %dx.types.ResRet.f32 %4833, 2
  %4837 = add i32 %4832, 12
  %4838 = add i32 %4832, 48
  %4839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4838, i32 undef)  ; BufferLoad(srv,index,wot)
  %4840 = extractvalue %dx.types.ResRet.f32 %4839, 0
  %4841 = extractvalue %dx.types.ResRet.f32 %4839, 1
  %4842 = extractvalue %dx.types.ResRet.f32 %4839, 2
  %4843 = and i32 %4805, 32767
  %4844 = bitcast float %4800 to i32
  %4845 = bitcast float %4801 to i32
  %4846 = and i32 %4805, 32768
  %4847 = icmp ne i32 %4846, 0
  %4848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4849 = extractvalue %dx.types.CBufRet.f32 %4848, 3
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 0
  %4852 = extractvalue %dx.types.CBufRet.f32 %4850, 1
  %4853 = extractvalue %dx.types.CBufRet.f32 %4850, 2
  %4854 = fsub fast float %4834, %4851
  %4855 = fsub fast float %4835, %4852
  %4856 = fsub fast float %4836, %4853
  %4857 = fsub fast float %154, %4854
  %4858 = fsub fast float %155, %4855
  %4859 = fsub fast float %156, %4856
  %4860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4837, i32 undef)  ; BufferLoad(srv,index,wot)
  %4861 = extractvalue %dx.types.ResRet.f32 %4860, 0
  %4862 = extractvalue %dx.types.ResRet.f32 %4860, 1
  %4863 = extractvalue %dx.types.ResRet.f32 %4860, 2
  %4864 = call float @dx.op.dot3.f32(i32 55, float %4857, float %4858, float %4859, float %4861, float %4862, float %4863)  ; Dot3(ax,ay,az,bx,by,bz)
  %4865 = add i32 %4832, 24
  %4866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4865, i32 undef)  ; BufferLoad(srv,index,wot)
  %4867 = extractvalue %dx.types.ResRet.f32 %4866, 0
  %4868 = extractvalue %dx.types.ResRet.f32 %4866, 1
  %4869 = extractvalue %dx.types.ResRet.f32 %4866, 2
  %4870 = call float @dx.op.dot3.f32(i32 55, float %4857, float %4858, float %4859, float %4867, float %4868, float %4869)  ; Dot3(ax,ay,az,bx,by,bz)
  %4871 = add i32 %4832, 36
  %4872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4871, i32 undef)  ; BufferLoad(srv,index,wot)
  %4873 = extractvalue %dx.types.ResRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.ResRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.ResRet.f32 %4872, 2
  %4876 = call float @dx.op.dot3.f32(i32 55, float %4857, float %4858, float %4859, float %4873, float %4874, float %4875)  ; Dot3(ax,ay,az,bx,by,bz)
  %4877 = call float @dx.op.unary.f32(i32 6, float %4864)  ; FAbs(value)
  %4878 = call float @dx.op.unary.f32(i32 6, float %4870)  ; FAbs(value)
  %4879 = call float @dx.op.unary.f32(i32 6, float %4876)  ; FAbs(value)
  %4880 = fsub fast float %4840, %4877
  %4881 = fsub fast float %4841, %4878
  %4882 = fsub fast float %4842, %4879
  %4883 = fmul fast float %4880, %4808
  %4884 = fmul fast float %4881, %4809
  %4885 = fmul fast float %4882, %4810
  %4886 = call float @dx.op.binary.f32(i32 36, float %4884, float %4885)  ; FMin(a,b)
  %4887 = call float @dx.op.binary.f32(i32 36, float %4883, float %4886)  ; FMin(a,b)
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = call float @dx.op.binary.f32(i32 36, float %4791, float %4888)  ; FMin(a,b)
  %4890 = uitofp i1 %4847 to float
  %4891 = select i1 %116, float 1.000000e+00, float 2.000000e+00
  %4892 = fsub fast float %4891, %4890
  %4893 = fmul fast float %4889, %4892
  %4894 = lshr i32 %4778, 8
  %4895 = and i32 %4894, 255
  %4896 = uitofp i32 %4895 to float
  %4897 = fptoui float %4896 to i32
  %4898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4899 = extractvalue %dx.types.CBufRet.f32 %4898, 1
  %4900 = bitcast float %4899 to i32
  %4901 = lshr i32 %4900, 24
  %4902 = uitofp i32 %4901 to float
  %4903 = fptoui float %4902 to i32
  %4904 = icmp ne i32 %4903, 1
  %4905 = zext i1 %4904 to i32
  %4906 = add i32 %4905, %4897
  %4907 = uitofp i32 %4906 to float
  %4908 = fptoui float %4907 to i32
  %4909 = shl i32 %4908, 8
  %4910 = and i32 %4909, 65280
  %4911 = and i32 %4778, -65281
  %4912 = or i32 %4910, %4911
  %4913 = fcmp fast ogt float %4893, 0.000000e+00
  br i1 %4913, label %4930, label %4914

; <label>:4914                                    ; preds = %5294, %5163, %4777
  %4915 = phi i32 [ %5241, %5163 ], [ %4912, %4777 ], [ %5241, %5294 ]
  %4916 = phi i32 [ %4779, %5163 ], [ %4779, %4777 ], [ %5310, %5294 ]
  %4917 = phi float [ %5227, %5163 ], [ %4780, %4777 ], [ %5227, %5294 ]
  %4918 = phi float [ %5228, %5163 ], [ %4781, %4777 ], [ %5228, %5294 ]
  %4919 = phi float [ %5229, %5163 ], [ %4782, %4777 ], [ %5229, %5294 ]
  %4920 = phi float [ %5288, %5163 ], [ %4783, %4777 ], [ %5288, %5294 ]
  %4921 = phi float [ %5289, %5163 ], [ %4784, %4777 ], [ %5289, %5294 ]
  %4922 = phi float [ %5290, %5163 ], [ %4785, %4777 ], [ %5290, %5294 ]
  %4923 = phi i32 [ %5292, %5163 ], [ %4786, %4777 ], [ %5292, %5294 ]
  %4924 = phi float [ %5245, %5163 ], [ %4787, %4777 ], [ %5245, %5294 ]
  %4925 = phi float [ %5246, %5163 ], [ %4788, %4777 ], [ %5246, %5294 ]
  %4926 = phi float [ %5247, %5163 ], [ %4789, %4777 ], [ %5247, %5294 ]
  %4927 = phi i32 [ 0, %5163 ], [ %4790, %4777 ], [ 0, %5294 ]
  %4928 = phi float [ %5230, %5163 ], [ %4791, %4777 ], [ %5230, %5294 ]
  %4929 = icmp eq i32 %4792, %4796
  br i1 %4929, label %5311, label %4777

; <label>:4930                                    ; preds = %4777
  %4931 = extractvalue %dx.types.CBufRet.f32 %4898, 0
  %4932 = bitcast float %4931 to i32
  %4933 = lshr i32 %4932, 8
  %4934 = and i32 %4933, 255
  %4935 = uitofp i32 %4934 to float
  %4936 = fptoui float %4935 to i32
  %4937 = and i32 %4936, 2
  %4938 = icmp eq i32 %4937, 0
  br i1 %4938, label %4945, label %4939

; <label>:4939                                    ; preds = %4930
  %4940 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = call float @dx.op.unary.f32(i32 25, float %4940)  ; Rsqrt(value)
  %4942 = fmul fast float %4941, %154
  %4943 = fmul fast float %4941, %155
  %4944 = fmul fast float %4941, %156
  br label %4945

; <label>:4945                                    ; preds = %4939, %4930
  %4946 = phi float [ %4942, %4939 ], [ %2511, %4930 ]
  %4947 = phi float [ %4943, %4939 ], [ %2512, %4930 ]
  %4948 = phi float [ %4944, %4939 ], [ %2513, %4930 ]
  %4949 = icmp ne i32 %4844, -1
  %4950 = fcmp oeq float %4849, 0.000000e+00
  %4951 = and i1 %4950, %4949
  br i1 %4951, label %4952, label %5076

; <label>:4952                                    ; preds = %4945
  %4953 = fsub fast float -0.000000e+00, %4861
  %4954 = fsub fast float -0.000000e+00, %4862
  %4955 = fsub fast float -0.000000e+00, %4863
  %4956 = call float @dx.op.dot3.f32(i32 55, float %4946, float %4947, float %4948, float %4953, float %4954, float %4955)  ; Dot3(ax,ay,az,bx,by,bz)
  %4957 = fsub fast float -0.000000e+00, %4956
  %4958 = call float @dx.op.dot3.f32(i32 55, float %4857, float %4858, float %4859, float %4953, float %4954, float %4955)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = fadd fast float %4958, %4823
  %4960 = fadd fast float %4822, %4958
  %4961 = fsub fast float -0.000000e+00, %4960
  %4962 = fcmp ogt float %4956, -0.000000e+00
  %4963 = select i1 %4962, float %4961, float %4959
  %4964 = call float @dx.op.unary.f32(i32 6, float %4957)  ; FAbs(value)
  %4965 = fdiv fast float 1.000000e+00, %4964
  %4966 = fmul fast float %4963, %4965
  %4967 = call float @dx.op.binary.f32(i32 35, float %4966, float 0.000000e+00)  ; FMax(a,b)
  %4968 = fsub fast float -0.000000e+00, %4867
  %4969 = fsub fast float -0.000000e+00, %4868
  %4970 = fsub fast float -0.000000e+00, %4869
  %4971 = call float @dx.op.dot3.f32(i32 55, float %4946, float %4947, float %4948, float %4968, float %4969, float %4970)  ; Dot3(ax,ay,az,bx,by,bz)
  %4972 = fsub fast float -0.000000e+00, %4971
  %4973 = call float @dx.op.dot3.f32(i32 55, float %4857, float %4858, float %4859, float %4968, float %4969, float %4970)  ; Dot3(ax,ay,az,bx,by,bz)
  %4974 = fadd fast float %4973, %4827
  %4975 = fadd fast float %4826, %4973
  %4976 = fsub fast float -0.000000e+00, %4975
  %4977 = fcmp ogt float %4971, -0.000000e+00
  %4978 = select i1 %4977, float %4976, float %4974
  %4979 = call float @dx.op.unary.f32(i32 6, float %4972)  ; FAbs(value)
  %4980 = fdiv fast float 1.000000e+00, %4979
  %4981 = fmul fast float %4978, %4980
  %4982 = call float @dx.op.binary.f32(i32 35, float %4981, float 0.000000e+00)  ; FMax(a,b)
  %4983 = fsub fast float -0.000000e+00, %4873
  %4984 = fsub fast float -0.000000e+00, %4874
  %4985 = fsub fast float -0.000000e+00, %4875
  %4986 = call float @dx.op.dot3.f32(i32 55, float %4946, float %4947, float %4948, float %4983, float %4984, float %4985)  ; Dot3(ax,ay,az,bx,by,bz)
  %4987 = fsub fast float -0.000000e+00, %4986
  %4988 = call float @dx.op.dot3.f32(i32 55, float %4857, float %4858, float %4859, float %4983, float %4984, float %4985)  ; Dot3(ax,ay,az,bx,by,bz)
  %4989 = fadd fast float %4988, %4831
  %4990 = fadd fast float %4830, %4988
  %4991 = fsub fast float -0.000000e+00, %4990
  %4992 = fcmp ogt float %4986, -0.000000e+00
  %4993 = select i1 %4992, float %4991, float %4989
  %4994 = call float @dx.op.unary.f32(i32 6, float %4987)  ; FAbs(value)
  %4995 = fdiv fast float 1.000000e+00, %4994
  %4996 = fmul fast float %4993, %4995
  %4997 = call float @dx.op.binary.f32(i32 35, float %4996, float 0.000000e+00)  ; FMax(a,b)
  %4998 = call float @dx.op.binary.f32(i32 36, float %4982, float %4997)  ; FMin(a,b)
  %4999 = call float @dx.op.binary.f32(i32 36, float %4967, float %4998)  ; FMin(a,b)
  %5000 = fmul fast float %4999, %4946
  %5001 = fmul fast float %4999, %4947
  %5002 = fmul fast float %4999, %4948
  %5003 = fadd fast float %5000, %154
  %5004 = fadd fast float %5001, %155
  %5005 = fadd fast float %5002, %156
  %5006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.f32 %5006, 0
  %5008 = extractvalue %dx.types.CBufRet.f32 %5006, 1
  %5009 = extractvalue %dx.types.CBufRet.f32 %5006, 2
  %5010 = fadd fast float %5003, %5007
  %5011 = fadd fast float %5004, %5008
  %5012 = fadd fast float %5005, %5009
  %5013 = fcmp fast olt float %4967, %4982
  %5014 = fcmp fast olt float %4967, %4997
  %5015 = and i1 %5013, %5014
  br i1 %5015, label %5019, label %5016

; <label>:5016                                    ; preds = %4952
  %5017 = fcmp fast olt float %4982, %4997
  br i1 %5017, label %5018, label %5019

; <label>:5018                                    ; preds = %5016
  br label %5019

; <label>:5019                                    ; preds = %5018, %5016, %4952
  %5020 = phi float [ 0.000000e+00, %5018 ], [ 0.000000e+00, %5016 ], [ 1.000000e+00, %4952 ]
  %5021 = phi float [ 1.000000e+00, %5018 ], [ 0.000000e+00, %5016 ], [ 0.000000e+00, %4952 ]
  %5022 = phi float [ 0.000000e+00, %5018 ], [ 1.000000e+00, %5016 ], [ 0.000000e+00, %4952 ]
  %5023 = phi float [ %4867, %5018 ], [ %4873, %5016 ], [ %4861, %4952 ]
  %5024 = phi float [ %4868, %5018 ], [ %4874, %5016 ], [ %4862, %4952 ]
  %5025 = phi float [ %4869, %5018 ], [ %4875, %5016 ], [ %4863, %4952 ]
  %5026 = call float @dx.op.unary.f32(i32 6, float %5025)  ; FAbs(value)
  %5027 = fcmp fast olt float %5026, 0x3FE276C8C0000000
  %5028 = select i1 %5027, float 0.000000e+00, float 1.000000e+00
  %5029 = select i1 %5027, float 1.000000e+00, float 0.000000e+00
  %5030 = fmul fast float %5029, %5024
  %5031 = fmul fast float %5028, %5025
  %5032 = fsub fast float %5030, %5031
  %5033 = fmul fast float %5023, %5029
  %5034 = fsub fast float -0.000000e+00, %5033
  %5035 = fmul fast float %5028, %5023
  %5036 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5034, float %5035, float %5032, float %5034, float %5035)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = call float @dx.op.unary.f32(i32 25, float %5036)  ; Rsqrt(value)
  %5038 = fmul fast float %5032, %5037
  %5039 = fmul fast float %5037, %5034
  %5040 = fmul fast float %5035, %5037
  %5041 = fmul fast float %5040, %5024
  %5042 = fmul fast float %5039, %5025
  %5043 = fsub fast float %5041, %5042
  %5044 = fmul fast float %5038, %5025
  %5045 = fmul fast float %5040, %5023
  %5046 = fsub fast float %5044, %5045
  %5047 = fmul fast float %5039, %5023
  %5048 = fmul fast float %5038, %5024
  %5049 = fsub fast float %5047, %5048
  %5050 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5046, float %5049, float %5043, float %5046, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = call float @dx.op.unary.f32(i32 25, float %5050)  ; Rsqrt(value)
  %5052 = fmul fast float %5043, %5051
  %5053 = fmul fast float %5046, %5051
  %5054 = fmul fast float %5049, %5051
  %5055 = call float @dx.op.dot3.f32(i32 55, float %5010, float %5011, float %5012, float %5038, float %5039, float %5040)  ; Dot3(ax,ay,az,bx,by,bz)
  %5056 = call float @dx.op.dot3.f32(i32 55, float %5010, float %5011, float %5012, float %5052, float %5053, float %5054)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = fmul fast float %5055, 0x3FA99999A0000000
  %5058 = fmul fast float %5056, 0x3FA99999A0000000
  %5059 = call float @dx.op.unary.f32(i32 22, float %5057)  ; Frc(value)
  %5060 = call float @dx.op.unary.f32(i32 22, float %5058)  ; Frc(value)
  %5061 = fadd fast float %5059, 0xBFB99999A0000000
  %5062 = fadd fast float %5060, 0xBFB99999A0000000
  %5063 = call float @dx.op.unary.f32(i32 6, float %5061)  ; FAbs(value)
  %5064 = call float @dx.op.unary.f32(i32 6, float %5062)  ; FAbs(value)
  %5065 = fmul fast float %5063, 1.000000e+01
  %5066 = fmul fast float %5064, 1.000000e+01
  %5067 = call float @dx.op.binary.f32(i32 36, float %5065, float %5066)  ; FMin(a,b)
  %5068 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5069 = fsub fast float 1.000000e+00, %5068
  %5070 = fmul fast float %5069, %5020
  %5071 = fmul fast float %5069, %5021
  %5072 = fmul fast float %5069, %5022
  %5073 = fsub fast float %5003, %4800
  %5074 = fsub fast float %5004, %4801
  %5075 = fsub fast float %5005, %4802
  br label %5083

; <label>:5076                                    ; preds = %4945
  %5077 = fmul fast float %4946, 8.096000e+03
  %5078 = fmul fast float %4947, 8.096000e+03
  %5079 = fmul fast float %4948, 8.096000e+03
  %5080 = fadd fast float %5077, %154
  %5081 = fadd fast float %5078, %155
  %5082 = fadd fast float %5079, %156
  br label %5083

; <label>:5083                                    ; preds = %5076, %5019
  %5084 = phi float [ %4946, %5076 ], [ %5073, %5019 ]
  %5085 = phi float [ %4947, %5076 ], [ %5074, %5019 ]
  %5086 = phi float [ %4948, %5076 ], [ %5075, %5019 ]
  %5087 = phi float [ %5080, %5076 ], [ %5003, %5019 ]
  %5088 = phi float [ %5081, %5076 ], [ %5004, %5019 ]
  %5089 = phi float [ %5082, %5076 ], [ %5005, %5019 ]
  %5090 = phi float [ 0.000000e+00, %5076 ], [ %5070, %5019 ]
  %5091 = phi float [ 0.000000e+00, %5076 ], [ %5071, %5019 ]
  %5092 = phi float [ 0.000000e+00, %5076 ], [ %5072, %5019 ]
  %5093 = fcmp fast olt float %4819, 1.000000e+00
  br i1 %5093, label %5094, label %5125, !dx.controlflow.hints !130

; <label>:5094                                    ; preds = %5083
  %5095 = fmul fast float %5086, %4817
  %5096 = fmul fast float %5085, %4818
  %5097 = fsub fast float %5095, %5096
  %5098 = fmul fast float %5084, %4818
  %5099 = fmul fast float %5086, %4816
  %5100 = fsub fast float %5098, %5099
  %5101 = fmul fast float %5085, %4816
  %5102 = fmul fast float %5084, %4817
  %5103 = fsub fast float %5101, %5102
  %5104 = fmul fast float %5097, 2.000000e+00
  %5105 = fmul fast float %5100, 2.000000e+00
  %5106 = fmul fast float %5103, 2.000000e+00
  %5107 = fmul fast float %5104, %4819
  %5108 = fmul fast float %5105, %4819
  %5109 = fmul fast float %5106, %4819
  %5110 = fmul fast float %5106, %4817
  %5111 = fmul fast float %5105, %4818
  %5112 = fmul fast float %5104, %4818
  %5113 = fmul fast float %5106, %4816
  %5114 = fmul fast float %5105, %4816
  %5115 = fmul fast float %5104, %4817
  %5116 = fadd fast float %5110, %5084
  %5117 = fadd fast float %5116, %5107
  %5118 = fsub fast float %5117, %5111
  %5119 = fsub fast float %5085, %5113
  %5120 = fadd fast float %5119, %5108
  %5121 = fadd fast float %5120, %5112
  %5122 = fadd fast float %5109, %5086
  %5123 = fsub fast float %5122, %5115
  %5124 = fadd fast float %5123, %5114
  br label %5125

; <label>:5125                                    ; preds = %5094, %5083
  %5126 = phi float [ %5118, %5094 ], [ %5084, %5083 ]
  %5127 = phi float [ %5121, %5094 ], [ %5085, %5083 ]
  %5128 = phi float [ %5124, %5094 ], [ %5086, %5083 ]
  br i1 %4951, label %5129, label %5160

; <label>:5129                                    ; preds = %5125
  %5130 = fmul fast float %2462, 0x400187C840000000
  %5131 = fadd fast float %5130, 0xC00EFC2120000000
  %5132 = fmul fast float %5131, %2462
  %5133 = fadd fast float %5132, 0x3FE5D16340000000
  %5134 = fmul fast float %5133, %2462
  %5135 = fadd fast float %5134, 1.000000e+00
  %5136 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5137 = fsub fast float %5087, %154
  %5138 = fsub fast float %5088, %155
  %5139 = fsub fast float %5089, %156
  %5140 = fsub fast float %5087, %4800
  %5141 = fsub fast float %5088, %4801
  %5142 = fsub fast float %5089, %4802
  %5143 = call float @dx.op.dot3.f32(i32 55, float %5137, float %5138, float %5139, float %5137, float %5138, float %5139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5144 = call float @dx.op.dot3.f32(i32 55, float %5140, float %5141, float %5142, float %5140, float %5141, float %5142)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = fadd fast float %5144, 0x3EE4F8B580000000
  %5146 = fdiv fast float %5143, %5145
  %5147 = bitcast float %5146 to i32
  %5148 = ashr i32 %5147, 1
  %5149 = add nsw i32 %5148, 532487669
  %5150 = bitcast i32 %5149 to float
  %5151 = fmul fast float %5150, %5136
  %5152 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5153 = fmul fast float %5152, 0x4009981AE0000000
  %5154 = fsub fast float 0x40111BBD80000000, %5153
  %5155 = fmul fast float %5154, %5152
  %5156 = fadd fast float %5155, 0xC0009F6020000000
  %5157 = fmul fast float %5156, %5152
  %5158 = fadd fast float %5157, 1.000000e+00
  %5159 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  br label %5163

; <label>:5160                                    ; preds = %5125
  %5161 = icmp ne i32 %4845, -1
  %5162 = zext i1 %5161 to i32
  br label %5163

; <label>:5163                                    ; preds = %5160, %5129
  %5164 = phi float [ %2462, %5160 ], [ %5159, %5129 ]
  %5165 = phi i32 [ %5162, %5160 ], [ 0, %5129 ]
  %5166 = fmul float %5164, 5.000000e+00
  %5167 = fsub float 5.000000e+00, %5166
  %5168 = icmp ne i32 %5165, 0
  %5169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5170 = extractvalue %dx.types.CBufRet.f32 %5169, 3
  %5171 = fadd fast float %5170, %5167
  %5172 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5171)  ; FMax(a,b)
  %5173 = call float @dx.op.unary.f32(i32 6, float %5126)  ; FAbs(value)
  %5174 = call float @dx.op.unary.f32(i32 6, float %5127)  ; FAbs(value)
  %5175 = fadd fast float %5174, %5173
  %5176 = call float @dx.op.unary.f32(i32 6, float %5128)  ; FAbs(value)
  %5177 = fadd fast float %5175, %5176
  %5178 = fcmp fast oeq float %5177, 0.000000e+00
  %5179 = fdiv fast float 1.000000e+00, %5177
  %5180 = select i1 %5178, float 1.000000e+00, float %5179
  %5181 = fmul fast float %5180, %5126
  %5182 = fmul fast float %5180, %5127
  %5183 = call float @dx.op.unary.f32(i32 6, float %5182)  ; FAbs(value)
  %5184 = call float @dx.op.unary.f32(i32 6, float %5181)  ; FAbs(value)
  %5185 = fsub fast float 1.000000e+00, %5183
  %5186 = fsub fast float 1.000000e+00, %5184
  %5187 = fcmp fast oge float %5181, 0.000000e+00
  %5188 = fcmp fast oge float %5182, 0.000000e+00
  %5189 = select i1 %5187, float 1.000000e+00, float -1.000000e+00
  %5190 = select i1 %5188, float 1.000000e+00, float -1.000000e+00
  %5191 = fcmp fast ole float %5128, 0.000000e+00
  %5192 = fmul fast float %5189, %5185
  %5193 = fmul fast float %5190, %5186
  %5194 = select i1 %5191, float %5192, float %5181
  %5195 = select i1 %5191, float %5193, float %5182
  %5196 = fmul fast float %5194, 5.000000e-01
  %5197 = fmul fast float %5195, 5.000000e-01
  %5198 = fadd fast float %5196, 5.000000e-01
  %5199 = fadd fast float %5197, 5.000000e-01
  %5200 = uitofp i32 %4843 to float
  %5201 = call float @dx.op.binary.f32(i32 36, float %5172, float 3.000000e+00)  ; FMin(a,b)
  %5202 = fadd fast float %5201, 2.000000e+00
  %5203 = call float @dx.op.unary.f32(i32 21, float %5202)  ; Exp(value)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5169, 1
  %5205 = fmul fast float %5204, %5203
  %5206 = fmul fast float %5205, 2.000000e+00
  %5207 = fsub fast float 1.000000e+00, %5206
  %5208 = fmul fast float %5198, %5207
  %5209 = fmul fast float %5199, %5207
  %5210 = fadd fast float %5208, %5205
  %5211 = fadd fast float %5209, %5205
  %5212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %60, float %5210, float %5211, float %5200, float undef, i32 0, i32 0, i32 undef, float %5172)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5213 = extractvalue %dx.types.ResRet.f32 %5212, 0
  %5214 = extractvalue %dx.types.ResRet.f32 %5212, 1
  %5215 = extractvalue %dx.types.ResRet.f32 %5212, 2
  %5216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5217 = extractvalue %dx.types.CBufRet.f32 %5216, 3
  %5218 = fmul fast float %5217, %4813
  %5219 = call float @dx.op.binary.f32(i32 36, float %4685, float %5218)  ; FMin(a,b)
  %5220 = select i1 %5168, float %5219, float %5218
  %5221 = fmul fast float %5213, %4893
  %5222 = fmul fast float %5221, %5220
  %5223 = fmul fast float %5214, %4893
  %5224 = fmul fast float %5223, %5220
  %5225 = fmul fast float %5215, %4893
  %5226 = fmul fast float %5225, %5220
  %5227 = fadd fast float %5222, %4780
  %5228 = fadd fast float %5224, %4781
  %5229 = fadd fast float %5226, %4782
  %5230 = fsub fast float %4791, %4893
  %5231 = and i32 %4908, 255
  %5232 = uitofp i32 %5231 to float
  %5233 = fptoui float %5232 to i32
  %5234 = icmp eq i32 %4903, 1
  %5235 = zext i1 %5234 to i32
  %5236 = add i32 %5235, %5233
  %5237 = uitofp i32 %5236 to float
  %5238 = fptoui float %5237 to i32
  %5239 = shl i32 %5238, 8
  %5240 = and i32 %5239, 65280
  %5241 = or i32 %5240, %4911
  %5242 = fmul fast float %5090, %4893
  %5243 = fmul fast float %5091, %4893
  %5244 = fmul fast float %5092, %4893
  %5245 = fadd fast float %5242, %4787
  %5246 = fadd fast float %5243, %4788
  %5247 = fadd fast float %5244, %4789
  %5248 = fmul fast float %5200, 0x3FE3C6EF40000000
  %5249 = call float @dx.op.unary.f32(i32 22, float %5248)  ; Frc(value)
  %5250 = fadd fast float %5249, 0x3FE5555560000000
  %5251 = fadd fast float %5249, 0x3FD5555560000000
  %5252 = fsub fast float -0.000000e+00, %5249
  %5253 = fsub fast float -0.000000e+00, %5250
  %5254 = fsub fast float -0.000000e+00, %5251
  %5255 = fcmp fast oge float %5249, %5252
  %5256 = fcmp fast oge float %5250, %5253
  %5257 = fcmp fast oge float %5251, %5254
  %5258 = call float @dx.op.unary.f32(i32 6, float %5249)  ; FAbs(value)
  %5259 = call float @dx.op.unary.f32(i32 6, float %5250)  ; FAbs(value)
  %5260 = call float @dx.op.unary.f32(i32 6, float %5251)  ; FAbs(value)
  %5261 = call float @dx.op.unary.f32(i32 22, float %5258)  ; Frc(value)
  %5262 = call float @dx.op.unary.f32(i32 22, float %5259)  ; Frc(value)
  %5263 = call float @dx.op.unary.f32(i32 22, float %5260)  ; Frc(value)
  %5264 = fsub fast float -0.000000e+00, %5261
  %5265 = fsub fast float -0.000000e+00, %5262
  %5266 = fsub fast float -0.000000e+00, %5263
  %5267 = select i1 %5255, float %5261, float %5264
  %5268 = select i1 %5256, float %5262, float %5265
  %5269 = select i1 %5257, float %5263, float %5266
  %5270 = fmul fast float %5267, 6.000000e+00
  %5271 = fmul fast float %5268, 6.000000e+00
  %5272 = fmul fast float %5269, 6.000000e+00
  %5273 = fadd fast float %5270, -3.000000e+00
  %5274 = fadd fast float %5271, -3.000000e+00
  %5275 = fadd fast float %5272, -3.000000e+00
  %5276 = call float @dx.op.unary.f32(i32 6, float %5273)  ; FAbs(value)
  %5277 = call float @dx.op.unary.f32(i32 6, float %5274)  ; FAbs(value)
  %5278 = call float @dx.op.unary.f32(i32 6, float %5275)  ; FAbs(value)
  %5279 = fadd fast float %5276, -1.000000e+00
  %5280 = fadd fast float %5277, -1.000000e+00
  %5281 = fadd fast float %5278, -1.000000e+00
  %5282 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5283 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5284 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5285 = fmul fast float %5282, %4893
  %5286 = fmul fast float %5283, %4893
  %5287 = fmul fast float %5284, %4893
  %5288 = fadd fast float %5285, %4783
  %5289 = fadd fast float %5286, %4784
  %5290 = fadd fast float %5287, %4785
  %5291 = icmp eq i32 %4843, 0
  %5292 = select i1 %5291, i32 1, i32 %4786
  %5293 = icmp eq i32 %4790, 0
  br i1 %5293, label %4914, label %5294

; <label>:5294                                    ; preds = %5163
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 0
  %5297 = bitcast float %5296 to i32
  %5298 = lshr i32 %5297, 8
  %5299 = and i32 %5298, 255
  %5300 = uitofp i32 %5299 to float
  %5301 = fptoui float %5300 to i32
  %5302 = icmp eq i32 %5301, 16
  %5303 = bitcast float %5218 to i32
  %5304 = select i1 %5302, i32 %5303, i32 %4779
  %5305 = icmp eq i32 %5301, 17
  %5306 = bitcast float %4685 to i32
  %5307 = select i1 %5305, i32 %5306, i32 %5304
  %5308 = icmp eq i32 %5301, 18
  %5309 = bitcast float %5220 to i32
  %5310 = select i1 %5308, i32 %5309, i32 %5307
  br label %4914

; <label>:5311                                    ; preds = %4914
  br label %5312

; <label>:5312                                    ; preds = %5311, %4737
  %5313 = phi i32 [ %4738, %4737 ], [ %4915, %5311 ]
  %5314 = phi i32 [ %4739, %4737 ], [ %4916, %5311 ]
  %5315 = phi float [ %4740, %4737 ], [ %4917, %5311 ]
  %5316 = phi float [ %4741, %4737 ], [ %4918, %5311 ]
  %5317 = phi float [ %4742, %4737 ], [ %4919, %5311 ]
  %5318 = phi float [ %4743, %4737 ], [ %4920, %5311 ]
  %5319 = phi float [ %4744, %4737 ], [ %4921, %5311 ]
  %5320 = phi float [ %4745, %4737 ], [ %4922, %5311 ]
  %5321 = phi i32 [ %4746, %4737 ], [ %4923, %5311 ]
  %5322 = phi float [ %4747, %4737 ], [ %4924, %5311 ]
  %5323 = phi float [ %4748, %4737 ], [ %4925, %5311 ]
  %5324 = phi float [ %4749, %4737 ], [ %4926, %5311 ]
  %5325 = phi i32 [ %4750, %4737 ], [ %4927, %5311 ]
  %5326 = phi float [ %4751, %4737 ], [ %4928, %5311 ]
  %5327 = add i32 %4752, 1
  %5328 = icmp ugt i32 %5327, %4734
  br i1 %5328, label %5329, label %4737, !llvm.loop !131

; <label>:5329                                    ; preds = %5312
  br label %5330

; <label>:5330                                    ; preds = %5329, %4684
  %5331 = phi i32 [ %4348, %4684 ], [ %5313, %5329 ]
  %5332 = phi i32 [ %4672, %4684 ], [ %5314, %5329 ]
  %5333 = phi float [ 0.000000e+00, %4684 ], [ %5315, %5329 ]
  %5334 = phi float [ 0.000000e+00, %4684 ], [ %5316, %5329 ]
  %5335 = phi float [ 0.000000e+00, %4684 ], [ %5317, %5329 ]
  %5336 = phi float [ 0.000000e+00, %4684 ], [ %5318, %5329 ]
  %5337 = phi float [ 0.000000e+00, %4684 ], [ %5319, %5329 ]
  %5338 = phi float [ 0.000000e+00, %4684 ], [ %5320, %5329 ]
  %5339 = phi i32 [ 0, %4684 ], [ %5321, %5329 ]
  %5340 = phi float [ 0.000000e+00, %4684 ], [ %5322, %5329 ]
  %5341 = phi float [ 0.000000e+00, %4684 ], [ %5323, %5329 ]
  %5342 = phi float [ 0.000000e+00, %4684 ], [ %5324, %5329 ]
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5333, float %5334, float %5335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = select i1 %2504, float 0.000000e+00, float %5333
  %5345 = select i1 %2504, float %5343, float %5334
  %5346 = select i1 %2504, float 0.000000e+00, float %5335
  %5347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5348 = extractvalue %dx.types.CBufRet.f32 %5347, 0
  %5349 = bitcast float %5348 to i32
  %5350 = lshr i32 %5349, 8
  %5351 = and i32 %5350, 255
  %5352 = uitofp i32 %5351 to float
  %5353 = fptoui float %5352 to i32
  %5354 = icmp eq i32 %5353, 13
  br i1 %5354, label %5355, label %5375

; <label>:5355                                    ; preds = %5330
  %5356 = fadd fast float %5336, 1.000000e+00
  %5357 = fadd fast float %5337, 1.000000e+00
  %5358 = fadd fast float %5338, 1.000000e+00
  %5359 = fmul fast float %5356, 5.000000e-01
  %5360 = fmul fast float %5357, 5.000000e-01
  %5361 = fmul fast float %5358, 5.000000e-01
  %5362 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5363 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5364 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5365 = fmul fast float %5362, 1.023000e+03
  %5366 = fmul fast float %5363, 1.023000e+03
  %5367 = fmul fast float %5364, 1.023000e+03
  %5368 = fptoui float %5365 to i32
  %5369 = fptoui float %5366 to i32
  %5370 = fptoui float %5367 to i32
  %5371 = shl i32 %5369, 10
  %5372 = or i32 %5371, %5368
  %5373 = shl i32 %5370, 20
  %5374 = or i32 %5372, %5373
  br label %5375

; <label>:5375                                    ; preds = %5355, %5330
  %5376 = phi i32 [ %5374, %5355 ], [ %5332, %5330 ]
  %5377 = icmp eq i32 %5353, 14
  %5378 = select i1 %5377, i32 %5339, i32 %5376
  %5379 = icmp eq i32 %5353, 22
  br i1 %5379, label %5380, label %5400

; <label>:5380                                    ; preds = %5375
  %5381 = fadd fast float %5340, 1.000000e+00
  %5382 = fadd fast float %5341, 1.000000e+00
  %5383 = fadd fast float %5342, 1.000000e+00
  %5384 = fmul fast float %5381, 5.000000e-01
  %5385 = fmul fast float %5382, 5.000000e-01
  %5386 = fmul fast float %5383, 5.000000e-01
  %5387 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5388 = call float @dx.op.unary.f32(i32 7, float %5385)  ; Saturate(value)
  %5389 = call float @dx.op.unary.f32(i32 7, float %5386)  ; Saturate(value)
  %5390 = fmul fast float %5387, 1.023000e+03
  %5391 = fmul fast float %5388, 1.023000e+03
  %5392 = fmul fast float %5389, 1.023000e+03
  %5393 = fptoui float %5390 to i32
  %5394 = fptoui float %5391 to i32
  %5395 = fptoui float %5392 to i32
  %5396 = shl i32 %5394, 10
  %5397 = or i32 %5396, %5393
  %5398 = shl i32 %5395, 20
  %5399 = or i32 %5397, %5398
  br label %5400

; <label>:5400                                    ; preds = %5380, %5375
  %5401 = phi i32 [ %5399, %5380 ], [ %5378, %5375 ]
  %5402 = fcmp fast olt float %4673, 0.000000e+00
  %5403 = call float @dx.op.unary.f32(i32 6, float %4673)  ; FAbs(value)
  %5404 = fmul fast float %5403, %4674
  %5405 = fmul fast float %5403, %4675
  %5406 = fmul fast float %5403, %4676
  %5407 = select i1 %5402, float %4674, float %5404
  %5408 = select i1 %5402, float %4675, float %5405
  %5409 = select i1 %5402, float %4676, float %5406
  %5410 = fsub fast float 1.000000e+00, %5403
  %5411 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5412 = fmul fast float %5411, %5344
  %5413 = fmul fast float %5411, %5345
  %5414 = fmul fast float %5411, %5346
  %5415 = fadd fast float %5407, %5412
  %5416 = fadd fast float %5408, %5413
  %5417 = fadd fast float %5409, %5414
  br label %5418

; <label>:5418                                    ; preds = %5400, %4671
  %5419 = phi i32 [ %4348, %4671 ], [ %5331, %5400 ]
  %5420 = phi i32 [ %4672, %4671 ], [ %5401, %5400 ]
  %5421 = phi float [ %4674, %4671 ], [ %5415, %5400 ]
  %5422 = phi float [ %4675, %4671 ], [ %5416, %5400 ]
  %5423 = phi float [ %4676, %4671 ], [ %5417, %5400 ]
  %5424 = fmul fast float %3633, %2465
  %5425 = fmul fast float %4350, %3633
  %5426 = fmul fast float %4351, %3633
  %5427 = fmul fast float %4352, %3633
  %5428 = fmul fast float %5421, %3628
  %5429 = fmul fast float %5422, %3629
  %5430 = fmul fast float %5423, %3630
  %5431 = fadd fast float %5428, %2249
  %5432 = fadd fast float %5429, %2250
  %5433 = fadd fast float %5430, %2251
  %5434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.f32 %5434, 3
  %5436 = fcmp fast oeq float %5435, 0.000000e+00
  br i1 %5436, label %7275, label %5437

; <label>:5437                                    ; preds = %5418
  %5438 = extractvalue %dx.types.CBufRet.f32 %5434, 0
  %5439 = extractvalue %dx.types.CBufRet.f32 %5434, 1
  %5440 = extractvalue %dx.types.CBufRet.f32 %5434, 2
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.CBufRet.f32 %5441, 1
  %5444 = extractvalue %dx.types.CBufRet.f32 %5441, 2
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5448 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5449 = select i1 %2504, float %5446, float %5442
  %5450 = select i1 %2504, float %5448, float %5443
  %5451 = select i1 %2504, float %5447, float %5444
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.CBufRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.CBufRet.f32 %5452, 2
  %5456 = extractvalue %dx.types.CBufRet.f32 %5452, 3
  %5457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5458 = extractvalue %dx.types.CBufRet.f32 %5457, 0
  %5459 = extractvalue %dx.types.CBufRet.f32 %5457, 1
  %5460 = extractvalue %dx.types.CBufRet.f32 %5457, 2
  %5461 = extractvalue %dx.types.CBufRet.f32 %5457, 3
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5464 = extractvalue %dx.types.CBufRet.f32 %5462, 1
  %5465 = extractvalue %dx.types.CBufRet.f32 %5462, 2
  %5466 = extractvalue %dx.types.CBufRet.f32 %5462, 3
  %5467 = fmul fast float %5453, %154
  %5468 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5454, float %5467)  ; FMad(a,b,c)
  %5469 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5455, float %5468)  ; FMad(a,b,c)
  %5470 = fadd fast float %5469, %5456
  %5471 = fmul fast float %5458, %154
  %5472 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5459, float %5471)  ; FMad(a,b,c)
  %5473 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5460, float %5472)  ; FMad(a,b,c)
  %5474 = fadd fast float %5473, %5461
  %5475 = fmul fast float %5463, %154
  %5476 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5464, float %5475)  ; FMad(a,b,c)
  %5477 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5465, float %5476)  ; FMad(a,b,c)
  %5478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5479 = extractvalue %dx.types.CBufRet.f32 %5478, 0
  %5480 = extractvalue %dx.types.CBufRet.f32 %5478, 1
  %5481 = extractvalue %dx.types.CBufRet.f32 %5478, 3
  %5482 = fmul fast float %5481, %5470
  %5483 = fmul fast float %5481, %5474
  %5484 = fadd fast float %5482, %5479
  %5485 = fadd fast float %5483, %5480
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5488 = extractvalue %dx.types.CBufRet.f32 %5486, 1
  %5489 = extractvalue %dx.types.CBufRet.f32 %5486, 3
  %5490 = fmul fast float %5489, %5470
  %5491 = fmul fast float %5489, %5474
  %5492 = fadd fast float %5490, %5487
  %5493 = fadd fast float %5491, %5488
  %5494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5495 = extractvalue %dx.types.CBufRet.f32 %5494, 1
  %5496 = fsub fast float -0.000000e+00, %5466
  %5497 = fsub fast float %5496, %5477
  %5498 = fadd fast float %5497, %5495
  %5499 = extractvalue %dx.types.CBufRet.f32 %5494, 2
  %5500 = fmul fast float %5498, %5499
  %5501 = fsub fast float 1.000000e+00, %5500
  %5502 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5504 = extractvalue %dx.types.CBufRet.f32 %5503, 0
  %5505 = extractvalue %dx.types.CBufRet.f32 %5503, 1
  %5506 = fsub fast float %5492, %5504
  %5507 = fsub fast float %5493, %5505
  %5508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5510 = extractvalue %dx.types.CBufRet.f32 %5509, 0
  %5511 = extractvalue %dx.types.CBufRet.f32 %5509, 1
  %5512 = fsub fast float %5484, %5510
  %5513 = fsub fast float %5485, %5511
  %5514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5516 = extractvalue %dx.types.CBufRet.f32 %5515, 0
  %5517 = extractvalue %dx.types.CBufRet.f32 %5515, 1
  %5518 = fsub fast float %5470, %5516
  %5519 = fsub fast float %5474, %5517
  %5520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5522 = extractvalue %dx.types.CBufRet.f32 %5521, 0
  %5523 = bitcast float %5522 to i32
  %5524 = lshr i32 %5523, 8
  %5525 = and i32 %5524, 255
  %5526 = uitofp i32 %5525 to float
  %5527 = fptoui float %5526 to i32
  %5528 = and i32 %5527, -2
  %5529 = icmp eq i32 %5528, 10
  br i1 %5529, label %5530, label %5600

; <label>:5530                                    ; preds = %5437
  %5531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.f32 %5531, 0
  %5533 = fcmp fast olt float %5518, 0.000000e+00
  %5534 = extractvalue %dx.types.CBufRet.f32 %5520, 0
  %5535 = extractvalue %dx.types.CBufRet.f32 %5520, 2
  %5536 = select i1 %5533, float %5534, float %5535
  %5537 = fmul fast float %5536, %5518
  %5538 = call float @dx.op.unary.f32(i32 6, float %5537)  ; FAbs(value)
  %5539 = fcmp fast olt float %5519, 0.000000e+00
  %5540 = extractvalue %dx.types.CBufRet.f32 %5520, 1
  %5541 = extractvalue %dx.types.CBufRet.f32 %5520, 3
  %5542 = select i1 %5539, float %5540, float %5541
  %5543 = fmul fast float %5542, %5519
  %5544 = call float @dx.op.unary.f32(i32 6, float %5543)  ; FAbs(value)
  %5545 = call float @dx.op.binary.f32(i32 35, float %5538, float %5544)  ; FMax(a,b)
  %5546 = fsub fast float %5532, %5545
  %5547 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5548 = fmul fast float %5547, %5502
  %5549 = fcmp fast olt float %5512, 0.000000e+00
  %5550 = extractvalue %dx.types.CBufRet.f32 %5514, 0
  %5551 = extractvalue %dx.types.CBufRet.f32 %5514, 2
  %5552 = select i1 %5549, float %5550, float %5551
  %5553 = fmul fast float %5552, %5512
  %5554 = call float @dx.op.unary.f32(i32 6, float %5553)  ; FAbs(value)
  %5555 = fcmp fast olt float %5513, 0.000000e+00
  %5556 = extractvalue %dx.types.CBufRet.f32 %5514, 1
  %5557 = extractvalue %dx.types.CBufRet.f32 %5514, 3
  %5558 = select i1 %5555, float %5556, float %5557
  %5559 = fmul fast float %5558, %5513
  %5560 = call float @dx.op.unary.f32(i32 6, float %5559)  ; FAbs(value)
  %5561 = call float @dx.op.binary.f32(i32 35, float %5554, float %5560)  ; FMax(a,b)
  %5562 = fsub fast float %5532, %5561
  %5563 = call float @dx.op.unary.f32(i32 7, float %5562)  ; Saturate(value)
  %5564 = fmul fast float %5563, %5502
  %5565 = fcmp fast olt float %5506, 0.000000e+00
  %5566 = extractvalue %dx.types.CBufRet.f32 %5508, 0
  %5567 = extractvalue %dx.types.CBufRet.f32 %5508, 2
  %5568 = select i1 %5565, float %5566, float %5567
  %5569 = fmul fast float %5568, %5506
  %5570 = call float @dx.op.unary.f32(i32 6, float %5569)  ; FAbs(value)
  %5571 = fcmp fast olt float %5507, 0.000000e+00
  %5572 = extractvalue %dx.types.CBufRet.f32 %5508, 1
  %5573 = extractvalue %dx.types.CBufRet.f32 %5508, 3
  %5574 = select i1 %5571, float %5572, float %5573
  %5575 = fmul fast float %5574, %5507
  %5576 = call float @dx.op.unary.f32(i32 6, float %5575)  ; FAbs(value)
  %5577 = call float @dx.op.binary.f32(i32 35, float %5570, float %5576)  ; FMax(a,b)
  %5578 = fsub fast float %5532, %5577
  %5579 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5580 = fmul fast float %5579, %5502
  %5581 = fadd fast float %5548, 1.000000e+00
  %5582 = fadd fast float %5564, 1.000000e+00
  %5583 = fadd fast float %5580, 1.000000e+00
  %5584 = fmul fast float %5581, 5.000000e-01
  %5585 = fmul fast float %5582, 5.000000e-01
  %5586 = fmul fast float %5583, 5.000000e-01
  %5587 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5588 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5589 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5590 = fmul fast float %5587, 1.023000e+03
  %5591 = fmul fast float %5588, 1.023000e+03
  %5592 = fmul fast float %5589, 1.023000e+03
  %5593 = fptoui float %5590 to i32
  %5594 = fptoui float %5591 to i32
  %5595 = fptoui float %5592 to i32
  %5596 = shl i32 %5594, 10
  %5597 = or i32 %5596, %5593
  %5598 = shl i32 %5595, 20
  %5599 = or i32 %5597, %5598
  br label %5600

; <label>:5600                                    ; preds = %5530, %5437
  %5601 = phi i32 [ %5599, %5530 ], [ %5420, %5437 ]
  %5602 = fcmp fast olt float %5435, 0.000000e+00
  br i1 %5602, label %6914, label %5603

; <label>:5603                                    ; preds = %5600
  %5604 = fadd fast float %5477, %5466
  %5605 = fsub fast float %5495, %5604
  %5606 = fmul fast float %5605, %5499
  %5607 = fsub fast float 1.000000e+00, %5606
  %5608 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5609 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 2
  %5612 = fadd fast float %5611, %5609
  %5613 = fcmp fast ogt float %5612, 0.000000e+00
  br i1 %5613, label %5614, label %5633

; <label>:5614                                    ; preds = %5603
  %5615 = fcmp fast olt float %5506, 0.000000e+00
  %5616 = fcmp fast olt float %5507, 0.000000e+00
  %5617 = extractvalue %dx.types.CBufRet.f32 %5508, 0
  %5618 = extractvalue %dx.types.CBufRet.f32 %5508, 1
  %5619 = extractvalue %dx.types.CBufRet.f32 %5508, 2
  %5620 = extractvalue %dx.types.CBufRet.f32 %5508, 3
  %5621 = select i1 %5615, float %5617, float %5619
  %5622 = select i1 %5616, float %5618, float %5620
  %5623 = fmul fast float %5621, %5506
  %5624 = fmul fast float %5622, %5507
  %5625 = call float @dx.op.unary.f32(i32 6, float %5623)  ; FAbs(value)
  %5626 = call float @dx.op.unary.f32(i32 6, float %5624)  ; FAbs(value)
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = call float @dx.op.binary.f32(i32 35, float %5625, float %5626)  ; FMax(a,b)
  %5630 = fsub fast float %5628, %5629
  %5631 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5632 = fmul fast float %5631, %5608
  br label %5633

; <label>:5633                                    ; preds = %5614, %5603
  %5634 = phi float [ %5632, %5614 ], [ 0.000000e+00, %5603 ]
  %5635 = extractvalue %dx.types.CBufRet.f32 %5478, 2
  %5636 = extractvalue %dx.types.CBufRet.f32 %5610, 1
  %5637 = fadd fast float %5636, %5635
  %5638 = fcmp fast ogt float %5637, 0.000000e+00
  br i1 %5638, label %5639, label %5658

; <label>:5639                                    ; preds = %5633
  %5640 = fcmp fast olt float %5512, 0.000000e+00
  %5641 = fcmp fast olt float %5513, 0.000000e+00
  %5642 = extractvalue %dx.types.CBufRet.f32 %5514, 0
  %5643 = extractvalue %dx.types.CBufRet.f32 %5514, 1
  %5644 = extractvalue %dx.types.CBufRet.f32 %5514, 2
  %5645 = extractvalue %dx.types.CBufRet.f32 %5514, 3
  %5646 = select i1 %5640, float %5642, float %5644
  %5647 = select i1 %5641, float %5643, float %5645
  %5648 = fmul fast float %5646, %5512
  %5649 = fmul fast float %5647, %5513
  %5650 = call float @dx.op.unary.f32(i32 6, float %5648)  ; FAbs(value)
  %5651 = call float @dx.op.unary.f32(i32 6, float %5649)  ; FAbs(value)
  %5652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5652, 0
  %5654 = call float @dx.op.binary.f32(i32 35, float %5650, float %5651)  ; FMax(a,b)
  %5655 = fsub fast float %5653, %5654
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fmul fast float %5656, %5608
  br label %5658

; <label>:5658                                    ; preds = %5639, %5633
  %5659 = phi float [ %5657, %5639 ], [ 0.000000e+00, %5633 ]
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 1
  %5662 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  %5663 = fcmp fast olt float %5518, 0.000000e+00
  %5664 = fcmp fast olt float %5519, 0.000000e+00
  %5665 = extractvalue %dx.types.CBufRet.f32 %5520, 0
  %5666 = extractvalue %dx.types.CBufRet.f32 %5520, 1
  %5667 = extractvalue %dx.types.CBufRet.f32 %5520, 2
  %5668 = extractvalue %dx.types.CBufRet.f32 %5520, 3
  %5669 = select i1 %5663, float %5665, float %5667
  %5670 = select i1 %5664, float %5666, float %5668
  %5671 = fmul fast float %5669, %5518
  %5672 = fmul fast float %5670, %5519
  %5673 = call float @dx.op.unary.f32(i32 6, float %5671)  ; FAbs(value)
  %5674 = call float @dx.op.unary.f32(i32 6, float %5672)  ; FAbs(value)
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5677 = call float @dx.op.binary.f32(i32 35, float %5673, float %5674)  ; FMax(a,b)
  %5678 = fsub fast float %5676, %5677
  %5679 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  %5680 = call float @dx.op.binary.f32(i32 36, float %5679, float %5662)  ; FMin(a,b)
  %5681 = fmul fast float %5680, %5608
  %5682 = fsub fast float %5659, %5681
  %5683 = fsub fast float %5634, %5659
  %5684 = fsub fast float %5683, %5681
  %5685 = call float @dx.op.binary.f32(i32 35, float %5659, float %5634)  ; FMax(a,b)
  %5686 = call float @dx.op.binary.f32(i32 35, float %5681, float %5685)  ; FMax(a,b)
  %5687 = fcmp fast olt float %5686, 1.000000e+00
  br i1 %5687, label %5688, label %6359, !dx.controlflow.hints !134

; <label>:5688                                    ; preds = %5658
  %5689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5690 = extractvalue %dx.types.CBufRet.f32 %5689, 0
  %5691 = fcmp fast une float %5690, 0.000000e+00
  br i1 %5691, label %5692, label %6359, !dx.controlflow.hints !135

; <label>:5692                                    ; preds = %5688
  %5693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.f32 %5693, 0
  %5695 = extractvalue %dx.types.CBufRet.f32 %5693, 1
  %5696 = extractvalue %dx.types.CBufRet.f32 %5693, 2
  %5697 = extractvalue %dx.types.CBufRet.f32 %5693, 3
  %5698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.f32 %5698, 0
  %5700 = extractvalue %dx.types.CBufRet.f32 %5698, 1
  %5701 = extractvalue %dx.types.CBufRet.f32 %5698, 2
  %5702 = extractvalue %dx.types.CBufRet.f32 %5698, 3
  %5703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5704 = extractvalue %dx.types.CBufRet.f32 %5703, 0
  %5705 = extractvalue %dx.types.CBufRet.f32 %5703, 1
  %5706 = extractvalue %dx.types.CBufRet.f32 %5703, 2
  %5707 = extractvalue %dx.types.CBufRet.f32 %5703, 3
  %5708 = fmul fast float %5694, %154
  %5709 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5695, float %5708)  ; FMad(a,b,c)
  %5710 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5696, float %5709)  ; FMad(a,b,c)
  %5711 = fadd fast float %5710, %5697
  %5712 = fmul fast float %5699, %154
  %5713 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5700, float %5712)  ; FMad(a,b,c)
  %5714 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5701, float %5713)  ; FMad(a,b,c)
  %5715 = fadd fast float %5714, %5702
  %5716 = fmul fast float %5704, %154
  %5717 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5705, float %5716)  ; FMad(a,b,c)
  %5718 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5706, float %5717)  ; FMad(a,b,c)
  %5719 = fadd fast float %5718, %5707
  %5720 = fcmp fast oge float %5711, 1.000000e+00
  %5721 = fcmp fast oge float %5715, 1.000000e+00
  %5722 = or i1 %5720, %5721
  %5723 = fcmp fast olt float %5711, 0.000000e+00
  %5724 = fcmp fast olt float %5715, 0.000000e+00
  %5725 = or i1 %5723, %5724
  %5726 = or i1 %5722, %5725
  br i1 %5726, label %6359, label %5727, !dx.controlflow.hints !136

; <label>:5727                                    ; preds = %5692
  %5728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5729 = extractvalue %dx.types.CBufRet.f32 %5728, 0
  %5730 = extractvalue %dx.types.CBufRet.f32 %5728, 1
  %5731 = extractvalue %dx.types.CBufRet.f32 %5728, 2
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5735 = extractvalue %dx.types.CBufRet.i32 %5734, 2
  %5736 = uitofp i32 %5735 to float
  %5737 = extractvalue %dx.types.CBufRet.i32 %5734, 3
  %5738 = uitofp i32 %5737 to float
  %5739 = extractvalue %dx.types.CBufRet.f32 %5728, 3
  %5740 = fmul fast float %5739, 2.000000e+00
  %5741 = fsub fast float %5711, %5729
  %5742 = fsub fast float %5715, %5730
  %5743 = fmul fast float %5740, %5741
  %5744 = fmul fast float %5740, %5742
  %5745 = fdiv fast float 1.000000e+00, %5440
  %5746 = fmul fast float %5744, %5745
  %5747 = call float @dx.op.unary.f32(i32 6, float %5746)  ; FAbs(value)
  %5748 = fmul fast float %5731, %156
  %5749 = fmul fast float %5748, %5740
  %5750 = call float @dx.op.unary.f32(i32 6, float %5749)  ; FAbs(value)
  %5751 = call float @dx.op.unary.f32(i32 6, float %5743)  ; FAbs(value)
  %5752 = call float @dx.op.binary.f32(i32 35, float %5750, float %5747)  ; FMax(a,b)
  %5753 = call float @dx.op.binary.f32(i32 35, float %5751, float %5752)  ; FMax(a,b)
  %5754 = fmul fast float %5753, 2.000000e+00
  %5755 = call float @dx.op.unary.f32(i32 23, float %5754)  ; Log(value)
  %5756 = call float @dx.op.binary.f32(i32 35, float %5755, float %5736)  ; FMax(a,b)
  %5757 = call float @dx.op.unary.f32(i32 22, float %5756)  ; Frc(value)
  %5758 = fadd fast float %5757, 0xBFEA666660000000
  %5759 = fmul fast float %5758, 8.000000e+00
  %5760 = call float @dx.op.unary.f32(i32 7, float %5759)  ; Saturate(value)
  %5761 = call float @dx.op.unary.f32(i32 27, float %5756)  ; Round_ni(value)
  %5762 = fadd fast float %5761, %5760
  %5763 = call float @dx.op.binary.f32(i32 36, float %5762, float %5738)  ; FMin(a,b)
  %5764 = call float @dx.op.unary.f32(i32 27, float %5763)  ; Round_ni(value)
  %5765 = fsub fast float -0.000000e+00, %5764
  %5766 = call float @dx.op.unary.f32(i32 21, float %5765)  ; Exp(value)
  %5767 = fmul fast float %5766, %5740
  %5768 = fmul fast float %5767, %5711
  %5769 = fmul fast float %5767, %5715
  %5770 = fmul fast float %5768, 5.000000e-01
  %5771 = fmul fast float %5769, 5.000000e-01
  %5772 = fadd fast float %5770, 5.000000e-01
  %5773 = fadd fast float %5771, 5.000000e-01
  %5774 = fmul fast float %5768, 2.500000e-01
  %5775 = fmul fast float %5769, 2.500000e-01
  %5776 = fadd fast float %5774, 5.000000e-01
  %5777 = fadd fast float %5775, 5.000000e-01
  %5778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5779 = extractvalue %dx.types.ResRet.i32 %5778, 0
  %5780 = and i32 %5779, 536870911
  %5781 = lshr i32 %5780, 9
  %5782 = uitofp i32 %5781 to float
  %5783 = fmul fast float %5782, %5711
  %5784 = fmul fast float %5782, %5715
  %5785 = call float @dx.op.unary.f32(i32 22, float %5783)  ; Frc(value)
  %5786 = call float @dx.op.unary.f32(i32 22, float %5784)  ; Frc(value)
  %5787 = call float @dx.op.unary.f32(i32 22, float %5760)  ; Frc(value)
  %5788 = fcmp fast une float %5787, 0.000000e+00
  br i1 %5788, label %5789, label %5887, !dx.controlflow.hints !137

; <label>:5789                                    ; preds = %5727
  %5790 = call float @dx.op.unary.f32(i32 21, float %5761)  ; Exp(value)
  %5791 = fmul fast float %5790, 1.953125e-03
  %5792 = fcmp fast olt float %5785, %5791
  %5793 = fcmp fast olt float %5786, %5791
  %5794 = or i1 %5792, %5793
  %5795 = fsub fast float 1.000000e+00, %5791
  %5796 = fcmp fast ogt float %5785, %5795
  %5797 = fcmp fast ogt float %5786, %5795
  %5798 = or i1 %5796, %5797
  %5799 = or i1 %5794, %5798
  br i1 %5799, label %5800, label %5966, !dx.controlflow.hints !138

; <label>:5800                                    ; preds = %5789
  %5801 = fmul fast float %5733, 5.000000e-01
  %5802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5803 = extractvalue %dx.types.CBufRet.i32 %5802, 0
  %5804 = fmul fast float %5715, 3.530000e+02
  %5805 = uitofp i32 %5780 to float
  %5806 = fmul fast float %5804, %5805
  %5807 = fmul fast float %5711, 6.130000e+02
  %5808 = fadd fast float %5806, %5807
  %5809 = fptoui float %5808 to i32
  %5810 = add i32 %5803, %5809
  %5811 = mul i32 %5810, -63
  %5812 = lshr i32 %5811, 17
  %5813 = xor i32 %5812, %5811
  %5814 = mul i32 %5813, -511
  %5815 = mul i32 %5813, -8176
  %5816 = xor i32 %5814, %5815
  %5817 = mul i32 %5816, -7
  %5818 = mul i32 %5816, -7168
  %5819 = xor i32 %5817, %5818
  %5820 = lshr i32 %5819, 15
  %5821 = xor i32 %5820, %5817
  %5822 = and i32 %5821, 15
  %5823 = mul i32 %5822, 2
  %5824 = add i32 0, %5823
  %5825 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5824
  %5826 = load float, float* %5825, align 4
  %5827 = mul i32 %5822, 2
  %5828 = add i32 1, %5827
  %5829 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5828
  %5830 = load float, float* %5829, align 4
  %5831 = fmul fast float %5715, 2.770000e+02
  %5832 = fmul fast float %5831, %5805
  %5833 = fmul fast float %5711, 5.990000e+02
  %5834 = fadd fast float %5832, %5833
  %5835 = fptoui float %5834 to i32
  %5836 = mul i32 %5835, -63
  %5837 = lshr i32 %5836, 17
  %5838 = xor i32 %5837, %5836
  %5839 = mul i32 %5838, -511
  %5840 = mul i32 %5838, -8176
  %5841 = xor i32 %5839, %5840
  %5842 = mul i32 %5841, -7
  %5843 = mul i32 %5841, -7168
  %5844 = xor i32 %5842, %5843
  %5845 = lshr i32 %5844, 15
  %5846 = xor i32 %5845, %5842
  %5847 = and i32 %5846, 63
  %5848 = mul i32 %5847, 2
  %5849 = add i32 0, %5848
  %5850 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5849
  %5851 = load float, float* %5850, align 4
  %5852 = mul i32 %5847, 2
  %5853 = add i32 1, %5852
  %5854 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5853
  %5855 = load float, float* %5854, align 4
  %5856 = call float @dx.op.dot2.f32(i32 54, float %5826, float %5830, float %5851, float %5855)  ; Dot2(ax,ay,bx,by)
  %5857 = fsub fast float -0.000000e+00, %5851
  %5858 = call float @dx.op.dot2.f32(i32 54, float %5826, float %5830, float %5857, float %5855)  ; Dot2(ax,ay,bx,by)
  %5859 = fmul fast float %5856, %5801
  %5860 = fmul fast float %5858, %5801
  %5861 = fdiv fast float 2.000000e+00, %5767
  %5862 = fmul fast float %5790, 9.765625e-04
  %5863 = fcmp fast olt float %5785, %5862
  %5864 = fcmp fast olt float %5786, %5862
  %5865 = or i1 %5863, %5864
  %5866 = fsub fast float 1.000000e+00, %5862
  %5867 = fcmp fast ogt float %5785, %5866
  %5868 = fcmp fast ogt float %5786, %5866
  %5869 = or i1 %5867, %5868
  %5870 = or i1 %5865, %5869
  %5871 = fmul fast float %5859, 2.000000e+00
  br i1 %5870, label %5872, label %5876

; <label>:5872                                    ; preds = %5800
  %5873 = fmul fast float %5860, 2.000000e+00
  %5874 = fadd fast float %5871, %5772
  %5875 = fadd fast float %5873, %5773
  br label %5876

; <label>:5876                                    ; preds = %5872, %5800
  %5877 = phi float [ %5874, %5872 ], [ %5772, %5800 ]
  %5878 = phi float [ %5875, %5872 ], [ %5773, %5800 ]
  %5879 = phi i32 [ 3, %5872 ], [ 2, %5800 ]
  %5880 = fadd fast float %5859, %5776
  %5881 = fadd fast float %5860, %5777
  %5882 = fmul fast float %5871, %5861
  %5883 = fmul fast float %5861, 2.000000e+00
  %5884 = fmul fast float %5883, %5860
  %5885 = fadd fast float %5882, %5711
  %5886 = fadd fast float %5884, %5715
  br label %5966

; <label>:5887                                    ; preds = %5727
  %5888 = call float @dx.op.unary.f32(i32 21, float %5764)  ; Exp(value)
  %5889 = fmul fast float %5888, 9.765625e-04
  %5890 = fcmp fast olt float %5785, %5889
  %5891 = fcmp fast olt float %5786, %5889
  %5892 = or i1 %5890, %5891
  %5893 = fsub fast float 1.000000e+00, %5889
  %5894 = fcmp fast ogt float %5785, %5893
  %5895 = fcmp fast ogt float %5786, %5893
  %5896 = or i1 %5894, %5895
  %5897 = or i1 %5892, %5896
  br i1 %5897, label %5898, label %5966, !dx.controlflow.hints !139

; <label>:5898                                    ; preds = %5887
  %5899 = fmul fast float %5733, 5.000000e-01
  %5900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.i32 %5900, 0
  %5902 = fmul fast float %5715, 3.530000e+02
  %5903 = uitofp i32 %5780 to float
  %5904 = fmul fast float %5902, %5903
  %5905 = fmul fast float %5711, 6.130000e+02
  %5906 = fadd fast float %5904, %5905
  %5907 = fptoui float %5906 to i32
  %5908 = add i32 %5901, %5907
  %5909 = mul i32 %5908, -63
  %5910 = lshr i32 %5909, 17
  %5911 = xor i32 %5910, %5909
  %5912 = mul i32 %5911, -511
  %5913 = mul i32 %5911, -8176
  %5914 = xor i32 %5912, %5913
  %5915 = mul i32 %5914, -7
  %5916 = mul i32 %5914, -7168
  %5917 = xor i32 %5915, %5916
  %5918 = lshr i32 %5917, 15
  %5919 = xor i32 %5918, %5915
  %5920 = and i32 %5919, 15
  %5921 = mul i32 %5920, 2
  %5922 = add i32 0, %5921
  %5923 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5922
  %5924 = load float, float* %5923, align 4
  %5925 = mul i32 %5920, 2
  %5926 = add i32 1, %5925
  %5927 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5926
  %5928 = load float, float* %5927, align 4
  %5929 = fmul fast float %5715, 2.770000e+02
  %5930 = fmul fast float %5929, %5903
  %5931 = fmul fast float %5711, 5.990000e+02
  %5932 = fadd fast float %5930, %5931
  %5933 = fptoui float %5932 to i32
  %5934 = mul i32 %5933, -63
  %5935 = lshr i32 %5934, 17
  %5936 = xor i32 %5935, %5934
  %5937 = mul i32 %5936, -511
  %5938 = mul i32 %5936, -8176
  %5939 = xor i32 %5937, %5938
  %5940 = mul i32 %5939, -7
  %5941 = mul i32 %5939, -7168
  %5942 = xor i32 %5940, %5941
  %5943 = lshr i32 %5942, 15
  %5944 = xor i32 %5943, %5940
  %5945 = and i32 %5944, 63
  %5946 = mul i32 %5945, 2
  %5947 = add i32 0, %5946
  %5948 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5947
  %5949 = load float, float* %5948, align 4
  %5950 = mul i32 %5945, 2
  %5951 = add i32 1, %5950
  %5952 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5951
  %5953 = load float, float* %5952, align 4
  %5954 = call float @dx.op.dot2.f32(i32 54, float %5924, float %5928, float %5949, float %5953)  ; Dot2(ax,ay,bx,by)
  %5955 = fsub fast float -0.000000e+00, %5949
  %5956 = call float @dx.op.dot2.f32(i32 54, float %5924, float %5928, float %5955, float %5953)  ; Dot2(ax,ay,bx,by)
  %5957 = fmul fast float %5954, %5899
  %5958 = fmul fast float %5956, %5899
  %5959 = fadd fast float %5957, %5772
  %5960 = fadd fast float %5958, %5773
  %5961 = fdiv fast float 2.000000e+00, %5767
  %5962 = fmul fast float %5961, %5957
  %5963 = fmul fast float %5958, %5961
  %5964 = fadd fast float %5962, %5711
  %5965 = fadd fast float %5963, %5715
  br label %5966

; <label>:5966                                    ; preds = %5898, %5887, %5876, %5789
  %5967 = phi float [ %5880, %5876 ], [ %5776, %5789 ], [ %5776, %5898 ], [ %5776, %5887 ]
  %5968 = phi float [ %5881, %5876 ], [ %5777, %5789 ], [ %5777, %5898 ], [ %5777, %5887 ]
  %5969 = phi float [ %5877, %5876 ], [ %5772, %5789 ], [ %5959, %5898 ], [ %5772, %5887 ]
  %5970 = phi float [ %5878, %5876 ], [ %5773, %5789 ], [ %5960, %5898 ], [ %5773, %5887 ]
  %5971 = phi i32 [ %5879, %5876 ], [ 0, %5789 ], [ 1, %5898 ], [ 0, %5887 ]
  %5972 = phi float [ %5885, %5876 ], [ %5711, %5789 ], [ %5964, %5898 ], [ %5711, %5887 ]
  %5973 = phi float [ %5886, %5876 ], [ %5715, %5789 ], [ %5965, %5898 ], [ %5715, %5887 ]
  %5974 = fsub fast float %5738, %5736
  %5975 = fptoui float %5974 to i32
  %5976 = add i32 %5975, 320
  %5977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %5976)  ; CBufferLoadLegacy(handle,regIndex)
  %5978 = extractvalue %dx.types.CBufRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.CBufRet.f32 %5977, 1
  %5980 = fcmp fast une float %5763, %5738
  %5981 = fsub fast float %5972, %5978
  %5982 = fsub fast float %5973, %5979
  %5983 = call float @dx.op.unary.f32(i32 6, float %5981)  ; FAbs(value)
  %5984 = call float @dx.op.unary.f32(i32 6, float %5982)  ; FAbs(value)
  %5985 = fmul fast float %5983, %5767
  %5986 = fmul fast float %5984, %5767
  %5987 = fcmp fast olt float %5985, 1.000000e+00
  %5988 = fcmp fast olt float %5986, 1.000000e+00
  %5989 = and i1 %5987, %5988
  %5990 = or i1 %5980, %5989
  br i1 %5990, label %5991, label %6359, !dx.controlflow.hints !140

; <label>:5991                                    ; preds = %5966
  %5992 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5993 = extractvalue %dx.types.CBufRet.i32 %5992, 2
  %5994 = sitofp i32 %5993 to float
  %5995 = fsub fast float %5763, %5994
  %5996 = call float @dx.op.unary.f32(i32 27, float %5995)  ; Round_ni(value)
  %5997 = call float @dx.op.unary.f32(i32 22, float %5763)  ; Frc(value)
  %5998 = icmp eq i32 %5971, 0
  %5999 = call float @dx.op.unary.f32(i32 22, float %5969)  ; Frc(value)
  %6000 = call float @dx.op.unary.f32(i32 22, float %5970)  ; Frc(value)
  br i1 %5998, label %6071, label %6001, !dx.controlflow.hints !141

; <label>:6001                                    ; preds = %5991
  %6002 = and i32 %5971, 1
  %6003 = icmp eq i32 %6002, 0
  br i1 %6003, label %6017, label %6004, !dx.controlflow.hints !142

; <label>:6004                                    ; preds = %6001
  %6005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6006 = extractvalue %dx.types.CBufRet.f32 %6005, 0
  %6007 = fmul fast float %5999, %6006
  %6008 = fmul fast float %6000, %6006
  %6009 = fptoui float %6007 to i32
  %6010 = fptoui float %6008 to i32
  %6011 = fptoui float %5996 to i32
  %6012 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %6009, i32 %6010, i32 %6011, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6013 = extractvalue %dx.types.ResRet.f32 %6012, 0
  %6014 = extractvalue %dx.types.ResRet.f32 %6012, 1
  %6015 = extractvalue %dx.types.ResRet.f32 %6012, 2
  %6016 = extractvalue %dx.types.ResRet.f32 %6012, 3
  br label %6023

; <label>:6017                                    ; preds = %6001
  %6018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %61, float %5999, float %6000, float %5996, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6019 = extractvalue %dx.types.ResRet.f32 %6018, 0
  %6020 = extractvalue %dx.types.ResRet.f32 %6018, 1
  %6021 = extractvalue %dx.types.ResRet.f32 %6018, 2
  %6022 = extractvalue %dx.types.ResRet.f32 %6018, 3
  br label %6023

; <label>:6023                                    ; preds = %6017, %6004
  %6024 = phi float [ %6013, %6004 ], [ %6019, %6017 ]
  %6025 = phi float [ %6014, %6004 ], [ %6020, %6017 ]
  %6026 = phi float [ %6015, %6004 ], [ %6021, %6017 ]
  %6027 = phi float [ %6016, %6004 ], [ %6022, %6017 ]
  %6028 = fcmp fast ogt float %5997, 0.000000e+00
  br i1 %6028, label %6029, label %6099

; <label>:6029                                    ; preds = %6023
  %6030 = and i32 %5971, 2
  %6031 = icmp eq i32 %6030, 0
  %6032 = fadd fast float %5996, 1.000000e+00
  %6033 = call float @dx.op.unary.f32(i32 22, float %5967)  ; Frc(value)
  %6034 = call float @dx.op.unary.f32(i32 22, float %5968)  ; Frc(value)
  br i1 %6031, label %6048, label %6035, !dx.controlflow.hints !143

; <label>:6035                                    ; preds = %6029
  %6036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.f32 %6036, 0
  %6038 = fmul fast float %6033, %6037
  %6039 = fmul fast float %6034, %6037
  %6040 = fptoui float %6038 to i32
  %6041 = fptoui float %6039 to i32
  %6042 = fptoui float %6032 to i32
  %6043 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %6040, i32 %6041, i32 %6042, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6044 = extractvalue %dx.types.ResRet.f32 %6043, 0
  %6045 = extractvalue %dx.types.ResRet.f32 %6043, 1
  %6046 = extractvalue %dx.types.ResRet.f32 %6043, 2
  %6047 = extractvalue %dx.types.ResRet.f32 %6043, 3
  br label %6054

; <label>:6048                                    ; preds = %6029
  %6049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %61, float %6033, float %6034, float %6032, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6050 = extractvalue %dx.types.ResRet.f32 %6049, 0
  %6051 = extractvalue %dx.types.ResRet.f32 %6049, 1
  %6052 = extractvalue %dx.types.ResRet.f32 %6049, 2
  %6053 = extractvalue %dx.types.ResRet.f32 %6049, 3
  br label %6054

; <label>:6054                                    ; preds = %6048, %6035
  %6055 = phi float [ %6044, %6035 ], [ %6050, %6048 ]
  %6056 = phi float [ %6045, %6035 ], [ %6051, %6048 ]
  %6057 = phi float [ %6046, %6035 ], [ %6052, %6048 ]
  %6058 = phi float [ %6047, %6035 ], [ %6053, %6048 ]
  %6059 = fsub fast float %6055, %6024
  %6060 = fsub fast float %6056, %6025
  %6061 = fsub fast float %6057, %6026
  %6062 = fsub fast float %6058, %6027
  %6063 = fmul fast float %6059, %5997
  %6064 = fmul fast float %6060, %5997
  %6065 = fmul fast float %6061, %5997
  %6066 = fmul fast float %6062, %5997
  %6067 = fadd fast float %6063, %6024
  %6068 = fadd fast float %6064, %6025
  %6069 = fadd fast float %6065, %6026
  %6070 = fadd fast float %6066, %6027
  br label %6099

; <label>:6071                                    ; preds = %5991
  %6072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %61, float %5999, float %6000, float %5996, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6073 = extractvalue %dx.types.ResRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.ResRet.f32 %6072, 1
  %6075 = extractvalue %dx.types.ResRet.f32 %6072, 2
  %6076 = extractvalue %dx.types.ResRet.f32 %6072, 3
  %6077 = fcmp fast ogt float %5997, 0.000000e+00
  br i1 %6077, label %6078, label %6099, !dx.controlflow.hints !144

; <label>:6078                                    ; preds = %6071
  %6079 = fadd fast float %5996, 1.000000e+00
  %6080 = call float @dx.op.unary.f32(i32 22, float %5967)  ; Frc(value)
  %6081 = call float @dx.op.unary.f32(i32 22, float %5968)  ; Frc(value)
  %6082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %61, float %6080, float %6081, float %6079, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6083 = extractvalue %dx.types.ResRet.f32 %6082, 0
  %6084 = extractvalue %dx.types.ResRet.f32 %6082, 1
  %6085 = extractvalue %dx.types.ResRet.f32 %6082, 2
  %6086 = extractvalue %dx.types.ResRet.f32 %6082, 3
  %6087 = fsub fast float %6083, %6073
  %6088 = fsub fast float %6084, %6074
  %6089 = fsub fast float %6085, %6075
  %6090 = fsub fast float %6086, %6076
  %6091 = fmul fast float %6087, %5997
  %6092 = fmul fast float %6088, %5997
  %6093 = fmul fast float %6089, %5997
  %6094 = fmul fast float %6090, %5997
  %6095 = fadd fast float %6091, %6073
  %6096 = fadd fast float %6092, %6074
  %6097 = fadd fast float %6093, %6075
  %6098 = fadd fast float %6094, %6076
  br label %6099

; <label>:6099                                    ; preds = %6078, %6071, %6054, %6023
  %6100 = phi float [ %6067, %6054 ], [ %6024, %6023 ], [ %6095, %6078 ], [ %6073, %6071 ]
  %6101 = phi float [ %6068, %6054 ], [ %6025, %6023 ], [ %6096, %6078 ], [ %6074, %6071 ]
  %6102 = phi float [ %6069, %6054 ], [ %6026, %6023 ], [ %6097, %6078 ], [ %6075, %6071 ]
  %6103 = phi float [ %6070, %6054 ], [ %6027, %6023 ], [ %6098, %6078 ], [ %6076, %6071 ]
  %6104 = fadd fast float %6100, -5.000000e-01
  %6105 = fadd fast float %6102, -5.000000e-01
  %6106 = fmul fast float %6104, 0xBFD5555560000000
  %6107 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6105, float %6106)  ; FMad(a,b,c)
  %6108 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6101, float 0.000000e+00)  ; FMad(a,b,c)
  %6109 = fadd fast float %6108, %6103
  %6110 = fmul fast float %6104, -7.500000e-01
  %6111 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6105, float %6110)  ; FMad(a,b,c)
  %6112 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6101, float 0.000000e+00)  ; FMad(a,b,c)
  %6113 = fadd fast float %6112, %6103
  %6114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.f32 %6114, 0
  %6116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.CBufRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.CBufRet.f32 %6116, 2
  %6120 = extractvalue %dx.types.CBufRet.f32 %6116, 3
  %6121 = fsub fast float %6117, %6107
  %6122 = fsub fast float %6118, %6109
  %6123 = fsub fast float %6119, %6111
  %6124 = fsub fast float %6120, %6113
  %6125 = fmul fast float %6121, %6115
  %6126 = fmul fast float %6122, %6115
  %6127 = fmul fast float %6123, %6115
  %6128 = fmul fast float %6124, %6115
  %6129 = fadd fast float %6125, %6107
  %6130 = fadd fast float %6126, %6109
  %6131 = fadd fast float %6127, %6111
  %6132 = fadd fast float %6128, %6113
  %6133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6134 = extractvalue %dx.types.ResRet.i32 %6133, 0
  %6135 = and i32 %6134, 536870911
  %6136 = uitofp i32 %6135 to float
  %6137 = fmul fast float %6136, %5972
  %6138 = fmul fast float %6136, %5973
  %6139 = fptoui float %6137 to i32
  %6140 = fptoui float %6138 to i32
  %6141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6142 = extractvalue %dx.types.ResRet.i32 %6141, 0
  %6143 = and i32 %6142, 31
  %6144 = lshr i32 %6139, %6143
  %6145 = lshr i32 %6140, %6143
  %6146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6147 = extractvalue %dx.types.ResRet.i32 %6146, 0
  %6148 = and i32 %6147, 31
  %6149 = shl i32 1, %6148
  %6150 = call i32 @dx.op.binary.i32(i32 40, i32 %6149, i32 4)  ; UMin(a,b)
  %6151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6152 = extractvalue %dx.types.ResRet.i32 %6151, 0
  %6153 = extractvalue %dx.types.ResRet.i32 %6151, 1
  %6154 = icmp eq i32 %6150, 0
  br i1 %6154, label %6196, label %6155

; <label>:6155                                    ; preds = %6099
  br label %6156

; <label>:6156                                    ; preds = %6184, %6155
  %6157 = phi i32 [ %6187, %6184 ], [ 0, %6155 ]
  %6158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6159 = extractvalue %dx.types.ResRet.i32 %6158, 0
  %6160 = lshr i32 %6159, 16
  %6161 = and i32 %6160, 31
  %6162 = shl i32 %6145, %6161
  %6163 = add i32 %6162, %6144
  %6164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6165 = extractvalue %dx.types.ResRet.i32 %6164, 0
  %6166 = and i32 %6165, 31
  %6167 = shl i32 %6163, %6166
  %6168 = add i32 %6167, %6157
  %6169 = shl i32 %6168, 2
  %6170 = add i32 %6169, 32
  %6171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6170, i32 undef)  ; BufferLoad(srv,index,wot)
  %6172 = extractvalue %dx.types.ResRet.i32 %6171, 0
  %6173 = icmp slt i32 %6172, 0
  %6174 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6157
  %6175 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6157
  %6176 = bitcast float* %6174 to i32*
  %6177 = bitcast float* %6175 to i32*
  br i1 %6173, label %6178, label %6184

; <label>:6178                                    ; preds = %6156
  %6179 = and i32 %6172, 1073741823
  %6180 = add nuw nsw i32 %6179, 20
  %6181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6180, i32 undef)  ; BufferLoad(srv,index,wot)
  %6182 = extractvalue %dx.types.ResRet.i32 %6181, 0
  %6183 = extractvalue %dx.types.ResRet.i32 %6181, 1
  br label %6184

; <label>:6184                                    ; preds = %6178, %6156
  %6185 = phi i32 [ %6182, %6178 ], [ %6152, %6156 ]
  %6186 = phi i32 [ %6183, %6178 ], [ %6153, %6156 ]
  store i32 %6185, i32* %6176, align 4
  store i32 %6186, i32* %6177, align 4
  %6187 = add nuw i32 %6157, 1
  %6188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6189 = extractvalue %dx.types.CBufRet.i32 %6188, 2
  %6190 = icmp eq i32 %6189, 0
  %6191 = icmp ugt i32 %6172, -1073741825
  %6192 = and i1 %6191, %6190
  %6193 = icmp ult i32 %6187, %6150
  %6194 = and i1 %6192, %6193
  br i1 %6194, label %6156, label %6195

; <label>:6195                                    ; preds = %6184
  br label %6196

; <label>:6196                                    ; preds = %6195, %6099
  %6197 = phi i32 [ 0, %6099 ], [ %6187, %6195 ]
  %6198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6199 = extractvalue %dx.types.CBufRet.f32 %6198, 2
  %6200 = fptoui float %6199 to i32
  %6201 = icmp eq i32 %6200, 0
  br i1 %6201, label %6253, label %6202

; <label>:6202                                    ; preds = %6196
  br label %6203

; <label>:6203                                    ; preds = %6248, %6202
  %6204 = phi i32 [ %6249, %6248 ], [ %6197, %6202 ]
  %6205 = phi i32 [ %6250, %6248 ], [ 0, %6202 ]
  %6206 = lshr i32 %6205, 2
  %6207 = and i32 %6205, 3
  %6208 = add nuw nsw i32 %6206, 83
  %6209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 %6208)  ; CBufferLoadLegacy(handle,regIndex)
  %6210 = extractvalue %dx.types.CBufRet.i32 %6209, 0
  %6211 = extractvalue %dx.types.CBufRet.i32 %6209, 1
  %6212 = extractvalue %dx.types.CBufRet.i32 %6209, 2
  %6213 = extractvalue %dx.types.CBufRet.i32 %6209, 3
  %6214 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i32 0, i32 0
  store i32 %6210, i32* %6214, align 4
  %6215 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i32 0, i32 1
  store i32 %6211, i32* %6215, align 4
  %6216 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i32 0, i32 2
  store i32 %6212, i32* %6216, align 4
  %6217 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i32 0, i32 3
  store i32 %6213, i32* %6217, align 4
  %6218 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i32 0, i32 %6207
  %6219 = load i32, i32* %6218, align 4, !tbaa !145, !noalias !147
  %6220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6221 = extractvalue %dx.types.ResRet.i32 %6220, 0
  %6222 = lshr i32 %6221, 16
  %6223 = and i32 %6222, 31
  %6224 = shl i32 %6145, %6223
  %6225 = add i32 %6224, %6144
  %6226 = shl i32 %6225, 2
  %6227 = add i32 %6226, %6219
  %6228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6227, i32 undef)  ; BufferLoad(srv,index,wot)
  %6229 = extractvalue %dx.types.ResRet.i32 %6228, 0
  %6230 = icmp eq i32 %6229, 0
  br i1 %6230, label %6248, label %6231

; <label>:6231                                    ; preds = %6203
  %6232 = icmp slt i32 %6229, 0
  %6233 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6204
  %6234 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6204
  %6235 = bitcast float* %6233 to i32*
  %6236 = bitcast float* %6234 to i32*
  br i1 %6232, label %6237, label %6244

; <label>:6237                                    ; preds = %6231
  %6238 = and i32 %6229, 1073741823
  %6239 = add i32 %6219, 20
  %6240 = add i32 %6239, %6238
  %6241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6240, i32 undef)  ; BufferLoad(srv,index,wot)
  %6242 = extractvalue %dx.types.ResRet.i32 %6241, 0
  %6243 = extractvalue %dx.types.ResRet.i32 %6241, 1
  br label %6244

; <label>:6244                                    ; preds = %6237, %6231
  %6245 = phi i32 [ %6242, %6237 ], [ %6152, %6231 ]
  %6246 = phi i32 [ %6243, %6237 ], [ %6153, %6231 ]
  store i32 %6245, i32* %6235, align 4
  store i32 %6246, i32* %6236, align 4
  %6247 = add i32 %6204, 1
  br label %6248

; <label>:6248                                    ; preds = %6244, %6203
  %6249 = phi i32 [ %6204, %6203 ], [ %6247, %6244 ]
  %6250 = add nuw i32 %6205, 1
  %6251 = icmp eq i32 %6250, %6200
  br i1 %6251, label %6252, label %6203

; <label>:6252                                    ; preds = %6248
  br label %6253

; <label>:6253                                    ; preds = %6252, %6196
  %6254 = phi i32 [ %6197, %6196 ], [ %6249, %6252 ]
  %6255 = icmp eq i32 %6254, 1
  %6256 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %6257 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %6255, label %6258, label %6261

; <label>:6258                                    ; preds = %6253
  %6259 = load float, float* %6256, align 4
  %6260 = load float, float* %6257, align 4
  br label %6288

; <label>:6261                                    ; preds = %6253
  %6262 = load float, float* %6256, align 4
  %6263 = load float, float* %6257, align 4
  %6264 = fdiv fast float 1.000000e+00, %6263
  %6265 = fsub fast float %6262, %6264
  %6266 = icmp ugt i32 %6254, 1
  br i1 %6266, label %6267, label %6283

; <label>:6267                                    ; preds = %6261
  br label %6268

; <label>:6268                                    ; preds = %6268, %6267
  %6269 = phi float [ %6278, %6268 ], [ %6265, %6267 ]
  %6270 = phi float [ %6279, %6268 ], [ %6262, %6267 ]
  %6271 = phi i32 [ %6280, %6268 ], [ 1, %6267 ]
  %6272 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6271
  %6273 = load float, float* %6272, align 4
  %6274 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6271
  %6275 = load float, float* %6274, align 4
  %6276 = fdiv fast float 1.000000e+00, %6275
  %6277 = fsub fast float %6273, %6276
  %6278 = call float @dx.op.binary.f32(i32 36, float %6269, float %6277)  ; FMin(a,b)
  %6279 = call float @dx.op.binary.f32(i32 35, float %6270, float %6273)  ; FMax(a,b)
  %6280 = add nuw i32 %6271, 1
  %6281 = icmp eq i32 %6280, %6254
  br i1 %6281, label %6282, label %6268

; <label>:6282                                    ; preds = %6268
  br label %6283

; <label>:6283                                    ; preds = %6282, %6261
  %6284 = phi float [ %6265, %6261 ], [ %6278, %6282 ]
  %6285 = phi float [ %6262, %6261 ], [ %6279, %6282 ]
  %6286 = fsub fast float %6285, %6284
  %6287 = fdiv fast float 1.000000e+00, %6286
  br label %6288

; <label>:6288                                    ; preds = %6283, %6258
  %6289 = phi float [ %6259, %6258 ], [ %6285, %6283 ]
  %6290 = phi float [ %6260, %6258 ], [ %6287, %6283 ]
  %6291 = fadd fast float %5719, %6289
  %6292 = fmul fast float %6291, %6290
  %6293 = call float @dx.op.unary.f32(i32 7, float %6292)  ; Saturate(value)
  %6294 = fmul fast float %6293, 2.000000e+00
  %6295 = fsub fast float 1.000000e+00, %6294
  %6296 = fmul fast float %6129, %6129
  %6297 = fsub fast float %6130, %6296
  %6298 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6297)  ; FMax(a,b)
  %6299 = fdiv fast float 1.000000e+00, %6298
  %6300 = fmul fast float %6130, %6129
  %6301 = fsub fast float %6131, %6300
  %6302 = fsub fast float %6295, %6129
  %6303 = fmul fast float %6295, %6295
  %6304 = fsub fast float %6303, %6130
  %6305 = fmul fast float %6299, %6301
  %6306 = fmul fast float %6305, %6302
  %6307 = fsub fast float %6304, %6306
  %6308 = fmul fast float %6130, %6130
  %6309 = fsub fast float %6132, %6308
  %6310 = fmul fast float %6301, %6301
  %6311 = fmul fast float %6310, %6299
  %6312 = fsub fast float %6309, %6311
  %6313 = fdiv fast float %6307, %6312
  %6314 = fmul fast float %6313, %6301
  %6315 = fsub fast float %6302, %6314
  %6316 = fmul fast float %6315, %6299
  %6317 = fmul fast float %6316, %6129
  %6318 = fsub fast float 1.000000e+00, %6317
  %6319 = fmul fast float %6313, %6130
  %6320 = fsub fast float %6318, %6319
  %6321 = fmul fast float %6316, %6316
  %6322 = fmul fast float %6313, 4.000000e+00
  %6323 = fmul fast float %6322, %6320
  %6324 = fsub fast float %6321, %6323
  %6325 = call float @dx.op.unary.f32(i32 24, float %6324)  ; Sqrt(value)
  %6326 = fcmp fast oge float %6316, 0.000000e+00
  %6327 = fsub fast float -0.000000e+00, %6325
  %6328 = select i1 %6326, float %6327, float %6325
  %6329 = fsub fast float %6328, %6316
  %6330 = fdiv fast float %6329, %6313
  %6331 = fdiv fast float %6320, %6329
  %6332 = fmul fast float %6330, 5.000000e-01
  %6333 = fmul fast float %6331, 2.000000e+00
  %6334 = select i1 %6326, float %6332, float %6333
  %6335 = select i1 %6326, float %6333, float %6332
  %6336 = call float @dx.op.binary.f32(i32 35, float %6334, float %6335)  ; FMax(a,b)
  %6337 = call float @dx.op.binary.f32(i32 36, float %6334, float %6335)  ; FMin(a,b)
  %6338 = fcmp fast ogt float %6295, %6336
  %6339 = fsub fast float %6295, %6337
  %6340 = fsub fast float %6295, %6336
  %6341 = fsub fast float %6336, %6337
  %6342 = select i1 %6338, float %6340, float %6341
  %6343 = fmul float %6339, %6342
  %6344 = select i1 %6338, float %6337, float %6295
  %6345 = fcmp fast ogt float %6295, %6337
  %6346 = fmul fast float %6344, %6336
  %6347 = fadd fast float %6344, %6336
  %6348 = fmul fast float %6347, %6129
  %6349 = fadd fast float %6346, %6130
  %6350 = fsub fast float %6349, %6348
  %6351 = fdiv fast float %6350, %6343
  %6352 = select i1 %6345, float %6351, float 0.000000e+00
  %6353 = fsub fast float 1.000000e+00, %6352
  %6354 = select i1 %6338, float %6353, float %6352
  %6355 = call float @dx.op.unary.f32(i32 7, float %6354)  ; Saturate(value)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6114, 3
  %6357 = fmul fast float %6356, %6355
  %6358 = fsub fast float 1.000000e+00, %6357
  br label %6359

; <label>:6359                                    ; preds = %6288, %5966, %5692, %5688, %5658
  %6360 = phi float [ 1.000000e+00, %5658 ], [ %6358, %6288 ], [ 1.000000e+00, %5692 ], [ 1.000000e+00, %5966 ], [ 1.000000e+00, %5688 ]
  %6361 = fcmp fast ogt float %5684, 0.000000e+00
  br i1 %6361, label %6362, label %6526, !dx.controlflow.hints !152

; <label>:6362                                    ; preds = %6359
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6365 = fadd fast float %6364, %5604
  %6366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6367 = extractvalue %dx.types.CBufRet.f32 %6366, 2
  %6368 = extractvalue %dx.types.CBufRet.f32 %6366, 3
  %6369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6370 = extractvalue %dx.types.CBufRet.f32 %6369, 2
  %6371 = call float @dx.op.binary.f32(i32 35, float %6365, float 0.000000e+00)  ; FMax(a,b)
  %6372 = fadd fast float %6371, 0x3F10000000000000
  %6373 = fcmp fast oeq float %6370, 0.000000e+00
  br i1 %6373, label %6374, label %6441

; <label>:6374                                    ; preds = %6362
  %6375 = extractvalue %dx.types.CBufRet.f32 %6366, 1
  %6376 = extractvalue %dx.types.CBufRet.f32 %6366, 0
  %6377 = fmul fast float %6376, %5492
  %6378 = fmul fast float %6375, %5493
  %6379 = fadd fast float %6377, 5.000000e-01
  %6380 = call float @dx.op.unary.f32(i32 27, float %6379)  ; Round_ni(value)
  %6381 = fadd fast float %6378, 5.000000e-01
  %6382 = call float @dx.op.unary.f32(i32 27, float %6381)  ; Round_ni(value)
  %6383 = fsub fast float %6379, %6380
  %6384 = fsub fast float %6381, %6382
  %6385 = fadd fast float %6380, -5.000000e-01
  %6386 = fadd fast float %6382, -5.000000e-01
  %6387 = fmul fast float %6383, 2.000000e+00
  %6388 = fsub fast float 3.000000e+00, %6387
  %6389 = fadd fast float %6387, 1.000000e+00
  %6390 = fsub fast float 2.000000e+00, %6383
  %6391 = bitcast float %6388 to i32
  %6392 = sub nsw i32 2129859010, %6391
  %6393 = bitcast i32 %6392 to float
  %6394 = fmul fast float %6393, %6390
  %6395 = fadd fast float %6394, -1.000000e+00
  %6396 = bitcast float %6389 to i32
  %6397 = sub nsw i32 2129859010, %6396
  %6398 = bitcast i32 %6397 to float
  %6399 = fmul fast float %6398, %6383
  %6400 = fadd fast float %6399, 1.000000e+00
  %6401 = fmul fast float %6384, 2.000000e+00
  %6402 = fsub fast float 3.000000e+00, %6401
  %6403 = fadd fast float %6401, 1.000000e+00
  %6404 = fsub fast float 2.000000e+00, %6384
  %6405 = bitcast float %6402 to i32
  %6406 = sub nsw i32 2129859010, %6405
  %6407 = bitcast i32 %6406 to float
  %6408 = fmul fast float %6407, %6404
  %6409 = fadd fast float %6408, -1.000000e+00
  %6410 = bitcast float %6403 to i32
  %6411 = sub nsw i32 2129859010, %6410
  %6412 = bitcast i32 %6411 to float
  %6413 = fmul fast float %6412, %6384
  %6414 = fadd fast float %6413, 1.000000e+00
  %6415 = fadd fast float %6395, %6385
  %6416 = fmul fast float %6415, %6367
  %6417 = fadd fast float %6409, %6386
  %6418 = fmul fast float %6417, %6368
  %6419 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %64, float %6416, float %6418, float undef, float undef, i32 0, i32 0, i32 undef, float %6372)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6420 = extractvalue %dx.types.ResRet.f32 %6419, 0
  %6421 = fmul fast float %6420, %6388
  %6422 = fadd fast float %6400, %6385
  %6423 = fmul fast float %6422, %6367
  %6424 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %64, float %6423, float %6418, float undef, float undef, i32 0, i32 0, i32 undef, float %6372)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6425 = extractvalue %dx.types.ResRet.f32 %6424, 0
  %6426 = fmul fast float %6425, %6389
  %6427 = fadd fast float %6414, %6386
  %6428 = fmul fast float %6427, %6368
  %6429 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %64, float %6416, float %6428, float undef, float undef, i32 0, i32 0, i32 undef, float %6372)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6430 = extractvalue %dx.types.ResRet.f32 %6429, 0
  %6431 = fmul fast float %6430, %6388
  %6432 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %64, float %6423, float %6428, float undef, float undef, i32 0, i32 0, i32 undef, float %6372)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6433 = extractvalue %dx.types.ResRet.f32 %6432, 0
  %6434 = fmul fast float %6433, %6389
  %6435 = fadd fast float %6434, %6431
  %6436 = fmul fast float %6435, %6403
  %6437 = fadd fast float %6426, %6421
  %6438 = fmul fast float %6437, %6402
  %6439 = fadd fast float %6438, %6436
  %6440 = fmul fast float %6439, 6.250000e-02
  br label %6526

; <label>:6441                                    ; preds = %6362
  %6442 = fmul fast float %1766, 0x401921FB60000000
  %6443 = call float @dx.op.unary.f32(i32 13, float %6442)  ; Sin(value)
  %6444 = call float @dx.op.unary.f32(i32 12, float %6442)  ; Cos(value)
  %6445 = fsub fast float -0.000000e+00, %6443
  br label %6446

; <label>:6446                                    ; preds = %6495, %6441
  %6447 = phi float [ 0.000000e+00, %6441 ], [ %6490, %6495 ]
  %6448 = phi float [ 0.000000e+00, %6441 ], [ %6492, %6495 ]
  %6449 = phi i32 [ 0, %6441 ], [ %6496, %6495 ]
  %6450 = mul i32 %6449, 2
  %6451 = add i32 0, %6450
  %6452 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6451
  %6453 = load float, float* %6452, align 4
  %6454 = mul i32 %6449, 2
  %6455 = add i32 1, %6454
  %6456 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6455
  %6457 = load float, float* %6456, align 4
  %6458 = fmul fast float %6453, %6444
  %6459 = call float @dx.op.tertiary.f32(i32 46, float %6457, float %6445, float %6458)  ; FMad(a,b,c)
  %6460 = fmul fast float %6453, %6443
  %6461 = call float @dx.op.tertiary.f32(i32 46, float %6457, float %6444, float %6460)  ; FMad(a,b,c)
  %6462 = fmul fast float %6459, %6370
  %6463 = fmul fast float %6461, %6370
  %6464 = fadd fast float %6462, %5492
  %6465 = fadd fast float %6463, %5493
  %6466 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %63, float %6464, float %6465, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6467 = extractvalue %dx.types.ResRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.ResRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.ResRet.f32 %6466, 2
  %6470 = extractvalue %dx.types.ResRet.f32 %6466, 3
  %6471 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6467, float* %6471, align 4
  %6472 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6468, float* %6472, align 4
  %6473 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6469, float* %6473, align 4
  %6474 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6470, float* %6474, align 4
  %6475 = fsub fast float %6467, %6372
  %6476 = fcmp fast olt float %6475, 0.000000e+00
  %6477 = select i1 %6476, float 0.000000e+00, float 1.000000e+00
  %6478 = fadd fast float %6477, %6447
  %6479 = fmul fast float %6477, %6475
  %6480 = fadd fast float %6479, %6448
  br label %6481

; <label>:6481                                    ; preds = %6481, %6446
  %6482 = phi i32 [ 1, %6446 ], [ %6493, %6481 ]
  %6483 = phi float [ %6480, %6446 ], [ %6492, %6481 ]
  %6484 = phi float [ %6478, %6446 ], [ %6490, %6481 ]
  %6485 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6482
  %6486 = load float, float* %6485, align 4, !tbaa !107, !noalias !153
  %6487 = fsub fast float %6486, %6372
  %6488 = fcmp fast olt float %6487, 0.000000e+00
  %6489 = select i1 %6488, float 0.000000e+00, float 1.000000e+00
  %6490 = fadd fast float %6489, %6484
  %6491 = fmul fast float %6489, %6487
  %6492 = fadd fast float %6491, %6483
  %6493 = add nuw nsw i32 %6482, 1
  %6494 = icmp eq i32 %6493, 4
  br i1 %6494, label %6495, label %6481, !llvm.loop !158

; <label>:6495                                    ; preds = %6481
  %6496 = add nuw nsw i32 %6449, 1
  %6497 = icmp eq i32 %6496, 8
  br i1 %6497, label %6498, label %6446, !llvm.loop !159

; <label>:6498                                    ; preds = %6495
  %6499 = fdiv fast float 1.000000e+00, %6490
  %6500 = fmul fast float %6499, %6492
  %6501 = fdiv fast float 1.000000e+00, %6372
  %6502 = fmul fast float %6500, %6501
  %6503 = call float @dx.op.unary.f32(i32 7, float %6502)  ; Saturate(value)
  %6504 = call float @dx.op.binary.f32(i32 35, float %6503, float 0.000000e+00)  ; FMax(a,b)
  %6505 = fmul fast float %6490, 3.125000e-02
  %6506 = call float @dx.op.unary.f32(i32 7, float %6505)  ; Saturate(value)
  %6507 = fmul fast float %6506, 2.000000e+00
  %6508 = fadd fast float %6507, -1.000000e+00
  %6509 = fcmp fast ogt float %6508, 0.000000e+00
  %6510 = fcmp fast olt float %6508, 0.000000e+00
  %6511 = zext i1 %6509 to i32
  %6512 = zext i1 %6510 to i32
  %6513 = sub nsw i32 %6511, %6512
  %6514 = sitofp i32 %6513 to float
  %6515 = fmul fast float %6514, %6508
  %6516 = fsub fast float 1.000000e+00, %6515
  %6517 = fmul fast float %6516, %6516
  %6518 = fmul fast float %6517, %6516
  %6519 = fsub fast float %6516, %6518
  %6520 = fmul fast float %6519, %6504
  %6521 = fsub fast float 1.000000e+00, %6518
  %6522 = fsub fast float %6521, %6520
  %6523 = fmul fast float %6514, 5.000000e-01
  %6524 = fmul fast float %6523, %6522
  %6525 = fsub fast float 5.000000e-01, %6524
  br label %6526

; <label>:6526                                    ; preds = %6498, %6374, %6359
  %6527 = phi float [ 1.000000e+00, %6359 ], [ %6440, %6374 ], [ %6525, %6498 ]
  %6528 = fcmp fast ogt float %5682, 0.000000e+00
  br i1 %6528, label %6529, label %6693, !dx.controlflow.hints !160

; <label>:6529                                    ; preds = %6526
  %6530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6530, 1
  %6532 = fadd fast float %6531, %5604
  %6533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.f32 %6533, 2
  %6535 = extractvalue %dx.types.CBufRet.f32 %6533, 3
  %6536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6536, 1
  %6538 = call float @dx.op.binary.f32(i32 35, float %6532, float 0.000000e+00)  ; FMax(a,b)
  %6539 = fadd fast float %6538, 0x3F10000000000000
  %6540 = fcmp fast oeq float %6537, 0.000000e+00
  br i1 %6540, label %6541, label %6608

; <label>:6541                                    ; preds = %6529
  %6542 = extractvalue %dx.types.CBufRet.f32 %6533, 1
  %6543 = extractvalue %dx.types.CBufRet.f32 %6533, 0
  %6544 = fmul fast float %6543, %5484
  %6545 = fmul fast float %6542, %5485
  %6546 = fadd fast float %6544, 5.000000e-01
  %6547 = call float @dx.op.unary.f32(i32 27, float %6546)  ; Round_ni(value)
  %6548 = fadd fast float %6545, 5.000000e-01
  %6549 = call float @dx.op.unary.f32(i32 27, float %6548)  ; Round_ni(value)
  %6550 = fsub fast float %6546, %6547
  %6551 = fsub fast float %6548, %6549
  %6552 = fadd fast float %6547, -5.000000e-01
  %6553 = fadd fast float %6549, -5.000000e-01
  %6554 = fmul fast float %6550, 2.000000e+00
  %6555 = fsub fast float 3.000000e+00, %6554
  %6556 = fadd fast float %6554, 1.000000e+00
  %6557 = fsub fast float 2.000000e+00, %6550
  %6558 = bitcast float %6555 to i32
  %6559 = sub nsw i32 2129859010, %6558
  %6560 = bitcast i32 %6559 to float
  %6561 = fmul fast float %6560, %6557
  %6562 = fadd fast float %6561, -1.000000e+00
  %6563 = bitcast float %6556 to i32
  %6564 = sub nsw i32 2129859010, %6563
  %6565 = bitcast i32 %6564 to float
  %6566 = fmul fast float %6565, %6550
  %6567 = fadd fast float %6566, 1.000000e+00
  %6568 = fmul fast float %6551, 2.000000e+00
  %6569 = fsub fast float 3.000000e+00, %6568
  %6570 = fadd fast float %6568, 1.000000e+00
  %6571 = fsub fast float 2.000000e+00, %6551
  %6572 = bitcast float %6569 to i32
  %6573 = sub nsw i32 2129859010, %6572
  %6574 = bitcast i32 %6573 to float
  %6575 = fmul fast float %6574, %6571
  %6576 = fadd fast float %6575, -1.000000e+00
  %6577 = bitcast float %6570 to i32
  %6578 = sub nsw i32 2129859010, %6577
  %6579 = bitcast i32 %6578 to float
  %6580 = fmul fast float %6579, %6551
  %6581 = fadd fast float %6580, 1.000000e+00
  %6582 = fadd fast float %6562, %6552
  %6583 = fmul fast float %6582, %6534
  %6584 = fadd fast float %6576, %6553
  %6585 = fmul fast float %6584, %6535
  %6586 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %64, float %6583, float %6585, float undef, float undef, i32 0, i32 0, i32 undef, float %6539)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6587 = extractvalue %dx.types.ResRet.f32 %6586, 0
  %6588 = fmul fast float %6587, %6555
  %6589 = fadd fast float %6567, %6552
  %6590 = fmul fast float %6589, %6534
  %6591 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %64, float %6590, float %6585, float undef, float undef, i32 0, i32 0, i32 undef, float %6539)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6592 = extractvalue %dx.types.ResRet.f32 %6591, 0
  %6593 = fmul fast float %6592, %6556
  %6594 = fadd fast float %6581, %6553
  %6595 = fmul fast float %6594, %6535
  %6596 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %64, float %6583, float %6595, float undef, float undef, i32 0, i32 0, i32 undef, float %6539)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6597 = extractvalue %dx.types.ResRet.f32 %6596, 0
  %6598 = fmul fast float %6597, %6555
  %6599 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %64, float %6590, float %6595, float undef, float undef, i32 0, i32 0, i32 undef, float %6539)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6600 = extractvalue %dx.types.ResRet.f32 %6599, 0
  %6601 = fmul fast float %6600, %6556
  %6602 = fadd fast float %6601, %6598
  %6603 = fmul fast float %6602, %6570
  %6604 = fadd fast float %6593, %6588
  %6605 = fmul fast float %6604, %6569
  %6606 = fadd fast float %6605, %6603
  %6607 = fmul fast float %6606, 6.250000e-02
  br label %6693

; <label>:6608                                    ; preds = %6529
  %6609 = fmul fast float %1766, 0x401921FB60000000
  %6610 = call float @dx.op.unary.f32(i32 13, float %6609)  ; Sin(value)
  %6611 = call float @dx.op.unary.f32(i32 12, float %6609)  ; Cos(value)
  %6612 = fsub fast float -0.000000e+00, %6610
  br label %6613

; <label>:6613                                    ; preds = %6662, %6608
  %6614 = phi float [ 0.000000e+00, %6608 ], [ %6657, %6662 ]
  %6615 = phi float [ 0.000000e+00, %6608 ], [ %6659, %6662 ]
  %6616 = phi i32 [ 0, %6608 ], [ %6663, %6662 ]
  %6617 = mul i32 %6616, 2
  %6618 = add i32 0, %6617
  %6619 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6618
  %6620 = load float, float* %6619, align 4
  %6621 = mul i32 %6616, 2
  %6622 = add i32 1, %6621
  %6623 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6622
  %6624 = load float, float* %6623, align 4
  %6625 = fmul fast float %6620, %6611
  %6626 = call float @dx.op.tertiary.f32(i32 46, float %6624, float %6612, float %6625)  ; FMad(a,b,c)
  %6627 = fmul fast float %6620, %6610
  %6628 = call float @dx.op.tertiary.f32(i32 46, float %6624, float %6611, float %6627)  ; FMad(a,b,c)
  %6629 = fmul fast float %6626, %6537
  %6630 = fmul fast float %6628, %6537
  %6631 = fadd fast float %6629, %5484
  %6632 = fadd fast float %6630, %5485
  %6633 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %63, float %6631, float %6632, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6634 = extractvalue %dx.types.ResRet.f32 %6633, 0
  %6635 = extractvalue %dx.types.ResRet.f32 %6633, 1
  %6636 = extractvalue %dx.types.ResRet.f32 %6633, 2
  %6637 = extractvalue %dx.types.ResRet.f32 %6633, 3
  %6638 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %6634, float* %6638, align 4
  %6639 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %6635, float* %6639, align 4
  %6640 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %6636, float* %6640, align 4
  %6641 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %6637, float* %6641, align 4
  %6642 = fsub fast float %6634, %6539
  %6643 = fcmp fast olt float %6642, 0.000000e+00
  %6644 = select i1 %6643, float 0.000000e+00, float 1.000000e+00
  %6645 = fadd fast float %6644, %6614
  %6646 = fmul fast float %6644, %6642
  %6647 = fadd fast float %6646, %6615
  br label %6648

; <label>:6648                                    ; preds = %6648, %6613
  %6649 = phi i32 [ 1, %6613 ], [ %6660, %6648 ]
  %6650 = phi float [ %6647, %6613 ], [ %6659, %6648 ]
  %6651 = phi float [ %6645, %6613 ], [ %6657, %6648 ]
  %6652 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %6649
  %6653 = load float, float* %6652, align 4, !tbaa !107, !noalias !153
  %6654 = fsub fast float %6653, %6539
  %6655 = fcmp fast olt float %6654, 0.000000e+00
  %6656 = select i1 %6655, float 0.000000e+00, float 1.000000e+00
  %6657 = fadd fast float %6656, %6651
  %6658 = fmul fast float %6656, %6654
  %6659 = fadd fast float %6658, %6650
  %6660 = add nuw nsw i32 %6649, 1
  %6661 = icmp eq i32 %6660, 4
  br i1 %6661, label %6662, label %6648, !llvm.loop !158

; <label>:6662                                    ; preds = %6648
  %6663 = add nuw nsw i32 %6616, 1
  %6664 = icmp eq i32 %6663, 8
  br i1 %6664, label %6665, label %6613, !llvm.loop !159

; <label>:6665                                    ; preds = %6662
  %6666 = fdiv fast float 1.000000e+00, %6657
  %6667 = fmul fast float %6666, %6659
  %6668 = fdiv fast float 1.000000e+00, %6539
  %6669 = fmul fast float %6667, %6668
  %6670 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6671 = call float @dx.op.binary.f32(i32 35, float %6670, float 0.000000e+00)  ; FMax(a,b)
  %6672 = fmul fast float %6657, 3.125000e-02
  %6673 = call float @dx.op.unary.f32(i32 7, float %6672)  ; Saturate(value)
  %6674 = fmul fast float %6673, 2.000000e+00
  %6675 = fadd fast float %6674, -1.000000e+00
  %6676 = fcmp fast ogt float %6675, 0.000000e+00
  %6677 = fcmp fast olt float %6675, 0.000000e+00
  %6678 = zext i1 %6676 to i32
  %6679 = zext i1 %6677 to i32
  %6680 = sub nsw i32 %6678, %6679
  %6681 = sitofp i32 %6680 to float
  %6682 = fmul fast float %6681, %6675
  %6683 = fsub fast float 1.000000e+00, %6682
  %6684 = fmul fast float %6683, %6683
  %6685 = fmul fast float %6684, %6683
  %6686 = fsub fast float %6683, %6685
  %6687 = fmul fast float %6686, %6671
  %6688 = fsub fast float 1.000000e+00, %6685
  %6689 = fsub fast float %6688, %6687
  %6690 = fmul fast float %6681, 5.000000e-01
  %6691 = fmul fast float %6690, %6689
  %6692 = fsub fast float 5.000000e-01, %6691
  br label %6693

; <label>:6693                                    ; preds = %6665, %6541, %6526
  %6694 = phi float [ 1.000000e+00, %6526 ], [ %6607, %6541 ], [ %6692, %6665 ]
  %6695 = fcmp fast ogt float %5681, 0.000000e+00
  br i1 %6695, label %6696, label %6860, !dx.controlflow.hints !161

; <label>:6696                                    ; preds = %6693
  %6697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6698 = extractvalue %dx.types.CBufRet.f32 %6697, 0
  %6699 = fadd fast float %6698, %5604
  %6700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6701 = extractvalue %dx.types.CBufRet.f32 %6700, 2
  %6702 = extractvalue %dx.types.CBufRet.f32 %6700, 3
  %6703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6703, 0
  %6705 = call float @dx.op.binary.f32(i32 35, float %6699, float 0.000000e+00)  ; FMax(a,b)
  %6706 = fadd fast float %6705, 0x3F10000000000000
  %6707 = fcmp fast oeq float %6704, 0.000000e+00
  br i1 %6707, label %6708, label %6775

; <label>:6708                                    ; preds = %6696
  %6709 = extractvalue %dx.types.CBufRet.f32 %6700, 1
  %6710 = extractvalue %dx.types.CBufRet.f32 %6700, 0
  %6711 = fmul fast float %6710, %5470
  %6712 = fmul fast float %6709, %5474
  %6713 = fadd fast float %6711, 5.000000e-01
  %6714 = call float @dx.op.unary.f32(i32 27, float %6713)  ; Round_ni(value)
  %6715 = fadd fast float %6712, 5.000000e-01
  %6716 = call float @dx.op.unary.f32(i32 27, float %6715)  ; Round_ni(value)
  %6717 = fsub fast float %6713, %6714
  %6718 = fsub fast float %6715, %6716
  %6719 = fadd fast float %6714, -5.000000e-01
  %6720 = fadd fast float %6716, -5.000000e-01
  %6721 = fmul fast float %6717, 2.000000e+00
  %6722 = fsub fast float 3.000000e+00, %6721
  %6723 = fadd fast float %6721, 1.000000e+00
  %6724 = fsub fast float 2.000000e+00, %6717
  %6725 = bitcast float %6722 to i32
  %6726 = sub nsw i32 2129859010, %6725
  %6727 = bitcast i32 %6726 to float
  %6728 = fmul fast float %6727, %6724
  %6729 = fadd fast float %6728, -1.000000e+00
  %6730 = bitcast float %6723 to i32
  %6731 = sub nsw i32 2129859010, %6730
  %6732 = bitcast i32 %6731 to float
  %6733 = fmul fast float %6732, %6717
  %6734 = fadd fast float %6733, 1.000000e+00
  %6735 = fmul fast float %6718, 2.000000e+00
  %6736 = fsub fast float 3.000000e+00, %6735
  %6737 = fadd fast float %6735, 1.000000e+00
  %6738 = fsub fast float 2.000000e+00, %6718
  %6739 = bitcast float %6736 to i32
  %6740 = sub nsw i32 2129859010, %6739
  %6741 = bitcast i32 %6740 to float
  %6742 = fmul fast float %6741, %6738
  %6743 = fadd fast float %6742, -1.000000e+00
  %6744 = bitcast float %6737 to i32
  %6745 = sub nsw i32 2129859010, %6744
  %6746 = bitcast i32 %6745 to float
  %6747 = fmul fast float %6746, %6718
  %6748 = fadd fast float %6747, 1.000000e+00
  %6749 = fadd fast float %6729, %6719
  %6750 = fmul fast float %6749, %6701
  %6751 = fadd fast float %6743, %6720
  %6752 = fmul fast float %6751, %6702
  %6753 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %64, float %6750, float %6752, float undef, float undef, i32 0, i32 0, i32 undef, float %6706)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6754 = extractvalue %dx.types.ResRet.f32 %6753, 0
  %6755 = fmul fast float %6754, %6722
  %6756 = fadd fast float %6734, %6719
  %6757 = fmul fast float %6756, %6701
  %6758 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %64, float %6757, float %6752, float undef, float undef, i32 0, i32 0, i32 undef, float %6706)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6759 = extractvalue %dx.types.ResRet.f32 %6758, 0
  %6760 = fmul fast float %6759, %6723
  %6761 = fadd fast float %6748, %6720
  %6762 = fmul fast float %6761, %6702
  %6763 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %64, float %6750, float %6762, float undef, float undef, i32 0, i32 0, i32 undef, float %6706)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6764 = extractvalue %dx.types.ResRet.f32 %6763, 0
  %6765 = fmul fast float %6764, %6722
  %6766 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %64, float %6757, float %6762, float undef, float undef, i32 0, i32 0, i32 undef, float %6706)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6767 = extractvalue %dx.types.ResRet.f32 %6766, 0
  %6768 = fmul fast float %6767, %6723
  %6769 = fadd fast float %6768, %6765
  %6770 = fmul fast float %6769, %6737
  %6771 = fadd fast float %6760, %6755
  %6772 = fmul fast float %6771, %6736
  %6773 = fadd fast float %6772, %6770
  %6774 = fmul fast float %6773, 6.250000e-02
  br label %6860

; <label>:6775                                    ; preds = %6696
  %6776 = fmul fast float %1766, 0x401921FB60000000
  %6777 = call float @dx.op.unary.f32(i32 13, float %6776)  ; Sin(value)
  %6778 = call float @dx.op.unary.f32(i32 12, float %6776)  ; Cos(value)
  %6779 = fsub fast float -0.000000e+00, %6777
  br label %6780

; <label>:6780                                    ; preds = %6829, %6775
  %6781 = phi float [ 0.000000e+00, %6775 ], [ %6824, %6829 ]
  %6782 = phi float [ 0.000000e+00, %6775 ], [ %6826, %6829 ]
  %6783 = phi i32 [ 0, %6775 ], [ %6830, %6829 ]
  %6784 = mul i32 %6783, 2
  %6785 = add i32 0, %6784
  %6786 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6785
  %6787 = load float, float* %6786, align 4
  %6788 = mul i32 %6783, 2
  %6789 = add i32 1, %6788
  %6790 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6789
  %6791 = load float, float* %6790, align 4
  %6792 = fmul fast float %6787, %6778
  %6793 = call float @dx.op.tertiary.f32(i32 46, float %6791, float %6779, float %6792)  ; FMad(a,b,c)
  %6794 = fmul fast float %6787, %6777
  %6795 = call float @dx.op.tertiary.f32(i32 46, float %6791, float %6778, float %6794)  ; FMad(a,b,c)
  %6796 = fmul fast float %6793, %6704
  %6797 = fmul fast float %6795, %6704
  %6798 = fadd fast float %6796, %5470
  %6799 = fadd fast float %6797, %5474
  %6800 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %63, float %6798, float %6799, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6801 = extractvalue %dx.types.ResRet.f32 %6800, 0
  %6802 = extractvalue %dx.types.ResRet.f32 %6800, 1
  %6803 = extractvalue %dx.types.ResRet.f32 %6800, 2
  %6804 = extractvalue %dx.types.ResRet.f32 %6800, 3
  %6805 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %6801, float* %6805, align 4
  %6806 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %6802, float* %6806, align 4
  %6807 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %6803, float* %6807, align 4
  %6808 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %6804, float* %6808, align 4
  %6809 = fsub fast float %6801, %6706
  %6810 = fcmp fast olt float %6809, 0.000000e+00
  %6811 = select i1 %6810, float 0.000000e+00, float 1.000000e+00
  %6812 = fadd fast float %6811, %6781
  %6813 = fmul fast float %6811, %6809
  %6814 = fadd fast float %6813, %6782
  br label %6815

; <label>:6815                                    ; preds = %6815, %6780
  %6816 = phi i32 [ 1, %6780 ], [ %6827, %6815 ]
  %6817 = phi float [ %6814, %6780 ], [ %6826, %6815 ]
  %6818 = phi float [ %6812, %6780 ], [ %6824, %6815 ]
  %6819 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %6816
  %6820 = load float, float* %6819, align 4, !tbaa !107, !noalias !153
  %6821 = fsub fast float %6820, %6706
  %6822 = fcmp fast olt float %6821, 0.000000e+00
  %6823 = select i1 %6822, float 0.000000e+00, float 1.000000e+00
  %6824 = fadd fast float %6823, %6818
  %6825 = fmul fast float %6823, %6821
  %6826 = fadd fast float %6825, %6817
  %6827 = add nuw nsw i32 %6816, 1
  %6828 = icmp eq i32 %6827, 4
  br i1 %6828, label %6829, label %6815, !llvm.loop !158

; <label>:6829                                    ; preds = %6815
  %6830 = add nuw nsw i32 %6783, 1
  %6831 = icmp eq i32 %6830, 8
  br i1 %6831, label %6832, label %6780, !llvm.loop !159

; <label>:6832                                    ; preds = %6829
  %6833 = fdiv fast float 1.000000e+00, %6824
  %6834 = fmul fast float %6833, %6826
  %6835 = fdiv fast float 1.000000e+00, %6706
  %6836 = fmul fast float %6834, %6835
  %6837 = call float @dx.op.unary.f32(i32 7, float %6836)  ; Saturate(value)
  %6838 = call float @dx.op.binary.f32(i32 35, float %6837, float 0.000000e+00)  ; FMax(a,b)
  %6839 = fmul fast float %6824, 3.125000e-02
  %6840 = call float @dx.op.unary.f32(i32 7, float %6839)  ; Saturate(value)
  %6841 = fmul fast float %6840, 2.000000e+00
  %6842 = fadd fast float %6841, -1.000000e+00
  %6843 = fcmp fast ogt float %6842, 0.000000e+00
  %6844 = fcmp fast olt float %6842, 0.000000e+00
  %6845 = zext i1 %6843 to i32
  %6846 = zext i1 %6844 to i32
  %6847 = sub nsw i32 %6845, %6846
  %6848 = sitofp i32 %6847 to float
  %6849 = fmul fast float %6848, %6842
  %6850 = fsub fast float 1.000000e+00, %6849
  %6851 = fmul fast float %6850, %6850
  %6852 = fmul fast float %6851, %6850
  %6853 = fsub fast float %6850, %6852
  %6854 = fmul fast float %6853, %6838
  %6855 = fsub fast float 1.000000e+00, %6852
  %6856 = fsub fast float %6855, %6854
  %6857 = fmul fast float %6848, 5.000000e-01
  %6858 = fmul fast float %6857, %6856
  %6859 = fsub fast float 5.000000e-01, %6858
  br label %6860

; <label>:6860                                    ; preds = %6832, %6708, %6693
  %6861 = phi float [ 1.000000e+00, %6693 ], [ %6774, %6708 ], [ %6859, %6832 ]
  %6862 = fsub fast float %6527, %6360
  %6863 = fmul fast float %6862, %5634
  %6864 = fadd fast float %6863, %6360
  %6865 = fsub fast float %6694, %6864
  %6866 = fmul fast float %6865, %5659
  %6867 = fadd fast float %6866, %6864
  %6868 = fsub fast float %6861, %6867
  %6869 = fmul fast float %6868, %5681
  %6870 = fadd fast float %6869, %6867
  %6871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6872 = extractvalue %dx.types.CBufRet.f32 %6871, 2
  %6873 = fcmp fast ogt float %6872, 0.000000e+00
  br i1 %6873, label %6874, label %6914, !dx.controlflow.hints !162

; <label>:6874                                    ; preds = %6860
  %6875 = fcmp fast ugt float %6872, 0.000000e+00
  br i1 %6875, label %6876, label %6911

; <label>:6876                                    ; preds = %6874
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 0
  %6879 = extractvalue %dx.types.CBufRet.f32 %6877, 1
  %6880 = extractvalue %dx.types.CBufRet.f32 %6877, 2
  %6881 = extractvalue %dx.types.CBufRet.f32 %6877, 3
  %6882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.f32 %6882, 0
  %6884 = extractvalue %dx.types.CBufRet.f32 %6882, 1
  %6885 = extractvalue %dx.types.CBufRet.f32 %6882, 2
  %6886 = extractvalue %dx.types.CBufRet.f32 %6882, 3
  %6887 = extractvalue %dx.types.CBufRet.f32 %6871, 0
  %6888 = extractvalue %dx.types.CBufRet.f32 %6871, 1
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.CBufRet.f32 %6889, 1
  %6892 = extractvalue %dx.types.CBufRet.f32 %6889, 2
  %6893 = fadd fast float %6890, %154
  %6894 = fadd fast float %6891, %155
  %6895 = fadd fast float %6892, %156
  %6896 = fmul fast float %6893, %6878
  %6897 = call float @dx.op.tertiary.f32(i32 46, float %6879, float %6894, float %6896)  ; FMad(a,b,c)
  %6898 = call float @dx.op.tertiary.f32(i32 46, float %6880, float %6895, float %6897)  ; FMad(a,b,c)
  %6899 = fadd fast float %6898, %6881
  %6900 = fmul fast float %6893, %6883
  %6901 = call float @dx.op.tertiary.f32(i32 46, float %6884, float %6894, float %6900)  ; FMad(a,b,c)
  %6902 = call float @dx.op.tertiary.f32(i32 46, float %6885, float %6895, float %6901)  ; FMad(a,b,c)
  %6903 = fadd fast float %6902, %6886
  %6904 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %59, float %6899, float %6903, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6905 = extractvalue %dx.types.ResRet.f32 %6904, 0
  %6906 = fmul fast float %6905, %6888
  %6907 = fadd fast float %6906, %6887
  %6908 = call float @dx.op.unary.f32(i32 7, float %6907)  ; Saturate(value)
  %6909 = fmul fast float %6908, %6872
  %6910 = fsub fast float 1.000000e+00, %6909
  br label %6911

; <label>:6911                                    ; preds = %6876, %6874
  %6912 = phi float [ %6910, %6876 ], [ 1.000000e+00, %6874 ]
  %6913 = fmul fast float %6912, %6870
  br label %6914

; <label>:6914                                    ; preds = %6911, %6860, %5600
  %6915 = phi float [ 1.000000e+00, %5600 ], [ %6913, %6911 ], [ %6870, %6860 ]
  %6916 = call float @dx.op.binary.f32(i32 36, float %6915, float %6915)  ; FMin(a,b)
  %6917 = call float @dx.op.binary.f32(i32 36, float %6915, float %6916)  ; FMin(a,b)
  %6918 = fcmp fast ogt float %6917, 0.000000e+00
  br i1 %6918, label %6919, label %7084, !dx.controlflow.hints !163

; <label>:6919                                    ; preds = %6914
  %6920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6921 = extractvalue %dx.types.CBufRet.f32 %6920, 0
  %6922 = extractvalue %dx.types.CBufRet.f32 %6920, 1
  %6923 = extractvalue %dx.types.CBufRet.f32 %6920, 2
  %6924 = extractvalue %dx.types.CBufRet.f32 %6920, 3
  %6925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6926 = extractvalue %dx.types.CBufRet.f32 %6925, 0
  %6927 = extractvalue %dx.types.CBufRet.f32 %6925, 1
  %6928 = extractvalue %dx.types.CBufRet.f32 %6925, 2
  %6929 = extractvalue %dx.types.CBufRet.f32 %6925, 3
  %6930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6931 = extractvalue %dx.types.CBufRet.f32 %6930, 0
  %6932 = extractvalue %dx.types.CBufRet.f32 %6930, 1
  %6933 = extractvalue %dx.types.CBufRet.f32 %6930, 2
  %6934 = extractvalue %dx.types.CBufRet.f32 %6930, 3
  %6935 = fmul fast float %6921, %154
  %6936 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6922, float %6935)  ; FMad(a,b,c)
  %6937 = call float @dx.op.tertiary.f32(i32 46, float %156, float %6923, float %6936)  ; FMad(a,b,c)
  %6938 = fadd fast float %6937, %6924
  %6939 = fmul fast float %6926, %154
  %6940 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6927, float %6939)  ; FMad(a,b,c)
  %6941 = call float @dx.op.tertiary.f32(i32 46, float %156, float %6928, float %6940)  ; FMad(a,b,c)
  %6942 = fadd fast float %6941, %6929
  %6943 = fmul fast float %6931, %154
  %6944 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6932, float %6943)  ; FMad(a,b,c)
  %6945 = call float @dx.op.tertiary.f32(i32 46, float %156, float %6933, float %6944)  ; FMad(a,b,c)
  %6946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6947 = extractvalue %dx.types.CBufRet.f32 %6946, 0
  %6948 = extractvalue %dx.types.CBufRet.f32 %6946, 1
  %6949 = extractvalue %dx.types.CBufRet.f32 %6946, 3
  %6950 = fmul fast float %6949, %6938
  %6951 = fmul fast float %6949, %6942
  %6952 = fadd fast float %6950, %6947
  %6953 = fadd fast float %6951, %6948
  %6954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.f32 %6954, 0
  %6956 = extractvalue %dx.types.CBufRet.f32 %6954, 1
  %6957 = fsub fast float %6952, %6955
  %6958 = fsub fast float %6953, %6956
  %6959 = fcmp fast olt float %6957, 0.000000e+00
  %6960 = fcmp fast olt float %6958, 0.000000e+00
  %6961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6962 = extractvalue %dx.types.CBufRet.f32 %6961, 0
  %6963 = extractvalue %dx.types.CBufRet.f32 %6961, 1
  %6964 = extractvalue %dx.types.CBufRet.f32 %6961, 2
  %6965 = extractvalue %dx.types.CBufRet.f32 %6961, 3
  %6966 = select i1 %6959, float %6962, float %6964
  %6967 = select i1 %6960, float %6963, float %6965
  %6968 = fmul fast float %6966, %6957
  %6969 = fmul fast float %6967, %6958
  %6970 = call float @dx.op.unary.f32(i32 6, float %6968)  ; FAbs(value)
  %6971 = call float @dx.op.unary.f32(i32 6, float %6969)  ; FAbs(value)
  %6972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.f32 %6972, 0
  %6974 = call float @dx.op.binary.f32(i32 35, float %6970, float %6971)  ; FMax(a,b)
  %6975 = fsub fast float %6973, %6974
  %6976 = call float @dx.op.unary.f32(i32 7, float %6975)  ; Saturate(value)
  %6977 = fcmp fast ogt float %6976, 0.000000e+00
  br i1 %6977, label %6978, label %7019, !dx.controlflow.hints !164

; <label>:6978                                    ; preds = %6919
  %6979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %62, float %6952, float %6953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6980 = extractvalue %dx.types.ResRet.f32 %6979, 1
  %6981 = fcmp fast ogt float %6980, 0.000000e+00
  br i1 %6981, label %6982, label %7014

; <label>:6982                                    ; preds = %6978
  %6983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %62, float %6952, float %6953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6984 = extractvalue %dx.types.ResRet.f32 %6983, 0
  %6985 = extractvalue %dx.types.ResRet.f32 %6983, 1
  %6986 = extractvalue %dx.types.ResRet.f32 %6983, 2
  %6987 = extractvalue %dx.types.ResRet.f32 %6983, 3
  %6988 = fsub fast float 1.000000e+00, %6934
  %6989 = fsub fast float %6988, %6945
  %6990 = fmul fast float %6989, 0x400921FB60000000
  %6991 = fadd fast float %6990, 0x3FF921FB60000000
  %6992 = call float @dx.op.unary.f32(i32 13, float %6991)  ; Sin(value)
  %6993 = fadd fast float %6992, -1.000000e+00
  %6994 = fmul fast float %6993, 0x3FD45F3060000000
  %6995 = fmul fast float %6989, 0x401921FB60000000
  %6996 = fadd fast float %6995, 0x400921FB60000000
  %6997 = call float @dx.op.unary.f32(i32 13, float %6996)  ; Sin(value)
  %6998 = fadd fast float %6997, 0x3E7777A5C0000000
  %6999 = fmul fast float %6998, 0x3FC45F3060000000
  %7000 = fmul fast float %6989, 0x4022D97C80000000
  %7001 = fadd fast float %7000, 0x4012D97C80000000
  %7002 = call float @dx.op.unary.f32(i32 13, float %7001)  ; Sin(value)
  %7003 = fadd fast float %7002, 1.000000e+00
  %7004 = fmul fast float %7003, 0x3FBB2995E0000000
  %7005 = fmul fast float %6989, 0x402921FB60000000
  %7006 = fadd fast float %7005, 0x401921FB60000000
  %7007 = call float @dx.op.unary.f32(i32 13, float %7006)  ; Sin(value)
  %7008 = fadd fast float %7007, 0xBE8777A5C0000000
  %7009 = fmul fast float %7008, 0x3FB45F3060000000
  %7010 = call float @dx.op.dot4.f32(i32 56, float %6984, float %6985, float %6986, float %6987, float %6994, float %6999, float %7004, float %7009)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7011 = fmul fast float %7010, 0xBFF7154760000000
  %7012 = call float @dx.op.unary.f32(i32 21, float %7011)  ; Exp(value)
  %7013 = call float @dx.op.unary.f32(i32 7, float %7012)  ; Saturate(value)
  br label %7014

; <label>:7014                                    ; preds = %6982, %6978
  %7015 = phi float [ %7013, %6982 ], [ 1.000000e+00, %6978 ]
  %7016 = fadd fast float %7015, -1.000000e+00
  %7017 = fmul fast float %7016, %6976
  %7018 = fadd fast float %7017, 1.000000e+00
  br label %7019

; <label>:7019                                    ; preds = %7014, %6919
  %7020 = phi float [ %7018, %7014 ], [ 1.000000e+00, %6919 ]
  %7021 = fmul fast float %7020, %6915
  %7022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7023 = extractvalue %dx.types.CBufRet.f32 %7022, 0
  %7024 = extractvalue %dx.types.CBufRet.f32 %7022, 1
  %7025 = extractvalue %dx.types.CBufRet.f32 %7022, 2
  %7026 = fadd fast float %7023, %154
  %7027 = fadd fast float %7024, %155
  %7028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7029 = extractvalue %dx.types.CBufRet.f32 %7028, 1
  %7030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7031 = extractvalue %dx.types.CBufRet.f32 %7030, 0
  %7032 = extractvalue %dx.types.CBufRet.f32 %7030, 1
  %7033 = extractvalue %dx.types.CBufRet.f32 %7030, 2
  %7034 = fsub fast float -0.000000e+00, %7026
  %7035 = fsub fast float -0.000000e+00, %7027
  %7036 = fsub fast float %2505, %7025
  %7037 = fadd fast float %7036, %7029
  %7038 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7034, float %7035, float %7037)  ; Dot3(ax,ay,az,bx,by,bz)
  %7039 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7031, float %7032, float %7033)  ; Dot3(ax,ay,az,bx,by,bz)
  %7040 = fdiv fast float 1.000000e+00, %7039
  %7041 = fmul fast float %7040, %7038
  %7042 = fmul fast float %7031, %7041
  %7043 = fmul fast float %7032, %7041
  %7044 = fadd fast float %7042, %7026
  %7045 = fadd fast float %7043, %7027
  %7046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7047 = extractvalue %dx.types.CBufRet.f32 %7046, 0
  %7048 = extractvalue %dx.types.CBufRet.f32 %7046, 1
  %7049 = fsub fast float %7044, %7047
  %7050 = fsub fast float %7045, %7048
  %7051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.f32 %7051, 2
  %7053 = extractvalue %dx.types.CBufRet.f32 %7051, 3
  %7054 = fmul fast float %7049, %7052
  %7055 = fmul fast float %7050, %7053
  %7056 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7057 = extractvalue %dx.types.CBufRet.i32 %7056, 3
  %7058 = icmp eq i32 %7057, 0
  br i1 %7058, label %7064, label %7059

; <label>:7059                                    ; preds = %7019
  %7060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %61, float %7054, float %7055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7061 = extractvalue %dx.types.ResRet.f32 %7060, 0
  %7062 = extractvalue %dx.types.ResRet.f32 %7060, 1
  %7063 = extractvalue %dx.types.ResRet.f32 %7060, 2
  br label %7069

; <label>:7064                                    ; preds = %7019
  %7065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %62, float %7054, float %7055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7066 = extractvalue %dx.types.ResRet.f32 %7065, 0
  %7067 = extractvalue %dx.types.ResRet.f32 %7065, 1
  %7068 = extractvalue %dx.types.ResRet.f32 %7065, 2
  br label %7069

; <label>:7069                                    ; preds = %7064, %7059
  %7070 = phi float [ %7061, %7059 ], [ %7066, %7064 ]
  %7071 = phi float [ %7062, %7059 ], [ %7067, %7064 ]
  %7072 = phi float [ %7063, %7059 ], [ %7068, %7064 ]
  %7073 = extractvalue %dx.types.CBufRet.f32 %7028, 2
  %7074 = fmul fast float %7073, %7070
  %7075 = extractvalue %dx.types.CBufRet.f32 %7028, 0
  %7076 = fsub fast float %7041, %7075
  %7077 = fsub fast float %7076, %7074
  %7078 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7077)  ; FMax(a,b)
  %7079 = fmul fast float %7078, %7071
  %7080 = call float @dx.op.binary.f32(i32 36, float %7072, float %7079)  ; FMin(a,b)
  %7081 = fmul fast float %7080, 0xBFF7154760000000
  %7082 = call float @dx.op.unary.f32(i32 21, float %7081)  ; Exp(value)
  %7083 = fmul fast float %7021, %7082
  br label %7084

; <label>:7084                                    ; preds = %7069, %6914
  %7085 = phi float [ %7083, %7069 ], [ %6915, %6914 ]
  %7086 = call float @dx.op.binary.f32(i32 36, float %7085, float %7085)  ; FMin(a,b)
  %7087 = call float @dx.op.binary.f32(i32 36, float %7085, float %7086)  ; FMin(a,b)
  %7088 = fcmp fast ogt float %7087, 0.000000e+00
  br i1 %7088, label %7089, label %7275, !dx.controlflow.hints !165

; <label>:7089                                    ; preds = %7084
  %7090 = fmul fast float %7085, %5449
  %7091 = fmul fast float %7085, %5450
  %7092 = fmul fast float %7085, %5451
  %7093 = fsub fast float %5438, %2319
  %7094 = fsub fast float %5439, %2320
  %7095 = fsub fast float %5440, %2321
  %7096 = call float @dx.op.dot3.f32(i32 55, float %7093, float %7094, float %7095, float %7093, float %7094, float %7095)  ; Dot3(ax,ay,az,bx,by,bz)
  %7097 = call float @dx.op.unary.f32(i32 25, float %7096)  ; Rsqrt(value)
  %7098 = fmul fast float %7097, %7093
  %7099 = fmul fast float %7097, %7094
  %7100 = fmul fast float %7097, %7095
  %7101 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %2291, float %2292, float %2293)  ; Dot3(ax,ay,az,bx,by,bz)
  %7102 = call float @dx.op.dot3.f32(i32 55, float %2372, float %2373, float %2374, float %7098, float %7099, float %7100)  ; Dot3(ax,ay,az,bx,by,bz)
  %7103 = call float @dx.op.unary.f32(i32 7, float %7101)  ; Saturate(value)
  %7104 = fmul fast float %7103, %7103
  %7105 = fmul fast float %7104, %2542
  %7106 = call float @dx.op.unary.f32(i32 7, float %7105)  ; Saturate(value)
  %7107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7108 = extractvalue %dx.types.CBufRet.f32 %7107, 0
  %7109 = bitcast float %7108 to i32
  %7110 = lshr i32 %7109, 8
  %7111 = and i32 %7110, 255
  %7112 = uitofp i32 %7111 to float
  %7113 = fptoui float %7112 to i32
  %7114 = and i32 %7113, 8
  %7115 = icmp ne i32 %7114, 0
  %7116 = select i1 %7115, float %7106, float 1.000000e+00
  %7117 = fmul fast float %7116, %7103
  %7118 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2292, float %2293, float %7098, float %7099, float %7100)  ; Dot3(ax,ay,az,bx,by,bz)
  %7119 = fmul fast float %7118, %7118
  %7120 = call float @dx.op.unary.f32(i32 6, float %7101)  ; FAbs(value)
  %7121 = fsub fast float 1.000000e+00, %2533
  %7122 = fmul fast float %2376, %2376
  %7123 = fmul fast float %7122, %7121
  %7124 = fadd fast float %7123, %2533
  %7125 = bitcast float %7124 to i32
  %7126 = ashr i32 %7125, 1
  %7127 = add nsw i32 %7126, 532487669
  %7128 = bitcast i32 %7127 to float
  %7129 = fadd fast float %7128, %2376
  %7130 = fmul fast float %2533, %7119
  %7131 = fsub fast float 1.000000e+00, %7119
  %7132 = fadd fast float %7131, %7130
  %7133 = fmul fast float %7120, %7120
  %7134 = fmul fast float %7133, %7121
  %7135 = fadd fast float %7134, %2533
  %7136 = bitcast float %7135 to i32
  %7137 = ashr i32 %7136, 1
  %7138 = add nsw i32 %7137, 532487669
  %7139 = bitcast i32 %7138 to float
  %7140 = fadd fast float %7139, %7120
  %7141 = fmul fast float %7132, %7132
  %7142 = fmul fast float %7141, %7129
  %7143 = fmul fast float %7142, %7140
  %7144 = fdiv fast float 0x3FF0A00000000000, %7143
  %7145 = fmul fast float %7144, %2533
  %7146 = call float @dx.op.unary.f32(i32 6, float %7102)  ; FAbs(value)
  %7147 = fsub fast float 1.000000e+00, %7146
  %7148 = bitcast float %7147 to i32
  %7149 = sitofp i32 %7148 to float
  %7150 = fmul fast float %7149, 5.000000e+00
  %7151 = fadd fast float %7150, 0xC1EFBF8940000000
  %7152 = fptosi float %7151 to i32
  %7153 = bitcast i32 %7152 to float
  %7154 = fmul fast float %7153, %2377
  %7155 = fmul fast float %7153, %2378
  %7156 = fmul fast float %7153, %3607
  %7157 = fadd fast float %7154, %2312
  %7158 = fadd fast float %7155, %2313
  %7159 = fadd fast float %7156, %2506
  %7160 = select i1 %3610, float %7146, float 0.000000e+00
  %7161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %62, float %2387, float %7160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7162 = extractvalue %dx.types.ResRet.f32 %7161, 0
  %7163 = extractvalue %dx.types.ResRet.f32 %7161, 1
  %7164 = extractvalue %dx.types.ResRet.f32 %7161, 2
  %7165 = fadd fast float %7162, -5.000000e-01
  %7166 = fadd fast float %7163, -5.000000e-01
  %7167 = fadd fast float %7164, -5.000000e-01
  %7168 = fmul fast float %2406, %7165
  %7169 = fmul fast float %2410, %7166
  %7170 = fmul fast float %3623, %7167
  %7171 = fadd fast float %7157, %7168
  %7172 = fadd fast float %7158, %7169
  %7173 = fadd fast float %7159, %7170
  %7174 = call float @dx.op.unary.f32(i32 7, float %7171)  ; Saturate(value)
  %7175 = call float @dx.op.unary.f32(i32 7, float %7172)  ; Saturate(value)
  %7176 = call float @dx.op.unary.f32(i32 7, float %7173)  ; Saturate(value)
  %7177 = fmul fast float %7101, 9.843750e-01
  %7178 = fmul fast float %2462, 9.843750e-01
  %7179 = fadd fast float %7177, 7.812500e-03
  %7180 = fadd fast float %7178, 7.812500e-03
  %7181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %62, float %7179, float %7180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7182 = extractvalue %dx.types.ResRet.f32 %7181, 2
  %7183 = extractvalue %dx.types.ResRet.f32 %7181, 3
  %7184 = select i1 %3610, float %7101, float 0.000000e+00
  %7185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %62, float %2387, float %7184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7186 = extractvalue %dx.types.ResRet.f32 %7185, 0
  %7187 = extractvalue %dx.types.ResRet.f32 %7185, 1
  %7188 = extractvalue %dx.types.ResRet.f32 %7185, 2
  %7189 = fadd fast float %7186, -5.000000e-01
  %7190 = fadd fast float %7187, -5.000000e-01
  %7191 = fadd fast float %7188, -5.000000e-01
  %7192 = fmul fast float %2377, 4.000000e+00
  %7193 = fmul fast float %7192, %2389
  %7194 = fmul fast float %7193, %7189
  %7195 = fmul fast float %2378, 4.000000e+00
  %7196 = fmul fast float %7195, %2389
  %7197 = fmul fast float %7196, %7190
  %7198 = fmul fast float %3607, 4.000000e+00
  %7199 = fmul fast float %7198, %2389
  %7200 = fmul fast float %7199, %7191
  %7201 = fadd fast float %7194, %7182
  %7202 = fmul fast float %7201, %2312
  %7203 = fadd fast float %7202, %7183
  %7204 = fadd fast float %7197, %7182
  %7205 = fmul fast float %7204, %2313
  %7206 = fadd fast float %7205, %7183
  %7207 = fadd fast float %7200, %7182
  %7208 = fmul fast float %7207, %2506
  %7209 = fadd fast float %7208, %7183
  %7210 = call float @dx.op.unary.f32(i32 7, float %7203)  ; Saturate(value)
  %7211 = call float @dx.op.unary.f32(i32 7, float %7206)  ; Saturate(value)
  %7212 = call float @dx.op.unary.f32(i32 7, float %7209)  ; Saturate(value)
  %7213 = call float @dx.op.binary.f32(i32 35, float %7211, float %7212)  ; FMax(a,b)
  %7214 = call float @dx.op.binary.f32(i32 35, float %7210, float %7213)  ; FMax(a,b)
  %7215 = fsub fast float 1.000000e+00, %7214
  %7216 = fsub fast float -0.000000e+00, %2291
  %7217 = fsub fast float -0.000000e+00, %2292
  %7218 = fsub fast float -0.000000e+00, %2293
  %7219 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %7216, float %7217, float %7218)  ; Dot3(ax,ay,az,bx,by,bz)
  %7220 = call float @dx.op.unary.f32(i32 7, float %7219)  ; Saturate(value)
  %7221 = fmul fast float %7220, 9.843750e-01
  %7222 = fadd fast float %7221, 7.812500e-03
  %7223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %62, float %7222, float %7180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7224 = extractvalue %dx.types.ResRet.f32 %7223, 2
  %7225 = extractvalue %dx.types.ResRet.f32 %7223, 3
  %7226 = select i1 %3610, float %7220, float 0.000000e+00
  %7227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %62, float %2387, float %7226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7228 = extractvalue %dx.types.ResRet.f32 %7227, 0
  %7229 = extractvalue %dx.types.ResRet.f32 %7227, 1
  %7230 = extractvalue %dx.types.ResRet.f32 %7227, 2
  %7231 = fadd fast float %7228, -5.000000e-01
  %7232 = fadd fast float %7229, -5.000000e-01
  %7233 = fadd fast float %7230, -5.000000e-01
  %7234 = fmul fast float %7193, %7231
  %7235 = fmul fast float %7196, %7232
  %7236 = fmul fast float %7199, %7233
  %7237 = fadd fast float %7234, %7224
  %7238 = fmul fast float %7237, %2312
  %7239 = fadd fast float %7238, %7225
  %7240 = fadd fast float %7235, %7224
  %7241 = fmul fast float %7240, %2313
  %7242 = fadd fast float %7241, %7225
  %7243 = fadd fast float %7236, %7224
  %7244 = fmul fast float %7243, %2506
  %7245 = fadd fast float %7244, %7225
  %7246 = call float @dx.op.unary.f32(i32 7, float %7239)  ; Saturate(value)
  %7247 = call float @dx.op.unary.f32(i32 7, float %7242)  ; Saturate(value)
  %7248 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7249 = call float @dx.op.binary.f32(i32 35, float %7247, float %7248)  ; FMax(a,b)
  %7250 = call float @dx.op.binary.f32(i32 35, float %7246, float %7249)  ; FMax(a,b)
  %7251 = fsub fast float 1.000000e+00, %7250
  %7252 = fmul fast float %7251, %7220
  %7253 = fmul fast float %7252, %2465
  %7254 = fmul fast float %7215, %7117
  %7255 = fmul fast float %7117, %7145
  %7256 = fmul fast float %7255, %7174
  %7257 = fmul fast float %7255, %7175
  %7258 = fmul fast float %7255, %7176
  %7259 = fadd fast float %7253, %7254
  %7260 = fmul fast float %7259, %7090
  %7261 = fmul fast float %7259, %7091
  %7262 = fmul fast float %7259, %7092
  %7263 = fadd fast float %7260, %5425
  %7264 = fadd fast float %7261, %5426
  %7265 = fadd fast float %7262, %5427
  %7266 = fmul fast float %7256, %7090
  %7267 = fmul fast float %7257, %7091
  %7268 = fmul fast float %7258, %7092
  %7269 = fadd fast float %7266, %5431
  %7270 = fadd fast float %7267, %5432
  %7271 = fadd fast float %7268, %5433
  %7272 = fadd fast float %7266, %5428
  %7273 = fadd fast float %7267, %5429
  %7274 = fadd fast float %7268, %5430
  br label %7275

; <label>:7275                                    ; preds = %7089, %7084, %5418
  %7276 = phi i32 [ %5601, %7089 ], [ %5420, %5418 ], [ %5601, %7084 ]
  %7277 = phi i32 [ 1, %7089 ], [ 0, %5418 ], [ 0, %7084 ]
  %7278 = phi float [ %7266, %7089 ], [ 0.000000e+00, %5418 ], [ 0.000000e+00, %7084 ]
  %7279 = phi float [ %7267, %7089 ], [ 0.000000e+00, %5418 ], [ 0.000000e+00, %7084 ]
  %7280 = phi float [ %7268, %7089 ], [ 0.000000e+00, %5418 ], [ 0.000000e+00, %7084 ]
  %7281 = phi float [ %7260, %7089 ], [ 0.000000e+00, %5418 ], [ 0.000000e+00, %7084 ]
  %7282 = phi float [ %7261, %7089 ], [ 0.000000e+00, %5418 ], [ 0.000000e+00, %7084 ]
  %7283 = phi float [ %7262, %7089 ], [ 0.000000e+00, %5418 ], [ 0.000000e+00, %7084 ]
  %7284 = phi float [ %7272, %7089 ], [ %5428, %5418 ], [ %5428, %7084 ]
  %7285 = phi float [ %7273, %7089 ], [ %5429, %5418 ], [ %5429, %7084 ]
  %7286 = phi float [ %7274, %7089 ], [ %5430, %5418 ], [ %5430, %7084 ]
  %7287 = phi float [ %7263, %7089 ], [ %5425, %5418 ], [ %5425, %7084 ]
  %7288 = phi float [ %7264, %7089 ], [ %5426, %5418 ], [ %5426, %7084 ]
  %7289 = phi float [ %7265, %7089 ], [ %5427, %5418 ], [ %5427, %7084 ]
  %7290 = phi float [ %7085, %7089 ], [ 0.000000e+00, %5418 ], [ 0.000000e+00, %7084 ]
  %7291 = phi float [ %7269, %7089 ], [ %5431, %5418 ], [ %5431, %7084 ]
  %7292 = phi float [ %7270, %7089 ], [ %5432, %5418 ], [ %5432, %7084 ]
  %7293 = phi float [ %7271, %7089 ], [ %5433, %5418 ], [ %5433, %7084 ]
  %7294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7295 = extractvalue %dx.types.CBufRet.i32 %7294, 0
  %7296 = icmp eq i32 %7295, 0
  br i1 %7296, label %8236, label %7297

; <label>:7297                                    ; preds = %7275
  %7298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7299 = extractvalue %dx.types.CBufRet.f32 %7298, 2
  %7300 = extractvalue %dx.types.CBufRet.f32 %7298, 3
  %7301 = fmul fast float %7299, %99
  %7302 = fmul fast float %7300, %100
  %7303 = fptoui float %7301 to i32
  %7304 = fptoui float %7302 to i32
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 0
  %7307 = extractvalue %dx.types.CBufRet.f32 %7305, 2
  %7308 = extractvalue %dx.types.CBufRet.f32 %7305, 3
  %7309 = fadd fast float %88, -4.000000e+00
  %7310 = call float @dx.op.binary.f32(i32 35, float %7309, float 0.000000e+00)  ; FMax(a,b)
  %7311 = fadd fast float %7310, %7306
  %7312 = fmul fast float %7311, %7307
  %7313 = call float @dx.op.unary.f32(i32 23, float %7312)  ; Log(value)
  %7314 = fmul fast float %7313, %7308
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 2
  %7317 = fmul fast float %7314, %7316
  %7318 = call float @dx.op.unary.f32(i32 7, float %7317)  ; Saturate(value)
  %7319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.i32 %7319, 1
  %7321 = add i32 %7320, -1
  %7322 = uitofp i32 %7320 to float
  %7323 = fmul fast float %7322, %7318
  %7324 = fptoui float %7323 to i32
  %7325 = call i32 @dx.op.binary.i32(i32 40, i32 %7324, i32 %7321)  ; UMin(a,b)
  %7326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7327 = extractvalue %dx.types.CBufRet.i32 %7326, 2
  %7328 = extractvalue %dx.types.CBufRet.i32 %7326, 3
  %7329 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7304, i32 %7327, i32 %7303)  ; UMad(a,b,c)
  %7330 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7325, i32 %7328, i32 %7329)  ; UMad(a,b,c)
  %7331 = add nsw i32 %7295, -1
  %7332 = call i32 @dx.op.binary.i32(i32 37, i32 %7331, i32 0)  ; IMax(a,b)
  %7333 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %7334 = fptoui float %7333 to i32
  %7335 = lshr i32 %7334, 5
  %7336 = call i32 @dx.op.binary.i32(i32 40, i32 %7335, i32 8191)  ; UMin(a,b)
  %7337 = shl i32 %7336, 2
  %7338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7337, i32 undef)  ; BufferLoad(srv,index,wot)
  %7339 = extractvalue %dx.types.ResRet.i32 %7338, 0
  %7340 = lshr i32 %7339, 16
  %7341 = and i32 %7339, 65535
  %7342 = lshr i32 %7339, 21
  %7343 = lshr i32 %7341, 5
  %7344 = call i32 @dx.op.binary.i32(i32 40, i32 %7343, i32 %7332)  ; UMin(a,b)
  %7345 = icmp ugt i32 %7342, %7344
  br i1 %7345, label %8169, label %7346

; <label>:7346                                    ; preds = %7297
  br label %7347

; <label>:7347                                    ; preds = %8138, %7346
  %7348 = phi i32 [ %8139, %8138 ], [ %7276, %7346 ]
  %7349 = phi i32 [ %8140, %8138 ], [ 0, %7346 ]
  %7350 = phi i32 [ %8141, %8138 ], [ 0, %7346 ]
  %7351 = phi i32 [ %8142, %8138 ], [ 0, %7346 ]
  %7352 = phi i32 [ %8143, %8138 ], [ 0, %7346 ]
  %7353 = phi i32 [ %8144, %8138 ], [ 0, %7346 ]
  %7354 = phi i32 [ %8145, %8138 ], [ 0, %7346 ]
  %7355 = phi i32 [ %8146, %8138 ], [ 0, %7346 ]
  %7356 = phi i32 [ %8147, %8138 ], [ 0, %7346 ]
  %7357 = phi i32 [ %8166, %8138 ], [ %7342, %7346 ]
  %7358 = phi float [ %8148, %8138 ], [ %7278, %7346 ]
  %7359 = phi float [ %8149, %8138 ], [ %7279, %7346 ]
  %7360 = phi float [ %8150, %8138 ], [ %7280, %7346 ]
  %7361 = phi float [ %8151, %8138 ], [ %7281, %7346 ]
  %7362 = phi float [ %8152, %8138 ], [ %7282, %7346 ]
  %7363 = phi float [ %8153, %8138 ], [ %7283, %7346 ]
  %7364 = phi float [ %8154, %8138 ], [ %7284, %7346 ]
  %7365 = phi float [ %8155, %8138 ], [ %7285, %7346 ]
  %7366 = phi float [ %8156, %8138 ], [ %7286, %7346 ]
  %7367 = phi float [ %8157, %8138 ], [ %7287, %7346 ]
  %7368 = phi float [ %8158, %8138 ], [ %7288, %7346 ]
  %7369 = phi float [ %8159, %8138 ], [ %7289, %7346 ]
  %7370 = phi float [ %8160, %8138 ], [ %7291, %7346 ]
  %7371 = phi float [ %8161, %8138 ], [ %7292, %7346 ]
  %7372 = phi float [ %8162, %8138 ], [ %7293, %7346 ]
  %7373 = phi float [ %8163, %8138 ], [ %7287, %7346 ]
  %7374 = phi float [ %8164, %8138 ], [ %7288, %7346 ]
  %7375 = phi float [ %8165, %8138 ], [ %7289, %7346 ]
  %7376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7377 = extractvalue %dx.types.CBufRet.i32 %7376, 0
  %7378 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7330, i32 %7377, i32 %7357)  ; UMad(a,b,c)
  %7379 = shl i32 %7378, 2
  %7380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7379, i32 undef)  ; BufferLoad(srv,index,wot)
  %7381 = extractvalue %dx.types.ResRet.i32 %7380, 0
  %7382 = shl i32 %7357, 5
  %7383 = sub nsw i32 %7340, %7382
  %7384 = call i32 @dx.op.binary.i32(i32 37, i32 %7383, i32 0)  ; IMax(a,b)
  %7385 = call i32 @dx.op.binary.i32(i32 38, i32 %7384, i32 31)  ; IMin(a,b)
  %7386 = sub nsw i32 1, %7340
  %7387 = add nsw i32 %7386, %7341
  %7388 = call i32 @dx.op.binary.i32(i32 37, i32 %7387, i32 0)  ; IMax(a,b)
  %7389 = call i32 @dx.op.binary.i32(i32 38, i32 %7388, i32 32)  ; IMin(a,b)
  %7390 = and i32 %7389, 31
  %7391 = shl i32 -1, %7390
  %7392 = xor i32 %7391, -1
  %7393 = and i32 %7385, 31
  %7394 = shl i32 %7392, %7393
  %7395 = icmp eq i32 %7389, 32
  %7396 = select i1 %7395, i32 -1, i32 %7394
  %7397 = and i32 %7396, %7381
  %7398 = icmp eq i32 %7397, 0
  br i1 %7398, label %8138, label %7399

; <label>:7399                                    ; preds = %7347
  br label %7400

; <label>:7400                                    ; preds = %7594, %7399
  %7401 = phi i32 [ %7595, %7594 ], [ %7348, %7399 ]
  %7402 = phi i32 [ %7584, %7594 ], [ %7349, %7399 ]
  %7403 = phi i32 [ %7586, %7594 ], [ %7350, %7399 ]
  %7404 = phi i32 [ %7588, %7594 ], [ %7351, %7399 ]
  %7405 = phi i32 [ %7590, %7594 ], [ %7352, %7399 ]
  %7406 = phi i32 [ %7596, %7594 ], [ %7353, %7399 ]
  %7407 = phi i32 [ %7597, %7594 ], [ %7354, %7399 ]
  %7408 = phi i32 [ %7598, %7594 ], [ %7355, %7399 ]
  %7409 = phi i32 [ %7599, %7594 ], [ %7356, %7399 ]
  %7410 = phi i32 [ %7433, %7594 ], [ %7397, %7399 ]
  %7411 = phi float [ %7600, %7594 ], [ %7358, %7399 ]
  %7412 = phi float [ %7601, %7594 ], [ %7359, %7399 ]
  %7413 = phi float [ %7602, %7594 ], [ %7360, %7399 ]
  %7414 = phi float [ %7603, %7594 ], [ %7361, %7399 ]
  %7415 = phi float [ %7604, %7594 ], [ %7362, %7399 ]
  %7416 = phi float [ %7605, %7594 ], [ %7363, %7399 ]
  %7417 = phi float [ %7606, %7594 ], [ %7364, %7399 ]
  %7418 = phi float [ %7607, %7594 ], [ %7365, %7399 ]
  %7419 = phi float [ %7608, %7594 ], [ %7366, %7399 ]
  %7420 = phi float [ %7609, %7594 ], [ %7367, %7399 ]
  %7421 = phi float [ %7610, %7594 ], [ %7368, %7399 ]
  %7422 = phi float [ %7611, %7594 ], [ %7369, %7399 ]
  %7423 = phi float [ %7612, %7594 ], [ %7370, %7399 ]
  %7424 = phi float [ %7613, %7594 ], [ %7371, %7399 ]
  %7425 = phi float [ %7614, %7594 ], [ %7372, %7399 ]
  %7426 = phi float [ %7615, %7594 ], [ %7373, %7399 ]
  %7427 = phi float [ %7616, %7594 ], [ %7374, %7399 ]
  %7428 = phi float [ %7617, %7594 ], [ %7375, %7399 ]
  %7429 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7410)  ; FirstbitLo(value)
  %7430 = add i32 %7429, %7382
  %7431 = and i32 %7429, 31
  %7432 = shl i32 1, %7431
  %7433 = xor i32 %7432, %7410
  %7434 = mul i32 %7430, 112
  %7435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7434, i32 undef)  ; BufferLoad(srv,index,wot)
  %7436 = extractvalue %dx.types.ResRet.f32 %7435, 0
  %7437 = extractvalue %dx.types.ResRet.f32 %7435, 1
  %7438 = extractvalue %dx.types.ResRet.f32 %7435, 2
  %7439 = or i32 %7434, 12
  %7440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7439, i32 undef)  ; BufferLoad(srv,index,wot)
  %7441 = extractvalue %dx.types.ResRet.f32 %7440, 0
  %7442 = add i32 %7434, 16
  %7443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7442, i32 undef)  ; BufferLoad(srv,index,wot)
  %7444 = extractvalue %dx.types.ResRet.f32 %7443, 0
  %7445 = extractvalue %dx.types.ResRet.f32 %7443, 1
  %7446 = extractvalue %dx.types.ResRet.f32 %7443, 2
  %7447 = add i32 %7434, 28
  %7448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %7447, i32 undef)  ; BufferLoad(srv,index,wot)
  %7449 = extractvalue %dx.types.ResRet.i32 %7448, 0
  %7450 = add i32 %7434, 32
  %7451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7450, i32 undef)  ; BufferLoad(srv,index,wot)
  %7452 = extractvalue %dx.types.ResRet.f32 %7451, 0
  %7453 = extractvalue %dx.types.ResRet.f32 %7451, 1
  %7454 = extractvalue %dx.types.ResRet.f32 %7451, 2
  %7455 = add i32 %7434, 44
  %7456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7455, i32 undef)  ; BufferLoad(srv,index,wot)
  %7457 = extractvalue %dx.types.ResRet.f32 %7456, 0
  %7458 = add i32 %7434, 48
  %7459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7458, i32 undef)  ; BufferLoad(srv,index,wot)
  %7460 = extractvalue %dx.types.ResRet.f32 %7459, 0
  %7461 = extractvalue %dx.types.ResRet.f32 %7459, 1
  %7462 = extractvalue %dx.types.ResRet.f32 %7459, 2
  %7463 = extractvalue %dx.types.ResRet.f32 %7459, 3
  %7464 = add i32 %7434, 64
  %7465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7464, i32 undef)  ; BufferLoad(srv,index,wot)
  %7466 = extractvalue %dx.types.ResRet.f32 %7465, 0
  %7467 = extractvalue %dx.types.ResRet.f32 %7465, 1
  %7468 = extractvalue %dx.types.ResRet.f32 %7465, 2
  %7469 = extractvalue %dx.types.ResRet.f32 %7465, 3
  %7470 = add i32 %7434, 80
  %7471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7470, i32 undef)  ; BufferLoad(srv,index,wot)
  %7472 = extractvalue %dx.types.ResRet.f32 %7471, 1
  %7473 = extractvalue %dx.types.ResRet.f32 %7471, 2
  %7474 = add i32 %7434, 92
  %7475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %7474, i32 undef)  ; BufferLoad(srv,index,wot)
  %7476 = extractvalue %dx.types.ResRet.i32 %7475, 0
  %7477 = call float @dx.op.dot3.f32(i32 55, float %7436, float %7437, float %7438, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7478 = select i1 %2504, float %7472, float %7436
  %7479 = select i1 %2504, float %7477, float %7437
  %7480 = select i1 %2504, float %7473, float %7438
  %7481 = and i32 %7476, 65535
  %7482 = uitofp i32 %7481 to float
  %7483 = lshr i32 %7476, 16
  %7484 = uitofp i32 %7483 to float
  %7485 = and i32 %7449, 65535
  %7486 = lshr i32 %7449, 24
  %7487 = and i32 %7486, 3
  %7488 = and i32 %7449, 536870912
  %7489 = icmp ne i32 %7488, 0
  %7490 = icmp eq i32 %7487, 2
  %7491 = call float @dx.op.dot3.f32(i32 55, float %7452, float %7453, float %7454, float %7452, float %7453, float %7454)  ; Dot3(ax,ay,az,bx,by,bz)
  %7492 = fsub fast float %154, %7460
  %7493 = fsub fast float %155, %7461
  %7494 = fsub fast float %156, %7462
  %7495 = call float @dx.op.dot3.f32(i32 55, float %7492, float %7493, float %7494, float %7452, float %7453, float %7454)  ; Dot3(ax,ay,az,bx,by,bz)
  %7496 = fdiv fast float %7495, %7491
  %7497 = call float @dx.op.binary.f32(i32 35, float %7496, float -1.000000e+00)  ; FMax(a,b)
  %7498 = call float @dx.op.binary.f32(i32 36, float %7497, float 1.000000e+00)  ; FMin(a,b)
  %7499 = fmul fast float %7498, %7452
  %7500 = fmul fast float %7498, %7453
  %7501 = fmul fast float %7498, %7454
  %7502 = fadd fast float %7499, %7460
  %7503 = fadd fast float %7500, %7461
  %7504 = fadd fast float %7501, %7462
  %7505 = fsub fast float %7502, %154
  %7506 = fsub fast float %7503, %155
  %7507 = fsub fast float %7504, %156
  %7508 = call float @dx.op.dot3.f32(i32 55, float %7505, float %7506, float %7507, float %7505, float %7506, float %7507)  ; Dot3(ax,ay,az,bx,by,bz)
  %7509 = call float @dx.op.unary.f32(i32 24, float %7508)  ; Sqrt(value)
  %7510 = fdiv fast float 1.000000e+00, %7509
  %7511 = fmul fast float %7505, %7510
  %7512 = fmul fast float %7506, %7510
  %7513 = fmul fast float %7507, %7510
  %7514 = fadd fast float %7509, %7441
  %7515 = fdiv fast float 1.000000e+00, %7514
  %7516 = fmul float %7457, %7515
  %7517 = fmul float %7516, %7516
  %7518 = call float @dx.op.unary.f32(i32 7, float %7517)  ; Saturate(value)
  br i1 %7490, label %7519, label %7543

; <label>:7519                                    ; preds = %7400
  %7520 = fmul fast float %7468, %7444
  %7521 = fmul fast float %7468, %7445
  %7522 = fmul fast float %7468, %7446
  %7523 = fsub fast float %7520, %154
  %7524 = fadd fast float %7523, %7502
  %7525 = fsub fast float %7521, %155
  %7526 = fadd fast float %7525, %7503
  %7527 = fsub fast float %7522, %156
  %7528 = fadd fast float %7527, %7504
  %7529 = call float @dx.op.dot3.f32(i32 55, float %7524, float %7526, float %7528, float %7524, float %7526, float %7528)  ; Dot3(ax,ay,az,bx,by,bz)
  %7530 = call float @dx.op.unary.f32(i32 25, float %7529)  ; Rsqrt(value)
  %7531 = fmul fast float %7530, %7524
  %7532 = fmul fast float %7530, %7526
  %7533 = fmul fast float %7530, %7528
  %7534 = fsub fast float %154, %7502
  %7535 = fsub fast float %155, %7503
  %7536 = fsub fast float %156, %7504
  %7537 = fsub fast float -0.000000e+00, %7534
  %7538 = fsub fast float -0.000000e+00, %7535
  %7539 = fsub fast float -0.000000e+00, %7536
  %7540 = call float @dx.op.dot3.f32(i32 55, float %7537, float %7538, float %7539, float %7444, float %7445, float %7446)  ; Dot3(ax,ay,az,bx,by,bz)
  %7541 = fcmp fast ogt float %7540, 0.000000e+00
  %7542 = uitofp i1 %7541 to float
  br label %7543

; <label>:7543                                    ; preds = %7519, %7400
  %7544 = phi float [ %7542, %7519 ], [ 1.000000e+00, %7400 ]
  %7545 = phi float [ %7531, %7519 ], [ %7511, %7400 ]
  %7546 = phi float [ %7532, %7519 ], [ %7512, %7400 ]
  %7547 = phi float [ %7533, %7519 ], [ %7513, %7400 ]
  %7548 = call float @dx.op.dot3.f32(i32 55, float %7444, float %7445, float %7446, float %7545, float %7546, float %7547)  ; Dot3(ax,ay,az,bx,by,bz)
  %7549 = fmul fast float %7548, %7548
  %7550 = call float @dx.op.unary.f32(i32 7, float %7549)  ; Saturate(value)
  %7551 = fsub fast float 1.000000e+00, %7550
  %7552 = fmul fast float %7551, 5.000000e-01
  %7553 = fcmp fast ogt float %7548, 0.000000e+00
  %7554 = fsub fast float 1.000000e+00, %7552
  %7555 = select i1 %7553, float %7552, float %7554
  %7556 = fmul fast float %7555, %7484
  %7557 = fadd fast float %7556, %7482
  %7558 = fmul fast float %7557, 0x3EF0001000000000
  %7559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %7558, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7560 = extractvalue %dx.types.ResRet.f32 %7559, 0
  %7561 = fmul fast float %7548, %7466
  %7562 = fadd fast float %7561, %7467
  %7563 = call float @dx.op.unary.f32(i32 7, float %7562)  ; Saturate(value)
  %7564 = select i1 %7490, float 1.000000e+00, float %7563
  %7565 = select i1 %7490, float %7563, float 1.000000e+00
  %7566 = fmul fast float %7509, %7463
  %7567 = fsub fast float 1.000000e+00, %7566
  %7568 = fmul fast float %7567, %7469
  %7569 = call float @dx.op.unary.f32(i32 7, float %7568)  ; Saturate(value)
  %7570 = fmul fast float %7569, %7565
  %7571 = fmul fast float %7570, 2.000000e+00
  %7572 = fsub fast float 3.000000e+00, %7571
  %7573 = fmul fast float %7560, %7544
  %7574 = fmul fast float %7570, %7570
  %7575 = fmul fast float %7574, %7573
  %7576 = fmul fast float %7575, %7572
  %7577 = xor i1 %7489, true
  %7578 = and i1 %7490, %7577
  %7579 = icmp ne i32 %7487, 2
  %7580 = and i1 %7579, %7577
  %7581 = and i1 %7489, %7490
  %7582 = and i1 %7489, %7579
  %7583 = zext i1 %7578 to i32
  %7584 = add i32 %7583, %7402
  %7585 = zext i1 %7580 to i32
  %7586 = add i32 %7585, %7403
  %7587 = zext i1 %7581 to i32
  %7588 = add i32 %7587, %7404
  %7589 = zext i1 %7582 to i32
  %7590 = add i32 %7589, %7405
  %7591 = call float @dx.op.binary.f32(i32 36, float %7576, float %7576)  ; FMin(a,b)
  %7592 = call float @dx.op.binary.f32(i32 36, float %7576, float %7591)  ; FMin(a,b)
  %7593 = fcmp fast ogt float %7592, 0.000000e+00
  br i1 %7593, label %7619, label %7594, !dx.controlflow.hints !166

; <label>:7594                                    ; preds = %8122, %7543
  %7595 = phi i32 [ %8132, %8122 ], [ %7401, %7543 ]
  %7596 = phi i32 [ %8133, %8122 ], [ %7406, %7543 ]
  %7597 = phi i32 [ %8134, %8122 ], [ %7407, %7543 ]
  %7598 = phi i32 [ %8135, %8122 ], [ %7408, %7543 ]
  %7599 = phi i32 [ %8136, %8122 ], [ %7409, %7543 ]
  %7600 = phi float [ %8093, %8122 ], [ %7411, %7543 ]
  %7601 = phi float [ %8094, %8122 ], [ %7412, %7543 ]
  %7602 = phi float [ %8095, %8122 ], [ %7413, %7543 ]
  %7603 = phi float [ %8096, %8122 ], [ %7414, %7543 ]
  %7604 = phi float [ %8097, %8122 ], [ %7415, %7543 ]
  %7605 = phi float [ %8098, %8122 ], [ %7416, %7543 ]
  %7606 = phi float [ %8099, %8122 ], [ %7417, %7543 ]
  %7607 = phi float [ %8100, %8122 ], [ %7418, %7543 ]
  %7608 = phi float [ %8101, %8122 ], [ %7419, %7543 ]
  %7609 = phi float [ %8102, %8122 ], [ %7420, %7543 ]
  %7610 = phi float [ %8103, %8122 ], [ %7421, %7543 ]
  %7611 = phi float [ %8104, %8122 ], [ %7422, %7543 ]
  %7612 = phi float [ %8105, %8122 ], [ %7423, %7543 ]
  %7613 = phi float [ %8106, %8122 ], [ %7424, %7543 ]
  %7614 = phi float [ %8107, %8122 ], [ %7425, %7543 ]
  %7615 = phi float [ %8108, %8122 ], [ %7426, %7543 ]
  %7616 = phi float [ %8109, %8122 ], [ %7427, %7543 ]
  %7617 = phi float [ %8110, %8122 ], [ %7428, %7543 ]
  %7618 = icmp eq i32 %7410, %7432
  br i1 %7618, label %8137, label %7400

; <label>:7619                                    ; preds = %7543
  %7620 = icmp eq i32 %7485, 255
  br i1 %7620, label %7758, label %7621, !dx.controlflow.hints !167

; <label>:7621                                    ; preds = %7619
  %7622 = mul nuw nsw i32 %7485, 176
  %7623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7622, i32 undef)  ; BufferLoad(srv,index,wot)
  %7624 = extractvalue %dx.types.ResRet.f32 %7623, 0
  %7625 = extractvalue %dx.types.ResRet.f32 %7623, 1
  %7626 = extractvalue %dx.types.ResRet.f32 %7623, 2
  %7627 = extractvalue %dx.types.ResRet.f32 %7623, 3
  %7628 = add nuw nsw i32 %7622, 16
  %7629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7628, i32 undef)  ; BufferLoad(srv,index,wot)
  %7630 = extractvalue %dx.types.ResRet.f32 %7629, 0
  %7631 = extractvalue %dx.types.ResRet.f32 %7629, 1
  %7632 = add nuw nsw i32 %7622, 32
  %7633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7632, i32 undef)  ; BufferLoad(srv,index,wot)
  %7634 = extractvalue %dx.types.ResRet.f32 %7633, 0
  %7635 = extractvalue %dx.types.ResRet.f32 %7633, 1
  %7636 = add nuw nsw i32 %7622, 48
  %7637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7636, i32 undef)  ; BufferLoad(srv,index,wot)
  %7638 = extractvalue %dx.types.ResRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.ResRet.f32 %7637, 1
  %7640 = extractvalue %dx.types.ResRet.f32 %7637, 2
  %7641 = extractvalue %dx.types.ResRet.f32 %7637, 3
  %7642 = add nuw nsw i32 %7622, 64
  %7643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7642, i32 undef)  ; BufferLoad(srv,index,wot)
  %7644 = extractvalue %dx.types.ResRet.f32 %7643, 0
  %7645 = extractvalue %dx.types.ResRet.f32 %7643, 1
  %7646 = extractvalue %dx.types.ResRet.f32 %7643, 2
  %7647 = extractvalue %dx.types.ResRet.f32 %7643, 3
  %7648 = add nuw nsw i32 %7622, 80
  %7649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7648, i32 undef)  ; BufferLoad(srv,index,wot)
  %7650 = extractvalue %dx.types.ResRet.f32 %7649, 0
  %7651 = extractvalue %dx.types.ResRet.f32 %7649, 1
  %7652 = extractvalue %dx.types.ResRet.f32 %7649, 2
  %7653 = extractvalue %dx.types.ResRet.f32 %7649, 3
  %7654 = add nuw nsw i32 %7622, 96
  %7655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7654, i32 undef)  ; BufferLoad(srv,index,wot)
  %7656 = extractvalue %dx.types.ResRet.f32 %7655, 0
  %7657 = extractvalue %dx.types.ResRet.f32 %7655, 1
  %7658 = extractvalue %dx.types.ResRet.f32 %7655, 2
  %7659 = extractvalue %dx.types.ResRet.f32 %7655, 3
  %7660 = bitcast float %7631 to i32
  %7661 = fmul fast float %7638, %154
  %7662 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7644, float %7661)  ; FMad(a,b,c)
  %7663 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7650, float %7662)  ; FMad(a,b,c)
  %7664 = fadd fast float %7663, %7656
  %7665 = fmul fast float %7639, %154
  %7666 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7645, float %7665)  ; FMad(a,b,c)
  %7667 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7651, float %7666)  ; FMad(a,b,c)
  %7668 = fadd fast float %7667, %7657
  %7669 = fmul fast float %7640, %154
  %7670 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7646, float %7669)  ; FMad(a,b,c)
  %7671 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7652, float %7670)  ; FMad(a,b,c)
  %7672 = fadd fast float %7671, %7658
  %7673 = fmul fast float %7641, %154
  %7674 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7647, float %7673)  ; FMad(a,b,c)
  %7675 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7653, float %7674)  ; FMad(a,b,c)
  %7676 = fadd fast float %7675, %7659
  %7677 = fdiv fast float %7664, %7676
  %7678 = fdiv fast float %7668, %7676
  %7679 = fdiv fast float %7672, %7676
  %7680 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7679)  ; FMax(a,b)
  %7681 = fmul fast float %1766, 0x401921FB60000000
  %7682 = call float @dx.op.unary.f32(i32 13, float %7681)  ; Sin(value)
  %7683 = call float @dx.op.unary.f32(i32 12, float %7681)  ; Cos(value)
  %7684 = fmul fast float %7683, %7635
  %7685 = call float @dx.op.tertiary.f32(i32 46, float %7682, float %7635, float 0.000000e+00)  ; FMad(a,b,c)
  %7686 = fmul fast float %7635, %7682
  %7687 = fsub fast float -0.000000e+00, %7686
  %7688 = call float @dx.op.tertiary.f32(i32 46, float %7683, float %7635, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7689

; <label>:7689                                    ; preds = %7689, %7621
  %7690 = phi float [ 0.000000e+00, %7621 ], [ %7722, %7689 ]
  %7691 = phi float [ 0.000000e+00, %7621 ], [ %7724, %7689 ]
  %7692 = phi i32 [ 0, %7621 ], [ %7725, %7689 ]
  %7693 = mul i32 %7692, 2
  %7694 = add i32 0, %7693
  %7695 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7694
  %7696 = load float, float* %7695, align 4
  %7697 = mul i32 %7692, 2
  %7698 = add i32 1, %7697
  %7699 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7698
  %7700 = load float, float* %7699, align 4
  %7701 = fmul fast float %7684, %7696
  %7702 = call float @dx.op.tertiary.f32(i32 46, float %7700, float %7687, float %7701)  ; FMad(a,b,c)
  %7703 = fmul fast float %7696, %7685
  %7704 = call float @dx.op.tertiary.f32(i32 46, float %7700, float %7688, float %7703)  ; FMad(a,b,c)
  %7705 = fadd fast float %7702, %7677
  %7706 = fadd fast float %7704, %7678
  %7707 = fmul fast float %7705, %7630
  %7708 = fmul fast float %7706, %7630
  %7709 = call float @dx.op.binary.f32(i32 35, float %7707, float %7626)  ; FMax(a,b)
  %7710 = call float @dx.op.binary.f32(i32 35, float %7708, float %7626)  ; FMax(a,b)
  %7711 = call float @dx.op.binary.f32(i32 36, float %7709, float %7627)  ; FMin(a,b)
  %7712 = call float @dx.op.binary.f32(i32 36, float %7710, float %7627)  ; FMin(a,b)
  %7713 = fadd fast float %7711, %7624
  %7714 = fadd fast float %7712, %7625
  %7715 = uitofp i32 %7660 to float
  %7716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %63, float %7713, float %7714, float %7715, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7717 = extractvalue %dx.types.ResRet.f32 %7716, 0
  %7718 = fsub fast float %7717, %7680
  %7719 = fsub fast float %7718, %7634
  %7720 = fcmp fast ogt float %7719, 0.000000e+00
  %7721 = select i1 %7720, float 1.000000e+00, float 0.000000e+00
  %7722 = fadd fast float %7721, %7690
  %7723 = select i1 %7720, float %7719, float 0.000000e+00
  %7724 = fadd fast float %7723, %7691
  %7725 = add nuw nsw i32 %7692, 1
  %7726 = icmp eq i32 %7725, 8
  br i1 %7726, label %7727, label %7689

; <label>:7727                                    ; preds = %7689
  %7728 = fdiv fast float 1.000000e+00, %7722
  %7729 = fmul fast float %7728, %7724
  %7730 = fdiv fast float 1.000000e+00, %7680
  %7731 = fmul fast float %7729, %7730
  %7732 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7733 = call float @dx.op.binary.f32(i32 35, float %7732, float 0.000000e+00)  ; FMax(a,b)
  %7734 = fmul fast float %7722, 1.250000e-01
  %7735 = call float @dx.op.unary.f32(i32 7, float %7734)  ; Saturate(value)
  %7736 = fmul fast float %7735, 2.000000e+00
  %7737 = fadd fast float %7736, -1.000000e+00
  %7738 = fcmp fast ogt float %7737, 0.000000e+00
  %7739 = fcmp fast olt float %7737, 0.000000e+00
  %7740 = zext i1 %7738 to i32
  %7741 = zext i1 %7739 to i32
  %7742 = sub nsw i32 %7740, %7741
  %7743 = sitofp i32 %7742 to float
  %7744 = fmul fast float %7743, %7737
  %7745 = fsub fast float 1.000000e+00, %7744
  %7746 = fmul fast float %7745, %7745
  %7747 = fmul fast float %7746, %7745
  %7748 = fsub fast float %7745, %7747
  %7749 = fmul fast float %7748, %7733
  %7750 = fsub fast float 1.000000e+00, %7747
  %7751 = fsub fast float %7750, %7749
  %7752 = fmul fast float %7743, 5.000000e-01
  %7753 = fmul fast float %7752, %7751
  %7754 = fsub fast float -5.000000e-01, %7753
  %7755 = fmul fast float %7754, %7564
  %7756 = fadd fast float %7755, 1.000000e+00
  %7757 = fmul fast float %7756, %7576
  br label %7758

; <label>:7758                                    ; preds = %7727, %7619
  %7759 = phi float [ %7757, %7727 ], [ %7576, %7619 ]
  %7760 = call float @dx.op.binary.f32(i32 36, float %7759, float %7759)  ; FMin(a,b)
  %7761 = call float @dx.op.binary.f32(i32 36, float %7759, float %7760)  ; FMin(a,b)
  %7762 = fcmp fast ogt float %7761, 0.000000e+00
  br i1 %7762, label %7763, label %8092, !dx.controlflow.hints !168

; <label>:7763                                    ; preds = %7758
  %7764 = fmul fast float %7759, %7478
  %7765 = fmul fast float %7759, %7479
  %7766 = fmul fast float %7759, %7480
  %7767 = fadd fast float %7511, %2291
  %7768 = fadd fast float %7512, %2292
  %7769 = fadd fast float %7513, %2293
  %7770 = call float @dx.op.dot3.f32(i32 55, float %7511, float %7512, float %7513, float %7505, float %7506, float %7507)  ; Dot3(ax,ay,az,bx,by,bz)
  %7771 = call float @dx.op.dot3.f32(i32 55, float %7511, float %7512, float %7513, float %7767, float %7768, float %7769)  ; Dot3(ax,ay,az,bx,by,bz)
  %7772 = fdiv fast float 1.000000e+00, %7771
  %7773 = fmul fast float %7772, %7770
  %7774 = fmul fast float %7773, %7767
  %7775 = fmul fast float %7773, %7768
  %7776 = fmul fast float %7773, %7769
  %7777 = fadd fast float %7492, %7774
  %7778 = fadd fast float %7493, %7775
  %7779 = fadd fast float %7494, %7776
  %7780 = call float @dx.op.dot3.f32(i32 55, float %7777, float %7778, float %7779, float %7452, float %7453, float %7454)  ; Dot3(ax,ay,az,bx,by,bz)
  %7781 = fdiv fast float %7780, %7491
  %7782 = call float @dx.op.binary.f32(i32 35, float %7781, float -1.000000e+00)  ; FMax(a,b)
  %7783 = call float @dx.op.binary.f32(i32 36, float %7782, float 1.000000e+00)  ; FMin(a,b)
  %7784 = fmul fast float %7783, %7452
  %7785 = fmul fast float %7783, %7453
  %7786 = fmul fast float %7783, %7454
  %7787 = fsub fast float %7460, %154
  %7788 = fadd fast float %7787, %7784
  %7789 = fsub fast float %7461, %155
  %7790 = fadd fast float %7789, %7785
  %7791 = fsub fast float %7462, %156
  %7792 = fadd fast float %7791, %7786
  %7793 = call float @dx.op.dot3.f32(i32 55, float %7788, float %7790, float %7792, float %7788, float %7790, float %7792)  ; Dot3(ax,ay,az,bx,by,bz)
  %7794 = call float @dx.op.unary.f32(i32 25, float %7793)  ; Rsqrt(value)
  %7795 = fmul fast float %7788, %7794
  %7796 = fmul fast float %7790, %7794
  %7797 = fmul fast float %7792, %7794
  %7798 = fsub fast float %7795, %2319
  %7799 = fsub fast float %7796, %2320
  %7800 = fsub fast float %7797, %2321
  %7801 = call float @dx.op.dot3.f32(i32 55, float %7798, float %7799, float %7800, float %7798, float %7799, float %7800)  ; Dot3(ax,ay,az,bx,by,bz)
  %7802 = call float @dx.op.unary.f32(i32 25, float %7801)  ; Rsqrt(value)
  %7803 = fmul fast float %7798, %7802
  %7804 = fmul fast float %7799, %7802
  %7805 = fmul fast float %7800, %7802
  %7806 = call float @dx.op.dot3.f32(i32 55, float %7795, float %7796, float %7797, float %2291, float %2292, float %2293)  ; Dot3(ax,ay,az,bx,by,bz)
  %7807 = call float @dx.op.dot3.f32(i32 55, float %2372, float %2373, float %2374, float %7803, float %7804, float %7805)  ; Dot3(ax,ay,az,bx,by,bz)
  %7808 = fmul fast float %7794, %7457
  %7809 = fmul fast float %7808, %7808
  %7810 = bitcast float %7809 to i32
  %7811 = ashr i32 %7810, 1
  %7812 = sub nsw i32 1597463007, %7811
  %7813 = bitcast i32 %7812 to float
  %7814 = fmul fast float %7813, %7806
  %7815 = fmul fast float %7814, %7814
  %7816 = fsub fast float 1.000000e+00, %7815
  %7817 = fmul fast float %7806, %7809
  %7818 = call float @dx.op.unary.f32(i32 7, float %7817)  ; Saturate(value)
  %7819 = fmul fast float %7814, 5.000000e-01
  %7820 = fadd fast float %7819, 5.000000e-01
  %7821 = fmul fast float %7820, %7809
  %7822 = call float @dx.op.unary.f32(i32 7, float %7821)  ; Saturate(value)
  %7823 = bitcast float %7822 to i32
  %7824 = ashr i32 %7823, 1
  %7825 = add nsw i32 %7824, 532487669
  %7826 = bitcast i32 %7825 to float
  %7827 = fmul fast float %7826, %7822
  %7828 = fcmp fast ogt float %7816, 0.000000e+00
  %7829 = select i1 %7828, float %7827, float %7818
  %7830 = call float @dx.op.unary.f32(i32 7, float %7806)  ; Saturate(value)
  %7831 = fmul fast float %7830, %7830
  %7832 = fmul fast float %7831, %2542
  %7833 = call float @dx.op.unary.f32(i32 7, float %7832)  ; Saturate(value)
  %7834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7835 = extractvalue %dx.types.CBufRet.f32 %7834, 0
  %7836 = bitcast float %7835 to i32
  %7837 = lshr i32 %7836, 8
  %7838 = and i32 %7837, 255
  %7839 = uitofp i32 %7838 to float
  %7840 = fptoui float %7839 to i32
  %7841 = and i32 %7840, 8
  %7842 = icmp ne i32 %7841, 0
  %7843 = select i1 %7842, float %7833, float 1.000000e+00
  %7844 = fmul fast float %7843, %7829
  %7845 = call float @dx.op.dot3.f32(i32 55, float %7452, float %7453, float %7454, float %2511, float %2512, float %2513)  ; Dot3(ax,ay,az,bx,by,bz)
  %7846 = call float @dx.op.dot3.f32(i32 55, float %7452, float %7453, float %7454, float %7505, float %7506, float %7507)  ; Dot3(ax,ay,az,bx,by,bz)
  %7847 = call float @dx.op.dot3.f32(i32 55, float %2511, float %2512, float %2513, float %7505, float %7506, float %7507)  ; Dot3(ax,ay,az,bx,by,bz)
  %7848 = fmul fast float %7845, %7845
  %7849 = fsub fast float %7491, %7848
  %7850 = fmul fast float %7847, %7845
  %7851 = fsub fast float %7850, %7846
  %7852 = fdiv fast float %7851, %7849
  %7853 = call float @dx.op.binary.f32(i32 35, float %7852, float -1.500000e+00)  ; FMax(a,b)
  %7854 = call float @dx.op.binary.f32(i32 36, float %7853, float 1.500000e+00)  ; FMin(a,b)
  %7855 = fmul fast float %7854, %7854
  %7856 = fmul fast float %7855, 0x3FC2F68380000000
  %7857 = fmul fast float %7856, %7854
  %7858 = fsub fast float %7854, %7857
  %7859 = fmul fast float %7858, %7452
  %7860 = fmul fast float %7858, %7453
  %7861 = fmul fast float %7858, %7454
  %7862 = fadd fast float %7859, %7502
  %7863 = fadd fast float %7860, %7503
  %7864 = fadd fast float %7861, %7504
  %7865 = fsub fast float %7862, %154
  %7866 = fsub fast float %7863, %155
  %7867 = fsub fast float %7864, %156
  %7868 = call float @dx.op.dot3.f32(i32 55, float %7865, float %7866, float %7867, float %2511, float %2512, float %2513)  ; Dot3(ax,ay,az,bx,by,bz)
  %7869 = fmul fast float %7868, %2511
  %7870 = fmul fast float %7868, %2512
  %7871 = fmul fast float %7868, %2513
  %7872 = fsub fast float %7869, %7865
  %7873 = fsub fast float %7870, %7866
  %7874 = fsub fast float %7871, %7867
  %7875 = call float @dx.op.dot3.f32(i32 55, float %7872, float %7873, float %7874, float %7872, float %7873, float %7874)  ; Dot3(ax,ay,az,bx,by,bz)
  %7876 = bitcast float %7875 to i32
  %7877 = ashr i32 %7876, 1
  %7878 = sub nsw i32 1597463007, %7877
  %7879 = bitcast i32 %7878 to float
  %7880 = fmul fast float %7879, %7457
  %7881 = call float @dx.op.dot3.f32(i32 55, float %7865, float %7866, float %7867, float %7865, float %7866, float %7867)  ; Dot3(ax,ay,az,bx,by,bz)
  %7882 = bitcast float %7881 to i32
  %7883 = ashr i32 %7882, 1
  %7884 = sub nsw i32 1597463007, %7883
  %7885 = bitcast i32 %7884 to float
  %7886 = fmul fast float %7880, %7880
  %7887 = fadd fast float %7886, 1.250000e-01
  %7888 = call float @dx.op.unary.f32(i32 25, float %7887)  ; Rsqrt(value)
  %7889 = fmul fast float %7880, %7888
  %7890 = fmul fast float %7872, %7889
  %7891 = fmul fast float %7873, %7889
  %7892 = fmul fast float %7874, %7889
  %7893 = fadd fast float %7865, %7890
  %7894 = fadd fast float %7866, %7891
  %7895 = fadd fast float %7867, %7892
  %7896 = call float @dx.op.dot3.f32(i32 55, float %7893, float %7894, float %7895, float %7893, float %7894, float %7895)  ; Dot3(ax,ay,az,bx,by,bz)
  %7897 = call float @dx.op.unary.f32(i32 25, float %7896)  ; Rsqrt(value)
  %7898 = fmul fast float %7893, %7897
  %7899 = fmul fast float %7894, %7897
  %7900 = fmul fast float %7895, %7897
  %7901 = fsub fast float %7898, %2319
  %7902 = fsub fast float %7899, %2320
  %7903 = fsub fast float %7900, %2321
  %7904 = call float @dx.op.dot3.f32(i32 55, float %7901, float %7902, float %7903, float %7901, float %7902, float %7903)  ; Dot3(ax,ay,az,bx,by,bz)
  %7905 = call float @dx.op.unary.f32(i32 25, float %7904)  ; Rsqrt(value)
  %7906 = fmul fast float %7901, %7905
  %7907 = fmul fast float %7902, %7905
  %7908 = fmul fast float %7903, %7905
  %7909 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2292, float %2293, float %7906, float %7907, float %7908)  ; Dot3(ax,ay,az,bx,by,bz)
  %7910 = fmul fast float %7909, %7909
  %7911 = call float @dx.op.unary.f32(i32 6, float %7806)  ; FAbs(value)
  %7912 = fsub fast float 1.000000e+00, %2533
  %7913 = fmul fast float %2376, %2376
  %7914 = fmul fast float %7913, %7912
  %7915 = fadd fast float %7914, %2533
  %7916 = bitcast float %7915 to i32
  %7917 = ashr i32 %7916, 1
  %7918 = add nsw i32 %7917, 532487669
  %7919 = bitcast i32 %7918 to float
  %7920 = fadd fast float %7919, %2376
  %7921 = fmul fast float %2533, %7910
  %7922 = fsub fast float 1.000000e+00, %7910
  %7923 = fadd fast float %7922, %7921
  %7924 = fmul fast float %7911, %7911
  %7925 = fmul fast float %7924, %7912
  %7926 = fadd fast float %7925, %2533
  %7927 = bitcast float %7926 to i32
  %7928 = ashr i32 %7927, 1
  %7929 = add nsw i32 %7928, 532487669
  %7930 = bitcast i32 %7929 to float
  %7931 = fadd fast float %7930, %7911
  %7932 = fmul fast float %7923, %7923
  %7933 = fmul fast float %7932, %7920
  %7934 = fmul fast float %7933, %7931
  %7935 = fdiv fast float 1.000000e+00, %7934
  %7936 = bitcast float %2533 to i32
  %7937 = sitofp i32 %7936 to float
  %7938 = fmul fast float %7937, 0x3FE7F73180000000
  %7939 = fadd fast float %7938, 0x41AFE27C40000000
  %7940 = fptosi float %7939 to i32
  %7941 = bitcast i32 %7940 to float
  %7942 = fmul fast float %7457, 0x3FD80E9D60000000
  %7943 = fmul fast float %7942, %7885
  %7944 = fadd fast float %7941, %7943
  %7945 = bitcast float %7944 to i32
  %7946 = sub nsw i32 2129859010, %7945
  %7947 = bitcast i32 %7946 to float
  %7948 = fmul fast float %2533, %7935
  %7949 = fmul fast float %7948, %7941
  %7950 = fmul fast float %7949, %7947
  %7951 = call float @dx.op.unary.f32(i32 6, float %7807)  ; FAbs(value)
  %7952 = fsub fast float 1.000000e+00, %7951
  %7953 = bitcast float %7952 to i32
  %7954 = sitofp i32 %7953 to float
  %7955 = fmul fast float %7954, 5.000000e+00
  %7956 = fadd fast float %7955, 0xC1EFBF8940000000
  %7957 = fptosi float %7956 to i32
  %7958 = bitcast i32 %7957 to float
  %7959 = fmul fast float %7958, %2377
  %7960 = fmul fast float %7958, %2378
  %7961 = fmul fast float %7958, %3607
  %7962 = fadd fast float %7959, %2312
  %7963 = fadd fast float %7960, %2313
  %7964 = fadd fast float %7961, %2506
  %7965 = select i1 %3610, float %7951, float 0.000000e+00
  %7966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %62, float %2387, float %7965, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7967 = extractvalue %dx.types.ResRet.f32 %7966, 0
  %7968 = extractvalue %dx.types.ResRet.f32 %7966, 1
  %7969 = extractvalue %dx.types.ResRet.f32 %7966, 2
  %7970 = fadd fast float %7967, -5.000000e-01
  %7971 = fadd fast float %7968, -5.000000e-01
  %7972 = fadd fast float %7969, -5.000000e-01
  %7973 = fmul fast float %2406, %7970
  %7974 = fmul fast float %2410, %7971
  %7975 = fmul fast float %3623, %7972
  %7976 = fadd fast float %7962, %7973
  %7977 = fadd fast float %7963, %7974
  %7978 = fadd fast float %7964, %7975
  %7979 = call float @dx.op.unary.f32(i32 7, float %7976)  ; Saturate(value)
  %7980 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  %7981 = call float @dx.op.unary.f32(i32 7, float %7978)  ; Saturate(value)
  %7982 = fmul fast float %7806, 9.843750e-01
  %7983 = fmul fast float %2462, 9.843750e-01
  %7984 = fadd fast float %7982, 7.812500e-03
  %7985 = fadd fast float %7983, 7.812500e-03
  %7986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %62, float %7984, float %7985, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7987 = extractvalue %dx.types.ResRet.f32 %7986, 2
  %7988 = extractvalue %dx.types.ResRet.f32 %7986, 3
  %7989 = select i1 %3610, float %7806, float 0.000000e+00
  %7990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %62, float %2387, float %7989, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7991 = extractvalue %dx.types.ResRet.f32 %7990, 0
  %7992 = extractvalue %dx.types.ResRet.f32 %7990, 1
  %7993 = extractvalue %dx.types.ResRet.f32 %7990, 2
  %7994 = fadd fast float %7991, -5.000000e-01
  %7995 = fadd fast float %7992, -5.000000e-01
  %7996 = fadd fast float %7993, -5.000000e-01
  %7997 = fmul fast float %2377, 4.000000e+00
  %7998 = fmul fast float %7997, %2389
  %7999 = fmul fast float %7998, %7994
  %8000 = fmul fast float %2378, 4.000000e+00
  %8001 = fmul fast float %8000, %2389
  %8002 = fmul fast float %8001, %7995
  %8003 = fmul fast float %3607, 4.000000e+00
  %8004 = fmul fast float %8003, %2389
  %8005 = fmul fast float %8004, %7996
  %8006 = fadd fast float %7999, %7987
  %8007 = fmul fast float %8006, %2312
  %8008 = fadd fast float %8007, %7988
  %8009 = fadd fast float %8002, %7987
  %8010 = fmul fast float %8009, %2313
  %8011 = fadd fast float %8010, %7988
  %8012 = fadd fast float %8005, %7987
  %8013 = fmul fast float %8012, %2506
  %8014 = fadd fast float %8013, %7988
  %8015 = call float @dx.op.unary.f32(i32 7, float %8008)  ; Saturate(value)
  %8016 = call float @dx.op.unary.f32(i32 7, float %8011)  ; Saturate(value)
  %8017 = call float @dx.op.unary.f32(i32 7, float %8014)  ; Saturate(value)
  %8018 = call float @dx.op.binary.f32(i32 35, float %8016, float %8017)  ; FMax(a,b)
  %8019 = call float @dx.op.binary.f32(i32 35, float %8015, float %8018)  ; FMax(a,b)
  %8020 = fsub fast float 1.000000e+00, %8019
  %8021 = fsub fast float -0.000000e+00, %2291
  %8022 = fsub fast float -0.000000e+00, %2292
  %8023 = fsub fast float -0.000000e+00, %2293
  %8024 = call float @dx.op.dot3.f32(i32 55, float %7511, float %7512, float %7513, float %8021, float %8022, float %8023)  ; Dot3(ax,ay,az,bx,by,bz)
  %8025 = call float @dx.op.unary.f32(i32 7, float %8024)  ; Saturate(value)
  %8026 = fmul fast float %8025, %7518
  %8027 = fmul fast float %8025, 9.843750e-01
  %8028 = fadd fast float %8027, 7.812500e-03
  %8029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %62, float %8028, float %7985, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8030 = extractvalue %dx.types.ResRet.f32 %8029, 2
  %8031 = extractvalue %dx.types.ResRet.f32 %8029, 3
  %8032 = select i1 %3610, float %8025, float 0.000000e+00
  %8033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %62, float %2387, float %8032, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8034 = extractvalue %dx.types.ResRet.f32 %8033, 0
  %8035 = extractvalue %dx.types.ResRet.f32 %8033, 1
  %8036 = extractvalue %dx.types.ResRet.f32 %8033, 2
  %8037 = fadd fast float %8034, -5.000000e-01
  %8038 = fadd fast float %8035, -5.000000e-01
  %8039 = fadd fast float %8036, -5.000000e-01
  %8040 = fmul fast float %7998, %8037
  %8041 = fmul fast float %8001, %8038
  %8042 = fmul fast float %8004, %8039
  %8043 = fadd fast float %8040, %8030
  %8044 = fmul fast float %8043, %2312
  %8045 = fadd fast float %8044, %8031
  %8046 = fadd fast float %8041, %8030
  %8047 = fmul fast float %8046, %2313
  %8048 = fadd fast float %8047, %8031
  %8049 = fadd fast float %8042, %8030
  %8050 = fmul fast float %8049, %2506
  %8051 = fadd fast float %8050, %8031
  %8052 = call float @dx.op.unary.f32(i32 7, float %8045)  ; Saturate(value)
  %8053 = call float @dx.op.unary.f32(i32 7, float %8048)  ; Saturate(value)
  %8054 = call float @dx.op.unary.f32(i32 7, float %8051)  ; Saturate(value)
  %8055 = call float @dx.op.binary.f32(i32 35, float %8053, float %8054)  ; FMax(a,b)
  %8056 = call float @dx.op.binary.f32(i32 35, float %8052, float %8055)  ; FMax(a,b)
  %8057 = fsub fast float 1.000000e+00, %8056
  %8058 = fmul fast float %8026, %8057
  %8059 = fmul fast float %8058, %2465
  %8060 = fmul fast float %8020, %7844
  %8061 = fmul fast float %7979, %7844
  %8062 = fmul fast float %8061, %7950
  %8063 = fmul fast float %7980, %7844
  %8064 = fmul fast float %8063, %7950
  %8065 = fmul fast float %7981, %7844
  %8066 = fmul fast float %8065, %7950
  %8067 = fadd fast float %8059, %8060
  %8068 = fmul fast float %8067, %7764
  %8069 = fmul fast float %8067, %7765
  %8070 = fmul fast float %8067, %7766
  %8071 = fadd fast float %8068, %7426
  %8072 = fadd fast float %8069, %7427
  %8073 = fadd fast float %8070, %7428
  %8074 = fmul fast float %8062, %7764
  %8075 = fmul fast float %8064, %7765
  %8076 = fmul fast float %8066, %7766
  %8077 = fadd fast float %8074, %7423
  %8078 = fadd fast float %8075, %7424
  %8079 = fadd fast float %8076, %7425
  %8080 = fadd fast float %8068, %7420
  %8081 = fadd fast float %8069, %7421
  %8082 = fadd fast float %8070, %7422
  %8083 = fadd fast float %8074, %7417
  %8084 = fadd fast float %8075, %7418
  %8085 = fadd fast float %8076, %7419
  %8086 = fadd fast float %8068, %7414
  %8087 = fadd fast float %8069, %7415
  %8088 = fadd fast float %8070, %7416
  %8089 = fadd fast float %8074, %7411
  %8090 = fadd fast float %8075, %7412
  %8091 = fadd fast float %8076, %7413
  br label %8092

; <label>:8092                                    ; preds = %7763, %7758
  %8093 = phi float [ %7411, %7758 ], [ %8089, %7763 ]
  %8094 = phi float [ %7412, %7758 ], [ %8090, %7763 ]
  %8095 = phi float [ %7413, %7758 ], [ %8091, %7763 ]
  %8096 = phi float [ %7414, %7758 ], [ %8086, %7763 ]
  %8097 = phi float [ %7415, %7758 ], [ %8087, %7763 ]
  %8098 = phi float [ %7416, %7758 ], [ %8088, %7763 ]
  %8099 = phi float [ %7417, %7758 ], [ %8083, %7763 ]
  %8100 = phi float [ %7418, %7758 ], [ %8084, %7763 ]
  %8101 = phi float [ %7419, %7758 ], [ %8085, %7763 ]
  %8102 = phi float [ %7420, %7758 ], [ %8080, %7763 ]
  %8103 = phi float [ %7421, %7758 ], [ %8081, %7763 ]
  %8104 = phi float [ %7422, %7758 ], [ %8082, %7763 ]
  %8105 = phi float [ %7423, %7758 ], [ %8077, %7763 ]
  %8106 = phi float [ %7424, %7758 ], [ %8078, %7763 ]
  %8107 = phi float [ %7425, %7758 ], [ %8079, %7763 ]
  %8108 = phi float [ %7426, %7758 ], [ %8071, %7763 ]
  %8109 = phi float [ %7427, %7758 ], [ %8072, %7763 ]
  %8110 = phi float [ %7428, %7758 ], [ %8073, %7763 ]
  %8111 = bitcast i32 %7401 to float
  %8112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8113 = extractvalue %dx.types.CBufRet.f32 %8112, 1
  %8114 = bitcast float %8113 to i32
  %8115 = and i32 %8114, 65535
  %8116 = icmp eq i32 %8115, 65535
  br i1 %8116, label %8117, label %8119

; <label>:8117                                    ; preds = %8092
  %8118 = call float @dx.op.binary.f32(i32 35, float %8111, float %7759)  ; FMax(a,b)
  br label %8122

; <label>:8119                                    ; preds = %8092
  %8120 = icmp eq i32 %8115, %7430
  %8121 = select i1 %8120, float %7759, float %8111
  br label %8122

; <label>:8122                                    ; preds = %8119, %8117
  %8123 = phi float [ %8118, %8117 ], [ %8121, %8119 ]
  %8124 = extractvalue %dx.types.CBufRet.f32 %8112, 0
  %8125 = bitcast float %8124 to i32
  %8126 = lshr i32 %8125, 8
  %8127 = and i32 %8126, 255
  %8128 = uitofp i32 %8127 to float
  %8129 = fptoui float %8128 to i32
  %8130 = icmp eq i32 %8129, 15
  %8131 = bitcast float %8123 to i32
  %8132 = select i1 %8130, i32 %8131, i32 %7401
  %8133 = add i32 %7583, %7406
  %8134 = add i32 %7585, %7407
  %8135 = add i32 %7587, %7408
  %8136 = add i32 %7589, %7409
  br label %7594

; <label>:8137                                    ; preds = %7594
  br label %8138

; <label>:8138                                    ; preds = %8137, %7347
  %8139 = phi i32 [ %7348, %7347 ], [ %7595, %8137 ]
  %8140 = phi i32 [ %7349, %7347 ], [ %7584, %8137 ]
  %8141 = phi i32 [ %7350, %7347 ], [ %7586, %8137 ]
  %8142 = phi i32 [ %7351, %7347 ], [ %7588, %8137 ]
  %8143 = phi i32 [ %7352, %7347 ], [ %7590, %8137 ]
  %8144 = phi i32 [ %7353, %7347 ], [ %7596, %8137 ]
  %8145 = phi i32 [ %7354, %7347 ], [ %7597, %8137 ]
  %8146 = phi i32 [ %7355, %7347 ], [ %7598, %8137 ]
  %8147 = phi i32 [ %7356, %7347 ], [ %7599, %8137 ]
  %8148 = phi float [ %7358, %7347 ], [ %7600, %8137 ]
  %8149 = phi float [ %7359, %7347 ], [ %7601, %8137 ]
  %8150 = phi float [ %7360, %7347 ], [ %7602, %8137 ]
  %8151 = phi float [ %7361, %7347 ], [ %7603, %8137 ]
  %8152 = phi float [ %7362, %7347 ], [ %7604, %8137 ]
  %8153 = phi float [ %7363, %7347 ], [ %7605, %8137 ]
  %8154 = phi float [ %7364, %7347 ], [ %7606, %8137 ]
  %8155 = phi float [ %7365, %7347 ], [ %7607, %8137 ]
  %8156 = phi float [ %7366, %7347 ], [ %7608, %8137 ]
  %8157 = phi float [ %7367, %7347 ], [ %7609, %8137 ]
  %8158 = phi float [ %7368, %7347 ], [ %7610, %8137 ]
  %8159 = phi float [ %7369, %7347 ], [ %7611, %8137 ]
  %8160 = phi float [ %7370, %7347 ], [ %7612, %8137 ]
  %8161 = phi float [ %7371, %7347 ], [ %7613, %8137 ]
  %8162 = phi float [ %7372, %7347 ], [ %7614, %8137 ]
  %8163 = phi float [ %7373, %7347 ], [ %7615, %8137 ]
  %8164 = phi float [ %7374, %7347 ], [ %7616, %8137 ]
  %8165 = phi float [ %7375, %7347 ], [ %7617, %8137 ]
  %8166 = add i32 %7357, 1
  %8167 = icmp ugt i32 %8166, %7344
  br i1 %8167, label %8168, label %7347

; <label>:8168                                    ; preds = %8138
  br label %8169

; <label>:8169                                    ; preds = %8168, %7297
  %8170 = phi i32 [ %7276, %7297 ], [ %8139, %8168 ]
  %8171 = phi i32 [ 0, %7297 ], [ %8140, %8168 ]
  %8172 = phi i32 [ 0, %7297 ], [ %8141, %8168 ]
  %8173 = phi i32 [ 0, %7297 ], [ %8142, %8168 ]
  %8174 = phi i32 [ 0, %7297 ], [ %8143, %8168 ]
  %8175 = phi i32 [ 0, %7297 ], [ %8144, %8168 ]
  %8176 = phi i32 [ 0, %7297 ], [ %8145, %8168 ]
  %8177 = phi i32 [ 0, %7297 ], [ %8146, %8168 ]
  %8178 = phi i32 [ 0, %7297 ], [ %8147, %8168 ]
  %8179 = phi float [ %7278, %7297 ], [ %8148, %8168 ]
  %8180 = phi float [ %7279, %7297 ], [ %8149, %8168 ]
  %8181 = phi float [ %7280, %7297 ], [ %8150, %8168 ]
  %8182 = phi float [ %7281, %7297 ], [ %8151, %8168 ]
  %8183 = phi float [ %7282, %7297 ], [ %8152, %8168 ]
  %8184 = phi float [ %7283, %7297 ], [ %8153, %8168 ]
  %8185 = phi float [ %7284, %7297 ], [ %8154, %8168 ]
  %8186 = phi float [ %7285, %7297 ], [ %8155, %8168 ]
  %8187 = phi float [ %7286, %7297 ], [ %8156, %8168 ]
  %8188 = phi float [ %7287, %7297 ], [ %8157, %8168 ]
  %8189 = phi float [ %7288, %7297 ], [ %8158, %8168 ]
  %8190 = phi float [ %7289, %7297 ], [ %8159, %8168 ]
  %8191 = phi float [ %7291, %7297 ], [ %8160, %8168 ]
  %8192 = phi float [ %7292, %7297 ], [ %8161, %8168 ]
  %8193 = phi float [ %7293, %7297 ], [ %8162, %8168 ]
  %8194 = phi float [ %7287, %7297 ], [ %8163, %8168 ]
  %8195 = phi float [ %7288, %7297 ], [ %8164, %8168 ]
  %8196 = phi float [ %7289, %7297 ], [ %8165, %8168 ]
  %8197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %8198 = extractvalue %dx.types.CBufRet.f32 %8197, 1
  %8199 = bitcast float %8198 to i32
  %8200 = lshr i32 %8199, 24
  %8201 = uitofp i32 %8200 to float
  %8202 = fptoui float %8201 to i32
  %8203 = icmp eq i32 %8202, 1
  %8204 = select i1 %8203, i32 %8175, i32 %8171
  %8205 = uitofp i32 %8204 to float
  %8206 = fptoui float %8205 to i32
  %8207 = shl i32 %8206, 8
  %8208 = select i1 %8203, i32 %8176, i32 %8172
  %8209 = uitofp i32 %8208 to float
  %8210 = fptoui float %8209 to i32
  %8211 = shl i32 %8210, 16
  %8212 = and i32 %8207, 65280
  %8213 = or i32 %8212, %7277
  %8214 = select i1 %8203, i32 %8177, i32 %8173
  %8215 = uitofp i32 %8214 to float
  %8216 = fptoui float %8215 to i32
  %8217 = shl i32 %8216, 24
  %8218 = and i32 %8211, 16711680
  %8219 = or i32 %8213, %8218
  %8220 = or i32 %8219, %8217
  %8221 = select i1 %8203, i32 %8178, i32 %8174
  %8222 = uitofp i32 %8221 to float
  %8223 = fptoui float %8222 to i32
  %8224 = and i32 %8223, 255
  %8225 = and i32 %5419, -256
  %8226 = or i32 %8224, %8225
  %8227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8228 = extractvalue %dx.types.CBufRet.f32 %8227, 0
  %8229 = bitcast float %8228 to i32
  %8230 = lshr i32 %8229, 8
  %8231 = and i32 %8230, 255
  %8232 = uitofp i32 %8231 to float
  %8233 = fptoui float %8232 to i32
  %8234 = icmp eq i32 %8233, 12
  %8235 = select i1 %8234, i32 0, i32 %8170
  br label %8236

; <label>:8236                                    ; preds = %8169, %7275
  %8237 = phi i32 [ %5419, %7275 ], [ %8226, %8169 ]
  %8238 = phi i32 [ 0, %7275 ], [ %8220, %8169 ]
  %8239 = phi i32 [ %7276, %7275 ], [ %8235, %8169 ]
  %8240 = phi float [ %7278, %7275 ], [ %8179, %8169 ]
  %8241 = phi float [ %7279, %7275 ], [ %8180, %8169 ]
  %8242 = phi float [ %7280, %7275 ], [ %8181, %8169 ]
  %8243 = phi float [ %7281, %7275 ], [ %8182, %8169 ]
  %8244 = phi float [ %7282, %7275 ], [ %8183, %8169 ]
  %8245 = phi float [ %7283, %7275 ], [ %8184, %8169 ]
  %8246 = phi float [ %7284, %7275 ], [ %8185, %8169 ]
  %8247 = phi float [ %7285, %7275 ], [ %8186, %8169 ]
  %8248 = phi float [ %7286, %7275 ], [ %8187, %8169 ]
  %8249 = phi float [ %7287, %7275 ], [ %8188, %8169 ]
  %8250 = phi float [ %7288, %7275 ], [ %8189, %8169 ]
  %8251 = phi float [ %7289, %7275 ], [ %8190, %8169 ]
  %8252 = phi float [ %7291, %7275 ], [ %8191, %8169 ]
  %8253 = phi float [ %7292, %7275 ], [ %8192, %8169 ]
  %8254 = phi float [ %7293, %7275 ], [ %8193, %8169 ]
  %8255 = phi float [ %7287, %7275 ], [ %8194, %8169 ]
  %8256 = phi float [ %7288, %7275 ], [ %8195, %8169 ]
  %8257 = phi float [ %7289, %7275 ], [ %8196, %8169 ]
  %8258 = and i32 %2371, 255
  %8259 = uitofp i32 %8258 to float
  %8260 = fmul fast float %8259, 0x3F70101020000000
  %8261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8262 = extractvalue %dx.types.CBufRet.f32 %8261, 2
  %8263 = extractvalue %dx.types.CBufRet.f32 %8261, 3
  %8264 = fmul fast float %8262, %99
  %8265 = fmul fast float %8263, %100
  %8266 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %45, i32 0, i32 %2422, i32 %2428, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8267 = extractvalue %dx.types.ResRet.f32 %8266, 0
  %8268 = fcmp fast ogt float %8267, -1.000000e+00
  %8269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.f32 %8269, 1
  %8271 = select i1 %8268, float %8270, float 1.000000e+00
  %8272 = fadd fast float %8267, 1.000000e+00
  %8273 = fmul fast float %8271, %8272
  %8274 = call float @dx.op.unary.f32(i32 6, float %8273)  ; FAbs(value)
  br i1 %116, label %8275, label %8714

; <label>:8275                                    ; preds = %8236
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.CBufRet.f32 %8276, 1
  %8279 = extractvalue %dx.types.CBufRet.f32 %8276, 2
  %8280 = fcmp fast oge float %8278, %88
  %8281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %8282 = extractvalue %dx.types.CBufRet.i32 %8281, 0
  %8283 = and i32 %8282, 65538
  %8284 = icmp eq i32 %8283, 65538
  %8285 = and i1 %8284, %8280
  br i1 %8285, label %8286, label %8370

; <label>:8286                                    ; preds = %8275
  %8287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8287, 0
  %8289 = extractvalue %dx.types.CBufRet.f32 %8287, 1
  %8290 = fmul fast float %8288, %8264
  %8291 = fmul fast float %8289, %8265
  %8292 = extractvalue %dx.types.CBufRet.f32 %8287, 2
  %8293 = extractvalue %dx.types.CBufRet.f32 %8287, 3
  %8294 = fmul fast float %8290, %8292
  %8295 = fmul fast float %8291, %8293
  %8296 = call float @dx.op.unary.f32(i32 7, float %8294)  ; Saturate(value)
  %8297 = call float @dx.op.unary.f32(i32 7, float %8295)  ; Saturate(value)
  %8298 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %62, float %8296, float %8297, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8299 = extractvalue %dx.types.ResRet.f32 %8298, 0
  %8300 = extractvalue %dx.types.ResRet.f32 %8298, 1
  %8301 = extractvalue %dx.types.ResRet.f32 %8298, 2
  %8302 = extractvalue %dx.types.ResRet.f32 %8298, 3
  %8303 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %62, float %8296, float %8297, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8304 = extractvalue %dx.types.ResRet.f32 %8303, 0
  %8305 = extractvalue %dx.types.ResRet.f32 %8303, 1
  %8306 = extractvalue %dx.types.ResRet.f32 %8303, 2
  %8307 = extractvalue %dx.types.ResRet.f32 %8303, 3
  %8308 = call float @dx.op.binary.f32(i32 35, float %8300, float %8301)  ; FMax(a,b)
  %8309 = call float @dx.op.binary.f32(i32 35, float %8299, float %8308)  ; FMax(a,b)
  %8310 = call float @dx.op.binary.f32(i32 35, float %8309, float %8302)  ; FMax(a,b)
  %8311 = call float @dx.op.binary.f32(i32 36, float %8305, float %8306)  ; FMin(a,b)
  %8312 = call float @dx.op.binary.f32(i32 36, float %8304, float %8311)  ; FMin(a,b)
  %8313 = call float @dx.op.binary.f32(i32 36, float %8312, float %8307)  ; FMin(a,b)
  %8314 = fmul fast float %8310, 2.550000e+02
  %8315 = fadd fast float %8314, 0x3F70101020000000
  %8316 = fptoui float %8315 to i32
  %8317 = fmul fast float %8313, 2.550000e+02
  %8318 = fadd fast float %8317, 0x3F70101020000000
  %8319 = fptoui float %8318 to i32
  %8320 = icmp ult i32 %8316, %8319
  br i1 %8320, label %8321, label %8370

; <label>:8321                                    ; preds = %8286
  %8322 = fadd fast float %8274, -4.000000e+00
  %8323 = call float @dx.op.binary.f32(i32 35, float %8322, float 0.000000e+00)  ; FMax(a,b)
  %8324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8325 = extractvalue %dx.types.CBufRet.f32 %8324, 0
  %8326 = fadd fast float %8325, %8323
  %8327 = extractvalue %dx.types.CBufRet.f32 %8324, 2
  %8328 = fmul fast float %8326, %8327
  %8329 = call float @dx.op.unary.f32(i32 23, float %8328)  ; Log(value)
  %8330 = extractvalue %dx.types.CBufRet.f32 %8324, 3
  %8331 = fmul fast float %8330, %8329
  %8332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8333 = extractvalue %dx.types.CBufRet.f32 %8332, 2
  %8334 = fmul fast float %8331, %8333
  %8335 = call float @dx.op.unary.f32(i32 7, float %8334)  ; Saturate(value)
  %8336 = uitofp i32 %8316 to float
  %8337 = uitofp i32 %8319 to float
  %8338 = fadd fast float %8336, 5.000000e-01
  %8339 = fadd fast float %8337, 5.000000e-01
  %8340 = fmul fast float %8333, %8338
  %8341 = fmul fast float %8333, %8339
  %8342 = fadd fast float %8340, 0x3F0FFB4800000000
  %8343 = fadd fast float %8341, 0xBF0FFB4800000000
  %8344 = call float @dx.op.binary.f32(i32 35, float %8335, float %8342)  ; FMax(a,b)
  %8345 = call float @dx.op.binary.f32(i32 36, float %8344, float %8343)  ; FMin(a,b)
  %8346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8347 = extractvalue %dx.types.CBufRet.f32 %8346, 1
  %8348 = extractvalue %dx.types.CBufRet.f32 %8346, 2
  %8349 = extractvalue %dx.types.CBufRet.f32 %8346, 0
  %8350 = fmul fast float %8347, %8345
  %8351 = fadd fast float %8349, %8350
  %8352 = fadd fast float %8349, %8348
  %8353 = fsub fast float %8347, %8348
  %8354 = fadd fast float %8353, %8349
  %8355 = call float @dx.op.binary.f32(i32 35, float %8351, float %8352)  ; FMax(a,b)
  %8356 = call float @dx.op.binary.f32(i32 36, float %8355, float %8354)  ; FMin(a,b)
  %8357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %60, float %8296, float %8297, float %8356, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8358 = extractvalue %dx.types.ResRet.f32 %8357, 0
  %8359 = extractvalue %dx.types.ResRet.f32 %8357, 1
  %8360 = extractvalue %dx.types.ResRet.f32 %8357, 2
  %8361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %60, float %8296, float %8297, float %8356, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8362 = extractvalue %dx.types.ResRet.f32 %8361, 0
  %8363 = extractvalue %dx.types.ResRet.f32 %8361, 1
  %8364 = extractvalue %dx.types.ResRet.f32 %8361, 2
  %8365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8366 = extractvalue %dx.types.CBufRet.f32 %8365, 1
  %8367 = fmul fast float %8366, %8362
  %8368 = fmul fast float %8366, %8363
  %8369 = fmul fast float %8366, %8364
  br label %8370

; <label>:8370                                    ; preds = %8321, %8286, %8275
  %8371 = phi float [ 0.000000e+00, %8275 ], [ %8367, %8321 ], [ 0.000000e+00, %8286 ]
  %8372 = phi float [ 0.000000e+00, %8275 ], [ %8368, %8321 ], [ 0.000000e+00, %8286 ]
  %8373 = phi float [ 0.000000e+00, %8275 ], [ %8369, %8321 ], [ 0.000000e+00, %8286 ]
  %8374 = phi float [ 1.000000e+00, %8275 ], [ %8358, %8321 ], [ 1.000000e+00, %8286 ]
  %8375 = phi float [ 1.000000e+00, %8275 ], [ %8359, %8321 ], [ 1.000000e+00, %8286 ]
  %8376 = phi float [ 1.000000e+00, %8275 ], [ %8360, %8321 ], [ 1.000000e+00, %8286 ]
  %8377 = fcmp fast olt float %8260, 1.000000e+00
  %8378 = fcmp fast olt float %8277, %8274
  %8379 = or i1 %8377, %8378
  br i1 %8379, label %8380, label %8471

; <label>:8380                                    ; preds = %8370
  %8381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %8382 = extractvalue %dx.types.CBufRet.i32 %8381, 0
  %8383 = call i32 @dx.op.binary.i32(i32 40, i32 %198, i32 %8382)  ; UMin(a,b)
  %8384 = mul i32 %8383, 36
  %8385 = add i32 %8384, 4
  %8386 = add i32 %8385, %432
  %8387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %8386, i32 undef)  ; BufferLoad(srv,index,wot)
  %8388 = extractvalue %dx.types.ResRet.i32 %8387, 0
  %8389 = and i32 %8388, 32767
  %8390 = mul nuw nsw i32 %8389, 928
  %8391 = add nuw nsw i32 %8390, 44
  %8392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %8391, i32 undef)  ; BufferLoad(srv,index,wot)
  %8393 = extractvalue %dx.types.ResRet.f32 %8392, 0
  %8394 = add nuw nsw i32 %8390, 48
  %8395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %8394, i32 undef)  ; BufferLoad(srv,index,wot)
  %8396 = extractvalue %dx.types.ResRet.f32 %8395, 0
  %8397 = extractvalue %dx.types.ResRet.f32 %8395, 1
  %8398 = extractvalue %dx.types.ResRet.f32 %8395, 2
  %8399 = add nuw nsw i32 %8390, 60
  %8400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %8399, i32 undef)  ; BufferLoad(srv,index,wot)
  %8401 = extractvalue %dx.types.ResRet.f32 %8400, 0
  %8402 = extractvalue %dx.types.ResRet.f32 %8400, 1
  %8403 = extractvalue %dx.types.ResRet.f32 %8400, 2
  %8404 = fmul fast float %8396, 0x3F847AE140000000
  %8405 = fmul fast float %8397, 0x3F847AE140000000
  %8406 = fmul fast float %8398, 0x3F847AE140000000
  %8407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %8408 = extractvalue %dx.types.CBufRet.f32 %8407, 0
  %8409 = extractvalue %dx.types.CBufRet.f32 %8407, 1
  %8410 = extractvalue %dx.types.CBufRet.f32 %8407, 2
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 0
  %8413 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8414 = call float @dx.op.dot3.f32(i32 55, float %8408, float %8409, float %8410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8415 = select i1 %2504, float %8412, float %8408
  %8416 = select i1 %2504, float %8414, float %8409
  %8417 = select i1 %2504, float %8413, float %8410
  %8418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8419 = extractvalue %dx.types.CBufRet.f32 %8418, 0
  %8420 = extractvalue %dx.types.CBufRet.f32 %8418, 1
  %8421 = extractvalue %dx.types.CBufRet.f32 %8418, 2
  %8422 = fadd fast float %8401, %8396
  %8423 = fmul fast float %8422, 0x3F847AE140000000
  %8424 = fadd fast float %8402, %8397
  %8425 = fmul fast float %8424, 0x3F847AE140000000
  %8426 = fadd fast float %8403, %8398
  %8427 = fmul fast float %8426, 0x3F847AE140000000
  %8428 = call float @dx.op.dot3.f32(i32 55, float %8419, float %8420, float %8421, float %2319, float %2320, float %2321)  ; Dot3(ax,ay,az,bx,by,bz)
  %8429 = fcmp fast ogt float %8393, 0.000000e+00
  %8430 = select i1 %8429, float 1.000000e+00, float -1.000000e+00
  %8431 = fmul fast float %8430, 5.000000e-01
  %8432 = fmul fast float %8431, %8428
  %8433 = fmul fast float %8430, %8393
  %8434 = fadd fast float %8432, 4.921875e-01
  %8435 = fadd fast float %8433, -3.125000e-02
  %8436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %62, float %8434, float 0x3FB25F3060000000, float %8435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8437 = extractvalue %dx.types.ResRet.f32 %8436, 0
  %8438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %8439 = extractvalue %dx.types.CBufRet.f32 %8438, 0
  %8440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %8441 = extractvalue %dx.types.CBufRet.f32 %8440, 0
  %8442 = fmul fast float %8441, %8439
  %8443 = extractvalue %dx.types.CBufRet.f32 %8440, 1
  %8444 = fadd fast float %8442, %8443
  %8445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %8446 = extractvalue %dx.types.CBufRet.f32 %8445, 0
  %8447 = fmul fast float %8446, %7290
  %8448 = extractvalue %dx.types.CBufRet.f32 %8445, 1
  %8449 = fadd fast float %8447, %8448
  %8450 = call float @dx.op.unary.f32(i32 7, float %8449)  ; Saturate(value)
  %8451 = extractvalue %dx.types.CBufRet.f32 %8438, 3
  %8452 = extractvalue %dx.types.CBufRet.f32 %8440, 2
  %8453 = fmul fast float %8452, %8451
  %8454 = extractvalue %dx.types.CBufRet.f32 %8440, 3
  %8455 = fadd fast float %8453, %8454
  %8456 = fmul fast float %8437, 0x400921FB60000000
  %8457 = fmul fast float %8456, %8444
  %8458 = fmul fast float %8457, %8450
  %8459 = fmul fast float %8415, %8404
  %8460 = fmul fast float %8459, %8458
  %8461 = fmul fast float %8416, %8405
  %8462 = fmul fast float %8461, %8458
  %8463 = fmul fast float %8417, %8406
  %8464 = fmul fast float %8463, %8458
  %8465 = fmul fast float %8404, %3571
  %8466 = fmul fast float %8465, %8455
  %8467 = fmul fast float %8405, %3572
  %8468 = fmul fast float %8467, %8455
  %8469 = fmul fast float %8406, %3573
  %8470 = fmul fast float %8469, %8455
  br label %8471

; <label>:8471                                    ; preds = %8380, %8370
  %8472 = phi float [ %8423, %8380 ], [ 0.000000e+00, %8370 ]
  %8473 = phi float [ %8425, %8380 ], [ 0.000000e+00, %8370 ]
  %8474 = phi float [ %8427, %8380 ], [ 0.000000e+00, %8370 ]
  %8475 = phi float [ %8460, %8380 ], [ 0.000000e+00, %8370 ]
  %8476 = phi float [ %8462, %8380 ], [ 0.000000e+00, %8370 ]
  %8477 = phi float [ %8464, %8380 ], [ 0.000000e+00, %8370 ]
  %8478 = phi float [ %8466, %8380 ], [ 0.000000e+00, %8370 ]
  %8479 = phi float [ %8468, %8380 ], [ 0.000000e+00, %8370 ]
  %8480 = phi float [ %8470, %8380 ], [ 0.000000e+00, %8370 ]
  %8481 = call float @dx.op.binary.f32(i32 35, float %8472, float 0x3F10000000000000)  ; FMax(a,b)
  %8482 = call float @dx.op.binary.f32(i32 35, float %8473, float 0x3F10000000000000)  ; FMax(a,b)
  %8483 = call float @dx.op.binary.f32(i32 35, float %8474, float 0x3F10000000000000)  ; FMax(a,b)
  %8484 = fdiv fast float 1.000000e+00, %8481
  %8485 = fdiv fast float 1.000000e+00, %8482
  %8486 = fdiv fast float 1.000000e+00, %8483
  %8487 = fmul fast float %8472, 0xBFF7154760000000
  %8488 = fmul fast float %8473, 0xBFF7154760000000
  %8489 = fmul fast float %8474, 0xBFF7154760000000
  %8490 = extractvalue %dx.types.CBufRet.f32 %8276, 3
  %8491 = call float @dx.op.dot3.f32(i32 55, float %8484, float %8485, float %8486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8492 = fmul fast float %8490, %8491
  %8493 = call float @dx.op.binary.f32(i32 35, float %8278, float %88)  ; FMax(a,b)
  %8494 = fsub fast float %8274, %8493
  %8495 = call float @dx.op.binary.f32(i32 35, float %8494, float 0.000000e+00)  ; FMax(a,b)
  %8496 = fsub fast float %8274, %88
  %8497 = call float @dx.op.binary.f32(i32 35, float %8496, float 0.000000e+00)  ; FMax(a,b)
  %8498 = call float @dx.op.binary.f32(i32 36, float %8497, float %8492)  ; FMin(a,b)
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 0
  %8501 = fmul fast float %8500, %8498
  %8502 = fmul fast float %8501, %8487
  %8503 = fmul fast float %8501, %8488
  %8504 = fmul fast float %8501, %8489
  %8505 = call float @dx.op.unary.f32(i32 21, float %8502)  ; Exp(value)
  %8506 = call float @dx.op.unary.f32(i32 21, float %8503)  ; Exp(value)
  %8507 = call float @dx.op.unary.f32(i32 21, float %8504)  ; Exp(value)
  %8508 = fmul fast float %8505, %8475
  %8509 = fmul fast float %8506, %8476
  %8510 = fmul fast float %8507, %8477
  %8511 = extractvalue %dx.types.CBufRet.f32 %8499, 1
  %8512 = fmul fast float %8511, %8498
  %8513 = fmul fast float %8512, %8487
  %8514 = fmul fast float %8512, %8488
  %8515 = fmul fast float %8512, %8489
  %8516 = call float @dx.op.unary.f32(i32 21, float %8513)  ; Exp(value)
  %8517 = call float @dx.op.unary.f32(i32 21, float %8514)  ; Exp(value)
  %8518 = call float @dx.op.unary.f32(i32 21, float %8515)  ; Exp(value)
  %8519 = fmul fast float %8516, %8478
  %8520 = fmul fast float %8517, %8479
  %8521 = fmul fast float %8518, %8480
  %8522 = fadd fast float %8519, %8508
  %8523 = fadd fast float %8520, %8509
  %8524 = fadd fast float %8521, %8510
  %8525 = fmul fast float %8495, %8487
  %8526 = fmul fast float %8495, %8488
  %8527 = fmul fast float %8495, %8489
  %8528 = call float @dx.op.unary.f32(i32 21, float %8525)  ; Exp(value)
  %8529 = call float @dx.op.unary.f32(i32 21, float %8526)  ; Exp(value)
  %8530 = call float @dx.op.unary.f32(i32 21, float %8527)  ; Exp(value)
  %8531 = call float @dx.op.unary.f32(i32 7, float %8528)  ; Saturate(value)
  %8532 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  %8533 = call float @dx.op.unary.f32(i32 7, float %8530)  ; Saturate(value)
  %8534 = fmul fast float %8531, %8522
  %8535 = fmul fast float %8532, %8523
  %8536 = fmul fast float %8533, %8524
  %8537 = fsub fast float %8522, %8534
  %8538 = fsub fast float %8523, %8535
  %8539 = fsub fast float %8524, %8536
  %8540 = fmul fast float %8484, %8374
  %8541 = fmul fast float %8540, %8537
  %8542 = fmul fast float %8485, %8375
  %8543 = fmul fast float %8542, %8538
  %8544 = fmul fast float %8486, %8376
  %8545 = fmul fast float %8544, %8539
  %8546 = fadd fast float %8541, %8371
  %8547 = fadd fast float %8543, %8372
  %8548 = fadd fast float %8545, %8373
  %8549 = fmul fast float %8531, %8374
  %8550 = fmul fast float %8532, %8375
  %8551 = fmul fast float %8533, %8376
  %8552 = fmul fast float %8497, %8487
  %8553 = fmul fast float %8497, %8488
  %8554 = fmul fast float %8497, %8489
  %8555 = call float @dx.op.unary.f32(i32 21, float %8552)  ; Exp(value)
  %8556 = call float @dx.op.unary.f32(i32 21, float %8553)  ; Exp(value)
  %8557 = call float @dx.op.unary.f32(i32 21, float %8554)  ; Exp(value)
  %8558 = call float @dx.op.unary.f32(i32 7, float %8555)  ; Saturate(value)
  %8559 = call float @dx.op.unary.f32(i32 7, float %8556)  ; Saturate(value)
  %8560 = call float @dx.op.unary.f32(i32 7, float %8557)  ; Saturate(value)
  %8561 = fmul fast float %8558, %8522
  %8562 = fmul fast float %8559, %8523
  %8563 = fmul fast float %8560, %8524
  %8564 = fsub fast float %8522, %8561
  %8565 = fsub fast float %8523, %8562
  %8566 = fsub fast float %8524, %8563
  %8567 = fmul fast float %8564, %8484
  %8568 = fmul fast float %8565, %8485
  %8569 = fmul fast float %8566, %8486
  %8570 = fsub fast float %88, %8277
  %8571 = fmul fast float %8279, %8570
  %8572 = call float @dx.op.unary.f32(i32 7, float %8571)  ; Saturate(value)
  %8573 = fmul fast float %8572, %8572
  %8574 = fmul fast float %8572, 2.000000e+00
  %8575 = fsub fast float 3.000000e+00, %8574
  %8576 = fmul fast float %8573, %8575
  %8577 = fsub fast float %8567, %8546
  %8578 = fsub fast float %8568, %8547
  %8579 = fsub fast float %8569, %8548
  %8580 = fmul fast float %8576, %8577
  %8581 = fmul fast float %8576, %8578
  %8582 = fmul fast float %8576, %8579
  %8583 = fadd fast float %8580, %8546
  %8584 = fadd fast float %8581, %8547
  %8585 = fadd fast float %8582, %8548
  %8586 = fsub fast float %8558, %8549
  %8587 = fsub fast float %8559, %8550
  %8588 = fsub fast float %8560, %8551
  %8589 = fmul fast float %8576, %8586
  %8590 = fmul fast float %8576, %8587
  %8591 = fmul fast float %8576, %8588
  %8592 = fadd fast float %8589, %8549
  %8593 = fadd fast float %8590, %8550
  %8594 = fadd fast float %8591, %8551
  br i1 %8377, label %8595, label %8663

; <label>:8595                                    ; preds = %8471
  %8596 = extractvalue %dx.types.CBufRet.f32 %8499, 3
  %8597 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8596)  ; Dot3(ax,ay,az,bx,by,bz)
  %8598 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2372, float %2373, float %2374)  ; Dot3(ax,ay,az,bx,by,bz)
  %8599 = fdiv fast float 1.000000e+00, %8598
  %8600 = fmul fast float %8599, %8597
  %8601 = fcmp ogt float %2321, -0.000000e+00
  %8602 = select i1 %8601, float %8596, float %8600
  %8603 = call float @dx.op.binary.f32(i32 36, float %8602, float %8492)  ; FMin(a,b)
  %8604 = fmul fast float %8500, %8603
  %8605 = fmul fast float %8604, %8487
  %8606 = fmul fast float %8604, %8488
  %8607 = fmul fast float %8604, %8489
  %8608 = call float @dx.op.unary.f32(i32 21, float %8605)  ; Exp(value)
  %8609 = call float @dx.op.unary.f32(i32 21, float %8606)  ; Exp(value)
  %8610 = call float @dx.op.unary.f32(i32 21, float %8607)  ; Exp(value)
  %8611 = fmul fast float %8608, %8475
  %8612 = fmul fast float %8609, %8476
  %8613 = fmul fast float %8610, %8477
  %8614 = fmul fast float %8511, %8603
  %8615 = fmul fast float %8614, %8487
  %8616 = fmul fast float %8614, %8488
  %8617 = fmul fast float %8614, %8489
  %8618 = call float @dx.op.unary.f32(i32 21, float %8615)  ; Exp(value)
  %8619 = call float @dx.op.unary.f32(i32 21, float %8616)  ; Exp(value)
  %8620 = call float @dx.op.unary.f32(i32 21, float %8617)  ; Exp(value)
  %8621 = fmul fast float %8618, %8478
  %8622 = fmul fast float %8619, %8479
  %8623 = fmul fast float %8620, %8480
  %8624 = fadd fast float %8621, %8611
  %8625 = fadd fast float %8622, %8612
  %8626 = fadd fast float %8623, %8613
  %8627 = fmul fast float %8602, %8487
  %8628 = fmul fast float %8602, %8488
  %8629 = fmul fast float %8602, %8489
  %8630 = call float @dx.op.unary.f32(i32 21, float %8627)  ; Exp(value)
  %8631 = call float @dx.op.unary.f32(i32 21, float %8628)  ; Exp(value)
  %8632 = call float @dx.op.unary.f32(i32 21, float %8629)  ; Exp(value)
  %8633 = call float @dx.op.unary.f32(i32 7, float %8630)  ; Saturate(value)
  %8634 = call float @dx.op.unary.f32(i32 7, float %8631)  ; Saturate(value)
  %8635 = call float @dx.op.unary.f32(i32 7, float %8632)  ; Saturate(value)
  %8636 = fmul fast float %8633, %8624
  %8637 = fmul fast float %8634, %8625
  %8638 = fmul fast float %8635, %8626
  %8639 = fsub fast float %8624, %8636
  %8640 = fsub fast float %8625, %8637
  %8641 = fsub fast float %8626, %8638
  %8642 = fmul fast float %8639, %8484
  %8643 = fmul fast float %8640, %8485
  %8644 = fmul fast float %8641, %8486
  %8645 = fsub fast float %8583, %8642
  %8646 = fsub fast float %8584, %8643
  %8647 = fsub fast float %8585, %8644
  %8648 = fmul fast float %8645, %8260
  %8649 = fmul fast float %8646, %8260
  %8650 = fmul fast float %8647, %8260
  %8651 = fadd fast float %8648, %8642
  %8652 = fadd fast float %8649, %8643
  %8653 = fadd fast float %8650, %8644
  %8654 = fsub fast float %8592, %8633
  %8655 = fsub fast float %8593, %8634
  %8656 = fsub fast float %8594, %8635
  %8657 = fmul fast float %8654, %8260
  %8658 = fmul fast float %8655, %8260
  %8659 = fmul fast float %8656, %8260
  %8660 = fadd fast float %8657, %8633
  %8661 = fadd fast float %8658, %8634
  %8662 = fadd fast float %8659, %8635
  br label %8663

; <label>:8663                                    ; preds = %8595, %8471
  %8664 = phi float [ %8651, %8595 ], [ %8583, %8471 ]
  %8665 = phi float [ %8652, %8595 ], [ %8584, %8471 ]
  %8666 = phi float [ %8653, %8595 ], [ %8585, %8471 ]
  %8667 = phi float [ %8660, %8595 ], [ %8592, %8471 ]
  %8668 = phi float [ %8661, %8595 ], [ %8593, %8471 ]
  %8669 = phi float [ %8662, %8595 ], [ %8594, %8471 ]
  %8670 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8671 = extractvalue %dx.types.CBufRet.i32 %8670, 3
  %8672 = and i32 %8671, 3
  %8673 = icmp ne i32 %8672, 0
  %8674 = and i32 %8671, 4
  %8675 = icmp ne i32 %8674, 0
  %8676 = and i1 %8673, %8675
  br i1 %8676, label %8677, label %8684

; <label>:8677                                    ; preds = %8663
  %8678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %62, float %8264, float %8265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8679 = extractvalue %dx.types.ResRet.f32 %8678, 0
  %8680 = fsub fast float 1.000000e+00, %8679
  %8681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8682 = extractvalue %dx.types.CBufRet.f32 %8681, 0
  %8683 = fcmp fast olt float %8680, %8682
  br label %8687

; <label>:8684                                    ; preds = %8663
  %8685 = icmp eq i32 %8674, 0
  %8686 = and i1 %8673, %8685
  br label %8687

; <label>:8687                                    ; preds = %8684, %8677
  %8688 = phi i1 [ %8683, %8677 ], [ %8686, %8684 ]
  %8689 = xor i1 %2504, %8688
  %8690 = select i1 %8689, float 0.000000e+00, float %8260
  %8691 = fcmp fast ogt float %8690, 0.000000e+00
  %8692 = select i1 %8691, float %8264, float 0.000000e+00
  %8693 = select i1 %8691, float %8265, float 0.000000e+00
  %8694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %62, float %8692, float %8693, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8695 = extractvalue %dx.types.ResRet.f32 %8694, 0
  %8696 = extractvalue %dx.types.ResRet.f32 %8694, 1
  %8697 = extractvalue %dx.types.ResRet.f32 %8694, 2
  %8698 = fmul fast float %8696, %8690
  %8699 = fmul fast float %8697, %8690
  %8700 = select i1 %2504, float 0.000000e+00, float %8698
  %8701 = select i1 %2504, float 0.000000e+00, float %8699
  %8702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8703 = extractvalue %dx.types.CBufRet.f32 %8702, 1
  %8704 = fmul fast float %8690, %8667
  %8705 = fmul fast float %8704, %8695
  %8706 = fmul fast float %8705, %8703
  %8707 = fmul fast float %8703, %8668
  %8708 = fmul fast float %8707, %8700
  %8709 = fmul fast float %8703, %8669
  %8710 = fmul fast float %8709, %8701
  %8711 = fadd fast float %8706, %8664
  %8712 = fadd fast float %8708, %8665
  %8713 = fadd fast float %8710, %8666
  br label %8753

; <label>:8714                                    ; preds = %8236
  %8715 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8716 = extractvalue %dx.types.CBufRet.i32 %8715, 3
  %8717 = and i32 %8716, 3
  %8718 = icmp ne i32 %8717, 0
  %8719 = and i32 %8716, 4
  %8720 = icmp ne i32 %8719, 0
  %8721 = and i1 %8718, %8720
  br i1 %8721, label %8722, label %8729

; <label>:8722                                    ; preds = %8714
  %8723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %62, float %8264, float %8265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8724 = extractvalue %dx.types.ResRet.f32 %8723, 0
  %8725 = fsub fast float 1.000000e+00, %8724
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 0
  %8728 = fcmp fast olt float %8725, %8727
  br label %8732

; <label>:8729                                    ; preds = %8714
  %8730 = icmp eq i32 %8719, 0
  %8731 = and i1 %8718, %8730
  br label %8732

; <label>:8732                                    ; preds = %8729, %8722
  %8733 = phi i1 [ %8728, %8722 ], [ %8731, %8729 ]
  %8734 = xor i1 %2504, %8733
  %8735 = select i1 %8734, float 0.000000e+00, float %8260
  %8736 = fcmp fast ogt float %8735, 0.000000e+00
  %8737 = select i1 %8736, float %8264, float 0.000000e+00
  %8738 = select i1 %8736, float %8265, float 0.000000e+00
  %8739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %62, float %8737, float %8738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8740 = extractvalue %dx.types.ResRet.f32 %8739, 0
  %8741 = extractvalue %dx.types.ResRet.f32 %8739, 1
  %8742 = extractvalue %dx.types.ResRet.f32 %8739, 2
  %8743 = fmul fast float %8740, %8735
  %8744 = fmul fast float %8741, %8735
  %8745 = fmul fast float %8742, %8735
  %8746 = select i1 %2504, float 0.000000e+00, float %8744
  %8747 = select i1 %2504, float 0.000000e+00, float %8745
  %8748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8749 = extractvalue %dx.types.CBufRet.f32 %8748, 1
  %8750 = fmul fast float %8743, %8749
  %8751 = fmul fast float %8746, %8749
  %8752 = fmul fast float %8747, %8749
  br label %8753

; <label>:8753                                    ; preds = %8732, %8687
  %8754 = phi float [ %8750, %8732 ], [ %8711, %8687 ]
  %8755 = phi float [ %8751, %8732 ], [ %8712, %8687 ]
  %8756 = phi float [ %8752, %8732 ], [ %8713, %8687 ]
  %8757 = fmul fast float %5424, %8754
  %8758 = fmul fast float %5424, %8755
  %8759 = fmul fast float %5424, %8756
  %8760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8761 = extractvalue %dx.types.CBufRet.f32 %8760, 0
  %8762 = bitcast float %8761 to i32
  %8763 = and i32 %8762, 255
  %8764 = uitofp i32 %8763 to float
  %8765 = fptoui float %8764 to i32
  %8766 = icmp eq i32 %8765, 13
  br i1 %8766, label %8767, label %8787

; <label>:8767                                    ; preds = %8753
  %8768 = fadd fast float %1780, 2.000000e+00
  %8769 = fadd fast float %1782, 1.000000e+00
  %8770 = fsub fast float 1.000000e+00, %1783
  %8771 = fmul fast float %8768, 5.000000e-01
  %8772 = fmul fast float %8769, 5.000000e-01
  %8773 = fmul fast float %8770, 5.000000e-01
  %8774 = call float @dx.op.unary.f32(i32 7, float %8771)  ; Saturate(value)
  %8775 = call float @dx.op.unary.f32(i32 7, float %8772)  ; Saturate(value)
  %8776 = call float @dx.op.unary.f32(i32 7, float %8773)  ; Saturate(value)
  %8777 = fmul fast float %8774, 1.023000e+03
  %8778 = fmul fast float %8775, 1.023000e+03
  %8779 = fmul fast float %8776, 1.023000e+03
  %8780 = fptoui float %8777 to i32
  %8781 = fptoui float %8778 to i32
  %8782 = fptoui float %8779 to i32
  %8783 = shl i32 %8781, 10
  %8784 = or i32 %8783, %8780
  %8785 = shl i32 %8782, 20
  %8786 = or i32 %8784, %8785
  br label %8787

; <label>:8787                                    ; preds = %8767, %8753
  %8788 = phi i32 [ %8786, %8767 ], [ %8239, %8753 ]
  %8789 = icmp eq i32 %8765, 14
  br i1 %8789, label %8790, label %8810

; <label>:8790                                    ; preds = %8787
  %8791 = fadd fast float %1777, 1.000000e+00
  %8792 = fadd fast float %1787, 1.000000e+00
  %8793 = fsub fast float 1.000000e+00, %119
  %8794 = fmul fast float %8791, 5.000000e-01
  %8795 = fmul fast float %8792, 5.000000e-01
  %8796 = fmul fast float %8793, 5.000000e-01
  %8797 = call float @dx.op.unary.f32(i32 7, float %8794)  ; Saturate(value)
  %8798 = call float @dx.op.unary.f32(i32 7, float %8795)  ; Saturate(value)
  %8799 = call float @dx.op.unary.f32(i32 7, float %8796)  ; Saturate(value)
  %8800 = fmul fast float %8797, 1.023000e+03
  %8801 = fmul fast float %8798, 1.023000e+03
  %8802 = fmul fast float %8799, 1.023000e+03
  %8803 = fptoui float %8800 to i32
  %8804 = fptoui float %8801 to i32
  %8805 = fptoui float %8802 to i32
  %8806 = shl i32 %8804, 10
  %8807 = or i32 %8806, %8803
  %8808 = shl i32 %8805, 20
  %8809 = or i32 %8807, %8808
  br label %8810

; <label>:8810                                    ; preds = %8790, %8787
  %8811 = phi i32 [ %8809, %8790 ], [ %8788, %8787 ]
  %8812 = icmp eq i32 %8765, 15
  br i1 %8812, label %8813, label %8833

; <label>:8813                                    ; preds = %8810
  %8814 = fadd fast float %118, 1.000000e+00
  %8815 = fadd fast float %119, 1.000000e+00
  %8816 = fadd fast float %120, 1.000000e+00
  %8817 = fmul fast float %8814, 5.000000e-01
  %8818 = fmul fast float %8815, 5.000000e-01
  %8819 = fmul fast float %8816, 5.000000e-01
  %8820 = call float @dx.op.unary.f32(i32 7, float %8817)  ; Saturate(value)
  %8821 = call float @dx.op.unary.f32(i32 7, float %8818)  ; Saturate(value)
  %8822 = call float @dx.op.unary.f32(i32 7, float %8819)  ; Saturate(value)
  %8823 = fmul fast float %8820, 1.023000e+03
  %8824 = fmul fast float %8821, 1.023000e+03
  %8825 = fmul fast float %8822, 1.023000e+03
  %8826 = fptoui float %8823 to i32
  %8827 = fptoui float %8824 to i32
  %8828 = fptoui float %8825 to i32
  %8829 = shl i32 %8827, 10
  %8830 = or i32 %8829, %8826
  %8831 = shl i32 %8828, 20
  %8832 = or i32 %8830, %8831
  br label %8833

; <label>:8833                                    ; preds = %8813, %8810
  %8834 = phi i32 [ %8832, %8813 ], [ %8811, %8810 ]
  %8835 = fsub fast float 1.000000e+00, %2376
  %8836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8837 = extractvalue %dx.types.CBufRet.f32 %8836, 0
  %8838 = fmul fast float %8837, %8835
  %8839 = fmul fast float %2293, 2.000000e+00
  %8840 = fmul fast float %8839, %2330
  %8841 = fsub fast float %2321, %8840
  %8842 = call float @dx.op.unary.f32(i32 7, float %8841)  ; Saturate(value)
  %8843 = fsub fast float 1.000000e+00, %8842
  %8844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8845 = extractvalue %dx.types.CBufRet.f32 %8844, 3
  %8846 = fmul fast float %8845, %8843
  %8847 = fsub fast float 1.000000e+00, %2478
  %8848 = call float @dx.op.unary.f32(i32 7, float %8847)  ; Saturate(value)
  %8849 = fadd fast float %8257, %2480
  %8850 = fmul fast float %8849, %2478
  %8851 = fmul fast float %8846, %8848
  %8852 = icmp eq i32 %8765, 39
  %8853 = icmp eq i32 %8765, 40
  %8854 = select i1 %8853, float %2478, float 0.000000e+00
  %8855 = select i1 %8852, float %8849, float %8854
  %8856 = fmul fast float %8255, %2303
  %8857 = fmul fast float %8256, %2304
  %8858 = fmul fast float %8257, %2305
  %8859 = fadd fast float %8856, %8252
  %8860 = fadd fast float %8859, %8757
  %8861 = fadd fast float %8857, %8253
  %8862 = fadd fast float %8861, %8758
  %8863 = fadd fast float %8858, %8254
  %8864 = fadd fast float %8863, %8759
  br i1 %116, label %8865, label %9667

; <label>:8865                                    ; preds = %8833
  %8866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8867 = extractvalue %dx.types.CBufRet.f32 %8866, 0
  %8868 = extractvalue %dx.types.CBufRet.f32 %8866, 1
  %8869 = extractvalue %dx.types.CBufRet.f32 %8866, 2
  %8870 = extractvalue %dx.types.CBufRet.f32 %8866, 3
  %8871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8872 = extractvalue %dx.types.CBufRet.f32 %8871, 0
  %8873 = extractvalue %dx.types.CBufRet.f32 %8871, 1
  %8874 = extractvalue %dx.types.CBufRet.f32 %8871, 2
  %8875 = extractvalue %dx.types.CBufRet.f32 %8871, 3
  %8876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8877 = extractvalue %dx.types.CBufRet.f32 %8876, 0
  %8878 = extractvalue %dx.types.CBufRet.f32 %8876, 1
  %8879 = extractvalue %dx.types.CBufRet.f32 %8876, 2
  %8880 = extractvalue %dx.types.CBufRet.f32 %8876, 3
  %8881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8882 = extractvalue %dx.types.CBufRet.f32 %8881, 0
  %8883 = extractvalue %dx.types.CBufRet.f32 %8881, 1
  %8884 = extractvalue %dx.types.CBufRet.f32 %8881, 2
  %8885 = extractvalue %dx.types.CBufRet.f32 %8881, 3
  %8886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8887 = extractvalue %dx.types.CBufRet.f32 %8886, 3
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8888, 3
  %8890 = extractvalue %dx.types.CBufRet.f32 %8888, 0
  %8891 = extractvalue %dx.types.CBufRet.f32 %8888, 1
  %8892 = extractvalue %dx.types.CBufRet.f32 %8888, 2
  %8893 = fcmp fast olt float %8892, -5.000000e-01
  %8894 = fmul fast float %2318, %2317
  %8895 = fadd fast float %8894, %8870
  %8896 = call float @dx.op.dot3.f32(i32 55, float %2319, float %2320, float %2321, float %8867, float %8868, float %8869)  ; Dot3(ax,ay,az,bx,by,bz)
  %8897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8898 = extractvalue %dx.types.CBufRet.i32 %8897, 1
  %8899 = and i32 %8898, 1
  %8900 = icmp ne i32 %8899, 0
  %8901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8902 = extractvalue %dx.types.CBufRet.f32 %8901, 2
  %8903 = fcmp fast ogt float %8902, 0.000000e+00
  %8904 = and i1 %8900, %8903
  br i1 %8904, label %8905, label %9311, !dx.controlflow.hints !169

; <label>:8905                                    ; preds = %8865
  %8906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8907 = extractvalue %dx.types.CBufRet.f32 %8906, 3
  %8908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8909 = extractvalue %dx.types.CBufRet.f32 %8908, 2
  %8910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8911 = extractvalue %dx.types.CBufRet.f32 %8910, 2
  %8912 = fsub fast float %8909, %8911
  %8913 = and i32 %8898, 2
  %8914 = extractvalue %dx.types.CBufRet.i32 %8897, 0
  %8915 = call i32 @dx.op.binary.i32(i32 40, i32 %8914, i32 3)  ; UMin(a,b)
  %8916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8917 = extractvalue %dx.types.CBufRet.f32 %8916, 0
  %8918 = extractvalue %dx.types.CBufRet.f32 %8916, 1
  %8919 = extractvalue %dx.types.CBufRet.f32 %8910, 0
  %8920 = extractvalue %dx.types.CBufRet.f32 %8910, 1
  %8921 = fsub fast float %8917, %8919
  %8922 = fsub fast float %8918, %8920
  %8923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8924 = extractvalue %dx.types.CBufRet.f32 %8923, 0
  %8925 = fcmp fast ogt float %8924, 0.000000e+00
  %8926 = fsub fast float -0.000000e+00, %8921
  %8927 = fsub fast float -0.000000e+00, %8922
  %8928 = call float @dx.op.dot2.f32(i32 54, float %2319, float %2320, float %2319, float %2320)  ; Dot2(ax,ay,bx,by)
  %8929 = call float @dx.op.dot2.f32(i32 54, float %2319, float %2320, float %8926, float %8927)  ; Dot2(ax,ay,bx,by)
  %8930 = fmul fast float %8929, 2.000000e+00
  %8931 = call float @dx.op.dot2.f32(i32 54, float %8926, float %8927, float %8926, float %8927)  ; Dot2(ax,ay,bx,by)
  %8932 = fmul fast float %8924, %8924
  %8933 = fsub fast float %8931, %8932
  %8934 = fmul fast float %8930, %8930
  %8935 = fmul fast float %8928, 4.000000e+00
  %8936 = fmul fast float %8935, %8933
  %8937 = fsub fast float %8934, %8936
  %8938 = fcmp fast ogt float %8937, 0.000000e+00
  br i1 %8938, label %8939, label %8954

; <label>:8939                                    ; preds = %8905
  %8940 = fcmp fast ogt float %8930, 0.000000e+00
  %8941 = call float @dx.op.unary.f32(i32 24, float %8937)  ; Sqrt(value)
  %8942 = fsub fast float -0.000000e+00, %8941
  %8943 = select i1 %8940, float %8941, float %8942
  %8944 = fadd fast float %8943, %8930
  %8945 = fmul float %8944, -5.000000e-01
  %8946 = fdiv fast float %8945, %8928
  %8947 = call float @dx.op.binary.f32(i32 35, float %8946, float 0.000000e+00)  ; FMax(a,b)
  %8948 = call float @dx.op.binary.f32(i32 36, float %8894, float %8947)  ; FMin(a,b)
  %8949 = fdiv fast float %8933, %8945
  %8950 = call float @dx.op.binary.f32(i32 35, float %8949, float 0.000000e+00)  ; FMax(a,b)
  %8951 = call float @dx.op.binary.f32(i32 36, float %8894, float %8950)  ; FMin(a,b)
  %8952 = call float @dx.op.binary.f32(i32 36, float %8948, float %8951)  ; FMin(a,b)
  %8953 = call float @dx.op.binary.f32(i32 35, float %8948, float %8951)  ; FMax(a,b)
  br label %8954

; <label>:8954                                    ; preds = %8939, %8905
  %8955 = phi float [ %8953, %8939 ], [ -1.000000e+00, %8905 ]
  %8956 = phi float [ %8952, %8939 ], [ -1.000000e+00, %8905 ]
  %8957 = phi i1 [ true, %8939 ], [ false, %8905 ]
  %8958 = and i1 %8925, %8957
  br i1 %8958, label %8959, label %8961

; <label>:8959                                    ; preds = %8954
  %8960 = fcmp fast oeq float %8956, %8955
  br i1 %8960, label %9264, label %8962

; <label>:8961                                    ; preds = %8954
  br i1 %8925, label %9264, label %8962

; <label>:8962                                    ; preds = %8961, %8959
  %8963 = phi float [ %8894, %8961 ], [ %8955, %8959 ]
  %8964 = phi float [ 0.000000e+00, %8961 ], [ %8956, %8959 ]
  %8965 = icmp ne i32 %8913, 0
  %8966 = fmul fast float %8963, %2321
  %8967 = fadd fast float %8966, %8907
  %8968 = fmul fast float %8967, %8963
  %8969 = select i1 %8965, float 0.000000e+00, float %8968
  %8970 = fcmp fast oeq float %2321, 0.000000e+00
  %8971 = fdiv fast float %8912, %2321
  %8972 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8971)  ; FMax(a,b)
  %8973 = select i1 %8970, float %8963, float %8972
  %8974 = call float @dx.op.binary.f32(i32 36, float %8963, float %8973)  ; FMin(a,b)
  %8975 = fcmp fast ogt float %2321, 0.000000e+00
  %8976 = fcmp fast olt float %8912, 0.000000e+00
  br i1 %8975, label %8977, label %9034

; <label>:8977                                    ; preds = %8962
  %8978 = icmp eq i32 %8913, 0
  br i1 %8976, label %8979, label %9023

; <label>:8979                                    ; preds = %8977
  %8980 = select i1 %8978, float %8963, float 0.000000e+00
  %8981 = fsub fast float -0.000000e+00, %8980
  %8982 = call float @dx.op.unary.f32(i32 6, float %8981)  ; FAbs(value)
  %8983 = fmul fast float %8980, %2321
  %8984 = fadd fast float %8983, %8907
  %8985 = fmul fast float %8982, %8984
  %8986 = fsub fast float %8969, %8985
  %8987 = fsub fast float %8963, %8982
  %8988 = select i1 %8978, float %8987, float 0.000000e+00
  %8989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8990 = extractvalue %dx.types.CBufRet.f32 %8989, 0
  %8991 = extractvalue %dx.types.CBufRet.f32 %8989, 1
  %8992 = extractvalue %dx.types.CBufRet.f32 %8989, 2
  %8993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8994 = extractvalue %dx.types.CBufRet.f32 %8993, 0
  %8995 = extractvalue %dx.types.CBufRet.f32 %8993, 1
  %8996 = extractvalue %dx.types.CBufRet.f32 %8993, 2
  %8997 = extractvalue %dx.types.CBufRet.f32 %8993, 3
  %8998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8999 = extractvalue %dx.types.CBufRet.f32 %8998, 3
  %9000 = call float @dx.op.binary.f32(i32 36, float %8986, float %8999)  ; FMin(a,b)
  %9001 = fmul fast float %8997, %8988
  %9002 = call float @dx.op.unary.f32(i32 7, float %9001)  ; Saturate(value)
  %9003 = fsub fast float %8994, %8990
  %9004 = fsub fast float %8995, %8991
  %9005 = fsub fast float %8996, %8992
  %9006 = fmul fast float %9002, %9003
  %9007 = fmul fast float %9002, %9004
  %9008 = fmul fast float %9002, %9005
  %9009 = fadd fast float %9006, %8990
  %9010 = fadd fast float %9007, %8991
  %9011 = fadd fast float %9008, %8992
  %9012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9013 = extractvalue %dx.types.CBufRet.f32 %9012, 0
  %9014 = extractvalue %dx.types.CBufRet.f32 %9012, 1
  %9015 = fadd fast float %9014, %9013
  %9016 = call float @dx.op.unary.f32(i32 7, float %9015)  ; Saturate(value)
  %9017 = extractvalue %dx.types.CBufRet.f32 %9012, 2
  %9018 = extractvalue %dx.types.CBufRet.f32 %9012, 3
  %9019 = fadd fast float %9018, %9017
  %9020 = call float @dx.op.unary.f32(i32 7, float %9019)  ; Saturate(value)
  %9021 = fmul fast float %9016, %9000
  %9022 = fmul fast float %9021, %9020
  br label %9264

; <label>:9023                                    ; preds = %8977
  br i1 %8978, label %9024, label %9045

; <label>:9024                                    ; preds = %9023
  %9025 = call float @dx.op.binary.f32(i32 36, float %8974, float %8964)  ; FMin(a,b)
  %9026 = fsub fast float %8974, %9025
  %9027 = fsub fast float %9026, %8963
  %9028 = call float @dx.op.unary.f32(i32 6, float %9027)  ; FAbs(value)
  %9029 = fadd fast float %9026, %8963
  %9030 = fmul fast float %9029, %2321
  %9031 = fadd fast float %9030, %8907
  %9032 = fmul fast float %9031, %9028
  %9033 = fsub fast float %8969, %9032
  br label %9045

; <label>:9034                                    ; preds = %8962
  br i1 %8976, label %9035, label %9045

; <label>:9035                                    ; preds = %9034
  %9036 = call float @dx.op.binary.f32(i32 35, float %8964, float %8974)  ; FMax(a,b)
  %9037 = icmp eq i32 %8913, 0
  %9038 = select i1 %9037, float %8974, float 0.000000e+00
  %9039 = fsub fast float -0.000000e+00, %9038
  %9040 = call float @dx.op.unary.f32(i32 6, float %9039)  ; FAbs(value)
  %9041 = fmul fast float %9038, %2321
  %9042 = fadd fast float %9041, %8907
  %9043 = fmul fast float %9040, %9042
  %9044 = fsub fast float %8969, %9043
  br label %9045

; <label>:9045                                    ; preds = %9035, %9034, %9024, %9023
  %9046 = phi float [ %8964, %9023 ], [ %8964, %9024 ], [ %9036, %9035 ], [ %8964, %9034 ]
  %9047 = phi float [ 0.000000e+00, %9023 ], [ %9028, %9024 ], [ %9040, %9035 ], [ 0.000000e+00, %9034 ]
  %9048 = phi float [ %8969, %9023 ], [ %9033, %9024 ], [ %9044, %9035 ], [ %8969, %9034 ]
  %9049 = phi float [ %8974, %9023 ], [ %8974, %9024 ], [ %8963, %9035 ], [ %8963, %9034 ]
  %9050 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %9050, align 4, !tbaa !107, !noalias !170
  %9051 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %9051, align 4, !tbaa !107, !noalias !170
  %9052 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %9052, align 4, !tbaa !107, !noalias !170
  %9053 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %9053, align 4, !tbaa !107, !noalias !170
  %9054 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %9054, align 4, !tbaa !107, !noalias !170
  %9055 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %9055, align 4, !tbaa !107, !noalias !170
  %9056 = icmp sgt i32 %8915, 0
  br i1 %9056, label %9057, label %9118

; <label>:9057                                    ; preds = %9045
  br label %9058

; <label>:9058                                    ; preds = %9107, %9057
  %9059 = phi i32 [ %9108, %9107 ], [ 0, %9057 ]
  %9060 = phi i32 [ %9109, %9107 ], [ 0, %9057 ]
  %9061 = add nuw i32 %9060, 171
  %9062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %9061)  ; CBufferLoadLegacy(handle,regIndex)
  %9063 = extractvalue %dx.types.CBufRet.f32 %9062, 0
  %9064 = extractvalue %dx.types.CBufRet.f32 %9062, 1
  %9065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9066 = extractvalue %dx.types.CBufRet.f32 %9065, 0
  %9067 = extractvalue %dx.types.CBufRet.f32 %9065, 1
  %9068 = fsub fast float %9063, %9066
  %9069 = fsub fast float %9064, %9067
  %9070 = extractvalue %dx.types.CBufRet.f32 %9062, 2
  %9071 = fsub fast float -0.000000e+00, %9068
  %9072 = fsub fast float -0.000000e+00, %9069
  %9073 = call float @dx.op.dot2.f32(i32 54, float %2319, float %2320, float %9071, float %9072)  ; Dot2(ax,ay,bx,by)
  %9074 = fmul fast float %9073, 2.000000e+00
  %9075 = call float @dx.op.dot2.f32(i32 54, float %9071, float %9072, float %9071, float %9072)  ; Dot2(ax,ay,bx,by)
  %9076 = fmul fast float %9070, %9070
  %9077 = fsub fast float %9075, %9076
  %9078 = fmul fast float %9074, %9074
  %9079 = fmul fast float %8935, %9077
  %9080 = fsub fast float %9078, %9079
  %9081 = fcmp fast ogt float %9080, 0.000000e+00
  br i1 %9081, label %9082, label %9097

; <label>:9082                                    ; preds = %9058
  %9083 = fcmp fast ogt float %9074, 0.000000e+00
  %9084 = call float @dx.op.unary.f32(i32 24, float %9080)  ; Sqrt(value)
  %9085 = fsub fast float -0.000000e+00, %9084
  %9086 = select i1 %9083, float %9084, float %9085
  %9087 = fadd fast float %9086, %9074
  %9088 = fmul float %9087, -5.000000e-01
  %9089 = fdiv fast float %9088, %8928
  %9090 = call float @dx.op.binary.f32(i32 35, float %9089, float 0.000000e+00)  ; FMax(a,b)
  %9091 = call float @dx.op.binary.f32(i32 36, float %8963, float %9090)  ; FMin(a,b)
  %9092 = fdiv fast float %9077, %9088
  %9093 = call float @dx.op.binary.f32(i32 35, float %9092, float 0.000000e+00)  ; FMax(a,b)
  %9094 = call float @dx.op.binary.f32(i32 36, float %8963, float %9093)  ; FMin(a,b)
  %9095 = call float @dx.op.binary.f32(i32 36, float %9091, float %9094)  ; FMin(a,b)
  %9096 = call float @dx.op.binary.f32(i32 35, float %9091, float %9094)  ; FMax(a,b)
  br label %9097

; <label>:9097                                    ; preds = %9082, %9058
  %9098 = phi float [ %9096, %9082 ], [ -1.000000e+00, %9058 ]
  %9099 = phi float [ %9095, %9082 ], [ -1.000000e+00, %9058 ]
  %9100 = phi i1 [ true, %9082 ], [ false, %9058 ]
  br i1 %9100, label %9101, label %9107

; <label>:9101                                    ; preds = %9097
  %9102 = call float @dx.op.binary.f32(i32 35, float %9046, float %9099)  ; FMax(a,b)
  %9103 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %9060
  store float %9102, float* %9103, align 4, !tbaa !107, !noalias !170
  %9104 = call float @dx.op.binary.f32(i32 35, float %9046, float %9098)  ; FMax(a,b)
  %9105 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %9060
  store float %9104, float* %9105, align 4, !tbaa !107, !noalias !170
  %9106 = add nsw i32 %9059, 1
  br label %9107

; <label>:9107                                    ; preds = %9101, %9097
  %9108 = phi i32 [ %9106, %9101 ], [ %9059, %9097 ]
  %9109 = add nuw nsw i32 %9060, 1
  %9110 = icmp eq i32 %9109, %8915
  br i1 %9110, label %9111, label %9058

; <label>:9111                                    ; preds = %9107
  %9112 = load float, float* %9052, align 4, !tbaa !107, !alias.scope !186, !noalias !189
  %9113 = load float, float* %9051, align 4, !tbaa !107, !alias.scope !192, !noalias !193
  %9114 = load float, float* %9050, align 4, !tbaa !107, !alias.scope !194, !noalias !195
  %9115 = load float, float* %9055, align 4, !tbaa !107, !alias.scope !196, !noalias !199
  %9116 = load float, float* %9054, align 4, !tbaa !107, !alias.scope !202, !noalias !203
  %9117 = load float, float* %9053, align 4, !tbaa !107, !alias.scope !204, !noalias !205
  br label %9118

; <label>:9118                                    ; preds = %9111, %9045
  %9119 = phi float [ -1.000000e+00, %9045 ], [ %9117, %9111 ]
  %9120 = phi float [ -1.000000e+00, %9045 ], [ %9116, %9111 ]
  %9121 = phi float [ -1.000000e+00, %9045 ], [ %9115, %9111 ]
  %9122 = phi float [ -1.000000e+00, %9045 ], [ %9114, %9111 ]
  %9123 = phi float [ -1.000000e+00, %9045 ], [ %9113, %9111 ]
  %9124 = phi float [ -1.000000e+00, %9045 ], [ %9112, %9111 ]
  %9125 = phi i32 [ 0, %9045 ], [ %9108, %9111 ]
  %9126 = call float @dx.op.binary.f32(i32 36, float %9123, float %9124)  ; FMin(a,b)
  %9127 = call float @dx.op.binary.f32(i32 36, float %9122, float %9126)  ; FMin(a,b)
  %9128 = call float @dx.op.binary.f32(i32 35, float %9122, float %9123)  ; FMax(a,b)
  %9129 = call float @dx.op.binary.f32(i32 36, float %9128, float %9124)  ; FMin(a,b)
  %9130 = call float @dx.op.binary.f32(i32 36, float %9122, float %9123)  ; FMin(a,b)
  %9131 = call float @dx.op.binary.f32(i32 35, float %9130, float %9129)  ; FMax(a,b)
  %9132 = call float @dx.op.binary.f32(i32 35, float %9123, float %9124)  ; FMax(a,b)
  %9133 = call float @dx.op.binary.f32(i32 35, float %9122, float %9132)  ; FMax(a,b)
  store float %9127, float* %9050, align 4, !tbaa !107, !alias.scope !194, !noalias !195
  store float %9131, float* %9051, align 4, !tbaa !107, !alias.scope !192, !noalias !193
  store float %9133, float* %9052, align 4, !tbaa !107, !alias.scope !186, !noalias !189
  %9134 = call float @dx.op.binary.f32(i32 36, float %9120, float %9121)  ; FMin(a,b)
  %9135 = call float @dx.op.binary.f32(i32 36, float %9119, float %9134)  ; FMin(a,b)
  %9136 = call float @dx.op.binary.f32(i32 35, float %9119, float %9120)  ; FMax(a,b)
  %9137 = call float @dx.op.binary.f32(i32 36, float %9136, float %9121)  ; FMin(a,b)
  %9138 = call float @dx.op.binary.f32(i32 36, float %9119, float %9120)  ; FMin(a,b)
  %9139 = call float @dx.op.binary.f32(i32 35, float %9138, float %9137)  ; FMax(a,b)
  %9140 = call float @dx.op.binary.f32(i32 35, float %9120, float %9121)  ; FMax(a,b)
  %9141 = call float @dx.op.binary.f32(i32 35, float %9119, float %9140)  ; FMax(a,b)
  store float %9135, float* %9053, align 4, !tbaa !107, !alias.scope !204, !noalias !205
  store float %9139, float* %9054, align 4, !tbaa !107, !alias.scope !202, !noalias !203
  store float %9141, float* %9055, align 4, !tbaa !107, !alias.scope !196, !noalias !199
  %9142 = sub nsw i32 3, %9125
  %9143 = icmp sgt i32 %9142, 2
  br i1 %9143, label %9144, label %9182

; <label>:9144                                    ; preds = %9118
  %9145 = icmp eq i32 %8913, 0
  %9146 = fsub fast float %8963, %9047
  %9147 = select i1 %9145, float %9146, float %9047
  %9148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9149 = extractvalue %dx.types.CBufRet.f32 %9148, 0
  %9150 = extractvalue %dx.types.CBufRet.f32 %9148, 1
  %9151 = extractvalue %dx.types.CBufRet.f32 %9148, 2
  %9152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9153 = extractvalue %dx.types.CBufRet.f32 %9152, 0
  %9154 = extractvalue %dx.types.CBufRet.f32 %9152, 1
  %9155 = extractvalue %dx.types.CBufRet.f32 %9152, 2
  %9156 = extractvalue %dx.types.CBufRet.f32 %9152, 3
  %9157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9158 = extractvalue %dx.types.CBufRet.f32 %9157, 3
  %9159 = call float @dx.op.binary.f32(i32 36, float %9048, float %9158)  ; FMin(a,b)
  %9160 = fmul fast float %9156, %9147
  %9161 = call float @dx.op.unary.f32(i32 7, float %9160)  ; Saturate(value)
  %9162 = fsub fast float %9153, %9149
  %9163 = fsub fast float %9154, %9150
  %9164 = fsub fast float %9155, %9151
  %9165 = fmul fast float %9161, %9162
  %9166 = fmul fast float %9161, %9163
  %9167 = fmul fast float %9161, %9164
  %9168 = fadd fast float %9165, %9149
  %9169 = fadd fast float %9166, %9150
  %9170 = fadd fast float %9167, %9151
  %9171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9172 = extractvalue %dx.types.CBufRet.f32 %9171, 0
  %9173 = extractvalue %dx.types.CBufRet.f32 %9171, 1
  %9174 = fadd fast float %9173, %9172
  %9175 = call float @dx.op.unary.f32(i32 7, float %9174)  ; Saturate(value)
  %9176 = extractvalue %dx.types.CBufRet.f32 %9171, 2
  %9177 = extractvalue %dx.types.CBufRet.f32 %9171, 3
  %9178 = fadd fast float %9177, %9176
  %9179 = call float @dx.op.unary.f32(i32 7, float %9178)  ; Saturate(value)
  %9180 = fmul fast float %9175, %9159
  %9181 = fmul fast float %9180, %9179
  br label %9264

; <label>:9182                                    ; preds = %9118
  %9183 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %9142
  %9184 = load float, float* %9183, align 4, !tbaa !107, !noalias !170
  %9185 = fcmp fast olt float %9184, %9049
  %9186 = icmp sgt i32 %9125, 0
  %9187 = and i1 %9186, %9185
  br i1 %9187, label %9188, label %9225

; <label>:9188                                    ; preds = %9182
  br label %9189

; <label>:9189                                    ; preds = %9218, %9188
  %9190 = phi float [ %9219, %9218 ], [ %9047, %9188 ]
  %9191 = phi float [ %9220, %9218 ], [ %9048, %9188 ]
  %9192 = phi float [ %9200, %9218 ], [ %9184, %9188 ]
  %9193 = phi i32 [ %9197, %9218 ], [ %9142, %9188 ]
  %9194 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %9193
  %9195 = load float, float* %9194, align 4, !tbaa !107, !noalias !170
  %9196 = icmp slt i32 %9193, 2
  %9197 = add nsw i32 %9193, 1
  %9198 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %9197
  %9199 = load float, float* %9198, align 4, !tbaa !107, !noalias !170
  %9200 = select i1 %9196, float %9199, float %8963
  %9201 = call float @dx.op.binary.f32(i32 36, float %9200, float %9195)  ; FMin(a,b)
  %9202 = call float @dx.op.binary.f32(i32 36, float %9049, float %9201)  ; FMin(a,b)
  %9203 = icmp eq i32 %8913, 0
  %9204 = fadd fast float %9202, %9192
  %9205 = fmul fast float %9204, %2321
  %9206 = fadd fast float %9205, %8907
  br i1 %9203, label %9212, label %9207

; <label>:9207                                    ; preds = %9189
  %9208 = fsub fast float %9202, %9192
  %9209 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9208)  ; FMax(a,b)
  %9210 = fmul fast float %9209, %9206
  %9211 = fadd fast float %9210, %9191
  br label %9218

; <label>:9212                                    ; preds = %9189
  %9213 = fsub fast float %9192, %9202
  %9214 = call float @dx.op.unary.f32(i32 6, float %9213)  ; FAbs(value)
  %9215 = fadd fast float %9214, %9190
  %9216 = fmul fast float %9214, %9206
  %9217 = fsub fast float %9191, %9216
  br label %9218

; <label>:9218                                    ; preds = %9212, %9207
  %9219 = phi float [ %9209, %9207 ], [ %9215, %9212 ]
  %9220 = phi float [ %9211, %9207 ], [ %9217, %9212 ]
  %9221 = fcmp fast olt float %9200, %9049
  %9222 = icmp slt i32 %9197, 3
  %9223 = and i1 %9222, %9221
  br i1 %9223, label %9189, label %9224

; <label>:9224                                    ; preds = %9218
  br label %9225

; <label>:9225                                    ; preds = %9224, %9182
  %9226 = phi float [ %9047, %9182 ], [ %9219, %9224 ]
  %9227 = phi float [ %9048, %9182 ], [ %9220, %9224 ]
  %9228 = fsub fast float %8963, %9226
  %9229 = select i1 %8965, float %9226, float %9228
  %9230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9231 = extractvalue %dx.types.CBufRet.f32 %9230, 0
  %9232 = extractvalue %dx.types.CBufRet.f32 %9230, 1
  %9233 = extractvalue %dx.types.CBufRet.f32 %9230, 2
  %9234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9235 = extractvalue %dx.types.CBufRet.f32 %9234, 0
  %9236 = extractvalue %dx.types.CBufRet.f32 %9234, 1
  %9237 = extractvalue %dx.types.CBufRet.f32 %9234, 2
  %9238 = extractvalue %dx.types.CBufRet.f32 %9234, 3
  %9239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9240 = extractvalue %dx.types.CBufRet.f32 %9239, 3
  %9241 = call float @dx.op.binary.f32(i32 36, float %9227, float %9240)  ; FMin(a,b)
  %9242 = fmul fast float %9238, %9229
  %9243 = call float @dx.op.unary.f32(i32 7, float %9242)  ; Saturate(value)
  %9244 = fsub fast float %9235, %9231
  %9245 = fsub fast float %9236, %9232
  %9246 = fsub fast float %9237, %9233
  %9247 = fmul fast float %9243, %9244
  %9248 = fmul fast float %9243, %9245
  %9249 = fmul fast float %9243, %9246
  %9250 = fadd fast float %9247, %9231
  %9251 = fadd fast float %9248, %9232
  %9252 = fadd fast float %9249, %9233
  %9253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9254 = extractvalue %dx.types.CBufRet.f32 %9253, 0
  %9255 = extractvalue %dx.types.CBufRet.f32 %9253, 1
  %9256 = fadd fast float %9255, %9254
  %9257 = call float @dx.op.unary.f32(i32 7, float %9256)  ; Saturate(value)
  %9258 = extractvalue %dx.types.CBufRet.f32 %9253, 2
  %9259 = extractvalue %dx.types.CBufRet.f32 %9253, 3
  %9260 = fadd fast float %9259, %9258
  %9261 = call float @dx.op.unary.f32(i32 7, float %9260)  ; Saturate(value)
  %9262 = fmul fast float %9257, %9241
  %9263 = fmul fast float %9262, %9261
  br label %9264

; <label>:9264                                    ; preds = %9225, %9144, %8979, %8961, %8959
  %9265 = phi float [ %8988, %8979 ], [ %9147, %9144 ], [ %9229, %9225 ], [ 0.000000e+00, %8959 ], [ 0.000000e+00, %8961 ]
  %9266 = phi float [ %9022, %8979 ], [ %9181, %9144 ], [ %9263, %9225 ], [ 0.000000e+00, %8959 ], [ 0.000000e+00, %8961 ]
  %9267 = phi float [ %9009, %8979 ], [ %9168, %9144 ], [ %9250, %9225 ], [ 0.000000e+00, %8959 ], [ 0.000000e+00, %8961 ]
  %9268 = phi float [ %9010, %8979 ], [ %9169, %9144 ], [ %9251, %9225 ], [ 0.000000e+00, %8959 ], [ 0.000000e+00, %8961 ]
  %9269 = phi float [ %9011, %8979 ], [ %9170, %9144 ], [ %9252, %9225 ], [ 0.000000e+00, %8959 ], [ 0.000000e+00, %8961 ]
  %9270 = fmul fast float %8902, %9266
  %9271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9272 = extractvalue %dx.types.CBufRet.f32 %9271, 2
  %9273 = fsub fast float %8909, %9272
  %9274 = fcmp fast olt float %9270, -2.000000e+01
  %9275 = call float @dx.op.unary.f32(i32 21, float %9270)  ; Exp(value)
  %9276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9277 = extractvalue %dx.types.CBufRet.f32 %9276, 2
  %9278 = extractvalue %dx.types.CBufRet.f32 %9276, 3
  %9279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9280 = extractvalue %dx.types.CBufRet.f32 %9279, 2
  %9281 = fmul fast float %9278, %9273
  %9282 = call float @dx.op.unary.f32(i32 7, float %9281)  ; Saturate(value)
  %9283 = fsub fast float 1.000000e+00, %9282
  %9284 = fmul fast float %2321, 5.000000e-01
  %9285 = fadd fast float %9284, 5.000000e-01
  %9286 = call float @dx.op.unary.f32(i32 7, float %9285)  ; Saturate(value)
  %9287 = fsub fast float 1.000000e+00, %9286
  %9288 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9283)  ; FMax(a,b)
  %9289 = fdiv fast float %9287, %9288
  %9290 = fsub fast float %9273, %156
  %9291 = call float @dx.op.unary.f32(i32 6, float %9290)  ; FAbs(value)
  %9292 = fmul fast float %9291, %9277
  %9293 = call float @dx.op.unary.f32(i32 7, float %9289)  ; Saturate(value)
  %9294 = fsub fast float 1.000000e+00, %9292
  %9295 = fmul fast float %9294, %9293
  %9296 = fadd fast float %9295, %9292
  %9297 = fmul fast float %9280, %9273
  %9298 = call float @dx.op.unary.f32(i32 7, float %9297)  ; Saturate(value)
  %9299 = fsub fast float 1.000000e+00, %9296
  %9300 = fmul fast float %9299, %9298
  %9301 = fadd fast float %9300, %9296
  %9302 = call float @dx.op.unary.f32(i32 7, float %9301)  ; Saturate(value)
  %9303 = fadd fast float %9275, -1.000000e+00
  %9304 = select i1 %9274, float -1.000000e+00, float %9303
  %9305 = fmul fast float %9302, %9304
  %9306 = fadd fast float %9305, 1.000000e+00
  %9307 = fsub fast float -0.000000e+00, %9305
  %9308 = fmul fast float %9267, %9307
  %9309 = fmul fast float %9268, %9307
  %9310 = fmul fast float %9269, %9307
  br label %9311

; <label>:9311                                    ; preds = %9264, %8865
  %9312 = phi float [ %9265, %9264 ], [ 0.000000e+00, %8865 ]
  %9313 = phi float [ %9306, %9264 ], [ 1.000000e+00, %8865 ]
  %9314 = phi float [ %9308, %9264 ], [ 0.000000e+00, %8865 ]
  %9315 = phi float [ %9309, %9264 ], [ 0.000000e+00, %8865 ]
  %9316 = phi float [ %9310, %9264 ], [ 0.000000e+00, %8865 ]
  %9317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9318 = extractvalue %dx.types.CBufRet.f32 %9317, 1
  %9319 = fsub fast float 1.000000e+00, %9313
  %9320 = fmul fast float %9319, %8895
  %9321 = fmul fast float %9320, %9318
  %9322 = fsub fast float %8895, %9321
  br i1 %8893, label %9323, label %9352, !dx.controlflow.hints !206

; <label>:9323                                    ; preds = %9311
  %9324 = fmul fast float %8896, %8890
  %9325 = fadd fast float %9324, %8891
  %9326 = call float @dx.op.unary.f32(i32 7, float %9325)  ; Saturate(value)
  %9327 = fmul fast float %8872, %9322
  %9328 = fsub fast float -0.000000e+00, %9327
  %9329 = fmul fast float %8873, %9322
  %9330 = fsub fast float -0.000000e+00, %9329
  %9331 = call float @dx.op.unary.f32(i32 21, float %9328)  ; Exp(value)
  %9332 = call float @dx.op.unary.f32(i32 21, float %9330)  ; Exp(value)
  %9333 = call float @dx.op.binary.f32(i32 35, float %8880, float %9331)  ; FMax(a,b)
  %9334 = call float @dx.op.binary.f32(i32 35, float %8880, float %9332)  ; FMax(a,b)
  %9335 = fsub fast float %9334, %9333
  %9336 = fmul fast float %9335, %9326
  %9337 = fadd fast float %9336, %9333
  %9338 = call float @dx.op.unary.f32(i32 7, float %9337)  ; Saturate(value)
  %9339 = fsub fast float %8877, %8882
  %9340 = fsub fast float %8878, %8883
  %9341 = fsub fast float %8879, %8884
  %9342 = fmul fast float %9326, %9339
  %9343 = fmul fast float %9326, %9340
  %9344 = fmul fast float %9326, %9341
  %9345 = fadd fast float %9342, %8882
  %9346 = fadd fast float %9343, %8883
  %9347 = fadd fast float %9344, %8884
  %9348 = fsub fast float 1.000000e+00, %9338
  %9349 = fmul fast float %9348, %9345
  %9350 = fmul fast float %9348, %9346
  %9351 = fmul fast float %9348, %9347
  br label %9411

; <label>:9352                                    ; preds = %9311
  %9353 = fmul fast float %9322, %8889
  %9354 = call float @dx.op.unary.f32(i32 7, float %9353)  ; Saturate(value)
  %9355 = fsub fast float 2.000000e+00, %9354
  %9356 = fmul fast float %9354, 9.921875e-01
  %9357 = fmul fast float %9356, %9355
  %9358 = fadd fast float %9357, 3.906250e-03
  %9359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %62, float %9358, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9360 = extractvalue %dx.types.ResRet.f32 %9359, 0
  %9361 = fsub fast float %9354, %9360
  %9362 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9361)  ; FMax(a,b)
  %9363 = fmul fast float %8875, %156
  %9364 = call float @dx.op.unary.f32(i32 6, float %9363)  ; FAbs(value)
  %9365 = fcmp fast ogt float %9364, 0x3EB0C6F7A0000000
  br i1 %9365, label %9366, label %9372, !dx.controlflow.hints !207

; <label>:9366                                    ; preds = %9352
  %9367 = fmul fast float %9363, 0xBFF7154760000000
  %9368 = call float @dx.op.unary.f32(i32 21, float %9367)  ; Exp(value)
  %9369 = fsub fast float 1.000000e+00, %9368
  %9370 = fdiv fast float %9369, %9363
  %9371 = fmul fast float %9370, %8885
  br label %9372

; <label>:9372                                    ; preds = %9366, %9352
  %9373 = phi float [ %9371, %9366 ], [ %8885, %9352 ]
  %9374 = fadd fast float %9373, %8887
  %9375 = fmul fast float %9374, %9362
  %9376 = fmul fast float %8872, %9375
  %9377 = fsub fast float -0.000000e+00, %9376
  %9378 = fmul fast float %8873, %9375
  %9379 = fsub fast float -0.000000e+00, %9378
  %9380 = fmul fast float %8874, %9375
  %9381 = fsub fast float -0.000000e+00, %9380
  %9382 = call float @dx.op.unary.f32(i32 21, float %9377)  ; Exp(value)
  %9383 = call float @dx.op.unary.f32(i32 21, float %9379)  ; Exp(value)
  %9384 = call float @dx.op.unary.f32(i32 21, float %9381)  ; Exp(value)
  %9385 = fmul fast float %8896, %8896
  %9386 = fadd fast float %9385, 1.000000e+00
  %9387 = fmul fast float %9386, 0x3FAE8EC8A0000000
  %9388 = fmul fast float %9387, %8882
  %9389 = fmul fast float %9387, %8883
  %9390 = fmul fast float %9387, %8884
  %9391 = fmul fast float %8896, %8880
  %9392 = fsub fast float 1.000000e+00, %9391
  %9393 = fmul fast float %8880, %8880
  %9394 = fsub fast float 1.000000e+00, %9393
  %9395 = fmul fast float %9394, 0x3FB45F3060000000
  %9396 = fmul fast float %9392, %9392
  %9397 = fdiv fast float 1.000000e+00, %9396
  %9398 = fmul fast float %9395, %9397
  %9399 = fmul fast float %9398, %8877
  %9400 = fmul fast float %9398, %8878
  %9401 = fmul fast float %9398, %8879
  %9402 = fadd fast float %9399, %9388
  %9403 = fadd fast float %9400, %9389
  %9404 = fadd fast float %9401, %9390
  %9405 = fsub fast float 1.000000e+00, %9382
  %9406 = fsub fast float 1.000000e+00, %9383
  %9407 = fsub fast float 1.000000e+00, %9384
  %9408 = fmul fast float %9402, %9405
  %9409 = fmul fast float %9403, %9406
  %9410 = fmul fast float %9404, %9407
  br label %9411

; <label>:9411                                    ; preds = %9372, %9323
  %9412 = phi float [ %9349, %9323 ], [ %9408, %9372 ]
  %9413 = phi float [ %9350, %9323 ], [ %9409, %9372 ]
  %9414 = phi float [ %9351, %9323 ], [ %9410, %9372 ]
  %9415 = phi float [ %9338, %9323 ], [ %9382, %9372 ]
  %9416 = phi float [ %9338, %9323 ], [ %9383, %9372 ]
  %9417 = phi float [ %9338, %9323 ], [ %9384, %9372 ]
  br i1 %8904, label %9418, label %9616, !dx.controlflow.hints !208

; <label>:9418                                    ; preds = %9411
  %9419 = extractvalue %dx.types.CBufRet.f32 %9317, 0
  %9420 = fmul fast float %9419, %9319
  %9421 = fsub fast float %9314, %9412
  %9422 = fsub fast float %9315, %9413
  %9423 = fsub fast float %9316, %9414
  %9424 = fmul fast float %9420, %9421
  %9425 = fmul fast float %9420, %9422
  %9426 = fmul fast float %9420, %9423
  %9427 = fadd fast float %9424, %9412
  %9428 = fadd fast float %9425, %9413
  %9429 = fadd fast float %9426, %9414
  %9430 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9415)  ; FMax(a,b)
  %9431 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9416)  ; FMax(a,b)
  %9432 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9417)  ; FMax(a,b)
  %9433 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9313)  ; FMax(a,b)
  %9434 = call float @dx.op.binary.f32(i32 35, float %9312, float %9322)  ; FMax(a,b)
  %9435 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9434)  ; FMax(a,b)
  %9436 = fdiv fast float %9312, %9435
  %9437 = call float @dx.op.unary.f32(i32 7, float %9436)  ; Saturate(value)
  %9438 = fdiv fast float %9322, %9435
  %9439 = call float @dx.op.unary.f32(i32 7, float %9438)  ; Saturate(value)
  %9440 = fcmp fast une float %9433, 1.000000e+00
  br i1 %9440, label %9441, label %9454, !dx.controlflow.hints !209

; <label>:9441                                    ; preds = %9418
  %9442 = call float @dx.op.unary.f32(i32 23, float %9433)  ; Log(value)
  %9443 = fmul fast float %9442, 0x3FE62E4300000000
  %9444 = fmul fast float %9314, %9443
  %9445 = fsub fast float -0.000000e+00, %9444
  %9446 = fmul fast float %9315, %9443
  %9447 = fsub fast float -0.000000e+00, %9446
  %9448 = fmul fast float %9316, %9443
  %9449 = fsub fast float -0.000000e+00, %9448
  %9450 = fsub fast float 1.000000e+00, %9433
  %9451 = fdiv fast float %9445, %9450
  %9452 = fdiv fast float %9447, %9450
  %9453 = fdiv fast float %9449, %9450
  br label %9454

; <label>:9454                                    ; preds = %9441, %9418
  %9455 = phi float [ %9451, %9441 ], [ %9314, %9418 ]
  %9456 = phi float [ %9452, %9441 ], [ %9315, %9418 ]
  %9457 = phi float [ %9453, %9441 ], [ %9316, %9418 ]
  %9458 = phi float [ %9443, %9441 ], [ 0.000000e+00, %9418 ]
  %9459 = fcmp fast une float %9430, 1.000000e+00
  br i1 %9459, label %9460, label %9467, !dx.controlflow.hints !210

; <label>:9460                                    ; preds = %9454
  %9461 = call float @dx.op.unary.f32(i32 23, float %9430)  ; Log(value)
  %9462 = fmul fast float %9461, 0x3FE62E4300000000
  %9463 = fmul fast float %9427, %9462
  %9464 = fsub fast float -0.000000e+00, %9463
  %9465 = fsub fast float 1.000000e+00, %9430
  %9466 = fdiv fast float %9464, %9465
  br label %9467

; <label>:9467                                    ; preds = %9460, %9454
  %9468 = phi float [ %9466, %9460 ], [ %9427, %9454 ]
  %9469 = phi float [ %9462, %9460 ], [ 0.000000e+00, %9454 ]
  %9470 = fcmp fast une float %9431, 1.000000e+00
  br i1 %9470, label %9471, label %9478, !dx.controlflow.hints !210

; <label>:9471                                    ; preds = %9467
  %9472 = call float @dx.op.unary.f32(i32 23, float %9431)  ; Log(value)
  %9473 = fmul fast float %9472, 0x3FE62E4300000000
  %9474 = fmul fast float %9428, %9473
  %9475 = fsub fast float -0.000000e+00, %9474
  %9476 = fsub fast float 1.000000e+00, %9431
  %9477 = fdiv fast float %9475, %9476
  br label %9478

; <label>:9478                                    ; preds = %9471, %9467
  %9479 = phi float [ %9477, %9471 ], [ %9428, %9467 ]
  %9480 = phi float [ %9473, %9471 ], [ 0.000000e+00, %9467 ]
  %9481 = fcmp fast une float %9432, 1.000000e+00
  br i1 %9481, label %9482, label %9489, !dx.controlflow.hints !210

; <label>:9482                                    ; preds = %9478
  %9483 = call float @dx.op.unary.f32(i32 23, float %9432)  ; Log(value)
  %9484 = fmul fast float %9483, 0x3FE62E4300000000
  %9485 = fmul fast float %9429, %9484
  %9486 = fsub fast float -0.000000e+00, %9485
  %9487 = fsub fast float 1.000000e+00, %9432
  %9488 = fdiv fast float %9486, %9487
  br label %9489

; <label>:9489                                    ; preds = %9482, %9478
  %9490 = phi float [ %9488, %9482 ], [ %9429, %9478 ]
  %9491 = phi float [ %9484, %9482 ], [ 0.000000e+00, %9478 ]
  %9492 = fmul fast float %9455, %9439
  %9493 = fmul fast float %9456, %9439
  %9494 = fmul fast float %9457, %9439
  %9495 = fmul fast float %9458, %9439
  %9496 = fmul fast float %9468, %9437
  %9497 = fmul fast float %9479, %9437
  %9498 = fmul fast float %9490, %9437
  %9499 = fmul fast float %9469, %9437
  %9500 = fmul fast float %9480, %9437
  %9501 = fmul fast float %9491, %9437
  %9502 = fadd fast float %9496, %9492
  %9503 = fadd fast float %9497, %9493
  %9504 = fadd fast float %9498, %9494
  %9505 = fadd fast float %9499, %9495
  %9506 = fadd fast float %9500, %9495
  %9507 = fadd fast float %9501, %9495
  %9508 = fcmp fast une float %9505, 0.000000e+00
  br i1 %9508, label %9509, label %9516, !dx.controlflow.hints !211

; <label>:9509                                    ; preds = %9489
  %9510 = fmul fast float %9505, 0x3FF7154760000000
  %9511 = call float @dx.op.unary.f32(i32 21, float %9510)  ; Exp(value)
  %9512 = fsub fast float 1.000000e+00, %9511
  %9513 = fmul fast float %9502, %9512
  %9514 = fsub fast float -0.000000e+00, %9513
  %9515 = fdiv fast float %9514, %9505
  br label %9516

; <label>:9516                                    ; preds = %9509, %9489
  %9517 = phi float [ %9511, %9509 ], [ 1.000000e+00, %9489 ]
  %9518 = phi float [ %9515, %9509 ], [ %9502, %9489 ]
  %9519 = fcmp fast une float %9506, 0.000000e+00
  br i1 %9519, label %9520, label %9527, !dx.controlflow.hints !211

; <label>:9520                                    ; preds = %9516
  %9521 = fmul fast float %9506, 0x3FF7154760000000
  %9522 = call float @dx.op.unary.f32(i32 21, float %9521)  ; Exp(value)
  %9523 = fsub fast float 1.000000e+00, %9522
  %9524 = fmul fast float %9503, %9523
  %9525 = fsub fast float -0.000000e+00, %9524
  %9526 = fdiv fast float %9525, %9506
  br label %9527

; <label>:9527                                    ; preds = %9520, %9516
  %9528 = phi float [ %9522, %9520 ], [ 1.000000e+00, %9516 ]
  %9529 = phi float [ %9526, %9520 ], [ %9503, %9516 ]
  %9530 = fcmp fast une float %9507, 0.000000e+00
  br i1 %9530, label %9531, label %9538, !dx.controlflow.hints !211

; <label>:9531                                    ; preds = %9527
  %9532 = fmul fast float %9507, 0x3FF7154760000000
  %9533 = call float @dx.op.unary.f32(i32 21, float %9532)  ; Exp(value)
  %9534 = fsub fast float 1.000000e+00, %9533
  %9535 = fmul fast float %9504, %9534
  %9536 = fsub fast float -0.000000e+00, %9535
  %9537 = fdiv fast float %9536, %9507
  br label %9538

; <label>:9538                                    ; preds = %9531, %9527
  %9539 = phi float [ %9533, %9531 ], [ 1.000000e+00, %9527 ]
  %9540 = phi float [ %9537, %9531 ], [ %9504, %9527 ]
  %9541 = fcmp fast ogt float %9437, %9439
  br i1 %9541, label %9542, label %9562

; <label>:9542                                    ; preds = %9538
  %9543 = fsub fast float 1.000000e+00, %9439
  %9544 = fmul fast float %9455, %9543
  %9545 = fmul fast float %9456, %9543
  %9546 = fmul fast float %9457, %9543
  %9547 = fmul fast float %9458, %9543
  %9548 = fcmp fast une float %9547, 0.000000e+00
  br i1 %9548, label %9549, label %9600, !dx.controlflow.hints !212

; <label>:9549                                    ; preds = %9542
  %9550 = fmul fast float %9547, 0x3FF7154760000000
  %9551 = call float @dx.op.unary.f32(i32 21, float %9550)  ; Exp(value)
  %9552 = fsub fast float 1.000000e+00, %9551
  %9553 = fmul fast float %9544, %9552
  %9554 = fsub fast float -0.000000e+00, %9553
  %9555 = fmul fast float %9545, %9552
  %9556 = fsub fast float -0.000000e+00, %9555
  %9557 = fmul fast float %9546, %9552
  %9558 = fsub fast float -0.000000e+00, %9557
  %9559 = fdiv fast float %9554, %9547
  %9560 = fdiv fast float %9556, %9547
  %9561 = fdiv fast float %9558, %9547
  br label %9600

; <label>:9562                                    ; preds = %9538
  %9563 = fsub fast float 1.000000e+00, %9437
  %9564 = fmul fast float %9468, %9563
  %9565 = fmul fast float %9479, %9563
  %9566 = fmul fast float %9490, %9563
  %9567 = fmul fast float %9469, %9563
  %9568 = fmul fast float %9480, %9563
  %9569 = fmul fast float %9491, %9563
  %9570 = fcmp fast une float %9567, 0.000000e+00
  br i1 %9570, label %9571, label %9578, !dx.controlflow.hints !211

; <label>:9571                                    ; preds = %9562
  %9572 = fmul fast float %9567, 0x3FF7154760000000
  %9573 = call float @dx.op.unary.f32(i32 21, float %9572)  ; Exp(value)
  %9574 = fsub fast float 1.000000e+00, %9573
  %9575 = fmul fast float %9564, %9574
  %9576 = fsub fast float -0.000000e+00, %9575
  %9577 = fdiv fast float %9576, %9567
  br label %9578

; <label>:9578                                    ; preds = %9571, %9562
  %9579 = phi float [ %9577, %9571 ], [ %9564, %9562 ]
  %9580 = phi float [ %9573, %9571 ], [ 1.000000e+00, %9562 ]
  %9581 = fcmp fast une float %9568, 0.000000e+00
  br i1 %9581, label %9582, label %9589, !dx.controlflow.hints !211

; <label>:9582                                    ; preds = %9578
  %9583 = fmul fast float %9568, 0x3FF7154760000000
  %9584 = call float @dx.op.unary.f32(i32 21, float %9583)  ; Exp(value)
  %9585 = fsub fast float 1.000000e+00, %9584
  %9586 = fmul fast float %9565, %9585
  %9587 = fsub fast float -0.000000e+00, %9586
  %9588 = fdiv fast float %9587, %9568
  br label %9589

; <label>:9589                                    ; preds = %9582, %9578
  %9590 = phi float [ %9588, %9582 ], [ %9565, %9578 ]
  %9591 = phi float [ %9584, %9582 ], [ 1.000000e+00, %9578 ]
  %9592 = fcmp fast une float %9569, 0.000000e+00
  br i1 %9592, label %9593, label %9600, !dx.controlflow.hints !211

; <label>:9593                                    ; preds = %9589
  %9594 = fmul fast float %9569, 0x3FF7154760000000
  %9595 = call float @dx.op.unary.f32(i32 21, float %9594)  ; Exp(value)
  %9596 = fsub fast float 1.000000e+00, %9595
  %9597 = fmul fast float %9566, %9596
  %9598 = fsub fast float -0.000000e+00, %9597
  %9599 = fdiv fast float %9598, %9569
  br label %9600

; <label>:9600                                    ; preds = %9593, %9589, %9549, %9542
  %9601 = phi float [ %9599, %9593 ], [ %9561, %9549 ], [ %9546, %9542 ], [ %9566, %9589 ]
  %9602 = phi float [ %9590, %9593 ], [ %9560, %9549 ], [ %9545, %9542 ], [ %9590, %9589 ]
  %9603 = phi float [ %9579, %9593 ], [ %9559, %9549 ], [ %9544, %9542 ], [ %9579, %9589 ]
  %9604 = phi float [ %9595, %9593 ], [ %9551, %9549 ], [ 1.000000e+00, %9542 ], [ 1.000000e+00, %9589 ]
  %9605 = phi float [ %9591, %9593 ], [ %9551, %9549 ], [ 1.000000e+00, %9542 ], [ %9591, %9589 ]
  %9606 = phi float [ %9580, %9593 ], [ %9551, %9549 ], [ 1.000000e+00, %9542 ], [ %9580, %9589 ]
  %9607 = fmul fast float %9606, %9518
  %9608 = fmul fast float %9605, %9529
  %9609 = fmul fast float %9604, %9540
  %9610 = fadd fast float %9607, %9603
  %9611 = fadd fast float %9608, %9602
  %9612 = fadd fast float %9609, %9601
  %9613 = fmul fast float %9606, %9517
  %9614 = fmul fast float %9605, %9528
  %9615 = fmul fast float %9604, %9539
  br label %9616

; <label>:9616                                    ; preds = %9600, %9411
  %9617 = phi float [ %9615, %9600 ], [ %9417, %9411 ]
  %9618 = phi float [ %9614, %9600 ], [ %9416, %9411 ]
  %9619 = phi float [ %9613, %9600 ], [ %9415, %9411 ]
  %9620 = phi float [ %9612, %9600 ], [ %9414, %9411 ]
  %9621 = phi float [ %9611, %9600 ], [ %9413, %9411 ]
  %9622 = phi float [ %9610, %9600 ], [ %9412, %9411 ]
  %9623 = call float @dx.op.dot3.f32(i32 55, float %9619, float %9618, float %9617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9624 = call float @dx.op.dot3.f32(i32 55, float %9622, float %9621, float %9620, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9625 = select i1 %2504, float %9623, float %9619
  %9626 = select i1 %2504, float %9623, float %9618
  %9627 = select i1 %2504, float 1.000000e+00, float %9617
  %9628 = select i1 %2504, float %9624, float %9622
  %9629 = select i1 %2504, float 0.000000e+00, float %9621
  %9630 = select i1 %2504, float 0.000000e+00, float %9620
  %9631 = fmul fast float %9625, %8860
  %9632 = fmul fast float %9626, %8862
  %9633 = fmul fast float %9627, %8864
  %9634 = fadd fast float %9631, %9628
  %9635 = fadd fast float %9632, %9629
  %9636 = fadd fast float %9630, %9633
  %9637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %9638 = extractvalue %dx.types.CBufRet.f32 %9637, 2
  %9639 = extractvalue %dx.types.CBufRet.f32 %9637, 3
  %9640 = fmul fast float %9638, %99
  %9641 = fmul fast float %9639, %100
  %9642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %62, float %9640, float %9641, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9643 = extractvalue %dx.types.ResRet.f32 %9642, 0
  %9644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %9640, float %9641, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9645 = extractvalue %dx.types.ResRet.f32 %9644, 0
  %9646 = extractvalue %dx.types.ResRet.f32 %9644, 1
  %9647 = extractvalue %dx.types.ResRet.f32 %9644, 2
  %9648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9649 = extractvalue %dx.types.CBufRet.f32 %9648, 1
  %9650 = fmul fast float %9649, %9645
  %9651 = fmul fast float %9649, %9646
  %9652 = fmul fast float %9649, %9647
  %9653 = fmul fast float %9643, %9619
  %9654 = call float @dx.op.dot3.f32(i32 55, float %9643, float %9643, float %9643, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9655 = call float @dx.op.dot3.f32(i32 55, float %9650, float %9651, float %9652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9656 = select i1 %2504, float %9654, float %9643
  %9657 = select i1 %2504, float 1.000000e+00, float %9643
  %9658 = select i1 %2504, float %9655, float %9650
  %9659 = select i1 %2504, float 0.000000e+00, float %9651
  %9660 = select i1 %2504, float 0.000000e+00, float %9652
  %9661 = fmul fast float %9656, %9634
  %9662 = fmul fast float %9656, %9635
  %9663 = fmul fast float %9657, %9636
  %9664 = fadd fast float %9661, %9658
  %9665 = fadd fast float %9662, %9659
  %9666 = fadd fast float %9660, %9663
  br label %9667

; <label>:9667                                    ; preds = %9616, %8833
  %9668 = phi float [ %8860, %8833 ], [ %9664, %9616 ]
  %9669 = phi float [ %8862, %8833 ], [ %9665, %9616 ]
  %9670 = phi float [ %8864, %8833 ], [ %9666, %9616 ]
  %9671 = phi float [ 1.000000e+00, %8833 ], [ %9653, %9616 ]
  %9672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %9673 = extractvalue %dx.types.CBufRet.f32 %9672, 2
  %9674 = extractvalue %dx.types.CBufRet.f32 %9672, 3
  %9675 = fmul fast float %9673, %99
  %9676 = fmul fast float %9674, %100
  %9677 = call float @dx.op.unary.f32(i32 7, float %9675)  ; Saturate(value)
  %9678 = call float @dx.op.unary.f32(i32 7, float %9676)  ; Saturate(value)
  %9679 = select i1 %116, i32 0, i32 2
  %9680 = or i32 %9679, 1
  %9681 = uitofp i32 %9680 to float
  %9682 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %62, float %9677, float %9678, float %9681, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9683 = extractvalue %dx.types.ResRet.f32 %9682, 0
  %9684 = extractvalue %dx.types.ResRet.f32 %9682, 1
  %9685 = extractvalue %dx.types.ResRet.f32 %9682, 2
  %9686 = extractvalue %dx.types.ResRet.f32 %9682, 3
  %9687 = add nuw nsw i32 %9679, 2
  %9688 = uitofp i32 %9687 to float
  %9689 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %62, float %9677, float %9678, float %9688, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9690 = extractvalue %dx.types.ResRet.f32 %9689, 0
  %9691 = extractvalue %dx.types.ResRet.f32 %9689, 1
  %9692 = extractvalue %dx.types.ResRet.f32 %9689, 2
  %9693 = extractvalue %dx.types.ResRet.f32 %9689, 3
  %9694 = call float @dx.op.binary.f32(i32 35, float %9684, float %9685)  ; FMax(a,b)
  %9695 = call float @dx.op.binary.f32(i32 35, float %9683, float %9694)  ; FMax(a,b)
  %9696 = call float @dx.op.binary.f32(i32 35, float %9695, float %9686)  ; FMax(a,b)
  %9697 = call float @dx.op.binary.f32(i32 36, float %9691, float %9692)  ; FMin(a,b)
  %9698 = call float @dx.op.binary.f32(i32 36, float %9690, float %9697)  ; FMin(a,b)
  %9699 = call float @dx.op.binary.f32(i32 36, float %9698, float %9693)  ; FMin(a,b)
  %9700 = fmul fast float %9696, 2.550000e+02
  %9701 = fadd fast float %9700, 0x3F70101020000000
  %9702 = fptoui float %9701 to i32
  %9703 = fmul fast float %9699, 2.550000e+02
  %9704 = fadd fast float %9703, 0x3F70101020000000
  %9705 = fptoui float %9704 to i32
  %9706 = icmp ult i32 %9702, %9705
  br i1 %9706, label %9707, label %9759

; <label>:9707                                    ; preds = %9667
  %9708 = fcmp fast ogt float %87, 9.843750e-01
  %9709 = fadd fast float %88, -4.000000e+00
  %9710 = select i1 %9708, float -4.000000e+00, float %9709
  %9711 = call float @dx.op.binary.f32(i32 35, float %9710, float 0.000000e+00)  ; FMax(a,b)
  %9712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9713 = extractvalue %dx.types.CBufRet.f32 %9712, 0
  %9714 = fadd fast float %9713, %9711
  %9715 = extractvalue %dx.types.CBufRet.f32 %9712, 2
  %9716 = fmul fast float %9714, %9715
  %9717 = call float @dx.op.unary.f32(i32 23, float %9716)  ; Log(value)
  %9718 = extractvalue %dx.types.CBufRet.f32 %9712, 3
  %9719 = fmul fast float %9718, %9717
  %9720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9721 = extractvalue %dx.types.CBufRet.f32 %9720, 2
  %9722 = fmul fast float %9719, %9721
  %9723 = call float @dx.op.unary.f32(i32 7, float %9722)  ; Saturate(value)
  %9724 = uitofp i32 %9702 to float
  %9725 = uitofp i32 %9705 to float
  %9726 = fadd fast float %9724, 5.000000e-01
  %9727 = fadd fast float %9725, 5.000000e-01
  %9728 = fmul fast float %9721, %9726
  %9729 = fmul fast float %9721, %9727
  %9730 = fadd fast float %9728, 0x3F0FFB4800000000
  %9731 = fadd fast float %9729, 0xBF0FFB4800000000
  %9732 = call float @dx.op.binary.f32(i32 35, float %9723, float %9730)  ; FMax(a,b)
  %9733 = call float @dx.op.binary.f32(i32 36, float %9732, float %9731)  ; FMin(a,b)
  %9734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9735 = extractvalue %dx.types.CBufRet.f32 %9734, 1
  %9736 = extractvalue %dx.types.CBufRet.f32 %9734, 2
  %9737 = extractvalue %dx.types.CBufRet.f32 %9734, 0
  %9738 = select i1 %116, float 0.000000e+00, float %9737
  %9739 = fmul fast float %9735, %9733
  %9740 = fadd fast float %9738, %9739
  %9741 = fadd fast float %9738, %9736
  %9742 = fsub fast float %9735, %9736
  %9743 = fadd fast float %9742, %9738
  %9744 = call float @dx.op.binary.f32(i32 35, float %9740, float %9741)  ; FMax(a,b)
  %9745 = call float @dx.op.binary.f32(i32 36, float %9744, float %9743)  ; FMin(a,b)
  %9746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %60, float %9677, float %9678, float %9745, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9747 = extractvalue %dx.types.ResRet.f32 %9746, 0
  %9748 = extractvalue %dx.types.ResRet.f32 %9746, 1
  %9749 = extractvalue %dx.types.ResRet.f32 %9746, 2
  %9750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %60, float %9677, float %9678, float %9745, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9751 = extractvalue %dx.types.ResRet.f32 %9750, 0
  %9752 = extractvalue %dx.types.ResRet.f32 %9750, 1
  %9753 = extractvalue %dx.types.ResRet.f32 %9750, 2
  %9754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9755 = extractvalue %dx.types.CBufRet.f32 %9754, 1
  %9756 = fmul fast float %9755, %9751
  %9757 = fmul fast float %9755, %9752
  %9758 = fmul fast float %9755, %9753
  br label %9759

; <label>:9759                                    ; preds = %9707, %9667
  %9760 = phi float [ %9747, %9707 ], [ 1.000000e+00, %9667 ]
  %9761 = phi float [ %9748, %9707 ], [ 1.000000e+00, %9667 ]
  %9762 = phi float [ %9749, %9707 ], [ 1.000000e+00, %9667 ]
  %9763 = phi float [ %9756, %9707 ], [ 0.000000e+00, %9667 ]
  %9764 = phi float [ %9757, %9707 ], [ 0.000000e+00, %9667 ]
  %9765 = phi float [ %9758, %9707 ], [ 0.000000e+00, %9667 ]
  %9766 = fmul fast float %9760, %9671
  %9767 = call float @dx.op.dot3.f32(i32 55, float %9760, float %9761, float %9762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9768 = call float @dx.op.dot3.f32(i32 55, float %9763, float %9764, float %9765, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9769 = select i1 %2504, float %9767, float %9760
  %9770 = select i1 %2504, float %9767, float %9761
  %9771 = select i1 %2504, float 1.000000e+00, float %9762
  %9772 = select i1 %2504, float %9768, float %9763
  %9773 = select i1 %2504, float 0.000000e+00, float %9764
  %9774 = select i1 %2504, float 0.000000e+00, float %9765
  %9775 = fmul fast float %9769, %9668
  %9776 = fmul fast float %9770, %9669
  %9777 = fmul fast float %9771, %9670
  %9778 = fadd fast float %9775, %9772
  %9779 = fadd fast float %9776, %9773
  %9780 = fadd fast float %9774, %9777
  %9781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9782 = extractvalue %dx.types.CBufRet.i32 %9781, 3
  %9783 = and i32 %9782, 3
  %9784 = icmp ne i32 %9783, 0
  %9785 = and i32 %9782, 4
  %9786 = icmp ne i32 %9785, 0
  %9787 = and i1 %9784, %9786
  %9788 = and i1 %2504, %9787
  br i1 %9788, label %9789, label %9795

; <label>:9789                                    ; preds = %9759
  %9790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9791 = extractvalue %dx.types.CBufRet.f32 %9790, 1
  %9792 = fadd fast float %9766, -1.000000e+00
  %9793 = fmul fast float %9791, %9792
  %9794 = fadd fast float %9793, 1.000000e+00
  br label %9795

; <label>:9795                                    ; preds = %9789, %9759
  %9796 = phi float [ %9794, %9789 ], [ %9766, %9759 ]
  %9797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9798 = extractvalue %dx.types.CBufRet.f32 %9797, 0
  br i1 %2504, label %9799, label %9813

; <label>:9799                                    ; preds = %9795
  %9800 = fadd fast float %9778, %9779
  %9801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9802 = extractvalue %dx.types.CBufRet.f32 %9801, 3
  %9803 = extractvalue %dx.types.CBufRet.f32 %8844, 1
  %9804 = fsub fast float %8850, %8838
  %9805 = fadd fast float %9804, %8851
  %9806 = fsub fast float %9805, %9803
  %9807 = extractvalue %dx.types.CBufRet.f32 %8844, 2
  %9808 = fmul fast float %9806, %9807
  %9809 = call float @dx.op.unary.f32(i32 7, float %9808)  ; Saturate(value)
  %9810 = fsub fast float %9809, %9802
  %9811 = fmul fast float %9810, %9796
  %9812 = fadd fast float %9811, %9802
  br label %9816

; <label>:9813                                    ; preds = %9795
  %9814 = fmul fast float %9798, %9779
  %9815 = fmul fast float %9798, %9780
  br label %9816

; <label>:9816                                    ; preds = %9813, %9799
  %9817 = phi float [ %9800, %9799 ], [ %9778, %9813 ]
  %9818 = phi float [ %9812, %9799 ], [ %9814, %9813 ]
  %9819 = phi float [ 1.000000e+00, %9799 ], [ %9815, %9813 ]
  %9820 = fmul float %9798, %9817
  switch i32 %8765, label %10118 [
    i32 0, label %10133
    i32 1, label %9821
    i32 2, label %9822
    i32 3, label %9834
    i32 4, label %9843
    i32 5, label %9844
    i32 6, label %9845
    i32 12, label %9846
    i32 13, label %9847
    i32 14, label %9859
    i32 15, label %9871
    i32 16, label %9883
    i32 17, label %9884
    i32 63, label %10117
    i32 18, label %9885
    i32 25, label %9907
    i32 27, label %9908
    i32 28, label %9909
    i32 29, label %9910
    i32 31, label %9911
    i32 32, label %9934
    i32 33, label %9993
    i32 37, label %10011
    i32 38, label %10012
    i32 39, label %10021
    i32 40, label %10044
    i32 41, label %10048
    i32 52, label %10049
    i32 53, label %10050
    i32 54, label %10051
    i32 55, label %10052
    i32 56, label %10053
    i32 57, label %10055
    i32 58, label %10057
    i32 59, label %10095
    i32 60, label %10097
    i32 61, label %10099
    i32 64, label %10101
    i32 62, label %10116
  ]

; <label>:9821                                    ; preds = %9816
  br label %10118

; <label>:9822                                    ; preds = %9816
  %9823 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2292, float %2293, float %2291, float %2292, float %2293)  ; Dot3(ax,ay,az,bx,by,bz)
  %9824 = call float @dx.op.unary.f32(i32 25, float %9823)  ; Rsqrt(value)
  %9825 = fmul fast float %2291, 5.000000e-01
  %9826 = fmul fast float %9825, %9824
  %9827 = fmul fast float %2292, 5.000000e-01
  %9828 = fmul fast float %9827, %9824
  %9829 = fmul fast float %2293, 5.000000e-01
  %9830 = fmul fast float %9829, %9824
  %9831 = fadd fast float %9826, 5.000000e-01
  %9832 = fadd fast float %9828, 5.000000e-01
  %9833 = fadd fast float %9830, 5.000000e-01
  br label %10118

; <label>:9834                                    ; preds = %9816
  %9835 = fcmp fast ole float %2462, 0x3FA4B5DCC0000000
  %9836 = fmul fast float %2462, 0x3FB3D07220000000
  %9837 = fadd fast float %2462, 0x3FAC28F5C0000000
  %9838 = fmul fast float %9837, 0x3FEE54EDE0000000
  %9839 = call float @dx.op.unary.f32(i32 23, float %9838)  ; Log(value)
  %9840 = fmul fast float %9839, 0x4003333340000000
  %9841 = call float @dx.op.unary.f32(i32 21, float %9840)  ; Exp(value)
  %9842 = select i1 %9835, float %9836, float %9841
  br label %10118

; <label>:9843                                    ; preds = %9816
  br label %10118

; <label>:9844                                    ; preds = %9816
  br label %10118

; <label>:9845                                    ; preds = %9816
  br label %10118

; <label>:9846                                    ; preds = %9816
  br label %10118

; <label>:9847                                    ; preds = %9816
  %9848 = and i32 %8834, 1023
  %9849 = uitofp i32 %9848 to float
  %9850 = lshr i32 %8834, 10
  %9851 = and i32 %9850, 1023
  %9852 = uitofp i32 %9851 to float
  %9853 = lshr i32 %8834, 20
  %9854 = and i32 %9853, 1023
  %9855 = uitofp i32 %9854 to float
  %9856 = fmul fast float %9849, 0x3F50040100000000
  %9857 = fmul fast float %9852, 0x3F50040100000000
  %9858 = fmul fast float %9855, 0x3F50040100000000
  br label %10118

; <label>:9859                                    ; preds = %9816
  %9860 = and i32 %8834, 1023
  %9861 = uitofp i32 %9860 to float
  %9862 = lshr i32 %8834, 10
  %9863 = and i32 %9862, 1023
  %9864 = uitofp i32 %9863 to float
  %9865 = lshr i32 %8834, 20
  %9866 = and i32 %9865, 1023
  %9867 = uitofp i32 %9866 to float
  %9868 = fmul fast float %9861, 0x3F50040100000000
  %9869 = fmul fast float %9864, 0x3F50040100000000
  %9870 = fmul fast float %9867, 0x3F50040100000000
  br label %10118

; <label>:9871                                    ; preds = %9816
  %9872 = and i32 %8834, 1023
  %9873 = uitofp i32 %9872 to float
  %9874 = lshr i32 %8834, 10
  %9875 = and i32 %9874, 1023
  %9876 = uitofp i32 %9875 to float
  %9877 = lshr i32 %8834, 20
  %9878 = and i32 %9877, 1023
  %9879 = uitofp i32 %9878 to float
  %9880 = fmul fast float %9873, 0x3F50040100000000
  %9881 = fmul fast float %9876, 0x3F50040100000000
  %9882 = fmul fast float %9879, 0x3F50040100000000
  br label %10118

; <label>:9883                                    ; preds = %9816
  br label %10118

; <label>:9884                                    ; preds = %9816
  br label %10118

; <label>:9885                                    ; preds = %9816
  %9886 = fcmp fast ogt float %2312, 0x3FB99999A0000000
  %9887 = fcmp fast ogt float %2313, 0x3FB99999A0000000
  %9888 = or i1 %9886, %9887
  %9889 = fcmp fast ogt float %2314, 0x3FB99999A0000000
  %9890 = or i1 %9888, %9889
  %9891 = fcmp fast olt float %2312, 0x3FB99999A0000000
  %9892 = fcmp fast olt float %2313, 0x3FB99999A0000000
  %9893 = or i1 %9891, %9892
  %9894 = fcmp fast olt float %2314, 0x3FB99999A0000000
  %9895 = or i1 %9893, %9894
  %9896 = fadd fast float %2312, %2303
  %9897 = fcmp fast ogt float %9896, 1.000000e+00
  %9898 = fadd fast float %2313, %2304
  %9899 = fcmp fast ogt float %9898, 1.000000e+00
  %9900 = or i1 %9897, %9899
  %9901 = fadd fast float %2314, %2305
  %9902 = fcmp fast ogt float %9901, 1.000000e+00
  %9903 = or i1 %9900, %9902
  %9904 = select i1 %9903, float 1.000000e+00, float 0.000000e+00
  %9905 = and i1 %9890, %9895
  %9906 = select i1 %9905, float 1.000000e+00, float 0.000000e+00
  br label %10118

; <label>:9907                                    ; preds = %9816
  br label %10118

; <label>:9908                                    ; preds = %9816
  br label %10118

; <label>:9909                                    ; preds = %9816
  br label %10118

; <label>:9910                                    ; preds = %9816
  br label %10118

; <label>:9911                                    ; preds = %9816
  %9912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %9913 = extractvalue %dx.types.CBufRet.f32 %9912, 0
  %9914 = extractvalue %dx.types.CBufRet.f32 %9912, 2
  %9915 = extractvalue %dx.types.CBufRet.f32 %9912, 3
  %9916 = fcmp fast olt float %2462, %9913
  br i1 %9916, label %9917, label %9931

; <label>:9917                                    ; preds = %11766, %11764, %9931, %9911
  %9918 = phi i32 [ 0, %9911 ], [ 1, %9931 ], [ 2, %11764 ], [ 3, %11766 ]
  %9919 = mul i32 %9918, 3
  %9920 = add i32 0, %9919
  %9921 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9920
  %9922 = load float, float* %9921, align 4
  %9923 = mul i32 %9918, 3
  %9924 = add i32 1, %9923
  %9925 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9924
  %9926 = load float, float* %9925, align 4
  %9927 = mul i32 %9918, 3
  %9928 = add i32 2, %9927
  %9929 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9928
  %9930 = load float, float* %9929, align 4
  br label %10118

; <label>:9931                                    ; preds = %9911
  %9932 = extractvalue %dx.types.CBufRet.f32 %9912, 1
  %9933 = fcmp fast olt float %2462, %9932
  br i1 %9933, label %9917, label %11764

; <label>:9934                                    ; preds = %9816
  %9935 = fcmp fast ole float %2303, 0x3F69A5C380000000
  %9936 = fcmp fast ole float %2304, 0x3F69A5C380000000
  %9937 = fcmp fast ole float %2305, 0x3F69A5C380000000
  %9938 = fmul fast float %2303, 0x4029D70A40000000
  %9939 = fmul fast float %2304, 0x4029D70A40000000
  %9940 = fmul fast float %2305, 0x4029D70A40000000
  %9941 = call float @dx.op.unary.f32(i32 23, float %2303)  ; Log(value)
  %9942 = call float @dx.op.unary.f32(i32 23, float %2304)  ; Log(value)
  %9943 = call float @dx.op.unary.f32(i32 23, float %2305)  ; Log(value)
  %9944 = fmul fast float %9941, 0x3FDAAAAAA0000000
  %9945 = fmul fast float %9942, 0x3FDAAAAAA0000000
  %9946 = fmul fast float %9943, 0x3FDAAAAAA0000000
  %9947 = call float @dx.op.unary.f32(i32 21, float %9944)  ; Exp(value)
  %9948 = call float @dx.op.unary.f32(i32 21, float %9945)  ; Exp(value)
  %9949 = call float @dx.op.unary.f32(i32 21, float %9946)  ; Exp(value)
  %9950 = fmul fast float %9947, 0x3FF0E147A0000000
  %9951 = fmul fast float %9948, 0x3FF0E147A0000000
  %9952 = fmul fast float %9949, 0x3FF0E147A0000000
  %9953 = fadd fast float %9950, 0xBFAC28F5C0000000
  %9954 = fadd fast float %9951, 0xBFAC28F5C0000000
  %9955 = fadd fast float %9952, 0xBFAC28F5C0000000
  %9956 = select i1 %9935, float %9938, float %9953
  %9957 = select i1 %9936, float %9939, float %9954
  %9958 = select i1 %9937, float %9940, float %9955
  %9959 = call float @dx.op.dot3.f32(i32 55, float %9956, float %9957, float %9958, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9960 = fcmp fast olt float %9959, 0x3FA0101020000000
  br i1 %9960, label %9969, label %9961

; <label>:9961                                    ; preds = %9934
  %9962 = fcmp fast ogt float %9959, 0x3FEEFEFF00000000
  br i1 %9962, label %9969, label %9963

; <label>:9963                                    ; preds = %9961
  %9964 = fcmp fast ogt float %9959, 0x3FEF5F5F60000000
  br i1 %9964, label %9969, label %9965

; <label>:9965                                    ; preds = %9963
  %9966 = fadd fast float %9959, %9959
  %9967 = fcmp fast ogt float %9966, 2.550000e+02
  br i1 %9967, label %9968, label %9969

; <label>:9968                                    ; preds = %9965
  br label %9969

; <label>:9969                                    ; preds = %9968, %9965, %9963, %9961, %9934
  %9970 = phi float [ 1.000000e+00, %9968 ], [ %9820, %9965 ], [ 1.000000e+00, %9934 ], [ 0x3FBD1D1D20000000, %9961 ], [ 0.000000e+00, %9963 ]
  %9971 = phi float [ 0.000000e+00, %9968 ], [ %9818, %9965 ], [ 0x3FE6666660000000, %9934 ], [ 1.000000e+00, %9961 ], [ 0.000000e+00, %9963 ]
  %9972 = phi float [ 1.000000e+00, %9968 ], [ %9819, %9965 ], [ 0.000000e+00, %9934 ], [ 0x3FDD5D5D60000000, %9961 ], [ 1.000000e+00, %9963 ]
  %9973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %9974 = extractvalue %dx.types.CBufRet.f32 %9973, 3
  %9975 = fmul fast float %9974, 8.000000e+00
  %9976 = fmul fast float %100, 5.000000e+02
  %9977 = fmul fast float %9976, %9674
  %9978 = fsub fast float %9977, %9975
  %9979 = call float @dx.op.unary.f32(i32 13, float %9978)  ; Sin(value)
  %9980 = fmul fast float %9979, %9979
  %9981 = fmul fast float %9980, 2.000000e+00
  %9982 = fadd fast float %9981, -1.000000e+00
  %9983 = call float @dx.op.unary.f32(i32 7, float %9982)  ; Saturate(value)
  %9984 = fsub fast float %9970, %9820
  %9985 = fsub fast float %9971, %9818
  %9986 = fsub fast float %9972, %9819
  %9987 = fmul fast float %9983, %9984
  %9988 = fmul fast float %9983, %9985
  %9989 = fmul fast float %9983, %9986
  %9990 = fadd fast float %9987, %9820
  %9991 = fadd fast float %9988, %9818
  %9992 = fadd fast float %9989, %9819
  br label %10118

; <label>:9993                                    ; preds = %9816
  %9994 = fcmp fast olt float %88, 1.280000e+02
  br i1 %9994, label %9995, label %10009

; <label>:9995                                    ; preds = %11782, %11780, %11778, %11776, %11774, %11772, %11770, %11768, %10009, %9993
  %9996 = phi i32 [ 0, %9993 ], [ 1, %10009 ], [ 2, %11768 ], [ 3, %11770 ], [ 4, %11772 ], [ 5, %11774 ], [ 6, %11776 ], [ 7, %11778 ], [ 8, %11780 ], [ 9, %11782 ]
  %9997 = mul i32 %9996, 3
  %9998 = add i32 0, %9997
  %9999 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9998
  %10000 = load float, float* %9999, align 4
  %10001 = mul i32 %9996, 3
  %10002 = add i32 1, %10001
  %10003 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10002
  %10004 = load float, float* %10003, align 4
  %10005 = mul i32 %9996, 3
  %10006 = add i32 2, %10005
  %10007 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10006
  %10008 = load float, float* %10007, align 4
  br label %10118

; <label>:10009                                   ; preds = %9993
  %10010 = fcmp fast olt float %88, 2.560000e+02
  br i1 %10010, label %9995, label %11768

; <label>:10011                                   ; preds = %9816
  br label %10118

; <label>:10012                                   ; preds = %9816
  %10013 = bitcast i32 %8834 to float
  %10014 = fcmp fast ogt float %10013, 0.000000e+00
  %10015 = select i1 %10014, float 0.000000e+00, float 1.000000e+00
  %10016 = fcmp fast olt float %10013, 1.000000e+00
  %10017 = select i1 %10016, float 1.000000e+00, float 0.000000e+00
  %10018 = select i1 %10016, float %10015, float 0.000000e+00
  %10019 = fmul fast float %10017, %2462
  %10020 = fmul fast float %10018, %2462
  br label %10118

; <label>:10021                                   ; preds = %9816
  %10022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %10023 = extractvalue %dx.types.CBufRet.f32 %10022, 0
  %10024 = extractvalue %dx.types.CBufRet.f32 %10022, 2
  %10025 = extractvalue %dx.types.CBufRet.f32 %10022, 3
  %10026 = fcmp fast olt float %8855, %10023
  br i1 %10026, label %10027, label %10041

; <label>:10027                                   ; preds = %11786, %11784, %10041, %10021
  %10028 = phi i32 [ 0, %10021 ], [ 1, %10041 ], [ 2, %11784 ], [ 3, %11786 ]
  %10029 = mul i32 %10028, 3
  %10030 = add i32 0, %10029
  %10031 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10030
  %10032 = load float, float* %10031, align 4
  %10033 = mul i32 %10028, 3
  %10034 = add i32 1, %10033
  %10035 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10034
  %10036 = load float, float* %10035, align 4
  %10037 = mul i32 %10028, 3
  %10038 = add i32 2, %10037
  %10039 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10038
  %10040 = load float, float* %10039, align 4
  br label %10118

; <label>:10041                                   ; preds = %10021
  %10042 = extractvalue %dx.types.CBufRet.f32 %10022, 1
  %10043 = fcmp fast olt float %8855, %10042
  br i1 %10043, label %10027, label %11784

; <label>:10044                                   ; preds = %9816
  %10045 = fadd fast float %8855, -5.000000e-01
  %10046 = fmul fast float %10045, 2.000000e+00
  %10047 = call float @dx.op.unary.f32(i32 7, float %10046)  ; Saturate(value)
  br label %10118

; <label>:10048                                   ; preds = %9816
  br label %10118

; <label>:10049                                   ; preds = %9816
  br label %10118

; <label>:10050                                   ; preds = %9816
  br label %10118

; <label>:10051                                   ; preds = %9816
  br label %10118

; <label>:10052                                   ; preds = %9816
  br label %10118

; <label>:10053                                   ; preds = %9816
  %10054 = bitcast i32 %8834 to float
  br label %10118

; <label>:10055                                   ; preds = %9816
  %10056 = bitcast i32 %8834 to float
  br label %10118

; <label>:10057                                   ; preds = %9816
  %10058 = and i32 %8834, 65535
  %10059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10058)  ; LegacyF16ToF32(value)
  %10060 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10061 = fptosi float %10060 to i32
  %10062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10063 = extractvalue %dx.types.CBufRet.f32 %10062, 0
  %10064 = extractvalue %dx.types.CBufRet.f32 %10062, 1
  %10065 = extractvalue %dx.types.CBufRet.f32 %10062, 2
  %10066 = fadd fast float %10063, %154
  %10067 = fadd fast float %10064, %155
  %10068 = fadd fast float %10065, %156
  %10069 = fptosi float %10066 to i32
  %10070 = fptosi float %10067 to i32
  %10071 = fptosi float %10068 to i32
  %10072 = xor i32 %10069, %10070
  %10073 = lshr i32 %10072, 1
  %10074 = and i32 %10073, 1
  %10075 = lshr i32 %10071, 1
  %10076 = and i32 %10075, 1
  %10077 = xor i32 %10076, 1
  %10078 = icmp ne i32 %10074, %10077
  switch i32 %10061, label %10118 [
    i32 -1, label %10079
    i32 -2, label %10080
    i32 -3, label %10082
    i32 -4, label %10084
    i32 -5, label %10086
    i32 -6, label %10087
    i32 -7, label %10088
  ]

; <label>:10079                                   ; preds = %10057
  br label %10118

; <label>:10080                                   ; preds = %10057
  %10081 = select i1 %10078, float 1.000000e+00, float 0.000000e+00
  br label %10118

; <label>:10082                                   ; preds = %10057
  %10083 = select i1 %10078, float 1.000000e+00, float 0.000000e+00
  br label %10118

; <label>:10084                                   ; preds = %10057
  %10085 = select i1 %10078, float 1.000000e+00, float 0.000000e+00
  br label %10118

; <label>:10086                                   ; preds = %10057
  br label %10118

; <label>:10087                                   ; preds = %10057
  br label %10118

; <label>:10088                                   ; preds = %10057
  %10089 = lshr i32 %8834, 16
  %10090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10089)  ; LegacyF16ToF32(value)
  %10091 = fmul fast float %10090, 0x3FD5555560000000
  %10092 = fsub fast float 1.000000e+00, %10091
  %10093 = fmul fast float %10091, %10059
  %10094 = fmul fast float %10092, %10059
  br label %10118

; <label>:10095                                   ; preds = %9816
  %10096 = bitcast i32 %8834 to float
  br label %10118

; <label>:10097                                   ; preds = %9816
  %10098 = bitcast i32 %8834 to float
  br label %10118

; <label>:10099                                   ; preds = %9816
  %10100 = bitcast i32 %8834 to float
  br label %10118

; <label>:10101                                   ; preds = %9816
  %10102 = and i32 %8834, 1023
  %10103 = uitofp i32 %10102 to float
  %10104 = lshr i32 %8834, 10
  %10105 = and i32 %10104, 1023
  %10106 = uitofp i32 %10105 to float
  %10107 = lshr i32 %8834, 20
  %10108 = and i32 %10107, 1023
  %10109 = uitofp i32 %10108 to float
  %10110 = fmul fast float %10103, 0x3F60040100000000
  %10111 = fmul fast float %10106, 0x3F60040100000000
  %10112 = fmul fast float %10109, 0x3F60040100000000
  %10113 = fadd fast float %10110, -1.000000e+00
  %10114 = fadd fast float %10111, -1.000000e+00
  %10115 = fadd fast float %10112, -1.000000e+00
  br label %10118

; <label>:10116                                   ; preds = %9816
  br label %10118

; <label>:10117                                   ; preds = %9816
  br label %10118

; <label>:10118                                   ; preds = %11786, %11782, %11766, %10117, %10116, %10101, %10099, %10097, %10095, %10088, %10087, %10086, %10084, %10082, %10080, %10079, %10057, %10055, %10053, %10052, %10051, %10050, %10049, %10048, %10044, %10027, %10012, %10011, %9995, %9969, %9917, %9910, %9909, %9908, %9907, %9885, %9884, %9883, %9871, %9859, %9847, %9846, %9845, %9844, %9843, %9834, %9822, %9821, %9816
  %10119 = phi float [ %9820, %9816 ], [ 0.000000e+00, %10116 ], [ %10113, %10101 ], [ %10100, %10099 ], [ %10098, %10097 ], [ %10096, %10095 ], [ %9820, %10057 ], [ 0.000000e+00, %10088 ], [ %10059, %10087 ], [ %10059, %10086 ], [ 0.000000e+00, %10084 ], [ %10083, %10082 ], [ %10081, %10080 ], [ %10059, %10079 ], [ %10056, %10055 ], [ %10054, %10053 ], [ 0.000000e+00, %10052 ], [ 0.000000e+00, %10051 ], [ 0.000000e+00, %10050 ], [ %154, %10048 ], [ %10047, %10044 ], [ %10019, %10012 ], [ 0.000000e+00, %10011 ], [ %9990, %9969 ], [ 0.000000e+00, %9910 ], [ 0.000000e+00, %9909 ], [ 0.000000e+00, %9908 ], [ 1.000000e+00, %9907 ], [ 0.000000e+00, %10117 ], [ 1.000000e+00, %9884 ], [ 5.000000e-01, %9883 ], [ %9880, %9871 ], [ %9868, %9859 ], [ %9856, %9847 ], [ %2465, %9846 ], [ %2463, %9845 ], [ %2312, %9844 ], [ %2249, %9843 ], [ %9842, %9834 ], [ %9831, %9822 ], [ %2303, %9821 ], [ %9922, %9917 ], [ %10000, %9995 ], [ %10032, %10027 ], [ 0.000000e+00, %10049 ], [ 1.000000e+00, %11766 ], [ 1.000000e+00, %11782 ], [ 1.000000e+00, %11786 ], [ %9904, %9885 ]
  %10120 = phi float [ %9818, %9816 ], [ 0.000000e+00, %10116 ], [ %10114, %10101 ], [ %10100, %10099 ], [ %10098, %10097 ], [ %10096, %10095 ], [ %9818, %10057 ], [ %10093, %10088 ], [ %10059, %10087 ], [ %10059, %10086 ], [ 0.000000e+00, %10084 ], [ 0.000000e+00, %10082 ], [ 0.000000e+00, %10080 ], [ %10059, %10079 ], [ %10056, %10055 ], [ %10054, %10053 ], [ 0.000000e+00, %10052 ], [ 0.000000e+00, %10051 ], [ 0.000000e+00, %10050 ], [ %155, %10048 ], [ %10047, %10044 ], [ %2462, %10012 ], [ 0.000000e+00, %10011 ], [ %9991, %9969 ], [ 1.000000e+00, %9910 ], [ 1.000000e+00, %9909 ], [ 1.000000e+00, %9908 ], [ 0x3FE6666660000000, %9907 ], [ 0.000000e+00, %10117 ], [ 1.000000e+00, %9884 ], [ 5.000000e-01, %9883 ], [ %9881, %9871 ], [ %9869, %9859 ], [ %9857, %9847 ], [ %2465, %9846 ], [ %2463, %9845 ], [ %2313, %9844 ], [ %2250, %9843 ], [ %9842, %9834 ], [ %9832, %9822 ], [ %2304, %9821 ], [ %9926, %9917 ], [ %10004, %9995 ], [ %10036, %10027 ], [ 0.000000e+00, %10049 ], [ 0.000000e+00, %11766 ], [ 0.000000e+00, %11782 ], [ 0.000000e+00, %11786 ], [ 0.000000e+00, %9885 ]
  %10121 = phi float [ %9819, %9816 ], [ 0.000000e+00, %10116 ], [ %10115, %10101 ], [ %10100, %10099 ], [ %10098, %10097 ], [ %10096, %10095 ], [ %9819, %10057 ], [ %10094, %10088 ], [ %10059, %10087 ], [ 0.000000e+00, %10086 ], [ %10085, %10084 ], [ 0.000000e+00, %10082 ], [ %10081, %10080 ], [ %10059, %10079 ], [ %10056, %10055 ], [ %10054, %10053 ], [ 0.000000e+00, %10052 ], [ 0.000000e+00, %10051 ], [ 0.000000e+00, %10050 ], [ %156, %10048 ], [ %10047, %10044 ], [ %10020, %10012 ], [ 0.000000e+00, %10011 ], [ %9992, %9969 ], [ 0.000000e+00, %9910 ], [ 0.000000e+00, %9909 ], [ 0.000000e+00, %9908 ], [ 0.000000e+00, %9907 ], [ 0.000000e+00, %10117 ], [ 1.000000e+00, %9884 ], [ 5.000000e-01, %9883 ], [ %9882, %9871 ], [ %9870, %9859 ], [ %9858, %9847 ], [ %2465, %9846 ], [ %2463, %9845 ], [ %2314, %9844 ], [ %2251, %9843 ], [ %9842, %9834 ], [ %9833, %9822 ], [ %2305, %9821 ], [ %9930, %9917 ], [ %10008, %9995 ], [ %10040, %10027 ], [ 1.000000e+00, %10049 ], [ 0.000000e+00, %11766 ], [ 0.000000e+00, %11782 ], [ 0.000000e+00, %11786 ], [ %9906, %9885 ]
  %10122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %10123 = extractvalue %dx.types.CBufRet.f32 %10122, 3
  %10124 = fsub fast float %10119, %9820
  %10125 = fsub fast float %10120, %9818
  %10126 = fsub fast float %10121, %9819
  %10127 = fmul fast float %10123, %10124
  %10128 = fmul fast float %10123, %10125
  %10129 = fmul fast float %10123, %10126
  %10130 = fadd fast float %10127, %9820
  %10131 = fadd fast float %10128, %9818
  %10132 = fadd fast float %10129, %9819
  br label %10133

; <label>:10133                                   ; preds = %10118, %9816
  %10134 = phi float [ %10130, %10118 ], [ %9820, %9816 ]
  %10135 = phi float [ %10131, %10118 ], [ %9818, %9816 ]
  %10136 = phi float [ %10132, %10118 ], [ %9819, %9816 ]
  %10137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %10138 = extractvalue %dx.types.CBufRet.f32 %10137, 0
  %10139 = bitcast float %10138 to i32
  %10140 = lshr i32 %10139, 8
  %10141 = and i32 %10140, 255
  %10142 = uitofp i32 %10141 to float
  %10143 = fptoui float %10142 to i32
  switch i32 %10143, label %10380 [
    i32 1, label %10144
    i32 2, label %10150
    i32 3, label %10156
    i32 4, label %10162
    i32 5, label %10168
    i32 6, label %10174
    i32 7, label %10180
    i32 8, label %10186
    i32 9, label %10192
    i32 10, label %10194
    i32 11, label %10215
    i32 12, label %10236
    i32 13, label %10248
    i32 14, label %10263
    i32 15, label %10268
    i32 16, label %10270
    i32 17, label %10272
    i32 18, label %10274
    i32 19, label %10276
    i32 20, label %10287
    i32 21, label %10298
    i32 22, label %10310
    i32 23, label %10344
    i32 24, label %10359
    i32 25, label %10374
    i32 26, label %10376
    i32 27, label %10378
  ]

; <label>:10144                                   ; preds = %10133
  %10145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10146 = extractvalue %dx.types.CBufRet.f32 %10145, 0
  %10147 = fmul fast float %10146, %8249
  %10148 = fmul fast float %10146, %8250
  %10149 = fmul fast float %10146, %8251
  br label %10380

; <label>:10150                                   ; preds = %10133
  %10151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10152 = extractvalue %dx.types.CBufRet.f32 %10151, 0
  %10153 = fmul fast float %10152, %8246
  %10154 = fmul fast float %10152, %8247
  %10155 = fmul fast float %10152, %8248
  br label %10380

; <label>:10156                                   ; preds = %10133
  %10157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10158 = extractvalue %dx.types.CBufRet.f32 %10157, 0
  %10159 = fmul fast float %10158, %2249
  %10160 = fmul fast float %10158, %2250
  %10161 = fmul fast float %10158, %2251
  br label %10380

; <label>:10162                                   ; preds = %10133
  %10163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10164 = extractvalue %dx.types.CBufRet.f32 %10163, 0
  %10165 = fmul fast float %10164, %8243
  %10166 = fmul fast float %10164, %8244
  %10167 = fmul fast float %10164, %8245
  br label %10380

; <label>:10168                                   ; preds = %10133
  %10169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10170 = extractvalue %dx.types.CBufRet.f32 %10169, 0
  %10171 = fmul fast float %10170, %8240
  %10172 = fmul fast float %10170, %8241
  %10173 = fmul fast float %10170, %8242
  br label %10380

; <label>:10174                                   ; preds = %10133
  %10175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10176 = extractvalue %dx.types.CBufRet.f32 %10175, 0
  %10177 = fmul fast float %10176, %5425
  %10178 = fmul fast float %10176, %5426
  %10179 = fmul fast float %10176, %5427
  br label %10380

; <label>:10180                                   ; preds = %10133
  %10181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10182 = extractvalue %dx.types.CBufRet.f32 %10181, 0
  %10183 = fmul fast float %10182, %5425
  %10184 = fmul fast float %10182, %5426
  %10185 = fmul fast float %10182, %5427
  br label %10380

; <label>:10186                                   ; preds = %10133
  %10187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10188 = extractvalue %dx.types.CBufRet.f32 %10187, 0
  %10189 = fmul fast float %5428, %10188
  %10190 = fmul fast float %5429, %10188
  %10191 = fmul fast float %5430, %10188
  br label %10380

; <label>:10192                                   ; preds = %10133
  %10193 = bitcast i32 %8834 to float
  br label %10380

; <label>:10194                                   ; preds = %10133
  %10195 = and i32 %8834, 1023
  %10196 = uitofp i32 %10195 to float
  %10197 = lshr i32 %8834, 10
  %10198 = and i32 %10197, 1023
  %10199 = uitofp i32 %10198 to float
  %10200 = lshr i32 %8834, 20
  %10201 = and i32 %10200, 1023
  %10202 = uitofp i32 %10201 to float
  %10203 = fmul fast float %10196, 0x3F60040100000000
  %10204 = fmul fast float %10199, 0x3F60040100000000
  %10205 = fmul fast float %10202, 0x3F60040100000000
  %10206 = fadd fast float %10203, -1.000000e+00
  %10207 = fadd fast float %10204, -1.000000e+00
  %10208 = fadd fast float %10205, -1.000000e+00
  %10209 = fcmp fast ogt float %10206, 0.000000e+00
  %10210 = select i1 %10209, float 1.000000e+00, float 0.000000e+00
  %10211 = fcmp fast ogt float %10207, 0.000000e+00
  %10212 = select i1 %10211, float 1.000000e+00, float 0.000000e+00
  %10213 = fcmp fast ogt float %10208, 0.000000e+00
  %10214 = select i1 %10213, float 1.000000e+00, float 0.000000e+00
  br label %10380

; <label>:10215                                   ; preds = %10133
  %10216 = and i32 %8834, 1023
  %10217 = uitofp i32 %10216 to float
  %10218 = lshr i32 %8834, 10
  %10219 = and i32 %10218, 1023
  %10220 = uitofp i32 %10219 to float
  %10221 = lshr i32 %8834, 20
  %10222 = and i32 %10221, 1023
  %10223 = uitofp i32 %10222 to float
  %10224 = fmul fast float %10217, 0x3F60040100000000
  %10225 = fmul fast float %10220, 0x3F60040100000000
  %10226 = fmul fast float %10223, 0x3F60040100000000
  %10227 = fadd fast float %10224, -1.000000e+00
  %10228 = fadd fast float %10225, -1.000000e+00
  %10229 = fadd fast float %10226, -1.000000e+00
  %10230 = fmul fast float %10229, %10228
  %10231 = fsub fast float %10229, %10230
  %10232 = fmul fast float %10228, %10227
  %10233 = fmul fast float %10231, %10227
  %10234 = fsub fast float %10228, %10232
  %10235 = fsub fast float %10231, %10233
  br label %10380

; <label>:10236                                   ; preds = %10133
  %10237 = and i32 %8834, 255
  %10238 = uitofp i32 %10237 to float
  %10239 = fmul fast float %10238, 0x3F70101020000000
  %10240 = lshr i32 %8834, 8
  %10241 = and i32 %10240, 255
  %10242 = uitofp i32 %10241 to float
  %10243 = fmul fast float %10242, 0x3F70101020000000
  %10244 = lshr i32 %8834, 16
  %10245 = and i32 %10244, 255
  %10246 = uitofp i32 %10245 to float
  %10247 = fmul fast float %10246, 0x3F70101020000000
  br label %10380

; <label>:10248                                   ; preds = %10133
  %10249 = and i32 %8834, 1023
  %10250 = uitofp i32 %10249 to float
  %10251 = lshr i32 %8834, 10
  %10252 = and i32 %10251, 1023
  %10253 = uitofp i32 %10252 to float
  %10254 = lshr i32 %8834, 20
  %10255 = and i32 %10254, 1023
  %10256 = uitofp i32 %10255 to float
  %10257 = fmul fast float %10250, 0x3F60040100000000
  %10258 = fmul fast float %10253, 0x3F60040100000000
  %10259 = fmul fast float %10256, 0x3F60040100000000
  %10260 = fadd fast float %10257, -1.000000e+00
  %10261 = fadd fast float %10258, -1.000000e+00
  %10262 = fadd fast float %10259, -1.000000e+00
  br label %10380

; <label>:10263                                   ; preds = %10133
  %10264 = icmp ne i32 %8834, 0
  %10265 = select i1 %10264, float 1.000000e+00, float %10134
  %10266 = select i1 %10264, float 0.000000e+00, float %10135
  %10267 = select i1 %10264, float 0.000000e+00, float %10136
  br label %10380

; <label>:10268                                   ; preds = %10133
  %10269 = bitcast i32 %8834 to float
  br label %10380

; <label>:10270                                   ; preds = %10133
  %10271 = bitcast i32 %8834 to float
  br label %10380

; <label>:10272                                   ; preds = %10133
  %10273 = bitcast i32 %8834 to float
  br label %10380

; <label>:10274                                   ; preds = %10133
  %10275 = bitcast i32 %8834 to float
  br label %10380

; <label>:10276                                   ; preds = %10133
  %10277 = and i32 %8834, 65535
  %10278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10277)  ; LegacyF16ToF32(value)
  %10279 = lshr i32 %8834, 16
  %10280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10279)  ; LegacyF16ToF32(value)
  %10281 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10283 = extractvalue %dx.types.CBufRet.f32 %10282, 0
  %10284 = fmul fast float %10283, %10278
  %10285 = fmul fast float %10283, %10280
  %10286 = fmul fast float %10283, %10281
  br label %10380

; <label>:10287                                   ; preds = %10133
  %10288 = and i32 %8834, 65535
  %10289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10288)  ; LegacyF16ToF32(value)
  %10290 = lshr i32 %8834, 16
  %10291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10290)  ; LegacyF16ToF32(value)
  %10292 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10294 = extractvalue %dx.types.CBufRet.f32 %10293, 0
  %10295 = fmul fast float %10294, %10289
  %10296 = fmul fast float %10294, %10291
  %10297 = fmul fast float %10294, %10292
  br label %10380

; <label>:10298                                   ; preds = %10133
  %10299 = and i32 %8834, 1023
  %10300 = uitofp i32 %10299 to float
  %10301 = lshr i32 %8834, 10
  %10302 = and i32 %10301, 1023
  %10303 = uitofp i32 %10302 to float
  %10304 = lshr i32 %8834, 20
  %10305 = and i32 %10304, 1023
  %10306 = uitofp i32 %10305 to float
  %10307 = fmul fast float %10300, 0x3F50040100000000
  %10308 = fmul fast float %10303, 0x3F50040100000000
  %10309 = fmul fast float %10306, 0x3F50040100000000
  br label %10380

; <label>:10310                                   ; preds = %10133
  %10311 = and i32 %8834, 1023
  %10312 = uitofp i32 %10311 to float
  %10313 = lshr i32 %8834, 10
  %10314 = and i32 %10313, 1023
  %10315 = uitofp i32 %10314 to float
  %10316 = lshr i32 %8834, 20
  %10317 = and i32 %10316, 1023
  %10318 = uitofp i32 %10317 to float
  %10319 = fmul fast float %10312, 0x3F60040100000000
  %10320 = fmul fast float %10315, 0x3F60040100000000
  %10321 = fmul fast float %10318, 0x3F60040100000000
  %10322 = fadd fast float %10319, -1.000000e+00
  %10323 = fadd fast float %10320, -1.000000e+00
  %10324 = fadd fast float %10321, -1.000000e+00
  %10325 = call float @dx.op.binary.f32(i32 35, float %10323, float %10324)  ; FMax(a,b)
  %10326 = call float @dx.op.binary.f32(i32 35, float %10322, float %10325)  ; FMax(a,b)
  %10327 = fmul fast float %10326, 2.000000e+00
  %10328 = call float @dx.op.unary.f32(i32 7, float %10327)  ; Saturate(value)
  %10329 = fmul fast float %10312, 0x3F94050140000000
  %10330 = fadd fast float %10329, -1.000000e+01
  %10331 = fmul fast float %10315, 0x3F94050140000000
  %10332 = fadd fast float %10331, -1.000000e+01
  %10333 = fmul fast float %10318, 0x3F94050140000000
  %10334 = fadd fast float %10333, -1.000000e+01
  %10335 = fsub fast float %10330, %10134
  %10336 = fsub fast float %10332, %10135
  %10337 = fsub fast float %10334, %10136
  %10338 = fmul fast float %10328, %10335
  %10339 = fmul fast float %10328, %10336
  %10340 = fmul fast float %10328, %10337
  %10341 = fadd fast float %10338, %10134
  %10342 = fadd fast float %10339, %10135
  %10343 = fadd fast float %10340, %10136
  br label %10380

; <label>:10344                                   ; preds = %10133
  %10345 = and i32 %8834, 1023
  %10346 = uitofp i32 %10345 to float
  %10347 = lshr i32 %8834, 10
  %10348 = and i32 %10347, 1023
  %10349 = uitofp i32 %10348 to float
  %10350 = lshr i32 %8834, 20
  %10351 = and i32 %10350, 1023
  %10352 = uitofp i32 %10351 to float
  %10353 = fmul fast float %10346, 0x3F60040100000000
  %10354 = fmul fast float %10349, 0x3F60040100000000
  %10355 = fmul fast float %10352, 0x3F60040100000000
  %10356 = fadd fast float %10353, -1.000000e+00
  %10357 = fadd fast float %10354, -1.000000e+00
  %10358 = fadd fast float %10355, -1.000000e+00
  br label %10380

; <label>:10359                                   ; preds = %10133
  %10360 = and i32 %8834, 1023
  %10361 = uitofp i32 %10360 to float
  %10362 = lshr i32 %8834, 10
  %10363 = and i32 %10362, 1023
  %10364 = uitofp i32 %10363 to float
  %10365 = lshr i32 %8834, 20
  %10366 = and i32 %10365, 1023
  %10367 = uitofp i32 %10366 to float
  %10368 = fmul fast float %10361, 0x3F60040100000000
  %10369 = fmul fast float %10364, 0x3F60040100000000
  %10370 = fmul fast float %10367, 0x3F60040100000000
  %10371 = fadd fast float %10368, -1.000000e+00
  %10372 = fadd fast float %10369, -1.000000e+00
  %10373 = fadd fast float %10370, -1.000000e+00
  br label %10380

; <label>:10374                                   ; preds = %10133
  %10375 = bitcast i32 %8834 to float
  br label %10380

; <label>:10376                                   ; preds = %10133
  %10377 = bitcast i32 %8834 to float
  br label %10380

; <label>:10378                                   ; preds = %10133
  %10379 = bitcast i32 %8834 to float
  br label %10380

; <label>:10380                                   ; preds = %10378, %10376, %10374, %10359, %10344, %10310, %10298, %10287, %10276, %10274, %10272, %10270, %10268, %10263, %10248, %10236, %10215, %10194, %10192, %10186, %10180, %10174, %10168, %10162, %10156, %10150, %10144, %10133
  %10381 = phi float [ %10134, %10133 ], [ %10379, %10378 ], [ %10377, %10376 ], [ %10375, %10374 ], [ %10371, %10359 ], [ %10356, %10344 ], [ %10341, %10310 ], [ %10307, %10298 ], [ %10295, %10287 ], [ %10284, %10276 ], [ %10275, %10274 ], [ %10273, %10272 ], [ %10271, %10270 ], [ %10269, %10268 ], [ %10260, %10248 ], [ %10239, %10236 ], [ %10227, %10215 ], [ %10210, %10194 ], [ %10193, %10192 ], [ %10189, %10186 ], [ %10183, %10180 ], [ %10177, %10174 ], [ %10171, %10168 ], [ %10165, %10162 ], [ %10159, %10156 ], [ %10153, %10150 ], [ %10147, %10144 ], [ %10265, %10263 ]
  %10382 = phi float [ %10135, %10133 ], [ %10379, %10378 ], [ %10377, %10376 ], [ %10375, %10374 ], [ %10372, %10359 ], [ %10357, %10344 ], [ %10342, %10310 ], [ %10308, %10298 ], [ %10296, %10287 ], [ %10285, %10276 ], [ %10275, %10274 ], [ %10273, %10272 ], [ %10271, %10270 ], [ %10269, %10268 ], [ %10261, %10248 ], [ %10243, %10236 ], [ %10234, %10215 ], [ %10212, %10194 ], [ %10193, %10192 ], [ %10190, %10186 ], [ %10184, %10180 ], [ %10178, %10174 ], [ %10172, %10168 ], [ %10166, %10162 ], [ %10160, %10156 ], [ %10154, %10150 ], [ %10148, %10144 ], [ %10266, %10263 ]
  %10383 = phi float [ %10136, %10133 ], [ %10379, %10378 ], [ %10377, %10376 ], [ %10375, %10374 ], [ %10373, %10359 ], [ %10358, %10344 ], [ %10343, %10310 ], [ %10309, %10298 ], [ %10297, %10287 ], [ %10286, %10276 ], [ %10275, %10274 ], [ %10273, %10272 ], [ %10271, %10270 ], [ %10269, %10268 ], [ %10262, %10248 ], [ %10247, %10236 ], [ %10235, %10215 ], [ %10214, %10194 ], [ %10193, %10192 ], [ %10191, %10186 ], [ %10185, %10180 ], [ %10179, %10174 ], [ %10173, %10168 ], [ %10167, %10162 ], [ %10161, %10156 ], [ %10155, %10150 ], [ %10149, %10144 ], [ %10267, %10263 ]
  %10384 = extractvalue %dx.types.CBufRet.f32 %10137, 3
  %10385 = fsub fast float %10381, %10134
  %10386 = fsub fast float %10382, %10135
  %10387 = fsub fast float %10383, %10136
  %10388 = fmul fast float %10384, %10385
  %10389 = fmul fast float %10384, %10386
  %10390 = fmul fast float %10384, %10387
  %10391 = fadd fast float %10388, %10134
  %10392 = fadd fast float %10389, %10135
  %10393 = fadd fast float %10390, %10136
  %10394 = lshr i32 %10139, 16
  %10395 = and i32 %10394, 255
  %10396 = uitofp i32 %10395 to float
  %10397 = fptoui float %10396 to i32
  switch i32 %10397, label %10444 [
    i32 16, label %10429
    i32 12, label %10428
    i32 3, label %10398
    i32 4, label %10399
    i32 15, label %10400
    i32 5, label %10409
    i32 6, label %10418
    i32 7, label %10427
    i32 11, label %10428
  ]

; <label>:10398                                   ; preds = %10380
  br label %10444

; <label>:10399                                   ; preds = %10380
  br label %10444

; <label>:10400                                   ; preds = %10380
  %10401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %10402 = extractvalue %dx.types.CBufRet.f32 %10401, 0
  %10403 = fadd fast float %10402, %10391
  %10404 = fadd fast float %10402, %10392
  %10405 = fadd fast float %10402, %10393
  %10406 = call float @dx.op.unary.f32(i32 7, float %10403)  ; Saturate(value)
  %10407 = call float @dx.op.unary.f32(i32 7, float %10404)  ; Saturate(value)
  %10408 = call float @dx.op.unary.f32(i32 7, float %10405)  ; Saturate(value)
  br label %10444

; <label>:10409                                   ; preds = %10380
  %10410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10411 = extractvalue %dx.types.CBufRet.f32 %10410, 0
  %10412 = bitcast float %10411 to i32
  %10413 = and i32 %10412, 2130706432
  %10414 = icmp eq i32 %10413, 0
  %10415 = select i1 %10414, float 0.000000e+00, float %10391
  %10416 = select i1 %10414, float 0.000000e+00, float %10392
  %10417 = select i1 %10414, float 0.000000e+00, float %10393
  br label %10444

; <label>:10418                                   ; preds = %10380
  %10419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10420 = extractvalue %dx.types.CBufRet.f32 %10419, 0
  %10421 = bitcast float %10420 to i32
  %10422 = and i32 %10421, 2130706432
  %10423 = icmp eq i32 %10422, 0
  %10424 = select i1 %10423, float 0.000000e+00, float %10391
  %10425 = select i1 %10423, float 0.000000e+00, float %10392
  %10426 = select i1 %10423, float 0.000000e+00, float %10393
  br label %10444

; <label>:10427                                   ; preds = %10380
  br label %10444

; <label>:10428                                   ; preds = %10380, %10380
  br label %10444

; <label>:10429                                   ; preds = %10380
  %10430 = and i32 %8834, 1023
  %10431 = uitofp i32 %10430 to float
  %10432 = lshr i32 %8834, 10
  %10433 = and i32 %10432, 1023
  %10434 = uitofp i32 %10433 to float
  %10435 = lshr i32 %8834, 20
  %10436 = and i32 %10435, 1023
  %10437 = uitofp i32 %10436 to float
  %10438 = fmul fast float %10431, 0x3F60040100000000
  %10439 = fmul fast float %10434, 0x3F60040100000000
  %10440 = fmul fast float %10437, 0x3F60040100000000
  %10441 = fadd fast float %10438, -1.000000e+00
  %10442 = fadd fast float %10439, -1.000000e+00
  %10443 = fadd fast float %10440, -1.000000e+00
  br label %10444

; <label>:10444                                   ; preds = %10429, %10428, %10427, %10418, %10409, %10400, %10399, %10398, %10380
  %10445 = phi float [ 0.000000e+00, %10427 ], [ %10406, %10400 ], [ 0.000000e+00, %10399 ], [ %70, %10428 ], [ %10441, %10429 ], [ 0.000000e+00, %10398 ], [ %10415, %10409 ], [ %10424, %10418 ], [ %10391, %10380 ]
  %10446 = phi float [ 0.000000e+00, %10427 ], [ %10407, %10400 ], [ 0.000000e+00, %10399 ], [ %71, %10428 ], [ %10442, %10429 ], [ 0.000000e+00, %10398 ], [ %10416, %10409 ], [ %10425, %10418 ], [ %10392, %10380 ]
  %10447 = phi float [ 0.000000e+00, %10427 ], [ %10408, %10400 ], [ 1.000000e+00, %10399 ], [ %72, %10428 ], [ %10443, %10429 ], [ 0.000000e+00, %10398 ], [ %10417, %10409 ], [ %10426, %10418 ], [ %10393, %10380 ]
  %10448 = fsub fast float %10445, %10391
  %10449 = fsub fast float %10446, %10392
  %10450 = fsub fast float %10447, %10393
  %10451 = fmul fast float %10384, %10448
  %10452 = fmul fast float %10384, %10449
  %10453 = fmul fast float %10384, %10450
  %10454 = fadd fast float %10451, %10391
  %10455 = fadd fast float %10452, %10392
  %10456 = fadd fast float %10453, %10393
  %10457 = and i32 %8238, 255
  %10458 = uitofp i32 %10457 to float
  %10459 = fptoui float %10458 to i32
  %10460 = lshr i32 %8238, 8
  %10461 = and i32 %10460, 255
  %10462 = uitofp i32 %10461 to float
  %10463 = fptoui float %10462 to i32
  %10464 = lshr i32 %8238, 16
  %10465 = and i32 %10464, 255
  %10466 = uitofp i32 %10465 to float
  %10467 = fptoui float %10466 to i32
  %10468 = lshr i32 %8238, 24
  %10469 = uitofp i32 %10468 to float
  %10470 = fptoui float %10469 to i32
  %10471 = and i32 %8237, 255
  %10472 = uitofp i32 %10471 to float
  %10473 = fptoui float %10472 to i32
  %10474 = lshr i32 %8237, 16
  %10475 = and i32 %10474, 255
  %10476 = uitofp i32 %10475 to float
  %10477 = fptoui float %10476 to i32
  %10478 = lshr i32 %10139, 24
  %10479 = uitofp i32 %10478 to float
  %10480 = fptoui float %10479 to i32
  switch i32 %10480, label %10719 [
    i32 1, label %10481
    i32 2, label %10508
    i32 3, label %10533
    i32 4, label %10556
    i32 5, label %10579
    i32 6, label %10602
    i32 7, label %10626
    i32 8, label %10649
    i32 9, label %10672
    i32 12, label %10694
    i32 13, label %10695
    i32 14, label %10718
  ]

; <label>:10481                                   ; preds = %10444
  %10482 = add i32 %10459, %10473
  %10483 = add i32 %10482, %10470
  %10484 = add i32 %10483, %10463
  %10485 = add i32 %10484, %10467
  %10486 = uitofp i32 %10485 to float
  %10487 = fadd fast float %10486, -4.000000e+00
  %10488 = fmul fast float %10487, 0x3FB5555560000000
  %10489 = call float @dx.op.unary.f32(i32 7, float %10488)  ; Saturate(value)
  %10490 = icmp eq i32 %10485, 0
  %10491 = select i1 %10490, float 0.000000e+00, float %10489
  %10492 = icmp ult i32 %10485, 2
  %10493 = select i1 %10492, float 0.000000e+00, float %10489
  %10494 = add i32 %10485, -1
  %10495 = icmp ult i32 %10494, 2
  %10496 = select i1 %10495, float 1.000000e+00, float %10491
  %10497 = icmp ult i32 %10485, 4
  %10498 = select i1 %10497, float 0.000000e+00, float 1.000000e+00
  %10499 = and i32 %10485, -2
  %10500 = icmp eq i32 %10499, 2
  %10501 = icmp eq i32 %10485, 4
  %10502 = select i1 %10501, float 1.000000e+00, float %10498
  %10503 = or i1 %10501, %10500
  %10504 = select i1 %10503, float 1.000000e+00, float %10493
  %10505 = add i32 %10485, -3
  %10506 = icmp ult i32 %10505, 2
  %10507 = select i1 %10506, float 0.000000e+00, float %10496
  br label %10719

; <label>:10508                                   ; preds = %10444
  %10509 = add i32 %10463, %10459
  %10510 = add i32 %10509, %10467
  %10511 = uitofp i32 %10510 to float
  %10512 = fadd fast float %10511, -4.000000e+00
  %10513 = fmul fast float %10512, 0x3FB5555560000000
  %10514 = call float @dx.op.unary.f32(i32 7, float %10513)  ; Saturate(value)
  %10515 = icmp eq i32 %10510, 0
  %10516 = select i1 %10515, float 0.000000e+00, float %10514
  %10517 = icmp ult i32 %10510, 2
  %10518 = select i1 %10517, float 0.000000e+00, float %10514
  %10519 = add i32 %10510, -1
  %10520 = icmp ult i32 %10519, 2
  %10521 = select i1 %10520, float 1.000000e+00, float %10516
  %10522 = icmp ult i32 %10510, 4
  %10523 = select i1 %10522, float 0.000000e+00, float 1.000000e+00
  %10524 = and i32 %10510, -2
  %10525 = icmp eq i32 %10524, 2
  %10526 = icmp eq i32 %10510, 4
  %10527 = select i1 %10526, float 1.000000e+00, float %10523
  %10528 = or i1 %10526, %10525
  %10529 = select i1 %10528, float 1.000000e+00, float %10518
  %10530 = add i32 %10510, -3
  %10531 = icmp ult i32 %10530, 2
  %10532 = select i1 %10531, float 0.000000e+00, float %10521
  br label %10719

; <label>:10533                                   ; preds = %10444
  %10534 = uitofp i32 %10459 to float
  %10535 = fadd fast float %10534, -4.000000e+00
  %10536 = fmul fast float %10535, 0x3FB5555560000000
  %10537 = call float @dx.op.unary.f32(i32 7, float %10536)  ; Saturate(value)
  %10538 = icmp eq i32 %10459, 0
  %10539 = select i1 %10538, float 0.000000e+00, float %10537
  %10540 = icmp ult i32 %10459, 2
  %10541 = select i1 %10540, float 0.000000e+00, float %10537
  %10542 = add i32 %10459, -1
  %10543 = icmp ult i32 %10542, 2
  %10544 = select i1 %10543, float 1.000000e+00, float %10539
  %10545 = icmp ult i32 %10459, 4
  %10546 = select i1 %10545, float 0.000000e+00, float 1.000000e+00
  %10547 = and i32 %10459, -2
  %10548 = icmp eq i32 %10547, 2
  %10549 = icmp eq i32 %10459, 4
  %10550 = select i1 %10549, float 1.000000e+00, float %10546
  %10551 = or i1 %10549, %10548
  %10552 = select i1 %10551, float 1.000000e+00, float %10541
  %10553 = add i32 %10459, -3
  %10554 = icmp ult i32 %10553, 2
  %10555 = select i1 %10554, float 0.000000e+00, float %10544
  br label %10719

; <label>:10556                                   ; preds = %10444
  %10557 = uitofp i32 %10463 to float
  %10558 = fadd fast float %10557, -4.000000e+00
  %10559 = fmul fast float %10558, 0x3FB5555560000000
  %10560 = call float @dx.op.unary.f32(i32 7, float %10559)  ; Saturate(value)
  %10561 = icmp eq i32 %10463, 0
  %10562 = select i1 %10561, float 0.000000e+00, float %10560
  %10563 = icmp ult i32 %10463, 2
  %10564 = select i1 %10563, float 0.000000e+00, float %10560
  %10565 = add i32 %10463, -1
  %10566 = icmp ult i32 %10565, 2
  %10567 = select i1 %10566, float 1.000000e+00, float %10562
  %10568 = icmp ult i32 %10463, 4
  %10569 = select i1 %10568, float 0.000000e+00, float 1.000000e+00
  %10570 = and i32 %10463, -2
  %10571 = icmp eq i32 %10570, 2
  %10572 = icmp eq i32 %10463, 4
  %10573 = select i1 %10572, float 1.000000e+00, float %10569
  %10574 = or i1 %10572, %10571
  %10575 = select i1 %10574, float 1.000000e+00, float %10564
  %10576 = add i32 %10463, -3
  %10577 = icmp ult i32 %10576, 2
  %10578 = select i1 %10577, float 0.000000e+00, float %10567
  br label %10719

; <label>:10579                                   ; preds = %10444
  %10580 = uitofp i32 %10467 to float
  %10581 = fadd fast float %10580, -4.000000e+00
  %10582 = fmul fast float %10581, 0x3FB5555560000000
  %10583 = call float @dx.op.unary.f32(i32 7, float %10582)  ; Saturate(value)
  %10584 = icmp eq i32 %10467, 0
  %10585 = select i1 %10584, float 0.000000e+00, float %10583
  %10586 = icmp ult i32 %10467, 2
  %10587 = select i1 %10586, float 0.000000e+00, float %10583
  %10588 = add i32 %10467, -1
  %10589 = icmp ult i32 %10588, 2
  %10590 = select i1 %10589, float 1.000000e+00, float %10585
  %10591 = icmp ult i32 %10467, 4
  %10592 = select i1 %10591, float 0.000000e+00, float 1.000000e+00
  %10593 = and i32 %10467, -2
  %10594 = icmp eq i32 %10593, 2
  %10595 = icmp eq i32 %10467, 4
  %10596 = select i1 %10595, float 1.000000e+00, float %10592
  %10597 = or i1 %10595, %10594
  %10598 = select i1 %10597, float 1.000000e+00, float %10587
  %10599 = add i32 %10467, -3
  %10600 = icmp ult i32 %10599, 2
  %10601 = select i1 %10600, float 0.000000e+00, float %10590
  br label %10719

; <label>:10602                                   ; preds = %10444
  %10603 = add i32 %10470, %10473
  %10604 = uitofp i32 %10603 to float
  %10605 = fadd fast float %10604, -4.000000e+00
  %10606 = fmul fast float %10605, 0x3FB5555560000000
  %10607 = call float @dx.op.unary.f32(i32 7, float %10606)  ; Saturate(value)
  %10608 = icmp eq i32 %10603, 0
  %10609 = select i1 %10608, float 0.000000e+00, float %10607
  %10610 = icmp ult i32 %10603, 2
  %10611 = select i1 %10610, float 0.000000e+00, float %10607
  %10612 = add i32 %10603, -1
  %10613 = icmp ult i32 %10612, 2
  %10614 = select i1 %10613, float 1.000000e+00, float %10609
  %10615 = icmp ult i32 %10603, 4
  %10616 = select i1 %10615, float 0.000000e+00, float 1.000000e+00
  %10617 = and i32 %10603, -2
  %10618 = icmp eq i32 %10617, 2
  %10619 = icmp eq i32 %10603, 4
  %10620 = select i1 %10619, float 1.000000e+00, float %10616
  %10621 = or i1 %10619, %10618
  %10622 = select i1 %10621, float 1.000000e+00, float %10611
  %10623 = add i32 %10603, -3
  %10624 = icmp ult i32 %10623, 2
  %10625 = select i1 %10624, float 0.000000e+00, float %10614
  br label %10719

; <label>:10626                                   ; preds = %10444
  %10627 = uitofp i32 %10470 to float
  %10628 = fadd fast float %10627, -4.000000e+00
  %10629 = fmul fast float %10628, 0x3FB5555560000000
  %10630 = call float @dx.op.unary.f32(i32 7, float %10629)  ; Saturate(value)
  %10631 = icmp eq i32 %10470, 0
  %10632 = select i1 %10631, float 0.000000e+00, float %10630
  %10633 = icmp ult i32 %10470, 2
  %10634 = select i1 %10633, float 0.000000e+00, float %10630
  %10635 = add i32 %10470, -1
  %10636 = icmp ult i32 %10635, 2
  %10637 = select i1 %10636, float 1.000000e+00, float %10632
  %10638 = icmp ult i32 %10470, 4
  %10639 = select i1 %10638, float 0.000000e+00, float 1.000000e+00
  %10640 = and i32 %10470, -2
  %10641 = icmp eq i32 %10640, 2
  %10642 = icmp eq i32 %10470, 4
  %10643 = select i1 %10642, float 1.000000e+00, float %10639
  %10644 = or i1 %10642, %10641
  %10645 = select i1 %10644, float 1.000000e+00, float %10634
  %10646 = add i32 %10470, -3
  %10647 = icmp ult i32 %10646, 2
  %10648 = select i1 %10647, float 0.000000e+00, float %10637
  br label %10719

; <label>:10649                                   ; preds = %10444
  %10650 = uitofp i32 %10473 to float
  %10651 = fadd fast float %10650, -4.000000e+00
  %10652 = fmul fast float %10651, 0x3FB5555560000000
  %10653 = call float @dx.op.unary.f32(i32 7, float %10652)  ; Saturate(value)
  %10654 = icmp eq i32 %10473, 0
  %10655 = select i1 %10654, float 0.000000e+00, float %10653
  %10656 = icmp ult i32 %10473, 2
  %10657 = select i1 %10656, float 0.000000e+00, float %10653
  %10658 = add i32 %10473, -1
  %10659 = icmp ult i32 %10658, 2
  %10660 = select i1 %10659, float 1.000000e+00, float %10655
  %10661 = icmp ult i32 %10473, 4
  %10662 = select i1 %10661, float 0.000000e+00, float 1.000000e+00
  %10663 = and i32 %10473, -2
  %10664 = icmp eq i32 %10663, 2
  %10665 = icmp eq i32 %10473, 4
  %10666 = select i1 %10665, float 1.000000e+00, float %10662
  %10667 = or i1 %10665, %10664
  %10668 = select i1 %10667, float 1.000000e+00, float %10657
  %10669 = add i32 %10473, -3
  %10670 = icmp ult i32 %10669, 2
  %10671 = select i1 %10670, float 0.000000e+00, float %10660
  br label %10719

; <label>:10672                                   ; preds = %10444
  %10673 = lshr i32 %8237, 8
  %10674 = and i32 %10673, 255
  %10675 = uitofp i32 %10674 to float
  %10676 = fptoui float %10675 to i32
  %10677 = uitofp i32 %10676 to float
  %10678 = fcmp fast oge float %10677, 1.000000e+00
  %10679 = fcmp fast oge float %10677, 2.000000e+00
  %10680 = or i1 %10679, %10678
  %10681 = select i1 %10680, float 1.000000e+00, float 0.000000e+00
  %10682 = fcmp fast oge float %10677, 3.000000e+00
  %10683 = or i1 %10682, %10679
  %10684 = fcmp fast oge float %10677, 4.000000e+00
  %10685 = or i1 %10684, %10683
  %10686 = select i1 %10685, float 1.000000e+00, float 0.000000e+00
  %10687 = or i1 %10684, %10682
  %10688 = fcmp fast oge float %10677, 5.000000e+00
  %10689 = or i1 %10688, %10684
  %10690 = select i1 %10689, float 1.000000e+00, float 0.000000e+00
  %10691 = select i1 %10688, float 0.000000e+00, float %10686
  %10692 = or i1 %10688, %10687
  %10693 = select i1 %10692, float 0.000000e+00, float %10681
  br label %10719

; <label>:10694                                   ; preds = %10444
  br label %10719

; <label>:10695                                   ; preds = %10444
  %10696 = uitofp i32 %10477 to float
  %10697 = fadd fast float %10696, -4.000000e+00
  %10698 = fmul fast float %10697, 0x3FB5555560000000
  %10699 = call float @dx.op.unary.f32(i32 7, float %10698)  ; Saturate(value)
  %10700 = icmp eq i32 %10477, 0
  %10701 = select i1 %10700, float 0.000000e+00, float %10699
  %10702 = icmp ult i32 %10477, 2
  %10703 = select i1 %10702, float 0.000000e+00, float %10699
  %10704 = add i32 %10477, -1
  %10705 = icmp ult i32 %10704, 2
  %10706 = select i1 %10705, float 1.000000e+00, float %10701
  %10707 = icmp ult i32 %10477, 4
  %10708 = select i1 %10707, float 0.000000e+00, float 1.000000e+00
  %10709 = and i32 %10477, -2
  %10710 = icmp eq i32 %10709, 2
  %10711 = icmp eq i32 %10477, 4
  %10712 = select i1 %10711, float 1.000000e+00, float %10708
  %10713 = or i1 %10711, %10710
  %10714 = select i1 %10713, float 1.000000e+00, float %10703
  %10715 = add i32 %10477, -3
  %10716 = icmp ult i32 %10715, 2
  %10717 = select i1 %10716, float 0.000000e+00, float %10706
  br label %10719

; <label>:10718                                   ; preds = %10444
  br label %10719

; <label>:10719                                   ; preds = %10718, %10695, %10694, %10672, %10649, %10626, %10602, %10579, %10556, %10533, %10508, %10481, %10444
  %10720 = phi float [ %10454, %10444 ], [ 5.000000e-01, %10718 ], [ %10712, %10695 ], [ 1.000000e+00, %10694 ], [ %10690, %10672 ], [ %10666, %10649 ], [ %10643, %10626 ], [ %10620, %10602 ], [ %10596, %10579 ], [ %10573, %10556 ], [ %10550, %10533 ], [ %10527, %10508 ], [ %10502, %10481 ]
  %10721 = phi float [ %10455, %10444 ], [ 5.000000e-01, %10718 ], [ %10714, %10695 ], [ 0.000000e+00, %10694 ], [ %10691, %10672 ], [ %10668, %10649 ], [ %10645, %10626 ], [ %10622, %10602 ], [ %10598, %10579 ], [ %10575, %10556 ], [ %10552, %10533 ], [ %10529, %10508 ], [ %10504, %10481 ]
  %10722 = phi float [ %10456, %10444 ], [ 5.000000e-01, %10718 ], [ %10717, %10695 ], [ 0.000000e+00, %10694 ], [ %10693, %10672 ], [ %10671, %10649 ], [ %10648, %10626 ], [ %10625, %10602 ], [ %10601, %10579 ], [ %10578, %10556 ], [ %10555, %10533 ], [ %10532, %10508 ], [ %10507, %10481 ]
  %10723 = fsub fast float %10720, %10454
  %10724 = fsub fast float %10721, %10455
  %10725 = fsub fast float %10722, %10456
  %10726 = fmul fast float %10723, %10384
  %10727 = fmul fast float %10724, %10384
  %10728 = fmul fast float %10725, %10384
  %10729 = fadd fast float %10726, %10454
  %10730 = fadd fast float %10727, %10455
  %10731 = fadd fast float %10728, %10456
  %10732 = and i32 %10139, 255
  %10733 = uitofp i32 %10732 to float
  %10734 = fptoui float %10733 to i32
  %10735 = icmp ult i32 %10734, 25
  br i1 %10735, label %10736, label %10741

; <label>:10736                                   ; preds = %10719
  %10737 = trunc i32 %10734 to i25
  %10738 = lshr i25 1048574, %10737
  %10739 = and i25 %10738, 1
  %10740 = icmp ne i25 %10739, 0
  br label %10741

; <label>:10741                                   ; preds = %10736, %10719
  %10742 = phi i1 [ %10740, %10736 ], [ true, %10719 ]
  %10743 = or i32 %10397, %10143
  %10744 = or i32 %10743, %10480
  %10745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10746 = extractvalue %dx.types.CBufRet.f32 %10745, 3
  %10747 = bitcast float %10746 to i32
  %10748 = and i32 %10747, 255
  %10749 = uitofp i32 %10748 to float
  %10750 = fptoui float %10749 to i32
  %10751 = or i32 %10744, %10750
  %10752 = icmp ne i32 %10751, 0
  %10753 = or i1 %10742, %10752
  %10754 = extractvalue %dx.types.CBufRet.f32 %10745, 0
  %10755 = bitcast float %10754 to i32
  %10756 = icmp slt i32 %10755, 0
  %10757 = or i1 %10756, %10753
  br i1 %10757, label %10758, label %10766

; <label>:10758                                   ; preds = %10741
  %10759 = icmp eq i32 %10480, 14
  %10760 = select i1 %10759, float 0.000000e+00, float 1.000000e+00
  %10761 = icmp eq i32 %10734, 0
  br i1 %10761, label %10766, label %10762

; <label>:10762                                   ; preds = %10758
  %10763 = fmul fast float %10760, %10729
  %10764 = fmul fast float %10760, %10730
  %10765 = fmul fast float %10760, %10731
  br label %10766

; <label>:10766                                   ; preds = %10762, %10758, %10741
  %10767 = phi float [ %10763, %10762 ], [ %10729, %10758 ], [ %10729, %10741 ]
  %10768 = phi float [ %10764, %10762 ], [ %10730, %10758 ], [ %10730, %10741 ]
  %10769 = phi float [ %10765, %10762 ], [ %10731, %10758 ], [ %10731, %10741 ]
  %10770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10771 = extractvalue %dx.types.CBufRet.f32 %10770, 2
  %10772 = extractvalue %dx.types.CBufRet.f32 %10770, 3
  %10773 = fmul fast float %10771, %99
  %10774 = fmul fast float %10772, %100
  %10775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10776 = extractvalue %dx.types.CBufRet.f32 %10775, 0
  %10777 = fcmp fast oge float %10773, %10776
  %10778 = extractvalue %dx.types.CBufRet.f32 %10775, 2
  %10779 = fcmp fast ole float %10773, %10778
  %10780 = and i1 %10777, %10779
  %10781 = extractvalue %dx.types.CBufRet.f32 %10775, 1
  %10782 = fcmp fast oge float %10774, %10781
  %10783 = and i1 %10780, %10782
  %10784 = extractvalue %dx.types.CBufRet.f32 %10775, 3
  %10785 = fcmp fast ole float %10774, %10784
  %10786 = and i1 %10783, %10785
  %10787 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %10788 = extractvalue %dx.types.CBufRet.i32 %10787, 0
  %10789 = icmp ne i32 %10788, 0
  %10790 = and i1 %10789, %10786
  br i1 %10790, label %10791, label %11724

; <label>:10791                                   ; preds = %10766
  %10792 = icmp eq i32 %10788, 1
  br i1 %10792, label %10793, label %10832

; <label>:10793                                   ; preds = %10791
  %10794 = uitofp i32 %198 to float
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
  br label %11724

; <label>:10832                                   ; preds = %10791
  %10833 = icmp eq i32 %10788, 2
  br i1 %10833, label %10834, label %10838

; <label>:10834                                   ; preds = %10832
  %10835 = fmul fast float %10767, %73
  %10836 = fmul fast float %10768, %74
  %10837 = fmul fast float %10769, %75
  br label %11724

; <label>:10838                                   ; preds = %10832
  %10839 = icmp eq i32 %10788, 3
  %10840 = icmp eq i32 %10788, 26
  %10841 = or i1 %10839, %10840
  br i1 %10841, label %10842, label %10942

; <label>:10842                                   ; preds = %10838
  br i1 %10839, label %10843, label %10854

; <label>:10843                                   ; preds = %10842
  %10844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %10845 = extractvalue %dx.types.CBufRet.f32 %10844, 3
  %10846 = fsub fast float %178, %10845
  %10847 = fmul fast float %10846, 0x3FD5555560000000
  %10848 = call float @dx.op.unary.f32(i32 7, float %10847)  ; Saturate(value)
  %10849 = fmul fast float %10848, 6.300000e+01
  %10850 = fptoui float %10849 to i32
  %10851 = uitofp i32 %10850 to float
  %10852 = fmul fast float %10851, 0x3FA8618620000000
  %10853 = fadd fast float %10852, %10845
  br label %10854

; <label>:10854                                   ; preds = %10843, %10842
  %10855 = phi float [ %10853, %10843 ], [ %73, %10842 ]
  %10856 = call float @dx.op.unary.f32(i32 27, float %10855)  ; Round_ni(value)
  %10857 = fadd fast float %10856, 1.000000e+00
  %10858 = call float @dx.op.unary.f32(i32 22, float %10855)  ; Frc(value)
  %10859 = fmul fast float %10856, 0x3FE3C6EF40000000
  %10860 = call float @dx.op.unary.f32(i32 22, float %10859)  ; Frc(value)
  %10861 = fadd fast float %10860, 0x3FE5555560000000
  %10862 = fadd fast float %10860, 0x3FD5555560000000
  %10863 = fsub fast float -0.000000e+00, %10860
  %10864 = fsub fast float -0.000000e+00, %10861
  %10865 = fsub fast float -0.000000e+00, %10862
  %10866 = fcmp fast oge float %10860, %10863
  %10867 = fcmp fast oge float %10861, %10864
  %10868 = fcmp fast oge float %10862, %10865
  %10869 = call float @dx.op.unary.f32(i32 6, float %10860)  ; FAbs(value)
  %10870 = call float @dx.op.unary.f32(i32 6, float %10861)  ; FAbs(value)
  %10871 = call float @dx.op.unary.f32(i32 6, float %10862)  ; FAbs(value)
  %10872 = call float @dx.op.unary.f32(i32 22, float %10869)  ; Frc(value)
  %10873 = call float @dx.op.unary.f32(i32 22, float %10870)  ; Frc(value)
  %10874 = call float @dx.op.unary.f32(i32 22, float %10871)  ; Frc(value)
  %10875 = fsub fast float -0.000000e+00, %10872
  %10876 = fsub fast float -0.000000e+00, %10873
  %10877 = fsub fast float -0.000000e+00, %10874
  %10878 = select i1 %10866, float %10872, float %10875
  %10879 = select i1 %10867, float %10873, float %10876
  %10880 = select i1 %10868, float %10874, float %10877
  %10881 = fmul fast float %10878, 6.000000e+00
  %10882 = fmul fast float %10879, 6.000000e+00
  %10883 = fmul fast float %10880, 6.000000e+00
  %10884 = fadd fast float %10881, -3.000000e+00
  %10885 = fadd fast float %10882, -3.000000e+00
  %10886 = fadd fast float %10883, -3.000000e+00
  %10887 = call float @dx.op.unary.f32(i32 6, float %10884)  ; FAbs(value)
  %10888 = call float @dx.op.unary.f32(i32 6, float %10885)  ; FAbs(value)
  %10889 = call float @dx.op.unary.f32(i32 6, float %10886)  ; FAbs(value)
  %10890 = fadd fast float %10887, -1.000000e+00
  %10891 = fadd fast float %10888, -1.000000e+00
  %10892 = fadd fast float %10889, -1.000000e+00
  %10893 = call float @dx.op.unary.f32(i32 7, float %10890)  ; Saturate(value)
  %10894 = call float @dx.op.unary.f32(i32 7, float %10891)  ; Saturate(value)
  %10895 = call float @dx.op.unary.f32(i32 7, float %10892)  ; Saturate(value)
  %10896 = fmul fast float %10857, 0x3FE3C6EF40000000
  %10897 = call float @dx.op.unary.f32(i32 22, float %10896)  ; Frc(value)
  %10898 = fadd fast float %10897, 0x3FE5555560000000
  %10899 = fadd fast float %10897, 0x3FD5555560000000
  %10900 = fsub fast float -0.000000e+00, %10897
  %10901 = fsub fast float -0.000000e+00, %10898
  %10902 = fsub fast float -0.000000e+00, %10899
  %10903 = fcmp fast oge float %10897, %10900
  %10904 = fcmp fast oge float %10898, %10901
  %10905 = fcmp fast oge float %10899, %10902
  %10906 = call float @dx.op.unary.f32(i32 6, float %10897)  ; FAbs(value)
  %10907 = call float @dx.op.unary.f32(i32 6, float %10898)  ; FAbs(value)
  %10908 = call float @dx.op.unary.f32(i32 6, float %10899)  ; FAbs(value)
  %10909 = call float @dx.op.unary.f32(i32 22, float %10906)  ; Frc(value)
  %10910 = call float @dx.op.unary.f32(i32 22, float %10907)  ; Frc(value)
  %10911 = call float @dx.op.unary.f32(i32 22, float %10908)  ; Frc(value)
  %10912 = fsub fast float -0.000000e+00, %10909
  %10913 = fsub fast float -0.000000e+00, %10910
  %10914 = fsub fast float -0.000000e+00, %10911
  %10915 = select i1 %10903, float %10909, float %10912
  %10916 = select i1 %10904, float %10910, float %10913
  %10917 = select i1 %10905, float %10911, float %10914
  %10918 = fmul fast float %10915, 6.000000e+00
  %10919 = fmul fast float %10916, 6.000000e+00
  %10920 = fmul fast float %10917, 6.000000e+00
  %10921 = fadd fast float %10918, -3.000000e+00
  %10922 = fadd fast float %10919, -3.000000e+00
  %10923 = fadd fast float %10920, -3.000000e+00
  %10924 = call float @dx.op.unary.f32(i32 6, float %10921)  ; FAbs(value)
  %10925 = call float @dx.op.unary.f32(i32 6, float %10922)  ; FAbs(value)
  %10926 = call float @dx.op.unary.f32(i32 6, float %10923)  ; FAbs(value)
  %10927 = fadd fast float %10924, -1.000000e+00
  %10928 = fadd fast float %10925, -1.000000e+00
  %10929 = fadd fast float %10926, -1.000000e+00
  %10930 = call float @dx.op.unary.f32(i32 7, float %10927)  ; Saturate(value)
  %10931 = call float @dx.op.unary.f32(i32 7, float %10928)  ; Saturate(value)
  %10932 = call float @dx.op.unary.f32(i32 7, float %10929)  ; Saturate(value)
  %10933 = fsub fast float %10930, %10893
  %10934 = fsub fast float %10931, %10894
  %10935 = fsub fast float %10932, %10895
  %10936 = fmul fast float %10933, %10858
  %10937 = fmul fast float %10934, %10858
  %10938 = fmul fast float %10935, %10858
  %10939 = fadd fast float %10936, %10893
  %10940 = fadd fast float %10937, %10894
  %10941 = fadd fast float %10938, %10895
  br label %11724

; <label>:10942                                   ; preds = %10838
  %10943 = and i32 %10788, -2
  %10944 = icmp eq i32 %10943, 4
  br i1 %10944, label %10945, label %10954

; <label>:10945                                   ; preds = %10942
  %10946 = uitofp i32 %198 to float
  %10947 = fmul fast float %10946, 0x3FE3C6EF40000000
  %10948 = call float @dx.op.unary.f32(i32 22, float %10947)  ; Frc(value)
  %10949 = fmul fast float %10948, 5.000000e-01
  %10950 = fadd fast float %10949, 5.000000e-01
  %10951 = fmul fast float %10950, %73
  %10952 = fmul fast float %10950, %74
  %10953 = fmul fast float %10950, %75
  br label %11724

; <label>:10954                                   ; preds = %10942
  %10955 = icmp eq i32 %10788, 6
  br i1 %10955, label %11724, label %10956

; <label>:10956                                   ; preds = %10954
  %10957 = icmp eq i32 %10788, 7
  br i1 %10957, label %11724, label %10958

; <label>:10958                                   ; preds = %10956
  %10959 = icmp eq i32 %10788, 8
  br i1 %10959, label %11724, label %10960

; <label>:10960                                   ; preds = %10958
  %10961 = icmp eq i32 %10788, 9
  br i1 %10961, label %10962, label %10974

; <label>:10962                                   ; preds = %10960
  %10963 = fcmp fast ogt float %347, 0.000000e+00
  %10964 = call float @dx.op.dot2.f32(i32 54, float %342, float %343, float %342, float %343)  ; Dot2(ax,ay,bx,by)
  %10965 = call float @dx.op.unary.f32(i32 25, float %10964)  ; Rsqrt(value)
  %10966 = fmul fast float %342, 5.000000e-01
  %10967 = fmul fast float %10966, %10965
  %10968 = fmul fast float %343, 5.000000e-01
  %10969 = fmul fast float %10968, %10965
  %10970 = fadd fast float %10967, 5.000000e-01
  %10971 = select i1 %10963, float %10970, float 5.000000e-01
  %10972 = fadd fast float %10969, 5.000000e-01
  %10973 = select i1 %10963, float %10972, float 5.000000e-01
  br label %11724

; <label>:10974                                   ; preds = %10960
  %10975 = icmp eq i32 %10788, 10
  br i1 %10975, label %10976, label %10978

; <label>:10976                                   ; preds = %10974
  %10977 = fmul fast float %347, 0x3F747AE140000000
  br label %11724

; <label>:10978                                   ; preds = %10974
  %10979 = icmp eq i32 %10788, 11
  br i1 %10979, label %11724, label %10980

; <label>:10980                                   ; preds = %10978
  %10981 = icmp eq i32 %10788, 12
  br i1 %10981, label %11724, label %10982

; <label>:10982                                   ; preds = %10980
  %10983 = icmp eq i32 %10788, 13
  br i1 %10983, label %11724, label %10984

; <label>:10984                                   ; preds = %10982
  %10985 = icmp eq i32 %10788, 14
  br i1 %10985, label %11724, label %10986

; <label>:10986                                   ; preds = %10984
  %10987 = icmp eq i32 %10788, 15
  br i1 %10987, label %11724, label %10988

; <label>:10988                                   ; preds = %10986
  %10989 = icmp eq i32 %10788, 16
  br i1 %10989, label %11724, label %10990

; <label>:10990                                   ; preds = %10988
  %10991 = icmp eq i32 %10788, 17
  br i1 %10991, label %11724, label %10992

; <label>:10992                                   ; preds = %10990
  %10993 = icmp eq i32 %10788, 18
  br i1 %10993, label %11724, label %10994

; <label>:10994                                   ; preds = %10992
  %10995 = icmp eq i32 %10788, 19
  br i1 %10995, label %11724, label %10996

; <label>:10996                                   ; preds = %10994
  %10997 = icmp eq i32 %10788, 20
  br i1 %10997, label %10998, label %11003

; <label>:10998                                   ; preds = %10996
  %10999 = fmul fast float %916, 5.000000e-01
  %11000 = fmul fast float %917, 5.000000e-01
  %11001 = fadd fast float %10999, 5.000000e-01
  %11002 = fadd fast float %11000, 5.000000e-01
  br label %11724

; <label>:11003                                   ; preds = %10996
  %11004 = and i32 %10788, -9
  %11005 = icmp eq i32 %11004, 21
  br i1 %11005, label %11724, label %11006

; <label>:11006                                   ; preds = %11003
  %11007 = icmp eq i32 %10788, 22
  %11008 = icmp eq i32 %10788, 38
  %11009 = or i1 %11007, %11008
  br i1 %11009, label %11010, label %11124

; <label>:11010                                   ; preds = %11006
  %11011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11012 = extractvalue %dx.types.CBufRet.f32 %11011, 0
  %11013 = extractvalue %dx.types.CBufRet.f32 %11011, 1
  %11014 = extractvalue %dx.types.CBufRet.f32 %11011, 2
  %11015 = fadd fast float %11012, %154
  %11016 = fadd fast float %11013, %155
  %11017 = fadd fast float %11014, %156
  %11018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %11019 = extractvalue %dx.types.CBufRet.f32 %11018, 0
  %11020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %11021 = extractvalue %dx.types.CBufRet.f32 %11020, 0
  %11022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %11023 = extractvalue %dx.types.CBufRet.f32 %11022, 0
  %11024 = extractvalue %dx.types.CBufRet.f32 %11018, 1
  %11025 = extractvalue %dx.types.CBufRet.f32 %11020, 1
  %11026 = extractvalue %dx.types.CBufRet.f32 %11022, 1
  %11027 = extractvalue %dx.types.CBufRet.f32 %11018, 3
  %11028 = extractvalue %dx.types.CBufRet.f32 %11020, 3
  %11029 = extractvalue %dx.types.CBufRet.f32 %11022, 3
  %11030 = fadd fast float %11015, %11027
  %11031 = fadd fast float %11016, %11028
  %11032 = fadd fast float %11017, %11029
  %11033 = fmul fast float %11030, %11019
  %11034 = call float @dx.op.tertiary.f32(i32 46, float %11031, float %11021, float %11033)  ; FMad(a,b,c)
  %11035 = call float @dx.op.tertiary.f32(i32 46, float %11032, float %11023, float %11034)  ; FMad(a,b,c)
  %11036 = fmul fast float %11030, %11024
  %11037 = call float @dx.op.tertiary.f32(i32 46, float %11031, float %11025, float %11036)  ; FMad(a,b,c)
  %11038 = call float @dx.op.tertiary.f32(i32 46, float %11032, float %11026, float %11037)  ; FMad(a,b,c)
  %11039 = fsub fast float %11035, %11027
  %11040 = fsub fast float %11038, %11028
  %11041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %11042 = extractvalue %dx.types.CBufRet.f32 %11041, 0
  %11043 = extractvalue %dx.types.CBufRet.f32 %11041, 1
  %11044 = fsub fast float %11039, %11042
  %11045 = fsub fast float %11040, %11043
  %11046 = fmul fast float %11044, %11044
  %11047 = fmul fast float %11045, %11045
  %11048 = fadd fast float %11046, %11047
  %11049 = call float @dx.op.unary.f32(i32 24, float %11048)  ; Sqrt(value)
  %11050 = extractvalue %dx.types.CBufRet.f32 %11041, 2
  %11051 = fcmp fast olt float %11049, %11050
  br i1 %11051, label %11052, label %11724

; <label>:11052                                   ; preds = %11010
  %11053 = fadd fast float %11044, %11050
  %11054 = fadd fast float %11045, %11050
  %11055 = extractvalue %dx.types.CBufRet.f32 %11041, 3
  %11056 = fmul fast float %11053, %11055
  %11057 = fmul fast float %11054, %11055
  %11058 = call float @dx.op.unary.f32(i32 7, float %11056)  ; Saturate(value)
  %11059 = call float @dx.op.unary.f32(i32 7, float %11057)  ; Saturate(value)
  %11060 = fsub fast float 1.000000e+00, %11058
  %11061 = fsub fast float 1.000000e+00, %11059
  %11062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %62, float %11060, float %11061, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11063 = extractvalue %dx.types.ResRet.f32 %11062, 0
  %11064 = fcmp fast ugt float %11063, 0.000000e+00
  br i1 %11064, label %11065, label %11724

; <label>:11065                                   ; preds = %11052
  br i1 %11007, label %11066, label %11071

; <label>:11066                                   ; preds = %11065
  %11067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %62, float %11060, float %11061, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11068 = extractvalue %dx.types.ResRet.f32 %11067, 0
  %11069 = extractvalue %dx.types.ResRet.f32 %11067, 1
  %11070 = extractvalue %dx.types.ResRet.f32 %11067, 2
  br label %11724

; <label>:11071                                   ; preds = %11065
  %11072 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %54, i32 0)  ; GetDimensions(handle,mipLevel)
  %11073 = extractvalue %dx.types.Dimensions %11072, 0
  %11074 = sitofp i32 %11073 to float
  %11075 = extractvalue %dx.types.Dimensions %11072, 1
  %11076 = sitofp i32 %11075 to float
  %11077 = fmul fast float %11074, %11060
  %11078 = fmul fast float %11076, %11061
  %11079 = call float @dx.op.unary.f32(i32 27, float %11077)  ; Round_ni(value)
  %11080 = call float @dx.op.unary.f32(i32 27, float %11078)  ; Round_ni(value)
  %11081 = fptoui float %11074 to i32
  %11082 = uitofp i32 %11081 to float
  %11083 = fmul fast float %11082, %11080
  %11084 = fadd fast float %11083, %11079
  %11085 = fptoui float %11084 to i32
  %11086 = uitofp i32 %11085 to float
  %11087 = fmul fast float %11086, 0x3FE3C6EF40000000
  %11088 = call float @dx.op.unary.f32(i32 22, float %11087)  ; Frc(value)
  %11089 = fadd fast float %11088, 0x3FE5555560000000
  %11090 = fadd fast float %11088, 0x3FD5555560000000
  %11091 = fsub fast float -0.000000e+00, %11088
  %11092 = fsub fast float -0.000000e+00, %11089
  %11093 = fsub fast float -0.000000e+00, %11090
  %11094 = fcmp fast oge float %11088, %11091
  %11095 = fcmp fast oge float %11089, %11092
  %11096 = fcmp fast oge float %11090, %11093
  %11097 = call float @dx.op.unary.f32(i32 6, float %11088)  ; FAbs(value)
  %11098 = call float @dx.op.unary.f32(i32 6, float %11089)  ; FAbs(value)
  %11099 = call float @dx.op.unary.f32(i32 6, float %11090)  ; FAbs(value)
  %11100 = call float @dx.op.unary.f32(i32 22, float %11097)  ; Frc(value)
  %11101 = call float @dx.op.unary.f32(i32 22, float %11098)  ; Frc(value)
  %11102 = call float @dx.op.unary.f32(i32 22, float %11099)  ; Frc(value)
  %11103 = fsub fast float -0.000000e+00, %11100
  %11104 = fsub fast float -0.000000e+00, %11101
  %11105 = fsub fast float -0.000000e+00, %11102
  %11106 = select i1 %11094, float %11100, float %11103
  %11107 = select i1 %11095, float %11101, float %11104
  %11108 = select i1 %11096, float %11102, float %11105
  %11109 = fmul fast float %11106, 6.000000e+00
  %11110 = fmul fast float %11107, 6.000000e+00
  %11111 = fmul fast float %11108, 6.000000e+00
  %11112 = fadd fast float %11109, -3.000000e+00
  %11113 = fadd fast float %11110, -3.000000e+00
  %11114 = fadd fast float %11111, -3.000000e+00
  %11115 = call float @dx.op.unary.f32(i32 6, float %11112)  ; FAbs(value)
  %11116 = call float @dx.op.unary.f32(i32 6, float %11113)  ; FAbs(value)
  %11117 = call float @dx.op.unary.f32(i32 6, float %11114)  ; FAbs(value)
  %11118 = fadd fast float %11115, -1.000000e+00
  %11119 = fadd fast float %11116, -1.000000e+00
  %11120 = fadd fast float %11117, -1.000000e+00
  %11121 = call float @dx.op.unary.f32(i32 7, float %11118)  ; Saturate(value)
  %11122 = call float @dx.op.unary.f32(i32 7, float %11119)  ; Saturate(value)
  %11123 = call float @dx.op.unary.f32(i32 7, float %11120)  ; Saturate(value)
  br label %11724

; <label>:11124                                   ; preds = %11006
  %11125 = icmp eq i32 %10788, 39
  br i1 %11125, label %11126, label %11230

; <label>:11126                                   ; preds = %11124
  %11127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11128 = extractvalue %dx.types.CBufRet.f32 %11127, 0
  %11129 = extractvalue %dx.types.CBufRet.f32 %11127, 1
  %11130 = extractvalue %dx.types.CBufRet.f32 %11127, 2
  %11131 = fadd fast float %11128, %154
  %11132 = fadd fast float %11129, %155
  %11133 = fadd fast float %11130, %156
  %11134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %11135 = extractvalue %dx.types.CBufRet.f32 %11134, 0
  %11136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %11137 = extractvalue %dx.types.CBufRet.f32 %11136, 0
  %11138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %11139 = extractvalue %dx.types.CBufRet.f32 %11138, 0
  %11140 = extractvalue %dx.types.CBufRet.f32 %11134, 1
  %11141 = extractvalue %dx.types.CBufRet.f32 %11136, 1
  %11142 = extractvalue %dx.types.CBufRet.f32 %11138, 1
  %11143 = extractvalue %dx.types.CBufRet.f32 %11134, 3
  %11144 = extractvalue %dx.types.CBufRet.f32 %11136, 3
  %11145 = extractvalue %dx.types.CBufRet.f32 %11138, 3
  %11146 = fadd fast float %11131, %11143
  %11147 = fadd fast float %11132, %11144
  %11148 = fadd fast float %11133, %11145
  %11149 = fmul fast float %11146, %11135
  %11150 = call float @dx.op.tertiary.f32(i32 46, float %11147, float %11137, float %11149)  ; FMad(a,b,c)
  %11151 = call float @dx.op.tertiary.f32(i32 46, float %11148, float %11139, float %11150)  ; FMad(a,b,c)
  %11152 = fmul fast float %11146, %11140
  %11153 = call float @dx.op.tertiary.f32(i32 46, float %11147, float %11141, float %11152)  ; FMad(a,b,c)
  %11154 = call float @dx.op.tertiary.f32(i32 46, float %11148, float %11142, float %11153)  ; FMad(a,b,c)
  %11155 = fsub fast float %11151, %11143
  %11156 = fsub fast float %11154, %11144
  %11157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %11158 = extractvalue %dx.types.CBufRet.f32 %11157, 0
  %11159 = extractvalue %dx.types.CBufRet.f32 %11157, 1
  %11160 = fsub fast float %11155, %11158
  %11161 = fsub fast float %11156, %11159
  %11162 = fmul fast float %11160, %11160
  %11163 = fmul fast float %11161, %11161
  %11164 = fadd fast float %11162, %11163
  %11165 = call float @dx.op.unary.f32(i32 24, float %11164)  ; Sqrt(value)
  %11166 = extractvalue %dx.types.CBufRet.f32 %11157, 2
  %11167 = fcmp fast olt float %11165, %11166
  br i1 %11167, label %11168, label %11724

; <label>:11168                                   ; preds = %11126
  %11169 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %52, i32 0)  ; GetDimensions(handle,mipLevel)
  %11170 = extractvalue %dx.types.Dimensions %11169, 0
  %11171 = sitofp i32 %11170 to float
  %11172 = extractvalue %dx.types.Dimensions %11169, 1
  %11173 = sitofp i32 %11172 to float
  %11174 = fadd fast float %11160, %11166
  %11175 = fadd fast float %11161, %11166
  %11176 = extractvalue %dx.types.CBufRet.f32 %11157, 3
  %11177 = fmul fast float %11174, %11176
  %11178 = fmul fast float %11175, %11176
  %11179 = call float @dx.op.unary.f32(i32 7, float %11177)  ; Saturate(value)
  %11180 = call float @dx.op.unary.f32(i32 7, float %11178)  ; Saturate(value)
  %11181 = fsub fast float 1.000000e+00, %11179
  %11182 = fsub fast float 1.000000e+00, %11180
  %11183 = fmul fast float %11181, %11171
  %11184 = fmul fast float %11182, %11173
  %11185 = call float @dx.op.unary.f32(i32 27, float %11183)  ; Round_ni(value)
  %11186 = call float @dx.op.unary.f32(i32 27, float %11184)  ; Round_ni(value)
  %11187 = fptoui float %11171 to i32
  %11188 = uitofp i32 %11187 to float
  %11189 = fmul fast float %11186, %11188
  %11190 = fadd fast float %11189, %11185
  %11191 = fptoui float %11190 to i32
  %11192 = uitofp i32 %11191 to float
  %11193 = fmul fast float %11192, 0x3FE3C6EF40000000
  %11194 = call float @dx.op.unary.f32(i32 22, float %11193)  ; Frc(value)
  %11195 = fadd fast float %11194, 0x3FE5555560000000
  %11196 = fadd fast float %11194, 0x3FD5555560000000
  %11197 = fsub fast float -0.000000e+00, %11194
  %11198 = fsub fast float -0.000000e+00, %11195
  %11199 = fsub fast float -0.000000e+00, %11196
  %11200 = fcmp fast oge float %11194, %11197
  %11201 = fcmp fast oge float %11195, %11198
  %11202 = fcmp fast oge float %11196, %11199
  %11203 = call float @dx.op.unary.f32(i32 6, float %11194)  ; FAbs(value)
  %11204 = call float @dx.op.unary.f32(i32 6, float %11195)  ; FAbs(value)
  %11205 = call float @dx.op.unary.f32(i32 6, float %11196)  ; FAbs(value)
  %11206 = call float @dx.op.unary.f32(i32 22, float %11203)  ; Frc(value)
  %11207 = call float @dx.op.unary.f32(i32 22, float %11204)  ; Frc(value)
  %11208 = call float @dx.op.unary.f32(i32 22, float %11205)  ; Frc(value)
  %11209 = fsub fast float -0.000000e+00, %11206
  %11210 = fsub fast float -0.000000e+00, %11207
  %11211 = fsub fast float -0.000000e+00, %11208
  %11212 = select i1 %11200, float %11206, float %11209
  %11213 = select i1 %11201, float %11207, float %11210
  %11214 = select i1 %11202, float %11208, float %11211
  %11215 = fmul fast float %11212, 6.000000e+00
  %11216 = fmul fast float %11213, 6.000000e+00
  %11217 = fmul fast float %11214, 6.000000e+00
  %11218 = fadd fast float %11215, -3.000000e+00
  %11219 = fadd fast float %11216, -3.000000e+00
  %11220 = fadd fast float %11217, -3.000000e+00
  %11221 = call float @dx.op.unary.f32(i32 6, float %11218)  ; FAbs(value)
  %11222 = call float @dx.op.unary.f32(i32 6, float %11219)  ; FAbs(value)
  %11223 = call float @dx.op.unary.f32(i32 6, float %11220)  ; FAbs(value)
  %11224 = fadd fast float %11221, -1.000000e+00
  %11225 = fadd fast float %11222, -1.000000e+00
  %11226 = fadd fast float %11223, -1.000000e+00
  %11227 = call float @dx.op.unary.f32(i32 7, float %11224)  ; Saturate(value)
  %11228 = call float @dx.op.unary.f32(i32 7, float %11225)  ; Saturate(value)
  %11229 = call float @dx.op.unary.f32(i32 7, float %11226)  ; Saturate(value)
  br label %11724

; <label>:11230                                   ; preds = %11124
  %11231 = icmp eq i32 %10788, 23
  br i1 %11231, label %11724, label %11232

; <label>:11232                                   ; preds = %11230
  %11233 = icmp eq i32 %10788, 24
  br i1 %11233, label %11234, label %11260

; <label>:11234                                   ; preds = %11232
  %11235 = and i32 %379, 255
  %11236 = uitofp i32 %11235 to float
  %11237 = fptoui float %11236 to i32
  %11238 = uitofp i32 %11237 to float
  %11239 = fadd fast float %11238, -4.000000e+00
  %11240 = fmul fast float %11239, 0x3FB5555560000000
  %11241 = call float @dx.op.unary.f32(i32 7, float %11240)  ; Saturate(value)
  %11242 = icmp eq i32 %11237, 0
  %11243 = select i1 %11242, float 0.000000e+00, float %11241
  %11244 = icmp ult i32 %11237, 2
  %11245 = select i1 %11244, float 0.000000e+00, float %11241
  %11246 = add i32 %11237, -1
  %11247 = icmp ult i32 %11246, 2
  %11248 = select i1 %11247, float 1.000000e+00, float %11243
  %11249 = icmp ult i32 %11237, 4
  %11250 = select i1 %11249, float 0.000000e+00, float 1.000000e+00
  %11251 = and i32 %11237, -2
  %11252 = icmp eq i32 %11251, 2
  %11253 = icmp eq i32 %11237, 4
  %11254 = select i1 %11253, float 1.000000e+00, float %11250
  %11255 = or i1 %11253, %11252
  %11256 = select i1 %11255, float 1.000000e+00, float %11245
  %11257 = add i32 %11237, -3
  %11258 = icmp ult i32 %11257, 2
  %11259 = select i1 %11258, float 0.000000e+00, float %11248
  br label %11724

; <label>:11260                                   ; preds = %11232
  %11261 = icmp eq i32 %10788, 25
  br i1 %11261, label %11724, label %11262

; <label>:11262                                   ; preds = %11260
  %11263 = icmp eq i32 %10788, 27
  br i1 %11263, label %11264, label %11319

; <label>:11264                                   ; preds = %11262
  %11265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %11266 = extractvalue %dx.types.CBufRet.f32 %11265, 2
  %11267 = fptoui float %11266 to i32
  %11268 = fptoui float %178 to i32
  %11269 = and i32 %11268, 31
  %11270 = lshr i32 %11267, %11269
  %11271 = uitofp i32 %11270 to float
  %11272 = fmul fast float %11271, %80
  %11273 = fmul fast float %11271, %81
  %11274 = call float @dx.op.unary.f32(i32 27, float %11272)  ; Round_ni(value)
  %11275 = call float @dx.op.unary.f32(i32 27, float %11273)  ; Round_ni(value)
  %11276 = fptoui float %11274 to i32
  %11277 = fptoui float %11275 to i32
  %11278 = fptoui float %11271 to i32
  %11279 = mul i32 %11278, %11277
  %11280 = add i32 %11279, %11276
  %11281 = uitofp i32 %11280 to float
  %11282 = fmul fast float %11281, 0x3FE3C6EF40000000
  %11283 = call float @dx.op.unary.f32(i32 22, float %11282)  ; Frc(value)
  %11284 = fadd fast float %11283, 0x3FE5555560000000
  %11285 = fadd fast float %11283, 0x3FD5555560000000
  %11286 = fsub fast float -0.000000e+00, %11283
  %11287 = fsub fast float -0.000000e+00, %11284
  %11288 = fsub fast float -0.000000e+00, %11285
  %11289 = fcmp fast oge float %11283, %11286
  %11290 = fcmp fast oge float %11284, %11287
  %11291 = fcmp fast oge float %11285, %11288
  %11292 = call float @dx.op.unary.f32(i32 6, float %11283)  ; FAbs(value)
  %11293 = call float @dx.op.unary.f32(i32 6, float %11284)  ; FAbs(value)
  %11294 = call float @dx.op.unary.f32(i32 6, float %11285)  ; FAbs(value)
  %11295 = call float @dx.op.unary.f32(i32 22, float %11292)  ; Frc(value)
  %11296 = call float @dx.op.unary.f32(i32 22, float %11293)  ; Frc(value)
  %11297 = call float @dx.op.unary.f32(i32 22, float %11294)  ; Frc(value)
  %11298 = fsub fast float -0.000000e+00, %11295
  %11299 = fsub fast float -0.000000e+00, %11296
  %11300 = fsub fast float -0.000000e+00, %11297
  %11301 = select i1 %11289, float %11295, float %11298
  %11302 = select i1 %11290, float %11296, float %11299
  %11303 = select i1 %11291, float %11297, float %11300
  %11304 = fmul fast float %11301, 6.000000e+00
  %11305 = fmul fast float %11302, 6.000000e+00
  %11306 = fmul fast float %11303, 6.000000e+00
  %11307 = fadd fast float %11304, -3.000000e+00
  %11308 = fadd fast float %11305, -3.000000e+00
  %11309 = fadd fast float %11306, -3.000000e+00
  %11310 = call float @dx.op.unary.f32(i32 6, float %11307)  ; FAbs(value)
  %11311 = call float @dx.op.unary.f32(i32 6, float %11308)  ; FAbs(value)
  %11312 = call float @dx.op.unary.f32(i32 6, float %11309)  ; FAbs(value)
  %11313 = fadd fast float %11310, -1.000000e+00
  %11314 = fadd fast float %11311, -1.000000e+00
  %11315 = fadd fast float %11312, -1.000000e+00
  %11316 = call float @dx.op.unary.f32(i32 7, float %11313)  ; Saturate(value)
  %11317 = call float @dx.op.unary.f32(i32 7, float %11314)  ; Saturate(value)
  %11318 = call float @dx.op.unary.f32(i32 7, float %11315)  ; Saturate(value)
  br label %11724

; <label>:11319                                   ; preds = %11262
  %11320 = icmp eq i32 %10788, 30
  br i1 %11320, label %11321, label %11361

; <label>:11321                                   ; preds = %11319
  %11322 = fcmp fast olt float %429, 0.000000e+00
  br i1 %11322, label %11724, label %11323

; <label>:11323                                   ; preds = %11321
  %11324 = fmul fast float %429, 0x3FE3C6EF40000000
  %11325 = call float @dx.op.unary.f32(i32 22, float %11324)  ; Frc(value)
  %11326 = fadd fast float %11325, 0x3FE5555560000000
  %11327 = fadd fast float %11325, 0x3FD5555560000000
  %11328 = fsub fast float -0.000000e+00, %11325
  %11329 = fsub fast float -0.000000e+00, %11326
  %11330 = fsub fast float -0.000000e+00, %11327
  %11331 = fcmp fast oge float %11325, %11328
  %11332 = fcmp fast oge float %11326, %11329
  %11333 = fcmp fast oge float %11327, %11330
  %11334 = call float @dx.op.unary.f32(i32 6, float %11325)  ; FAbs(value)
  %11335 = call float @dx.op.unary.f32(i32 6, float %11326)  ; FAbs(value)
  %11336 = call float @dx.op.unary.f32(i32 6, float %11327)  ; FAbs(value)
  %11337 = call float @dx.op.unary.f32(i32 22, float %11334)  ; Frc(value)
  %11338 = call float @dx.op.unary.f32(i32 22, float %11335)  ; Frc(value)
  %11339 = call float @dx.op.unary.f32(i32 22, float %11336)  ; Frc(value)
  %11340 = fsub fast float -0.000000e+00, %11337
  %11341 = fsub fast float -0.000000e+00, %11338
  %11342 = fsub fast float -0.000000e+00, %11339
  %11343 = select i1 %11331, float %11337, float %11340
  %11344 = select i1 %11332, float %11338, float %11341
  %11345 = select i1 %11333, float %11339, float %11342
  %11346 = fmul fast float %11343, 6.000000e+00
  %11347 = fmul fast float %11344, 6.000000e+00
  %11348 = fmul fast float %11345, 6.000000e+00
  %11349 = fadd fast float %11346, -3.000000e+00
  %11350 = fadd fast float %11347, -3.000000e+00
  %11351 = fadd fast float %11348, -3.000000e+00
  %11352 = call float @dx.op.unary.f32(i32 6, float %11349)  ; FAbs(value)
  %11353 = call float @dx.op.unary.f32(i32 6, float %11350)  ; FAbs(value)
  %11354 = call float @dx.op.unary.f32(i32 6, float %11351)  ; FAbs(value)
  %11355 = fadd fast float %11352, -1.000000e+00
  %11356 = fadd fast float %11353, -1.000000e+00
  %11357 = fadd fast float %11354, -1.000000e+00
  %11358 = call float @dx.op.unary.f32(i32 7, float %11355)  ; Saturate(value)
  %11359 = call float @dx.op.unary.f32(i32 7, float %11356)  ; Saturate(value)
  %11360 = call float @dx.op.unary.f32(i32 7, float %11357)  ; Saturate(value)
  br label %11724

; <label>:11361                                   ; preds = %11319
  %11362 = add i32 %10788, -31
  %11363 = icmp ult i32 %11362, 2
  br i1 %11363, label %11364, label %11372

; <label>:11364                                   ; preds = %11361
  %11365 = fcmp fast olt float %430, 0.000000e+00
  %11366 = call float @dx.op.unary.f32(i32 6, float %430)  ; FAbs(value)
  %11367 = fmul fast float %11366, 5.000000e-01
  %11368 = call float @dx.op.unary.f32(i32 7, float %11367)  ; Saturate(value)
  %11369 = select i1 %11365, float 0.000000e+00, float %11368
  %11370 = select i1 %11365, float %11368, float 0.000000e+00
  %11371 = fadd fast float %11368, 5.000000e-01
  br label %11724

; <label>:11372                                   ; preds = %11361
  %11373 = icmp eq i32 %10788, 36
  br i1 %11373, label %11374, label %11406

; <label>:11374                                   ; preds = %11372
  %11375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %11376 = extractvalue %dx.types.CBufRet.i32 %11375, 0
  %11377 = and i32 %11376, 2048
  %11378 = icmp ne i32 %11377, 0
  %11379 = call float @dx.op.binary.f32(i32 35, float %2420, float %2421)  ; FMax(a,b)
  %11380 = call float @dx.op.binary.f32(i32 35, float %2419, float %11379)  ; FMax(a,b)
  %11381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %11382 = extractvalue %dx.types.CBufRet.f32 %11381, 1
  %11383 = fcmp fast oge float %11380, %11382
  %11384 = and i1 %11378, %11383
  br i1 %11384, label %11385, label %11391

; <label>:11385                                   ; preds = %11374
  %11386 = fsub fast float 1.000000e+00, %10767
  %11387 = fmul fast float %11386, 5.000000e-01
  %11388 = fadd fast float %11387, %10767
  %11389 = fmul fast float %10768, 5.000000e-01
  %11390 = fmul fast float %10769, 5.000000e-01
  br label %11724

; <label>:11391                                   ; preds = %11374
  %11392 = call float @dx.op.dot3.f32(i32 55, float %2372, float %2373, float %2374, float %2291, float %2292, float %2293)  ; Dot3(ax,ay,az,bx,by,bz)
  %11393 = and i32 %11376, 1024
  %11394 = icmp ne i32 %11393, 0
  %11395 = extractvalue %dx.types.CBufRet.f32 %11381, 2
  %11396 = fcmp fast ole float %11392, %11395
  %11397 = and i1 %11394, %11396
  br i1 %11397, label %11398, label %11724

; <label>:11398                                   ; preds = %11391
  %11399 = fsub fast float 1.000000e+00, %10767
  %11400 = fsub fast float 1.000000e+00, %10768
  %11401 = fmul fast float %11399, 5.000000e-01
  %11402 = fmul fast float %11400, 5.000000e-01
  %11403 = fadd fast float %11401, %10767
  %11404 = fadd fast float %11402, %10768
  %11405 = fmul fast float %10769, 5.000000e-01
  br label %11724

; <label>:11406                                   ; preds = %11372
  %11407 = icmp eq i32 %10788, 40
  br i1 %11407, label %11408, label %11645

; <label>:11408                                   ; preds = %11406
  %11409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %11410 = extractvalue %dx.types.CBufRet.f32 %11409, 0
  %11411 = fcmp fast ogt float %2362, %11410
  %11412 = zext i1 %11411 to i32
  %11413 = extractvalue %dx.types.CBufRet.f32 %11409, 1
  %11414 = fcmp fast ogt float %2362, %11413
  %11415 = zext i1 %11414 to i32
  %11416 = add nuw nsw i32 %11415, %11412
  %11417 = extractvalue %dx.types.CBufRet.f32 %11409, 2
  %11418 = fcmp fast ogt float %2362, %11417
  %11419 = zext i1 %11418 to i32
  %11420 = add nuw nsw i32 %11416, %11419
  %11421 = icmp ult i32 %11420, 3
  %11422 = zext i1 %11421 to i32
  %11423 = shl nuw nsw i32 %11420, 2
  %11424 = add nuw nsw i32 %11423, 48
  %11425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %11424)  ; CBufferLoadLegacy(handle,regIndex)
  %11426 = extractvalue %dx.types.CBufRet.f32 %11425, 1
  %11427 = fcmp fast ogt float %2362, %11426
  %11428 = zext i1 %11427 to i32
  %11429 = or i32 %11423, 1
  %11430 = add nuw nsw i32 %11429, 48
  %11431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %11430)  ; CBufferLoadLegacy(handle,regIndex)
  %11432 = extractvalue %dx.types.CBufRet.f32 %11431, 1
  %11433 = fcmp fast ogt float %2362, %11432
  %11434 = zext i1 %11433 to i32
  %11435 = add nuw nsw i32 %11434, %11428
  %11436 = or i32 %11423, 2
  %11437 = add nuw nsw i32 %11436, 48
  %11438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %11437)  ; CBufferLoadLegacy(handle,regIndex)
  %11439 = extractvalue %dx.types.CBufRet.f32 %11438, 1
  %11440 = fcmp fast ogt float %2362, %11439
  %11441 = zext i1 %11440 to i32
  %11442 = add nuw nsw i32 %11435, %11441
  %11443 = call i32 @dx.op.binary.i32(i32 40, i32 %11442, i32 3)  ; UMin(a,b)
  %11444 = add i32 %11423, %11443
  %11445 = call i32 @dx.op.binary.i32(i32 40, i32 %11444, i32 12)  ; UMin(a,b)
  %11446 = add i32 %11445, 48
  %11447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %11446)  ; CBufferLoadLegacy(handle,regIndex)
  %11448 = extractvalue %dx.types.CBufRet.f32 %11447, 0
  %11449 = fcmp fast oge float %2362, %11448
  %11450 = zext i1 %11449 to i32
  %11451 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %11422)  ; UMin(a,b)
  %11452 = call i32 @dx.op.binary.i32(i32 40, i32 %11450, i32 %11451)  ; UMin(a,b)
  %11453 = fmul fast float %10778, 7.500000e-01
  %11454 = fadd fast float %11453, %10776
  %11455 = fcmp fast ult float %10773, %11454
  br i1 %11455, label %11495, label %11456

; <label>:11456                                   ; preds = %11408
  %11457 = uitofp i32 %11445 to float
  %11458 = fmul fast float %11457, 0x3FE3C6EF40000000
  %11459 = call float @dx.op.unary.f32(i32 22, float %11458)  ; Frc(value)
  %11460 = fadd fast float %11459, 0x3FE5555560000000
  %11461 = fadd fast float %11459, 0x3FD5555560000000
  %11462 = fsub fast float -0.000000e+00, %11459
  %11463 = fsub fast float -0.000000e+00, %11460
  %11464 = fsub fast float -0.000000e+00, %11461
  %11465 = fcmp fast oge float %11459, %11462
  %11466 = fcmp fast oge float %11460, %11463
  %11467 = fcmp fast oge float %11461, %11464
  %11468 = call float @dx.op.unary.f32(i32 6, float %11459)  ; FAbs(value)
  %11469 = call float @dx.op.unary.f32(i32 6, float %11460)  ; FAbs(value)
  %11470 = call float @dx.op.unary.f32(i32 6, float %11461)  ; FAbs(value)
  %11471 = call float @dx.op.unary.f32(i32 22, float %11468)  ; Frc(value)
  %11472 = call float @dx.op.unary.f32(i32 22, float %11469)  ; Frc(value)
  %11473 = call float @dx.op.unary.f32(i32 22, float %11470)  ; Frc(value)
  %11474 = fsub fast float -0.000000e+00, %11471
  %11475 = fsub fast float -0.000000e+00, %11472
  %11476 = fsub fast float -0.000000e+00, %11473
  %11477 = select i1 %11465, float %11471, float %11474
  %11478 = select i1 %11466, float %11472, float %11475
  %11479 = select i1 %11467, float %11473, float %11476
  %11480 = fmul fast float %11477, 6.000000e+00
  %11481 = fmul fast float %11478, 6.000000e+00
  %11482 = fmul fast float %11479, 6.000000e+00
  %11483 = fadd fast float %11480, -3.000000e+00
  %11484 = fadd fast float %11481, -3.000000e+00
  %11485 = fadd fast float %11482, -3.000000e+00
  %11486 = call float @dx.op.unary.f32(i32 6, float %11483)  ; FAbs(value)
  %11487 = call float @dx.op.unary.f32(i32 6, float %11484)  ; FAbs(value)
  %11488 = call float @dx.op.unary.f32(i32 6, float %11485)  ; FAbs(value)
  %11489 = fadd fast float %11486, -1.000000e+00
  %11490 = fadd fast float %11487, -1.000000e+00
  %11491 = fadd fast float %11488, -1.000000e+00
  %11492 = call float @dx.op.unary.f32(i32 7, float %11489)  ; Saturate(value)
  %11493 = call float @dx.op.unary.f32(i32 7, float %11490)  ; Saturate(value)
  %11494 = call float @dx.op.unary.f32(i32 7, float %11491)  ; Saturate(value)
  br label %11632

; <label>:11495                                   ; preds = %11408
  %11496 = fmul fast float %10778, 5.000000e-01
  %11497 = fadd fast float %11496, %10776
  %11498 = fcmp fast ult float %10773, %11497
  br i1 %11498, label %11525, label %11499

; <label>:11499                                   ; preds = %11495
  %11500 = add i32 %11452, 4
  %11501 = icmp eq i32 %11500, 0
  br i1 %11501, label %11632, label %11502

; <label>:11502                                   ; preds = %11499
  br label %11503

; <label>:11503                                   ; preds = %11503, %11502
  %11504 = phi float [ %11520, %11503 ], [ 0.000000e+00, %11502 ]
  %11505 = phi i32 [ %11521, %11503 ], [ 0, %11502 ]
  %11506 = add i32 %11445, 32
  %11507 = add i32 %11506, %11505
  %11508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %11507)  ; CBufferLoadLegacy(handle,regIndex)
  %11509 = extractvalue %dx.types.CBufRet.f32 %11508, 0
  %11510 = extractvalue %dx.types.CBufRet.f32 %11508, 1
  %11511 = extractvalue %dx.types.CBufRet.f32 %11508, 2
  %11512 = extractvalue %dx.types.CBufRet.f32 %11508, 3
  %11513 = fmul fast float %11509, %2362
  %11514 = fadd fast float %11513, %11510
  %11515 = call float @dx.op.unary.f32(i32 7, float %11514)  ; Saturate(value)
  %11516 = fmul fast float %11511, %2362
  %11517 = fadd fast float %11516, %11512
  %11518 = call float @dx.op.unary.f32(i32 7, float %11517)  ; Saturate(value)
  %11519 = call float @dx.op.binary.f32(i32 36, float %11515, float %11518)  ; FMin(a,b)
  %11520 = fadd fast float %11519, %11504
  %11521 = add nuw i32 %11505, 1
  %11522 = icmp eq i32 %11521, %11500
  br i1 %11522, label %11523, label %11503

; <label>:11523                                   ; preds = %11503
  %11524 = fmul float %11520, 2.500000e-01
  br label %11632

; <label>:11525                                   ; preds = %11495
  %11526 = fmul fast float %10778, 2.500000e-01
  %11527 = fadd fast float %11526, %10776
  %11528 = fcmp fast ult float %10773, %11527
  br i1 %11528, label %11628, label %11529

; <label>:11529                                   ; preds = %11525
  %11530 = add i32 %11445, 32
  %11531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %11530)  ; CBufferLoadLegacy(handle,regIndex)
  %11532 = extractvalue %dx.types.CBufRet.f32 %11531, 0
  %11533 = extractvalue %dx.types.CBufRet.f32 %11531, 1
  %11534 = extractvalue %dx.types.CBufRet.f32 %11531, 2
  %11535 = extractvalue %dx.types.CBufRet.f32 %11531, 3
  %11536 = fmul fast float %11532, %2362
  %11537 = fadd fast float %11536, %11533
  %11538 = call float @dx.op.unary.f32(i32 7, float %11537)  ; Saturate(value)
  %11539 = fmul fast float %11534, %2362
  %11540 = fadd fast float %11539, %11535
  %11541 = call float @dx.op.unary.f32(i32 7, float %11540)  ; Saturate(value)
  %11542 = call float @dx.op.binary.f32(i32 36, float %11538, float %11541)  ; FMin(a,b)
  %11543 = uitofp i32 %11445 to float
  %11544 = fmul fast float %11543, 0x3FE3C6EF40000000
  %11545 = call float @dx.op.unary.f32(i32 22, float %11544)  ; Frc(value)
  %11546 = fadd fast float %11545, 0x3FE5555560000000
  %11547 = fadd fast float %11545, 0x3FD5555560000000
  %11548 = fsub fast float -0.000000e+00, %11545
  %11549 = fsub fast float -0.000000e+00, %11546
  %11550 = fsub fast float -0.000000e+00, %11547
  %11551 = fcmp fast oge float %11545, %11548
  %11552 = fcmp fast oge float %11546, %11549
  %11553 = fcmp fast oge float %11547, %11550
  %11554 = call float @dx.op.unary.f32(i32 6, float %11545)  ; FAbs(value)
  %11555 = call float @dx.op.unary.f32(i32 6, float %11546)  ; FAbs(value)
  %11556 = call float @dx.op.unary.f32(i32 6, float %11547)  ; FAbs(value)
  %11557 = call float @dx.op.unary.f32(i32 22, float %11554)  ; Frc(value)
  %11558 = call float @dx.op.unary.f32(i32 22, float %11555)  ; Frc(value)
  %11559 = call float @dx.op.unary.f32(i32 22, float %11556)  ; Frc(value)
  %11560 = fsub fast float -0.000000e+00, %11557
  %11561 = fsub fast float -0.000000e+00, %11558
  %11562 = fsub fast float -0.000000e+00, %11559
  %11563 = select i1 %11551, float %11557, float %11560
  %11564 = select i1 %11552, float %11558, float %11561
  %11565 = select i1 %11553, float %11559, float %11562
  %11566 = fmul fast float %11563, 6.000000e+00
  %11567 = fmul fast float %11564, 6.000000e+00
  %11568 = fmul fast float %11565, 6.000000e+00
  %11569 = fadd fast float %11566, -3.000000e+00
  %11570 = fadd fast float %11567, -3.000000e+00
  %11571 = fadd fast float %11568, -3.000000e+00
  %11572 = call float @dx.op.unary.f32(i32 6, float %11569)  ; FAbs(value)
  %11573 = call float @dx.op.unary.f32(i32 6, float %11570)  ; FAbs(value)
  %11574 = call float @dx.op.unary.f32(i32 6, float %11571)  ; FAbs(value)
  %11575 = fadd fast float %11572, -1.000000e+00
  %11576 = fadd fast float %11573, -1.000000e+00
  %11577 = fadd fast float %11574, -1.000000e+00
  %11578 = call float @dx.op.unary.f32(i32 7, float %11575)  ; Saturate(value)
  %11579 = call float @dx.op.unary.f32(i32 7, float %11576)  ; Saturate(value)
  %11580 = call float @dx.op.unary.f32(i32 7, float %11577)  ; Saturate(value)
  %11581 = fadd fast float %11543, 1.000000e+00
  %11582 = fmul fast float %11581, 0x3FE3C6EF40000000
  %11583 = call float @dx.op.unary.f32(i32 22, float %11582)  ; Frc(value)
  %11584 = fadd fast float %11583, 0x3FE5555560000000
  %11585 = fadd fast float %11583, 0x3FD5555560000000
  %11586 = fsub fast float -0.000000e+00, %11583
  %11587 = fsub fast float -0.000000e+00, %11584
  %11588 = fsub fast float -0.000000e+00, %11585
  %11589 = fcmp fast oge float %11583, %11586
  %11590 = fcmp fast oge float %11584, %11587
  %11591 = fcmp fast oge float %11585, %11588
  %11592 = call float @dx.op.unary.f32(i32 6, float %11583)  ; FAbs(value)
  %11593 = call float @dx.op.unary.f32(i32 6, float %11584)  ; FAbs(value)
  %11594 = call float @dx.op.unary.f32(i32 6, float %11585)  ; FAbs(value)
  %11595 = call float @dx.op.unary.f32(i32 22, float %11592)  ; Frc(value)
  %11596 = call float @dx.op.unary.f32(i32 22, float %11593)  ; Frc(value)
  %11597 = call float @dx.op.unary.f32(i32 22, float %11594)  ; Frc(value)
  %11598 = fsub fast float -0.000000e+00, %11595
  %11599 = fsub fast float -0.000000e+00, %11596
  %11600 = fsub fast float -0.000000e+00, %11597
  %11601 = select i1 %11589, float %11595, float %11598
  %11602 = select i1 %11590, float %11596, float %11599
  %11603 = select i1 %11591, float %11597, float %11600
  %11604 = fmul fast float %11601, 6.000000e+00
  %11605 = fmul fast float %11602, 6.000000e+00
  %11606 = fmul fast float %11603, 6.000000e+00
  %11607 = fadd fast float %11604, -3.000000e+00
  %11608 = fadd fast float %11605, -3.000000e+00
  %11609 = fadd fast float %11606, -3.000000e+00
  %11610 = call float @dx.op.unary.f32(i32 6, float %11607)  ; FAbs(value)
  %11611 = call float @dx.op.unary.f32(i32 6, float %11608)  ; FAbs(value)
  %11612 = call float @dx.op.unary.f32(i32 6, float %11609)  ; FAbs(value)
  %11613 = fadd fast float %11610, -1.000000e+00
  %11614 = fadd fast float %11611, -1.000000e+00
  %11615 = fadd fast float %11612, -1.000000e+00
  %11616 = call float @dx.op.unary.f32(i32 7, float %11613)  ; Saturate(value)
  %11617 = call float @dx.op.unary.f32(i32 7, float %11614)  ; Saturate(value)
  %11618 = call float @dx.op.unary.f32(i32 7, float %11615)  ; Saturate(value)
  %11619 = fsub fast float %11616, %11578
  %11620 = fsub fast float %11617, %11579
  %11621 = fsub fast float %11618, %11580
  %11622 = fmul fast float %11619, %11542
  %11623 = fmul fast float %11620, %11542
  %11624 = fmul fast float %11621, %11542
  %11625 = fadd fast float %11622, %11578
  %11626 = fadd fast float %11623, %11579
  %11627 = fadd fast float %11624, %11580
  br label %11632

; <label>:11628                                   ; preds = %11525
  %11629 = icmp ne i32 %11452, 0
  %11630 = select i1 %11629, float 1.000000e+00, float 0.000000e+00
  %11631 = select i1 %11629, float 0.000000e+00, float 1.000000e+00
  br label %11632

; <label>:11632                                   ; preds = %11628, %11529, %11523, %11499, %11456
  %11633 = phi float [ %11492, %11456 ], [ %11625, %11529 ], [ %11630, %11628 ], [ 0.000000e+00, %11499 ], [ %11524, %11523 ]
  %11634 = phi float [ %11493, %11456 ], [ %11626, %11529 ], [ %11631, %11628 ], [ 0.000000e+00, %11499 ], [ %11524, %11523 ]
  %11635 = phi float [ %11494, %11456 ], [ %11627, %11529 ], [ 0.000000e+00, %11628 ], [ 0.000000e+00, %11499 ], [ %11524, %11523 ]
  %11636 = fsub fast float %11633, %10767
  %11637 = fsub fast float %11634, %10768
  %11638 = fsub fast float %11635, %10769
  %11639 = fmul fast float %11636, 5.000000e-01
  %11640 = fmul fast float %11637, 5.000000e-01
  %11641 = fmul fast float %11638, 5.000000e-01
  %11642 = fadd fast float %11639, %10767
  %11643 = fadd fast float %11640, %10768
  %11644 = fadd fast float %11641, %10769
  br label %11724

; <label>:11645                                   ; preds = %11406
  %11646 = icmp eq i32 %10788, 41
  br i1 %11646, label %11647, label %11716

; <label>:11647                                   ; preds = %11645
  %11648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %11649 = extractvalue %dx.types.CBufRet.i32 %11648, 0
  %11650 = icmp eq i32 %11649, 2
  %11651 = and i1 %921, %11650
  %11652 = icmp eq i32 %11649, 3
  %11653 = and i1 %923, %11652
  %11654 = or i1 %11653, %11651
  %11655 = icmp eq i32 %11649, 4
  %11656 = and i1 %935, %11655
  %11657 = or i1 %11656, %11654
  %11658 = icmp eq i32 %11649, 5
  %11659 = icmp ne i32 %938, 0
  %11660 = and i1 %11659, %11658
  %11661 = or i1 %11660, %11657
  %11662 = icmp eq i32 %11649, 6
  %11663 = and i1 %941, %11662
  %11664 = or i1 %11663, %11661
  %11665 = icmp eq i32 %11649, 8
  %11666 = and i32 %1258, 64
  %11667 = icmp ne i32 %11666, 0
  %11668 = and i1 %11667, %11665
  %11669 = or i1 %11668, %11664
  %11670 = icmp eq i32 %11649, 9
  %11671 = and i32 %1263, 128
  %11672 = icmp ne i32 %11671, 0
  %11673 = and i1 %11672, %11670
  %11674 = or i1 %11673, %11669
  %11675 = icmp eq i32 %11649, 11
  %11676 = and i32 %1263, 160
  %11677 = icmp ne i32 %11676, 0
  %11678 = and i1 %11677, %11675
  %11679 = or i1 %11678, %11674
  %11680 = icmp eq i32 %11649, 13
  %11681 = icmp ne i32 %944, 0
  %11682 = and i1 %11681, %11680
  %11683 = or i1 %11682, %11679
  %11684 = icmp eq i32 %11649, 14
  %11685 = and i1 %1721, %11684
  %11686 = or i1 %11685, %11683
  %11687 = icmp eq i32 %11649, 7
  %11688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %11689 = extractvalue %dx.types.ResRet.i32 %11688, 0
  %11690 = and i32 %11689, 1024
  %11691 = icmp ne i32 %11690, 0
  %11692 = and i1 %11687, %11691
  %11693 = or i1 %11692, %11686
  %11694 = icmp eq i32 %11649, 10
  %11695 = and i32 %11689, 2048
  %11696 = icmp ne i32 %11695, 0
  %11697 = and i1 %11694, %11696
  %11698 = or i1 %11697, %11693
  %11699 = icmp eq i32 %11649, 12
  %11700 = and i32 %11689, 3072
  %11701 = icmp ne i32 %11700, 0
  %11702 = and i1 %11699, %11701
  %11703 = or i1 %11702, %11698
  %11704 = icmp eq i32 %11649, 15
  %11705 = and i32 %11689, 4096
  %11706 = icmp ne i32 %11705, 0
  %11707 = and i1 %11704, %11706
  %11708 = or i1 %11707, %11703
  %11709 = select i1 %11708, float 5.000000e-01, float %10767
  %11710 = select i1 %11708, float 0x3FB99999A0000000, float %10768
  %11711 = select i1 %11708, float 0x3FB99999A0000000, float %10769
  %11712 = fcmp fast ogt float %73, 0.000000e+00
  %11713 = and i1 %11712, %11687
  %11714 = select i1 %11713, float 1.000000e+00, float %11710
  %11715 = select i1 %11713, float 1.000000e+00, float %11711
  br label %11724

; <label>:11716                                   ; preds = %11645
  %11717 = icmp eq i32 %10788, 45
  br i1 %11717, label %11718, label %11724

; <label>:11718                                   ; preds = %11716
  %11719 = fcmp fast ogt float %1632, %1647
  %11720 = fsub fast float %1632, %1647
  %11721 = call float @dx.op.unary.f32(i32 6, float %11720)  ; FAbs(value)
  %11722 = select i1 %11719, float %11721, float 0.000000e+00
  %11723 = select i1 %11719, float 0.000000e+00, float %11721
  br label %11724

; <label>:11724                                   ; preds = %11718, %11716, %11647, %11632, %11398, %11391, %11385, %11364, %11323, %11321, %11264, %11260, %11234, %11230, %11168, %11126, %11071, %11066, %11052, %11010, %11003, %10998, %10994, %10992, %10990, %10988, %10986, %10984, %10982, %10980, %10978, %10976, %10962, %10958, %10956, %10954, %10945, %10854, %10834, %10793, %10766
  %11725 = phi float [ %10829, %10793 ], [ %10835, %10834 ], [ %10939, %10854 ], [ %10951, %10945 ], [ %10971, %10962 ], [ %10977, %10976 ], [ %11001, %10998 ], [ %11068, %11066 ], [ %11121, %11071 ], [ %11227, %11168 ], [ %11254, %11234 ], [ %11316, %11264 ], [ %11358, %11323 ], [ %11371, %11364 ], [ %11388, %11385 ], [ %11403, %11398 ], [ %10767, %11391 ], [ %11642, %11632 ], [ %11709, %11647 ], [ %11722, %11718 ], [ %10767, %11716 ], [ %10767, %10766 ], [ 0.000000e+00, %10954 ], [ 0.000000e+00, %10992 ], [ %73, %11003 ], [ 1.000000e+00, %11052 ], [ 0.000000e+00, %11010 ], [ 0.000000e+00, %11126 ], [ 0.000000e+00, %11321 ], [ %305, %10956 ], [ %320, %10958 ], [ %360, %10978 ], [ %373, %10980 ], [ %627, %10982 ], [ %79, %10984 ], [ %919, %10986 ], [ %920, %10988 ], [ %1671, %10990 ], [ %73, %10994 ], [ 0.000000e+00, %11230 ], [ 0.000000e+00, %11260 ]
  %11726 = phi float [ %10830, %10793 ], [ %10836, %10834 ], [ %10940, %10854 ], [ %10952, %10945 ], [ %10973, %10962 ], [ %10977, %10976 ], [ %11002, %10998 ], [ %11069, %11066 ], [ %11122, %11071 ], [ %11228, %11168 ], [ %11256, %11234 ], [ %11317, %11264 ], [ %11359, %11323 ], [ %11369, %11364 ], [ %11389, %11385 ], [ %11404, %11398 ], [ %10768, %11391 ], [ %11643, %11632 ], [ %11714, %11647 ], [ %11723, %11718 ], [ %10768, %11716 ], [ %10768, %10766 ], [ 0.000000e+00, %10954 ], [ 1.000000e+00, %10992 ], [ %74, %11003 ], [ 0.000000e+00, %11052 ], [ 1.000000e+00, %11010 ], [ 1.000000e+00, %11126 ], [ 1.000000e+00, %11321 ], [ %305, %10956 ], [ %320, %10958 ], [ %360, %10978 ], [ %373, %10980 ], [ %627, %10982 ], [ %79, %10984 ], [ %919, %10986 ], [ %920, %10988 ], [ %1671, %10990 ], [ %74, %10994 ], [ 0.000000e+00, %11230 ], [ 0.000000e+00, %11260 ]
  %11727 = phi float [ %10831, %10793 ], [ %10837, %10834 ], [ %10941, %10854 ], [ %10953, %10945 ], [ 0.000000e+00, %10962 ], [ %10977, %10976 ], [ %918, %10998 ], [ %11070, %11066 ], [ %11123, %11071 ], [ %11229, %11168 ], [ %11259, %11234 ], [ %11318, %11264 ], [ %11360, %11323 ], [ %11370, %11364 ], [ %11390, %11385 ], [ %11405, %11398 ], [ %10769, %11391 ], [ %11644, %11632 ], [ %11715, %11647 ], [ 0.000000e+00, %11718 ], [ %10769, %11716 ], [ %10769, %10766 ], [ 0.000000e+00, %10954 ], [ 1.000000e+00, %10992 ], [ %75, %11003 ], [ 1.000000e+00, %11052 ], [ 1.000000e+00, %11010 ], [ 1.000000e+00, %11126 ], [ 0.000000e+00, %11321 ], [ %305, %10956 ], [ %320, %10958 ], [ %360, %10978 ], [ %373, %10980 ], [ %627, %10982 ], [ %79, %10984 ], [ %919, %10986 ], [ %920, %10988 ], [ %1671, %10990 ], [ %75, %10994 ], [ 0.000000e+00, %11230 ], [ 1.000000e+00, %11260 ]
  %11728 = fadd fast float %1766, 0x3FE3C6EF40000000
  %11729 = call float @dx.op.unary.f32(i32 22, float %11728)  ; Frc(value)
  %11730 = call float @dx.op.unary.f32(i32 23, float %11725)  ; Log(value)
  %11731 = fadd fast float %11730, -7.000000e+00
  %11732 = call float @dx.op.unary.f32(i32 21, float %11731)  ; Exp(value)
  %11733 = fmul fast float %11729, 2.000000e+00
  %11734 = fadd fast float %11733, -1.000000e+00
  %11735 = fmul fast float %11732, %11734
  %11736 = fcmp fast ogt float %11725, 0.000000e+00
  %11737 = select i1 %11736, float %11735, float 0.000000e+00
  %11738 = fadd fast float %11737, %11725
  %11739 = fadd fast float %1766, 0x3FF3C6EF40000000
  %11740 = call float @dx.op.unary.f32(i32 22, float %11739)  ; Frc(value)
  %11741 = call float @dx.op.unary.f32(i32 23, float %11726)  ; Log(value)
  %11742 = fadd fast float %11741, -7.000000e+00
  %11743 = call float @dx.op.unary.f32(i32 21, float %11742)  ; Exp(value)
  %11744 = fmul fast float %11740, 2.000000e+00
  %11745 = fadd fast float %11744, -1.000000e+00
  %11746 = fmul fast float %11743, %11745
  %11747 = fcmp fast ogt float %11726, 0.000000e+00
  %11748 = select i1 %11747, float %11746, float 0.000000e+00
  %11749 = fadd fast float %11748, %11726
  %11750 = fadd fast float %1766, 0x3FFDAA66E0000000
  %11751 = call float @dx.op.unary.f32(i32 22, float %11750)  ; Frc(value)
  %11752 = call float @dx.op.unary.f32(i32 23, float %11727)  ; Log(value)
  %11753 = fadd fast float %11752, -6.000000e+00
  %11754 = call float @dx.op.unary.f32(i32 21, float %11753)  ; Exp(value)
  %11755 = fmul fast float %11751, 2.000000e+00
  %11756 = fadd fast float %11755, -1.000000e+00
  %11757 = fmul fast float %11754, %11756
  %11758 = fcmp fast ogt float %11727, 0.000000e+00
  %11759 = select i1 %11758, float %11757, float 0.000000e+00
  %11760 = fadd fast float %11759, %11727
  %11761 = call float @dx.op.binary.f32(i32 36, float %11738, float 3.225500e+04)  ; FMin(a,b)
  %11762 = call float @dx.op.binary.f32(i32 36, float %11749, float 3.225500e+04)  ; FMin(a,b)
  %11763 = call float @dx.op.binary.f32(i32 36, float %11760, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %11761)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %11762)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %11763)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:11764                                   ; preds = %9931
  %11765 = fcmp fast olt float %2462, %9914
  br i1 %11765, label %9917, label %11766

; <label>:11766                                   ; preds = %11764
  %11767 = fcmp fast olt float %2462, %9915
  br i1 %11767, label %9917, label %10118

; <label>:11768                                   ; preds = %10009
  %11769 = fcmp fast olt float %88, 5.120000e+02
  br i1 %11769, label %9995, label %11770

; <label>:11770                                   ; preds = %11768
  %11771 = fcmp fast olt float %88, 1.024000e+03
  br i1 %11771, label %9995, label %11772

; <label>:11772                                   ; preds = %11770
  %11773 = fcmp fast olt float %88, 1.536000e+03
  br i1 %11773, label %9995, label %11774

; <label>:11774                                   ; preds = %11772
  %11775 = fcmp fast olt float %88, 2.048000e+03
  br i1 %11775, label %9995, label %11776

; <label>:11776                                   ; preds = %11774
  %11777 = fcmp fast olt float %88, 3.072000e+03
  br i1 %11777, label %9995, label %11778

; <label>:11778                                   ; preds = %11776
  %11779 = fcmp fast olt float %88, 4.096000e+03
  br i1 %11779, label %9995, label %11780

; <label>:11780                                   ; preds = %11778
  %11781 = fcmp fast olt float %88, 6.144000e+03
  br i1 %11781, label %9995, label %11782

; <label>:11782                                   ; preds = %11780
  %11783 = fcmp fast olt float %88, 8.192000e+03
  br i1 %11783, label %9995, label %10118

; <label>:11784                                   ; preds = %10041
  %11785 = fcmp fast olt float %8855, %10024
  br i1 %11785, label %10027, label %11786

; <label>:11786                                   ; preds = %11784
  %11787 = fcmp fast olt float %8855, %10025
  br i1 %11787, label %10027, label %10118
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
!dx.viewIdState = !{!83}
!dx.entryPoints = !{!84}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !68, !71, !75}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
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
!66 = !{i32 57, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!67 = !{i32 58, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 7, i32 0, !7}
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
!83 = !{[29 x i32] [i32 27, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 2, i32 4, i32 0, i32 1, i32 2, i32 4]}
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
!116 = !{!117, !119, !120, !121, !122}
!117 = distinct !{!117, !118, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %normalOffsets"}
!118 = distinct !{!118, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!119 = distinct !{!119, !118, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoam"}
!120 = distinct !{!120, !118, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamNormalOffsets"}
!121 = distinct !{!121, !118, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamOcclusion"}
!122 = distinct !{!122, !118, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamGloss"}
!123 = distinct !{!123, !124}
!124 = !{!"llvm.loop.unroll.disable"}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !124}
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
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = !{!146, !146, i64 0}
!146 = !{!"int", !109, i64 0}
!147 = !{!148, !150}
!148 = distinct !{!148, !149, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!149 = distinct !{!149, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!150 = distinct !{!150, !151, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!151 = distinct !{!151, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = !{!148, !150, !154, !156}
!154 = distinct !{!154, !155, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!155 = distinct !{!155, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!156 = distinct !{!156, !157, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!157 = distinct !{!157, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!158 = distinct !{!158, !124}
!159 = distinct !{!159, !124}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = !{!171, !173, !175, !176, !178, !179, !180, !182, !183, !184}
!171 = distinct !{!171, !172, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!172 = distinct !{!172, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!173 = distinct !{!173, !174, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!174 = distinct !{!174, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!175 = distinct !{!175, !174, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!176 = distinct !{!176, !177, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!177 = distinct !{!177, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!178 = distinct !{!178, !177, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!179 = distinct !{!179, !177, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!180 = distinct !{!180, !181, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!181 = distinct !{!181, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!182 = distinct !{!182, !181, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!183 = distinct !{!183, !181, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!184 = distinct !{!184, !185, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!185 = distinct !{!185, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"\01?sort@@YAXAIAM00@Z: %c"}
!188 = distinct !{!188, !"\01?sort@@YAXAIAM00@Z"}
!189 = !{!190, !191, !171, !173, !175, !176, !178, !179, !180, !182, !183, !184}
!190 = distinct !{!190, !188, !"\01?sort@@YAXAIAM00@Z: %a"}
!191 = distinct !{!191, !188, !"\01?sort@@YAXAIAM00@Z: %b"}
!192 = !{!191}
!193 = !{!190, !187, !171, !173, !175, !176, !178, !179, !180, !182, !183, !184}
!194 = !{!190}
!195 = !{!191, !187, !171, !173, !175, !176, !178, !179, !180, !182, !183, !184}
!196 = !{!197}
!197 = distinct !{!197, !198, !"\01?sort@@YAXAIAM00@Z: %c"}
!198 = distinct !{!198, !"\01?sort@@YAXAIAM00@Z"}
!199 = !{!200, !201, !171, !173, !175, !176, !178, !179, !180, !182, !183, !184}
!200 = distinct !{!200, !198, !"\01?sort@@YAXAIAM00@Z: %a"}
!201 = distinct !{!201, !198, !"\01?sort@@YAXAIAM00@Z: %b"}
!202 = !{!201}
!203 = !{!200, !197, !171, !173, !175, !176, !178, !179, !180, !182, !183, !184}
!204 = !{!200}
!205 = !{!201, !197, !171, !173, !175, !176, !178, !179, !180, !182, !183, !184}
!206 = distinct !{!206, !"dx.controlflow.hints", i32 1}
!207 = distinct !{!207, !"dx.controlflow.hints", i32 2}
!208 = distinct !{!208, !"dx.controlflow.hints", i32 1}
!209 = distinct !{!209, !"dx.controlflow.hints", i32 1}
!210 = distinct !{!210, !"dx.controlflow.hints", i32 1}
!211 = distinct !{!211, !"dx.controlflow.hints", i32 1}
!212 = distinct !{!212, !"dx.controlflow.hints", i32 1}

