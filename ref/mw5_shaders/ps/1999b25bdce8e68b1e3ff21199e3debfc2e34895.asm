;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; COMP_FACTOR              0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyzw
; ENTITY_IDS               0   xy         12     NONE    uint   xy  
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 2d0d53cfc43f451c699dce46b531b104
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
; COLOR                    0                 linear       
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
; COMP_FACTOR              0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; ENTITY_IDS               0        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
;
; Buffer Definitions:
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
;   [144 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture    byte         r/o      T5     t22,space1     1
;                                   texture     f32          3d      T6     t52,space2     1
;                                   texture     f32          2d      T7     t33,space2     1
;                                   texture    byte         r/o      T8      t3,space1     1
;                                   texture    byte         r/o      T9      t4,space1     1
;                                   texture    byte         r/o     T10      t5,space1     1
;                                   texture    byte         r/o     T11      t6,space1     1
;                                   texture     f32          2d     T12     t69,space2     1
;                                   texture     f32          2d     T13     t37,space2     1
;                                   texture     f32          2d     T14             t0     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     u32          2d     T24     t56,space2     1
;                                   texture     f32     2darray     T25     t35,space2     1
;                                   texture     f32          3d     T26     t31,space2     1
;                                   texture    byte         r/o     T27     t10,space1     1
;                                   texture    byte         r/o     T28      t1,space1     1
;                                   texture     f32          1d     T29     t32,space2     1
;                                   texture     f32     2darray     T30      t8,space2     1
;                                   texture     f32          2d     T31      t1,space2     1
;                                   texture     f32          2d     T32      t2,space2     1
;                                   texture     f32          2d     T33      t3,space2     1
;                                   texture     f32          2d     T34      t4,space2     1
;                                   textureunorm_f32     2darray     T35     t80,space2     1
;                                   texture    byte         r/o     T36     t67,space1     1
;                                   texture     f32          2d     T37      t7,space2     1
;                                   texture     f32          2d     T38      t6,space2     1
;                                   texture     f32          2d     T39      t5,space2     1
;                                   texture     f32          2d     T40     t38,space2     1
;                                   texture    byte         r/o     T41     t12,space1     1
;                                   texture    byte         r/o     T42     t13,space1     1
;                                   texture     f32          1d     T43     t30,space2     1
;                                   texture     f32          3d     T44     t44,space2     1
;                                   texture     f32          3d     T45     t45,space2     1
;                                   texture     f32     2darray     T46     t47,space2     1
;                                   textureunorm_f32     2darray     T47     t85,space2     1
;                                   texture     f32          2d     T48     t83,space2     1
;                                   texture     f32          2d     T49     t86,space2     1
;                                   texture    byte         r/o     T50     t15,space1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 52 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = alloca [4 x i32], align 4
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = alloca [12 x float], align 4
  %104 = alloca [12 x float], align 4
  %105 = alloca [4 x float], align 4
  %106 = alloca [4 x float], align 4
  %107 = alloca [4 x float], align 4
  %108 = alloca [4 x float], align 4
  %109 = alloca [3 x float], align 4
  %110 = alloca [3 x float], align 4
  %111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = fmul fast float %114, %99
  %116 = fmul fast float %114, %100
  %117 = call float @dx.op.dot3.f32(i32 55, float %90, float %91, float %92, float %90, float %91, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %118 = bitcast float %117 to i32
  %119 = ashr i32 %118, 1
  %120 = sub nsw i32 1597250115, %119
  %121 = bitcast i32 %120 to float
  %122 = fmul fast float %121, %90
  %123 = fmul fast float %121, %91
  %124 = fmul fast float %121, %92
  %125 = fmul fast float %91, %88
  %126 = fmul fast float %92, %87
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %92, %86
  %129 = fmul fast float %90, %88
  %130 = fsub fast float %128, %129
  %131 = fmul fast float %90, %87
  %132 = fmul fast float %91, %86
  %133 = fsub fast float %131, %132
  %134 = fmul fast float %127, %89
  %135 = fmul fast float %130, %89
  %136 = fmul fast float %133, %89
  %137 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %138 = bitcast float %137 to i32
  %139 = ashr i32 %138, 1
  %140 = sub nsw i32 1597250115, %139
  %141 = bitcast i32 %140 to float
  %142 = fmul fast float %141, %79
  %143 = fmul fast float %141, %80
  %144 = fmul fast float %141, %81
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = fcmp fast une float %146, 0.000000e+00
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %151 = fmul fast float %115, 2.000000e+00
  %152 = fmul fast float %151, %149
  %153 = fmul fast float %116, 2.000000e+00
  %154 = fmul fast float %153, %150
  %155 = fsub fast float 1.000000e+00, %152
  %156 = fsub fast float 1.000000e+00, %154
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = select i1 %147, float %158, float %162
  %166 = select i1 %147, float %159, float %163
  %167 = select i1 %147, float %160, float %164
  %168 = fmul fast float %165, %155
  %169 = fmul fast float %166, %155
  %170 = fmul fast float %167, %155
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = select i1 %147, float %172, float %176
  %180 = select i1 %147, float %173, float %177
  %181 = select i1 %147, float %174, float %178
  %182 = fmul fast float %179, %156
  %183 = fmul fast float %180, %156
  %184 = fmul fast float %181, %156
  %185 = fadd fast float %182, %168
  %186 = fadd fast float %183, %169
  %187 = fadd fast float %184, %170
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = select i1 %147, float %189, float %193
  %197 = select i1 %147, float %190, float %194
  %198 = select i1 %147, float %191, float %195
  %199 = fadd fast float %185, %196
  %200 = fadd fast float %186, %197
  %201 = fadd fast float %187, %198
  %202 = fmul fast float %199, %102
  %203 = fmul fast float %200, %102
  %204 = fmul fast float %201, %102
  %205 = shl i32 %59, 5
  %206 = add i32 %205, 4194304
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = extractvalue %dx.types.ResRet.i32 %207, 1
  %210 = extractvalue %dx.types.ResRet.i32 %207, 2
  %211 = extractvalue %dx.types.ResRet.i32 %207, 3
  %212 = add i32 %205, 4194320
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = extractvalue %dx.types.ResRet.i32 %213, 1
  %216 = bitcast i32 %214 to float
  %217 = bitcast i32 %215 to float
  %218 = fptoui float %115 to i32
  %219 = fptoui float %116 to i32
  %220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.i32 %220, 1
  %222 = shl i32 %221, 2
  %223 = extractvalue %dx.types.CBufRet.i32 %220, 3
  %224 = lshr i32 %219, 2
  %225 = extractvalue %dx.types.CBufRet.i32 %220, 2
  %226 = mul i32 %225, %224
  %227 = lshr i32 %218, 3
  %228 = add i32 %223, %227
  %229 = add i32 %228, %222
  %230 = add i32 %229, %226
  %231 = shl i32 %230, 2
  %232 = shl i32 %219, 3
  %233 = and i32 %232, 24
  %234 = and i32 %218, 7
  %235 = or i32 %233, %234
  %236 = shl i32 1, %235
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, %236
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %242, label %241

; <label>:241                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %242

; <label>:242                                     ; preds = %241, %0
  %243 = fmul fast float %115, 5.000000e-01
  %244 = fmul fast float %116, 5.000000e-01
  %245 = fptosi float %243 to i32
  %246 = fptosi float %244 to i32
  %247 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %245, i32 %246, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = lshr i32 %248, 18
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %250, 0x3F4C00EBA0000000
  %252 = call float @dx.op.unary.f32(i32 21, float %251)  ; Exp(value)
  %253 = fadd fast float %252, -1.000000e+00
  %254 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %255 = extractvalue %dx.types.Dimensions %254, 0
  %256 = sitofp i32 %255 to float
  %257 = extractvalue %dx.types.Dimensions %254, 1
  %258 = sitofp i32 %257 to float
  %259 = fcmp fast oge float %243, %256
  %260 = fcmp fast oge float %244, %258
  %261 = or i1 %259, %260
  %262 = select i1 %261, float 0x4197782600000000, float %253
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %265 = extractvalue %dx.types.CBufRet.f32 %263, 3
  %266 = fmul fast float %264, %115
  %267 = fmul fast float %265, %116
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 114688
  %271 = icmp ne i32 %270, 0
  %272 = select i1 %271, float %266, float 0.000000e+00
  %273 = select i1 %271, float %267, float 0.000000e+00
  %274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %53, float %272, float %273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = fmul fast float %275, 2.550000e+02
  %277 = fptoui float %276 to i32
  %278 = select i1 %271, i32 %277, i32 0
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.i32 %280, 3
  %282 = and i32 %281, 3
  %283 = icmp ne i32 %282, 0
  %284 = and i32 %281, 4
  %285 = icmp ne i32 %284, 0
  %286 = and i1 %283, %285
  br i1 %286, label %287, label %298

; <label>:287                                     ; preds = %242
  %288 = extractvalue %dx.types.CBufRet.f32 %279, 3
  %289 = fmul fast float %288, %116
  %290 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %291 = fmul fast float %290, %115
  %292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %52, float %291, float %289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = fsub fast float 1.000000e+00, %293
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 0
  %297 = fcmp fast olt float %294, %296
  br label %301

; <label>:298                                     ; preds = %242
  %299 = icmp eq i32 %284, 0
  %300 = and i1 %283, %299
  br label %301

; <label>:301                                     ; preds = %298, %287
  %302 = phi i1 [ %297, %287 ], [ %300, %298 ]
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %305 = fmul fast float %304, 0x3FE3C6EF40000000
  %306 = frem fast float %115, 2.560000e+02
  %307 = frem fast float %116, 2.560000e+02
  %308 = fptoui float %306 to i32
  %309 = fptoui float %307 to i32
  %310 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %308, i32 %309, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  %312 = fadd fast float %311, %305
  %313 = call float @dx.op.unary.f32(i32 22, float %312)  ; Frc(value)
  %314 = add i32 %58, 156
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = shl i32 %316, 4
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %316, 7
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %316, 22
  %324 = shl nuw nsw i32 %323, 5
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %58, 216
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = lshr i32 %328, 8
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %328, 16
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = add i32 %58, 36
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %342, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = add i32 %58, 288
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = fmul fast float %351, 0x3F50624DE0000000
  %355 = fmul fast float %353, 0x3F50624DE0000000
  %356 = mul i32 %60, 100
  %357 = add i32 %356, 28
  %358 = add i32 %356, 40
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = add i32 %58, 172
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = shl i32 %363, 4
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %363, 7
  %368 = and i32 %367, 32752
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %363, 22
  %371 = shl nuw nsw i32 %370, 5
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = add i32 %58, 232
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = lshr i32 %375, 8
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = lshr i32 %375, 16
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = add i32 %58, 52
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 65535
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %389, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = add i32 %58, 304
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 65535
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %396, 16
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = shl i32 %402, 4
  %404 = and i32 %403, 32752
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %402, 7
  %407 = and i32 %406, 32752
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %402, 22
  %410 = shl nuw nsw i32 %409, 5
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = and i32 %360, 1
  %413 = icmp ne i32 %412, 0
  %414 = select i1 %413, float %405, float %366
  %415 = select i1 %413, float %408, float %369
  %416 = select i1 %413, float %411, float %372
  %417 = add i32 %356, 44
  %418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = fmul fast float %419, %414
  %421 = fmul fast float %419, %415
  %422 = fmul fast float %419, %416
  %423 = add i32 %356, 48
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = shl i32 %425, 4
  %427 = and i32 %426, 32752
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %425, 7
  %430 = and i32 %429, 32752
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = lshr i32 %425, 22
  %433 = shl nuw nsw i32 %432, 5
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = and i32 %360, 8
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %428, float %378
  %438 = select i1 %436, float %431, float %382
  %439 = select i1 %436, float %434, float %386
  %440 = add i32 %356, 52
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 65535
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = lshr i32 %442, 16
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = and i32 %360, 2
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %444, float %391
  %450 = select i1 %448, float %446, float %393
  %451 = add i32 %356, 56
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 65535
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = lshr i32 %453, 16
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = and i32 %360, 4
  %459 = icmp ne i32 %458, 0
  %460 = select i1 %459, float %455, float %398
  %461 = fmul float %460, 0x3F50624DE0000000
  %462 = select i1 %459, float %457, float %400
  %463 = fmul float %462, 0x3F50624DE0000000
  %464 = add i32 %356, 60
  %465 = add i32 %356, 32
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = add i32 %58, 188
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = shl i32 %470, 4
  %472 = and i32 %471, 32752
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = lshr i32 %470, 7
  %475 = and i32 %474, 32752
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = lshr i32 %470, 22
  %478 = shl nuw nsw i32 %477, 5
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = add i32 %58, 248
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 255
  %484 = uitofp i32 %483 to float
  %485 = fmul fast float %484, 0x3F70101020000000
  %486 = lshr i32 %482, 8
  %487 = and i32 %486, 255
  %488 = uitofp i32 %487 to float
  %489 = fmul fast float %488, 0x3F70101020000000
  %490 = lshr i32 %482, 16
  %491 = and i32 %490, 255
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %492, 0x3F70101020000000
  %494 = add i32 %58, 68
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 65535
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = lshr i32 %496, 16
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = add i32 %58, 320
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = and i32 %503, 65535
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = lshr i32 %503, 16
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = shl i32 %509, 4
  %511 = and i32 %510, 32752
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = lshr i32 %509, 7
  %514 = and i32 %513, 32752
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = lshr i32 %509, 22
  %517 = shl nuw nsw i32 %516, 5
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = and i32 %467, 1
  %520 = icmp ne i32 %519, 0
  %521 = select i1 %520, float %512, float %473
  %522 = select i1 %520, float %515, float %476
  %523 = select i1 %520, float %518, float %479
  %524 = add i32 %356, 64
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = fmul fast float %526, %521
  %528 = fmul fast float %526, %522
  %529 = fmul fast float %526, %523
  %530 = add i32 %356, 68
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = shl i32 %532, 4
  %534 = and i32 %533, 32752
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = lshr i32 %532, 7
  %537 = and i32 %536, 32752
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = lshr i32 %532, 22
  %540 = shl nuw nsw i32 %539, 5
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = and i32 %467, 8
  %543 = icmp ne i32 %542, 0
  %544 = select i1 %543, float %535, float %485
  %545 = select i1 %543, float %538, float %489
  %546 = select i1 %543, float %541, float %493
  %547 = add i32 %356, 72
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = and i32 %549, 65535
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = lshr i32 %549, 16
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = and i32 %467, 2
  %555 = icmp ne i32 %554, 0
  %556 = select i1 %555, float %551, float %498
  %557 = select i1 %555, float %553, float %500
  %558 = add i32 %356, 76
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = and i32 %560, 65535
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = lshr i32 %560, 16
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = and i32 %467, 4
  %566 = icmp ne i32 %565, 0
  %567 = select i1 %566, float %562, float %505
  %568 = fmul float %567, 0x3F50624DE0000000
  %569 = select i1 %566, float %564, float %507
  %570 = fmul float %569, 0x3F50624DE0000000
  %571 = add i32 %356, 80
  %572 = add i32 %356, 36
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = add i32 %58, 204
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = shl i32 %577, 4
  %579 = and i32 %578, 32752
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = lshr i32 %577, 7
  %582 = and i32 %581, 32752
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = lshr i32 %577, 22
  %585 = shl nuw nsw i32 %584, 5
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = add i32 %58, 264
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = and i32 %589, 255
  %591 = uitofp i32 %590 to float
  %592 = fmul fast float %591, 0x3F70101020000000
  %593 = lshr i32 %589, 8
  %594 = and i32 %593, 255
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %595, 0x3F70101020000000
  %597 = lshr i32 %589, 16
  %598 = and i32 %597, 255
  %599 = uitofp i32 %598 to float
  %600 = fmul fast float %599, 0x3F70101020000000
  %601 = add i32 %58, 84
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %603, 65535
  %605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %604)  ; LegacyF16ToF32(value)
  %606 = lshr i32 %603, 16
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = add i32 %58, 336
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = and i32 %610, 65535
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = lshr i32 %610, 16
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = shl i32 %616, 4
  %618 = and i32 %617, 32752
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = lshr i32 %616, 7
  %621 = and i32 %620, 32752
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = lshr i32 %616, 22
  %624 = shl nuw nsw i32 %623, 5
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = and i32 %574, 1
  %627 = icmp ne i32 %626, 0
  %628 = select i1 %627, float %619, float %580
  %629 = select i1 %627, float %622, float %583
  %630 = select i1 %627, float %625, float %586
  %631 = add i32 %356, 84
  %632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = fmul fast float %633, %628
  %635 = fmul fast float %633, %629
  %636 = fmul fast float %633, %630
  %637 = add i32 %356, 88
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = shl i32 %639, 4
  %641 = and i32 %640, 32752
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = lshr i32 %639, 7
  %644 = and i32 %643, 32752
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = lshr i32 %639, 22
  %647 = shl nuw nsw i32 %646, 5
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = and i32 %574, 8
  %650 = icmp ne i32 %649, 0
  %651 = select i1 %650, float %642, float %592
  %652 = select i1 %650, float %645, float %596
  %653 = select i1 %650, float %648, float %600
  %654 = add i32 %356, 92
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = and i32 %656, 65535
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = lshr i32 %656, 16
  %660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %659)  ; LegacyF16ToF32(value)
  %661 = and i32 %574, 2
  %662 = icmp ne i32 %661, 0
  %663 = select i1 %662, float %658, float %605
  %664 = select i1 %662, float %660, float %607
  %665 = add i32 %356, 96
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = and i32 %667, 65535
  %669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %668)  ; LegacyF16ToF32(value)
  %670 = lshr i32 %667, 16
  %671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %670)  ; LegacyF16ToF32(value)
  %672 = and i32 %574, 4
  %673 = icmp ne i32 %672, 0
  %674 = select i1 %673, float %669, float %612
  %675 = fmul float %674, 0x3F50624DE0000000
  %676 = select i1 %673, float %671, float %614
  %677 = fmul float %676, 0x3F50624DE0000000
  %678 = add i32 %58, 348
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 32
  %682 = icmp eq i32 %681, 0
  %683 = and i32 %680, 64
  %684 = icmp eq i32 %683, 0
  %685 = and i32 %680, 128
  %686 = icmp eq i32 %685, 0
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 2
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %706, label %691

; <label>:691                                     ; preds = %301
  %692 = add i32 %58, 540
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %692, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = add i32 %694, 0
  %696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %695, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %697 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %696, %dx.types.Handle %112, float %93, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %698 = extractvalue %dx.types.ResRet.f32 %697, 0
  %699 = extractvalue %dx.types.ResRet.f32 %697, 1
  %700 = extractvalue %dx.types.ResRet.f32 %697, 2
  %701 = extractvalue %dx.types.ResRet.f32 %697, 3
  %702 = fmul fast float %701, %95
  %703 = fmul fast float %698, %96
  %704 = fmul fast float %699, %97
  %705 = fmul fast float %700, %98
  br label %706

; <label>:706                                     ; preds = %691, %301
  %707 = phi float [ %98, %301 ], [ %705, %691 ]
  %708 = phi float [ %97, %301 ], [ %704, %691 ]
  %709 = phi float [ %96, %301 ], [ %703, %691 ]
  %710 = phi float [ %95, %301 ], [ %702, %691 ]
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = and i32 %712, 2
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %734, label %715

; <label>:715                                     ; preds = %706
  %716 = add i32 %58, 44
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = and i32 %718, 1
  %720 = icmp ne i32 %719, 0
  %721 = select i1 %720, float %709, float 1.000000e+00
  %722 = add i32 %58, 60
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 1
  %726 = icmp ne i32 %725, 0
  %727 = select i1 %726, float %708, float 1.000000e+00
  %728 = add i32 %58, 76
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %728, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 1
  %732 = icmp ne i32 %731, 0
  %733 = select i1 %732, float %707, float 1.000000e+00
  br label %734

; <label>:734                                     ; preds = %715, %706
  %735 = phi float [ %707, %706 ], [ %733, %715 ]
  %736 = phi float [ %708, %706 ], [ %727, %715 ]
  %737 = phi float [ %709, %706 ], [ %721, %715 ]
  %738 = lshr i32 %712, 20
  %739 = and i32 %738, 3
  %740 = add nuw nsw i32 %739, 1
  %741 = add i32 %58, 24
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = add i32 %58, 28
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = or i32 %746, %743
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %1362, label %749

; <label>:749                                     ; preds = %734
  %750 = and i32 %743, 262144
  %751 = icmp ne i32 %750, 0
  %752 = select i1 %751, float %65, float 1.000000e+00
  %753 = select i1 %751, float %66, float 0.000000e+00
  %754 = select i1 %751, float %67, float 0.000000e+00
  %755 = select i1 %751, float %68, float 1.000000e+00
  %756 = select i1 %751, float %69, float %93
  %757 = select i1 %751, float %70, float %94
  %758 = add i32 %58, 284
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = lshr i32 %760, 16
  %762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %761)  ; LegacyF16ToF32(value)
  %763 = fmul fast float %762, 0x3F50624DE0000000
  %764 = add i32 %58, 88
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = lshr i32 %766, 16
  %768 = and i32 %767, 255
  %769 = lshr i32 %766, 24
  %770 = add i32 %58, 292
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 65535
  %774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %773)  ; LegacyF16ToF32(value)
  %775 = lshr i32 %772, 16
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = add i32 %58, 32
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = lshr i32 %779, 22
  %781 = shl nuw nsw i32 %780, 5
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = shl i32 %779, 4
  %784 = and i32 %783, 32752
  %785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %784)  ; LegacyF16ToF32(value)
  %786 = lshr i32 %779, 7
  %787 = and i32 %786, 32752
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 3
  %791 = fmul fast float %790, 1.000000e+03
  %792 = fmul fast float %354, %791
  %793 = call float @dx.op.unary.f32(i32 22, float %792)  ; Frc(value)
  %794 = fadd fast float %793, %344
  %795 = fmul fast float %355, %791
  %796 = call float @dx.op.unary.f32(i32 22, float %795)  ; Frc(value)
  %797 = fadd fast float %796, %346
  %798 = fmul fast float %763, %791
  %799 = call float @dx.op.unary.f32(i32 22, float %798)  ; Frc(value)
  %800 = fmul fast float %799, 0x401921FB60000000
  %801 = fadd fast float %800, %782
  %802 = call float @dx.op.unary.f32(i32 13, float %801)  ; Sin(value)
  %803 = call float @dx.op.unary.f32(i32 12, float %801)  ; Cos(value)
  %804 = fsub fast float -0.000000e+00, %802
  %805 = fadd fast float %756, -5.000000e-01
  %806 = fadd fast float %757, -5.000000e-01
  %807 = fmul fast float %774, %805
  %808 = fmul fast float %776, %806
  %809 = fadd fast float %807, 5.000000e-01
  %810 = fadd fast float %808, 5.000000e-01
  %811 = fmul fast float %785, %809
  %812 = fmul fast float %788, %810
  %813 = fmul fast float %803, %811
  %814 = call float @dx.op.tertiary.f32(i32 46, float %804, float %812, float %813)  ; FMad(a,b,c)
  %815 = fmul fast float %802, %811
  %816 = call float @dx.op.tertiary.f32(i32 46, float %803, float %812, float %815)  ; FMad(a,b,c)
  %817 = fadd fast float %794, %814
  %818 = fadd fast float %797, %816
  %819 = icmp ugt i32 %768, 1
  %820 = icmp ugt i32 %766, 33554431
  %821 = or i1 %820, %819
  br i1 %821, label %822, label %847

; <label>:822                                     ; preds = %749
  %823 = add i32 %58, 228
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = lshr i32 %825, 16
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = fmul fast float %790, %827
  %829 = call float @dx.op.unary.f32(i32 22, float %828)  ; Frc(value)
  %830 = mul nuw nsw i32 %768, %769
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %829, %831
  %833 = call float @dx.op.unary.f32(i32 27, float %832)  ; Round_ni(value)
  %834 = fptoui float %833 to i32
  %835 = urem i32 %834, %768
  %836 = udiv i32 %834, %769
  %837 = call float @dx.op.unary.f32(i32 22, float %817)  ; Frc(value)
  %838 = call float @dx.op.unary.f32(i32 22, float %818)  ; Frc(value)
  %839 = uitofp i32 %835 to float
  %840 = uitofp i32 %836 to float
  %841 = fadd fast float %837, %839
  %842 = fadd fast float %838, %840
  %843 = uitofp i32 %768 to float
  %844 = uitofp i32 %769 to float
  %845 = fdiv fast float %841, %843
  %846 = fdiv fast float %842, %844
  br label %847

; <label>:847                                     ; preds = %822, %749
  %848 = phi float [ %845, %822 ], [ %817, %749 ]
  %849 = phi float [ %846, %822 ], [ %818, %749 ]
  %850 = and i32 %743, 256
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %898, label %852

; <label>:852                                     ; preds = %847
  %853 = add i32 %58, 472
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = add i32 %855, 0
  %857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %856, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %858 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %857, %dx.types.Handle %112, float %848, float %849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %859 = extractvalue %dx.types.ResRet.f32 %858, 0
  %860 = add i32 %58, 100
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = shl i32 %862, 4
  %864 = and i32 %863, 32752
  %865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %864)  ; LegacyF16ToF32(value)
  %866 = lshr i32 %862, 7
  %867 = and i32 %866, 32752
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = fsub fast float 1.000000e+00, %710
  %870 = call float @dx.op.binary.f32(i32 35, float %869, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %871 = bitcast float %710 to i32
  %872 = sitofp i32 %871 to float
  %873 = fadd fast float %872, 0xC1CFBF8940000000
  %874 = fmul fast float %868, %873
  %875 = fadd fast float %874, 0x41CFBF8940000000
  %876 = fptosi float %875 to i32
  %877 = bitcast i32 %876 to float
  %878 = bitcast float %870 to i32
  %879 = sitofp i32 %878 to float
  %880 = fadd fast float %879, 0xC1CFBF8940000000
  %881 = fmul fast float %880, %868
  %882 = fadd fast float %881, 0x41CFBF8940000000
  %883 = fptosi float %882 to i32
  %884 = bitcast i32 %883 to float
  %885 = fmul fast float %877, %865
  %886 = fmul fast float %884, %865
  %887 = fsub fast float %870, %885
  %888 = fadd fast float %886, %870
  %889 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %890 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %891 = fsub fast float %859, %889
  %892 = fsub fast float %890, %889
  %893 = bitcast float %892 to i32
  %894 = sub nsw i32 2129859010, %893
  %895 = bitcast i32 %894 to float
  %896 = fmul fast float %895, %891
  %897 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  br label %898

; <label>:898                                     ; preds = %852, %847
  %899 = phi float [ %897, %852 ], [ %710, %847 ]
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = and i32 %901, 128
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %920, label %904

; <label>:904                                     ; preds = %898
  %905 = add i32 %58, 456
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = add i32 %907, 0
  %909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %908, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %910 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %909, %dx.types.Handle %112, float %848, float %849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 524288
  %915 = icmp ne i32 %914, 0
  %916 = fcmp fast ogt float %911, 0x3FE0101020000000
  %917 = select i1 %916, float 1.000000e+00, float 0.000000e+00
  %918 = select i1 %915, float %917, float %911
  %919 = fmul fast float %918, %899
  br label %920

; <label>:920                                     ; preds = %904, %898
  %921 = phi float [ %919, %904 ], [ %899, %898 ]
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = and i32 %923, 16
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %1124, label %926

; <label>:926                                     ; preds = %920
  %927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %928 = extractvalue %dx.types.ResRet.i32 %927, 0
  %929 = add i32 %58, 408
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = add i32 %931, 0
  %933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %933, %dx.types.Handle %111, float %848, float %849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %935 = extractvalue %dx.types.ResRet.f32 %934, 0
  %936 = extractvalue %dx.types.ResRet.f32 %934, 1
  %937 = extractvalue %dx.types.ResRet.f32 %934, 2
  %938 = extractvalue %dx.types.ResRet.f32 %934, 3
  %939 = and i32 %928, 255
  %940 = uitofp i32 %939 to float
  %941 = lshr i32 %928, 8
  %942 = and i32 %941, 255
  %943 = uitofp i32 %942 to float
  %944 = fmul fast float %938, %940
  %945 = fadd fast float %944, %943
  %946 = fmul fast float %945, 0x3F70101000000000
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = and i32 %948, 512
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %959, label %951

; <label>:951                                     ; preds = %926
  %952 = add i32 %58, 492
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = add i32 %954, 0
  %956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %955, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %957 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %956, %dx.types.Handle %112, float %848, float %849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  br label %959

; <label>:959                                     ; preds = %951, %926
  %960 = phi float [ %958, %951 ], [ 1.000000e+00, %926 ]
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = and i32 %962, 33554432
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %1071, label %965

; <label>:965                                     ; preds = %959
  %966 = add i32 %58, 224
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 65535
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = lshr i32 %968, 16
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = add i32 %58, 228
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = and i32 %975, 65535
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = lshr i32 %979, 24
  %981 = uitofp i32 %980 to float
  %982 = fmul fast float %981, 0x3F70101020000000
  %983 = and i32 %979, 255
  %984 = uitofp i32 %983 to float
  %985 = fmul fast float %984, 0x3F70101020000000
  %986 = lshr i32 %979, 8
  %987 = and i32 %986, 255
  %988 = uitofp i32 %987 to float
  %989 = fmul fast float %988, 0x3F70101020000000
  %990 = lshr i32 %979, 16
  %991 = and i32 %990, 255
  %992 = uitofp i32 %991 to float
  %993 = fmul fast float %992, 0x3F70101020000000
  %994 = add i32 %58, 220
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = lshr i32 %996, 24
  %998 = uitofp i32 %997 to float
  %999 = fmul fast float %998, 0x3F70101020000000
  %1000 = and i32 %996, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = fmul fast float %1001, 0x3F70101020000000
  %1003 = lshr i32 %996, 8
  %1004 = and i32 %1003, 255
  %1005 = uitofp i32 %1004 to float
  %1006 = fmul fast float %1005, 0x3F70101020000000
  %1007 = lshr i32 %996, 16
  %1008 = and i32 %1007, 255
  %1009 = uitofp i32 %1008 to float
  %1010 = fmul fast float %1009, 0x3F70101020000000
  %1011 = bitcast float %935 to i32
  %1012 = ashr i32 %1011, 1
  %1013 = sub nsw i32 1597463174, %1012
  %1014 = bitcast i32 %1013 to float
  %1015 = fmul fast float %935, 5.000000e-01
  %1016 = fmul fast float %1014, %1014
  %1017 = fmul fast float %1016, %1015
  %1018 = fsub fast float 1.500000e+00, %1017
  %1019 = fmul fast float %1014, %935
  %1020 = fmul fast float %1019, %1018
  %1021 = bitcast float %936 to i32
  %1022 = ashr i32 %1021, 1
  %1023 = sub nsw i32 1597463174, %1022
  %1024 = bitcast i32 %1023 to float
  %1025 = fmul fast float %936, 5.000000e-01
  %1026 = fmul fast float %1024, %1024
  %1027 = fmul fast float %1026, %1025
  %1028 = fsub fast float 1.500000e+00, %1027
  %1029 = fmul fast float %1024, %936
  %1030 = fmul fast float %1029, %1028
  %1031 = bitcast float %937 to i32
  %1032 = ashr i32 %1031, 1
  %1033 = sub nsw i32 1597463174, %1032
  %1034 = bitcast i32 %1033 to float
  %1035 = fmul fast float %937, 5.000000e-01
  %1036 = fmul fast float %1034, %1034
  %1037 = fmul fast float %1036, %1035
  %1038 = fsub fast float 1.500000e+00, %1037
  %1039 = fmul fast float %1034, %937
  %1040 = fmul fast float %1039, %1038
  %1041 = fsub fast float %1020, %1002
  %1042 = fsub fast float %1030, %1006
  %1043 = fsub fast float %1040, %1010
  %1044 = fmul fast float %1041, %970
  %1045 = fmul fast float %1042, %972
  %1046 = fmul fast float %1043, %977
  %1047 = fadd fast float %1044, %985
  %1048 = fadd fast float %1045, %989
  %1049 = fadd fast float %1046, %993
  %1050 = call float @dx.op.unary.f32(i32 7, float %1047)  ; Saturate(value)
  %1051 = call float @dx.op.unary.f32(i32 7, float %1048)  ; Saturate(value)
  %1052 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  %1053 = fmul fast float %1050, %1050
  %1054 = fmul fast float %1051, %1051
  %1055 = fmul fast float %1052, %1052
  %1056 = fsub fast float %1053, %935
  %1057 = fsub fast float %1054, %936
  %1058 = fsub fast float %1055, %937
  %1059 = fmul fast float %1056, %960
  %1060 = fmul fast float %1057, %960
  %1061 = fmul fast float %1058, %960
  %1062 = fadd fast float %1059, %935
  %1063 = fadd fast float %1060, %936
  %1064 = fadd fast float %1061, %937
  %1065 = fadd fast float %982, %946
  %1066 = fsub fast float %1065, %999
  %1067 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1068 = fsub fast float %1067, %946
  %1069 = fmul fast float %1068, %960
  %1070 = fadd fast float %1069, %946
  br label %1124

; <label>:1071                                    ; preds = %959
  %1072 = and i32 %962, 134217728
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1108, label %1074

; <label>:1074                                    ; preds = %1071
  %1075 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %1076 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %1077 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %1078 = fadd fast float %1075, -5.000000e-01
  %1079 = fadd fast float %1076, -5.000000e-01
  %1080 = fadd fast float %1077, -5.000000e-01
  %1081 = fmul fast float %1078, %960
  %1082 = fmul fast float %1079, %960
  %1083 = fmul fast float %1080, %960
  %1084 = fadd fast float %1081, 5.000000e-01
  %1085 = fadd fast float %1082, 5.000000e-01
  %1086 = fadd fast float %1083, 5.000000e-01
  %1087 = call float @dx.op.unary.f32(i32 24, float %935)  ; Sqrt(value)
  %1088 = call float @dx.op.unary.f32(i32 24, float %936)  ; Sqrt(value)
  %1089 = call float @dx.op.unary.f32(i32 24, float %937)  ; Sqrt(value)
  %1090 = fmul fast float %1084, 2.000000e+00
  %1091 = fsub fast float 1.000000e+00, %1090
  %1092 = fmul fast float %1091, %1087
  %1093 = fadd fast float %1092, %1090
  %1094 = fmul fast float %1093, %1087
  %1095 = fmul fast float %1085, 2.000000e+00
  %1096 = fsub fast float 1.000000e+00, %1095
  %1097 = fmul fast float %1096, %1088
  %1098 = fadd fast float %1097, %1095
  %1099 = fmul fast float %1098, %1088
  %1100 = fmul fast float %1086, 2.000000e+00
  %1101 = fsub fast float 1.000000e+00, %1100
  %1102 = fmul fast float %1101, %1089
  %1103 = fadd fast float %1102, %1100
  %1104 = fmul fast float %1103, %1089
  %1105 = fmul fast float %1094, %1094
  %1106 = fmul fast float %1099, %1099
  %1107 = fmul fast float %1104, %1104
  br label %1124

; <label>:1108                                    ; preds = %1071
  %1109 = fmul fast float %331, %331
  %1110 = fmul fast float %335, %335
  %1111 = fmul fast float %339, %339
  %1112 = fadd fast float %1109, -1.000000e+00
  %1113 = fadd fast float %1110, -1.000000e+00
  %1114 = fadd fast float %1111, -1.000000e+00
  %1115 = fmul fast float %960, %1112
  %1116 = fmul fast float %960, %1113
  %1117 = fmul fast float %960, %1114
  %1118 = fadd fast float %1115, 1.000000e+00
  %1119 = fadd fast float %1116, 1.000000e+00
  %1120 = fadd fast float %1117, 1.000000e+00
  %1121 = fmul fast float %1118, %935
  %1122 = fmul fast float %1119, %936
  %1123 = fmul fast float %1120, %937
  br label %1124

; <label>:1124                                    ; preds = %1108, %1074, %965, %920
  %1125 = phi float [ %1070, %965 ], [ %946, %1074 ], [ %946, %1108 ], [ 0x3FA23C0BE0000000, %920 ]
  %1126 = phi float [ %1062, %965 ], [ %1105, %1074 ], [ %1121, %1108 ], [ 1.000000e+00, %920 ]
  %1127 = phi float [ %1063, %965 ], [ %1106, %1074 ], [ %1122, %1108 ], [ 1.000000e+00, %920 ]
  %1128 = phi float [ %1064, %965 ], [ %1107, %1074 ], [ %1123, %1108 ], [ 1.000000e+00, %920 ]
  %1129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.i32 %1129, 1
  %1131 = and i32 %1130, 1
  %1132 = icmp ne i32 %1131, 0
  %1133 = add i32 %58, 356
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = and i32 %1135, 32
  %1137 = icmp ne i32 %1136, 0
  %1138 = and i1 %1132, %1137
  %1139 = select i1 %1138, float 1.000000e+00, float %1126
  %1140 = select i1 %1138, float 0x3FD3333340000000, float %1127
  %1141 = select i1 %1138, float 0x3FD3333340000000, float %1128
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = and i32 %1143, 32
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %1218, label %1146

; <label>:1146                                    ; preds = %1124
  %1147 = add i32 %58, 92
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = add i32 %58, 424
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = add i32 %1152, 0
  %1154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1154, %dx.types.Handle %111, float %848, float %849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.ResRet.f32 %1155, 1
  %1158 = extractvalue %dx.types.ResRet.f32 %1155, 2
  %1159 = extractvalue %dx.types.ResRet.f32 %1155, 3
  %1160 = and i32 %1149, 255
  %1161 = uitofp i32 %1160 to float
  %1162 = lshr i32 %1149, 8
  %1163 = and i32 %1162, 255
  %1164 = uitofp i32 %1163 to float
  %1165 = lshr i32 %1149, 16
  %1166 = and i32 %1165, 255
  %1167 = uitofp i32 %1166 to float
  %1168 = fmul fast float %1167, 0x3F70101000000000
  %1169 = fmul fast float %1156, %1161
  %1170 = fadd fast float %1169, %1164
  %1171 = fmul fast float %1170, 0x3F70101000000000
  %1172 = fadd fast float %1157, -5.000000e-01
  %1173 = fadd fast float %1159, -5.000000e-01
  %1174 = fmul fast float %1172, %1168
  %1175 = fmul fast float %1173, %1168
  %1176 = fadd fast float %1174, 5.000000e-01
  %1177 = fadd fast float %1175, 5.000000e-01
  %1178 = fmul fast float %1176, 2.000000e+00
  %1179 = fadd fast float %1178, -1.000000e+00
  %1180 = fmul fast float %1177, 2.000000e+00
  %1181 = fadd fast float %1180, -1.000000e+00
  %1182 = fadd fast float %1179, %1181
  %1183 = fmul fast float %1182, 5.000000e-01
  %1184 = fsub fast float %1179, %1181
  %1185 = fmul fast float %1184, 5.000000e-01
  %1186 = call float @dx.op.unary.f32(i32 6, float %1183)  ; FAbs(value)
  %1187 = fsub fast float 1.000000e+00, %1186
  %1188 = call float @dx.op.unary.f32(i32 6, float %1185)  ; FAbs(value)
  %1189 = fsub fast float %1187, %1188
  %1190 = call float @dx.op.dot3.f32(i32 55, float %1183, float %1185, float %1189, float %1183, float %1185, float %1189)  ; Dot3(ax,ay,az,bx,by,bz)
  %1191 = call float @dx.op.unary.f32(i32 25, float %1190)  ; Rsqrt(value)
  %1192 = fmul fast float %1183, %1191
  %1193 = fmul fast float %1185, %1191
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = and i32 %1195, 67108864
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1214, label %1198

; <label>:1198                                    ; preds = %1146
  %1199 = add i32 %58, 280
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = and i32 %1201, 65535
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = and i32 %1205, 65535
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = lshr i32 %1201, 16
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = fsub fast float %1171, %1209
  %1211 = fmul fast float %1210, %1203
  %1212 = fadd fast float %1211, %1207
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  br label %1214

; <label>:1214                                    ; preds = %1198, %1146
  %1215 = phi float [ %1213, %1198 ], [ %1171, %1146 ]
  %1216 = call float @dx.op.dot2.f32(i32 54, float %1192, float %1193, float %752, float %753)  ; Dot2(ax,ay,bx,by)
  %1217 = call float @dx.op.dot2.f32(i32 54, float %1192, float %1193, float %754, float %755)  ; Dot2(ax,ay,bx,by)
  br label %1218

; <label>:1218                                    ; preds = %1214, %1124
  %1219 = phi float [ %1215, %1214 ], [ 0x3FD6666660000000, %1124 ]
  %1220 = phi float [ %1216, %1214 ], [ 0.000000e+00, %1124 ]
  %1221 = phi float [ %1217, %1214 ], [ 0.000000e+00, %1124 ]
  %1222 = phi float [ %1158, %1214 ], [ 1.000000e+00, %1124 ]
  %1223 = add i32 %58, 160
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = lshr i32 %1225, 22
  %1227 = shl nuw nsw i32 %1226, 5
  %1228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1227)  ; LegacyF16ToF32(value)
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %1230, 64
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1266, label %1233

; <label>:1233                                    ; preds = %1218
  %1234 = add i32 %58, 440
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = add i32 %1236, 0
  %1238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = and i32 %1240, 131072
  %1242 = icmp eq i32 %1241, 0
  %1243 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1238, %dx.types.Handle %111, float %848, float %849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = extractvalue %dx.types.ResRet.f32 %1243, 1
  %1246 = extractvalue %dx.types.ResRet.f32 %1243, 2
  %1247 = fmul fast float %1244, %319
  %1248 = fmul fast float %1245, %322
  %1249 = fmul fast float %1246, %325
  br i1 %1242, label %1256, label %1250

; <label>:1250                                    ; preds = %1233
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  %1253 = fmul fast float %1252, %1247
  %1254 = fmul fast float %1252, %1248
  %1255 = fmul fast float %1252, %1249
  br label %1256

; <label>:1256                                    ; preds = %1250, %1233
  %1257 = phi float [ %1253, %1250 ], [ %1247, %1233 ]
  %1258 = phi float [ %1254, %1250 ], [ %1248, %1233 ]
  %1259 = phi float [ %1255, %1250 ], [ %1249, %1233 ]
  %1260 = fmul fast float %1257, %1228
  %1261 = select i1 %302, float %1260, float %1257
  %1262 = call float @dx.op.dot3.f32(i32 55, float %1261, float %1258, float %1259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1263 = select i1 %302, float 0.000000e+00, float %1257
  %1264 = select i1 %302, float %1262, float %1258
  %1265 = select i1 %302, float 0.000000e+00, float %1259
  br label %1266

; <label>:1266                                    ; preds = %1256, %1218
  %1267 = phi float [ %1263, %1256 ], [ 0.000000e+00, %1218 ]
  %1268 = phi float [ %1264, %1256 ], [ 0.000000e+00, %1218 ]
  %1269 = phi float [ %1265, %1256 ], [ 0.000000e+00, %1218 ]
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = and i32 %1271, 1024
  %1273 = icmp eq i32 %1272, 0
  br i1 %1273, label %1304, label %1274

; <label>:1274                                    ; preds = %1266
  %1275 = add i32 %58, 152
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = and i32 %1277, 255
  %1279 = uitofp i32 %1278 to float
  %1280 = fmul fast float %1279, 0x3F70101020000000
  %1281 = lshr i32 %1277, 8
  %1282 = and i32 %1281, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = fmul fast float %1283, 0x3F70101020000000
  %1285 = lshr i32 %1277, 16
  %1286 = and i32 %1285, 255
  %1287 = uitofp i32 %1286 to float
  %1288 = fmul fast float %1287, 0x3F70101020000000
  %1289 = fmul fast float %1280, %1280
  %1290 = fmul fast float %1284, %1284
  %1291 = fmul fast float %1288, %1288
  %1292 = add i32 %58, 508
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = add i32 %1294, 0
  %1296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1296, %dx.types.Handle %112, float %848, float %849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.ResRet.f32 %1297, 1
  %1300 = extractvalue %dx.types.ResRet.f32 %1297, 2
  %1301 = fmul fast float %1289, %1298
  %1302 = fmul fast float %1290, %1299
  %1303 = fmul fast float %1291, %1300
  br label %1304

; <label>:1304                                    ; preds = %1274, %1266
  %1305 = phi float [ %1301, %1274 ], [ 0.000000e+00, %1266 ]
  %1306 = phi float [ %1302, %1274 ], [ 0.000000e+00, %1266 ]
  %1307 = phi float [ %1303, %1274 ], [ 0.000000e+00, %1266 ]
  %1308 = fcmp fast ogt float %1305, 0.000000e+00
  %1309 = fcmp fast ogt float %1306, 0.000000e+00
  %1310 = fcmp fast ogt float %1307, 0.000000e+00
  %1311 = call float @dx.op.unary.f32(i32 23, float %1305)  ; Log(value)
  %1312 = call float @dx.op.unary.f32(i32 23, float %1306)  ; Log(value)
  %1313 = call float @dx.op.unary.f32(i32 23, float %1307)  ; Log(value)
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = lshr i32 %1315, 7
  %1317 = and i32 %1316, 32752
  %1318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1317)  ; LegacyF16ToF32(value)
  %1319 = fmul fast float %1311, 0xBFE62E4300000000
  %1320 = fmul fast float %1319, %1318
  %1321 = fmul fast float %1312, 0xBFE62E4300000000
  %1322 = fmul fast float %1321, %1318
  %1323 = fmul fast float %1313, 0xBFE62E4300000000
  %1324 = fmul fast float %1323, %1318
  %1325 = select i1 %1308, float %1320, float 1.270000e+02
  %1326 = select i1 %1309, float %1322, float 1.270000e+02
  %1327 = select i1 %1310, float %1324, float 1.270000e+02
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = and i32 %1329, 2048
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1347, label %1332

; <label>:1332                                    ; preds = %1304
  %1333 = add i32 %58, 524
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = add i32 %1335, 0
  %1337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1337, %dx.types.Handle %112, float %848, float %849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 3
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = shl i32 %1341, 4
  %1343 = and i32 %1342, 32752
  %1344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1343)  ; LegacyF16ToF32(value)
  %1345 = fmul fast float %1344, %1339
  %1346 = call float @dx.op.binary.f32(i32 35, float %1345, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1347

; <label>:1347                                    ; preds = %1332, %1304
  %1348 = phi float [ %1346, %1332 ], [ 0x3F70101020000000, %1304 ]
  %1349 = add i32 %58, 96
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = and i32 %1351, 255
  %1353 = uitofp i32 %1352 to float
  %1354 = lshr i32 %1351, 8
  %1355 = and i32 %1354, 255
  %1356 = uitofp i32 %1355 to float
  %1357 = call float @dx.op.dot3.f32(i32 55, float %1139, float %1140, float %1141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1358 = fmul fast float %1356, %1357
  %1359 = fadd fast float %1358, %1353
  %1360 = fmul fast float %1359, 0x3F70101020000000
  %1361 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  br label %1362

; <label>:1362                                    ; preds = %1347, %734
  %1363 = phi float [ 0.000000e+00, %734 ], [ %1220, %1347 ]
  %1364 = phi float [ 0.000000e+00, %734 ], [ %1221, %1347 ]
  %1365 = phi float [ 0.000000e+00, %734 ], [ %1139, %1347 ]
  %1366 = phi float [ 0.000000e+00, %734 ], [ %1140, %1347 ]
  %1367 = phi float [ 0.000000e+00, %734 ], [ %1141, %1347 ]
  %1368 = phi float [ 0.000000e+00, %734 ], [ %1267, %1347 ]
  %1369 = phi float [ 0.000000e+00, %734 ], [ %1268, %1347 ]
  %1370 = phi float [ 0.000000e+00, %734 ], [ %1269, %1347 ]
  %1371 = phi float [ 0.000000e+00, %734 ], [ %1325, %1347 ]
  %1372 = phi float [ 0.000000e+00, %734 ], [ %1326, %1347 ]
  %1373 = phi float [ 0.000000e+00, %734 ], [ %1327, %1347 ]
  %1374 = phi float [ 0.000000e+00, %734 ], [ %1125, %1347 ]
  %1375 = phi float [ 0.000000e+00, %734 ], [ %921, %1347 ]
  %1376 = phi float [ 0.000000e+00, %734 ], [ %1219, %1347 ]
  %1377 = phi float [ 0.000000e+00, %734 ], [ %1222, %1347 ]
  %1378 = phi float [ 0.000000e+00, %734 ], [ %1348, %1347 ]
  %1379 = phi float [ 0.000000e+00, %734 ], [ %1361, %1347 ]
  br i1 %682, label %2246, label %1380

; <label>:1380                                    ; preds = %1362
  %1381 = icmp ult i32 %740, 2
  %1382 = add i32 %58, 40
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = add i32 %58, 44
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = or i32 %1387, %1384
  %1389 = icmp eq i32 %1388, 0
  br i1 %1389, label %2246, label %1390

; <label>:1390                                    ; preds = %1380
  %1391 = and i32 %1384, 262144
  %1392 = icmp ne i32 %1391, 0
  %1393 = select i1 %1392, float %65, float 1.000000e+00
  %1394 = select i1 %1392, float %66, float 0.000000e+00
  %1395 = select i1 %1392, float %67, float 0.000000e+00
  %1396 = select i1 %1392, float %68, float 1.000000e+00
  %1397 = select i1 %1392, float %69, float %93
  %1398 = select i1 %1392, float %70, float %94
  %1399 = add i32 %58, 300
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = lshr i32 %1401, 16
  %1403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1402)  ; LegacyF16ToF32(value)
  %1404 = fmul fast float %1403, 0x3F50624DE0000000
  %1405 = add i32 %58, 104
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = lshr i32 %1407, 16
  %1409 = and i32 %1408, 255
  %1410 = lshr i32 %1407, 24
  %1411 = add i32 %58, 308
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = and i32 %1413, 65535
  %1415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1414)  ; LegacyF16ToF32(value)
  %1416 = lshr i32 %1413, 16
  %1417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1416)  ; LegacyF16ToF32(value)
  %1418 = add i32 %58, 48
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = lshr i32 %1420, 22
  %1422 = shl nuw nsw i32 %1421, 5
  %1423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1422)  ; LegacyF16ToF32(value)
  %1424 = shl i32 %1420, 4
  %1425 = and i32 %1424, 32752
  %1426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1425)  ; LegacyF16ToF32(value)
  %1427 = lshr i32 %1420, 7
  %1428 = and i32 %1427, 32752
  %1429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1428)  ; LegacyF16ToF32(value)
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 3
  %1432 = fmul fast float %1431, 1.000000e+03
  %1433 = fmul fast float %1432, %461
  %1434 = call float @dx.op.unary.f32(i32 22, float %1433)  ; Frc(value)
  %1435 = fadd fast float %1434, %449
  %1436 = fmul fast float %1432, %463
  %1437 = call float @dx.op.unary.f32(i32 22, float %1436)  ; Frc(value)
  %1438 = fadd fast float %1437, %450
  %1439 = fmul fast float %1404, %1432
  %1440 = call float @dx.op.unary.f32(i32 22, float %1439)  ; Frc(value)
  %1441 = fmul fast float %1440, 0x401921FB60000000
  %1442 = fadd fast float %1441, %1423
  %1443 = call float @dx.op.unary.f32(i32 13, float %1442)  ; Sin(value)
  %1444 = call float @dx.op.unary.f32(i32 12, float %1442)  ; Cos(value)
  %1445 = fsub fast float -0.000000e+00, %1443
  %1446 = fadd fast float %1397, -5.000000e-01
  %1447 = fadd fast float %1398, -5.000000e-01
  %1448 = fmul fast float %1415, %1446
  %1449 = fmul fast float %1417, %1447
  %1450 = fadd fast float %1448, 5.000000e-01
  %1451 = fadd fast float %1449, 5.000000e-01
  %1452 = fmul fast float %1426, %1450
  %1453 = fmul fast float %1429, %1451
  %1454 = fmul fast float %1444, %1452
  %1455 = call float @dx.op.tertiary.f32(i32 46, float %1445, float %1453, float %1454)  ; FMad(a,b,c)
  %1456 = fmul fast float %1443, %1452
  %1457 = call float @dx.op.tertiary.f32(i32 46, float %1444, float %1453, float %1456)  ; FMad(a,b,c)
  %1458 = fadd fast float %1435, %1455
  %1459 = fadd fast float %1438, %1457
  %1460 = icmp ugt i32 %1409, 1
  %1461 = icmp ugt i32 %1407, 33554431
  %1462 = or i1 %1461, %1460
  br i1 %1462, label %1463, label %1488

; <label>:1463                                    ; preds = %1390
  %1464 = add i32 %58, 244
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = lshr i32 %1466, 16
  %1468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1467)  ; LegacyF16ToF32(value)
  %1469 = fmul fast float %1431, %1468
  %1470 = call float @dx.op.unary.f32(i32 22, float %1469)  ; Frc(value)
  %1471 = mul nuw nsw i32 %1409, %1410
  %1472 = uitofp i32 %1471 to float
  %1473 = fmul fast float %1470, %1472
  %1474 = call float @dx.op.unary.f32(i32 27, float %1473)  ; Round_ni(value)
  %1475 = fptoui float %1474 to i32
  %1476 = urem i32 %1475, %1409
  %1477 = udiv i32 %1475, %1410
  %1478 = call float @dx.op.unary.f32(i32 22, float %1458)  ; Frc(value)
  %1479 = call float @dx.op.unary.f32(i32 22, float %1459)  ; Frc(value)
  %1480 = uitofp i32 %1476 to float
  %1481 = uitofp i32 %1477 to float
  %1482 = fadd fast float %1478, %1480
  %1483 = fadd fast float %1479, %1481
  %1484 = uitofp i32 %1409 to float
  %1485 = uitofp i32 %1410 to float
  %1486 = fdiv fast float %1482, %1484
  %1487 = fdiv fast float %1483, %1485
  br label %1488

; <label>:1488                                    ; preds = %1463, %1390
  %1489 = phi float [ %1486, %1463 ], [ %1458, %1390 ]
  %1490 = phi float [ %1487, %1463 ], [ %1459, %1390 ]
  %1491 = and i32 %1384, 256
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1539, label %1493

; <label>:1493                                    ; preds = %1488
  %1494 = add i32 %58, 476
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = add i32 %1496, 0
  %1498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1498, %dx.types.Handle %112, float %1489, float %1490, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1500 = extractvalue %dx.types.ResRet.f32 %1499, 0
  %1501 = add i32 %58, 116
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = shl i32 %1503, 4
  %1505 = and i32 %1504, 32752
  %1506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1505)  ; LegacyF16ToF32(value)
  %1507 = lshr i32 %1503, 7
  %1508 = and i32 %1507, 32752
  %1509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1508)  ; LegacyF16ToF32(value)
  %1510 = fsub fast float 1.000000e+00, %737
  %1511 = call float @dx.op.binary.f32(i32 35, float %1510, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1512 = bitcast float %737 to i32
  %1513 = sitofp i32 %1512 to float
  %1514 = fadd fast float %1513, 0xC1CFBF8940000000
  %1515 = fmul fast float %1509, %1514
  %1516 = fadd fast float %1515, 0x41CFBF8940000000
  %1517 = fptosi float %1516 to i32
  %1518 = bitcast i32 %1517 to float
  %1519 = bitcast float %1511 to i32
  %1520 = sitofp i32 %1519 to float
  %1521 = fadd fast float %1520, 0xC1CFBF8940000000
  %1522 = fmul fast float %1521, %1509
  %1523 = fadd fast float %1522, 0x41CFBF8940000000
  %1524 = fptosi float %1523 to i32
  %1525 = bitcast i32 %1524 to float
  %1526 = fmul fast float %1518, %1506
  %1527 = fmul fast float %1525, %1506
  %1528 = fsub fast float %1511, %1526
  %1529 = fadd fast float %1527, %1511
  %1530 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1531 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1532 = fsub fast float %1500, %1530
  %1533 = fsub fast float %1531, %1530
  %1534 = bitcast float %1533 to i32
  %1535 = sub nsw i32 2129859010, %1534
  %1536 = bitcast i32 %1535 to float
  %1537 = fmul fast float %1536, %1532
  %1538 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  br label %1539

; <label>:1539                                    ; preds = %1493, %1488
  %1540 = phi float [ %1538, %1493 ], [ %737, %1488 ]
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, 128
  %1544 = icmp eq i32 %1543, 0
  br i1 %1544, label %1561, label %1545

; <label>:1545                                    ; preds = %1539
  %1546 = add i32 %58, 460
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = add i32 %1548, 0
  %1550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1551 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1550, %dx.types.Handle %112, float %1489, float %1490, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 524288
  %1556 = icmp ne i32 %1555, 0
  %1557 = fcmp fast ogt float %1552, 0x3FE0101020000000
  %1558 = select i1 %1557, float 1.000000e+00, float 0.000000e+00
  %1559 = select i1 %1556, float %1558, float %1552
  %1560 = fmul fast float %1559, %1540
  br label %1561

; <label>:1561                                    ; preds = %1545, %1539
  %1562 = phi float [ %1560, %1545 ], [ %1540, %1539 ]
  %1563 = fcmp fast ult float %1562, 0x3F70101020000000
  br i1 %1563, label %2246, label %1564

; <label>:1564                                    ; preds = %1561
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 16
  %1568 = icmp eq i32 %1567, 0
  br i1 %1568, label %1767, label %1569

; <label>:1569                                    ; preds = %1564
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = add i32 %58, 412
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1572, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = add i32 %1574, 0
  %1576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1577 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1576, %dx.types.Handle %111, float %1489, float %1490, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 0
  %1579 = extractvalue %dx.types.ResRet.f32 %1577, 1
  %1580 = extractvalue %dx.types.ResRet.f32 %1577, 2
  %1581 = extractvalue %dx.types.ResRet.f32 %1577, 3
  %1582 = and i32 %1571, 255
  %1583 = uitofp i32 %1582 to float
  %1584 = lshr i32 %1571, 8
  %1585 = and i32 %1584, 255
  %1586 = uitofp i32 %1585 to float
  %1587 = fmul fast float %1581, %1583
  %1588 = fadd fast float %1587, %1586
  %1589 = fmul fast float %1588, 0x3F70101000000000
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 512
  %1593 = icmp eq i32 %1592, 0
  br i1 %1593, label %1602, label %1594

; <label>:1594                                    ; preds = %1569
  %1595 = add i32 %58, 496
  %1596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1595, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.i32 %1596, 0
  %1598 = add i32 %1597, 0
  %1599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1599, %dx.types.Handle %112, float %1489, float %1490, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1601 = extractvalue %dx.types.ResRet.f32 %1600, 0
  br label %1602

; <label>:1602                                    ; preds = %1594, %1569
  %1603 = phi float [ %1601, %1594 ], [ 1.000000e+00, %1569 ]
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = and i32 %1605, 33554432
  %1607 = icmp eq i32 %1606, 0
  br i1 %1607, label %1714, label %1608

; <label>:1608                                    ; preds = %1602
  %1609 = add i32 %58, 240
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 65535
  %1613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1612)  ; LegacyF16ToF32(value)
  %1614 = lshr i32 %1611, 16
  %1615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1614)  ; LegacyF16ToF32(value)
  %1616 = add i32 %58, 244
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1616, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = and i32 %1618, 65535
  %1620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1619)  ; LegacyF16ToF32(value)
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = lshr i32 %1622, 24
  %1624 = uitofp i32 %1623 to float
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = and i32 %1622, 255
  %1627 = uitofp i32 %1626 to float
  %1628 = fmul fast float %1627, 0x3F70101020000000
  %1629 = lshr i32 %1622, 8
  %1630 = and i32 %1629, 255
  %1631 = uitofp i32 %1630 to float
  %1632 = fmul fast float %1631, 0x3F70101020000000
  %1633 = lshr i32 %1622, 16
  %1634 = and i32 %1633, 255
  %1635 = uitofp i32 %1634 to float
  %1636 = fmul fast float %1635, 0x3F70101020000000
  %1637 = add i32 %58, 236
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1637, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = lshr i32 %1639, 24
  %1641 = uitofp i32 %1640 to float
  %1642 = fmul fast float %1641, 0x3F70101020000000
  %1643 = and i32 %1639, 255
  %1644 = uitofp i32 %1643 to float
  %1645 = fmul fast float %1644, 0x3F70101020000000
  %1646 = lshr i32 %1639, 8
  %1647 = and i32 %1646, 255
  %1648 = uitofp i32 %1647 to float
  %1649 = fmul fast float %1648, 0x3F70101020000000
  %1650 = lshr i32 %1639, 16
  %1651 = and i32 %1650, 255
  %1652 = uitofp i32 %1651 to float
  %1653 = fmul fast float %1652, 0x3F70101020000000
  %1654 = bitcast float %1578 to i32
  %1655 = ashr i32 %1654, 1
  %1656 = sub nsw i32 1597463174, %1655
  %1657 = bitcast i32 %1656 to float
  %1658 = fmul fast float %1578, 5.000000e-01
  %1659 = fmul fast float %1657, %1657
  %1660 = fmul fast float %1659, %1658
  %1661 = fsub fast float 1.500000e+00, %1660
  %1662 = fmul fast float %1657, %1578
  %1663 = fmul fast float %1662, %1661
  %1664 = bitcast float %1579 to i32
  %1665 = ashr i32 %1664, 1
  %1666 = sub nsw i32 1597463174, %1665
  %1667 = bitcast i32 %1666 to float
  %1668 = fmul fast float %1579, 5.000000e-01
  %1669 = fmul fast float %1667, %1667
  %1670 = fmul fast float %1669, %1668
  %1671 = fsub fast float 1.500000e+00, %1670
  %1672 = fmul fast float %1667, %1579
  %1673 = fmul fast float %1672, %1671
  %1674 = bitcast float %1580 to i32
  %1675 = ashr i32 %1674, 1
  %1676 = sub nsw i32 1597463174, %1675
  %1677 = bitcast i32 %1676 to float
  %1678 = fmul fast float %1580, 5.000000e-01
  %1679 = fmul fast float %1677, %1677
  %1680 = fmul fast float %1679, %1678
  %1681 = fsub fast float 1.500000e+00, %1680
  %1682 = fmul fast float %1677, %1580
  %1683 = fmul fast float %1682, %1681
  %1684 = fsub fast float %1663, %1645
  %1685 = fsub fast float %1673, %1649
  %1686 = fsub fast float %1683, %1653
  %1687 = fmul fast float %1684, %1613
  %1688 = fmul fast float %1685, %1615
  %1689 = fmul fast float %1686, %1620
  %1690 = fadd fast float %1687, %1628
  %1691 = fadd fast float %1688, %1632
  %1692 = fadd fast float %1689, %1636
  %1693 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1694 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1695 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1696 = fmul fast float %1693, %1693
  %1697 = fmul fast float %1694, %1694
  %1698 = fmul fast float %1695, %1695
  %1699 = fsub fast float %1696, %1578
  %1700 = fsub fast float %1697, %1579
  %1701 = fsub fast float %1698, %1580
  %1702 = fmul fast float %1699, %1603
  %1703 = fmul fast float %1700, %1603
  %1704 = fmul fast float %1701, %1603
  %1705 = fadd fast float %1702, %1578
  %1706 = fadd fast float %1703, %1579
  %1707 = fadd fast float %1704, %1580
  %1708 = fadd fast float %1625, %1589
  %1709 = fsub fast float %1708, %1642
  %1710 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1711 = fsub fast float %1710, %1589
  %1712 = fmul fast float %1711, %1603
  %1713 = fadd fast float %1712, %1589
  br label %1767

; <label>:1714                                    ; preds = %1602
  %1715 = and i32 %1605, 134217728
  %1716 = icmp eq i32 %1715, 0
  br i1 %1716, label %1751, label %1717

; <label>:1717                                    ; preds = %1714
  %1718 = call float @dx.op.unary.f32(i32 24, float %437)  ; Sqrt(value)
  %1719 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %1720 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %1721 = fadd fast float %1718, -5.000000e-01
  %1722 = fadd fast float %1719, -5.000000e-01
  %1723 = fadd fast float %1720, -5.000000e-01
  %1724 = fmul fast float %1721, %1603
  %1725 = fmul fast float %1722, %1603
  %1726 = fmul fast float %1723, %1603
  %1727 = fadd fast float %1724, 5.000000e-01
  %1728 = fadd fast float %1725, 5.000000e-01
  %1729 = fadd fast float %1726, 5.000000e-01
  %1730 = call float @dx.op.unary.f32(i32 24, float %1578)  ; Sqrt(value)
  %1731 = call float @dx.op.unary.f32(i32 24, float %1579)  ; Sqrt(value)
  %1732 = call float @dx.op.unary.f32(i32 24, float %1580)  ; Sqrt(value)
  %1733 = fmul fast float %1727, 2.000000e+00
  %1734 = fsub fast float 1.000000e+00, %1733
  %1735 = fmul fast float %1734, %1730
  %1736 = fadd fast float %1735, %1733
  %1737 = fmul fast float %1736, %1730
  %1738 = fmul fast float %1728, 2.000000e+00
  %1739 = fsub fast float 1.000000e+00, %1738
  %1740 = fmul fast float %1739, %1731
  %1741 = fadd fast float %1740, %1738
  %1742 = fmul fast float %1741, %1731
  %1743 = fmul fast float %1729, 2.000000e+00
  %1744 = fsub fast float 1.000000e+00, %1743
  %1745 = fmul fast float %1744, %1732
  %1746 = fadd fast float %1745, %1743
  %1747 = fmul fast float %1746, %1732
  %1748 = fmul fast float %1737, %1737
  %1749 = fmul fast float %1742, %1742
  %1750 = fmul fast float %1747, %1747
  br label %1767

; <label>:1751                                    ; preds = %1714
  %1752 = fmul fast float %437, %437
  %1753 = fmul fast float %438, %438
  %1754 = fmul fast float %439, %439
  %1755 = fadd fast float %1752, -1.000000e+00
  %1756 = fadd fast float %1753, -1.000000e+00
  %1757 = fadd fast float %1754, -1.000000e+00
  %1758 = fmul fast float %1603, %1755
  %1759 = fmul fast float %1603, %1756
  %1760 = fmul fast float %1603, %1757
  %1761 = fadd fast float %1758, 1.000000e+00
  %1762 = fadd fast float %1759, 1.000000e+00
  %1763 = fadd fast float %1760, 1.000000e+00
  %1764 = fmul fast float %1761, %1578
  %1765 = fmul fast float %1762, %1579
  %1766 = fmul fast float %1763, %1580
  br label %1767

; <label>:1767                                    ; preds = %1751, %1717, %1608, %1564
  %1768 = phi float [ %1713, %1608 ], [ %1589, %1717 ], [ %1589, %1751 ], [ 0x3FA23C0BE0000000, %1564 ]
  %1769 = phi float [ %1705, %1608 ], [ %1748, %1717 ], [ %1764, %1751 ], [ 1.000000e+00, %1564 ]
  %1770 = phi float [ %1706, %1608 ], [ %1749, %1717 ], [ %1765, %1751 ], [ 1.000000e+00, %1564 ]
  %1771 = phi float [ %1707, %1608 ], [ %1750, %1717 ], [ %1766, %1751 ], [ 1.000000e+00, %1564 ]
  %1772 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.i32 %1772, 1
  %1774 = and i32 %1773, 1
  %1775 = icmp ne i32 %1774, 0
  %1776 = add i32 %58, 356
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = and i32 %1778, 32
  %1780 = icmp ne i32 %1779, 0
  %1781 = and i1 %1775, %1780
  %1782 = select i1 %1781, float 1.000000e+00, float %1769
  %1783 = select i1 %1781, float 0x3FD3333340000000, float %1770
  %1784 = select i1 %1781, float 0x3FD3333340000000, float %1771
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = and i32 %1786, 32
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %1861, label %1789

; <label>:1789                                    ; preds = %1767
  %1790 = add i32 %58, 108
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = add i32 %58, 428
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = add i32 %1795, 0
  %1797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1796, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1798 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1797, %dx.types.Handle %111, float %1489, float %1490, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1799 = extractvalue %dx.types.ResRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.ResRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.ResRet.f32 %1798, 2
  %1802 = extractvalue %dx.types.ResRet.f32 %1798, 3
  %1803 = and i32 %1792, 255
  %1804 = uitofp i32 %1803 to float
  %1805 = lshr i32 %1792, 8
  %1806 = and i32 %1805, 255
  %1807 = uitofp i32 %1806 to float
  %1808 = lshr i32 %1792, 16
  %1809 = and i32 %1808, 255
  %1810 = uitofp i32 %1809 to float
  %1811 = fmul fast float %1810, 0x3F70101000000000
  %1812 = fmul fast float %1799, %1804
  %1813 = fadd fast float %1812, %1807
  %1814 = fmul fast float %1813, 0x3F70101000000000
  %1815 = fadd fast float %1800, -5.000000e-01
  %1816 = fadd fast float %1802, -5.000000e-01
  %1817 = fmul fast float %1815, %1811
  %1818 = fmul fast float %1816, %1811
  %1819 = fadd fast float %1817, 5.000000e-01
  %1820 = fadd fast float %1818, 5.000000e-01
  %1821 = fmul fast float %1819, 2.000000e+00
  %1822 = fadd fast float %1821, -1.000000e+00
  %1823 = fmul fast float %1820, 2.000000e+00
  %1824 = fadd fast float %1823, -1.000000e+00
  %1825 = fadd fast float %1822, %1824
  %1826 = fmul fast float %1825, 5.000000e-01
  %1827 = fsub fast float %1822, %1824
  %1828 = fmul fast float %1827, 5.000000e-01
  %1829 = call float @dx.op.unary.f32(i32 6, float %1826)  ; FAbs(value)
  %1830 = fsub fast float 1.000000e+00, %1829
  %1831 = call float @dx.op.unary.f32(i32 6, float %1828)  ; FAbs(value)
  %1832 = fsub fast float %1830, %1831
  %1833 = call float @dx.op.dot3.f32(i32 55, float %1826, float %1828, float %1832, float %1826, float %1828, float %1832)  ; Dot3(ax,ay,az,bx,by,bz)
  %1834 = call float @dx.op.unary.f32(i32 25, float %1833)  ; Rsqrt(value)
  %1835 = fmul fast float %1826, %1834
  %1836 = fmul fast float %1828, %1834
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 67108864
  %1840 = icmp eq i32 %1839, 0
  br i1 %1840, label %1857, label %1841

; <label>:1841                                    ; preds = %1789
  %1842 = add i32 %58, 296
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = and i32 %1844, 65535
  %1846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1845)  ; LegacyF16ToF32(value)
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = and i32 %1848, 65535
  %1850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1849)  ; LegacyF16ToF32(value)
  %1851 = lshr i32 %1844, 16
  %1852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1851)  ; LegacyF16ToF32(value)
  %1853 = fsub fast float %1814, %1852
  %1854 = fmul fast float %1853, %1846
  %1855 = fadd fast float %1854, %1850
  %1856 = call float @dx.op.unary.f32(i32 7, float %1855)  ; Saturate(value)
  br label %1857

; <label>:1857                                    ; preds = %1841, %1789
  %1858 = phi float [ %1856, %1841 ], [ %1814, %1789 ]
  %1859 = call float @dx.op.dot2.f32(i32 54, float %1835, float %1836, float %1393, float %1394)  ; Dot2(ax,ay,bx,by)
  %1860 = call float @dx.op.dot2.f32(i32 54, float %1835, float %1836, float %1395, float %1396)  ; Dot2(ax,ay,bx,by)
  br label %1861

; <label>:1861                                    ; preds = %1857, %1767
  %1862 = phi float [ %1858, %1857 ], [ 0x3FD6666660000000, %1767 ]
  %1863 = phi float [ %1859, %1857 ], [ 0.000000e+00, %1767 ]
  %1864 = phi float [ %1860, %1857 ], [ 0.000000e+00, %1767 ]
  %1865 = phi float [ %1801, %1857 ], [ 1.000000e+00, %1767 ]
  %1866 = add i32 %58, 176
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = lshr i32 %1868, 22
  %1870 = shl nuw nsw i32 %1869, 5
  %1871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1870)  ; LegacyF16ToF32(value)
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = and i32 %1873, 64
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %1909, label %1876

; <label>:1876                                    ; preds = %1861
  %1877 = add i32 %58, 444
  %1878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.i32 %1878, 0
  %1880 = add i32 %1879, 0
  %1881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1880, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = and i32 %1883, 131072
  %1885 = icmp eq i32 %1884, 0
  %1886 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1881, %dx.types.Handle %111, float %1489, float %1490, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.ResRet.f32 %1886, 1
  %1889 = extractvalue %dx.types.ResRet.f32 %1886, 2
  %1890 = fmul fast float %420, %1887
  %1891 = fmul fast float %421, %1888
  %1892 = fmul fast float %422, %1889
  br i1 %1885, label %1899, label %1893

; <label>:1893                                    ; preds = %1876
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 0
  %1896 = fmul fast float %1895, %1890
  %1897 = fmul fast float %1895, %1891
  %1898 = fmul fast float %1895, %1892
  br label %1899

; <label>:1899                                    ; preds = %1893, %1876
  %1900 = phi float [ %1896, %1893 ], [ %1890, %1876 ]
  %1901 = phi float [ %1897, %1893 ], [ %1891, %1876 ]
  %1902 = phi float [ %1898, %1893 ], [ %1892, %1876 ]
  %1903 = fmul fast float %1900, %1871
  %1904 = select i1 %302, float %1903, float %1900
  %1905 = call float @dx.op.dot3.f32(i32 55, float %1904, float %1901, float %1902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1906 = select i1 %302, float 0.000000e+00, float %1900
  %1907 = select i1 %302, float %1905, float %1901
  %1908 = select i1 %302, float 0.000000e+00, float %1902
  br label %1909

; <label>:1909                                    ; preds = %1899, %1861
  %1910 = phi float [ %1906, %1899 ], [ 0.000000e+00, %1861 ]
  %1911 = phi float [ %1907, %1899 ], [ 0.000000e+00, %1861 ]
  %1912 = phi float [ %1908, %1899 ], [ 0.000000e+00, %1861 ]
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = and i32 %1914, 1024
  %1916 = icmp eq i32 %1915, 0
  br i1 %1916, label %1947, label %1917

; <label>:1917                                    ; preds = %1909
  %1918 = add i32 %58, 168
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = and i32 %1920, 255
  %1922 = uitofp i32 %1921 to float
  %1923 = fmul fast float %1922, 0x3F70101020000000
  %1924 = lshr i32 %1920, 8
  %1925 = and i32 %1924, 255
  %1926 = uitofp i32 %1925 to float
  %1927 = fmul fast float %1926, 0x3F70101020000000
  %1928 = lshr i32 %1920, 16
  %1929 = and i32 %1928, 255
  %1930 = uitofp i32 %1929 to float
  %1931 = fmul fast float %1930, 0x3F70101020000000
  %1932 = fmul fast float %1923, %1923
  %1933 = fmul fast float %1927, %1927
  %1934 = fmul fast float %1931, %1931
  %1935 = add i32 %58, 512
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = add i32 %1937, 0
  %1939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1938, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1940 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1939, %dx.types.Handle %112, float %1489, float %1490, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1942 = extractvalue %dx.types.ResRet.f32 %1940, 1
  %1943 = extractvalue %dx.types.ResRet.f32 %1940, 2
  %1944 = fmul fast float %1932, %1941
  %1945 = fmul fast float %1933, %1942
  %1946 = fmul fast float %1934, %1943
  br label %1947

; <label>:1947                                    ; preds = %1917, %1909
  %1948 = phi float [ %1944, %1917 ], [ 0.000000e+00, %1909 ]
  %1949 = phi float [ %1945, %1917 ], [ 0.000000e+00, %1909 ]
  %1950 = phi float [ %1946, %1917 ], [ 0.000000e+00, %1909 ]
  %1951 = fcmp fast ogt float %1948, 0.000000e+00
  %1952 = fcmp fast ogt float %1949, 0.000000e+00
  %1953 = fcmp fast ogt float %1950, 0.000000e+00
  %1954 = call float @dx.op.unary.f32(i32 23, float %1948)  ; Log(value)
  %1955 = call float @dx.op.unary.f32(i32 23, float %1949)  ; Log(value)
  %1956 = call float @dx.op.unary.f32(i32 23, float %1950)  ; Log(value)
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = lshr i32 %1958, 7
  %1960 = and i32 %1959, 32752
  %1961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1960)  ; LegacyF16ToF32(value)
  %1962 = fmul fast float %1954, 0xBFE62E4300000000
  %1963 = fmul fast float %1962, %1961
  %1964 = fmul fast float %1955, 0xBFE62E4300000000
  %1965 = fmul fast float %1964, %1961
  %1966 = fmul fast float %1956, 0xBFE62E4300000000
  %1967 = fmul fast float %1966, %1961
  %1968 = select i1 %1951, float %1963, float 1.270000e+02
  %1969 = select i1 %1952, float %1965, float 1.270000e+02
  %1970 = select i1 %1953, float %1967, float 1.270000e+02
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = and i32 %1972, 2048
  %1974 = icmp eq i32 %1973, 0
  br i1 %1974, label %1990, label %1975

; <label>:1975                                    ; preds = %1947
  %1976 = add i32 %58, 528
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = add i32 %1978, 0
  %1980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1980, %dx.types.Handle %112, float %1489, float %1490, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1982 = extractvalue %dx.types.ResRet.f32 %1981, 3
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = shl i32 %1984, 4
  %1986 = and i32 %1985, 32752
  %1987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1986)  ; LegacyF16ToF32(value)
  %1988 = fmul fast float %1987, %1982
  %1989 = call float @dx.op.binary.f32(i32 35, float %1988, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1990

; <label>:1990                                    ; preds = %1975, %1947
  %1991 = phi float [ %1989, %1975 ], [ 0x3F70101020000000, %1947 ]
  %1992 = add i32 %58, 112
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = and i32 %1994, 255
  %1996 = uitofp i32 %1995 to float
  %1997 = lshr i32 %1994, 8
  %1998 = and i32 %1997, 255
  %1999 = uitofp i32 %1998 to float
  %2000 = call float @dx.op.dot3.f32(i32 55, float %1782, float %1783, float %1784, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2001 = fmul fast float %1999, %2000
  %2002 = fadd fast float %2001, %1996
  %2003 = fmul fast float %2002, 0x3F70101020000000
  %2004 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  br i1 %1381, label %2005, label %2040

; <label>:2005                                    ; preds = %1990
  %2006 = fmul fast float %1991, 2.000000e+00
  %2007 = fcmp fast olt float %1968, 1.270000e+02
  %2008 = fcmp fast olt float %1969, 1.270000e+02
  %2009 = fcmp fast olt float %1970, 1.270000e+02
  %2010 = fmul fast float %1968, 0xBFF7154760000000
  %2011 = fmul fast float %2010, %2006
  %2012 = fmul fast float %1969, 0xBFF7154760000000
  %2013 = fmul fast float %2012, %2006
  %2014 = fmul fast float %1970, 0xBFF7154760000000
  %2015 = fmul fast float %2014, %2006
  %2016 = call float @dx.op.unary.f32(i32 21, float %2011)  ; Exp(value)
  %2017 = call float @dx.op.unary.f32(i32 21, float %2013)  ; Exp(value)
  %2018 = call float @dx.op.unary.f32(i32 21, float %2015)  ; Exp(value)
  %2019 = call float @dx.op.unary.f32(i32 7, float %2016)  ; Saturate(value)
  %2020 = call float @dx.op.unary.f32(i32 7, float %2017)  ; Saturate(value)
  %2021 = call float @dx.op.unary.f32(i32 7, float %2018)  ; Saturate(value)
  %2022 = fadd fast float %2019, -1.000000e+00
  %2023 = select i1 %2007, float %2022, float -1.000000e+00
  %2024 = fadd fast float %2020, -1.000000e+00
  %2025 = select i1 %2008, float %2024, float -1.000000e+00
  %2026 = fadd fast float %2021, -1.000000e+00
  %2027 = select i1 %2009, float %2026, float -1.000000e+00
  %2028 = fmul fast float %2023, %1562
  %2029 = fmul fast float %2025, %1562
  %2030 = fmul fast float %2027, %1562
  %2031 = fadd fast float %2028, 1.000000e+00
  %2032 = fadd fast float %2029, 1.000000e+00
  %2033 = fadd fast float %2030, 1.000000e+00
  %2034 = fmul fast float %2031, %1365
  %2035 = fmul fast float %2032, %1366
  %2036 = fmul fast float %2033, %1367
  %2037 = fmul fast float %2031, %1368
  %2038 = fmul fast float %2032, %1369
  %2039 = fmul fast float %2033, %1370
  br label %2040

; <label>:2040                                    ; preds = %2005, %1990
  %2041 = phi float [ %2034, %2005 ], [ %1365, %1990 ]
  %2042 = phi float [ %2035, %2005 ], [ %1366, %1990 ]
  %2043 = phi float [ %2036, %2005 ], [ %1367, %1990 ]
  %2044 = phi float [ %2037, %2005 ], [ %1368, %1990 ]
  %2045 = phi float [ %2038, %2005 ], [ %1369, %1990 ]
  %2046 = phi float [ %2039, %2005 ], [ %1370, %1990 ]
  %2047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.i32 %2047, 0
  %2049 = and i32 %2048, 3
  %2050 = icmp eq i32 %2049, 3
  br i1 %2050, label %2129, label %2051

; <label>:2051                                    ; preds = %2040
  %2052 = and i32 %2048, 16
  %2053 = icmp ne i32 %2052, 0
  %2054 = select i1 %2053, float %1562, float 0.000000e+00
  %2055 = icmp eq i32 %2049, 0
  br i1 %2055, label %2056, label %2084

; <label>:2056                                    ; preds = %2051
  %2057 = and i32 %2048, 64
  %2058 = icmp ne i32 %2057, 0
  %2059 = select i1 %2058, float %1562, float 0.000000e+00
  %2060 = fsub fast float %1782, %2041
  %2061 = fsub fast float %1783, %2042
  %2062 = fsub fast float %1784, %2043
  %2063 = fmul fast float %2054, %2060
  %2064 = fmul fast float %2054, %2061
  %2065 = fmul fast float %2054, %2062
  %2066 = fadd fast float %2063, %2041
  %2067 = fadd fast float %2064, %2042
  %2068 = fadd fast float %2065, %2043
  %2069 = fsub fast float %1768, %1374
  %2070 = fmul fast float %2054, %2069
  %2071 = fadd fast float %2070, %1374
  %2072 = fsub fast float %1910, %2044
  %2073 = fsub fast float %1911, %2045
  %2074 = fsub fast float %1912, %2046
  %2075 = fmul fast float %2059, %2072
  %2076 = fmul fast float %2059, %2073
  %2077 = fmul fast float %2059, %2074
  %2078 = fadd fast float %2075, %2044
  %2079 = fadd fast float %2076, %2045
  %2080 = fadd fast float %2077, %2046
  %2081 = fsub fast float %2004, %1379
  %2082 = fmul fast float %2054, %2081
  %2083 = fadd fast float %2082, %1379
  br label %2129

; <label>:2084                                    ; preds = %2051
  %2085 = icmp eq i32 %2049, 1
  br i1 %2085, label %2086, label %2099

; <label>:2086                                    ; preds = %2084
  %2087 = fadd fast float %1782, -1.000000e+00
  %2088 = fadd fast float %1783, -1.000000e+00
  %2089 = fadd fast float %1784, -1.000000e+00
  %2090 = fmul fast float %2054, %2087
  %2091 = fmul fast float %2054, %2088
  %2092 = fmul fast float %2054, %2089
  %2093 = fadd fast float %2090, 1.000000e+00
  %2094 = fadd fast float %2091, 1.000000e+00
  %2095 = fadd fast float %2092, 1.000000e+00
  %2096 = fmul fast float %2093, %2041
  %2097 = fmul fast float %2094, %2042
  %2098 = fmul fast float %2095, %2043
  br label %2129

; <label>:2099                                    ; preds = %2084
  %2100 = icmp eq i32 %2049, 2
  br i1 %2100, label %2101, label %2129

; <label>:2101                                    ; preds = %2099
  %2102 = call float @dx.op.unary.f32(i32 24, float %1782)  ; Sqrt(value)
  %2103 = call float @dx.op.unary.f32(i32 24, float %1783)  ; Sqrt(value)
  %2104 = call float @dx.op.unary.f32(i32 24, float %1784)  ; Sqrt(value)
  %2105 = fadd fast float %2102, -5.000000e-01
  %2106 = fadd fast float %2103, -5.000000e-01
  %2107 = fadd fast float %2104, -5.000000e-01
  %2108 = fmul fast float %2105, %2054
  %2109 = fmul fast float %2106, %2054
  %2110 = fmul fast float %2107, %2054
  %2111 = fadd fast float %2108, 5.000000e-01
  %2112 = fadd fast float %2109, 5.000000e-01
  %2113 = fadd fast float %2110, 5.000000e-01
  %2114 = fmul fast float %2111, 2.000000e+00
  %2115 = fsub fast float 1.000000e+00, %2114
  %2116 = fmul fast float %2115, %2041
  %2117 = fadd fast float %2116, %2114
  %2118 = fmul fast float %2117, %2041
  %2119 = fmul fast float %2112, 2.000000e+00
  %2120 = fsub fast float 1.000000e+00, %2119
  %2121 = fmul fast float %2120, %2042
  %2122 = fadd fast float %2121, %2119
  %2123 = fmul fast float %2122, %2042
  %2124 = fmul fast float %2113, 2.000000e+00
  %2125 = fsub fast float 1.000000e+00, %2124
  %2126 = fmul fast float %2125, %2043
  %2127 = fadd fast float %2126, %2124
  %2128 = fmul fast float %2127, %2043
  br label %2129

; <label>:2129                                    ; preds = %2101, %2099, %2086, %2056, %2040
  %2130 = phi float [ %2041, %2040 ], [ %2118, %2101 ], [ %2041, %2099 ], [ %2096, %2086 ], [ %2066, %2056 ]
  %2131 = phi float [ %2042, %2040 ], [ %2123, %2101 ], [ %2042, %2099 ], [ %2097, %2086 ], [ %2067, %2056 ]
  %2132 = phi float [ %2043, %2040 ], [ %2128, %2101 ], [ %2043, %2099 ], [ %2098, %2086 ], [ %2068, %2056 ]
  %2133 = phi float [ %2044, %2040 ], [ %2044, %2101 ], [ %2044, %2099 ], [ %2044, %2086 ], [ %2078, %2056 ]
  %2134 = phi float [ %2045, %2040 ], [ %2045, %2101 ], [ %2045, %2099 ], [ %2045, %2086 ], [ %2079, %2056 ]
  %2135 = phi float [ %2046, %2040 ], [ %2046, %2101 ], [ %2046, %2099 ], [ %2046, %2086 ], [ %2080, %2056 ]
  %2136 = phi float [ %1374, %2040 ], [ %1374, %2101 ], [ %1374, %2099 ], [ %1374, %2086 ], [ %2071, %2056 ]
  %2137 = phi float [ %1379, %2040 ], [ %1379, %2101 ], [ %1379, %2099 ], [ %1379, %2086 ], [ %2083, %2056 ]
  %2138 = and i32 %2048, 12
  %2139 = icmp eq i32 %2138, 12
  br i1 %2139, label %2246, label %2140

; <label>:2140                                    ; preds = %2129
  %2141 = and i32 %2048, 2097184
  %2142 = icmp eq i32 %2141, 2097184
  %2143 = select i1 %2142, float %1562, float 0.000000e+00
  %2144 = and i32 %2048, 4194336
  %2145 = icmp eq i32 %2144, 4194336
  %2146 = select i1 %2145, float %1562, float 0.000000e+00
  %2147 = and i32 %2048, 8388640
  %2148 = icmp eq i32 %2147, 8388640
  %2149 = select i1 %2148, float %1562, float 0.000000e+00
  %2150 = and i32 %2048, 1024
  %2151 = icmp ne i32 %2150, 0
  %2152 = select i1 %2151, float %1562, float 0.000000e+00
  %2153 = and i32 %2048, 2048
  %2154 = icmp ne i32 %2153, 0
  %2155 = select i1 %2154, float %1562, float 0.000000e+00
  %2156 = icmp eq i32 %2138, 0
  br i1 %2156, label %2157, label %2182

; <label>:2157                                    ; preds = %2140
  %2158 = fsub fast float %1863, %1363
  %2159 = fsub fast float %1864, %1364
  %2160 = fmul fast float %2143, %2158
  %2161 = fmul fast float %2143, %2159
  %2162 = fadd fast float %2160, %1363
  %2163 = fadd fast float %2161, %1364
  %2164 = fsub fast float %1865, %1377
  %2165 = fmul fast float %2146, %2164
  %2166 = fadd fast float %2165, %1377
  %2167 = fsub fast float %1862, %1376
  %2168 = fmul fast float %2149, %2167
  %2169 = fadd fast float %2168, %1376
  %2170 = fsub fast float %1968, %1371
  %2171 = fsub fast float %1969, %1372
  %2172 = fsub fast float %1970, %1373
  %2173 = fmul fast float %2152, %2170
  %2174 = fmul fast float %2152, %2171
  %2175 = fmul fast float %2152, %2172
  %2176 = fadd fast float %2173, %1371
  %2177 = fadd fast float %2174, %1372
  %2178 = fadd fast float %2175, %1373
  %2179 = fsub fast float %1991, %1378
  %2180 = fmul fast float %2155, %2179
  %2181 = fadd fast float %2180, %1378
  br label %2246

; <label>:2182                                    ; preds = %2140
  %2183 = icmp eq i32 %2138, 4
  br i1 %2183, label %2184, label %2224

; <label>:2184                                    ; preds = %2182
  %2185 = fmul fast float %2143, %1863
  %2186 = fmul fast float %2143, %1864
  %2187 = fadd fast float %2185, %1363
  %2188 = fadd fast float %2186, %1364
  %2189 = call float @dx.op.binary.f32(i32 36, float %1377, float %1865)  ; FMin(a,b)
  %2190 = fsub fast float %2189, %1377
  %2191 = fmul fast float %2190, %2146
  %2192 = fadd fast float %2191, %1377
  %2193 = fadd fast float %1862, %1376
  %2194 = fmul fast float %2193, 0x3FF337FAE0000000
  %2195 = fmul fast float %1376, %1376
  %2196 = fmul fast float %1862, %1862
  %2197 = fadd fast float %2196, %2195
  %2198 = fmul fast float %2197, 0x3FE5152B00000000
  %2199 = fmul fast float %1376, 0xBFCC1F85E0000000
  %2200 = fmul fast float %2199, %1862
  %2201 = fadd fast float %2200, 0xBFE1363700000000
  %2202 = fadd fast float %2201, %2194
  %2203 = fsub fast float %2202, %2198
  %2204 = fmul fast float %2193, 0x3FBA6F0D00000000
  %2205 = fmul fast float %2197, 0x3FD0432880000000
  %2206 = fmul fast float %1376, 0xBFEF110800000000
  %2207 = fmul fast float %2206, %1862
  %2208 = fadd fast float %2207, 1.000000e+00
  %2209 = fsub fast float %2208, %2204
  %2210 = fadd fast float %2209, %2205
  %2211 = fdiv fast float %2203, %2210
  %2212 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  %2213 = fsub fast float %2212, %1376
  %2214 = fmul fast float %2213, %2149
  %2215 = fadd fast float %2214, %1376
  %2216 = fmul fast float %2152, %1968
  %2217 = fmul fast float %2152, %1969
  %2218 = fmul fast float %2152, %1970
  %2219 = fadd fast float %2216, %1371
  %2220 = fadd fast float %2217, %1372
  %2221 = fadd fast float %2218, %1373
  %2222 = fmul fast float %2155, %1991
  %2223 = fadd fast float %2222, %1378
  br label %2246

; <label>:2224                                    ; preds = %2182
  %2225 = icmp eq i32 %2138, 8
  br i1 %2225, label %2226, label %2246

; <label>:2226                                    ; preds = %2224
  %2227 = fmul fast float %2143, %1863
  %2228 = fmul fast float %2143, %1864
  %2229 = fadd fast float %2227, %1363
  %2230 = fadd fast float %2228, %1364
  %2231 = call float @dx.op.binary.f32(i32 36, float %1377, float %1865)  ; FMin(a,b)
  %2232 = fsub fast float %2231, %1377
  %2233 = fmul fast float %2232, %2146
  %2234 = fadd fast float %2233, %1377
  %2235 = fsub fast float %1862, %1376
  %2236 = fmul fast float %2149, %2235
  %2237 = fadd fast float %2236, %1376
  %2238 = fmul fast float %2152, %1968
  %2239 = fmul fast float %2152, %1969
  %2240 = fmul fast float %2152, %1970
  %2241 = fadd fast float %2238, %1371
  %2242 = fadd fast float %2239, %1372
  %2243 = fadd fast float %2240, %1373
  %2244 = fmul fast float %2155, %1991
  %2245 = fadd fast float %2244, %1378
  br label %2246

; <label>:2246                                    ; preds = %2226, %2224, %2184, %2157, %2129, %1561, %1380, %1362
  %2247 = phi float [ %1363, %2129 ], [ %1363, %1561 ], [ %1363, %1362 ], [ %2229, %2226 ], [ %1363, %2224 ], [ %2187, %2184 ], [ %2162, %2157 ], [ %1363, %1380 ]
  %2248 = phi float [ %1364, %2129 ], [ %1364, %1561 ], [ %1364, %1362 ], [ %2230, %2226 ], [ %1364, %2224 ], [ %2188, %2184 ], [ %2163, %2157 ], [ %1364, %1380 ]
  %2249 = phi float [ %2130, %2129 ], [ %1365, %1561 ], [ %1365, %1362 ], [ %2130, %2226 ], [ %2130, %2224 ], [ %2130, %2184 ], [ %2130, %2157 ], [ %1365, %1380 ]
  %2250 = phi float [ %2131, %2129 ], [ %1366, %1561 ], [ %1366, %1362 ], [ %2131, %2226 ], [ %2131, %2224 ], [ %2131, %2184 ], [ %2131, %2157 ], [ %1366, %1380 ]
  %2251 = phi float [ %2132, %2129 ], [ %1367, %1561 ], [ %1367, %1362 ], [ %2132, %2226 ], [ %2132, %2224 ], [ %2132, %2184 ], [ %2132, %2157 ], [ %1367, %1380 ]
  %2252 = phi float [ %2133, %2129 ], [ %1368, %1561 ], [ %1368, %1362 ], [ %2133, %2226 ], [ %2133, %2224 ], [ %2133, %2184 ], [ %2133, %2157 ], [ %1368, %1380 ]
  %2253 = phi float [ %2134, %2129 ], [ %1369, %1561 ], [ %1369, %1362 ], [ %2134, %2226 ], [ %2134, %2224 ], [ %2134, %2184 ], [ %2134, %2157 ], [ %1369, %1380 ]
  %2254 = phi float [ %2135, %2129 ], [ %1370, %1561 ], [ %1370, %1362 ], [ %2135, %2226 ], [ %2135, %2224 ], [ %2135, %2184 ], [ %2135, %2157 ], [ %1370, %1380 ]
  %2255 = phi float [ %1371, %2129 ], [ %1371, %1561 ], [ %1371, %1362 ], [ %2241, %2226 ], [ %1371, %2224 ], [ %2219, %2184 ], [ %2176, %2157 ], [ %1371, %1380 ]
  %2256 = phi float [ %1372, %2129 ], [ %1372, %1561 ], [ %1372, %1362 ], [ %2242, %2226 ], [ %1372, %2224 ], [ %2220, %2184 ], [ %2177, %2157 ], [ %1372, %1380 ]
  %2257 = phi float [ %1373, %2129 ], [ %1373, %1561 ], [ %1373, %1362 ], [ %2243, %2226 ], [ %1373, %2224 ], [ %2221, %2184 ], [ %2178, %2157 ], [ %1373, %1380 ]
  %2258 = phi float [ %2136, %2129 ], [ %1374, %1561 ], [ %1374, %1362 ], [ %2136, %2226 ], [ %2136, %2224 ], [ %2136, %2184 ], [ %2136, %2157 ], [ %1374, %1380 ]
  %2259 = phi float [ %1376, %2129 ], [ %1376, %1561 ], [ %1376, %1362 ], [ %2237, %2226 ], [ %1376, %2224 ], [ %2215, %2184 ], [ %2169, %2157 ], [ %1376, %1380 ]
  %2260 = phi float [ %1377, %2129 ], [ %1377, %1561 ], [ %1377, %1362 ], [ %2234, %2226 ], [ %1377, %2224 ], [ %2192, %2184 ], [ %2166, %2157 ], [ %1377, %1380 ]
  %2261 = phi float [ %1378, %2129 ], [ %1378, %1561 ], [ %1378, %1362 ], [ %2245, %2226 ], [ %1378, %2224 ], [ %2223, %2184 ], [ %2181, %2157 ], [ %1378, %1380 ]
  %2262 = phi float [ %2137, %2129 ], [ %1379, %1561 ], [ %1379, %1362 ], [ %2137, %2226 ], [ %2137, %2224 ], [ %2137, %2184 ], [ %2137, %2157 ], [ %1379, %1380 ]
  br i1 %684, label %3129, label %2263

; <label>:2263                                    ; preds = %2246
  %2264 = icmp ult i32 %740, 3
  %2265 = add i32 %58, 56
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = add i32 %58, 60
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = or i32 %2270, %2267
  %2272 = icmp eq i32 %2271, 0
  br i1 %2272, label %3129, label %2273

; <label>:2273                                    ; preds = %2263
  %2274 = and i32 %2267, 262144
  %2275 = icmp ne i32 %2274, 0
  %2276 = select i1 %2275, float %65, float 1.000000e+00
  %2277 = select i1 %2275, float %66, float 0.000000e+00
  %2278 = select i1 %2275, float %67, float 0.000000e+00
  %2279 = select i1 %2275, float %68, float 1.000000e+00
  %2280 = select i1 %2275, float %69, float %93
  %2281 = select i1 %2275, float %70, float %94
  %2282 = add i32 %58, 316
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = lshr i32 %2284, 16
  %2286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2285)  ; LegacyF16ToF32(value)
  %2287 = fmul fast float %2286, 0x3F50624DE0000000
  %2288 = add i32 %58, 120
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = lshr i32 %2290, 16
  %2292 = and i32 %2291, 255
  %2293 = lshr i32 %2290, 24
  %2294 = add i32 %58, 324
  %2295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.i32 %2295, 0
  %2297 = and i32 %2296, 65535
  %2298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2297)  ; LegacyF16ToF32(value)
  %2299 = lshr i32 %2296, 16
  %2300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2299)  ; LegacyF16ToF32(value)
  %2301 = add i32 %58, 64
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = lshr i32 %2303, 22
  %2305 = shl nuw nsw i32 %2304, 5
  %2306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2305)  ; LegacyF16ToF32(value)
  %2307 = shl i32 %2303, 4
  %2308 = and i32 %2307, 32752
  %2309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2308)  ; LegacyF16ToF32(value)
  %2310 = lshr i32 %2303, 7
  %2311 = and i32 %2310, 32752
  %2312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2311)  ; LegacyF16ToF32(value)
  %2313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.f32 %2313, 3
  %2315 = fmul fast float %2314, 1.000000e+03
  %2316 = fmul fast float %2315, %568
  %2317 = call float @dx.op.unary.f32(i32 22, float %2316)  ; Frc(value)
  %2318 = fadd fast float %2317, %556
  %2319 = fmul fast float %2315, %570
  %2320 = call float @dx.op.unary.f32(i32 22, float %2319)  ; Frc(value)
  %2321 = fadd fast float %2320, %557
  %2322 = fmul fast float %2287, %2315
  %2323 = call float @dx.op.unary.f32(i32 22, float %2322)  ; Frc(value)
  %2324 = fmul fast float %2323, 0x401921FB60000000
  %2325 = fadd fast float %2324, %2306
  %2326 = call float @dx.op.unary.f32(i32 13, float %2325)  ; Sin(value)
  %2327 = call float @dx.op.unary.f32(i32 12, float %2325)  ; Cos(value)
  %2328 = fsub fast float -0.000000e+00, %2326
  %2329 = fadd fast float %2280, -5.000000e-01
  %2330 = fadd fast float %2281, -5.000000e-01
  %2331 = fmul fast float %2298, %2329
  %2332 = fmul fast float %2300, %2330
  %2333 = fadd fast float %2331, 5.000000e-01
  %2334 = fadd fast float %2332, 5.000000e-01
  %2335 = fmul fast float %2309, %2333
  %2336 = fmul fast float %2312, %2334
  %2337 = fmul fast float %2327, %2335
  %2338 = call float @dx.op.tertiary.f32(i32 46, float %2328, float %2336, float %2337)  ; FMad(a,b,c)
  %2339 = fmul fast float %2326, %2335
  %2340 = call float @dx.op.tertiary.f32(i32 46, float %2327, float %2336, float %2339)  ; FMad(a,b,c)
  %2341 = fadd fast float %2318, %2338
  %2342 = fadd fast float %2321, %2340
  %2343 = icmp ugt i32 %2292, 1
  %2344 = icmp ugt i32 %2290, 33554431
  %2345 = or i1 %2344, %2343
  br i1 %2345, label %2346, label %2371

; <label>:2346                                    ; preds = %2273
  %2347 = add i32 %58, 260
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2347, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = lshr i32 %2349, 16
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = fmul fast float %2314, %2351
  %2353 = call float @dx.op.unary.f32(i32 22, float %2352)  ; Frc(value)
  %2354 = mul nuw nsw i32 %2292, %2293
  %2355 = uitofp i32 %2354 to float
  %2356 = fmul fast float %2353, %2355
  %2357 = call float @dx.op.unary.f32(i32 27, float %2356)  ; Round_ni(value)
  %2358 = fptoui float %2357 to i32
  %2359 = urem i32 %2358, %2292
  %2360 = udiv i32 %2358, %2293
  %2361 = call float @dx.op.unary.f32(i32 22, float %2341)  ; Frc(value)
  %2362 = call float @dx.op.unary.f32(i32 22, float %2342)  ; Frc(value)
  %2363 = uitofp i32 %2359 to float
  %2364 = uitofp i32 %2360 to float
  %2365 = fadd fast float %2361, %2363
  %2366 = fadd fast float %2362, %2364
  %2367 = uitofp i32 %2292 to float
  %2368 = uitofp i32 %2293 to float
  %2369 = fdiv fast float %2365, %2367
  %2370 = fdiv fast float %2366, %2368
  br label %2371

; <label>:2371                                    ; preds = %2346, %2273
  %2372 = phi float [ %2369, %2346 ], [ %2341, %2273 ]
  %2373 = phi float [ %2370, %2346 ], [ %2342, %2273 ]
  %2374 = and i32 %2267, 256
  %2375 = icmp eq i32 %2374, 0
  br i1 %2375, label %2422, label %2376

; <label>:2376                                    ; preds = %2371
  %2377 = add i32 %58, 480
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = add i32 %2379, 0
  %2381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2380, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2382 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2381, %dx.types.Handle %112, float %2372, float %2373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2383 = extractvalue %dx.types.ResRet.f32 %2382, 0
  %2384 = add i32 %58, 132
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = shl i32 %2386, 4
  %2388 = and i32 %2387, 32752
  %2389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2388)  ; LegacyF16ToF32(value)
  %2390 = lshr i32 %2386, 7
  %2391 = and i32 %2390, 32752
  %2392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2391)  ; LegacyF16ToF32(value)
  %2393 = fsub fast float 1.000000e+00, %736
  %2394 = call float @dx.op.binary.f32(i32 35, float %2393, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2395 = bitcast float %736 to i32
  %2396 = sitofp i32 %2395 to float
  %2397 = fadd fast float %2396, 0xC1CFBF8940000000
  %2398 = fmul fast float %2392, %2397
  %2399 = fadd fast float %2398, 0x41CFBF8940000000
  %2400 = fptosi float %2399 to i32
  %2401 = bitcast i32 %2400 to float
  %2402 = bitcast float %2394 to i32
  %2403 = sitofp i32 %2402 to float
  %2404 = fadd fast float %2403, 0xC1CFBF8940000000
  %2405 = fmul fast float %2404, %2392
  %2406 = fadd fast float %2405, 0x41CFBF8940000000
  %2407 = fptosi float %2406 to i32
  %2408 = bitcast i32 %2407 to float
  %2409 = fmul fast float %2401, %2389
  %2410 = fmul fast float %2408, %2389
  %2411 = fsub fast float %2394, %2409
  %2412 = fadd fast float %2410, %2394
  %2413 = call float @dx.op.unary.f32(i32 7, float %2411)  ; Saturate(value)
  %2414 = call float @dx.op.unary.f32(i32 7, float %2412)  ; Saturate(value)
  %2415 = fsub fast float %2383, %2413
  %2416 = fsub fast float %2414, %2413
  %2417 = bitcast float %2416 to i32
  %2418 = sub nsw i32 2129859010, %2417
  %2419 = bitcast i32 %2418 to float
  %2420 = fmul fast float %2419, %2415
  %2421 = call float @dx.op.unary.f32(i32 7, float %2420)  ; Saturate(value)
  br label %2422

; <label>:2422                                    ; preds = %2376, %2371
  %2423 = phi float [ %2421, %2376 ], [ %736, %2371 ]
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 128
  %2427 = icmp eq i32 %2426, 0
  br i1 %2427, label %2444, label %2428

; <label>:2428                                    ; preds = %2422
  %2429 = add i32 %58, 464
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = add i32 %2431, 0
  %2433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2433, %dx.types.Handle %112, float %2372, float %2373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = and i32 %2437, 524288
  %2439 = icmp ne i32 %2438, 0
  %2440 = fcmp fast ogt float %2435, 0x3FE0101020000000
  %2441 = select i1 %2440, float 1.000000e+00, float 0.000000e+00
  %2442 = select i1 %2439, float %2441, float %2435
  %2443 = fmul fast float %2442, %2423
  br label %2444

; <label>:2444                                    ; preds = %2428, %2422
  %2445 = phi float [ %2443, %2428 ], [ %2423, %2422 ]
  %2446 = fcmp fast ult float %2445, 0x3F70101020000000
  br i1 %2446, label %3129, label %2447

; <label>:2447                                    ; preds = %2444
  %2448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 0
  %2450 = and i32 %2449, 16
  %2451 = icmp eq i32 %2450, 0
  br i1 %2451, label %2650, label %2452

; <label>:2452                                    ; preds = %2447
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = add i32 %58, 416
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = add i32 %2457, 0
  %2459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2459, %dx.types.Handle %111, float %2372, float %2373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = extractvalue %dx.types.ResRet.f32 %2460, 1
  %2463 = extractvalue %dx.types.ResRet.f32 %2460, 2
  %2464 = extractvalue %dx.types.ResRet.f32 %2460, 3
  %2465 = and i32 %2454, 255
  %2466 = uitofp i32 %2465 to float
  %2467 = lshr i32 %2454, 8
  %2468 = and i32 %2467, 255
  %2469 = uitofp i32 %2468 to float
  %2470 = fmul fast float %2464, %2466
  %2471 = fadd fast float %2470, %2469
  %2472 = fmul fast float %2471, 0x3F70101000000000
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = and i32 %2474, 512
  %2476 = icmp eq i32 %2475, 0
  br i1 %2476, label %2485, label %2477

; <label>:2477                                    ; preds = %2452
  %2478 = add i32 %58, 500
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2478, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = add i32 %2480, 0
  %2482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2482, %dx.types.Handle %112, float %2372, float %2373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  br label %2485

; <label>:2485                                    ; preds = %2477, %2452
  %2486 = phi float [ %2484, %2477 ], [ 1.000000e+00, %2452 ]
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = and i32 %2488, 33554432
  %2490 = icmp eq i32 %2489, 0
  br i1 %2490, label %2597, label %2491

; <label>:2491                                    ; preds = %2485
  %2492 = add i32 %58, 256
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2492, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = and i32 %2494, 65535
  %2496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2495)  ; LegacyF16ToF32(value)
  %2497 = lshr i32 %2494, 16
  %2498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2497)  ; LegacyF16ToF32(value)
  %2499 = add i32 %58, 260
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 65535
  %2503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2502)  ; LegacyF16ToF32(value)
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = lshr i32 %2505, 24
  %2507 = uitofp i32 %2506 to float
  %2508 = fmul fast float %2507, 0x3F70101020000000
  %2509 = and i32 %2505, 255
  %2510 = uitofp i32 %2509 to float
  %2511 = fmul fast float %2510, 0x3F70101020000000
  %2512 = lshr i32 %2505, 8
  %2513 = and i32 %2512, 255
  %2514 = uitofp i32 %2513 to float
  %2515 = fmul fast float %2514, 0x3F70101020000000
  %2516 = lshr i32 %2505, 16
  %2517 = and i32 %2516, 255
  %2518 = uitofp i32 %2517 to float
  %2519 = fmul fast float %2518, 0x3F70101020000000
  %2520 = add i32 %58, 252
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2520, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = lshr i32 %2522, 24
  %2524 = uitofp i32 %2523 to float
  %2525 = fmul fast float %2524, 0x3F70101020000000
  %2526 = and i32 %2522, 255
  %2527 = uitofp i32 %2526 to float
  %2528 = fmul fast float %2527, 0x3F70101020000000
  %2529 = lshr i32 %2522, 8
  %2530 = and i32 %2529, 255
  %2531 = uitofp i32 %2530 to float
  %2532 = fmul fast float %2531, 0x3F70101020000000
  %2533 = lshr i32 %2522, 16
  %2534 = and i32 %2533, 255
  %2535 = uitofp i32 %2534 to float
  %2536 = fmul fast float %2535, 0x3F70101020000000
  %2537 = bitcast float %2461 to i32
  %2538 = ashr i32 %2537, 1
  %2539 = sub nsw i32 1597463174, %2538
  %2540 = bitcast i32 %2539 to float
  %2541 = fmul fast float %2461, 5.000000e-01
  %2542 = fmul fast float %2540, %2540
  %2543 = fmul fast float %2542, %2541
  %2544 = fsub fast float 1.500000e+00, %2543
  %2545 = fmul fast float %2540, %2461
  %2546 = fmul fast float %2545, %2544
  %2547 = bitcast float %2462 to i32
  %2548 = ashr i32 %2547, 1
  %2549 = sub nsw i32 1597463174, %2548
  %2550 = bitcast i32 %2549 to float
  %2551 = fmul fast float %2462, 5.000000e-01
  %2552 = fmul fast float %2550, %2550
  %2553 = fmul fast float %2552, %2551
  %2554 = fsub fast float 1.500000e+00, %2553
  %2555 = fmul fast float %2550, %2462
  %2556 = fmul fast float %2555, %2554
  %2557 = bitcast float %2463 to i32
  %2558 = ashr i32 %2557, 1
  %2559 = sub nsw i32 1597463174, %2558
  %2560 = bitcast i32 %2559 to float
  %2561 = fmul fast float %2463, 5.000000e-01
  %2562 = fmul fast float %2560, %2560
  %2563 = fmul fast float %2562, %2561
  %2564 = fsub fast float 1.500000e+00, %2563
  %2565 = fmul fast float %2560, %2463
  %2566 = fmul fast float %2565, %2564
  %2567 = fsub fast float %2546, %2528
  %2568 = fsub fast float %2556, %2532
  %2569 = fsub fast float %2566, %2536
  %2570 = fmul fast float %2567, %2496
  %2571 = fmul fast float %2568, %2498
  %2572 = fmul fast float %2569, %2503
  %2573 = fadd fast float %2570, %2511
  %2574 = fadd fast float %2571, %2515
  %2575 = fadd fast float %2572, %2519
  %2576 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2577 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  %2578 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  %2579 = fmul fast float %2576, %2576
  %2580 = fmul fast float %2577, %2577
  %2581 = fmul fast float %2578, %2578
  %2582 = fsub fast float %2579, %2461
  %2583 = fsub fast float %2580, %2462
  %2584 = fsub fast float %2581, %2463
  %2585 = fmul fast float %2582, %2486
  %2586 = fmul fast float %2583, %2486
  %2587 = fmul fast float %2584, %2486
  %2588 = fadd fast float %2585, %2461
  %2589 = fadd fast float %2586, %2462
  %2590 = fadd fast float %2587, %2463
  %2591 = fadd fast float %2508, %2472
  %2592 = fsub fast float %2591, %2525
  %2593 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  %2594 = fsub fast float %2593, %2472
  %2595 = fmul fast float %2594, %2486
  %2596 = fadd fast float %2595, %2472
  br label %2650

; <label>:2597                                    ; preds = %2485
  %2598 = and i32 %2488, 134217728
  %2599 = icmp eq i32 %2598, 0
  br i1 %2599, label %2634, label %2600

; <label>:2600                                    ; preds = %2597
  %2601 = call float @dx.op.unary.f32(i32 24, float %544)  ; Sqrt(value)
  %2602 = call float @dx.op.unary.f32(i32 24, float %545)  ; Sqrt(value)
  %2603 = call float @dx.op.unary.f32(i32 24, float %546)  ; Sqrt(value)
  %2604 = fadd fast float %2601, -5.000000e-01
  %2605 = fadd fast float %2602, -5.000000e-01
  %2606 = fadd fast float %2603, -5.000000e-01
  %2607 = fmul fast float %2604, %2486
  %2608 = fmul fast float %2605, %2486
  %2609 = fmul fast float %2606, %2486
  %2610 = fadd fast float %2607, 5.000000e-01
  %2611 = fadd fast float %2608, 5.000000e-01
  %2612 = fadd fast float %2609, 5.000000e-01
  %2613 = call float @dx.op.unary.f32(i32 24, float %2461)  ; Sqrt(value)
  %2614 = call float @dx.op.unary.f32(i32 24, float %2462)  ; Sqrt(value)
  %2615 = call float @dx.op.unary.f32(i32 24, float %2463)  ; Sqrt(value)
  %2616 = fmul fast float %2610, 2.000000e+00
  %2617 = fsub fast float 1.000000e+00, %2616
  %2618 = fmul fast float %2617, %2613
  %2619 = fadd fast float %2618, %2616
  %2620 = fmul fast float %2619, %2613
  %2621 = fmul fast float %2611, 2.000000e+00
  %2622 = fsub fast float 1.000000e+00, %2621
  %2623 = fmul fast float %2622, %2614
  %2624 = fadd fast float %2623, %2621
  %2625 = fmul fast float %2624, %2614
  %2626 = fmul fast float %2612, 2.000000e+00
  %2627 = fsub fast float 1.000000e+00, %2626
  %2628 = fmul fast float %2627, %2615
  %2629 = fadd fast float %2628, %2626
  %2630 = fmul fast float %2629, %2615
  %2631 = fmul fast float %2620, %2620
  %2632 = fmul fast float %2625, %2625
  %2633 = fmul fast float %2630, %2630
  br label %2650

; <label>:2634                                    ; preds = %2597
  %2635 = fmul fast float %544, %544
  %2636 = fmul fast float %545, %545
  %2637 = fmul fast float %546, %546
  %2638 = fadd fast float %2635, -1.000000e+00
  %2639 = fadd fast float %2636, -1.000000e+00
  %2640 = fadd fast float %2637, -1.000000e+00
  %2641 = fmul fast float %2486, %2638
  %2642 = fmul fast float %2486, %2639
  %2643 = fmul fast float %2486, %2640
  %2644 = fadd fast float %2641, 1.000000e+00
  %2645 = fadd fast float %2642, 1.000000e+00
  %2646 = fadd fast float %2643, 1.000000e+00
  %2647 = fmul fast float %2644, %2461
  %2648 = fmul fast float %2645, %2462
  %2649 = fmul fast float %2646, %2463
  br label %2650

; <label>:2650                                    ; preds = %2634, %2600, %2491, %2447
  %2651 = phi float [ %2596, %2491 ], [ %2472, %2600 ], [ %2472, %2634 ], [ 0x3FA23C0BE0000000, %2447 ]
  %2652 = phi float [ %2588, %2491 ], [ %2631, %2600 ], [ %2647, %2634 ], [ 1.000000e+00, %2447 ]
  %2653 = phi float [ %2589, %2491 ], [ %2632, %2600 ], [ %2648, %2634 ], [ 1.000000e+00, %2447 ]
  %2654 = phi float [ %2590, %2491 ], [ %2633, %2600 ], [ %2649, %2634 ], [ 1.000000e+00, %2447 ]
  %2655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.i32 %2655, 1
  %2657 = and i32 %2656, 1
  %2658 = icmp ne i32 %2657, 0
  %2659 = add i32 %58, 356
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = and i32 %2661, 32
  %2663 = icmp ne i32 %2662, 0
  %2664 = and i1 %2658, %2663
  %2665 = select i1 %2664, float 1.000000e+00, float %2652
  %2666 = select i1 %2664, float 0x3FD3333340000000, float %2653
  %2667 = select i1 %2664, float 0x3FD3333340000000, float %2654
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = and i32 %2669, 32
  %2671 = icmp eq i32 %2670, 0
  br i1 %2671, label %2744, label %2672

; <label>:2672                                    ; preds = %2650
  %2673 = add i32 %58, 124
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = add i32 %58, 432
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = add i32 %2678, 0
  %2680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2680, %dx.types.Handle %111, float %2372, float %2373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2682 = extractvalue %dx.types.ResRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.ResRet.f32 %2681, 1
  %2684 = extractvalue %dx.types.ResRet.f32 %2681, 2
  %2685 = extractvalue %dx.types.ResRet.f32 %2681, 3
  %2686 = and i32 %2675, 255
  %2687 = uitofp i32 %2686 to float
  %2688 = lshr i32 %2675, 8
  %2689 = and i32 %2688, 255
  %2690 = uitofp i32 %2689 to float
  %2691 = lshr i32 %2675, 16
  %2692 = and i32 %2691, 255
  %2693 = uitofp i32 %2692 to float
  %2694 = fmul fast float %2693, 0x3F70101000000000
  %2695 = fmul fast float %2682, %2687
  %2696 = fadd fast float %2695, %2690
  %2697 = fmul fast float %2696, 0x3F70101000000000
  %2698 = fadd fast float %2683, -5.000000e-01
  %2699 = fadd fast float %2685, -5.000000e-01
  %2700 = fmul fast float %2698, %2694
  %2701 = fmul fast float %2699, %2694
  %2702 = fadd fast float %2700, 5.000000e-01
  %2703 = fadd fast float %2701, 5.000000e-01
  %2704 = fmul fast float %2702, 2.000000e+00
  %2705 = fadd fast float %2704, -1.000000e+00
  %2706 = fmul fast float %2703, 2.000000e+00
  %2707 = fadd fast float %2706, -1.000000e+00
  %2708 = fadd fast float %2705, %2707
  %2709 = fmul fast float %2708, 5.000000e-01
  %2710 = fsub fast float %2705, %2707
  %2711 = fmul fast float %2710, 5.000000e-01
  %2712 = call float @dx.op.unary.f32(i32 6, float %2709)  ; FAbs(value)
  %2713 = fsub fast float 1.000000e+00, %2712
  %2714 = call float @dx.op.unary.f32(i32 6, float %2711)  ; FAbs(value)
  %2715 = fsub fast float %2713, %2714
  %2716 = call float @dx.op.dot3.f32(i32 55, float %2709, float %2711, float %2715, float %2709, float %2711, float %2715)  ; Dot3(ax,ay,az,bx,by,bz)
  %2717 = call float @dx.op.unary.f32(i32 25, float %2716)  ; Rsqrt(value)
  %2718 = fmul fast float %2709, %2717
  %2719 = fmul fast float %2711, %2717
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = and i32 %2721, 67108864
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2740, label %2724

; <label>:2724                                    ; preds = %2672
  %2725 = add i32 %58, 312
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = and i32 %2727, 65535
  %2729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2728)  ; LegacyF16ToF32(value)
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = and i32 %2731, 65535
  %2733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2732)  ; LegacyF16ToF32(value)
  %2734 = lshr i32 %2727, 16
  %2735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2734)  ; LegacyF16ToF32(value)
  %2736 = fsub fast float %2697, %2735
  %2737 = fmul fast float %2736, %2729
  %2738 = fadd fast float %2737, %2733
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  br label %2740

; <label>:2740                                    ; preds = %2724, %2672
  %2741 = phi float [ %2739, %2724 ], [ %2697, %2672 ]
  %2742 = call float @dx.op.dot2.f32(i32 54, float %2718, float %2719, float %2276, float %2277)  ; Dot2(ax,ay,bx,by)
  %2743 = call float @dx.op.dot2.f32(i32 54, float %2718, float %2719, float %2278, float %2279)  ; Dot2(ax,ay,bx,by)
  br label %2744

; <label>:2744                                    ; preds = %2740, %2650
  %2745 = phi float [ %2741, %2740 ], [ 0x3FD6666660000000, %2650 ]
  %2746 = phi float [ %2742, %2740 ], [ 0.000000e+00, %2650 ]
  %2747 = phi float [ %2743, %2740 ], [ 0.000000e+00, %2650 ]
  %2748 = phi float [ %2684, %2740 ], [ 1.000000e+00, %2650 ]
  %2749 = add i32 %58, 192
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = lshr i32 %2751, 22
  %2753 = shl nuw nsw i32 %2752, 5
  %2754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2753)  ; LegacyF16ToF32(value)
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 64
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2792, label %2759

; <label>:2759                                    ; preds = %2744
  %2760 = add i32 %58, 448
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = add i32 %2762, 0
  %2764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2763, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = and i32 %2766, 131072
  %2768 = icmp eq i32 %2767, 0
  %2769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2764, %dx.types.Handle %111, float %2372, float %2373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = extractvalue %dx.types.ResRet.f32 %2769, 1
  %2772 = extractvalue %dx.types.ResRet.f32 %2769, 2
  %2773 = fmul fast float %527, %2770
  %2774 = fmul fast float %528, %2771
  %2775 = fmul fast float %529, %2772
  br i1 %2768, label %2782, label %2776

; <label>:2776                                    ; preds = %2759
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 0
  %2779 = fmul fast float %2778, %2773
  %2780 = fmul fast float %2778, %2774
  %2781 = fmul fast float %2778, %2775
  br label %2782

; <label>:2782                                    ; preds = %2776, %2759
  %2783 = phi float [ %2779, %2776 ], [ %2773, %2759 ]
  %2784 = phi float [ %2780, %2776 ], [ %2774, %2759 ]
  %2785 = phi float [ %2781, %2776 ], [ %2775, %2759 ]
  %2786 = fmul fast float %2783, %2754
  %2787 = select i1 %302, float %2786, float %2783
  %2788 = call float @dx.op.dot3.f32(i32 55, float %2787, float %2784, float %2785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2789 = select i1 %302, float 0.000000e+00, float %2783
  %2790 = select i1 %302, float %2788, float %2784
  %2791 = select i1 %302, float 0.000000e+00, float %2785
  br label %2792

; <label>:2792                                    ; preds = %2782, %2744
  %2793 = phi float [ %2789, %2782 ], [ 0.000000e+00, %2744 ]
  %2794 = phi float [ %2790, %2782 ], [ 0.000000e+00, %2744 ]
  %2795 = phi float [ %2791, %2782 ], [ 0.000000e+00, %2744 ]
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = and i32 %2797, 1024
  %2799 = icmp eq i32 %2798, 0
  br i1 %2799, label %2830, label %2800

; <label>:2800                                    ; preds = %2792
  %2801 = add i32 %58, 184
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = and i32 %2803, 255
  %2805 = uitofp i32 %2804 to float
  %2806 = fmul fast float %2805, 0x3F70101020000000
  %2807 = lshr i32 %2803, 8
  %2808 = and i32 %2807, 255
  %2809 = uitofp i32 %2808 to float
  %2810 = fmul fast float %2809, 0x3F70101020000000
  %2811 = lshr i32 %2803, 16
  %2812 = and i32 %2811, 255
  %2813 = uitofp i32 %2812 to float
  %2814 = fmul fast float %2813, 0x3F70101020000000
  %2815 = fmul fast float %2806, %2806
  %2816 = fmul fast float %2810, %2810
  %2817 = fmul fast float %2814, %2814
  %2818 = add i32 %58, 516
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = add i32 %2820, 0
  %2822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2823 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2822, %dx.types.Handle %112, float %2372, float %2373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2824 = extractvalue %dx.types.ResRet.f32 %2823, 0
  %2825 = extractvalue %dx.types.ResRet.f32 %2823, 1
  %2826 = extractvalue %dx.types.ResRet.f32 %2823, 2
  %2827 = fmul fast float %2815, %2824
  %2828 = fmul fast float %2816, %2825
  %2829 = fmul fast float %2817, %2826
  br label %2830

; <label>:2830                                    ; preds = %2800, %2792
  %2831 = phi float [ %2827, %2800 ], [ 0.000000e+00, %2792 ]
  %2832 = phi float [ %2828, %2800 ], [ 0.000000e+00, %2792 ]
  %2833 = phi float [ %2829, %2800 ], [ 0.000000e+00, %2792 ]
  %2834 = fcmp fast ogt float %2831, 0.000000e+00
  %2835 = fcmp fast ogt float %2832, 0.000000e+00
  %2836 = fcmp fast ogt float %2833, 0.000000e+00
  %2837 = call float @dx.op.unary.f32(i32 23, float %2831)  ; Log(value)
  %2838 = call float @dx.op.unary.f32(i32 23, float %2832)  ; Log(value)
  %2839 = call float @dx.op.unary.f32(i32 23, float %2833)  ; Log(value)
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = lshr i32 %2841, 7
  %2843 = and i32 %2842, 32752
  %2844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2843)  ; LegacyF16ToF32(value)
  %2845 = fmul fast float %2837, 0xBFE62E4300000000
  %2846 = fmul fast float %2845, %2844
  %2847 = fmul fast float %2838, 0xBFE62E4300000000
  %2848 = fmul fast float %2847, %2844
  %2849 = fmul fast float %2839, 0xBFE62E4300000000
  %2850 = fmul fast float %2849, %2844
  %2851 = select i1 %2834, float %2846, float 1.270000e+02
  %2852 = select i1 %2835, float %2848, float 1.270000e+02
  %2853 = select i1 %2836, float %2850, float 1.270000e+02
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = and i32 %2855, 2048
  %2857 = icmp eq i32 %2856, 0
  br i1 %2857, label %2873, label %2858

; <label>:2858                                    ; preds = %2830
  %2859 = add i32 %58, 532
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2859, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = add i32 %2861, 0
  %2863 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2862, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2864 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2863, %dx.types.Handle %112, float %2372, float %2373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2865 = extractvalue %dx.types.ResRet.f32 %2864, 3
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = shl i32 %2867, 4
  %2869 = and i32 %2868, 32752
  %2870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2869)  ; LegacyF16ToF32(value)
  %2871 = fmul fast float %2870, %2865
  %2872 = call float @dx.op.binary.f32(i32 35, float %2871, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2873

; <label>:2873                                    ; preds = %2858, %2830
  %2874 = phi float [ %2872, %2858 ], [ 0x3F70101020000000, %2830 ]
  %2875 = add i32 %58, 128
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = and i32 %2877, 255
  %2879 = uitofp i32 %2878 to float
  %2880 = lshr i32 %2877, 8
  %2881 = and i32 %2880, 255
  %2882 = uitofp i32 %2881 to float
  %2883 = call float @dx.op.dot3.f32(i32 55, float %2665, float %2666, float %2667, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2884 = fmul fast float %2882, %2883
  %2885 = fadd fast float %2884, %2879
  %2886 = fmul fast float %2885, 0x3F70101020000000
  %2887 = call float @dx.op.unary.f32(i32 7, float %2886)  ; Saturate(value)
  br i1 %2264, label %2888, label %2923

; <label>:2888                                    ; preds = %2873
  %2889 = fmul fast float %2874, 2.000000e+00
  %2890 = fcmp fast olt float %2851, 1.270000e+02
  %2891 = fcmp fast olt float %2852, 1.270000e+02
  %2892 = fcmp fast olt float %2853, 1.270000e+02
  %2893 = fmul fast float %2851, 0xBFF7154760000000
  %2894 = fmul fast float %2893, %2889
  %2895 = fmul fast float %2852, 0xBFF7154760000000
  %2896 = fmul fast float %2895, %2889
  %2897 = fmul fast float %2853, 0xBFF7154760000000
  %2898 = fmul fast float %2897, %2889
  %2899 = call float @dx.op.unary.f32(i32 21, float %2894)  ; Exp(value)
  %2900 = call float @dx.op.unary.f32(i32 21, float %2896)  ; Exp(value)
  %2901 = call float @dx.op.unary.f32(i32 21, float %2898)  ; Exp(value)
  %2902 = call float @dx.op.unary.f32(i32 7, float %2899)  ; Saturate(value)
  %2903 = call float @dx.op.unary.f32(i32 7, float %2900)  ; Saturate(value)
  %2904 = call float @dx.op.unary.f32(i32 7, float %2901)  ; Saturate(value)
  %2905 = fadd fast float %2902, -1.000000e+00
  %2906 = select i1 %2890, float %2905, float -1.000000e+00
  %2907 = fadd fast float %2903, -1.000000e+00
  %2908 = select i1 %2891, float %2907, float -1.000000e+00
  %2909 = fadd fast float %2904, -1.000000e+00
  %2910 = select i1 %2892, float %2909, float -1.000000e+00
  %2911 = fmul fast float %2906, %2445
  %2912 = fmul fast float %2908, %2445
  %2913 = fmul fast float %2910, %2445
  %2914 = fadd fast float %2911, 1.000000e+00
  %2915 = fadd fast float %2912, 1.000000e+00
  %2916 = fadd fast float %2913, 1.000000e+00
  %2917 = fmul fast float %2914, %2249
  %2918 = fmul fast float %2915, %2250
  %2919 = fmul fast float %2916, %2251
  %2920 = fmul fast float %2914, %2252
  %2921 = fmul fast float %2915, %2253
  %2922 = fmul fast float %2916, %2254
  br label %2923

; <label>:2923                                    ; preds = %2888, %2873
  %2924 = phi float [ %2917, %2888 ], [ %2249, %2873 ]
  %2925 = phi float [ %2918, %2888 ], [ %2250, %2873 ]
  %2926 = phi float [ %2919, %2888 ], [ %2251, %2873 ]
  %2927 = phi float [ %2920, %2888 ], [ %2252, %2873 ]
  %2928 = phi float [ %2921, %2888 ], [ %2253, %2873 ]
  %2929 = phi float [ %2922, %2888 ], [ %2254, %2873 ]
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 3
  %2933 = icmp eq i32 %2932, 3
  br i1 %2933, label %3012, label %2934

; <label>:2934                                    ; preds = %2923
  %2935 = and i32 %2931, 16
  %2936 = icmp ne i32 %2935, 0
  %2937 = select i1 %2936, float %2445, float 0.000000e+00
  %2938 = icmp eq i32 %2932, 0
  br i1 %2938, label %2939, label %2967

; <label>:2939                                    ; preds = %2934
  %2940 = and i32 %2931, 64
  %2941 = icmp ne i32 %2940, 0
  %2942 = select i1 %2941, float %2445, float 0.000000e+00
  %2943 = fsub fast float %2665, %2924
  %2944 = fsub fast float %2666, %2925
  %2945 = fsub fast float %2667, %2926
  %2946 = fmul fast float %2937, %2943
  %2947 = fmul fast float %2937, %2944
  %2948 = fmul fast float %2937, %2945
  %2949 = fadd fast float %2946, %2924
  %2950 = fadd fast float %2947, %2925
  %2951 = fadd fast float %2948, %2926
  %2952 = fsub fast float %2651, %2258
  %2953 = fmul fast float %2937, %2952
  %2954 = fadd fast float %2953, %2258
  %2955 = fsub fast float %2793, %2927
  %2956 = fsub fast float %2794, %2928
  %2957 = fsub fast float %2795, %2929
  %2958 = fmul fast float %2942, %2955
  %2959 = fmul fast float %2942, %2956
  %2960 = fmul fast float %2942, %2957
  %2961 = fadd fast float %2958, %2927
  %2962 = fadd fast float %2959, %2928
  %2963 = fadd fast float %2960, %2929
  %2964 = fsub fast float %2887, %2262
  %2965 = fmul fast float %2937, %2964
  %2966 = fadd fast float %2965, %2262
  br label %3012

; <label>:2967                                    ; preds = %2934
  %2968 = icmp eq i32 %2932, 1
  br i1 %2968, label %2969, label %2982

; <label>:2969                                    ; preds = %2967
  %2970 = fadd fast float %2665, -1.000000e+00
  %2971 = fadd fast float %2666, -1.000000e+00
  %2972 = fadd fast float %2667, -1.000000e+00
  %2973 = fmul fast float %2937, %2970
  %2974 = fmul fast float %2937, %2971
  %2975 = fmul fast float %2937, %2972
  %2976 = fadd fast float %2973, 1.000000e+00
  %2977 = fadd fast float %2974, 1.000000e+00
  %2978 = fadd fast float %2975, 1.000000e+00
  %2979 = fmul fast float %2976, %2924
  %2980 = fmul fast float %2977, %2925
  %2981 = fmul fast float %2978, %2926
  br label %3012

; <label>:2982                                    ; preds = %2967
  %2983 = icmp eq i32 %2932, 2
  br i1 %2983, label %2984, label %3012

; <label>:2984                                    ; preds = %2982
  %2985 = call float @dx.op.unary.f32(i32 24, float %2665)  ; Sqrt(value)
  %2986 = call float @dx.op.unary.f32(i32 24, float %2666)  ; Sqrt(value)
  %2987 = call float @dx.op.unary.f32(i32 24, float %2667)  ; Sqrt(value)
  %2988 = fadd fast float %2985, -5.000000e-01
  %2989 = fadd fast float %2986, -5.000000e-01
  %2990 = fadd fast float %2987, -5.000000e-01
  %2991 = fmul fast float %2988, %2937
  %2992 = fmul fast float %2989, %2937
  %2993 = fmul fast float %2990, %2937
  %2994 = fadd fast float %2991, 5.000000e-01
  %2995 = fadd fast float %2992, 5.000000e-01
  %2996 = fadd fast float %2993, 5.000000e-01
  %2997 = fmul fast float %2994, 2.000000e+00
  %2998 = fsub fast float 1.000000e+00, %2997
  %2999 = fmul fast float %2998, %2924
  %3000 = fadd fast float %2999, %2997
  %3001 = fmul fast float %3000, %2924
  %3002 = fmul fast float %2995, 2.000000e+00
  %3003 = fsub fast float 1.000000e+00, %3002
  %3004 = fmul fast float %3003, %2925
  %3005 = fadd fast float %3004, %3002
  %3006 = fmul fast float %3005, %2925
  %3007 = fmul fast float %2996, 2.000000e+00
  %3008 = fsub fast float 1.000000e+00, %3007
  %3009 = fmul fast float %3008, %2926
  %3010 = fadd fast float %3009, %3007
  %3011 = fmul fast float %3010, %2926
  br label %3012

; <label>:3012                                    ; preds = %2984, %2982, %2969, %2939, %2923
  %3013 = phi float [ %2924, %2923 ], [ %3001, %2984 ], [ %2924, %2982 ], [ %2979, %2969 ], [ %2949, %2939 ]
  %3014 = phi float [ %2925, %2923 ], [ %3006, %2984 ], [ %2925, %2982 ], [ %2980, %2969 ], [ %2950, %2939 ]
  %3015 = phi float [ %2926, %2923 ], [ %3011, %2984 ], [ %2926, %2982 ], [ %2981, %2969 ], [ %2951, %2939 ]
  %3016 = phi float [ %2927, %2923 ], [ %2927, %2984 ], [ %2927, %2982 ], [ %2927, %2969 ], [ %2961, %2939 ]
  %3017 = phi float [ %2928, %2923 ], [ %2928, %2984 ], [ %2928, %2982 ], [ %2928, %2969 ], [ %2962, %2939 ]
  %3018 = phi float [ %2929, %2923 ], [ %2929, %2984 ], [ %2929, %2982 ], [ %2929, %2969 ], [ %2963, %2939 ]
  %3019 = phi float [ %2258, %2923 ], [ %2258, %2984 ], [ %2258, %2982 ], [ %2258, %2969 ], [ %2954, %2939 ]
  %3020 = phi float [ %2262, %2923 ], [ %2262, %2984 ], [ %2262, %2982 ], [ %2262, %2969 ], [ %2966, %2939 ]
  %3021 = and i32 %2931, 12
  %3022 = icmp eq i32 %3021, 12
  br i1 %3022, label %3129, label %3023

; <label>:3023                                    ; preds = %3012
  %3024 = and i32 %2931, 2097184
  %3025 = icmp eq i32 %3024, 2097184
  %3026 = select i1 %3025, float %2445, float 0.000000e+00
  %3027 = and i32 %2931, 4194336
  %3028 = icmp eq i32 %3027, 4194336
  %3029 = select i1 %3028, float %2445, float 0.000000e+00
  %3030 = and i32 %2931, 8388640
  %3031 = icmp eq i32 %3030, 8388640
  %3032 = select i1 %3031, float %2445, float 0.000000e+00
  %3033 = and i32 %2931, 1024
  %3034 = icmp ne i32 %3033, 0
  %3035 = select i1 %3034, float %2445, float 0.000000e+00
  %3036 = and i32 %2931, 2048
  %3037 = icmp ne i32 %3036, 0
  %3038 = select i1 %3037, float %2445, float 0.000000e+00
  %3039 = icmp eq i32 %3021, 0
  br i1 %3039, label %3040, label %3065

; <label>:3040                                    ; preds = %3023
  %3041 = fsub fast float %2746, %2247
  %3042 = fsub fast float %2747, %2248
  %3043 = fmul fast float %3026, %3041
  %3044 = fmul fast float %3026, %3042
  %3045 = fadd fast float %3043, %2247
  %3046 = fadd fast float %3044, %2248
  %3047 = fsub fast float %2748, %2260
  %3048 = fmul fast float %3029, %3047
  %3049 = fadd fast float %3048, %2260
  %3050 = fsub fast float %2745, %2259
  %3051 = fmul fast float %3032, %3050
  %3052 = fadd fast float %3051, %2259
  %3053 = fsub fast float %2851, %2255
  %3054 = fsub fast float %2852, %2256
  %3055 = fsub fast float %2853, %2257
  %3056 = fmul fast float %3035, %3053
  %3057 = fmul fast float %3035, %3054
  %3058 = fmul fast float %3035, %3055
  %3059 = fadd fast float %3056, %2255
  %3060 = fadd fast float %3057, %2256
  %3061 = fadd fast float %3058, %2257
  %3062 = fsub fast float %2874, %2261
  %3063 = fmul fast float %3038, %3062
  %3064 = fadd fast float %3063, %2261
  br label %3129

; <label>:3065                                    ; preds = %3023
  %3066 = icmp eq i32 %3021, 4
  br i1 %3066, label %3067, label %3107

; <label>:3067                                    ; preds = %3065
  %3068 = fmul fast float %3026, %2746
  %3069 = fmul fast float %3026, %2747
  %3070 = fadd fast float %3068, %2247
  %3071 = fadd fast float %3069, %2248
  %3072 = call float @dx.op.binary.f32(i32 36, float %2260, float %2748)  ; FMin(a,b)
  %3073 = fsub fast float %3072, %2260
  %3074 = fmul fast float %3073, %3029
  %3075 = fadd fast float %3074, %2260
  %3076 = fadd fast float %2745, %2259
  %3077 = fmul fast float %3076, 0x3FF337FAE0000000
  %3078 = fmul fast float %2259, %2259
  %3079 = fmul fast float %2745, %2745
  %3080 = fadd fast float %3079, %3078
  %3081 = fmul fast float %3080, 0x3FE5152B00000000
  %3082 = fmul fast float %2259, 0xBFCC1F85E0000000
  %3083 = fmul fast float %3082, %2745
  %3084 = fadd fast float %3083, 0xBFE1363700000000
  %3085 = fadd fast float %3084, %3077
  %3086 = fsub fast float %3085, %3081
  %3087 = fmul fast float %3076, 0x3FBA6F0D00000000
  %3088 = fmul fast float %3080, 0x3FD0432880000000
  %3089 = fmul fast float %2259, 0xBFEF110800000000
  %3090 = fmul fast float %3089, %2745
  %3091 = fadd fast float %3090, 1.000000e+00
  %3092 = fsub fast float %3091, %3087
  %3093 = fadd fast float %3092, %3088
  %3094 = fdiv fast float %3086, %3093
  %3095 = call float @dx.op.unary.f32(i32 7, float %3094)  ; Saturate(value)
  %3096 = fsub fast float %3095, %2259
  %3097 = fmul fast float %3096, %3032
  %3098 = fadd fast float %3097, %2259
  %3099 = fmul fast float %3035, %2851
  %3100 = fmul fast float %3035, %2852
  %3101 = fmul fast float %3035, %2853
  %3102 = fadd fast float %3099, %2255
  %3103 = fadd fast float %3100, %2256
  %3104 = fadd fast float %3101, %2257
  %3105 = fmul fast float %3038, %2874
  %3106 = fadd fast float %3105, %2261
  br label %3129

; <label>:3107                                    ; preds = %3065
  %3108 = icmp eq i32 %3021, 8
  br i1 %3108, label %3109, label %3129

; <label>:3109                                    ; preds = %3107
  %3110 = fmul fast float %3026, %2746
  %3111 = fmul fast float %3026, %2747
  %3112 = fadd fast float %3110, %2247
  %3113 = fadd fast float %3111, %2248
  %3114 = call float @dx.op.binary.f32(i32 36, float %2260, float %2748)  ; FMin(a,b)
  %3115 = fsub fast float %3114, %2260
  %3116 = fmul fast float %3115, %3029
  %3117 = fadd fast float %3116, %2260
  %3118 = fsub fast float %2745, %2259
  %3119 = fmul fast float %3032, %3118
  %3120 = fadd fast float %3119, %2259
  %3121 = fmul fast float %3035, %2851
  %3122 = fmul fast float %3035, %2852
  %3123 = fmul fast float %3035, %2853
  %3124 = fadd fast float %3121, %2255
  %3125 = fadd fast float %3122, %2256
  %3126 = fadd fast float %3123, %2257
  %3127 = fmul fast float %3038, %2874
  %3128 = fadd fast float %3127, %2261
  br label %3129

; <label>:3129                                    ; preds = %3109, %3107, %3067, %3040, %3012, %2444, %2263, %2246
  %3130 = phi float [ %2247, %3012 ], [ %2247, %2444 ], [ %2247, %2246 ], [ %3112, %3109 ], [ %2247, %3107 ], [ %3070, %3067 ], [ %3045, %3040 ], [ %2247, %2263 ]
  %3131 = phi float [ %2248, %3012 ], [ %2248, %2444 ], [ %2248, %2246 ], [ %3113, %3109 ], [ %2248, %3107 ], [ %3071, %3067 ], [ %3046, %3040 ], [ %2248, %2263 ]
  %3132 = phi float [ %3013, %3012 ], [ %2249, %2444 ], [ %2249, %2246 ], [ %3013, %3109 ], [ %3013, %3107 ], [ %3013, %3067 ], [ %3013, %3040 ], [ %2249, %2263 ]
  %3133 = phi float [ %3014, %3012 ], [ %2250, %2444 ], [ %2250, %2246 ], [ %3014, %3109 ], [ %3014, %3107 ], [ %3014, %3067 ], [ %3014, %3040 ], [ %2250, %2263 ]
  %3134 = phi float [ %3015, %3012 ], [ %2251, %2444 ], [ %2251, %2246 ], [ %3015, %3109 ], [ %3015, %3107 ], [ %3015, %3067 ], [ %3015, %3040 ], [ %2251, %2263 ]
  %3135 = phi float [ %3016, %3012 ], [ %2252, %2444 ], [ %2252, %2246 ], [ %3016, %3109 ], [ %3016, %3107 ], [ %3016, %3067 ], [ %3016, %3040 ], [ %2252, %2263 ]
  %3136 = phi float [ %3017, %3012 ], [ %2253, %2444 ], [ %2253, %2246 ], [ %3017, %3109 ], [ %3017, %3107 ], [ %3017, %3067 ], [ %3017, %3040 ], [ %2253, %2263 ]
  %3137 = phi float [ %3018, %3012 ], [ %2254, %2444 ], [ %2254, %2246 ], [ %3018, %3109 ], [ %3018, %3107 ], [ %3018, %3067 ], [ %3018, %3040 ], [ %2254, %2263 ]
  %3138 = phi float [ %2255, %3012 ], [ %2255, %2444 ], [ %2255, %2246 ], [ %3124, %3109 ], [ %2255, %3107 ], [ %3102, %3067 ], [ %3059, %3040 ], [ %2255, %2263 ]
  %3139 = phi float [ %2256, %3012 ], [ %2256, %2444 ], [ %2256, %2246 ], [ %3125, %3109 ], [ %2256, %3107 ], [ %3103, %3067 ], [ %3060, %3040 ], [ %2256, %2263 ]
  %3140 = phi float [ %2257, %3012 ], [ %2257, %2444 ], [ %2257, %2246 ], [ %3126, %3109 ], [ %2257, %3107 ], [ %3104, %3067 ], [ %3061, %3040 ], [ %2257, %2263 ]
  %3141 = phi float [ %3019, %3012 ], [ %2258, %2444 ], [ %2258, %2246 ], [ %3019, %3109 ], [ %3019, %3107 ], [ %3019, %3067 ], [ %3019, %3040 ], [ %2258, %2263 ]
  %3142 = phi float [ %2259, %3012 ], [ %2259, %2444 ], [ %2259, %2246 ], [ %3120, %3109 ], [ %2259, %3107 ], [ %3098, %3067 ], [ %3052, %3040 ], [ %2259, %2263 ]
  %3143 = phi float [ %2260, %3012 ], [ %2260, %2444 ], [ %2260, %2246 ], [ %3117, %3109 ], [ %2260, %3107 ], [ %3075, %3067 ], [ %3049, %3040 ], [ %2260, %2263 ]
  %3144 = phi float [ %2261, %3012 ], [ %2261, %2444 ], [ %2261, %2246 ], [ %3128, %3109 ], [ %2261, %3107 ], [ %3106, %3067 ], [ %3064, %3040 ], [ %2261, %2263 ]
  %3145 = phi float [ %3020, %3012 ], [ %2262, %2444 ], [ %2262, %2246 ], [ %3020, %3109 ], [ %3020, %3107 ], [ %3020, %3067 ], [ %3020, %3040 ], [ %2262, %2263 ]
  br i1 %686, label %4012, label %3146

; <label>:3146                                    ; preds = %3129
  %3147 = icmp ult i32 %740, 4
  %3148 = add i32 %58, 72
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = add i32 %58, 76
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = or i32 %3153, %3150
  %3155 = icmp eq i32 %3154, 0
  br i1 %3155, label %4012, label %3156

; <label>:3156                                    ; preds = %3146
  %3157 = and i32 %3150, 262144
  %3158 = icmp ne i32 %3157, 0
  %3159 = select i1 %3158, float %65, float 1.000000e+00
  %3160 = select i1 %3158, float %66, float 0.000000e+00
  %3161 = select i1 %3158, float %67, float 0.000000e+00
  %3162 = select i1 %3158, float %68, float 1.000000e+00
  %3163 = select i1 %3158, float %69, float %93
  %3164 = select i1 %3158, float %70, float %94
  %3165 = add i32 %58, 332
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3165, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = lshr i32 %3167, 16
  %3169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3168)  ; LegacyF16ToF32(value)
  %3170 = fmul fast float %3169, 0x3F50624DE0000000
  %3171 = add i32 %58, 136
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3171, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = lshr i32 %3173, 16
  %3175 = and i32 %3174, 255
  %3176 = lshr i32 %3173, 24
  %3177 = add i32 %58, 340
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = and i32 %3179, 65535
  %3181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3180)  ; LegacyF16ToF32(value)
  %3182 = lshr i32 %3179, 16
  %3183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3182)  ; LegacyF16ToF32(value)
  %3184 = add i32 %58, 80
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = lshr i32 %3186, 22
  %3188 = shl nuw nsw i32 %3187, 5
  %3189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3188)  ; LegacyF16ToF32(value)
  %3190 = shl i32 %3186, 4
  %3191 = and i32 %3190, 32752
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = lshr i32 %3186, 7
  %3194 = and i32 %3193, 32752
  %3195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3194)  ; LegacyF16ToF32(value)
  %3196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3197 = extractvalue %dx.types.CBufRet.f32 %3196, 3
  %3198 = fmul fast float %3197, 1.000000e+03
  %3199 = fmul fast float %3198, %675
  %3200 = call float @dx.op.unary.f32(i32 22, float %3199)  ; Frc(value)
  %3201 = fadd fast float %3200, %663
  %3202 = fmul fast float %3198, %677
  %3203 = call float @dx.op.unary.f32(i32 22, float %3202)  ; Frc(value)
  %3204 = fadd fast float %3203, %664
  %3205 = fmul fast float %3170, %3198
  %3206 = call float @dx.op.unary.f32(i32 22, float %3205)  ; Frc(value)
  %3207 = fmul fast float %3206, 0x401921FB60000000
  %3208 = fadd fast float %3207, %3189
  %3209 = call float @dx.op.unary.f32(i32 13, float %3208)  ; Sin(value)
  %3210 = call float @dx.op.unary.f32(i32 12, float %3208)  ; Cos(value)
  %3211 = fsub fast float -0.000000e+00, %3209
  %3212 = fadd fast float %3163, -5.000000e-01
  %3213 = fadd fast float %3164, -5.000000e-01
  %3214 = fmul fast float %3181, %3212
  %3215 = fmul fast float %3183, %3213
  %3216 = fadd fast float %3214, 5.000000e-01
  %3217 = fadd fast float %3215, 5.000000e-01
  %3218 = fmul fast float %3192, %3216
  %3219 = fmul fast float %3195, %3217
  %3220 = fmul fast float %3210, %3218
  %3221 = call float @dx.op.tertiary.f32(i32 46, float %3211, float %3219, float %3220)  ; FMad(a,b,c)
  %3222 = fmul fast float %3209, %3218
  %3223 = call float @dx.op.tertiary.f32(i32 46, float %3210, float %3219, float %3222)  ; FMad(a,b,c)
  %3224 = fadd fast float %3201, %3221
  %3225 = fadd fast float %3204, %3223
  %3226 = icmp ugt i32 %3175, 1
  %3227 = icmp ugt i32 %3173, 33554431
  %3228 = or i1 %3227, %3226
  br i1 %3228, label %3229, label %3254

; <label>:3229                                    ; preds = %3156
  %3230 = add i32 %58, 276
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = lshr i32 %3232, 16
  %3234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3233)  ; LegacyF16ToF32(value)
  %3235 = fmul fast float %3197, %3234
  %3236 = call float @dx.op.unary.f32(i32 22, float %3235)  ; Frc(value)
  %3237 = mul nuw nsw i32 %3175, %3176
  %3238 = uitofp i32 %3237 to float
  %3239 = fmul fast float %3236, %3238
  %3240 = call float @dx.op.unary.f32(i32 27, float %3239)  ; Round_ni(value)
  %3241 = fptoui float %3240 to i32
  %3242 = urem i32 %3241, %3175
  %3243 = udiv i32 %3241, %3176
  %3244 = call float @dx.op.unary.f32(i32 22, float %3224)  ; Frc(value)
  %3245 = call float @dx.op.unary.f32(i32 22, float %3225)  ; Frc(value)
  %3246 = uitofp i32 %3242 to float
  %3247 = uitofp i32 %3243 to float
  %3248 = fadd fast float %3244, %3246
  %3249 = fadd fast float %3245, %3247
  %3250 = uitofp i32 %3175 to float
  %3251 = uitofp i32 %3176 to float
  %3252 = fdiv fast float %3248, %3250
  %3253 = fdiv fast float %3249, %3251
  br label %3254

; <label>:3254                                    ; preds = %3229, %3156
  %3255 = phi float [ %3252, %3229 ], [ %3224, %3156 ]
  %3256 = phi float [ %3253, %3229 ], [ %3225, %3156 ]
  %3257 = and i32 %3150, 256
  %3258 = icmp eq i32 %3257, 0
  br i1 %3258, label %3305, label %3259

; <label>:3259                                    ; preds = %3254
  %3260 = add i32 %58, 484
  %3261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3260, i32 undef)  ; BufferLoad(srv,index,wot)
  %3262 = extractvalue %dx.types.ResRet.i32 %3261, 0
  %3263 = add i32 %3262, 0
  %3264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3265 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3264, %dx.types.Handle %112, float %3255, float %3256, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3266 = extractvalue %dx.types.ResRet.f32 %3265, 0
  %3267 = add i32 %58, 148
  %3268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.i32 %3268, 0
  %3270 = shl i32 %3269, 4
  %3271 = and i32 %3270, 32752
  %3272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3271)  ; LegacyF16ToF32(value)
  %3273 = lshr i32 %3269, 7
  %3274 = and i32 %3273, 32752
  %3275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3274)  ; LegacyF16ToF32(value)
  %3276 = fsub fast float 1.000000e+00, %735
  %3277 = call float @dx.op.binary.f32(i32 35, float %3276, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3278 = bitcast float %735 to i32
  %3279 = sitofp i32 %3278 to float
  %3280 = fadd fast float %3279, 0xC1CFBF8940000000
  %3281 = fmul fast float %3275, %3280
  %3282 = fadd fast float %3281, 0x41CFBF8940000000
  %3283 = fptosi float %3282 to i32
  %3284 = bitcast i32 %3283 to float
  %3285 = bitcast float %3277 to i32
  %3286 = sitofp i32 %3285 to float
  %3287 = fadd fast float %3286, 0xC1CFBF8940000000
  %3288 = fmul fast float %3287, %3275
  %3289 = fadd fast float %3288, 0x41CFBF8940000000
  %3290 = fptosi float %3289 to i32
  %3291 = bitcast i32 %3290 to float
  %3292 = fmul fast float %3284, %3272
  %3293 = fmul fast float %3291, %3272
  %3294 = fsub fast float %3277, %3292
  %3295 = fadd fast float %3293, %3277
  %3296 = call float @dx.op.unary.f32(i32 7, float %3294)  ; Saturate(value)
  %3297 = call float @dx.op.unary.f32(i32 7, float %3295)  ; Saturate(value)
  %3298 = fsub fast float %3266, %3296
  %3299 = fsub fast float %3297, %3296
  %3300 = bitcast float %3299 to i32
  %3301 = sub nsw i32 2129859010, %3300
  %3302 = bitcast i32 %3301 to float
  %3303 = fmul fast float %3302, %3298
  %3304 = call float @dx.op.unary.f32(i32 7, float %3303)  ; Saturate(value)
  br label %3305

; <label>:3305                                    ; preds = %3259, %3254
  %3306 = phi float [ %3304, %3259 ], [ %735, %3254 ]
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = and i32 %3308, 128
  %3310 = icmp eq i32 %3309, 0
  br i1 %3310, label %3327, label %3311

; <label>:3311                                    ; preds = %3305
  %3312 = add i32 %58, 468
  %3313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.i32 %3313, 0
  %3315 = add i32 %3314, 0
  %3316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3317 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3316, %dx.types.Handle %112, float %3255, float %3256, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3318 = extractvalue %dx.types.ResRet.f32 %3317, 0
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = and i32 %3320, 524288
  %3322 = icmp ne i32 %3321, 0
  %3323 = fcmp fast ogt float %3318, 0x3FE0101020000000
  %3324 = select i1 %3323, float 1.000000e+00, float 0.000000e+00
  %3325 = select i1 %3322, float %3324, float %3318
  %3326 = fmul fast float %3325, %3306
  br label %3327

; <label>:3327                                    ; preds = %3311, %3305
  %3328 = phi float [ %3326, %3311 ], [ %3306, %3305 ]
  %3329 = fcmp fast ult float %3328, 0x3F70101020000000
  br i1 %3329, label %4012, label %3330

; <label>:3330                                    ; preds = %3327
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = and i32 %3332, 16
  %3334 = icmp eq i32 %3333, 0
  br i1 %3334, label %3533, label %3335

; <label>:3335                                    ; preds = %3330
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3171, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = add i32 %58, 420
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = add i32 %3340, 0
  %3342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3341, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3343 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3342, %dx.types.Handle %111, float %3255, float %3256, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.ResRet.f32 %3343, 1
  %3346 = extractvalue %dx.types.ResRet.f32 %3343, 2
  %3347 = extractvalue %dx.types.ResRet.f32 %3343, 3
  %3348 = and i32 %3337, 255
  %3349 = uitofp i32 %3348 to float
  %3350 = lshr i32 %3337, 8
  %3351 = and i32 %3350, 255
  %3352 = uitofp i32 %3351 to float
  %3353 = fmul fast float %3347, %3349
  %3354 = fadd fast float %3353, %3352
  %3355 = fmul fast float %3354, 0x3F70101000000000
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = and i32 %3357, 512
  %3359 = icmp eq i32 %3358, 0
  br i1 %3359, label %3368, label %3360

; <label>:3360                                    ; preds = %3335
  %3361 = add i32 %58, 504
  %3362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.i32 %3362, 0
  %3364 = add i32 %3363, 0
  %3365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3364, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3366 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3365, %dx.types.Handle %112, float %3255, float %3256, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3367 = extractvalue %dx.types.ResRet.f32 %3366, 0
  br label %3368

; <label>:3368                                    ; preds = %3360, %3335
  %3369 = phi float [ %3367, %3360 ], [ 1.000000e+00, %3335 ]
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = and i32 %3371, 33554432
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %3480, label %3374

; <label>:3374                                    ; preds = %3368
  %3375 = add i32 %58, 272
  %3376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.i32 %3376, 0
  %3378 = and i32 %3377, 65535
  %3379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3378)  ; LegacyF16ToF32(value)
  %3380 = lshr i32 %3377, 16
  %3381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3380)  ; LegacyF16ToF32(value)
  %3382 = add i32 %58, 276
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = and i32 %3384, 65535
  %3386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3385)  ; LegacyF16ToF32(value)
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = lshr i32 %3388, 24
  %3390 = uitofp i32 %3389 to float
  %3391 = fmul fast float %3390, 0x3F70101020000000
  %3392 = and i32 %3388, 255
  %3393 = uitofp i32 %3392 to float
  %3394 = fmul fast float %3393, 0x3F70101020000000
  %3395 = lshr i32 %3388, 8
  %3396 = and i32 %3395, 255
  %3397 = uitofp i32 %3396 to float
  %3398 = fmul fast float %3397, 0x3F70101020000000
  %3399 = lshr i32 %3388, 16
  %3400 = and i32 %3399, 255
  %3401 = uitofp i32 %3400 to float
  %3402 = fmul fast float %3401, 0x3F70101020000000
  %3403 = add i32 %58, 268
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = lshr i32 %3405, 24
  %3407 = uitofp i32 %3406 to float
  %3408 = fmul fast float %3407, 0x3F70101020000000
  %3409 = and i32 %3405, 255
  %3410 = uitofp i32 %3409 to float
  %3411 = fmul fast float %3410, 0x3F70101020000000
  %3412 = lshr i32 %3405, 8
  %3413 = and i32 %3412, 255
  %3414 = uitofp i32 %3413 to float
  %3415 = fmul fast float %3414, 0x3F70101020000000
  %3416 = lshr i32 %3405, 16
  %3417 = and i32 %3416, 255
  %3418 = uitofp i32 %3417 to float
  %3419 = fmul fast float %3418, 0x3F70101020000000
  %3420 = bitcast float %3344 to i32
  %3421 = ashr i32 %3420, 1
  %3422 = sub nsw i32 1597463174, %3421
  %3423 = bitcast i32 %3422 to float
  %3424 = fmul fast float %3344, 5.000000e-01
  %3425 = fmul fast float %3423, %3423
  %3426 = fmul fast float %3425, %3424
  %3427 = fsub fast float 1.500000e+00, %3426
  %3428 = fmul fast float %3423, %3344
  %3429 = fmul fast float %3428, %3427
  %3430 = bitcast float %3345 to i32
  %3431 = ashr i32 %3430, 1
  %3432 = sub nsw i32 1597463174, %3431
  %3433 = bitcast i32 %3432 to float
  %3434 = fmul fast float %3345, 5.000000e-01
  %3435 = fmul fast float %3433, %3433
  %3436 = fmul fast float %3435, %3434
  %3437 = fsub fast float 1.500000e+00, %3436
  %3438 = fmul fast float %3433, %3345
  %3439 = fmul fast float %3438, %3437
  %3440 = bitcast float %3346 to i32
  %3441 = ashr i32 %3440, 1
  %3442 = sub nsw i32 1597463174, %3441
  %3443 = bitcast i32 %3442 to float
  %3444 = fmul fast float %3346, 5.000000e-01
  %3445 = fmul fast float %3443, %3443
  %3446 = fmul fast float %3445, %3444
  %3447 = fsub fast float 1.500000e+00, %3446
  %3448 = fmul fast float %3443, %3346
  %3449 = fmul fast float %3448, %3447
  %3450 = fsub fast float %3429, %3411
  %3451 = fsub fast float %3439, %3415
  %3452 = fsub fast float %3449, %3419
  %3453 = fmul fast float %3450, %3379
  %3454 = fmul fast float %3451, %3381
  %3455 = fmul fast float %3452, %3386
  %3456 = fadd fast float %3453, %3394
  %3457 = fadd fast float %3454, %3398
  %3458 = fadd fast float %3455, %3402
  %3459 = call float @dx.op.unary.f32(i32 7, float %3456)  ; Saturate(value)
  %3460 = call float @dx.op.unary.f32(i32 7, float %3457)  ; Saturate(value)
  %3461 = call float @dx.op.unary.f32(i32 7, float %3458)  ; Saturate(value)
  %3462 = fmul fast float %3459, %3459
  %3463 = fmul fast float %3460, %3460
  %3464 = fmul fast float %3461, %3461
  %3465 = fsub fast float %3462, %3344
  %3466 = fsub fast float %3463, %3345
  %3467 = fsub fast float %3464, %3346
  %3468 = fmul fast float %3465, %3369
  %3469 = fmul fast float %3466, %3369
  %3470 = fmul fast float %3467, %3369
  %3471 = fadd fast float %3468, %3344
  %3472 = fadd fast float %3469, %3345
  %3473 = fadd fast float %3470, %3346
  %3474 = fadd fast float %3391, %3355
  %3475 = fsub fast float %3474, %3408
  %3476 = call float @dx.op.unary.f32(i32 7, float %3475)  ; Saturate(value)
  %3477 = fsub fast float %3476, %3355
  %3478 = fmul fast float %3477, %3369
  %3479 = fadd fast float %3478, %3355
  br label %3533

; <label>:3480                                    ; preds = %3368
  %3481 = and i32 %3371, 134217728
  %3482 = icmp eq i32 %3481, 0
  br i1 %3482, label %3517, label %3483

; <label>:3483                                    ; preds = %3480
  %3484 = call float @dx.op.unary.f32(i32 24, float %651)  ; Sqrt(value)
  %3485 = call float @dx.op.unary.f32(i32 24, float %652)  ; Sqrt(value)
  %3486 = call float @dx.op.unary.f32(i32 24, float %653)  ; Sqrt(value)
  %3487 = fadd fast float %3484, -5.000000e-01
  %3488 = fadd fast float %3485, -5.000000e-01
  %3489 = fadd fast float %3486, -5.000000e-01
  %3490 = fmul fast float %3487, %3369
  %3491 = fmul fast float %3488, %3369
  %3492 = fmul fast float %3489, %3369
  %3493 = fadd fast float %3490, 5.000000e-01
  %3494 = fadd fast float %3491, 5.000000e-01
  %3495 = fadd fast float %3492, 5.000000e-01
  %3496 = call float @dx.op.unary.f32(i32 24, float %3344)  ; Sqrt(value)
  %3497 = call float @dx.op.unary.f32(i32 24, float %3345)  ; Sqrt(value)
  %3498 = call float @dx.op.unary.f32(i32 24, float %3346)  ; Sqrt(value)
  %3499 = fmul fast float %3493, 2.000000e+00
  %3500 = fsub fast float 1.000000e+00, %3499
  %3501 = fmul fast float %3500, %3496
  %3502 = fadd fast float %3501, %3499
  %3503 = fmul fast float %3502, %3496
  %3504 = fmul fast float %3494, 2.000000e+00
  %3505 = fsub fast float 1.000000e+00, %3504
  %3506 = fmul fast float %3505, %3497
  %3507 = fadd fast float %3506, %3504
  %3508 = fmul fast float %3507, %3497
  %3509 = fmul fast float %3495, 2.000000e+00
  %3510 = fsub fast float 1.000000e+00, %3509
  %3511 = fmul fast float %3510, %3498
  %3512 = fadd fast float %3511, %3509
  %3513 = fmul fast float %3512, %3498
  %3514 = fmul fast float %3503, %3503
  %3515 = fmul fast float %3508, %3508
  %3516 = fmul fast float %3513, %3513
  br label %3533

; <label>:3517                                    ; preds = %3480
  %3518 = fmul fast float %651, %651
  %3519 = fmul fast float %652, %652
  %3520 = fmul fast float %653, %653
  %3521 = fadd fast float %3518, -1.000000e+00
  %3522 = fadd fast float %3519, -1.000000e+00
  %3523 = fadd fast float %3520, -1.000000e+00
  %3524 = fmul fast float %3369, %3521
  %3525 = fmul fast float %3369, %3522
  %3526 = fmul fast float %3369, %3523
  %3527 = fadd fast float %3524, 1.000000e+00
  %3528 = fadd fast float %3525, 1.000000e+00
  %3529 = fadd fast float %3526, 1.000000e+00
  %3530 = fmul fast float %3527, %3344
  %3531 = fmul fast float %3528, %3345
  %3532 = fmul fast float %3529, %3346
  br label %3533

; <label>:3533                                    ; preds = %3517, %3483, %3374, %3330
  %3534 = phi float [ %3479, %3374 ], [ %3355, %3483 ], [ %3355, %3517 ], [ 0x3FA23C0BE0000000, %3330 ]
  %3535 = phi float [ %3471, %3374 ], [ %3514, %3483 ], [ %3530, %3517 ], [ 1.000000e+00, %3330 ]
  %3536 = phi float [ %3472, %3374 ], [ %3515, %3483 ], [ %3531, %3517 ], [ 1.000000e+00, %3330 ]
  %3537 = phi float [ %3473, %3374 ], [ %3516, %3483 ], [ %3532, %3517 ], [ 1.000000e+00, %3330 ]
  %3538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3539 = extractvalue %dx.types.CBufRet.i32 %3538, 1
  %3540 = and i32 %3539, 1
  %3541 = icmp ne i32 %3540, 0
  %3542 = add i32 %58, 356
  %3543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.i32 %3543, 0
  %3545 = and i32 %3544, 32
  %3546 = icmp ne i32 %3545, 0
  %3547 = and i1 %3541, %3546
  %3548 = select i1 %3547, float 1.000000e+00, float %3535
  %3549 = select i1 %3547, float 0x3FD3333340000000, float %3536
  %3550 = select i1 %3547, float 0x3FD3333340000000, float %3537
  %3551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3552 = extractvalue %dx.types.ResRet.i32 %3551, 0
  %3553 = and i32 %3552, 32
  %3554 = icmp eq i32 %3553, 0
  br i1 %3554, label %3627, label %3555

; <label>:3555                                    ; preds = %3533
  %3556 = add i32 %58, 140
  %3557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.i32 %3557, 0
  %3559 = add i32 %58, 436
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = add i32 %3561, 0
  %3563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3562, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3564 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3563, %dx.types.Handle %111, float %3255, float %3256, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3565 = extractvalue %dx.types.ResRet.f32 %3564, 0
  %3566 = extractvalue %dx.types.ResRet.f32 %3564, 1
  %3567 = extractvalue %dx.types.ResRet.f32 %3564, 2
  %3568 = extractvalue %dx.types.ResRet.f32 %3564, 3
  %3569 = and i32 %3558, 255
  %3570 = uitofp i32 %3569 to float
  %3571 = lshr i32 %3558, 8
  %3572 = and i32 %3571, 255
  %3573 = uitofp i32 %3572 to float
  %3574 = lshr i32 %3558, 16
  %3575 = and i32 %3574, 255
  %3576 = uitofp i32 %3575 to float
  %3577 = fmul fast float %3576, 0x3F70101000000000
  %3578 = fmul fast float %3565, %3570
  %3579 = fadd fast float %3578, %3573
  %3580 = fmul fast float %3579, 0x3F70101000000000
  %3581 = fadd fast float %3566, -5.000000e-01
  %3582 = fadd fast float %3568, -5.000000e-01
  %3583 = fmul fast float %3581, %3577
  %3584 = fmul fast float %3582, %3577
  %3585 = fadd fast float %3583, 5.000000e-01
  %3586 = fadd fast float %3584, 5.000000e-01
  %3587 = fmul fast float %3585, 2.000000e+00
  %3588 = fadd fast float %3587, -1.000000e+00
  %3589 = fmul fast float %3586, 2.000000e+00
  %3590 = fadd fast float %3589, -1.000000e+00
  %3591 = fadd fast float %3588, %3590
  %3592 = fmul fast float %3591, 5.000000e-01
  %3593 = fsub fast float %3588, %3590
  %3594 = fmul fast float %3593, 5.000000e-01
  %3595 = call float @dx.op.unary.f32(i32 6, float %3592)  ; FAbs(value)
  %3596 = fsub fast float 1.000000e+00, %3595
  %3597 = call float @dx.op.unary.f32(i32 6, float %3594)  ; FAbs(value)
  %3598 = fsub fast float %3596, %3597
  %3599 = call float @dx.op.dot3.f32(i32 55, float %3592, float %3594, float %3598, float %3592, float %3594, float %3598)  ; Dot3(ax,ay,az,bx,by,bz)
  %3600 = call float @dx.op.unary.f32(i32 25, float %3599)  ; Rsqrt(value)
  %3601 = fmul fast float %3592, %3600
  %3602 = fmul fast float %3594, %3600
  %3603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.i32 %3603, 0
  %3605 = and i32 %3604, 67108864
  %3606 = icmp eq i32 %3605, 0
  br i1 %3606, label %3623, label %3607

; <label>:3607                                    ; preds = %3555
  %3608 = add i32 %58, 328
  %3609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.i32 %3609, 0
  %3611 = and i32 %3610, 65535
  %3612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3611)  ; LegacyF16ToF32(value)
  %3613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3165, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.i32 %3613, 0
  %3615 = and i32 %3614, 65535
  %3616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3615)  ; LegacyF16ToF32(value)
  %3617 = lshr i32 %3610, 16
  %3618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3617)  ; LegacyF16ToF32(value)
  %3619 = fsub fast float %3580, %3618
  %3620 = fmul fast float %3619, %3612
  %3621 = fadd fast float %3620, %3616
  %3622 = call float @dx.op.unary.f32(i32 7, float %3621)  ; Saturate(value)
  br label %3623

; <label>:3623                                    ; preds = %3607, %3555
  %3624 = phi float [ %3622, %3607 ], [ %3580, %3555 ]
  %3625 = call float @dx.op.dot2.f32(i32 54, float %3601, float %3602, float %3159, float %3160)  ; Dot2(ax,ay,bx,by)
  %3626 = call float @dx.op.dot2.f32(i32 54, float %3601, float %3602, float %3161, float %3162)  ; Dot2(ax,ay,bx,by)
  br label %3627

; <label>:3627                                    ; preds = %3623, %3533
  %3628 = phi float [ %3624, %3623 ], [ 0x3FD6666660000000, %3533 ]
  %3629 = phi float [ %3625, %3623 ], [ 0.000000e+00, %3533 ]
  %3630 = phi float [ %3626, %3623 ], [ 0.000000e+00, %3533 ]
  %3631 = phi float [ %3567, %3623 ], [ 1.000000e+00, %3533 ]
  %3632 = add i32 %58, 208
  %3633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.i32 %3633, 0
  %3635 = lshr i32 %3634, 22
  %3636 = shl nuw nsw i32 %3635, 5
  %3637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3636)  ; LegacyF16ToF32(value)
  %3638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.i32 %3638, 0
  %3640 = and i32 %3639, 64
  %3641 = icmp eq i32 %3640, 0
  br i1 %3641, label %3675, label %3642

; <label>:3642                                    ; preds = %3627
  %3643 = add i32 %58, 452
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = add i32 %3645, 0
  %3647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.i32 %3648, 0
  %3650 = and i32 %3649, 131072
  %3651 = icmp eq i32 %3650, 0
  %3652 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3647, %dx.types.Handle %111, float %3255, float %3256, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.ResRet.f32 %3652, 2
  %3656 = fmul fast float %634, %3653
  %3657 = fmul fast float %635, %3654
  %3658 = fmul fast float %636, %3655
  br i1 %3651, label %3665, label %3659

; <label>:3659                                    ; preds = %3642
  %3660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.f32 %3660, 0
  %3662 = fmul fast float %3661, %3656
  %3663 = fmul fast float %3661, %3657
  %3664 = fmul fast float %3661, %3658
  br label %3665

; <label>:3665                                    ; preds = %3659, %3642
  %3666 = phi float [ %3662, %3659 ], [ %3656, %3642 ]
  %3667 = phi float [ %3663, %3659 ], [ %3657, %3642 ]
  %3668 = phi float [ %3664, %3659 ], [ %3658, %3642 ]
  %3669 = fmul fast float %3666, %3637
  %3670 = select i1 %302, float %3669, float %3666
  %3671 = call float @dx.op.dot3.f32(i32 55, float %3670, float %3667, float %3668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3672 = select i1 %302, float 0.000000e+00, float %3666
  %3673 = select i1 %302, float %3671, float %3667
  %3674 = select i1 %302, float 0.000000e+00, float %3668
  br label %3675

; <label>:3675                                    ; preds = %3665, %3627
  %3676 = phi float [ %3672, %3665 ], [ 0.000000e+00, %3627 ]
  %3677 = phi float [ %3673, %3665 ], [ 0.000000e+00, %3627 ]
  %3678 = phi float [ %3674, %3665 ], [ 0.000000e+00, %3627 ]
  %3679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.i32 %3679, 0
  %3681 = and i32 %3680, 1024
  %3682 = icmp eq i32 %3681, 0
  br i1 %3682, label %3713, label %3683

; <label>:3683                                    ; preds = %3675
  %3684 = add i32 %58, 200
  %3685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.i32 %3685, 0
  %3687 = and i32 %3686, 255
  %3688 = uitofp i32 %3687 to float
  %3689 = fmul fast float %3688, 0x3F70101020000000
  %3690 = lshr i32 %3686, 8
  %3691 = and i32 %3690, 255
  %3692 = uitofp i32 %3691 to float
  %3693 = fmul fast float %3692, 0x3F70101020000000
  %3694 = lshr i32 %3686, 16
  %3695 = and i32 %3694, 255
  %3696 = uitofp i32 %3695 to float
  %3697 = fmul fast float %3696, 0x3F70101020000000
  %3698 = fmul fast float %3689, %3689
  %3699 = fmul fast float %3693, %3693
  %3700 = fmul fast float %3697, %3697
  %3701 = add i32 %58, 520
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = add i32 %3703, 0
  %3705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3705, %dx.types.Handle %112, float %3255, float %3256, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 0
  %3708 = extractvalue %dx.types.ResRet.f32 %3706, 1
  %3709 = extractvalue %dx.types.ResRet.f32 %3706, 2
  %3710 = fmul fast float %3698, %3707
  %3711 = fmul fast float %3699, %3708
  %3712 = fmul fast float %3700, %3709
  br label %3713

; <label>:3713                                    ; preds = %3683, %3675
  %3714 = phi float [ %3710, %3683 ], [ 0.000000e+00, %3675 ]
  %3715 = phi float [ %3711, %3683 ], [ 0.000000e+00, %3675 ]
  %3716 = phi float [ %3712, %3683 ], [ 0.000000e+00, %3675 ]
  %3717 = fcmp fast ogt float %3714, 0.000000e+00
  %3718 = fcmp fast ogt float %3715, 0.000000e+00
  %3719 = fcmp fast ogt float %3716, 0.000000e+00
  %3720 = call float @dx.op.unary.f32(i32 23, float %3714)  ; Log(value)
  %3721 = call float @dx.op.unary.f32(i32 23, float %3715)  ; Log(value)
  %3722 = call float @dx.op.unary.f32(i32 23, float %3716)  ; Log(value)
  %3723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.i32 %3723, 0
  %3725 = lshr i32 %3724, 7
  %3726 = and i32 %3725, 32752
  %3727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3726)  ; LegacyF16ToF32(value)
  %3728 = fmul fast float %3720, 0xBFE62E4300000000
  %3729 = fmul fast float %3728, %3727
  %3730 = fmul fast float %3721, 0xBFE62E4300000000
  %3731 = fmul fast float %3730, %3727
  %3732 = fmul fast float %3722, 0xBFE62E4300000000
  %3733 = fmul fast float %3732, %3727
  %3734 = select i1 %3717, float %3729, float 1.270000e+02
  %3735 = select i1 %3718, float %3731, float 1.270000e+02
  %3736 = select i1 %3719, float %3733, float 1.270000e+02
  %3737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.i32 %3737, 0
  %3739 = and i32 %3738, 2048
  %3740 = icmp eq i32 %3739, 0
  br i1 %3740, label %3756, label %3741

; <label>:3741                                    ; preds = %3713
  %3742 = add i32 %58, 536
  %3743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.i32 %3743, 0
  %3745 = add i32 %3744, 0
  %3746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3746, %dx.types.Handle %112, float %3255, float %3256, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3748 = extractvalue %dx.types.ResRet.f32 %3747, 3
  %3749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.i32 %3749, 0
  %3751 = shl i32 %3750, 4
  %3752 = and i32 %3751, 32752
  %3753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3752)  ; LegacyF16ToF32(value)
  %3754 = fmul fast float %3753, %3748
  %3755 = call float @dx.op.binary.f32(i32 35, float %3754, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3756

; <label>:3756                                    ; preds = %3741, %3713
  %3757 = phi float [ %3755, %3741 ], [ 0x3F70101020000000, %3713 ]
  %3758 = add i32 %58, 144
  %3759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3758, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.i32 %3759, 0
  %3761 = and i32 %3760, 255
  %3762 = uitofp i32 %3761 to float
  %3763 = lshr i32 %3760, 8
  %3764 = and i32 %3763, 255
  %3765 = uitofp i32 %3764 to float
  %3766 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3550, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3767 = fmul fast float %3765, %3766
  %3768 = fadd fast float %3767, %3762
  %3769 = fmul fast float %3768, 0x3F70101020000000
  %3770 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  br i1 %3147, label %3771, label %3806

; <label>:3771                                    ; preds = %3756
  %3772 = fmul fast float %3757, 2.000000e+00
  %3773 = fcmp fast olt float %3734, 1.270000e+02
  %3774 = fcmp fast olt float %3735, 1.270000e+02
  %3775 = fcmp fast olt float %3736, 1.270000e+02
  %3776 = fmul fast float %3734, 0xBFF7154760000000
  %3777 = fmul fast float %3776, %3772
  %3778 = fmul fast float %3735, 0xBFF7154760000000
  %3779 = fmul fast float %3778, %3772
  %3780 = fmul fast float %3736, 0xBFF7154760000000
  %3781 = fmul fast float %3780, %3772
  %3782 = call float @dx.op.unary.f32(i32 21, float %3777)  ; Exp(value)
  %3783 = call float @dx.op.unary.f32(i32 21, float %3779)  ; Exp(value)
  %3784 = call float @dx.op.unary.f32(i32 21, float %3781)  ; Exp(value)
  %3785 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3786 = call float @dx.op.unary.f32(i32 7, float %3783)  ; Saturate(value)
  %3787 = call float @dx.op.unary.f32(i32 7, float %3784)  ; Saturate(value)
  %3788 = fadd fast float %3785, -1.000000e+00
  %3789 = select i1 %3773, float %3788, float -1.000000e+00
  %3790 = fadd fast float %3786, -1.000000e+00
  %3791 = select i1 %3774, float %3790, float -1.000000e+00
  %3792 = fadd fast float %3787, -1.000000e+00
  %3793 = select i1 %3775, float %3792, float -1.000000e+00
  %3794 = fmul fast float %3789, %3328
  %3795 = fmul fast float %3791, %3328
  %3796 = fmul fast float %3793, %3328
  %3797 = fadd fast float %3794, 1.000000e+00
  %3798 = fadd fast float %3795, 1.000000e+00
  %3799 = fadd fast float %3796, 1.000000e+00
  %3800 = fmul fast float %3797, %3132
  %3801 = fmul fast float %3798, %3133
  %3802 = fmul fast float %3799, %3134
  %3803 = fmul fast float %3797, %3135
  %3804 = fmul fast float %3798, %3136
  %3805 = fmul fast float %3799, %3137
  br label %3806

; <label>:3806                                    ; preds = %3771, %3756
  %3807 = phi float [ %3800, %3771 ], [ %3132, %3756 ]
  %3808 = phi float [ %3801, %3771 ], [ %3133, %3756 ]
  %3809 = phi float [ %3802, %3771 ], [ %3134, %3756 ]
  %3810 = phi float [ %3803, %3771 ], [ %3135, %3756 ]
  %3811 = phi float [ %3804, %3771 ], [ %3136, %3756 ]
  %3812 = phi float [ %3805, %3771 ], [ %3137, %3756 ]
  %3813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.i32 %3813, 0
  %3815 = and i32 %3814, 3
  %3816 = icmp eq i32 %3815, 3
  br i1 %3816, label %3895, label %3817

; <label>:3817                                    ; preds = %3806
  %3818 = and i32 %3814, 16
  %3819 = icmp ne i32 %3818, 0
  %3820 = select i1 %3819, float %3328, float 0.000000e+00
  %3821 = icmp eq i32 %3815, 0
  br i1 %3821, label %3822, label %3850

; <label>:3822                                    ; preds = %3817
  %3823 = and i32 %3814, 64
  %3824 = icmp ne i32 %3823, 0
  %3825 = select i1 %3824, float %3328, float 0.000000e+00
  %3826 = fsub fast float %3548, %3807
  %3827 = fsub fast float %3549, %3808
  %3828 = fsub fast float %3550, %3809
  %3829 = fmul fast float %3820, %3826
  %3830 = fmul fast float %3820, %3827
  %3831 = fmul fast float %3820, %3828
  %3832 = fadd fast float %3829, %3807
  %3833 = fadd fast float %3830, %3808
  %3834 = fadd fast float %3831, %3809
  %3835 = fsub fast float %3534, %3141
  %3836 = fmul fast float %3820, %3835
  %3837 = fadd fast float %3836, %3141
  %3838 = fsub fast float %3676, %3810
  %3839 = fsub fast float %3677, %3811
  %3840 = fsub fast float %3678, %3812
  %3841 = fmul fast float %3825, %3838
  %3842 = fmul fast float %3825, %3839
  %3843 = fmul fast float %3825, %3840
  %3844 = fadd fast float %3841, %3810
  %3845 = fadd fast float %3842, %3811
  %3846 = fadd fast float %3843, %3812
  %3847 = fsub fast float %3770, %3145
  %3848 = fmul fast float %3820, %3847
  %3849 = fadd fast float %3848, %3145
  br label %3895

; <label>:3850                                    ; preds = %3817
  %3851 = icmp eq i32 %3815, 1
  br i1 %3851, label %3852, label %3865

; <label>:3852                                    ; preds = %3850
  %3853 = fadd fast float %3548, -1.000000e+00
  %3854 = fadd fast float %3549, -1.000000e+00
  %3855 = fadd fast float %3550, -1.000000e+00
  %3856 = fmul fast float %3820, %3853
  %3857 = fmul fast float %3820, %3854
  %3858 = fmul fast float %3820, %3855
  %3859 = fadd fast float %3856, 1.000000e+00
  %3860 = fadd fast float %3857, 1.000000e+00
  %3861 = fadd fast float %3858, 1.000000e+00
  %3862 = fmul fast float %3859, %3807
  %3863 = fmul fast float %3860, %3808
  %3864 = fmul fast float %3861, %3809
  br label %3895

; <label>:3865                                    ; preds = %3850
  %3866 = icmp eq i32 %3815, 2
  br i1 %3866, label %3867, label %3895

; <label>:3867                                    ; preds = %3865
  %3868 = call float @dx.op.unary.f32(i32 24, float %3548)  ; Sqrt(value)
  %3869 = call float @dx.op.unary.f32(i32 24, float %3549)  ; Sqrt(value)
  %3870 = call float @dx.op.unary.f32(i32 24, float %3550)  ; Sqrt(value)
  %3871 = fadd fast float %3868, -5.000000e-01
  %3872 = fadd fast float %3869, -5.000000e-01
  %3873 = fadd fast float %3870, -5.000000e-01
  %3874 = fmul fast float %3871, %3820
  %3875 = fmul fast float %3872, %3820
  %3876 = fmul fast float %3873, %3820
  %3877 = fadd fast float %3874, 5.000000e-01
  %3878 = fadd fast float %3875, 5.000000e-01
  %3879 = fadd fast float %3876, 5.000000e-01
  %3880 = fmul fast float %3877, 2.000000e+00
  %3881 = fsub fast float 1.000000e+00, %3880
  %3882 = fmul fast float %3881, %3807
  %3883 = fadd fast float %3882, %3880
  %3884 = fmul fast float %3883, %3807
  %3885 = fmul fast float %3878, 2.000000e+00
  %3886 = fsub fast float 1.000000e+00, %3885
  %3887 = fmul fast float %3886, %3808
  %3888 = fadd fast float %3887, %3885
  %3889 = fmul fast float %3888, %3808
  %3890 = fmul fast float %3879, 2.000000e+00
  %3891 = fsub fast float 1.000000e+00, %3890
  %3892 = fmul fast float %3891, %3809
  %3893 = fadd fast float %3892, %3890
  %3894 = fmul fast float %3893, %3809
  br label %3895

; <label>:3895                                    ; preds = %3867, %3865, %3852, %3822, %3806
  %3896 = phi float [ %3807, %3806 ], [ %3884, %3867 ], [ %3807, %3865 ], [ %3862, %3852 ], [ %3832, %3822 ]
  %3897 = phi float [ %3808, %3806 ], [ %3889, %3867 ], [ %3808, %3865 ], [ %3863, %3852 ], [ %3833, %3822 ]
  %3898 = phi float [ %3809, %3806 ], [ %3894, %3867 ], [ %3809, %3865 ], [ %3864, %3852 ], [ %3834, %3822 ]
  %3899 = phi float [ %3810, %3806 ], [ %3810, %3867 ], [ %3810, %3865 ], [ %3810, %3852 ], [ %3844, %3822 ]
  %3900 = phi float [ %3811, %3806 ], [ %3811, %3867 ], [ %3811, %3865 ], [ %3811, %3852 ], [ %3845, %3822 ]
  %3901 = phi float [ %3812, %3806 ], [ %3812, %3867 ], [ %3812, %3865 ], [ %3812, %3852 ], [ %3846, %3822 ]
  %3902 = phi float [ %3141, %3806 ], [ %3141, %3867 ], [ %3141, %3865 ], [ %3141, %3852 ], [ %3837, %3822 ]
  %3903 = phi float [ %3145, %3806 ], [ %3145, %3867 ], [ %3145, %3865 ], [ %3145, %3852 ], [ %3849, %3822 ]
  %3904 = and i32 %3814, 12
  %3905 = icmp eq i32 %3904, 12
  br i1 %3905, label %4012, label %3906

; <label>:3906                                    ; preds = %3895
  %3907 = and i32 %3814, 2097184
  %3908 = icmp eq i32 %3907, 2097184
  %3909 = select i1 %3908, float %3328, float 0.000000e+00
  %3910 = and i32 %3814, 4194336
  %3911 = icmp eq i32 %3910, 4194336
  %3912 = select i1 %3911, float %3328, float 0.000000e+00
  %3913 = and i32 %3814, 8388640
  %3914 = icmp eq i32 %3913, 8388640
  %3915 = select i1 %3914, float %3328, float 0.000000e+00
  %3916 = and i32 %3814, 1024
  %3917 = icmp ne i32 %3916, 0
  %3918 = select i1 %3917, float %3328, float 0.000000e+00
  %3919 = and i32 %3814, 2048
  %3920 = icmp ne i32 %3919, 0
  %3921 = select i1 %3920, float %3328, float 0.000000e+00
  %3922 = icmp eq i32 %3904, 0
  br i1 %3922, label %3923, label %3948

; <label>:3923                                    ; preds = %3906
  %3924 = fsub fast float %3629, %3130
  %3925 = fsub fast float %3630, %3131
  %3926 = fmul fast float %3909, %3924
  %3927 = fmul fast float %3909, %3925
  %3928 = fadd fast float %3926, %3130
  %3929 = fadd fast float %3927, %3131
  %3930 = fsub fast float %3631, %3143
  %3931 = fmul fast float %3912, %3930
  %3932 = fadd fast float %3931, %3143
  %3933 = fsub fast float %3628, %3142
  %3934 = fmul fast float %3915, %3933
  %3935 = fadd fast float %3934, %3142
  %3936 = fsub fast float %3734, %3138
  %3937 = fsub fast float %3735, %3139
  %3938 = fsub fast float %3736, %3140
  %3939 = fmul fast float %3918, %3936
  %3940 = fmul fast float %3918, %3937
  %3941 = fmul fast float %3918, %3938
  %3942 = fadd fast float %3939, %3138
  %3943 = fadd fast float %3940, %3139
  %3944 = fadd fast float %3941, %3140
  %3945 = fsub fast float %3757, %3144
  %3946 = fmul fast float %3921, %3945
  %3947 = fadd fast float %3946, %3144
  br label %4012

; <label>:3948                                    ; preds = %3906
  %3949 = icmp eq i32 %3904, 4
  br i1 %3949, label %3950, label %3990

; <label>:3950                                    ; preds = %3948
  %3951 = fmul fast float %3909, %3629
  %3952 = fmul fast float %3909, %3630
  %3953 = fadd fast float %3951, %3130
  %3954 = fadd fast float %3952, %3131
  %3955 = call float @dx.op.binary.f32(i32 36, float %3143, float %3631)  ; FMin(a,b)
  %3956 = fsub fast float %3955, %3143
  %3957 = fmul fast float %3956, %3912
  %3958 = fadd fast float %3957, %3143
  %3959 = fadd fast float %3628, %3142
  %3960 = fmul fast float %3959, 0x3FF337FAE0000000
  %3961 = fmul fast float %3142, %3142
  %3962 = fmul fast float %3628, %3628
  %3963 = fadd fast float %3962, %3961
  %3964 = fmul fast float %3963, 0x3FE5152B00000000
  %3965 = fmul fast float %3142, 0xBFCC1F85E0000000
  %3966 = fmul fast float %3965, %3628
  %3967 = fadd fast float %3966, 0xBFE1363700000000
  %3968 = fadd fast float %3967, %3960
  %3969 = fsub fast float %3968, %3964
  %3970 = fmul fast float %3959, 0x3FBA6F0D00000000
  %3971 = fmul fast float %3963, 0x3FD0432880000000
  %3972 = fmul fast float %3142, 0xBFEF110800000000
  %3973 = fmul fast float %3972, %3628
  %3974 = fadd fast float %3973, 1.000000e+00
  %3975 = fsub fast float %3974, %3970
  %3976 = fadd fast float %3975, %3971
  %3977 = fdiv fast float %3969, %3976
  %3978 = call float @dx.op.unary.f32(i32 7, float %3977)  ; Saturate(value)
  %3979 = fsub fast float %3978, %3142
  %3980 = fmul fast float %3979, %3915
  %3981 = fadd fast float %3980, %3142
  %3982 = fmul fast float %3918, %3734
  %3983 = fmul fast float %3918, %3735
  %3984 = fmul fast float %3918, %3736
  %3985 = fadd fast float %3982, %3138
  %3986 = fadd fast float %3983, %3139
  %3987 = fadd fast float %3984, %3140
  %3988 = fmul fast float %3921, %3757
  %3989 = fadd fast float %3988, %3144
  br label %4012

; <label>:3990                                    ; preds = %3948
  %3991 = icmp eq i32 %3904, 8
  br i1 %3991, label %3992, label %4012

; <label>:3992                                    ; preds = %3990
  %3993 = fmul fast float %3909, %3629
  %3994 = fmul fast float %3909, %3630
  %3995 = fadd fast float %3993, %3130
  %3996 = fadd fast float %3994, %3131
  %3997 = call float @dx.op.binary.f32(i32 36, float %3143, float %3631)  ; FMin(a,b)
  %3998 = fsub fast float %3997, %3143
  %3999 = fmul fast float %3998, %3912
  %4000 = fadd fast float %3999, %3143
  %4001 = fsub fast float %3628, %3142
  %4002 = fmul fast float %3915, %4001
  %4003 = fadd fast float %4002, %3142
  %4004 = fmul fast float %3918, %3734
  %4005 = fmul fast float %3918, %3735
  %4006 = fmul fast float %3918, %3736
  %4007 = fadd fast float %4004, %3138
  %4008 = fadd fast float %4005, %3139
  %4009 = fadd fast float %4006, %3140
  %4010 = fmul fast float %3921, %3757
  %4011 = fadd fast float %4010, %3144
  br label %4012

; <label>:4012                                    ; preds = %3992, %3990, %3950, %3923, %3895, %3327, %3146, %3129
  %4013 = phi float [ %3130, %3895 ], [ %3130, %3327 ], [ %3130, %3129 ], [ %3130, %3146 ], [ %3928, %3923 ], [ %3953, %3950 ], [ %3130, %3990 ], [ %3995, %3992 ]
  %4014 = phi float [ %3131, %3895 ], [ %3131, %3327 ], [ %3131, %3129 ], [ %3131, %3146 ], [ %3929, %3923 ], [ %3954, %3950 ], [ %3131, %3990 ], [ %3996, %3992 ]
  %4015 = phi float [ %3896, %3895 ], [ %3132, %3327 ], [ %3132, %3129 ], [ %3132, %3146 ], [ %3896, %3923 ], [ %3896, %3950 ], [ %3896, %3990 ], [ %3896, %3992 ]
  %4016 = phi float [ %3897, %3895 ], [ %3133, %3327 ], [ %3133, %3129 ], [ %3133, %3146 ], [ %3897, %3923 ], [ %3897, %3950 ], [ %3897, %3990 ], [ %3897, %3992 ]
  %4017 = phi float [ %3898, %3895 ], [ %3134, %3327 ], [ %3134, %3129 ], [ %3134, %3146 ], [ %3898, %3923 ], [ %3898, %3950 ], [ %3898, %3990 ], [ %3898, %3992 ]
  %4018 = phi float [ %3899, %3895 ], [ %3135, %3327 ], [ %3135, %3129 ], [ %3135, %3146 ], [ %3899, %3923 ], [ %3899, %3950 ], [ %3899, %3990 ], [ %3899, %3992 ]
  %4019 = phi float [ %3900, %3895 ], [ %3136, %3327 ], [ %3136, %3129 ], [ %3136, %3146 ], [ %3900, %3923 ], [ %3900, %3950 ], [ %3900, %3990 ], [ %3900, %3992 ]
  %4020 = phi float [ %3901, %3895 ], [ %3137, %3327 ], [ %3137, %3129 ], [ %3137, %3146 ], [ %3901, %3923 ], [ %3901, %3950 ], [ %3901, %3990 ], [ %3901, %3992 ]
  %4021 = phi float [ %3138, %3895 ], [ %3138, %3327 ], [ %3138, %3129 ], [ %3138, %3146 ], [ %3942, %3923 ], [ %3985, %3950 ], [ %3138, %3990 ], [ %4007, %3992 ]
  %4022 = phi float [ %3139, %3895 ], [ %3139, %3327 ], [ %3139, %3129 ], [ %3139, %3146 ], [ %3943, %3923 ], [ %3986, %3950 ], [ %3139, %3990 ], [ %4008, %3992 ]
  %4023 = phi float [ %3140, %3895 ], [ %3140, %3327 ], [ %3140, %3129 ], [ %3140, %3146 ], [ %3944, %3923 ], [ %3987, %3950 ], [ %3140, %3990 ], [ %4009, %3992 ]
  %4024 = phi float [ %3902, %3895 ], [ %3141, %3327 ], [ %3141, %3129 ], [ %3141, %3146 ], [ %3902, %3923 ], [ %3902, %3950 ], [ %3902, %3990 ], [ %3902, %3992 ]
  %4025 = phi float [ %3142, %3895 ], [ %3142, %3327 ], [ %3142, %3129 ], [ %3142, %3146 ], [ %3935, %3923 ], [ %3981, %3950 ], [ %3142, %3990 ], [ %4003, %3992 ]
  %4026 = phi float [ %3143, %3895 ], [ %3143, %3327 ], [ %3143, %3129 ], [ %3143, %3146 ], [ %3932, %3923 ], [ %3958, %3950 ], [ %3143, %3990 ], [ %4000, %3992 ]
  %4027 = phi float [ %3144, %3895 ], [ %3144, %3327 ], [ %3144, %3129 ], [ %3144, %3146 ], [ %3947, %3923 ], [ %3989, %3950 ], [ %3144, %3990 ], [ %4011, %3992 ]
  %4028 = phi float [ %3903, %3895 ], [ %3145, %3327 ], [ %3145, %3129 ], [ %3145, %3146 ], [ %3903, %3923 ], [ %3903, %3950 ], [ %3903, %3990 ], [ %3903, %3992 ]
  %4029 = add i32 %58, 360
  %4030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %4029, i32 undef)  ; BufferLoad(srv,index,wot)
  %4031 = extractvalue %dx.types.ResRet.i32 %4030, 0
  %4032 = extractvalue %dx.types.ResRet.i32 %4030, 1
  %4033 = bitcast i32 %4031 to float
  %4034 = bitcast i32 %4032 to float
  %4035 = fcmp fast oge float %4033, 0.000000e+00
  %4036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4037 = extractvalue %dx.types.CBufRet.f32 %4036, 0
  %4038 = select i1 %4035, float %4033, float %4037
  %4039 = fadd fast float %4038, %216
  %4040 = fmul fast float %4034, %217
  %4041 = add i32 %58, 488
  %4042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %4041, i32 undef)  ; BufferLoad(srv,index,wot)
  %4043 = extractvalue %dx.types.ResRet.i32 %4042, 0
  %4044 = add i32 %4043, 0
  %4045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4046 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4045, %dx.types.Handle %112, float %93, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4047 = extractvalue %dx.types.ResRet.f32 %4046, 0
  %4048 = fmul fast float %4040, %4047
  %4049 = fadd fast float %4039, %4048
  %4050 = and i32 %208, 65535
  %4051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4050)  ; LegacyF16ToF32(value)
  %4052 = lshr i32 %208, 16
  %4053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4052)  ; LegacyF16ToF32(value)
  %4054 = and i32 %209, 65535
  %4055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4054)  ; LegacyF16ToF32(value)
  %4056 = fmul fast float %4051, %4015
  %4057 = fmul fast float %4053, %4016
  %4058 = fmul fast float %4055, %4017
  %4059 = shl i32 %210, 4
  %4060 = and i32 %4059, 32752
  %4061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4060)  ; LegacyF16ToF32(value)
  %4062 = lshr i32 %210, 7
  %4063 = and i32 %4062, 32752
  %4064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4063)  ; LegacyF16ToF32(value)
  %4065 = lshr i32 %210, 22
  %4066 = shl nuw nsw i32 %4065, 5
  %4067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4066)  ; LegacyF16ToF32(value)
  %4068 = and i32 %211, 65535
  %4069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4068)  ; LegacyF16ToF32(value)
  %4070 = fmul fast float %4061, %4018
  %4071 = fmul fast float %4070, %4069
  %4072 = fmul fast float %4064, %4019
  %4073 = fmul fast float %4072, %4069
  %4074 = fmul fast float %4067, %4020
  %4075 = fmul fast float %4074, %4069
  %4076 = call float @dx.op.dot2.f32(i32 54, float %4013, float %4014, float %4013, float %4014)  ; Dot2(ax,ay,bx,by)
  %4077 = fmul fast float %4076, 0x3FE3333340000000
  %4078 = fsub fast float 1.000000e+00, %4077
  %4079 = call float @dx.op.dot3.f32(i32 55, float %4013, float %4014, float %4078, float %4013, float %4014, float %4078)  ; Dot3(ax,ay,az,bx,by,bz)
  %4080 = call float @dx.op.unary.f32(i32 25, float %4079)  ; Rsqrt(value)
  %4081 = fmul fast float %4080, %4013
  %4082 = fmul fast float %4080, %4014
  %4083 = fmul fast float %4078, %4080
  %4084 = fmul fast float %4083, %122
  %4085 = fmul fast float %4083, %123
  %4086 = fmul fast float %4083, %124
  %4087 = fmul fast float %4081, %86
  %4088 = fmul fast float %4081, %87
  %4089 = fmul fast float %4081, %88
  %4090 = fadd fast float %4084, %4087
  %4091 = fadd fast float %4085, %4088
  %4092 = fadd fast float %4086, %4089
  %4093 = fmul fast float %134, %4082
  %4094 = fmul fast float %135, %4082
  %4095 = fmul fast float %136, %4082
  %4096 = fadd fast float %4090, %4093
  %4097 = fadd fast float %4091, %4094
  %4098 = fadd fast float %4092, %4095
  %4099 = call float @dx.op.dot3.f32(i32 55, float %4096, float %4097, float %4098, float %4096, float %4097, float %4098)  ; Dot3(ax,ay,az,bx,by,bz)
  %4100 = call float @dx.op.unary.f32(i32 25, float %4099)  ; Rsqrt(value)
  %4101 = fmul fast float %4096, %4100
  %4102 = fmul fast float %4097, %4100
  %4103 = fmul fast float %4098, %4100
  %4104 = fadd fast float %4024, 0xBFB99999A0000000
  %4105 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4106 = fmul fast float %4105, 0x3FF1C71C80000000
  %4107 = call float @dx.op.binary.f32(i32 36, float %4024, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4108 = fsub fast float 1.000000e+00, %4106
  %4109 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4110 = fmul fast float %4109, %4056
  %4111 = fmul fast float %4109, %4057
  %4112 = fmul fast float %4109, %4058
  %4113 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4114 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4115 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4116 = fmul fast float %4106, %4056
  %4117 = fmul fast float %4106, %4057
  %4118 = fmul fast float %4106, %4058
  %4119 = fadd fast float %4116, %4107
  %4120 = fadd fast float %4117, %4107
  %4121 = fadd fast float %4118, %4107
  %4122 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4123 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4124 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4125 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4126 = call float @dx.op.binary.f32(i32 36, float %4021, float 1.270000e+02)  ; FMin(a,b)
  %4127 = call float @dx.op.binary.f32(i32 36, float %4022, float 1.270000e+02)  ; FMin(a,b)
  %4128 = call float @dx.op.binary.f32(i32 36, float %4023, float 1.270000e+02)  ; FMin(a,b)
  %4129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.i32 %4129, 3
  %4131 = and i32 %4130, 8
  %4132 = icmp ne i32 %4131, 0
  %4133 = call float @dx.op.binary.f32(i32 35, float %4113, float %4056)  ; FMax(a,b)
  %4134 = call float @dx.op.binary.f32(i32 35, float %4114, float %4056)  ; FMax(a,b)
  %4135 = call float @dx.op.binary.f32(i32 35, float %4115, float %4056)  ; FMax(a,b)
  %4136 = call float @dx.op.dot3.f32(i32 55, float %4113, float %4114, float %4115, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4137 = select i1 %302, float %4056, float %4113
  %4138 = select i1 %302, float %4136, float %4114
  %4139 = select i1 %302, float 1.000000e+00, float %4115
  %4140 = select i1 %4132, float %4133, float %4137
  %4141 = select i1 %4132, float %4134, float %4138
  %4142 = select i1 %4132, float %4135, float %4139
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.CBufRet.f32 %4143, 2
  %4147 = fadd fast float %4144, %202
  %4148 = fadd fast float %4145, %203
  %4149 = fadd fast float %4146, %204
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 0
  %4152 = extractvalue %dx.types.CBufRet.f32 %4150, 1
  %4153 = fsub fast float %4147, %4151
  %4154 = fsub fast float %4148, %4152
  %4155 = fmul fast float %4153, %4153
  %4156 = fmul fast float %4154, %4154
  %4157 = fadd fast float %4155, %4156
  %4158 = call float @dx.op.unary.f32(i32 24, float %4157)  ; Sqrt(value)
  %4159 = extractvalue %dx.types.CBufRet.f32 %4150, 2
  %4160 = fcmp fast olt float %4158, %4159
  br i1 %4160, label %4161, label %4228

; <label>:4161                                    ; preds = %4012
  %4162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4162, 0
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 0
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 0
  %4168 = extractvalue %dx.types.CBufRet.f32 %4162, 1
  %4169 = extractvalue %dx.types.CBufRet.f32 %4164, 1
  %4170 = extractvalue %dx.types.CBufRet.f32 %4166, 1
  %4171 = extractvalue %dx.types.CBufRet.f32 %4162, 3
  %4172 = extractvalue %dx.types.CBufRet.f32 %4164, 3
  %4173 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4174 = fadd fast float %4171, %4147
  %4175 = fadd fast float %4172, %4148
  %4176 = fadd fast float %4173, %4149
  %4177 = fmul fast float %4174, %4163
  %4178 = call float @dx.op.tertiary.f32(i32 46, float %4175, float %4165, float %4177)  ; FMad(a,b,c)
  %4179 = call float @dx.op.tertiary.f32(i32 46, float %4176, float %4167, float %4178)  ; FMad(a,b,c)
  %4180 = fmul fast float %4174, %4168
  %4181 = call float @dx.op.tertiary.f32(i32 46, float %4175, float %4169, float %4180)  ; FMad(a,b,c)
  %4182 = call float @dx.op.tertiary.f32(i32 46, float %4176, float %4170, float %4181)  ; FMad(a,b,c)
  %4183 = fsub fast float %4179, %4171
  %4184 = fsub fast float %4182, %4172
  %4185 = fsub fast float %4183, %4151
  %4186 = fadd fast float %4185, %4159
  %4187 = fsub fast float %4184, %4152
  %4188 = fadd fast float %4187, %4159
  %4189 = extractvalue %dx.types.CBufRet.f32 %4150, 3
  %4190 = fmul fast float %4186, %4189
  %4191 = fmul fast float %4188, %4189
  %4192 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4193 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  %4194 = fsub fast float 1.000000e+00, %4192
  %4195 = fsub fast float 1.000000e+00, %4193
  %4196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %52, float %4194, float %4195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4198 = fcmp fast ugt float %4197, 0.000000e+00
  br i1 %4198, label %4199, label %4502

; <label>:4199                                    ; preds = %4161
  %4200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4201 = extractvalue %dx.types.CBufRet.f32 %4200, 2
  %4202 = fmul fast float %4201, %4197
  %4203 = extractvalue %dx.types.CBufRet.f32 %4200, 3
  %4204 = fadd fast float %4203, %4202
  %4205 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4206 = fadd fast float %4204, %4173
  %4207 = fmul fast float %4179, %4167
  %4208 = call float @dx.op.tertiary.f32(i32 46, float %4182, float %4170, float %4207)  ; FMad(a,b,c)
  %4209 = call float @dx.op.tertiary.f32(i32 46, float %4206, float %4205, float %4208)  ; FMad(a,b,c)
  %4210 = fsub fast float %4209, %4173
  %4211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4211, 2
  %4213 = fsub fast float %4210, %4212
  %4214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %52, float %4194, float %4195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %52, float %4194, float %4195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.ResRet.f32 %4218, 1
  %4221 = extractvalue %dx.types.ResRet.f32 %4218, 2
  %4222 = fadd fast float %4219, %4215
  %4223 = fmul fast float %4222, 0x3F847AE140000000
  %4224 = fadd fast float %4220, %4216
  %4225 = fmul fast float %4224, 0x3F847AE140000000
  %4226 = fadd fast float %4221, %4217
  %4227 = fmul fast float %4226, 0x3F847AE140000000
  br label %4502

; <label>:4228                                    ; preds = %4012
  %4229 = and i32 %278, 1
  %4230 = icmp eq i32 %4229, 0
  br i1 %4230, label %4502, label %4231

; <label>:4231                                    ; preds = %4228
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 0
  %4234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4235 = extractvalue %dx.types.CBufRet.f32 %4234, 0
  %4236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4237 = extractvalue %dx.types.CBufRet.f32 %4236, 0
  %4238 = extractvalue %dx.types.CBufRet.f32 %4232, 1
  %4239 = extractvalue %dx.types.CBufRet.f32 %4234, 1
  %4240 = extractvalue %dx.types.CBufRet.f32 %4236, 1
  %4241 = extractvalue %dx.types.CBufRet.f32 %4232, 3
  %4242 = extractvalue %dx.types.CBufRet.f32 %4234, 3
  %4243 = extractvalue %dx.types.CBufRet.f32 %4236, 3
  %4244 = fadd fast float %4241, %4147
  %4245 = fadd fast float %4242, %4148
  %4246 = fadd fast float %4243, %4149
  %4247 = fmul fast float %4244, %4233
  %4248 = call float @dx.op.tertiary.f32(i32 46, float %4245, float %4235, float %4247)  ; FMad(a,b,c)
  %4249 = call float @dx.op.tertiary.f32(i32 46, float %4246, float %4237, float %4248)  ; FMad(a,b,c)
  %4250 = fmul fast float %4244, %4238
  %4251 = call float @dx.op.tertiary.f32(i32 46, float %4245, float %4239, float %4250)  ; FMad(a,b,c)
  %4252 = call float @dx.op.tertiary.f32(i32 46, float %4246, float %4240, float %4251)  ; FMad(a,b,c)
  %4253 = fsub fast float %4249, %4241
  %4254 = fsub fast float %4252, %4242
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 0
  %4257 = extractvalue %dx.types.CBufRet.f32 %4255, 1
  %4258 = extractvalue %dx.types.CBufRet.f32 %4255, 2
  %4259 = extractvalue %dx.types.CBufRet.f32 %4255, 3
  %4260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.f32 %4260, 3
  %4262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.i32 %4262, 0
  %4264 = extractvalue %dx.types.CBufRet.i32 %4262, 1
  %4265 = udiv i32 %4264, %4263
  %4266 = fsub fast float %4253, %4256
  %4267 = fsub fast float %4254, %4257
  %4268 = call float @dx.op.binary.f32(i32 35, float %4266, float 0.000000e+00)  ; FMax(a,b)
  %4269 = call float @dx.op.binary.f32(i32 35, float %4267, float 0.000000e+00)  ; FMax(a,b)
  %4270 = call float @dx.op.binary.f32(i32 36, float %4268, float %4258)  ; FMin(a,b)
  %4271 = call float @dx.op.binary.f32(i32 36, float %4269, float %4259)  ; FMin(a,b)
  %4272 = add i32 %4263, -1
  %4273 = add i32 %4265, -1
  %4274 = fmul fast float %4270, %4261
  %4275 = fmul fast float %4271, %4261
  %4276 = fptoui float %4274 to i32
  %4277 = fptoui float %4275 to i32
  %4278 = call i32 @dx.op.binary.i32(i32 40, i32 %4276, i32 %4272)  ; UMin(a,b)
  %4279 = call i32 @dx.op.binary.i32(i32 40, i32 %4277, i32 %4273)  ; UMin(a,b)
  %4280 = mul i32 %4279, %4263
  %4281 = add i32 %4280, %4278
  %4282 = shl i32 %4281, 2
  %4283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4282, i32 undef)  ; BufferLoad(srv,index,wot)
  %4284 = extractvalue %dx.types.ResRet.i32 %4283, 0
  %4285 = icmp eq i32 %4284, -1
  br i1 %4285, label %4502, label %4286

; <label>:4286                                    ; preds = %4231
  %4287 = mul i32 %4284, 148
  %4288 = add i32 %4287, 4
  %4289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4288, i32 undef)  ; BufferLoad(srv,index,wot)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = add i32 %4287, 8
  %4292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4291, i32 undef)  ; BufferLoad(srv,index,wot)
  %4293 = extractvalue %dx.types.ResRet.f32 %4292, 0
  %4294 = add i32 %4287, 36
  %4295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4294, i32 undef)  ; BufferLoad(srv,index,wot)
  %4296 = extractvalue %dx.types.ResRet.f32 %4295, 0
  %4297 = add i32 %4287, 60
  %4298 = add i32 %4287, 92
  %4299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4298, i32 undef)  ; BufferLoad(srv,index,wot)
  %4300 = extractvalue %dx.types.ResRet.i32 %4299, 0
  %4301 = add i32 %4287, 116
  %4302 = fsub fast float %4253, %4290
  %4303 = fsub fast float %4254, %4293
  %4304 = fmul fast float %4261, %4302
  %4305 = fmul fast float %4261, %4303
  %4306 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4307 = call float @dx.op.unary.f32(i32 7, float %4305)  ; Saturate(value)
  %4308 = fsub fast float 1.000000e+00, %4307
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 2
  %4311 = call float @dx.op.unary.f32(i32 83, float %4306)  ; DerivCoarseX(value)
  %4312 = call float @dx.op.unary.f32(i32 83, float %4308)  ; DerivCoarseX(value)
  %4313 = call float @dx.op.unary.f32(i32 84, float %4306)  ; DerivCoarseY(value)
  %4314 = call float @dx.op.unary.f32(i32 84, float %4308)  ; DerivCoarseY(value)
  %4315 = fmul fast float %4311, %4310
  %4316 = fmul fast float %4312, %4310
  %4317 = fmul fast float %4313, %4310
  %4318 = fmul fast float %4314, %4310
  %4319 = call float @dx.op.dot2.f32(i32 54, float %4317, float %4318, float %4317, float %4318)  ; Dot2(ax,ay,bx,by)
  %4320 = call float @dx.op.dot2.f32(i32 54, float %4315, float %4316, float %4315, float %4316)  ; Dot2(ax,ay,bx,by)
  %4321 = call float @dx.op.binary.f32(i32 35, float %4320, float %4319)  ; FMax(a,b)
  %4322 = call float @dx.op.unary.f32(i32 23, float %4321)  ; Log(value)
  %4323 = fmul fast float %4322, 5.000000e-01
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 1
  %4326 = fadd fast float %4325, %4323
  %4327 = call float @dx.op.binary.f32(i32 35, float %4326, float 0.000000e+00)  ; FMax(a,b)
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 3
  %4330 = fadd fast float %4329, %4327
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 3
  %4333 = fadd fast float %4330, %4332
  %4334 = add i32 %4300, 0
  %4335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4334, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4336 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4335, i32 0)  ; GetDimensions(handle,mipLevel)
  %4337 = extractvalue %dx.types.Dimensions %4336, 0
  %4338 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4337)  ; FirstbitLo(value)
  %4339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.i32 %4339, 1
  %4341 = sub nsw i32 %4340, %4338
  %4342 = sitofp i32 %4341 to float
  %4343 = fsub fast float %4333, %4342
  %4344 = call float @dx.op.binary.f32(i32 35, float %4343, float 0.000000e+00)  ; FMax(a,b)
  %4345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4335, %dx.types.Handle %50, float %4306, float %4308, float %4296, float undef, i32 0, i32 0, i32 undef, float %4344)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = fcmp ule float %4346, 0x3FE0101020000000
  %4348 = extractvalue %dx.types.CBufRet.i32 %4339, 0
  %4349 = and i32 %4348, 128
  %4350 = icmp ne i32 %4349, 0
  %4351 = and i1 %4347, %4350
  br i1 %4351, label %4502, label %4352

; <label>:4352                                    ; preds = %4286
  %4353 = add i32 %4287, 20
  %4354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4353, i32 undef)  ; BufferLoad(srv,index,wot)
  %4355 = extractvalue %dx.types.ResRet.f32 %4354, 0
  %4356 = add i32 %4287, 24
  %4357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4356, i32 undef)  ; BufferLoad(srv,index,wot)
  %4358 = extractvalue %dx.types.ResRet.f32 %4357, 0
  %4359 = add i32 %4287, 40
  %4360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4359, i32 undef)  ; BufferLoad(srv,index,wot)
  %4361 = extractvalue %dx.types.ResRet.f32 %4360, 0
  %4362 = add i32 %4287, 96
  %4363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4364 = extractvalue %dx.types.ResRet.i32 %4363, 0
  %4365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4365, 2
  %4367 = fmul fast float %4366, %4306
  %4368 = fmul fast float %4366, %4308
  %4369 = extractvalue %dx.types.CBufRet.f32 %4365, 3
  %4370 = fadd fast float %4367, %4369
  %4371 = fadd fast float %4368, %4369
  %4372 = add i32 %4364, 0
  %4373 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4372, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4374 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4373, i32 0)  ; GetDimensions(handle,mipLevel)
  %4375 = extractvalue %dx.types.Dimensions %4374, 0
  %4376 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4375)  ; FirstbitLo(value)
  %4377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.i32 %4377, 1
  %4379 = sub nsw i32 %4378, %4376
  %4380 = sitofp i32 %4379 to float
  %4381 = fsub fast float %4330, %4380
  %4382 = call float @dx.op.binary.f32(i32 35, float %4381, float 0.000000e+00)  ; FMax(a,b)
  %4383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4373, %dx.types.Handle %50, float %4370, float %4371, float %4361, float undef, i32 0, i32 0, i32 undef, float %4382)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  %4385 = fmul fast float %4384, %4355
  %4386 = fadd fast float %4385, %4358
  %4387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.f32 %4387, 0
  %4389 = extractvalue %dx.types.CBufRet.f32 %4387, 1
  %4390 = extractvalue %dx.types.CBufRet.f32 %4387, 2
  %4391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.f32 %4391, 3
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 3
  %4395 = extractvalue %dx.types.CBufRet.f32 %4387, 3
  %4396 = fadd fast float %4392, %4253
  %4397 = fadd fast float %4394, %4254
  %4398 = fadd fast float %4386, %4395
  %4399 = fmul fast float %4396, %4388
  %4400 = call float @dx.op.tertiary.f32(i32 46, float %4397, float %4389, float %4399)  ; FMad(a,b,c)
  %4401 = call float @dx.op.tertiary.f32(i32 46, float %4398, float %4390, float %4400)  ; FMad(a,b,c)
  %4402 = fsub fast float %4401, %4395
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 2
  %4405 = fsub fast float %4402, %4404
  %4406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.i32 %4406, 0
  %4408 = call i32 @dx.op.binary.i32(i32 40, i32 %4284, i32 %4407)  ; UMin(a,b)
  %4409 = mul i32 %4408, 36
  %4410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4409, i32 undef)  ; BufferLoad(srv,index,wot)
  %4411 = extractvalue %dx.types.ResRet.i32 %4410, 0
  %4412 = add i32 %4409, 4
  %4413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.f32 %4413, 0
  %4415 = fmul fast float %4414, %4306
  %4416 = fmul fast float %4414, %4308
  %4417 = extractvalue %dx.types.CBufRet.f32 %4413, 1
  %4418 = fadd fast float %4415, %4417
  %4419 = fadd fast float %4416, %4417
  %4420 = icmp eq i32 %4411, 0
  br i1 %4420, label %4489, label %4421

; <label>:4421                                    ; preds = %4352
  br label %4422

; <label>:4422                                    ; preds = %4479, %4421
  %4423 = phi float [ %4480, %4479 ], [ 0.000000e+00, %4421 ]
  %4424 = phi float [ %4481, %4479 ], [ 0.000000e+00, %4421 ]
  %4425 = phi float [ %4482, %4479 ], [ 0.000000e+00, %4421 ]
  %4426 = phi float [ %4483, %4479 ], [ 0.000000e+00, %4421 ]
  %4427 = phi float [ %4484, %4479 ], [ 0.000000e+00, %4421 ]
  %4428 = phi float [ %4485, %4479 ], [ 0.000000e+00, %4421 ]
  %4429 = phi i32 [ %4486, %4479 ], [ 0, %4421 ]
  %4430 = shl i32 %4429, 2
  %4431 = add i32 %4297, %4430
  %4432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = add i32 %4301, %4430
  %4435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4434, i32 undef)  ; BufferLoad(srv,index,wot)
  %4436 = extractvalue %dx.types.ResRet.i32 %4435, 0
  %4437 = add i32 %4436, 0
  %4438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4437, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4439 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4438, i32 0)  ; GetDimensions(handle,mipLevel)
  %4440 = extractvalue %dx.types.Dimensions %4439, 0
  %4441 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4440)  ; FirstbitLo(value)
  %4442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.i32 %4442, 1
  %4444 = sub nsw i32 %4443, %4441
  %4445 = sitofp i32 %4444 to float
  %4446 = fsub fast float %4330, %4445
  %4447 = call float @dx.op.binary.f32(i32 35, float %4446, float 0.000000e+00)  ; FMax(a,b)
  %4448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4438, %dx.types.Handle %50, float %4418, float %4419, float %4433, float undef, i32 0, i32 0, i32 undef, float %4447)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = fcmp fast ogt float %4449, 0.000000e+00
  br i1 %4450, label %4451, label %4479

; <label>:4451                                    ; preds = %4422
  %4452 = add i32 %4412, %4430
  %4453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4452, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.i32 %4453, 0
  %4455 = and i32 %4454, 32767
  %4456 = mul nuw nsw i32 %4455, 928
  %4457 = add nuw nsw i32 %4456, 48
  %4458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4457, i32 undef)  ; BufferLoad(srv,index,wot)
  %4459 = extractvalue %dx.types.ResRet.f32 %4458, 0
  %4460 = extractvalue %dx.types.ResRet.f32 %4458, 1
  %4461 = extractvalue %dx.types.ResRet.f32 %4458, 2
  %4462 = add nuw nsw i32 %4456, 60
  %4463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4462, i32 undef)  ; BufferLoad(srv,index,wot)
  %4464 = extractvalue %dx.types.ResRet.f32 %4463, 0
  %4465 = extractvalue %dx.types.ResRet.f32 %4463, 1
  %4466 = extractvalue %dx.types.ResRet.f32 %4463, 2
  %4467 = fmul fast float %4459, %4449
  %4468 = fmul fast float %4460, %4449
  %4469 = fmul fast float %4461, %4449
  %4470 = fadd fast float %4467, %4423
  %4471 = fadd fast float %4468, %4424
  %4472 = fadd fast float %4469, %4425
  %4473 = fmul fast float %4464, %4449
  %4474 = fmul fast float %4465, %4449
  %4475 = fmul fast float %4466, %4449
  %4476 = fadd fast float %4473, %4426
  %4477 = fadd fast float %4474, %4427
  %4478 = fadd fast float %4475, %4428
  br label %4479

; <label>:4479                                    ; preds = %4451, %4422
  %4480 = phi float [ %4470, %4451 ], [ %4423, %4422 ]
  %4481 = phi float [ %4471, %4451 ], [ %4424, %4422 ]
  %4482 = phi float [ %4472, %4451 ], [ %4425, %4422 ]
  %4483 = phi float [ %4476, %4451 ], [ %4426, %4422 ]
  %4484 = phi float [ %4477, %4451 ], [ %4427, %4422 ]
  %4485 = phi float [ %4478, %4451 ], [ %4428, %4422 ]
  %4486 = add nuw i32 %4429, 1
  %4487 = icmp eq i32 %4486, %4411
  br i1 %4487, label %4488, label %4422

; <label>:4488                                    ; preds = %4479
  br label %4489

; <label>:4489                                    ; preds = %4488, %4352
  %4490 = phi float [ 0.000000e+00, %4352 ], [ %4480, %4488 ]
  %4491 = phi float [ 0.000000e+00, %4352 ], [ %4481, %4488 ]
  %4492 = phi float [ 0.000000e+00, %4352 ], [ %4482, %4488 ]
  %4493 = phi float [ 0.000000e+00, %4352 ], [ %4483, %4488 ]
  %4494 = phi float [ 0.000000e+00, %4352 ], [ %4484, %4488 ]
  %4495 = phi float [ 0.000000e+00, %4352 ], [ %4485, %4488 ]
  %4496 = fadd fast float %4493, %4490
  %4497 = fmul fast float %4496, 0x3F847AE140000000
  %4498 = fadd fast float %4494, %4491
  %4499 = fmul fast float %4498, 0x3F847AE140000000
  %4500 = fadd fast float %4495, %4492
  %4501 = fmul fast float %4500, 0x3F847AE140000000
  br label %4502

; <label>:4502                                    ; preds = %4489, %4286, %4231, %4228, %4199, %4161
  %4503 = phi float [ %4213, %4199 ], [ -1.310720e+05, %4161 ], [ %4405, %4489 ], [ -1.310720e+05, %4231 ], [ -1.310720e+05, %4286 ], [ -1.310720e+05, %4228 ]
  %4504 = phi float [ %4223, %4199 ], [ 0.000000e+00, %4161 ], [ %4497, %4489 ], [ 0.000000e+00, %4231 ], [ 0.000000e+00, %4286 ], [ 0.000000e+00, %4228 ]
  %4505 = phi float [ %4225, %4199 ], [ 0.000000e+00, %4161 ], [ %4499, %4489 ], [ 0.000000e+00, %4231 ], [ 0.000000e+00, %4286 ], [ 0.000000e+00, %4228 ]
  %4506 = phi float [ %4227, %4199 ], [ 0.000000e+00, %4161 ], [ %4501, %4489 ], [ 0.000000e+00, %4231 ], [ 0.000000e+00, %4286 ], [ 0.000000e+00, %4228 ]
  %4507 = phi i1 [ true, %4199 ], [ false, %4161 ], [ true, %4489 ], [ false, %4231 ], [ false, %4286 ], [ false, %4228 ]
  %4508 = and i32 %278, 3
  %4509 = icmp eq i32 %4508, 1
  %4510 = select i1 %4509, float 1.000000e+00, float 0.000000e+00
  %4511 = fsub fast float %4503, %204
  %4512 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4513 = select i1 %4507, float %4512, float 1.000000e+00
  %4514 = fmul fast float %4513, %4510
  %4515 = icmp eq i32 %4508, 3
  %4516 = select i1 %4515, float 1.000000e+00, float %4514
  %4517 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4516)  ; FMax(a,b)
  %4518 = fcmp fast olt float %4516, 1.000000e+00
  %4519 = fcmp uge float %75, 0.000000e+00
  %4520 = and i1 %4519, %4518
  br i1 %4520, label %4521, label %4531

; <label>:4521                                    ; preds = %4502
  %4522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4523 = extractvalue %dx.types.ResRet.f32 %4522, 0
  %4524 = extractvalue %dx.types.ResRet.f32 %4522, 1
  %4525 = extractvalue %dx.types.ResRet.f32 %4522, 2
  %4526 = fadd fast float %4523, %4517
  %4527 = fcmp ule float %74, 0.000000e+00
  %4528 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4529 = select i1 %4527, float %4528, float 1.000000e+00
  %4530 = fmul fast float %4529, %4525
  br label %4531

; <label>:4531                                    ; preds = %4521, %4502
  %4532 = phi float [ %4526, %4521 ], [ %4517, %4502 ]
  %4533 = phi float [ %4524, %4521 ], [ 0.000000e+00, %4502 ]
  %4534 = phi float [ %4530, %4521 ], [ 0.000000e+00, %4502 ]
  %4535 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4536 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4537 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4538 = fcmp fast une float %4536, 0.000000e+00
  %4539 = fcmp fast une float %4537, 0.000000e+00
  %4540 = or i1 %4538, %4539
  br i1 %4540, label %4541, label %5100

; <label>:4541                                    ; preds = %4531
  br i1 %4538, label %4542, label %4815

; <label>:4542                                    ; preds = %4541
  %4543 = call float @dx.op.unary.f32(i32 23, float %4026)  ; Log(value)
  %4544 = fmul fast float %4543, 4.000000e+00
  %4545 = call float @dx.op.unary.f32(i32 21, float %4544)  ; Exp(value)
  %4546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4547 = extractvalue %dx.types.CBufRet.f32 %4546, 0
  %4548 = fmul fast float %4547, %61
  %4549 = fmul fast float %4547, %62
  %4550 = fmul fast float %4547, %63
  %4551 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4552 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4553 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4554 = call float @dx.op.unary.f32(i32 23, float %4551)  ; Log(value)
  %4555 = call float @dx.op.unary.f32(i32 23, float %4552)  ; Log(value)
  %4556 = call float @dx.op.unary.f32(i32 23, float %4553)  ; Log(value)
  %4557 = fmul fast float %4554, 4.000000e+00
  %4558 = fmul fast float %4555, 4.000000e+00
  %4559 = fmul fast float %4556, 4.000000e+00
  %4560 = call float @dx.op.unary.f32(i32 21, float %4557)  ; Exp(value)
  %4561 = call float @dx.op.unary.f32(i32 21, float %4558)  ; Exp(value)
  %4562 = call float @dx.op.unary.f32(i32 21, float %4559)  ; Exp(value)
  %4563 = fadd fast float %4561, %4560
  %4564 = fadd fast float %4563, %4562
  %4565 = fdiv fast float 1.000000e+00, %4564
  %4566 = fmul fast float %4565, %4560
  %4567 = fcmp fast ogt float %71, 0.000000e+00
  %4568 = fcmp fast ogt float %72, 0.000000e+00
  %4569 = fcmp fast ogt float %73, 0.000000e+00
  %4570 = fcmp fast olt float %71, 0.000000e+00
  %4571 = fcmp fast olt float %72, 0.000000e+00
  %4572 = fcmp fast olt float %73, 0.000000e+00
  %4573 = zext i1 %4567 to i32
  %4574 = zext i1 %4568 to i32
  %4575 = zext i1 %4569 to i32
  %4576 = zext i1 %4570 to i32
  %4577 = zext i1 %4571 to i32
  %4578 = zext i1 %4572 to i32
  %4579 = sub nsw i32 %4573, %4576
  %4580 = sub nsw i32 %4574, %4577
  %4581 = sub nsw i32 %4575, %4578
  %4582 = call float @dx.op.unary.f32(i32 83, float %4548)  ; DerivCoarseX(value)
  %4583 = call float @dx.op.unary.f32(i32 83, float %4549)  ; DerivCoarseX(value)
  %4584 = call float @dx.op.unary.f32(i32 83, float %4550)  ; DerivCoarseX(value)
  %4585 = call float @dx.op.unary.f32(i32 84, float %4548)  ; DerivCoarseY(value)
  %4586 = call float @dx.op.unary.f32(i32 84, float %4549)  ; DerivCoarseY(value)
  %4587 = call float @dx.op.unary.f32(i32 84, float %4550)  ; DerivCoarseY(value)
  %4588 = fcmp fast ole float %313, %4566
  %4589 = fmul fast float %4565, %4563
  %4590 = fcmp fast ole float %313, %4589
  %4591 = select i1 %4590, float %4550, float %4548
  %4592 = select i1 %4590, float %4548, float %4549
  %4593 = select i1 %4588, float %4549, float %4591
  %4594 = select i1 %4588, float %4550, float %4592
  %4595 = select i1 %4590, float %4584, float %4582
  %4596 = select i1 %4590, float %4582, float %4583
  %4597 = select i1 %4588, float %4583, float %4595
  %4598 = select i1 %4588, float %4584, float %4596
  %4599 = select i1 %4590, float %4587, float %4585
  %4600 = select i1 %4590, float %4585, float %4586
  %4601 = select i1 %4588, float %4586, float %4599
  %4602 = select i1 %4588, float %4587, float %4600
  %4603 = call float @dx.op.unary.f32(i32 27, float %4593)  ; Round_ni(value)
  %4604 = call float @dx.op.unary.f32(i32 27, float %4594)  ; Round_ni(value)
  %4605 = fptosi float %4603 to i32
  %4606 = fptosi float %4604 to i32
  %4607 = xor i32 %4606, %4605
  %4608 = sitofp i32 %4607 to float
  %4609 = fptosi float %4608 to i32
  %4610 = sitofp i32 %4609 to float
  %4611 = fmul fast float %4610, 0x3FE3C6EF40000000
  %4612 = frem fast float %4603, 2.560000e+02
  %4613 = frem fast float %4604, 2.560000e+02
  %4614 = fptoui float %4612 to i32
  %4615 = fptoui float %4613 to i32
  %4616 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4614, i32 %4615, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4620 = fadd fast float %4617, %4611
  %4621 = fadd fast float %4618, %4611
  %4622 = fadd fast float %4619, %4611
  %4623 = call float @dx.op.unary.f32(i32 22, float %4620)  ; Frc(value)
  %4624 = call float @dx.op.unary.f32(i32 22, float %4621)  ; Frc(value)
  %4625 = call float @dx.op.unary.f32(i32 22, float %4622)  ; Frc(value)
  %4626 = fmul fast float %4625, 0x401921FB60000000
  %4627 = call float @dx.op.unary.f32(i32 13, float %4626)  ; Sin(value)
  %4628 = call float @dx.op.unary.f32(i32 12, float %4626)  ; Cos(value)
  %4629 = fsub fast float -0.000000e+00, %4628
  %4630 = fmul fast float %4628, %4593
  %4631 = call float @dx.op.tertiary.f32(i32 46, float %4627, float %4594, float %4630)  ; FMad(a,b,c)
  %4632 = fmul fast float %4627, %4593
  %4633 = call float @dx.op.tertiary.f32(i32 46, float %4629, float %4594, float %4632)  ; FMad(a,b,c)
  %4634 = fadd fast float %4631, %4623
  %4635 = fadd fast float %4633, %4624
  %4636 = extractvalue %dx.types.CBufRet.f32 %4546, 3
  %4637 = bitcast float %4636 to i32
  %4638 = icmp eq i32 %4637, 0
  br i1 %4638, label %4677, label %4639

; <label>:4639                                    ; preds = %4542
  %4640 = add i32 %4637, 0
  %4641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4642 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4641, %dx.types.Handle %112, float %4634, float %4635, float undef, float undef, i32 0, i32 0, i32 undef, float %4597, float %4598, float undef, float %4601, float %4602, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4643 = extractvalue %dx.types.ResRet.f32 %4642, 0
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 1
  %4646 = extractvalue %dx.types.CBufRet.f32 %4644, 2
  %4647 = fsub fast float 1.000000e+00, %4536
  %4648 = call float @dx.op.binary.f32(i32 35, float %4647, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4649 = bitcast float %4536 to i32
  %4650 = sitofp i32 %4649 to float
  %4651 = fadd fast float %4650, 0xC1CFBF8940000000
  %4652 = fmul fast float %4646, %4651
  %4653 = fadd fast float %4652, 0x41CFBF8940000000
  %4654 = fptosi float %4653 to i32
  %4655 = bitcast i32 %4654 to float
  %4656 = bitcast float %4648 to i32
  %4657 = sitofp i32 %4656 to float
  %4658 = fadd fast float %4657, 0xC1CFBF8940000000
  %4659 = fmul fast float %4658, %4646
  %4660 = fadd fast float %4659, 0x41CFBF8940000000
  %4661 = fptosi float %4660 to i32
  %4662 = bitcast i32 %4661 to float
  %4663 = fmul fast float %4655, %4645
  %4664 = fmul fast float %4662, %4645
  %4665 = fsub fast float %4648, %4663
  %4666 = fadd fast float %4664, %4648
  %4667 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4668 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4669 = fsub fast float %4643, %4667
  %4670 = fsub fast float %4668, %4667
  %4671 = bitcast float %4670 to i32
  %4672 = sub nsw i32 2129859010, %4671
  %4673 = bitcast i32 %4672 to float
  %4674 = fmul fast float %4673, %4669
  %4675 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4676 = fcmp fast olt float %4675, 0x3F70101020000000
  br i1 %4676, label %4815, label %4677

; <label>:4677                                    ; preds = %4639, %4542
  %4678 = phi float [ %4675, %4639 ], [ %4536, %4542 ]
  %4679 = fmul fast float %4678, %4545
  %4680 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4681 = extractvalue %dx.types.CBufRet.i32 %4680, 1
  %4682 = extractvalue %dx.types.CBufRet.i32 %4680, 0
  %4683 = add i32 %4682, 0
  %4684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4683, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4685 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4684, %dx.types.Handle %111, float %4634, float %4635, float undef, float undef, i32 0, i32 0, i32 undef, float %4597, float %4598, float undef, float %4601, float %4602, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4686 = extractvalue %dx.types.ResRet.f32 %4685, 0
  %4687 = extractvalue %dx.types.ResRet.f32 %4685, 1
  %4688 = extractvalue %dx.types.ResRet.f32 %4685, 2
  %4689 = extractvalue %dx.types.ResRet.f32 %4685, 3
  %4690 = and i32 %4681, 255
  %4691 = uitofp i32 %4690 to float
  %4692 = lshr i32 %4681, 8
  %4693 = and i32 %4692, 255
  %4694 = uitofp i32 %4693 to float
  %4695 = fmul fast float %4689, %4691
  %4696 = fadd fast float %4695, %4694
  %4697 = fmul fast float %4696, 0x3F70101000000000
  %4698 = fadd fast float %4697, 0xBFB99999A0000000
  %4699 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4700 = fmul fast float %4699, 0x3FF1C71C80000000
  %4701 = call float @dx.op.binary.f32(i32 36, float %4697, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4702 = fsub fast float 1.000000e+00, %4700
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = fmul fast float %4703, %4686
  %4705 = fmul fast float %4703, %4687
  %4706 = fmul fast float %4703, %4688
  %4707 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4708 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4709 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4710 = fmul fast float %4700, %4686
  %4711 = fmul fast float %4700, %4687
  %4712 = fmul fast float %4700, %4688
  %4713 = fadd fast float %4710, %4701
  %4714 = fadd fast float %4711, %4701
  %4715 = fadd fast float %4712, %4701
  %4716 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4717 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4718 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4720 = extractvalue %dx.types.CBufRet.i32 %4719, 3
  %4721 = extractvalue %dx.types.CBufRet.i32 %4719, 2
  %4722 = add i32 %4721, 0
  %4723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4724 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4723, %dx.types.Handle %111, float %4634, float %4635, float undef, float undef, i32 0, i32 0, i32 undef, float %4597, float %4598, float undef, float %4601, float %4602, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4725 = extractvalue %dx.types.ResRet.f32 %4724, 0
  %4726 = extractvalue %dx.types.ResRet.f32 %4724, 1
  %4727 = extractvalue %dx.types.ResRet.f32 %4724, 2
  %4728 = extractvalue %dx.types.ResRet.f32 %4724, 3
  %4729 = and i32 %4720, 255
  %4730 = uitofp i32 %4729 to float
  %4731 = lshr i32 %4720, 8
  %4732 = and i32 %4731, 255
  %4733 = uitofp i32 %4732 to float
  %4734 = lshr i32 %4720, 16
  %4735 = and i32 %4734, 255
  %4736 = uitofp i32 %4735 to float
  %4737 = fmul fast float %4736, 0x3F70101000000000
  %4738 = fmul fast float %4725, %4730
  %4739 = fadd fast float %4738, %4733
  %4740 = fmul fast float %4739, 0x3F70101000000000
  %4741 = fadd fast float %4726, -5.000000e-01
  %4742 = fadd fast float %4728, -5.000000e-01
  %4743 = fmul fast float %4741, %4737
  %4744 = fmul fast float %4742, %4737
  %4745 = fadd fast float %4743, 5.000000e-01
  %4746 = fadd fast float %4744, 5.000000e-01
  %4747 = fmul fast float %4745, 2.000000e+00
  %4748 = fadd fast float %4747, -1.000000e+00
  %4749 = fmul fast float %4746, 2.000000e+00
  %4750 = fadd fast float %4749, -1.000000e+00
  %4751 = fadd fast float %4748, %4750
  %4752 = fmul fast float %4751, 5.000000e-01
  %4753 = fsub fast float %4748, %4750
  %4754 = fmul fast float %4753, 5.000000e-01
  %4755 = call float @dx.op.unary.f32(i32 6, float %4752)  ; FAbs(value)
  %4756 = fsub fast float 1.000000e+00, %4755
  %4757 = call float @dx.op.unary.f32(i32 6, float %4754)  ; FAbs(value)
  %4758 = fsub fast float %4756, %4757
  %4759 = call float @dx.op.dot3.f32(i32 55, float %4752, float %4754, float %4758, float %4752, float %4754, float %4758)  ; Dot3(ax,ay,az,bx,by,bz)
  %4760 = call float @dx.op.unary.f32(i32 25, float %4759)  ; Rsqrt(value)
  %4761 = fmul fast float %4752, %4760
  %4762 = fmul fast float %4754, %4760
  %4763 = select i1 %4590, i32 %4580, i32 %4581
  %4764 = select i1 %4588, i32 %4579, i32 %4763
  %4765 = sitofp i32 %4764 to float
  %4766 = fmul fast float %4758, %4765
  %4767 = fmul fast float %4766, %4760
  %4768 = select i1 %4590, float %4767, float %4762
  %4769 = select i1 %4590, float %4762, float %4767
  %4770 = select i1 %4588, float %4767, float %4761
  %4771 = select i1 %4588, float %4762, float %4768
  %4772 = select i1 %4588, float %4761, float %4769
  %4773 = fsub fast float %4707, %4140
  %4774 = fsub fast float %4708, %4141
  %4775 = fsub fast float %4709, %4142
  %4776 = fmul fast float %4773, %4679
  %4777 = fmul fast float %4774, %4679
  %4778 = fmul fast float %4775, %4679
  %4779 = fadd fast float %4776, %4140
  %4780 = fadd fast float %4777, %4141
  %4781 = fadd fast float %4778, %4142
  %4782 = fsub fast float %4716, %4122
  %4783 = fsub fast float %4717, %4123
  %4784 = fsub fast float %4718, %4124
  %4785 = fmul fast float %4782, %4679
  %4786 = fmul fast float %4783, %4679
  %4787 = fmul fast float %4784, %4679
  %4788 = fadd fast float %4785, %4122
  %4789 = fadd fast float %4786, %4123
  %4790 = fadd fast float %4787, %4124
  %4791 = fadd fast float %4770, %4101
  %4792 = fadd fast float %4771, %4102
  %4793 = fadd fast float %4772, %4103
  %4794 = call float @dx.op.dot3.f32(i32 55, float %4791, float %4792, float %4793, float %4791, float %4792, float %4793)  ; Dot3(ax,ay,az,bx,by,bz)
  %4795 = call float @dx.op.unary.f32(i32 25, float %4794)  ; Rsqrt(value)
  %4796 = fmul fast float %4791, %4795
  %4797 = fmul fast float %4792, %4795
  %4798 = fmul fast float %4793, %4795
  %4799 = fsub fast float %4796, %4101
  %4800 = fsub fast float %4797, %4102
  %4801 = fsub fast float %4798, %4103
  %4802 = fmul fast float %4799, %4679
  %4803 = fmul fast float %4800, %4679
  %4804 = fmul fast float %4801, %4679
  %4805 = fadd fast float %4802, %4101
  %4806 = fadd fast float %4803, %4102
  %4807 = fadd fast float %4804, %4103
  %4808 = call float @dx.op.binary.f32(i32 36, float %4026, float %4727)  ; FMin(a,b)
  %4809 = fsub fast float %4808, %4026
  %4810 = fmul fast float %4809, %4679
  %4811 = fadd fast float %4810, %4026
  %4812 = fsub fast float %4740, %4125
  %4813 = fmul fast float %4812, %4679
  %4814 = fadd fast float %4813, %4125
  br label %4815

; <label>:4815                                    ; preds = %4677, %4639, %4541
  %4816 = phi float [ %4788, %4677 ], [ %4122, %4639 ], [ %4122, %4541 ]
  %4817 = phi float [ %4789, %4677 ], [ %4123, %4639 ], [ %4123, %4541 ]
  %4818 = phi float [ %4790, %4677 ], [ %4124, %4639 ], [ %4124, %4541 ]
  %4819 = phi float [ %4779, %4677 ], [ %4140, %4639 ], [ %4140, %4541 ]
  %4820 = phi float [ %4780, %4677 ], [ %4141, %4639 ], [ %4141, %4541 ]
  %4821 = phi float [ %4781, %4677 ], [ %4142, %4639 ], [ %4142, %4541 ]
  %4822 = phi float [ %4805, %4677 ], [ %4101, %4639 ], [ %4101, %4541 ]
  %4823 = phi float [ %4806, %4677 ], [ %4102, %4639 ], [ %4102, %4541 ]
  %4824 = phi float [ %4807, %4677 ], [ %4103, %4639 ], [ %4103, %4541 ]
  %4825 = phi float [ %4814, %4677 ], [ %4125, %4639 ], [ %4125, %4541 ]
  %4826 = phi float [ %4811, %4677 ], [ %4026, %4639 ], [ %4026, %4541 ]
  br i1 %4539, label %4827, label %5100

; <label>:4827                                    ; preds = %4815
  %4828 = call float @dx.op.unary.f32(i32 23, float %4826)  ; Log(value)
  %4829 = fmul fast float %4828, 4.000000e+00
  %4830 = call float @dx.op.unary.f32(i32 21, float %4829)  ; Exp(value)
  %4831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4832 = extractvalue %dx.types.CBufRet.f32 %4831, 0
  %4833 = fmul fast float %4832, %61
  %4834 = fmul fast float %4832, %62
  %4835 = fmul fast float %4832, %63
  %4836 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4837 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4838 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4839 = call float @dx.op.unary.f32(i32 23, float %4836)  ; Log(value)
  %4840 = call float @dx.op.unary.f32(i32 23, float %4837)  ; Log(value)
  %4841 = call float @dx.op.unary.f32(i32 23, float %4838)  ; Log(value)
  %4842 = fmul fast float %4839, 4.000000e+00
  %4843 = fmul fast float %4840, 4.000000e+00
  %4844 = fmul fast float %4841, 4.000000e+00
  %4845 = call float @dx.op.unary.f32(i32 21, float %4842)  ; Exp(value)
  %4846 = call float @dx.op.unary.f32(i32 21, float %4843)  ; Exp(value)
  %4847 = call float @dx.op.unary.f32(i32 21, float %4844)  ; Exp(value)
  %4848 = fadd fast float %4846, %4845
  %4849 = fadd fast float %4848, %4847
  %4850 = fdiv fast float 1.000000e+00, %4849
  %4851 = fmul fast float %4850, %4845
  %4852 = fcmp fast ogt float %71, 0.000000e+00
  %4853 = fcmp fast ogt float %72, 0.000000e+00
  %4854 = fcmp fast ogt float %73, 0.000000e+00
  %4855 = fcmp fast olt float %71, 0.000000e+00
  %4856 = fcmp fast olt float %72, 0.000000e+00
  %4857 = fcmp fast olt float %73, 0.000000e+00
  %4858 = zext i1 %4852 to i32
  %4859 = zext i1 %4853 to i32
  %4860 = zext i1 %4854 to i32
  %4861 = zext i1 %4855 to i32
  %4862 = zext i1 %4856 to i32
  %4863 = zext i1 %4857 to i32
  %4864 = sub nsw i32 %4858, %4861
  %4865 = sub nsw i32 %4859, %4862
  %4866 = sub nsw i32 %4860, %4863
  %4867 = call float @dx.op.unary.f32(i32 83, float %4833)  ; DerivCoarseX(value)
  %4868 = call float @dx.op.unary.f32(i32 83, float %4834)  ; DerivCoarseX(value)
  %4869 = call float @dx.op.unary.f32(i32 83, float %4835)  ; DerivCoarseX(value)
  %4870 = call float @dx.op.unary.f32(i32 84, float %4833)  ; DerivCoarseY(value)
  %4871 = call float @dx.op.unary.f32(i32 84, float %4834)  ; DerivCoarseY(value)
  %4872 = call float @dx.op.unary.f32(i32 84, float %4835)  ; DerivCoarseY(value)
  %4873 = fcmp fast ole float %313, %4851
  %4874 = fmul fast float %4850, %4848
  %4875 = fcmp fast ole float %313, %4874
  %4876 = select i1 %4875, float %4835, float %4833
  %4877 = select i1 %4875, float %4833, float %4834
  %4878 = select i1 %4873, float %4834, float %4876
  %4879 = select i1 %4873, float %4835, float %4877
  %4880 = select i1 %4875, float %4869, float %4867
  %4881 = select i1 %4875, float %4867, float %4868
  %4882 = select i1 %4873, float %4868, float %4880
  %4883 = select i1 %4873, float %4869, float %4881
  %4884 = select i1 %4875, float %4872, float %4870
  %4885 = select i1 %4875, float %4870, float %4871
  %4886 = select i1 %4873, float %4871, float %4884
  %4887 = select i1 %4873, float %4872, float %4885
  %4888 = call float @dx.op.unary.f32(i32 27, float %4878)  ; Round_ni(value)
  %4889 = call float @dx.op.unary.f32(i32 27, float %4879)  ; Round_ni(value)
  %4890 = fptosi float %4888 to i32
  %4891 = fptosi float %4889 to i32
  %4892 = xor i32 %4891, %4890
  %4893 = sitofp i32 %4892 to float
  %4894 = fptosi float %4893 to i32
  %4895 = sitofp i32 %4894 to float
  %4896 = fmul fast float %4895, 0x3FE3C6EF40000000
  %4897 = frem fast float %4888, 2.560000e+02
  %4898 = frem fast float %4889, 2.560000e+02
  %4899 = fptoui float %4897 to i32
  %4900 = fptoui float %4898 to i32
  %4901 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4899, i32 %4900, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4902 = extractvalue %dx.types.ResRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.ResRet.f32 %4901, 1
  %4904 = extractvalue %dx.types.ResRet.f32 %4901, 2
  %4905 = fadd fast float %4902, %4896
  %4906 = fadd fast float %4903, %4896
  %4907 = fadd fast float %4904, %4896
  %4908 = call float @dx.op.unary.f32(i32 22, float %4905)  ; Frc(value)
  %4909 = call float @dx.op.unary.f32(i32 22, float %4906)  ; Frc(value)
  %4910 = call float @dx.op.unary.f32(i32 22, float %4907)  ; Frc(value)
  %4911 = fmul fast float %4910, 0x401921FB60000000
  %4912 = call float @dx.op.unary.f32(i32 13, float %4911)  ; Sin(value)
  %4913 = call float @dx.op.unary.f32(i32 12, float %4911)  ; Cos(value)
  %4914 = fsub fast float -0.000000e+00, %4913
  %4915 = fmul fast float %4913, %4878
  %4916 = call float @dx.op.tertiary.f32(i32 46, float %4912, float %4879, float %4915)  ; FMad(a,b,c)
  %4917 = fmul fast float %4912, %4878
  %4918 = call float @dx.op.tertiary.f32(i32 46, float %4914, float %4879, float %4917)  ; FMad(a,b,c)
  %4919 = fadd fast float %4916, %4908
  %4920 = fadd fast float %4918, %4909
  %4921 = extractvalue %dx.types.CBufRet.f32 %4831, 3
  %4922 = bitcast float %4921 to i32
  %4923 = icmp eq i32 %4922, 0
  br i1 %4923, label %4962, label %4924

; <label>:4924                                    ; preds = %4827
  %4925 = add i32 %4922, 0
  %4926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4927 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4926, %dx.types.Handle %112, float %4919, float %4920, float undef, float undef, i32 0, i32 0, i32 undef, float %4882, float %4883, float undef, float %4886, float %4887, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4928 = extractvalue %dx.types.ResRet.f32 %4927, 0
  %4929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4930 = extractvalue %dx.types.CBufRet.f32 %4929, 1
  %4931 = extractvalue %dx.types.CBufRet.f32 %4929, 2
  %4932 = fsub fast float 1.000000e+00, %4537
  %4933 = call float @dx.op.binary.f32(i32 35, float %4932, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4934 = bitcast float %4537 to i32
  %4935 = sitofp i32 %4934 to float
  %4936 = fadd fast float %4935, 0xC1CFBF8940000000
  %4937 = fmul fast float %4931, %4936
  %4938 = fadd fast float %4937, 0x41CFBF8940000000
  %4939 = fptosi float %4938 to i32
  %4940 = bitcast i32 %4939 to float
  %4941 = bitcast float %4933 to i32
  %4942 = sitofp i32 %4941 to float
  %4943 = fadd fast float %4942, 0xC1CFBF8940000000
  %4944 = fmul fast float %4943, %4931
  %4945 = fadd fast float %4944, 0x41CFBF8940000000
  %4946 = fptosi float %4945 to i32
  %4947 = bitcast i32 %4946 to float
  %4948 = fmul fast float %4940, %4930
  %4949 = fmul fast float %4947, %4930
  %4950 = fsub fast float %4933, %4948
  %4951 = fadd fast float %4949, %4933
  %4952 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4953 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4954 = fsub fast float %4928, %4952
  %4955 = fsub fast float %4953, %4952
  %4956 = bitcast float %4955 to i32
  %4957 = sub nsw i32 2129859010, %4956
  %4958 = bitcast i32 %4957 to float
  %4959 = fmul fast float %4958, %4954
  %4960 = call float @dx.op.unary.f32(i32 7, float %4959)  ; Saturate(value)
  %4961 = fcmp fast olt float %4960, 0x3F70101020000000
  br i1 %4961, label %5100, label %4962

; <label>:4962                                    ; preds = %4924, %4827
  %4963 = phi float [ %4960, %4924 ], [ %4537, %4827 ]
  %4964 = fmul fast float %4963, %4830
  %4965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4966 = extractvalue %dx.types.CBufRet.i32 %4965, 1
  %4967 = extractvalue %dx.types.CBufRet.i32 %4965, 0
  %4968 = add i32 %4967, 0
  %4969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4970 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4969, %dx.types.Handle %111, float %4919, float %4920, float undef, float undef, i32 0, i32 0, i32 undef, float %4882, float %4883, float undef, float %4886, float %4887, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4971 = extractvalue %dx.types.ResRet.f32 %4970, 0
  %4972 = extractvalue %dx.types.ResRet.f32 %4970, 1
  %4973 = extractvalue %dx.types.ResRet.f32 %4970, 2
  %4974 = extractvalue %dx.types.ResRet.f32 %4970, 3
  %4975 = and i32 %4966, 255
  %4976 = uitofp i32 %4975 to float
  %4977 = lshr i32 %4966, 8
  %4978 = and i32 %4977, 255
  %4979 = uitofp i32 %4978 to float
  %4980 = fmul fast float %4974, %4976
  %4981 = fadd fast float %4980, %4979
  %4982 = fmul fast float %4981, 0x3F70101000000000
  %4983 = fadd fast float %4982, 0xBFB99999A0000000
  %4984 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4985 = fmul fast float %4984, 0x3FF1C71C80000000
  %4986 = call float @dx.op.binary.f32(i32 36, float %4982, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4987 = fsub fast float 1.000000e+00, %4985
  %4988 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4989 = fmul fast float %4988, %4971
  %4990 = fmul fast float %4988, %4972
  %4991 = fmul fast float %4988, %4973
  %4992 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4994 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4995 = fmul fast float %4985, %4971
  %4996 = fmul fast float %4985, %4972
  %4997 = fmul fast float %4985, %4973
  %4998 = fadd fast float %4995, %4986
  %4999 = fadd fast float %4996, %4986
  %5000 = fadd fast float %4997, %4986
  %5001 = call float @dx.op.unary.f32(i32 7, float %4998)  ; Saturate(value)
  %5002 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5003 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.i32 %5004, 3
  %5006 = extractvalue %dx.types.CBufRet.i32 %5004, 2
  %5007 = add i32 %5006, 0
  %5008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5009 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5008, %dx.types.Handle %111, float %4919, float %4920, float undef, float undef, i32 0, i32 0, i32 undef, float %4882, float %4883, float undef, float %4886, float %4887, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5010 = extractvalue %dx.types.ResRet.f32 %5009, 0
  %5011 = extractvalue %dx.types.ResRet.f32 %5009, 1
  %5012 = extractvalue %dx.types.ResRet.f32 %5009, 2
  %5013 = extractvalue %dx.types.ResRet.f32 %5009, 3
  %5014 = and i32 %5005, 255
  %5015 = uitofp i32 %5014 to float
  %5016 = lshr i32 %5005, 8
  %5017 = and i32 %5016, 255
  %5018 = uitofp i32 %5017 to float
  %5019 = lshr i32 %5005, 16
  %5020 = and i32 %5019, 255
  %5021 = uitofp i32 %5020 to float
  %5022 = fmul fast float %5021, 0x3F70101000000000
  %5023 = fmul fast float %5010, %5015
  %5024 = fadd fast float %5023, %5018
  %5025 = fmul fast float %5024, 0x3F70101000000000
  %5026 = fadd fast float %5011, -5.000000e-01
  %5027 = fadd fast float %5013, -5.000000e-01
  %5028 = fmul fast float %5026, %5022
  %5029 = fmul fast float %5027, %5022
  %5030 = fadd fast float %5028, 5.000000e-01
  %5031 = fadd fast float %5029, 5.000000e-01
  %5032 = fmul fast float %5030, 2.000000e+00
  %5033 = fadd fast float %5032, -1.000000e+00
  %5034 = fmul fast float %5031, 2.000000e+00
  %5035 = fadd fast float %5034, -1.000000e+00
  %5036 = fadd fast float %5033, %5035
  %5037 = fmul fast float %5036, 5.000000e-01
  %5038 = fsub fast float %5033, %5035
  %5039 = fmul fast float %5038, 5.000000e-01
  %5040 = call float @dx.op.unary.f32(i32 6, float %5037)  ; FAbs(value)
  %5041 = fsub fast float 1.000000e+00, %5040
  %5042 = call float @dx.op.unary.f32(i32 6, float %5039)  ; FAbs(value)
  %5043 = fsub fast float %5041, %5042
  %5044 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5039, float %5043, float %5037, float %5039, float %5043)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = call float @dx.op.unary.f32(i32 25, float %5044)  ; Rsqrt(value)
  %5046 = fmul fast float %5037, %5045
  %5047 = fmul fast float %5039, %5045
  %5048 = select i1 %4875, i32 %4865, i32 %4866
  %5049 = select i1 %4873, i32 %4864, i32 %5048
  %5050 = sitofp i32 %5049 to float
  %5051 = fmul fast float %5043, %5050
  %5052 = fmul fast float %5051, %5045
  %5053 = select i1 %4875, float %5052, float %5047
  %5054 = select i1 %4875, float %5047, float %5052
  %5055 = select i1 %4873, float %5052, float %5046
  %5056 = select i1 %4873, float %5047, float %5053
  %5057 = select i1 %4873, float %5046, float %5054
  %5058 = fsub fast float %4992, %4819
  %5059 = fsub fast float %4993, %4820
  %5060 = fsub fast float %4994, %4821
  %5061 = fmul fast float %5058, %4964
  %5062 = fmul fast float %5059, %4964
  %5063 = fmul fast float %5060, %4964
  %5064 = fadd fast float %5061, %4819
  %5065 = fadd fast float %5062, %4820
  %5066 = fadd fast float %5063, %4821
  %5067 = fsub fast float %5001, %4816
  %5068 = fsub fast float %5002, %4817
  %5069 = fsub fast float %5003, %4818
  %5070 = fmul fast float %5067, %4964
  %5071 = fmul fast float %5068, %4964
  %5072 = fmul fast float %5069, %4964
  %5073 = fadd fast float %5070, %4816
  %5074 = fadd fast float %5071, %4817
  %5075 = fadd fast float %5072, %4818
  %5076 = fadd fast float %5055, %4822
  %5077 = fadd fast float %5056, %4823
  %5078 = fadd fast float %5057, %4824
  %5079 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5077, float %5078, float %5076, float %5077, float %5078)  ; Dot3(ax,ay,az,bx,by,bz)
  %5080 = call float @dx.op.unary.f32(i32 25, float %5079)  ; Rsqrt(value)
  %5081 = fmul fast float %5076, %5080
  %5082 = fmul fast float %5077, %5080
  %5083 = fmul fast float %5078, %5080
  %5084 = fsub fast float %5081, %4822
  %5085 = fsub fast float %5082, %4823
  %5086 = fsub fast float %5083, %4824
  %5087 = fmul fast float %5084, %4964
  %5088 = fmul fast float %5085, %4964
  %5089 = fmul fast float %5086, %4964
  %5090 = fadd fast float %5087, %4822
  %5091 = fadd fast float %5088, %4823
  %5092 = fadd fast float %5089, %4824
  %5093 = call float @dx.op.binary.f32(i32 36, float %4826, float %5012)  ; FMin(a,b)
  %5094 = fsub fast float %5093, %4826
  %5095 = fmul fast float %5094, %4964
  %5096 = fadd fast float %5095, %4826
  %5097 = fsub fast float %5025, %4825
  %5098 = fmul fast float %5097, %4964
  %5099 = fadd fast float %5098, %4825
  br label %5100

; <label>:5100                                    ; preds = %4962, %4924, %4815, %4531
  %5101 = phi float [ %5073, %4962 ], [ %4816, %4924 ], [ %4816, %4815 ], [ %4122, %4531 ]
  %5102 = phi float [ %5074, %4962 ], [ %4817, %4924 ], [ %4817, %4815 ], [ %4123, %4531 ]
  %5103 = phi float [ %5075, %4962 ], [ %4818, %4924 ], [ %4818, %4815 ], [ %4124, %4531 ]
  %5104 = phi float [ %5064, %4962 ], [ %4819, %4924 ], [ %4819, %4815 ], [ %4140, %4531 ]
  %5105 = phi float [ %5065, %4962 ], [ %4820, %4924 ], [ %4820, %4815 ], [ %4141, %4531 ]
  %5106 = phi float [ %5066, %4962 ], [ %4821, %4924 ], [ %4821, %4815 ], [ %4142, %4531 ]
  %5107 = phi float [ %5090, %4962 ], [ %4822, %4924 ], [ %4822, %4815 ], [ %4101, %4531 ]
  %5108 = phi float [ %5091, %4962 ], [ %4823, %4924 ], [ %4823, %4815 ], [ %4102, %4531 ]
  %5109 = phi float [ %5092, %4962 ], [ %4824, %4924 ], [ %4824, %4815 ], [ %4103, %4531 ]
  %5110 = phi float [ %5099, %4962 ], [ %4825, %4924 ], [ %4825, %4815 ], [ %4125, %4531 ]
  %5111 = phi float [ %5096, %4962 ], [ %4826, %4924 ], [ %4826, %4815 ], [ %4026, %4531 ]
  %5112 = fcmp fast une float %4535, 0.000000e+00
  br i1 %5112, label %5113, label %5282

; <label>:5113                                    ; preds = %5100
  %5114 = call float @dx.op.dot3.f32(i32 55, float %202, float %203, float %204, float %202, float %203, float %204)  ; Dot3(ax,ay,az,bx,by,bz)
  %5115 = call float @dx.op.unary.f32(i32 25, float %5114)  ; Rsqrt(value)
  %5116 = fmul fast float %202, %5115
  %5117 = fsub fast float -0.000000e+00, %5116
  %5118 = fmul fast float %203, %5115
  %5119 = fsub fast float -0.000000e+00, %5118
  %5120 = fmul fast float %204, %5115
  %5121 = fsub fast float -0.000000e+00, %5120
  %5122 = call float @dx.op.dot3.f32(i32 55, float %5117, float %5119, float %5121, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5123 = fmul fast float %4535, 2.500000e+00
  %5124 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5125 = fmul fast float %4535, 0x4013FFFFE0000000
  %5126 = fadd fast float %5125, 0xBFFFFFFFE0000000
  %5127 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5128 = fmul fast float %4535, 0x4004000020000000
  %5129 = fadd fast float %5128, 0xBFF8000040000000
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fmul fast float %4104, 1.000000e+01
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5133 = fmul fast float %5132, 2.000000e+00
  %5134 = fsub fast float 3.000000e+00, %5133
  %5135 = fmul fast float %5132, %5132
  %5136 = fmul fast float %5135, %5134
  %5137 = fsub fast float 1.000000e+00, %5136
  %5138 = fsub fast float 0x3FE3333340000000, %5110
  %5139 = fmul fast float %5138, 0x400AAAAAA0000000
  %5140 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5141 = fmul fast float %5137, %5140
  %5142 = fmul fast float %5104, 0x3FEA2B8620000000
  %5143 = fmul fast float %5105, 0x3FEA2B8620000000
  %5144 = fmul fast float %5106, 0x3FEA2B8620000000
  %5145 = fadd fast float %5142, 0x3FC81DFBA0000000
  %5146 = fmul fast float %5145, %5104
  %5147 = fadd fast float %5146, 0x3F910E6020000000
  %5148 = fadd fast float %5143, 0x3FC81DFBA0000000
  %5149 = fmul fast float %5148, %5105
  %5150 = fadd fast float %5149, 0x3F910E6020000000
  %5151 = fadd fast float %5144, 0x3FC81DFBA0000000
  %5152 = fmul fast float %5151, %5106
  %5153 = fadd fast float %5152, 0x3F910E6020000000
  %5154 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5155 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5156 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5157 = fsub fast float %5154, %5104
  %5158 = fsub fast float %5155, %5105
  %5159 = fsub fast float %5156, %5106
  %5160 = fmul fast float %5157, %5124
  %5161 = fmul fast float %5160, %5141
  %5162 = fmul fast float %5158, %5124
  %5163 = fmul fast float %5162, %5141
  %5164 = fmul fast float %5159, %5124
  %5165 = fmul fast float %5164, %5141
  %5166 = fadd fast float %5161, %5104
  %5167 = fadd fast float %5163, %5105
  %5168 = fadd fast float %5165, %5106
  %5169 = fmul fast float %5111, %5111
  %5170 = fmul fast float %5169, %5169
  %5171 = fadd fast float %5127, 1.000000e+00
  %5172 = fsub fast float %5171, %5141
  %5173 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5174 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5175 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5176 = fsub fast float 1.000000e+00, %5170
  %5177 = call float @dx.op.binary.f32(i32 36, float %5173, float %5176)  ; FMin(a,b)
  %5178 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5179 = call float @dx.op.binary.f32(i32 35, float %5177, float %5178)  ; FMax(a,b)
  %5180 = fadd fast float %5175, 0xBFE4CCCCC0000000
  %5181 = fmul fast float %5180, 0x4006DB6DA0000000
  %5182 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  %5183 = fmul fast float %5182, 2.000000e+00
  %5184 = fsub fast float 3.000000e+00, %5183
  %5185 = bitcast float %5101 to i32
  %5186 = ashr i32 %5185, 1
  %5187 = add nsw i32 %5186, 532487669
  %5188 = bitcast i32 %5187 to float
  %5189 = fsub fast float 1.000000e+00, %5188
  %5190 = bitcast float %5189 to i32
  %5191 = sub nsw i32 2129859010, %5190
  %5192 = bitcast i32 %5191 to float
  %5193 = fmul fast float %5192, 2.000000e+00
  %5194 = bitcast float %5102 to i32
  %5195 = ashr i32 %5194, 1
  %5196 = add nsw i32 %5195, 532487669
  %5197 = bitcast i32 %5196 to float
  %5198 = fsub fast float 1.000000e+00, %5197
  %5199 = bitcast float %5198 to i32
  %5200 = sub nsw i32 2129859010, %5199
  %5201 = bitcast i32 %5200 to float
  %5202 = fmul fast float %5201, 2.000000e+00
  %5203 = bitcast float %5103 to i32
  %5204 = ashr i32 %5203, 1
  %5205 = add nsw i32 %5204, 532487669
  %5206 = bitcast i32 %5205 to float
  %5207 = fsub fast float 1.000000e+00, %5206
  %5208 = bitcast float %5207 to i32
  %5209 = sub nsw i32 2129859010, %5208
  %5210 = bitcast i32 %5209 to float
  %5211 = fmul fast float %5210, 2.000000e+00
  %5212 = fsub fast float 0x4002A9FBE0000000, %5193
  %5213 = fadd fast float %5193, 0x3FD54FDF00000000
  %5214 = bitcast float %5213 to i32
  %5215 = sub nsw i32 2129859010, %5214
  %5216 = bitcast i32 %5215 to float
  %5217 = fmul fast float %5216, %5212
  %5218 = fmul fast float %5217, %5217
  %5219 = fsub fast float 0x4002A9FBE0000000, %5202
  %5220 = fadd fast float %5202, 0x3FD54FDF00000000
  %5221 = bitcast float %5220 to i32
  %5222 = sub nsw i32 2129859010, %5221
  %5223 = bitcast i32 %5222 to float
  %5224 = fmul fast float %5223, %5219
  %5225 = fmul fast float %5224, %5224
  %5226 = fsub fast float 0x4002A9FBE0000000, %5211
  %5227 = fadd fast float %5211, 0x3FD54FDF00000000
  %5228 = bitcast float %5227 to i32
  %5229 = sub nsw i32 2129859010, %5228
  %5230 = bitcast i32 %5229 to float
  %5231 = fmul fast float %5230, %5226
  %5232 = fmul fast float %5231, %5231
  %5233 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5218)  ; FMax(a,b)
  %5234 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5225)  ; FMax(a,b)
  %5235 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5232)  ; FMax(a,b)
  %5236 = fsub fast float 1.000000e+00, %5122
  %5237 = fadd fast float %5236, %5137
  %5238 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5239 = fsub fast float 1.000000e+00, %4516
  %5240 = fmul fast float %5179, %5239
  %5241 = fmul fast float %5182, %5182
  %5242 = fmul fast float %5241, %5240
  %5243 = fmul fast float %5242, %5184
  %5244 = fmul fast float %5239, 0xBFE99999A0000000
  %5245 = fmul fast float %5244, %5124
  %5246 = fmul fast float %5245, %5141
  %5247 = fadd fast float %5246, 1.000000e+00
  %5248 = fadd fast float %5110, -1.000000e+00
  %5249 = fmul fast float %5247, %5248
  %5250 = fadd fast float %5249, 1.000000e+00
  %5251 = fsub fast float %5233, %5101
  %5252 = fsub fast float %5234, %5102
  %5253 = fsub fast float %5235, %5103
  %5254 = fmul fast float %5243, %5251
  %5255 = fmul fast float %5243, %5252
  %5256 = fmul fast float %5243, %5253
  %5257 = fadd fast float %5254, %5101
  %5258 = fadd fast float %5255, %5102
  %5259 = fadd fast float %5256, %5103
  %5260 = fsub fast float %122, %5107
  %5261 = fsub fast float %123, %5108
  %5262 = fsub fast float %124, %5109
  %5263 = fmul fast float %5243, %5260
  %5264 = fmul fast float %5243, %5261
  %5265 = fmul fast float %5243, %5262
  %5266 = fadd fast float %5263, %5107
  %5267 = fadd fast float %5264, %5108
  %5268 = fadd fast float %5265, %5109
  %5269 = fmul fast float %5243, %5238
  %5270 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5271 = fsub fast float 1.000000e+00, %5270
  %5272 = fmul fast float %5269, %5271
  %5273 = fadd fast float %5272, %5270
  %5274 = fsub fast float 1.000000e+00, %5111
  %5275 = fmul fast float %5243, %5274
  %5276 = fadd fast float %5275, %5111
  %5277 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %5266, float %5267, float %5268)  ; Dot3(ax,ay,az,bx,by,bz)
  %5278 = call float @dx.op.unary.f32(i32 25, float %5277)  ; Rsqrt(value)
  %5279 = fmul fast float %5266, %5278
  %5280 = fmul fast float %5267, %5278
  %5281 = fmul fast float %5268, %5278
  br label %5282

; <label>:5282                                    ; preds = %5113, %5100
  %5283 = phi float [ %5257, %5113 ], [ %5101, %5100 ]
  %5284 = phi float [ %5258, %5113 ], [ %5102, %5100 ]
  %5285 = phi float [ %5259, %5113 ], [ %5103, %5100 ]
  %5286 = phi float [ %5166, %5113 ], [ %5104, %5100 ]
  %5287 = phi float [ %5167, %5113 ], [ %5105, %5100 ]
  %5288 = phi float [ %5168, %5113 ], [ %5106, %5100 ]
  %5289 = phi float [ %5279, %5113 ], [ %5107, %5100 ]
  %5290 = phi float [ %5280, %5113 ], [ %5108, %5100 ]
  %5291 = phi float [ %5281, %5113 ], [ %5109, %5100 ]
  %5292 = phi float [ %5273, %5113 ], [ %5110, %5100 ]
  %5293 = phi float [ %5276, %5113 ], [ %5111, %5100 ]
  %5294 = icmp eq i32 %60, 0
  br i1 %5294, label %5325, label %5295

; <label>:5295                                    ; preds = %5282
  %5296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5296, 2
  %5298 = extractvalue %dx.types.CBufRet.f32 %5296, 3
  %5299 = fmul fast float %5297, %115
  %5300 = fmul fast float %5298, %116
  %5301 = fmul fast float %5299, 1.024000e+03
  %5302 = fmul fast float %5300, 1.024000e+03
  %5303 = fadd fast float %5301, -5.120000e+02
  %5304 = fadd fast float %5302, -5.120000e+02
  %5305 = fmul fast float %5299, 0x4081BEDF00000000
  %5306 = fadd fast float %5305, 0xC071BEDF00000000
  %5307 = call float @dx.op.unary.f32(i32 22, float %5306)  ; Frc(value)
  %5308 = fmul fast float %5303, %5307
  %5309 = fadd fast float %5308, %5304
  %5310 = fmul fast float %5300, 0x4073BEBE20000000
  %5311 = fadd fast float %5310, 0xC063BEBE20000000
  %5312 = call float @dx.op.unary.f32(i32 22, float %5311)  ; Frc(value)
  %5313 = fmul fast float %5304, %5312
  %5314 = fadd fast float %5313, %5303
  %5315 = fmul fast float %5309, %5314
  %5316 = call float @dx.op.unary.f32(i32 22, float %5315)  ; Frc(value)
  %5317 = add i32 %356, 12
  %5318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5317, i32 undef)  ; BufferLoad(srv,index,wot)
  %5319 = extractvalue %dx.types.ResRet.i32 %5318, 0
  %5320 = and i32 %5319, 255
  %5321 = uitofp i32 %5320 to float
  %5322 = fmul fast float %5321, 0x3F70101020000000
  %5323 = fcmp fast olt float %5316, %5322
  br i1 %5323, label %5324, label %5325

; <label>:5324                                    ; preds = %5295
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5325

; <label>:5325                                    ; preds = %5324, %5295, %5282
  %5326 = fsub fast float -0.000000e+00, %204
  %5327 = call float @dx.op.dot3.f32(i32 55, float %202, float %203, float %204, float %202, float %203, float %204)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = call float @dx.op.unary.f32(i32 25, float %5327)  ; Rsqrt(value)
  %5329 = fmul fast float %5328, %202
  %5330 = fmul fast float %5328, %203
  %5331 = fmul fast float %5328, %204
  %5332 = fsub fast float -0.000000e+00, %5329
  %5333 = fsub fast float -0.000000e+00, %5330
  %5334 = fsub fast float -0.000000e+00, %5331
  %5335 = select i1 %302, float 0.000000e+00, float %5285
  %5336 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %5332, float %5333, float %5334)  ; Dot3(ax,ay,az,bx,by,bz)
  %5337 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5338 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5330, float %5331, float %5289, float %5290, float %5291)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = fmul fast float %5338, 2.000000e+00
  %5340 = fmul fast float %5339, %5289
  %5341 = fmul fast float %5339, %5290
  %5342 = fmul fast float %5339, %5291
  %5343 = fsub fast float %5329, %5340
  %5344 = fsub fast float %5330, %5341
  %5345 = fsub fast float %5331, %5342
  %5346 = call float @dx.op.binary.f32(i32 36, float %5293, float 1.000000e+00)  ; FMin(a,b)
  %5347 = fsub fast float 1.000000e+00, %5346
  %5348 = bitcast float %5347 to i32
  %5349 = ashr i32 %5348, 1
  %5350 = add nsw i32 %5349, 532487669
  %5351 = bitcast i32 %5350 to float
  %5352 = fsub fast float 1.000000e+00, %5292
  %5353 = call float @dx.op.binary.f32(i32 35, float %5352, float 0x3F847AE140000000)  ; FMax(a,b)
  %5354 = fmul fast float %5353, %5353
  %5355 = fmul fast float %5354, %5354
  %5356 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %5351, float %5355, float %5356, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5358 = extractvalue %dx.types.ResRet.f32 %5357, 0
  %5359 = fsub fast float 1.000000e+00, %5293
  %5360 = bitcast float %5359 to i32
  %5361 = sub nsw i32 2129859010, %5360
  %5362 = fsub fast float 1.000000e+00, %82
  %5363 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5364 = call float @dx.op.binary.f32(i32 35, float %5363, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5365 = fdiv fast float %5362, %5364
  %5366 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5368 = fmul fast float %5367, 5.000000e-01
  %5369 = fadd fast float %5368, 5.000000e-01
  %5370 = fmul fast float %5369, %82
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = call float @dx.op.unary.f32(i32 7, float %5371)  ; Saturate(value)
  %5373 = fmul fast float %5372, %5365
  %5374 = fadd fast float %5370, %5373
  %5375 = fsub fast float 5.000000e-01, %5368
  %5376 = fmul fast float %5375, %5286
  %5377 = fmul fast float %5375, %5287
  %5378 = fmul fast float %5375, %5288
  %5379 = fadd fast float %5374, %5376
  %5380 = fadd fast float %5374, %5377
  %5381 = fadd fast float %5374, %5378
  %5382 = call float @dx.op.dot3.f32(i32 55, float %5343, float %5344, float %5345, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5383 = call float @dx.op.unary.f32(i32 7, float %5382)  ; Saturate(value)
  %5384 = fmul fast float %5383, 5.000000e-01
  %5385 = fadd fast float %5384, 5.000000e-01
  %5386 = fmul fast float %5385, %82
  %5387 = call float @dx.op.dot3.f32(i32 55, float %5343, float %5344, float %5345, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = call float @dx.op.unary.f32(i32 7, float %5387)  ; Saturate(value)
  %5389 = fmul fast float %5388, %5365
  %5390 = fadd fast float %5386, %5389
  %5391 = fsub fast float 5.000000e-01, %5384
  %5392 = fmul fast float %5391, %5286
  %5393 = fmul fast float %5391, %5287
  %5394 = fmul fast float %5391, %5288
  %5395 = fadd fast float %5390, %5392
  %5396 = fadd fast float %5390, %5393
  %5397 = fadd fast float %5390, %5394
  %5398 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 0
  %5401 = call float @dx.op.binary.f32(i32 36, float %5286, float %5400)  ; FMin(a,b)
  %5402 = fmul fast float %5401, %5347
  %5403 = fsub fast float 1.000000e+00, %5402
  %5404 = bitcast float %5403 to i32
  %5405 = sub nsw i32 2129859010, %5404
  %5406 = bitcast i32 %5405 to float
  %5407 = call float @dx.op.binary.f32(i32 36, float %5287, float %5400)  ; FMin(a,b)
  %5408 = fmul fast float %5407, %5347
  %5409 = fsub fast float 1.000000e+00, %5408
  %5410 = bitcast float %5409 to i32
  %5411 = sub nsw i32 2129859010, %5410
  %5412 = bitcast i32 %5411 to float
  %5413 = call float @dx.op.binary.f32(i32 36, float %5288, float %5400)  ; FMin(a,b)
  %5414 = fmul fast float %5413, %5347
  %5415 = fsub fast float 1.000000e+00, %5414
  %5416 = bitcast float %5415 to i32
  %5417 = sub nsw i32 2129859010, %5416
  %5418 = bitcast i32 %5417 to float
  %5419 = fmul fast float %5346, %83
  %5420 = fmul fast float %5419, %5379
  %5421 = fmul fast float %5420, %5406
  %5422 = fmul fast float %5346, %84
  %5423 = fmul fast float %5422, %5380
  %5424 = fmul fast float %5423, %5412
  %5425 = fmul fast float %5346, %85
  %5426 = fmul fast float %5425, %5381
  %5427 = fmul fast float %5426, %5418
  %5428 = call float @dx.op.binary.f32(i32 36, float %5283, float %5400)  ; FMin(a,b)
  %5429 = fmul fast float %5428, %5347
  %5430 = fsub fast float 1.000000e+00, %5429
  %5431 = bitcast float %5430 to i32
  %5432 = sub nsw i32 2129859010, %5431
  %5433 = bitcast i32 %5432 to float
  %5434 = call float @dx.op.binary.f32(i32 36, float %5284, float %5400)  ; FMin(a,b)
  %5435 = fmul fast float %5434, %5347
  %5436 = fsub fast float 1.000000e+00, %5435
  %5437 = bitcast float %5436 to i32
  %5438 = sub nsw i32 2129859010, %5437
  %5439 = bitcast i32 %5438 to float
  %5440 = call float @dx.op.binary.f32(i32 36, float %5335, float %5400)  ; FMin(a,b)
  %5441 = fmul fast float %5440, %5347
  %5442 = fsub fast float 1.000000e+00, %5441
  %5443 = bitcast float %5442 to i32
  %5444 = sub nsw i32 2129859010, %5443
  %5445 = bitcast i32 %5444 to float
  %5446 = fmul fast float %5419, %5395
  %5447 = fmul fast float %5446, %5433
  %5448 = fmul fast float %5422, %5396
  %5449 = fmul fast float %5448, %5439
  %5450 = fmul fast float %5425, %5397
  %5451 = fmul fast float %5450, %5445
  %5452 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5424, float %5427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5453 = select i1 %302, float 0.000000e+00, float %5421
  %5454 = select i1 %302, float %5452, float %5424
  %5455 = select i1 %302, float 0.000000e+00, float %5427
  %5456 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5449, float %5451, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = select i1 %302, float 0.000000e+00, float %5447
  %5458 = select i1 %302, float %5456, float %5449
  %5459 = select i1 %302, float 0.000000e+00, float %5451
  %5460 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %5461 = fmul fast float %5460, %5453
  %5462 = fmul fast float %5460, %5454
  %5463 = fmul fast float %5455, %5460
  %5464 = fmul fast float %4027, %4027
  %5465 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  %5466 = fmul fast float %5337, 9.843750e-01
  %5467 = fmul fast float %5292, 9.843750e-01
  %5468 = fadd fast float %5466, 7.812500e-03
  %5469 = fadd fast float %5467, 7.812500e-03
  %5470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %52, float %5468, float %5469, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5471 = extractvalue %dx.types.ResRet.f32 %5470, 0
  %5472 = extractvalue %dx.types.ResRet.f32 %5470, 1
  %5473 = extractvalue %dx.types.ResRet.f32 %5470, 2
  %5474 = extractvalue %dx.types.ResRet.f32 %5470, 3
  %5475 = fsub fast float 1.000000e+00, %5465
  %5476 = fsub fast float %5473, %5471
  %5477 = fsub fast float %5474, %5472
  %5478 = fmul fast float %5476, %5475
  %5479 = fmul fast float %5477, %5475
  %5480 = fadd fast float %5478, %5471
  %5481 = fadd fast float %5479, %5472
  %5482 = fmul fast float %5480, %5283
  %5483 = fmul fast float %5480, %5284
  %5484 = fmul fast float %5480, %5335
  %5485 = fadd fast float %5482, %5481
  %5486 = fadd fast float %5483, %5481
  %5487 = fadd fast float %5484, %5481
  %5488 = call float @dx.op.binary.f32(i32 35, float %5486, float %5487)  ; FMax(a,b)
  %5489 = call float @dx.op.binary.f32(i32 35, float %5485, float %5488)  ; FMax(a,b)
  %5490 = fsub fast float 1.000000e+00, %5489
  %5491 = fmul fast float %5489, %5292
  %5492 = fadd fast float %5491, %5292
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 2
  %5495 = extractvalue %dx.types.CBufRet.f32 %5493, 3
  %5496 = fmul fast float %5492, %5494
  %5497 = fadd fast float %5496, %5495
  %5498 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5499 = fsub fast float 1.000000e+00, %5358
  %5500 = fadd fast float %5499, %5498
  %5501 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5502 = fcmp fast olt float %5501, 1.000000e+00
  br i1 %5502, label %5503, label %5979

; <label>:5503                                    ; preds = %5325
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 2
  %5506 = extractvalue %dx.types.CBufRet.f32 %5504, 3
  %5507 = fmul fast float %5505, %115
  %5508 = fmul fast float %5506, %116
  %5509 = fptoui float %5507 to i32
  %5510 = fptoui float %5508 to i32
  %5511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.f32 %5511, 0
  %5513 = extractvalue %dx.types.CBufRet.f32 %5511, 2
  %5514 = extractvalue %dx.types.CBufRet.f32 %5511, 3
  %5515 = fadd fast float %102, -4.000000e+00
  %5516 = call float @dx.op.binary.f32(i32 35, float %5515, float 0.000000e+00)  ; FMax(a,b)
  %5517 = fadd fast float %5516, %5512
  %5518 = fmul fast float %5517, %5513
  %5519 = call float @dx.op.unary.f32(i32 23, float %5518)  ; Log(value)
  %5520 = fmul fast float %5519, %5514
  %5521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5522 = extractvalue %dx.types.CBufRet.f32 %5521, 2
  %5523 = fmul fast float %5520, %5522
  %5524 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  %5525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.i32 %5525, 1
  %5527 = add i32 %5526, -1
  %5528 = uitofp i32 %5526 to float
  %5529 = fmul fast float %5528, %5524
  %5530 = fptoui float %5529 to i32
  %5531 = call i32 @dx.op.binary.i32(i32 40, i32 %5530, i32 %5527)  ; UMin(a,b)
  %5532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5533 = extractvalue %dx.types.CBufRet.i32 %5532, 2
  %5534 = extractvalue %dx.types.CBufRet.i32 %5532, 3
  %5535 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5510, i32 %5533, i32 %5509)  ; UMad(a,b,c)
  %5536 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5531, i32 %5534, i32 %5535)  ; UMad(a,b,c)
  %5537 = call float @dx.op.binary.f32(i32 35, float %102, float 0.000000e+00)  ; FMax(a,b)
  %5538 = fptoui float %5537 to i32
  %5539 = lshr i32 %5538, 5
  %5540 = call i32 @dx.op.binary.i32(i32 40, i32 %5539, i32 8191)  ; UMin(a,b)
  %5541 = fsub fast float %4503, %204
  %5542 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5543 = fcmp fast ogt float %5542, 0.000000e+00
  %5544 = fcmp fast ogt float %5345, 0.000000e+00
  %5545 = and i1 %5544, %5543
  br i1 %5545, label %5546, label %5575

; <label>:5546                                    ; preds = %5503
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5343, float %5344, float %5345, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = call float @dx.op.binary.f32(i32 35, float %5547, float -1.000000e+00)  ; FMax(a,b)
  %5549 = call float @dx.op.binary.f32(i32 36, float %5548, float 1.000000e+00)  ; FMin(a,b)
  %5550 = fmul fast float %5549, %5549
  %5551 = fsub fast float 1.000000e+00, %5550
  %5552 = fmul fast float %5551, 0x3FFC6E2300000000
  %5553 = fsub fast float 1.000000e+00, %5552
  %5554 = fcmp fast ogt float %5553, 0.000000e+00
  %5555 = call float @dx.op.unary.f32(i32 24, float %5553)  ; Sqrt(value)
  %5556 = fsub fast float 1.000000e+00, %5555
  %5557 = call float @dx.op.unary.f32(i32 23, float %5556)  ; Log(value)
  %5558 = fmul fast float %5557, 5.000000e+00
  %5559 = call float @dx.op.unary.f32(i32 21, float %5558)  ; Exp(value)
  %5560 = fmul fast float %5559, 0x3FEF591A60000000
  %5561 = fadd fast float %5560, 0x3F94DCB540000000
  %5562 = select i1 %5554, float %5561, float 1.000000e+00
  %5563 = fcmp fast oge float %5562, 1.000000e+00
  %5564 = fmul fast float %5547, 2.000000e+00
  %5565 = fadd fast float %5564, %5345
  %5566 = select i1 %5563, float %5565, float %5345
  %5567 = fsub fast float %5566, %5345
  %5568 = fmul fast float %5567, %5542
  %5569 = fadd fast float %5568, %5345
  %5570 = call float @dx.op.dot3.f32(i32 55, float %5343, float %5344, float %5569, float %5343, float %5344, float %5569)  ; Dot3(ax,ay,az,bx,by,bz)
  %5571 = call float @dx.op.unary.f32(i32 25, float %5570)  ; Rsqrt(value)
  %5572 = fmul fast float %5571, %5343
  %5573 = fmul fast float %5571, %5344
  %5574 = fmul fast float %5569, %5571
  br label %5575

; <label>:5575                                    ; preds = %5546, %5503
  %5576 = phi float [ %5572, %5546 ], [ %5343, %5503 ]
  %5577 = phi float [ %5573, %5546 ], [ %5344, %5503 ]
  %5578 = phi float [ %5574, %5546 ], [ %5345, %5503 ]
  %5579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5580 = extractvalue %dx.types.CBufRet.i32 %5579, 2
  %5581 = add nsw i32 %5580, -1
  %5582 = call i32 @dx.op.binary.i32(i32 37, i32 %5581, i32 0)  ; IMax(a,b)
  %5583 = shl i32 %5540, 2
  %5584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %5583, i32 undef)  ; BufferLoad(srv,index,wot)
  %5585 = extractvalue %dx.types.ResRet.i32 %5584, 0
  %5586 = lshr i32 %5585, 16
  %5587 = and i32 %5585, 65535
  %5588 = lshr i32 %5585, 21
  %5589 = lshr i32 %5587, 5
  %5590 = call i32 @dx.op.binary.i32(i32 40, i32 %5589, i32 %5582)  ; UMin(a,b)
  %5591 = icmp ugt i32 %5588, %5590
  br i1 %5591, label %5955, label %5592

; <label>:5592                                    ; preds = %5575
  br label %5593

; <label>:5593                                    ; preds = %5947, %5592
  %5594 = phi float [ %5948, %5947 ], [ 0.000000e+00, %5592 ]
  %5595 = phi float [ %5949, %5947 ], [ 0.000000e+00, %5592 ]
  %5596 = phi float [ %5950, %5947 ], [ 0.000000e+00, %5592 ]
  %5597 = phi float [ %5951, %5947 ], [ 1.000000e+00, %5592 ]
  %5598 = phi i32 [ %5952, %5947 ], [ %5588, %5592 ]
  %5599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5600 = extractvalue %dx.types.CBufRet.i32 %5599, 2
  %5601 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5536, i32 %5600, i32 %5598)  ; UMad(a,b,c)
  %5602 = shl i32 %5601, 2
  %5603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %5602, i32 undef)  ; BufferLoad(srv,index,wot)
  %5604 = extractvalue %dx.types.ResRet.i32 %5603, 0
  %5605 = shl i32 %5598, 5
  %5606 = sub nsw i32 %5586, %5605
  %5607 = call i32 @dx.op.binary.i32(i32 37, i32 %5606, i32 0)  ; IMax(a,b)
  %5608 = call i32 @dx.op.binary.i32(i32 38, i32 %5607, i32 31)  ; IMin(a,b)
  %5609 = sub nsw i32 1, %5586
  %5610 = add nsw i32 %5609, %5587
  %5611 = call i32 @dx.op.binary.i32(i32 37, i32 %5610, i32 0)  ; IMax(a,b)
  %5612 = call i32 @dx.op.binary.i32(i32 38, i32 %5611, i32 32)  ; IMin(a,b)
  %5613 = and i32 %5612, 31
  %5614 = shl i32 -1, %5613
  %5615 = xor i32 %5614, -1
  %5616 = and i32 %5608, 31
  %5617 = shl i32 %5615, %5616
  %5618 = icmp eq i32 %5612, 32
  %5619 = select i1 %5618, i32 -1, i32 %5617
  %5620 = and i32 %5619, %5604
  %5621 = icmp eq i32 %5620, 0
  br i1 %5621, label %5947, label %5622

; <label>:5622                                    ; preds = %5593
  br label %5623

; <label>:5623                                    ; preds = %5730, %5622
  %5624 = phi float [ %5731, %5730 ], [ %5594, %5622 ]
  %5625 = phi float [ %5732, %5730 ], [ %5595, %5622 ]
  %5626 = phi float [ %5733, %5730 ], [ %5596, %5622 ]
  %5627 = phi float [ %5734, %5730 ], [ %5597, %5622 ]
  %5628 = phi i32 [ %5633, %5730 ], [ %5620, %5622 ]
  %5629 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5628)  ; FirstbitLo(value)
  %5630 = add i32 %5629, %5605
  %5631 = and i32 %5629, 31
  %5632 = shl i32 1, %5631
  %5633 = xor i32 %5632, %5628
  %5634 = mul i32 %5630, 72
  %5635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %5634, i32 undef)  ; BufferLoad(srv,index,wot)
  %5636 = extractvalue %dx.types.ResRet.f32 %5635, 0
  %5637 = extractvalue %dx.types.ResRet.f32 %5635, 1
  %5638 = extractvalue %dx.types.ResRet.f32 %5635, 2
  %5639 = add i32 %5634, 12
  %5640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %5639, i32 undef)  ; BufferLoad(srv,index,wot)
  %5641 = extractvalue %dx.types.ResRet.i32 %5640, 0
  %5642 = add i32 %5634, 16
  %5643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %5642, i32 undef)  ; BufferLoad(srv,index,wot)
  %5644 = extractvalue %dx.types.ResRet.f32 %5643, 0
  %5645 = extractvalue %dx.types.ResRet.f32 %5643, 1
  %5646 = extractvalue %dx.types.ResRet.f32 %5643, 2
  %5647 = add i32 %5634, 28
  %5648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %5647, i32 undef)  ; BufferLoad(srv,index,wot)
  %5649 = extractvalue %dx.types.ResRet.f32 %5648, 0
  %5650 = add i32 %5634, 32
  %5651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %5650, i32 undef)  ; BufferLoad(srv,index,wot)
  %5652 = extractvalue %dx.types.ResRet.f32 %5651, 0
  %5653 = extractvalue %dx.types.ResRet.f32 %5651, 1
  %5654 = extractvalue %dx.types.ResRet.f32 %5651, 2
  %5655 = extractvalue %dx.types.ResRet.f32 %5651, 3
  %5656 = add i32 %5634, 48
  %5657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %5656, i32 undef)  ; BufferLoad(srv,index,wot)
  %5658 = extractvalue %dx.types.ResRet.f32 %5657, 0
  %5659 = extractvalue %dx.types.ResRet.f32 %5657, 1
  %5660 = add i32 %5634, 56
  %5661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %5660, i32 undef)  ; BufferLoad(srv,index,wot)
  %5662 = extractvalue %dx.types.ResRet.f32 %5661, 0
  %5663 = extractvalue %dx.types.ResRet.f32 %5661, 1
  %5664 = add i32 %5634, 64
  %5665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %5664, i32 undef)  ; BufferLoad(srv,index,wot)
  %5666 = extractvalue %dx.types.ResRet.f32 %5665, 0
  %5667 = extractvalue %dx.types.ResRet.f32 %5665, 1
  %5668 = mul i32 %5630, 60
  %5669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5668, i32 undef)  ; BufferLoad(srv,index,wot)
  %5670 = extractvalue %dx.types.ResRet.f32 %5669, 0
  %5671 = extractvalue %dx.types.ResRet.f32 %5669, 1
  %5672 = extractvalue %dx.types.ResRet.f32 %5669, 2
  %5673 = add i32 %5668, 12
  %5674 = add i32 %5668, 48
  %5675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5674, i32 undef)  ; BufferLoad(srv,index,wot)
  %5676 = extractvalue %dx.types.ResRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.ResRet.f32 %5675, 1
  %5678 = extractvalue %dx.types.ResRet.f32 %5675, 2
  %5679 = and i32 %5641, 32767
  %5680 = bitcast float %5636 to i32
  %5681 = icmp eq i32 %5680, -1
  %5682 = bitcast float %5637 to i32
  %5683 = and i32 %5641, 32768
  %5684 = icmp ne i32 %5683, 0
  %5685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5686 = extractvalue %dx.types.CBufRet.f32 %5685, 0
  %5687 = extractvalue %dx.types.CBufRet.f32 %5685, 1
  %5688 = extractvalue %dx.types.CBufRet.f32 %5685, 2
  %5689 = fsub fast float %5670, %5686
  %5690 = fsub fast float %5671, %5687
  %5691 = fsub fast float %5672, %5688
  %5692 = fsub fast float %202, %5689
  %5693 = fsub fast float %203, %5690
  %5694 = fsub fast float %204, %5691
  %5695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5673, i32 undef)  ; BufferLoad(srv,index,wot)
  %5696 = extractvalue %dx.types.ResRet.f32 %5695, 0
  %5697 = extractvalue %dx.types.ResRet.f32 %5695, 1
  %5698 = extractvalue %dx.types.ResRet.f32 %5695, 2
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %5694, float %5696, float %5697, float %5698)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = add i32 %5668, 24
  %5701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5700, i32 undef)  ; BufferLoad(srv,index,wot)
  %5702 = extractvalue %dx.types.ResRet.f32 %5701, 0
  %5703 = extractvalue %dx.types.ResRet.f32 %5701, 1
  %5704 = extractvalue %dx.types.ResRet.f32 %5701, 2
  %5705 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %5694, float %5702, float %5703, float %5704)  ; Dot3(ax,ay,az,bx,by,bz)
  %5706 = add i32 %5668, 36
  %5707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5706, i32 undef)  ; BufferLoad(srv,index,wot)
  %5708 = extractvalue %dx.types.ResRet.f32 %5707, 0
  %5709 = extractvalue %dx.types.ResRet.f32 %5707, 1
  %5710 = extractvalue %dx.types.ResRet.f32 %5707, 2
  %5711 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %5694, float %5708, float %5709, float %5710)  ; Dot3(ax,ay,az,bx,by,bz)
  %5712 = call float @dx.op.unary.f32(i32 6, float %5699)  ; FAbs(value)
  %5713 = call float @dx.op.unary.f32(i32 6, float %5705)  ; FAbs(value)
  %5714 = call float @dx.op.unary.f32(i32 6, float %5711)  ; FAbs(value)
  %5715 = fsub fast float %5676, %5712
  %5716 = fsub fast float %5677, %5713
  %5717 = fsub fast float %5678, %5714
  %5718 = fmul fast float %5715, %5644
  %5719 = fmul fast float %5716, %5645
  %5720 = fmul fast float %5717, %5646
  %5721 = call float @dx.op.binary.f32(i32 36, float %5719, float %5720)  ; FMin(a,b)
  %5722 = call float @dx.op.binary.f32(i32 36, float %5718, float %5721)  ; FMin(a,b)
  %5723 = call float @dx.op.unary.f32(i32 7, float %5722)  ; Saturate(value)
  %5724 = call float @dx.op.binary.f32(i32 36, float %5627, float %5723)  ; FMin(a,b)
  %5725 = uitofp i1 %5684 to float
  %5726 = fadd fast float %5542, 1.000000e+00
  %5727 = fsub fast float %5726, %5725
  %5728 = fmul fast float %5724, %5727
  %5729 = fcmp fast ogt float %5728, 0.000000e+00
  br i1 %5729, label %5736, label %5730

; <label>:5730                                    ; preds = %5878, %5623
  %5731 = phi float [ %5942, %5878 ], [ %5624, %5623 ]
  %5732 = phi float [ %5943, %5878 ], [ %5625, %5623 ]
  %5733 = phi float [ %5944, %5878 ], [ %5626, %5623 ]
  %5734 = phi float [ %5945, %5878 ], [ %5627, %5623 ]
  %5735 = icmp eq i32 %5628, %5632
  br i1 %5735, label %5946, label %5623

; <label>:5736                                    ; preds = %5623
  br i1 %5681, label %5794, label %5737

; <label>:5737                                    ; preds = %5736
  %5738 = fsub fast float -0.000000e+00, %5696
  %5739 = fsub fast float -0.000000e+00, %5697
  %5740 = fsub fast float -0.000000e+00, %5698
  %5741 = call float @dx.op.dot3.f32(i32 55, float %5576, float %5577, float %5578, float %5738, float %5739, float %5740)  ; Dot3(ax,ay,az,bx,by,bz)
  %5742 = fsub fast float -0.000000e+00, %5741
  %5743 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %5694, float %5738, float %5739, float %5740)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = fadd fast float %5743, %5659
  %5745 = fadd fast float %5658, %5743
  %5746 = fsub fast float -0.000000e+00, %5745
  %5747 = fcmp ogt float %5741, -0.000000e+00
  %5748 = select i1 %5747, float %5746, float %5744
  %5749 = call float @dx.op.unary.f32(i32 6, float %5742)  ; FAbs(value)
  %5750 = fdiv fast float 1.000000e+00, %5749
  %5751 = fmul fast float %5748, %5750
  %5752 = call float @dx.op.binary.f32(i32 35, float %5751, float 0.000000e+00)  ; FMax(a,b)
  %5753 = fsub fast float -0.000000e+00, %5702
  %5754 = fsub fast float -0.000000e+00, %5703
  %5755 = fsub fast float -0.000000e+00, %5704
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5576, float %5577, float %5578, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = fsub fast float -0.000000e+00, %5756
  %5758 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %5694, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5759 = fadd fast float %5758, %5663
  %5760 = fadd fast float %5662, %5758
  %5761 = fsub fast float -0.000000e+00, %5760
  %5762 = fcmp ogt float %5756, -0.000000e+00
  %5763 = select i1 %5762, float %5761, float %5759
  %5764 = call float @dx.op.unary.f32(i32 6, float %5757)  ; FAbs(value)
  %5765 = fdiv fast float 1.000000e+00, %5764
  %5766 = fmul fast float %5763, %5765
  %5767 = call float @dx.op.binary.f32(i32 35, float %5766, float 0.000000e+00)  ; FMax(a,b)
  %5768 = fsub fast float -0.000000e+00, %5708
  %5769 = fsub fast float -0.000000e+00, %5709
  %5770 = fsub fast float -0.000000e+00, %5710
  %5771 = call float @dx.op.dot3.f32(i32 55, float %5576, float %5577, float %5578, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5772 = fsub fast float -0.000000e+00, %5771
  %5773 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %5694, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5774 = fadd fast float %5773, %5667
  %5775 = fadd fast float %5666, %5773
  %5776 = fsub fast float -0.000000e+00, %5775
  %5777 = fcmp ogt float %5771, -0.000000e+00
  %5778 = select i1 %5777, float %5776, float %5774
  %5779 = call float @dx.op.unary.f32(i32 6, float %5772)  ; FAbs(value)
  %5780 = fdiv fast float 1.000000e+00, %5779
  %5781 = fmul fast float %5778, %5780
  %5782 = call float @dx.op.binary.f32(i32 35, float %5781, float 0.000000e+00)  ; FMax(a,b)
  %5783 = call float @dx.op.binary.f32(i32 36, float %5767, float %5782)  ; FMin(a,b)
  %5784 = call float @dx.op.binary.f32(i32 36, float %5752, float %5783)  ; FMin(a,b)
  %5785 = fmul fast float %5784, %5576
  %5786 = fmul fast float %5784, %5577
  %5787 = fmul fast float %5784, %5578
  %5788 = fadd fast float %5785, %202
  %5789 = fadd fast float %5786, %203
  %5790 = fadd fast float %5787, %204
  %5791 = fsub fast float %5788, %5636
  %5792 = fsub fast float %5789, %5637
  %5793 = fsub fast float %5790, %5638
  br label %5801

; <label>:5794                                    ; preds = %5736
  %5795 = fmul fast float %5576, 8.096000e+03
  %5796 = fmul fast float %5577, 8.096000e+03
  %5797 = fmul fast float %5578, 8.096000e+03
  %5798 = fadd fast float %5795, %202
  %5799 = fadd fast float %5796, %203
  %5800 = fadd fast float %5797, %204
  br label %5801

; <label>:5801                                    ; preds = %5794, %5737
  %5802 = phi float [ %5576, %5794 ], [ %5791, %5737 ]
  %5803 = phi float [ %5577, %5794 ], [ %5792, %5737 ]
  %5804 = phi float [ %5578, %5794 ], [ %5793, %5737 ]
  %5805 = phi float [ %5798, %5794 ], [ %5788, %5737 ]
  %5806 = phi float [ %5799, %5794 ], [ %5789, %5737 ]
  %5807 = phi float [ %5800, %5794 ], [ %5790, %5737 ]
  %5808 = fcmp fast olt float %5655, 1.000000e+00
  br i1 %5808, label %5809, label %5840, !dx.controlflow.hints !101

; <label>:5809                                    ; preds = %5801
  %5810 = fmul fast float %5804, %5653
  %5811 = fmul fast float %5803, %5654
  %5812 = fsub fast float %5810, %5811
  %5813 = fmul fast float %5802, %5654
  %5814 = fmul fast float %5804, %5652
  %5815 = fsub fast float %5813, %5814
  %5816 = fmul fast float %5803, %5652
  %5817 = fmul fast float %5802, %5653
  %5818 = fsub fast float %5816, %5817
  %5819 = fmul fast float %5812, 2.000000e+00
  %5820 = fmul fast float %5815, 2.000000e+00
  %5821 = fmul fast float %5818, 2.000000e+00
  %5822 = fmul fast float %5819, %5655
  %5823 = fmul fast float %5820, %5655
  %5824 = fmul fast float %5821, %5655
  %5825 = fmul fast float %5821, %5653
  %5826 = fmul fast float %5820, %5654
  %5827 = fmul fast float %5819, %5654
  %5828 = fmul fast float %5821, %5652
  %5829 = fmul fast float %5820, %5652
  %5830 = fmul fast float %5819, %5653
  %5831 = fadd fast float %5825, %5802
  %5832 = fadd fast float %5831, %5822
  %5833 = fsub fast float %5832, %5826
  %5834 = fsub fast float %5803, %5828
  %5835 = fadd fast float %5834, %5823
  %5836 = fadd fast float %5835, %5827
  %5837 = fadd fast float %5824, %5804
  %5838 = fsub fast float %5837, %5830
  %5839 = fadd fast float %5838, %5829
  br label %5840

; <label>:5840                                    ; preds = %5809, %5801
  %5841 = phi float [ %5833, %5809 ], [ %5802, %5801 ]
  %5842 = phi float [ %5836, %5809 ], [ %5803, %5801 ]
  %5843 = phi float [ %5839, %5809 ], [ %5804, %5801 ]
  br i1 %5681, label %5875, label %5844

; <label>:5844                                    ; preds = %5840
  %5845 = fmul fast float %5292, 0x400187C840000000
  %5846 = fadd fast float %5845, 0xC00EFC2120000000
  %5847 = fmul fast float %5846, %5292
  %5848 = fadd fast float %5847, 0x3FE5D16340000000
  %5849 = fmul fast float %5848, %5292
  %5850 = fadd fast float %5849, 1.000000e+00
  %5851 = call float @dx.op.unary.f32(i32 7, float %5850)  ; Saturate(value)
  %5852 = fsub fast float %5805, %202
  %5853 = fsub fast float %5806, %203
  %5854 = fsub fast float %5807, %204
  %5855 = fsub fast float %5805, %5636
  %5856 = fsub fast float %5806, %5637
  %5857 = fsub fast float %5807, %5638
  %5858 = call float @dx.op.dot3.f32(i32 55, float %5852, float %5853, float %5854, float %5852, float %5853, float %5854)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = call float @dx.op.dot3.f32(i32 55, float %5855, float %5856, float %5857, float %5855, float %5856, float %5857)  ; Dot3(ax,ay,az,bx,by,bz)
  %5860 = fadd fast float %5859, 0x3EE4F8B580000000
  %5861 = fdiv fast float %5858, %5860
  %5862 = bitcast float %5861 to i32
  %5863 = ashr i32 %5862, 1
  %5864 = add nsw i32 %5863, 532487669
  %5865 = bitcast i32 %5864 to float
  %5866 = fmul fast float %5865, %5851
  %5867 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5868 = fmul fast float %5867, 0x4009981AE0000000
  %5869 = fsub fast float 0x40111BBD80000000, %5868
  %5870 = fmul fast float %5869, %5867
  %5871 = fadd fast float %5870, 0xC0009F6020000000
  %5872 = fmul fast float %5871, %5867
  %5873 = fadd fast float %5872, 1.000000e+00
  %5874 = call float @dx.op.unary.f32(i32 7, float %5873)  ; Saturate(value)
  br label %5878

; <label>:5875                                    ; preds = %5840
  %5876 = icmp ne i32 %5682, -1
  %5877 = zext i1 %5876 to i32
  br label %5878

; <label>:5878                                    ; preds = %5875, %5844
  %5879 = phi float [ %5292, %5875 ], [ %5874, %5844 ]
  %5880 = phi i32 [ %5877, %5875 ], [ 0, %5844 ]
  %5881 = fmul float %5879, 5.000000e+00
  %5882 = fsub float 5.000000e+00, %5881
  %5883 = icmp ne i32 %5880, 0
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 3
  %5886 = fadd fast float %5885, %5882
  %5887 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5886)  ; FMax(a,b)
  %5888 = call float @dx.op.unary.f32(i32 6, float %5841)  ; FAbs(value)
  %5889 = call float @dx.op.unary.f32(i32 6, float %5842)  ; FAbs(value)
  %5890 = fadd fast float %5889, %5888
  %5891 = call float @dx.op.unary.f32(i32 6, float %5843)  ; FAbs(value)
  %5892 = fadd fast float %5890, %5891
  %5893 = fcmp fast oeq float %5892, 0.000000e+00
  %5894 = fdiv fast float 1.000000e+00, %5892
  %5895 = select i1 %5893, float 1.000000e+00, float %5894
  %5896 = fmul fast float %5895, %5841
  %5897 = fmul fast float %5895, %5842
  %5898 = call float @dx.op.unary.f32(i32 6, float %5897)  ; FAbs(value)
  %5899 = call float @dx.op.unary.f32(i32 6, float %5896)  ; FAbs(value)
  %5900 = fsub fast float 1.000000e+00, %5898
  %5901 = fsub fast float 1.000000e+00, %5899
  %5902 = fcmp fast oge float %5896, 0.000000e+00
  %5903 = fcmp fast oge float %5897, 0.000000e+00
  %5904 = select i1 %5902, float 1.000000e+00, float -1.000000e+00
  %5905 = select i1 %5903, float 1.000000e+00, float -1.000000e+00
  %5906 = fcmp fast ole float %5843, 0.000000e+00
  %5907 = fmul fast float %5904, %5900
  %5908 = fmul fast float %5905, %5901
  %5909 = select i1 %5906, float %5907, float %5896
  %5910 = select i1 %5906, float %5908, float %5897
  %5911 = fmul fast float %5909, 5.000000e-01
  %5912 = fmul fast float %5910, 5.000000e-01
  %5913 = fadd fast float %5911, 5.000000e-01
  %5914 = fadd fast float %5912, 5.000000e-01
  %5915 = uitofp i32 %5679 to float
  %5916 = call float @dx.op.binary.f32(i32 36, float %5887, float 3.000000e+00)  ; FMin(a,b)
  %5917 = fadd fast float %5916, 2.000000e+00
  %5918 = call float @dx.op.unary.f32(i32 21, float %5917)  ; Exp(value)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5884, 1
  %5920 = fmul fast float %5919, %5918
  %5921 = fmul fast float %5920, 2.000000e+00
  %5922 = fsub fast float 1.000000e+00, %5921
  %5923 = fmul fast float %5913, %5922
  %5924 = fmul fast float %5914, %5922
  %5925 = fadd fast float %5923, %5920
  %5926 = fadd fast float %5924, %5920
  %5927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %50, float %5925, float %5926, float %5915, float undef, i32 0, i32 0, i32 undef, float %5887)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5928 = extractvalue %dx.types.ResRet.f32 %5927, 0
  %5929 = extractvalue %dx.types.ResRet.f32 %5927, 1
  %5930 = extractvalue %dx.types.ResRet.f32 %5927, 2
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 3
  %5933 = fmul fast float %5932, %5649
  %5934 = call float @dx.op.binary.f32(i32 36, float %5398, float %5933)  ; FMin(a,b)
  %5935 = select i1 %5883, float %5934, float %5933
  %5936 = fmul fast float %5928, %5728
  %5937 = fmul fast float %5936, %5935
  %5938 = fmul fast float %5929, %5728
  %5939 = fmul fast float %5938, %5935
  %5940 = fmul fast float %5930, %5728
  %5941 = fmul fast float %5940, %5935
  %5942 = fadd fast float %5937, %5624
  %5943 = fadd fast float %5939, %5625
  %5944 = fadd fast float %5941, %5626
  %5945 = fsub fast float %5627, %5728
  br label %5730

; <label>:5946                                    ; preds = %5730
  br label %5947

; <label>:5947                                    ; preds = %5946, %5593
  %5948 = phi float [ %5594, %5593 ], [ %5731, %5946 ]
  %5949 = phi float [ %5595, %5593 ], [ %5732, %5946 ]
  %5950 = phi float [ %5596, %5593 ], [ %5733, %5946 ]
  %5951 = phi float [ %5597, %5593 ], [ %5734, %5946 ]
  %5952 = add i32 %5598, 1
  %5953 = icmp ugt i32 %5952, %5590
  br i1 %5953, label %5954, label %5593, !llvm.loop !102

; <label>:5954                                    ; preds = %5947
  br label %5955

; <label>:5955                                    ; preds = %5954, %5575
  %5956 = phi float [ 0.000000e+00, %5575 ], [ %5948, %5954 ]
  %5957 = phi float [ 0.000000e+00, %5575 ], [ %5949, %5954 ]
  %5958 = phi float [ 0.000000e+00, %5575 ], [ %5950, %5954 ]
  %5959 = call float @dx.op.dot3.f32(i32 55, float %5956, float %5957, float %5958, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5960 = select i1 %302, float 0.000000e+00, float %5956
  %5961 = select i1 %302, float %5959, float %5957
  %5962 = select i1 %302, float 0.000000e+00, float %5958
  %5963 = fcmp fast olt float %5501, 0.000000e+00
  %5964 = call float @dx.op.unary.f32(i32 6, float %5501)  ; FAbs(value)
  %5965 = fmul fast float %5964, %5457
  %5966 = fmul fast float %5964, %5458
  %5967 = fmul fast float %5964, %5459
  %5968 = select i1 %5963, float %5457, float %5965
  %5969 = select i1 %5963, float %5458, float %5966
  %5970 = select i1 %5963, float %5459, float %5967
  %5971 = fsub fast float 1.000000e+00, %5964
  %5972 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  %5973 = fmul fast float %5972, %5960
  %5974 = fmul fast float %5972, %5961
  %5975 = fmul fast float %5972, %5962
  %5976 = fadd fast float %5968, %5973
  %5977 = fadd fast float %5969, %5974
  %5978 = fadd fast float %5970, %5975
  br label %5979

; <label>:5979                                    ; preds = %5955, %5325
  %5980 = phi float [ %5976, %5955 ], [ %5457, %5325 ]
  %5981 = phi float [ %5977, %5955 ], [ %5458, %5325 ]
  %5982 = phi float [ %5978, %5955 ], [ %5459, %5325 ]
  %5983 = fmul fast float %202, %202
  %5984 = fmul fast float %203, %203
  %5985 = fadd fast float %5984, %5983
  %5986 = fmul fast float %204, %204
  %5987 = fadd fast float %5985, %5986
  %5988 = call float @dx.op.unary.f32(i32 24, float %5987)  ; Sqrt(value)
  %5989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5989, 1
  %5991 = fsub fast float %5988, %5990
  %5992 = extractvalue %dx.types.CBufRet.f32 %5989, 2
  %5993 = fmul fast float %5991, %5992
  %5994 = call float @dx.op.unary.f32(i32 7, float %5993)  ; Saturate(value)
  %5995 = extractvalue %dx.types.CBufRet.f32 %5989, 0
  %5996 = extractvalue %dx.types.CBufRet.f32 %5989, 3
  %5997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %5998 = extractvalue %dx.types.ResRet.i32 %5997, 0
  %5999 = and i32 %5998, 4194304
  %6000 = icmp ne i32 %5999, 0
  %6001 = and i32 %5998, 8388608
  %6002 = icmp ne i32 %6001, 0
  %6003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6004 = extractvalue %dx.types.CBufRet.f32 %6003, 0
  %6005 = extractvalue %dx.types.CBufRet.f32 %6003, 1
  %6006 = extractvalue %dx.types.CBufRet.f32 %6003, 2
  %6007 = extractvalue %dx.types.CBufRet.f32 %6003, 3
  %6008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6009 = extractvalue %dx.types.CBufRet.f32 %6008, 0
  %6010 = extractvalue %dx.types.CBufRet.f32 %6008, 1
  %6011 = extractvalue %dx.types.CBufRet.f32 %6008, 2
  %6012 = extractvalue %dx.types.CBufRet.f32 %6008, 3
  %6013 = select i1 %6000, float %6004, float %6009
  %6014 = select i1 %6000, float %6005, float %6010
  %6015 = select i1 %6000, float %6006, float %6011
  %6016 = select i1 %6000, float %6007, float %6012
  %6017 = select i1 %6002, float 0.000000e+00, float %6016
  %6018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6019 = extractvalue %dx.types.CBufRet.f32 %6018, 0
  %6020 = extractvalue %dx.types.CBufRet.f32 %6018, 1
  %6021 = select i1 %6000, float %6019, float %6020
  %6022 = select i1 %6002, float 0.000000e+00, float %6021
  %6023 = extractvalue %dx.types.CBufRet.f32 %6018, 2
  %6024 = extractvalue %dx.types.CBufRet.f32 %6018, 3
  %6025 = select i1 %6000, float %6023, float %6024
  %6026 = select i1 %6002, float 0.000000e+00, float %6025
  %6027 = fmul fast float %5994, %64
  %6028 = fmul fast float %6027, %5996
  %6029 = fmul fast float %6028, %6026
  %6030 = fadd fast float %6029, 1.000000e+00
  %6031 = fmul fast float %5490, %5461
  %6032 = fmul fast float %6031, %6030
  %6033 = fmul fast float %5490, %5462
  %6034 = fmul fast float %6033, %6030
  %6035 = fmul fast float %5490, %5463
  %6036 = fmul fast float %6035, %6030
  %6037 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6038 = fcmp fast ogt float %6037, 0x3E7FF19E20000000
  %6039 = fdiv fast float 1.000000e+00, %6037
  %6040 = select i1 %6038, float %6039, float 0.000000e+00
  %6041 = fmul fast float %6040, %5286
  %6042 = fmul fast float %6040, %5287
  %6043 = fmul fast float %6040, %5288
  %6044 = fadd fast float %6041, -1.000000e+00
  %6045 = fadd fast float %6042, -1.000000e+00
  %6046 = fadd fast float %6043, -1.000000e+00
  %6047 = fmul fast float %6044, 5.000000e-01
  %6048 = fmul fast float %6045, 5.000000e-01
  %6049 = fmul fast float %6046, 5.000000e-01
  %6050 = fadd fast float %6047, 1.000000e+00
  %6051 = fadd fast float %6048, 1.000000e+00
  %6052 = fadd fast float %6049, 1.000000e+00
  %6053 = fsub fast float %6013, %6050
  %6054 = fsub fast float %6014, %6051
  %6055 = fsub fast float %6015, %6052
  %6056 = fmul fast float %6053, %6017
  %6057 = fmul fast float %6054, %6017
  %6058 = fmul fast float %6055, %6017
  %6059 = fadd fast float %6056, %6050
  %6060 = fadd fast float %6057, %6051
  %6061 = fadd fast float %6058, %6052
  %6062 = call float @dx.op.binary.f32(i32 35, float %5337, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6063 = fdiv fast float %4027, %6062
  %6064 = fcmp fast olt float %4126, 1.270000e+02
  %6065 = fcmp fast olt float %4127, 1.270000e+02
  %6066 = fcmp fast olt float %4128, 1.270000e+02
  %6067 = fmul fast float %4126, 0xBFF7154760000000
  %6068 = fmul fast float %6067, %6063
  %6069 = fmul fast float %4127, 0xBFF7154760000000
  %6070 = fmul fast float %6069, %6063
  %6071 = fmul fast float %4128, 0xBFF7154760000000
  %6072 = fmul fast float %6071, %6063
  %6073 = call float @dx.op.unary.f32(i32 21, float %6068)  ; Exp(value)
  %6074 = call float @dx.op.unary.f32(i32 21, float %6070)  ; Exp(value)
  %6075 = call float @dx.op.unary.f32(i32 21, float %6072)  ; Exp(value)
  %6076 = call float @dx.op.unary.f32(i32 7, float %6073)  ; Saturate(value)
  %6077 = call float @dx.op.unary.f32(i32 7, float %6074)  ; Saturate(value)
  %6078 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6079 = select i1 %6064, float %6076, float 0.000000e+00
  %6080 = select i1 %6065, float %6077, float 0.000000e+00
  %6081 = select i1 %6066, float %6078, float 0.000000e+00
  %6082 = fmul fast float %6079, %5490
  %6083 = fmul fast float %6080, %5490
  %6084 = fmul fast float %6081, %5490
  %6085 = fadd fast float %6082, -1.000000e+00
  %6086 = fadd fast float %6083, -1.000000e+00
  %6087 = fadd fast float %6084, -1.000000e+00
  %6088 = fmul fast float %5980, %5485
  %6089 = fmul fast float %5981, %5486
  %6090 = fmul fast float %5982, %5487
  %6091 = fsub fast float 1.000000e+00, %5337
  %6092 = bitcast float %6091 to i32
  %6093 = sitofp i32 %6092 to float
  %6094 = fmul fast float %6093, 5.000000e+00
  %6095 = fadd fast float %6094, 0xC1EFBF8940000000
  %6096 = fptosi float %6095 to i32
  %6097 = bitcast i32 %6096 to float
  %6098 = fmul fast float %6097, %64
  %6099 = fmul fast float %6098, %5994
  %6100 = fmul fast float %6099, %5995
  %6101 = fmul fast float %6100, %6022
  %6102 = fmul fast float %6031, %6101
  %6103 = fmul fast float %6102, %6059
  %6104 = fmul fast float %6033, %6101
  %6105 = fmul fast float %6104, %6060
  %6106 = fmul fast float %6035, %6101
  %6107 = fmul fast float %6106, %6061
  %6108 = fmul fast float %6032, %1375
  %6109 = fmul fast float %6034, %1375
  %6110 = fmul fast float %6036, %1375
  %6111 = fadd fast float %6088, %4071
  %6112 = fadd fast float %6111, %6103
  %6113 = fmul fast float %6112, %1375
  %6114 = fadd fast float %6089, %4073
  %6115 = fadd fast float %6114, %6105
  %6116 = fmul fast float %6115, %1375
  %6117 = fadd fast float %6090, %4075
  %6118 = fadd fast float %6117, %6107
  %6119 = fmul fast float %6118, %1375
  %6120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.f32 %6120, 3
  %6122 = fcmp fast oeq float %6121, 0.000000e+00
  br i1 %6122, label %7770, label %6123

; <label>:6123                                    ; preds = %5979
  %6124 = extractvalue %dx.types.CBufRet.f32 %6120, 0
  %6125 = extractvalue %dx.types.CBufRet.f32 %6120, 1
  %6126 = extractvalue %dx.types.CBufRet.f32 %6120, 2
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 0
  %6129 = extractvalue %dx.types.CBufRet.f32 %6127, 1
  %6130 = extractvalue %dx.types.CBufRet.f32 %6127, 2
  %6131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6132 = extractvalue %dx.types.CBufRet.f32 %6131, 0
  %6133 = extractvalue %dx.types.CBufRet.f32 %6131, 1
  %6134 = call float @dx.op.dot3.f32(i32 55, float %6128, float %6129, float %6130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6135 = select i1 %302, float %6132, float %6128
  %6136 = select i1 %302, float %6134, float %6129
  %6137 = select i1 %302, float %6133, float %6130
  %6138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6139 = extractvalue %dx.types.CBufRet.f32 %6138, 2
  %6140 = fmul fast float %6139, %122
  %6141 = fmul fast float %6139, %123
  %6142 = fmul fast float %6139, %124
  %6143 = fadd fast float %6140, %202
  %6144 = fadd fast float %6141, %203
  %6145 = fadd fast float %6142, %204
  %6146 = fcmp fast olt float %6121, 0.000000e+00
  br i1 %6146, label %7404, label %6147

; <label>:6147                                    ; preds = %6123
  %6148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6149 = extractvalue %dx.types.CBufRet.f32 %6148, 0
  %6150 = extractvalue %dx.types.CBufRet.f32 %6148, 1
  %6151 = extractvalue %dx.types.CBufRet.f32 %6148, 2
  %6152 = extractvalue %dx.types.CBufRet.f32 %6148, 3
  %6153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6154 = extractvalue %dx.types.CBufRet.f32 %6153, 0
  %6155 = extractvalue %dx.types.CBufRet.f32 %6153, 1
  %6156 = extractvalue %dx.types.CBufRet.f32 %6153, 2
  %6157 = extractvalue %dx.types.CBufRet.f32 %6153, 3
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 0
  %6160 = extractvalue %dx.types.CBufRet.f32 %6158, 1
  %6161 = extractvalue %dx.types.CBufRet.f32 %6158, 2
  %6162 = extractvalue %dx.types.CBufRet.f32 %6158, 3
  %6163 = fmul fast float %6149, %6143
  %6164 = call float @dx.op.tertiary.f32(i32 46, float %6144, float %6150, float %6163)  ; FMad(a,b,c)
  %6165 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %6151, float %6164)  ; FMad(a,b,c)
  %6166 = fadd fast float %6165, %6152
  %6167 = fmul fast float %6154, %6143
  %6168 = call float @dx.op.tertiary.f32(i32 46, float %6144, float %6155, float %6167)  ; FMad(a,b,c)
  %6169 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %6156, float %6168)  ; FMad(a,b,c)
  %6170 = fadd fast float %6169, %6157
  %6171 = fmul fast float %6159, %6143
  %6172 = call float @dx.op.tertiary.f32(i32 46, float %6144, float %6160, float %6171)  ; FMad(a,b,c)
  %6173 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %6161, float %6172)  ; FMad(a,b,c)
  %6174 = fadd fast float %6173, %6162
  %6175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6176 = extractvalue %dx.types.CBufRet.f32 %6175, 0
  %6177 = fcmp fast une float %6176, 0.000000e+00
  %6178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6179 = extractvalue %dx.types.CBufRet.f32 %6178, 0
  %6180 = extractvalue %dx.types.CBufRet.f32 %6178, 1
  %6181 = extractvalue %dx.types.CBufRet.f32 %6178, 3
  %6182 = fmul fast float %6181, %6166
  %6183 = fmul fast float %6181, %6170
  %6184 = fadd fast float %6182, %6179
  %6185 = fadd fast float %6183, %6180
  %6186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.f32 %6186, 0
  %6188 = extractvalue %dx.types.CBufRet.f32 %6186, 1
  %6189 = extractvalue %dx.types.CBufRet.f32 %6186, 3
  %6190 = fmul fast float %6189, %6166
  %6191 = fmul fast float %6189, %6170
  %6192 = fadd fast float %6190, %6187
  %6193 = fadd fast float %6191, %6188
  %6194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6195 = extractvalue %dx.types.CBufRet.f32 %6194, 1
  %6196 = fsub fast float %6195, %6174
  %6197 = extractvalue %dx.types.CBufRet.f32 %6194, 2
  %6198 = fmul fast float %6196, %6197
  %6199 = fsub fast float 1.000000e+00, %6198
  %6200 = call float @dx.op.unary.f32(i32 7, float %6199)  ; Saturate(value)
  br i1 %6177, label %6261, label %6201

; <label>:6201                                    ; preds = %6147
  %6202 = extractvalue %dx.types.CBufRet.f32 %6186, 2
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 2
  %6205 = fadd fast float %6204, %6202
  %6206 = fcmp fast ogt float %6205, 0.000000e+00
  br i1 %6206, label %6207, label %6231

; <label>:6207                                    ; preds = %6201
  %6208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.f32 %6208, 0
  %6210 = extractvalue %dx.types.CBufRet.f32 %6208, 1
  %6211 = fsub fast float %6192, %6209
  %6212 = fsub fast float %6193, %6210
  %6213 = fcmp fast olt float %6211, 0.000000e+00
  %6214 = fcmp fast olt float %6212, 0.000000e+00
  %6215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6215, 0
  %6217 = extractvalue %dx.types.CBufRet.f32 %6215, 1
  %6218 = extractvalue %dx.types.CBufRet.f32 %6215, 2
  %6219 = extractvalue %dx.types.CBufRet.f32 %6215, 3
  %6220 = select i1 %6213, float %6216, float %6218
  %6221 = select i1 %6214, float %6217, float %6219
  %6222 = fmul fast float %6220, %6211
  %6223 = fmul fast float %6221, %6212
  %6224 = call float @dx.op.unary.f32(i32 6, float %6222)  ; FAbs(value)
  %6225 = call float @dx.op.unary.f32(i32 6, float %6223)  ; FAbs(value)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6138, 0
  %6227 = call float @dx.op.binary.f32(i32 35, float %6224, float %6225)  ; FMax(a,b)
  %6228 = fsub fast float %6226, %6227
  %6229 = call float @dx.op.unary.f32(i32 7, float %6228)  ; Saturate(value)
  %6230 = fmul fast float %6229, %6200
  br label %6231

; <label>:6231                                    ; preds = %6207, %6201
  %6232 = phi float [ %6230, %6207 ], [ 0.000000e+00, %6201 ]
  %6233 = extractvalue %dx.types.CBufRet.f32 %6178, 2
  %6234 = extractvalue %dx.types.CBufRet.f32 %6203, 1
  %6235 = fadd fast float %6234, %6233
  %6236 = fcmp fast ogt float %6235, 0.000000e+00
  br i1 %6236, label %6237, label %6261

; <label>:6237                                    ; preds = %6231
  %6238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6239 = extractvalue %dx.types.CBufRet.f32 %6238, 0
  %6240 = extractvalue %dx.types.CBufRet.f32 %6238, 1
  %6241 = fsub fast float %6184, %6239
  %6242 = fsub fast float %6185, %6240
  %6243 = fcmp fast olt float %6241, 0.000000e+00
  %6244 = fcmp fast olt float %6242, 0.000000e+00
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 0
  %6247 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6248 = extractvalue %dx.types.CBufRet.f32 %6245, 2
  %6249 = extractvalue %dx.types.CBufRet.f32 %6245, 3
  %6250 = select i1 %6243, float %6246, float %6248
  %6251 = select i1 %6244, float %6247, float %6249
  %6252 = fmul fast float %6250, %6241
  %6253 = fmul fast float %6251, %6242
  %6254 = call float @dx.op.unary.f32(i32 6, float %6252)  ; FAbs(value)
  %6255 = call float @dx.op.unary.f32(i32 6, float %6253)  ; FAbs(value)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6138, 0
  %6257 = call float @dx.op.binary.f32(i32 35, float %6254, float %6255)  ; FMax(a,b)
  %6258 = fsub fast float %6256, %6257
  %6259 = call float @dx.op.unary.f32(i32 7, float %6258)  ; Saturate(value)
  %6260 = fmul fast float %6259, %6200
  br label %6261

; <label>:6261                                    ; preds = %6237, %6231, %6147
  %6262 = phi float [ 0.000000e+00, %6147 ], [ %6260, %6237 ], [ 0.000000e+00, %6231 ]
  %6263 = phi float [ 0.000000e+00, %6147 ], [ %6232, %6237 ], [ %6232, %6231 ]
  %6264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.f32 %6264, 1
  %6266 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6268 = extractvalue %dx.types.CBufRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.CBufRet.f32 %6267, 1
  %6270 = fsub fast float %6166, %6268
  %6271 = fsub fast float %6170, %6269
  %6272 = fcmp fast olt float %6270, 0.000000e+00
  %6273 = fcmp fast olt float %6271, 0.000000e+00
  %6274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6275 = extractvalue %dx.types.CBufRet.f32 %6274, 0
  %6276 = extractvalue %dx.types.CBufRet.f32 %6274, 1
  %6277 = extractvalue %dx.types.CBufRet.f32 %6274, 2
  %6278 = extractvalue %dx.types.CBufRet.f32 %6274, 3
  %6279 = select i1 %6272, float %6275, float %6277
  %6280 = select i1 %6273, float %6276, float %6278
  %6281 = fmul fast float %6279, %6270
  %6282 = fmul fast float %6280, %6271
  %6283 = call float @dx.op.unary.f32(i32 6, float %6281)  ; FAbs(value)
  %6284 = call float @dx.op.unary.f32(i32 6, float %6282)  ; FAbs(value)
  %6285 = extractvalue %dx.types.CBufRet.f32 %6138, 0
  %6286 = call float @dx.op.binary.f32(i32 35, float %6283, float %6284)  ; FMax(a,b)
  %6287 = fsub fast float %6285, %6286
  %6288 = call float @dx.op.unary.f32(i32 7, float %6287)  ; Saturate(value)
  %6289 = call float @dx.op.binary.f32(i32 36, float %6288, float %6266)  ; FMin(a,b)
  %6290 = fmul fast float %6289, %6200
  %6291 = fsub fast float %6262, %6290
  %6292 = fsub fast float %6263, %6262
  %6293 = fsub fast float %6292, %6290
  %6294 = call float @dx.op.binary.f32(i32 35, float %6262, float %6263)  ; FMax(a,b)
  %6295 = call float @dx.op.binary.f32(i32 35, float %6290, float %6294)  ; FMax(a,b)
  %6296 = fcmp fast olt float %6295, 1.000000e+00
  br i1 %6296, label %6297, label %6695, !dx.controlflow.hints !104

; <label>:6297                                    ; preds = %6261
  %6298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.f32 %6298, 0
  %6300 = fcmp fast une float %6299, 0.000000e+00
  br i1 %6300, label %6301, label %6695, !dx.controlflow.hints !105

; <label>:6301                                    ; preds = %6297
  %6302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6302, 0
  %6304 = extractvalue %dx.types.CBufRet.f32 %6302, 1
  %6305 = extractvalue %dx.types.CBufRet.f32 %6302, 2
  %6306 = extractvalue %dx.types.CBufRet.f32 %6302, 3
  %6307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6308 = extractvalue %dx.types.CBufRet.f32 %6307, 0
  %6309 = extractvalue %dx.types.CBufRet.f32 %6307, 1
  %6310 = extractvalue %dx.types.CBufRet.f32 %6307, 2
  %6311 = extractvalue %dx.types.CBufRet.f32 %6307, 3
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 0
  %6314 = extractvalue %dx.types.CBufRet.f32 %6312, 1
  %6315 = extractvalue %dx.types.CBufRet.f32 %6312, 2
  %6316 = extractvalue %dx.types.CBufRet.f32 %6312, 3
  %6317 = fmul fast float %6303, %6143
  %6318 = call float @dx.op.tertiary.f32(i32 46, float %6144, float %6304, float %6317)  ; FMad(a,b,c)
  %6319 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %6305, float %6318)  ; FMad(a,b,c)
  %6320 = fadd fast float %6319, %6306
  %6321 = fmul fast float %6308, %6143
  %6322 = call float @dx.op.tertiary.f32(i32 46, float %6144, float %6309, float %6321)  ; FMad(a,b,c)
  %6323 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %6310, float %6322)  ; FMad(a,b,c)
  %6324 = fadd fast float %6323, %6311
  %6325 = fmul fast float %6313, %6143
  %6326 = call float @dx.op.tertiary.f32(i32 46, float %6144, float %6314, float %6325)  ; FMad(a,b,c)
  %6327 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %6315, float %6326)  ; FMad(a,b,c)
  %6328 = fadd fast float %6327, %6316
  %6329 = fcmp fast oge float %6320, 1.000000e+00
  %6330 = fcmp fast oge float %6324, 1.000000e+00
  %6331 = or i1 %6329, %6330
  %6332 = fcmp fast olt float %6320, 0.000000e+00
  %6333 = fcmp fast olt float %6324, 0.000000e+00
  %6334 = or i1 %6332, %6333
  %6335 = or i1 %6331, %6334
  br i1 %6335, label %6695, label %6336, !dx.controlflow.hints !106

; <label>:6336                                    ; preds = %6301
  %6337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6338 = extractvalue %dx.types.CBufRet.f32 %6337, 0
  %6339 = extractvalue %dx.types.CBufRet.f32 %6337, 1
  %6340 = extractvalue %dx.types.CBufRet.f32 %6337, 2
  %6341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.i32 %6341, 2
  %6343 = uitofp i32 %6342 to float
  %6344 = extractvalue %dx.types.CBufRet.i32 %6341, 3
  %6345 = uitofp i32 %6344 to float
  %6346 = extractvalue %dx.types.CBufRet.f32 %6337, 3
  %6347 = fmul fast float %6346, 2.000000e+00
  %6348 = fsub fast float %6320, %6338
  %6349 = fsub fast float %6324, %6339
  %6350 = fmul fast float %6347, %6348
  %6351 = fmul fast float %6347, %6349
  %6352 = fdiv fast float 1.000000e+00, %6126
  %6353 = fmul fast float %6351, %6352
  %6354 = call float @dx.op.unary.f32(i32 6, float %6353)  ; FAbs(value)
  %6355 = fmul fast float %6340, %6145
  %6356 = fmul fast float %6355, %6347
  %6357 = call float @dx.op.unary.f32(i32 6, float %6356)  ; FAbs(value)
  %6358 = call float @dx.op.unary.f32(i32 6, float %6350)  ; FAbs(value)
  %6359 = call float @dx.op.binary.f32(i32 35, float %6357, float %6354)  ; FMax(a,b)
  %6360 = call float @dx.op.binary.f32(i32 35, float %6358, float %6359)  ; FMax(a,b)
  %6361 = fmul fast float %6360, 2.000000e+00
  %6362 = call float @dx.op.unary.f32(i32 23, float %6361)  ; Log(value)
  %6363 = call float @dx.op.binary.f32(i32 35, float %6362, float %6343)  ; FMax(a,b)
  %6364 = call float @dx.op.unary.f32(i32 22, float %6363)  ; Frc(value)
  %6365 = fadd fast float %6364, 0xBFEA666660000000
  %6366 = fmul fast float %6365, 8.000000e+00
  %6367 = call float @dx.op.unary.f32(i32 7, float %6366)  ; Saturate(value)
  %6368 = call float @dx.op.unary.f32(i32 27, float %6363)  ; Round_ni(value)
  %6369 = fadd fast float %6368, %6367
  %6370 = call float @dx.op.binary.f32(i32 36, float %6369, float %6345)  ; FMin(a,b)
  %6371 = call float @dx.op.unary.f32(i32 27, float %6370)  ; Round_ni(value)
  %6372 = fsub fast float -0.000000e+00, %6371
  %6373 = call float @dx.op.unary.f32(i32 21, float %6372)  ; Exp(value)
  %6374 = fmul fast float %6373, %6347
  %6375 = fmul fast float %6374, %6320
  %6376 = fmul fast float %6374, %6324
  %6377 = fmul fast float %6375, 2.500000e-01
  %6378 = fmul fast float %6376, 2.500000e-01
  %6379 = fadd fast float %6377, 5.000000e-01
  %6380 = fadd fast float %6378, 5.000000e-01
  %6381 = fsub fast float %6345, %6343
  %6382 = fptoui float %6381 to i32
  %6383 = add i32 %6382, 320
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %6383)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 0
  %6386 = extractvalue %dx.types.CBufRet.f32 %6384, 1
  %6387 = fcmp fast une float %6370, %6345
  %6388 = fsub fast float %6320, %6385
  %6389 = fsub fast float %6324, %6386
  %6390 = call float @dx.op.unary.f32(i32 6, float %6388)  ; FAbs(value)
  %6391 = call float @dx.op.unary.f32(i32 6, float %6389)  ; FAbs(value)
  %6392 = fmul fast float %6390, %6374
  %6393 = fmul fast float %6391, %6374
  %6394 = fcmp fast olt float %6392, 1.000000e+00
  %6395 = fcmp fast olt float %6393, 1.000000e+00
  %6396 = and i1 %6394, %6395
  %6397 = or i1 %6387, %6396
  br i1 %6397, label %6398, label %6695, !dx.controlflow.hints !107

; <label>:6398                                    ; preds = %6336
  %6399 = fmul fast float %6376, 5.000000e-01
  %6400 = fmul fast float %6375, 5.000000e-01
  %6401 = fadd fast float %6399, 5.000000e-01
  %6402 = fadd fast float %6400, 5.000000e-01
  %6403 = sitofp i32 %6342 to float
  %6404 = fsub fast float %6370, %6403
  %6405 = call float @dx.op.unary.f32(i32 27, float %6404)  ; Round_ni(value)
  %6406 = call float @dx.op.unary.f32(i32 22, float %6370)  ; Frc(value)
  %6407 = call float @dx.op.unary.f32(i32 22, float %6402)  ; Frc(value)
  %6408 = call float @dx.op.unary.f32(i32 22, float %6401)  ; Frc(value)
  %6409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %51, float %6407, float %6408, float %6405, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6410 = extractvalue %dx.types.ResRet.f32 %6409, 0
  %6411 = extractvalue %dx.types.ResRet.f32 %6409, 1
  %6412 = extractvalue %dx.types.ResRet.f32 %6409, 2
  %6413 = extractvalue %dx.types.ResRet.f32 %6409, 3
  %6414 = fcmp fast ogt float %6406, 0.000000e+00
  br i1 %6414, label %6415, label %6436, !dx.controlflow.hints !108

; <label>:6415                                    ; preds = %6398
  %6416 = fadd fast float %6405, 1.000000e+00
  %6417 = call float @dx.op.unary.f32(i32 22, float %6379)  ; Frc(value)
  %6418 = call float @dx.op.unary.f32(i32 22, float %6380)  ; Frc(value)
  %6419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %51, float %6417, float %6418, float %6416, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6420 = extractvalue %dx.types.ResRet.f32 %6419, 0
  %6421 = extractvalue %dx.types.ResRet.f32 %6419, 1
  %6422 = extractvalue %dx.types.ResRet.f32 %6419, 2
  %6423 = extractvalue %dx.types.ResRet.f32 %6419, 3
  %6424 = fsub fast float %6420, %6410
  %6425 = fsub fast float %6421, %6411
  %6426 = fsub fast float %6422, %6412
  %6427 = fsub fast float %6423, %6413
  %6428 = fmul fast float %6424, %6406
  %6429 = fmul fast float %6425, %6406
  %6430 = fmul fast float %6426, %6406
  %6431 = fmul fast float %6427, %6406
  %6432 = fadd fast float %6428, %6410
  %6433 = fadd fast float %6429, %6411
  %6434 = fadd fast float %6430, %6412
  %6435 = fadd fast float %6431, %6413
  br label %6436

; <label>:6436                                    ; preds = %6415, %6398
  %6437 = phi float [ %6432, %6415 ], [ %6410, %6398 ]
  %6438 = phi float [ %6433, %6415 ], [ %6411, %6398 ]
  %6439 = phi float [ %6434, %6415 ], [ %6412, %6398 ]
  %6440 = phi float [ %6435, %6415 ], [ %6413, %6398 ]
  %6441 = fadd fast float %6437, -5.000000e-01
  %6442 = fadd fast float %6439, -5.000000e-01
  %6443 = fmul fast float %6441, 0xBFD5555560000000
  %6444 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6442, float %6443)  ; FMad(a,b,c)
  %6445 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6438, float 0.000000e+00)  ; FMad(a,b,c)
  %6446 = fadd fast float %6445, %6440
  %6447 = fmul fast float %6441, -7.500000e-01
  %6448 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6442, float %6447)  ; FMad(a,b,c)
  %6449 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6438, float 0.000000e+00)  ; FMad(a,b,c)
  %6450 = fadd fast float %6449, %6440
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 0
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6456 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6457 = extractvalue %dx.types.CBufRet.f32 %6453, 3
  %6458 = fsub fast float %6454, %6444
  %6459 = fsub fast float %6455, %6446
  %6460 = fsub fast float %6456, %6448
  %6461 = fsub fast float %6457, %6450
  %6462 = fmul fast float %6458, %6452
  %6463 = fmul fast float %6459, %6452
  %6464 = fmul fast float %6460, %6452
  %6465 = fmul fast float %6461, %6452
  %6466 = fadd fast float %6462, %6444
  %6467 = fadd fast float %6463, %6446
  %6468 = fadd fast float %6464, %6448
  %6469 = fadd fast float %6465, %6450
  %6470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6471 = extractvalue %dx.types.ResRet.i32 %6470, 0
  %6472 = and i32 %6471, 536870911
  %6473 = uitofp i32 %6472 to float
  %6474 = fmul fast float %6473, %6320
  %6475 = fmul fast float %6473, %6324
  %6476 = fptoui float %6474 to i32
  %6477 = fptoui float %6475 to i32
  %6478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6479 = extractvalue %dx.types.ResRet.i32 %6478, 0
  %6480 = and i32 %6479, 31
  %6481 = lshr i32 %6476, %6480
  %6482 = lshr i32 %6477, %6480
  %6483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6484 = extractvalue %dx.types.ResRet.i32 %6483, 0
  %6485 = and i32 %6484, 31
  %6486 = shl i32 1, %6485
  %6487 = call i32 @dx.op.binary.i32(i32 40, i32 %6486, i32 4)  ; UMin(a,b)
  %6488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6489 = extractvalue %dx.types.ResRet.i32 %6488, 0
  %6490 = extractvalue %dx.types.ResRet.i32 %6488, 1
  %6491 = icmp eq i32 %6487, 0
  br i1 %6491, label %6533, label %6492

; <label>:6492                                    ; preds = %6436
  br label %6493

; <label>:6493                                    ; preds = %6521, %6492
  %6494 = phi i32 [ %6524, %6521 ], [ 0, %6492 ]
  %6495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6496 = extractvalue %dx.types.ResRet.i32 %6495, 0
  %6497 = lshr i32 %6496, 16
  %6498 = and i32 %6497, 31
  %6499 = shl i32 %6482, %6498
  %6500 = add i32 %6499, %6481
  %6501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6502 = extractvalue %dx.types.ResRet.i32 %6501, 0
  %6503 = and i32 %6502, 31
  %6504 = shl i32 %6500, %6503
  %6505 = add i32 %6504, %6494
  %6506 = shl i32 %6505, 2
  %6507 = add i32 %6506, 32
  %6508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6507, i32 undef)  ; BufferLoad(srv,index,wot)
  %6509 = extractvalue %dx.types.ResRet.i32 %6508, 0
  %6510 = icmp slt i32 %6509, 0
  %6511 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6494
  %6512 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6494
  %6513 = bitcast float* %6511 to i32*
  %6514 = bitcast float* %6512 to i32*
  br i1 %6510, label %6515, label %6521

; <label>:6515                                    ; preds = %6493
  %6516 = and i32 %6509, 1073741823
  %6517 = add nuw nsw i32 %6516, 20
  %6518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6517, i32 undef)  ; BufferLoad(srv,index,wot)
  %6519 = extractvalue %dx.types.ResRet.i32 %6518, 0
  %6520 = extractvalue %dx.types.ResRet.i32 %6518, 1
  br label %6521

; <label>:6521                                    ; preds = %6515, %6493
  %6522 = phi i32 [ %6519, %6515 ], [ %6489, %6493 ]
  %6523 = phi i32 [ %6520, %6515 ], [ %6490, %6493 ]
  store i32 %6522, i32* %6513, align 4
  store i32 %6523, i32* %6514, align 4
  %6524 = add nuw i32 %6494, 1
  %6525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6526 = extractvalue %dx.types.CBufRet.i32 %6525, 2
  %6527 = icmp eq i32 %6526, 0
  %6528 = icmp ugt i32 %6509, -1073741825
  %6529 = and i1 %6528, %6527
  %6530 = icmp ult i32 %6524, %6487
  %6531 = and i1 %6529, %6530
  br i1 %6531, label %6493, label %6532

; <label>:6532                                    ; preds = %6521
  br label %6533

; <label>:6533                                    ; preds = %6532, %6436
  %6534 = phi i32 [ 0, %6436 ], [ %6524, %6532 ]
  %6535 = extractvalue %dx.types.CBufRet.f32 %6298, 2
  %6536 = fptoui float %6535 to i32
  %6537 = icmp eq i32 %6536, 0
  br i1 %6537, label %6589, label %6538

; <label>:6538                                    ; preds = %6533
  br label %6539

; <label>:6539                                    ; preds = %6584, %6538
  %6540 = phi i32 [ %6585, %6584 ], [ %6534, %6538 ]
  %6541 = phi i32 [ %6586, %6584 ], [ 0, %6538 ]
  %6542 = lshr i32 %6541, 2
  %6543 = and i32 %6541, 3
  %6544 = add nuw nsw i32 %6542, 83
  %6545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 %6544)  ; CBufferLoadLegacy(handle,regIndex)
  %6546 = extractvalue %dx.types.CBufRet.i32 %6545, 0
  %6547 = extractvalue %dx.types.CBufRet.i32 %6545, 1
  %6548 = extractvalue %dx.types.CBufRet.i32 %6545, 2
  %6549 = extractvalue %dx.types.CBufRet.i32 %6545, 3
  %6550 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 0
  store i32 %6546, i32* %6550, align 4
  %6551 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 1
  store i32 %6547, i32* %6551, align 4
  %6552 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 2
  store i32 %6548, i32* %6552, align 4
  %6553 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 3
  store i32 %6549, i32* %6553, align 4
  %6554 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 %6543
  %6555 = load i32, i32* %6554, align 4, !tbaa !109, !noalias !113
  %6556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6557 = extractvalue %dx.types.ResRet.i32 %6556, 0
  %6558 = lshr i32 %6557, 16
  %6559 = and i32 %6558, 31
  %6560 = shl i32 %6482, %6559
  %6561 = add i32 %6560, %6481
  %6562 = shl i32 %6561, 2
  %6563 = add i32 %6562, %6555
  %6564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6563, i32 undef)  ; BufferLoad(srv,index,wot)
  %6565 = extractvalue %dx.types.ResRet.i32 %6564, 0
  %6566 = icmp eq i32 %6565, 0
  br i1 %6566, label %6584, label %6567

; <label>:6567                                    ; preds = %6539
  %6568 = icmp slt i32 %6565, 0
  %6569 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6540
  %6570 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6540
  %6571 = bitcast float* %6569 to i32*
  %6572 = bitcast float* %6570 to i32*
  br i1 %6568, label %6573, label %6580

; <label>:6573                                    ; preds = %6567
  %6574 = and i32 %6565, 1073741823
  %6575 = add i32 %6555, 20
  %6576 = add i32 %6575, %6574
  %6577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6576, i32 undef)  ; BufferLoad(srv,index,wot)
  %6578 = extractvalue %dx.types.ResRet.i32 %6577, 0
  %6579 = extractvalue %dx.types.ResRet.i32 %6577, 1
  br label %6580

; <label>:6580                                    ; preds = %6573, %6567
  %6581 = phi i32 [ %6578, %6573 ], [ %6489, %6567 ]
  %6582 = phi i32 [ %6579, %6573 ], [ %6490, %6567 ]
  store i32 %6581, i32* %6571, align 4
  store i32 %6582, i32* %6572, align 4
  %6583 = add i32 %6540, 1
  br label %6584

; <label>:6584                                    ; preds = %6580, %6539
  %6585 = phi i32 [ %6540, %6539 ], [ %6583, %6580 ]
  %6586 = add nuw i32 %6541, 1
  %6587 = icmp eq i32 %6586, %6536
  br i1 %6587, label %6588, label %6539

; <label>:6588                                    ; preds = %6584
  br label %6589

; <label>:6589                                    ; preds = %6588, %6533
  %6590 = phi i32 [ %6534, %6533 ], [ %6585, %6588 ]
  %6591 = icmp eq i32 %6590, 1
  %6592 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  %6593 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 0
  br i1 %6591, label %6594, label %6597

; <label>:6594                                    ; preds = %6589
  %6595 = load float, float* %6592, align 4
  %6596 = load float, float* %6593, align 4
  br label %6624

; <label>:6597                                    ; preds = %6589
  %6598 = load float, float* %6592, align 4
  %6599 = load float, float* %6593, align 4
  %6600 = fdiv fast float 1.000000e+00, %6599
  %6601 = fsub fast float %6598, %6600
  %6602 = icmp ugt i32 %6590, 1
  br i1 %6602, label %6603, label %6619

; <label>:6603                                    ; preds = %6597
  br label %6604

; <label>:6604                                    ; preds = %6604, %6603
  %6605 = phi float [ %6614, %6604 ], [ %6601, %6603 ]
  %6606 = phi float [ %6615, %6604 ], [ %6598, %6603 ]
  %6607 = phi i32 [ %6616, %6604 ], [ 1, %6603 ]
  %6608 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6607
  %6609 = load float, float* %6608, align 4
  %6610 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6607
  %6611 = load float, float* %6610, align 4
  %6612 = fdiv fast float 1.000000e+00, %6611
  %6613 = fsub fast float %6609, %6612
  %6614 = call float @dx.op.binary.f32(i32 36, float %6605, float %6613)  ; FMin(a,b)
  %6615 = call float @dx.op.binary.f32(i32 35, float %6606, float %6609)  ; FMax(a,b)
  %6616 = add nuw i32 %6607, 1
  %6617 = icmp eq i32 %6616, %6590
  br i1 %6617, label %6618, label %6604

; <label>:6618                                    ; preds = %6604
  br label %6619

; <label>:6619                                    ; preds = %6618, %6597
  %6620 = phi float [ %6601, %6597 ], [ %6614, %6618 ]
  %6621 = phi float [ %6598, %6597 ], [ %6615, %6618 ]
  %6622 = fsub fast float %6621, %6620
  %6623 = fdiv fast float 1.000000e+00, %6622
  br label %6624

; <label>:6624                                    ; preds = %6619, %6594
  %6625 = phi float [ %6595, %6594 ], [ %6621, %6619 ]
  %6626 = phi float [ %6596, %6594 ], [ %6623, %6619 ]
  %6627 = fadd fast float %6328, %6625
  %6628 = fmul fast float %6627, %6626
  %6629 = call float @dx.op.unary.f32(i32 7, float %6628)  ; Saturate(value)
  %6630 = fmul fast float %6629, 2.000000e+00
  %6631 = fsub fast float 1.000000e+00, %6630
  %6632 = fmul fast float %6466, %6466
  %6633 = fsub fast float %6467, %6632
  %6634 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6633)  ; FMax(a,b)
  %6635 = fdiv fast float 1.000000e+00, %6634
  %6636 = fmul fast float %6467, %6466
  %6637 = fsub fast float %6468, %6636
  %6638 = fsub fast float %6631, %6466
  %6639 = fmul fast float %6631, %6631
  %6640 = fsub fast float %6639, %6467
  %6641 = fmul fast float %6635, %6637
  %6642 = fmul fast float %6641, %6638
  %6643 = fsub fast float %6640, %6642
  %6644 = fmul fast float %6467, %6467
  %6645 = fsub fast float %6469, %6644
  %6646 = fmul fast float %6637, %6637
  %6647 = fmul fast float %6646, %6635
  %6648 = fsub fast float %6645, %6647
  %6649 = fdiv fast float %6643, %6648
  %6650 = fmul fast float %6649, %6637
  %6651 = fsub fast float %6638, %6650
  %6652 = fmul fast float %6651, %6635
  %6653 = fmul fast float %6652, %6466
  %6654 = fsub fast float 1.000000e+00, %6653
  %6655 = fmul fast float %6649, %6467
  %6656 = fsub fast float %6654, %6655
  %6657 = fmul fast float %6652, %6652
  %6658 = fmul fast float %6649, 4.000000e+00
  %6659 = fmul fast float %6658, %6656
  %6660 = fsub fast float %6657, %6659
  %6661 = call float @dx.op.unary.f32(i32 24, float %6660)  ; Sqrt(value)
  %6662 = fcmp fast oge float %6652, 0.000000e+00
  %6663 = fsub fast float -0.000000e+00, %6661
  %6664 = select i1 %6662, float %6663, float %6661
  %6665 = fsub fast float %6664, %6652
  %6666 = fdiv fast float %6665, %6649
  %6667 = fdiv fast float %6656, %6665
  %6668 = fmul fast float %6666, 5.000000e-01
  %6669 = fmul fast float %6667, 2.000000e+00
  %6670 = select i1 %6662, float %6668, float %6669
  %6671 = select i1 %6662, float %6669, float %6668
  %6672 = call float @dx.op.binary.f32(i32 35, float %6670, float %6671)  ; FMax(a,b)
  %6673 = call float @dx.op.binary.f32(i32 36, float %6670, float %6671)  ; FMin(a,b)
  %6674 = fcmp fast ogt float %6631, %6672
  %6675 = fsub fast float %6631, %6673
  %6676 = fsub fast float %6631, %6672
  %6677 = fsub fast float %6672, %6673
  %6678 = select i1 %6674, float %6676, float %6677
  %6679 = fmul float %6675, %6678
  %6680 = select i1 %6674, float %6673, float %6631
  %6681 = fcmp fast ogt float %6631, %6673
  %6682 = fmul fast float %6680, %6672
  %6683 = fadd fast float %6680, %6672
  %6684 = fmul fast float %6683, %6466
  %6685 = fadd fast float %6682, %6467
  %6686 = fsub fast float %6685, %6684
  %6687 = fdiv fast float %6686, %6679
  %6688 = select i1 %6681, float %6687, float 0.000000e+00
  %6689 = fsub fast float 1.000000e+00, %6688
  %6690 = select i1 %6674, float %6689, float %6688
  %6691 = call float @dx.op.unary.f32(i32 7, float %6690)  ; Saturate(value)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6451, 3
  %6693 = fmul fast float %6692, %6691
  %6694 = fsub fast float 1.000000e+00, %6693
  br label %6695

; <label>:6695                                    ; preds = %6624, %6336, %6301, %6297, %6261
  %6696 = phi float [ 1.000000e+00, %6261 ], [ %6694, %6624 ], [ 1.000000e+00, %6301 ], [ 1.000000e+00, %6336 ], [ 1.000000e+00, %6297 ]
  %6697 = fcmp fast ogt float %6293, 0.000000e+00
  br i1 %6697, label %6698, label %6862, !dx.controlflow.hints !122

; <label>:6698                                    ; preds = %6695
  %6699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6700 = extractvalue %dx.types.CBufRet.f32 %6699, 2
  %6701 = fadd fast float %6700, %6174
  %6702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6703 = extractvalue %dx.types.CBufRet.f32 %6702, 2
  %6704 = extractvalue %dx.types.CBufRet.f32 %6702, 3
  %6705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6706 = extractvalue %dx.types.CBufRet.f32 %6705, 2
  %6707 = call float @dx.op.binary.f32(i32 35, float %6701, float 0.000000e+00)  ; FMax(a,b)
  %6708 = fadd fast float %6707, 0x3F10000000000000
  %6709 = fcmp fast oeq float %6706, 0.000000e+00
  br i1 %6709, label %6710, label %6777

; <label>:6710                                    ; preds = %6698
  %6711 = extractvalue %dx.types.CBufRet.f32 %6702, 1
  %6712 = extractvalue %dx.types.CBufRet.f32 %6702, 0
  %6713 = fmul fast float %6712, %6192
  %6714 = fmul fast float %6711, %6193
  %6715 = fadd fast float %6713, 5.000000e-01
  %6716 = call float @dx.op.unary.f32(i32 27, float %6715)  ; Round_ni(value)
  %6717 = fadd fast float %6714, 5.000000e-01
  %6718 = call float @dx.op.unary.f32(i32 27, float %6717)  ; Round_ni(value)
  %6719 = fsub fast float %6715, %6716
  %6720 = fsub fast float %6717, %6718
  %6721 = fadd fast float %6716, -5.000000e-01
  %6722 = fadd fast float %6718, -5.000000e-01
  %6723 = fmul fast float %6719, 2.000000e+00
  %6724 = fsub fast float 3.000000e+00, %6723
  %6725 = fadd fast float %6723, 1.000000e+00
  %6726 = fsub fast float 2.000000e+00, %6719
  %6727 = bitcast float %6724 to i32
  %6728 = sub nsw i32 2129859010, %6727
  %6729 = bitcast i32 %6728 to float
  %6730 = fmul fast float %6729, %6726
  %6731 = fadd fast float %6730, -1.000000e+00
  %6732 = bitcast float %6725 to i32
  %6733 = sub nsw i32 2129859010, %6732
  %6734 = bitcast i32 %6733 to float
  %6735 = fmul fast float %6734, %6719
  %6736 = fadd fast float %6735, 1.000000e+00
  %6737 = fmul fast float %6720, 2.000000e+00
  %6738 = fsub fast float 3.000000e+00, %6737
  %6739 = fadd fast float %6737, 1.000000e+00
  %6740 = fsub fast float 2.000000e+00, %6720
  %6741 = bitcast float %6738 to i32
  %6742 = sub nsw i32 2129859010, %6741
  %6743 = bitcast i32 %6742 to float
  %6744 = fmul fast float %6743, %6740
  %6745 = fadd fast float %6744, -1.000000e+00
  %6746 = bitcast float %6739 to i32
  %6747 = sub nsw i32 2129859010, %6746
  %6748 = bitcast i32 %6747 to float
  %6749 = fmul fast float %6748, %6720
  %6750 = fadd fast float %6749, 1.000000e+00
  %6751 = fadd fast float %6731, %6721
  %6752 = fmul fast float %6751, %6703
  %6753 = fadd fast float %6745, %6722
  %6754 = fmul fast float %6753, %6704
  %6755 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %54, float %6752, float %6754, float undef, float undef, i32 0, i32 0, i32 undef, float %6708)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6756 = extractvalue %dx.types.ResRet.f32 %6755, 0
  %6757 = fmul fast float %6756, %6724
  %6758 = fadd fast float %6736, %6721
  %6759 = fmul fast float %6758, %6703
  %6760 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %54, float %6759, float %6754, float undef, float undef, i32 0, i32 0, i32 undef, float %6708)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6761 = extractvalue %dx.types.ResRet.f32 %6760, 0
  %6762 = fmul fast float %6761, %6725
  %6763 = fadd fast float %6750, %6722
  %6764 = fmul fast float %6763, %6704
  %6765 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %54, float %6752, float %6764, float undef, float undef, i32 0, i32 0, i32 undef, float %6708)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6766 = extractvalue %dx.types.ResRet.f32 %6765, 0
  %6767 = fmul fast float %6766, %6724
  %6768 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %54, float %6759, float %6764, float undef, float undef, i32 0, i32 0, i32 undef, float %6708)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6769 = extractvalue %dx.types.ResRet.f32 %6768, 0
  %6770 = fmul fast float %6769, %6725
  %6771 = fadd fast float %6770, %6767
  %6772 = fmul fast float %6771, %6739
  %6773 = fadd fast float %6762, %6757
  %6774 = fmul fast float %6773, %6738
  %6775 = fadd fast float %6774, %6772
  %6776 = fmul fast float %6775, 6.250000e-02
  br label %6862

; <label>:6777                                    ; preds = %6698
  %6778 = fmul fast float %313, 0x401921FB60000000
  %6779 = call float @dx.op.unary.f32(i32 13, float %6778)  ; Sin(value)
  %6780 = call float @dx.op.unary.f32(i32 12, float %6778)  ; Cos(value)
  %6781 = fsub fast float -0.000000e+00, %6779
  br label %6782

; <label>:6782                                    ; preds = %6831, %6777
  %6783 = phi float [ 0.000000e+00, %6777 ], [ %6826, %6831 ]
  %6784 = phi float [ 0.000000e+00, %6777 ], [ %6828, %6831 ]
  %6785 = phi i32 [ 0, %6777 ], [ %6832, %6831 ]
  %6786 = mul i32 %6785, 2
  %6787 = add i32 0, %6786
  %6788 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6787
  %6789 = load float, float* %6788, align 4
  %6790 = mul i32 %6785, 2
  %6791 = add i32 1, %6790
  %6792 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6791
  %6793 = load float, float* %6792, align 4
  %6794 = fmul fast float %6789, %6780
  %6795 = call float @dx.op.tertiary.f32(i32 46, float %6793, float %6781, float %6794)  ; FMad(a,b,c)
  %6796 = fmul fast float %6789, %6779
  %6797 = call float @dx.op.tertiary.f32(i32 46, float %6793, float %6780, float %6796)  ; FMad(a,b,c)
  %6798 = fmul fast float %6795, %6706
  %6799 = fmul fast float %6797, %6706
  %6800 = fadd fast float %6798, %6192
  %6801 = fadd fast float %6799, %6193
  %6802 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %53, float %6800, float %6801, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6803 = extractvalue %dx.types.ResRet.f32 %6802, 0
  %6804 = extractvalue %dx.types.ResRet.f32 %6802, 1
  %6805 = extractvalue %dx.types.ResRet.f32 %6802, 2
  %6806 = extractvalue %dx.types.ResRet.f32 %6802, 3
  %6807 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 0
  store float %6803, float* %6807, align 4
  %6808 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 1
  store float %6804, float* %6808, align 4
  %6809 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 2
  store float %6805, float* %6809, align 4
  %6810 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 3
  store float %6806, float* %6810, align 4
  %6811 = fsub fast float %6803, %6708
  %6812 = fcmp fast olt float %6811, 0.000000e+00
  %6813 = select i1 %6812, float 0.000000e+00, float 1.000000e+00
  %6814 = fadd fast float %6813, %6783
  %6815 = fmul fast float %6813, %6811
  %6816 = fadd fast float %6815, %6784
  br label %6817

; <label>:6817                                    ; preds = %6817, %6782
  %6818 = phi i32 [ 1, %6782 ], [ %6829, %6817 ]
  %6819 = phi float [ %6816, %6782 ], [ %6828, %6817 ]
  %6820 = phi float [ %6814, %6782 ], [ %6826, %6817 ]
  %6821 = getelementptr [4 x float], [4 x float]* %108, i32 0, i32 %6818
  %6822 = load float, float* %6821, align 4, !tbaa !123, !noalias !113
  %6823 = fsub fast float %6822, %6708
  %6824 = fcmp fast olt float %6823, 0.000000e+00
  %6825 = select i1 %6824, float 0.000000e+00, float 1.000000e+00
  %6826 = fadd fast float %6825, %6820
  %6827 = fmul fast float %6825, %6823
  %6828 = fadd fast float %6827, %6819
  %6829 = add nuw nsw i32 %6818, 1
  %6830 = icmp eq i32 %6829, 4
  br i1 %6830, label %6831, label %6817, !llvm.loop !125

; <label>:6831                                    ; preds = %6817
  %6832 = add nuw nsw i32 %6785, 1
  %6833 = icmp eq i32 %6832, 8
  br i1 %6833, label %6834, label %6782, !llvm.loop !126

; <label>:6834                                    ; preds = %6831
  %6835 = fdiv fast float 1.000000e+00, %6826
  %6836 = fmul fast float %6835, %6828
  %6837 = fdiv fast float 1.000000e+00, %6708
  %6838 = fmul fast float %6836, %6837
  %6839 = call float @dx.op.unary.f32(i32 7, float %6838)  ; Saturate(value)
  %6840 = call float @dx.op.binary.f32(i32 35, float %6839, float 0.000000e+00)  ; FMax(a,b)
  %6841 = fmul fast float %6826, 3.125000e-02
  %6842 = call float @dx.op.unary.f32(i32 7, float %6841)  ; Saturate(value)
  %6843 = fmul fast float %6842, 2.000000e+00
  %6844 = fadd fast float %6843, -1.000000e+00
  %6845 = fcmp fast ogt float %6844, 0.000000e+00
  %6846 = fcmp fast olt float %6844, 0.000000e+00
  %6847 = zext i1 %6845 to i32
  %6848 = zext i1 %6846 to i32
  %6849 = sub nsw i32 %6847, %6848
  %6850 = sitofp i32 %6849 to float
  %6851 = fmul fast float %6850, %6844
  %6852 = fsub fast float 1.000000e+00, %6851
  %6853 = fmul fast float %6852, %6852
  %6854 = fmul fast float %6853, %6852
  %6855 = fsub fast float %6852, %6854
  %6856 = fmul fast float %6855, %6840
  %6857 = fsub fast float 1.000000e+00, %6854
  %6858 = fsub fast float %6857, %6856
  %6859 = fmul fast float %6850, 5.000000e-01
  %6860 = fmul fast float %6859, %6858
  %6861 = fsub fast float 5.000000e-01, %6860
  br label %6862

; <label>:6862                                    ; preds = %6834, %6710, %6695
  %6863 = phi float [ 1.000000e+00, %6695 ], [ %6776, %6710 ], [ %6861, %6834 ]
  %6864 = fcmp fast ogt float %6291, 0.000000e+00
  br i1 %6864, label %6865, label %7029, !dx.controlflow.hints !127

; <label>:6865                                    ; preds = %6862
  %6866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6867 = extractvalue %dx.types.CBufRet.f32 %6866, 1
  %6868 = fadd fast float %6867, %6174
  %6869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6869, 2
  %6871 = extractvalue %dx.types.CBufRet.f32 %6869, 3
  %6872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6873 = extractvalue %dx.types.CBufRet.f32 %6872, 1
  %6874 = call float @dx.op.binary.f32(i32 35, float %6868, float 0.000000e+00)  ; FMax(a,b)
  %6875 = fadd fast float %6874, 0x3F10000000000000
  %6876 = fcmp fast oeq float %6873, 0.000000e+00
  br i1 %6876, label %6877, label %6944

; <label>:6877                                    ; preds = %6865
  %6878 = extractvalue %dx.types.CBufRet.f32 %6869, 1
  %6879 = extractvalue %dx.types.CBufRet.f32 %6869, 0
  %6880 = fmul fast float %6879, %6184
  %6881 = fmul fast float %6878, %6185
  %6882 = fadd fast float %6880, 5.000000e-01
  %6883 = call float @dx.op.unary.f32(i32 27, float %6882)  ; Round_ni(value)
  %6884 = fadd fast float %6881, 5.000000e-01
  %6885 = call float @dx.op.unary.f32(i32 27, float %6884)  ; Round_ni(value)
  %6886 = fsub fast float %6882, %6883
  %6887 = fsub fast float %6884, %6885
  %6888 = fadd fast float %6883, -5.000000e-01
  %6889 = fadd fast float %6885, -5.000000e-01
  %6890 = fmul fast float %6886, 2.000000e+00
  %6891 = fsub fast float 3.000000e+00, %6890
  %6892 = fadd fast float %6890, 1.000000e+00
  %6893 = fsub fast float 2.000000e+00, %6886
  %6894 = bitcast float %6891 to i32
  %6895 = sub nsw i32 2129859010, %6894
  %6896 = bitcast i32 %6895 to float
  %6897 = fmul fast float %6896, %6893
  %6898 = fadd fast float %6897, -1.000000e+00
  %6899 = bitcast float %6892 to i32
  %6900 = sub nsw i32 2129859010, %6899
  %6901 = bitcast i32 %6900 to float
  %6902 = fmul fast float %6901, %6886
  %6903 = fadd fast float %6902, 1.000000e+00
  %6904 = fmul fast float %6887, 2.000000e+00
  %6905 = fsub fast float 3.000000e+00, %6904
  %6906 = fadd fast float %6904, 1.000000e+00
  %6907 = fsub fast float 2.000000e+00, %6887
  %6908 = bitcast float %6905 to i32
  %6909 = sub nsw i32 2129859010, %6908
  %6910 = bitcast i32 %6909 to float
  %6911 = fmul fast float %6910, %6907
  %6912 = fadd fast float %6911, -1.000000e+00
  %6913 = bitcast float %6906 to i32
  %6914 = sub nsw i32 2129859010, %6913
  %6915 = bitcast i32 %6914 to float
  %6916 = fmul fast float %6915, %6887
  %6917 = fadd fast float %6916, 1.000000e+00
  %6918 = fadd fast float %6898, %6888
  %6919 = fmul fast float %6918, %6870
  %6920 = fadd fast float %6912, %6889
  %6921 = fmul fast float %6920, %6871
  %6922 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %54, float %6919, float %6921, float undef, float undef, i32 0, i32 0, i32 undef, float %6875)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6923 = extractvalue %dx.types.ResRet.f32 %6922, 0
  %6924 = fmul fast float %6923, %6891
  %6925 = fadd fast float %6903, %6888
  %6926 = fmul fast float %6925, %6870
  %6927 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %54, float %6926, float %6921, float undef, float undef, i32 0, i32 0, i32 undef, float %6875)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6928 = extractvalue %dx.types.ResRet.f32 %6927, 0
  %6929 = fmul fast float %6928, %6892
  %6930 = fadd fast float %6917, %6889
  %6931 = fmul fast float %6930, %6871
  %6932 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %54, float %6919, float %6931, float undef, float undef, i32 0, i32 0, i32 undef, float %6875)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6933 = extractvalue %dx.types.ResRet.f32 %6932, 0
  %6934 = fmul fast float %6933, %6891
  %6935 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %54, float %6926, float %6931, float undef, float undef, i32 0, i32 0, i32 undef, float %6875)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6936 = extractvalue %dx.types.ResRet.f32 %6935, 0
  %6937 = fmul fast float %6936, %6892
  %6938 = fadd fast float %6937, %6934
  %6939 = fmul fast float %6938, %6906
  %6940 = fadd fast float %6929, %6924
  %6941 = fmul fast float %6940, %6905
  %6942 = fadd fast float %6941, %6939
  %6943 = fmul fast float %6942, 6.250000e-02
  br label %7029

; <label>:6944                                    ; preds = %6865
  %6945 = fmul fast float %313, 0x401921FB60000000
  %6946 = call float @dx.op.unary.f32(i32 13, float %6945)  ; Sin(value)
  %6947 = call float @dx.op.unary.f32(i32 12, float %6945)  ; Cos(value)
  %6948 = fsub fast float -0.000000e+00, %6946
  br label %6949

; <label>:6949                                    ; preds = %6998, %6944
  %6950 = phi float [ 0.000000e+00, %6944 ], [ %6993, %6998 ]
  %6951 = phi float [ 0.000000e+00, %6944 ], [ %6995, %6998 ]
  %6952 = phi i32 [ 0, %6944 ], [ %6999, %6998 ]
  %6953 = mul i32 %6952, 2
  %6954 = add i32 0, %6953
  %6955 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6954
  %6956 = load float, float* %6955, align 4
  %6957 = mul i32 %6952, 2
  %6958 = add i32 1, %6957
  %6959 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6958
  %6960 = load float, float* %6959, align 4
  %6961 = fmul fast float %6956, %6947
  %6962 = call float @dx.op.tertiary.f32(i32 46, float %6960, float %6948, float %6961)  ; FMad(a,b,c)
  %6963 = fmul fast float %6956, %6946
  %6964 = call float @dx.op.tertiary.f32(i32 46, float %6960, float %6947, float %6963)  ; FMad(a,b,c)
  %6965 = fmul fast float %6962, %6873
  %6966 = fmul fast float %6964, %6873
  %6967 = fadd fast float %6965, %6184
  %6968 = fadd fast float %6966, %6185
  %6969 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %53, float %6967, float %6968, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6970 = extractvalue %dx.types.ResRet.f32 %6969, 0
  %6971 = extractvalue %dx.types.ResRet.f32 %6969, 1
  %6972 = extractvalue %dx.types.ResRet.f32 %6969, 2
  %6973 = extractvalue %dx.types.ResRet.f32 %6969, 3
  %6974 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6970, float* %6974, align 4
  %6975 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6971, float* %6975, align 4
  %6976 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6972, float* %6976, align 4
  %6977 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6973, float* %6977, align 4
  %6978 = fsub fast float %6970, %6875
  %6979 = fcmp fast olt float %6978, 0.000000e+00
  %6980 = select i1 %6979, float 0.000000e+00, float 1.000000e+00
  %6981 = fadd fast float %6980, %6950
  %6982 = fmul fast float %6980, %6978
  %6983 = fadd fast float %6982, %6951
  br label %6984

; <label>:6984                                    ; preds = %6984, %6949
  %6985 = phi i32 [ 1, %6949 ], [ %6996, %6984 ]
  %6986 = phi float [ %6983, %6949 ], [ %6995, %6984 ]
  %6987 = phi float [ %6981, %6949 ], [ %6993, %6984 ]
  %6988 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6985
  %6989 = load float, float* %6988, align 4, !tbaa !123, !noalias !113
  %6990 = fsub fast float %6989, %6875
  %6991 = fcmp fast olt float %6990, 0.000000e+00
  %6992 = select i1 %6991, float 0.000000e+00, float 1.000000e+00
  %6993 = fadd fast float %6992, %6987
  %6994 = fmul fast float %6992, %6990
  %6995 = fadd fast float %6994, %6986
  %6996 = add nuw nsw i32 %6985, 1
  %6997 = icmp eq i32 %6996, 4
  br i1 %6997, label %6998, label %6984, !llvm.loop !125

; <label>:6998                                    ; preds = %6984
  %6999 = add nuw nsw i32 %6952, 1
  %7000 = icmp eq i32 %6999, 8
  br i1 %7000, label %7001, label %6949, !llvm.loop !126

; <label>:7001                                    ; preds = %6998
  %7002 = fdiv fast float 1.000000e+00, %6993
  %7003 = fmul fast float %7002, %6995
  %7004 = fdiv fast float 1.000000e+00, %6875
  %7005 = fmul fast float %7003, %7004
  %7006 = call float @dx.op.unary.f32(i32 7, float %7005)  ; Saturate(value)
  %7007 = call float @dx.op.binary.f32(i32 35, float %7006, float 0.000000e+00)  ; FMax(a,b)
  %7008 = fmul fast float %6993, 3.125000e-02
  %7009 = call float @dx.op.unary.f32(i32 7, float %7008)  ; Saturate(value)
  %7010 = fmul fast float %7009, 2.000000e+00
  %7011 = fadd fast float %7010, -1.000000e+00
  %7012 = fcmp fast ogt float %7011, 0.000000e+00
  %7013 = fcmp fast olt float %7011, 0.000000e+00
  %7014 = zext i1 %7012 to i32
  %7015 = zext i1 %7013 to i32
  %7016 = sub nsw i32 %7014, %7015
  %7017 = sitofp i32 %7016 to float
  %7018 = fmul fast float %7017, %7011
  %7019 = fsub fast float 1.000000e+00, %7018
  %7020 = fmul fast float %7019, %7019
  %7021 = fmul fast float %7020, %7019
  %7022 = fsub fast float %7019, %7021
  %7023 = fmul fast float %7022, %7007
  %7024 = fsub fast float 1.000000e+00, %7021
  %7025 = fsub fast float %7024, %7023
  %7026 = fmul fast float %7017, 5.000000e-01
  %7027 = fmul fast float %7026, %7025
  %7028 = fsub fast float 5.000000e-01, %7027
  br label %7029

; <label>:7029                                    ; preds = %7001, %6877, %6862
  %7030 = phi float [ 1.000000e+00, %6862 ], [ %6943, %6877 ], [ %7028, %7001 ]
  %7031 = fcmp fast ogt float %6290, 0.000000e+00
  br i1 %7031, label %7032, label %7350, !dx.controlflow.hints !128

; <label>:7032                                    ; preds = %7029
  %7033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7034 = extractvalue %dx.types.CBufRet.f32 %7033, 0
  %7035 = fadd fast float %7034, %6174
  %7036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7037 = extractvalue %dx.types.CBufRet.f32 %7036, 2
  %7038 = extractvalue %dx.types.CBufRet.f32 %7036, 3
  %7039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7039, 0
  %7041 = call float @dx.op.binary.f32(i32 35, float %7035, float 0.000000e+00)  ; FMax(a,b)
  %7042 = fadd fast float %7041, 0x3F10000000000000
  %7043 = fcmp fast oeq float %7040, 0.000000e+00
  br i1 %6177, label %7044, label %7197, !dx.controlflow.hints !129

; <label>:7044                                    ; preds = %7032
  br i1 %7043, label %7045, label %7112

; <label>:7045                                    ; preds = %7044
  %7046 = extractvalue %dx.types.CBufRet.f32 %7036, 1
  %7047 = extractvalue %dx.types.CBufRet.f32 %7036, 0
  %7048 = fmul fast float %7047, %6166
  %7049 = fmul fast float %7046, %6170
  %7050 = fadd fast float %7048, 5.000000e-01
  %7051 = call float @dx.op.unary.f32(i32 27, float %7050)  ; Round_ni(value)
  %7052 = fadd fast float %7049, 5.000000e-01
  %7053 = call float @dx.op.unary.f32(i32 27, float %7052)  ; Round_ni(value)
  %7054 = fsub fast float %7050, %7051
  %7055 = fsub fast float %7052, %7053
  %7056 = fadd fast float %7051, -5.000000e-01
  %7057 = fadd fast float %7053, -5.000000e-01
  %7058 = fmul fast float %7054, 2.000000e+00
  %7059 = fsub fast float 3.000000e+00, %7058
  %7060 = fadd fast float %7058, 1.000000e+00
  %7061 = fsub fast float 2.000000e+00, %7054
  %7062 = bitcast float %7059 to i32
  %7063 = sub nsw i32 2129859010, %7062
  %7064 = bitcast i32 %7063 to float
  %7065 = fmul fast float %7064, %7061
  %7066 = fadd fast float %7065, -1.000000e+00
  %7067 = bitcast float %7060 to i32
  %7068 = sub nsw i32 2129859010, %7067
  %7069 = bitcast i32 %7068 to float
  %7070 = fmul fast float %7069, %7054
  %7071 = fadd fast float %7070, 1.000000e+00
  %7072 = fmul fast float %7055, 2.000000e+00
  %7073 = fsub fast float 3.000000e+00, %7072
  %7074 = fadd fast float %7072, 1.000000e+00
  %7075 = fsub fast float 2.000000e+00, %7055
  %7076 = bitcast float %7073 to i32
  %7077 = sub nsw i32 2129859010, %7076
  %7078 = bitcast i32 %7077 to float
  %7079 = fmul fast float %7078, %7075
  %7080 = fadd fast float %7079, -1.000000e+00
  %7081 = bitcast float %7074 to i32
  %7082 = sub nsw i32 2129859010, %7081
  %7083 = bitcast i32 %7082 to float
  %7084 = fmul fast float %7083, %7055
  %7085 = fadd fast float %7084, 1.000000e+00
  %7086 = fadd fast float %7066, %7056
  %7087 = fmul fast float %7086, %7037
  %7088 = fadd fast float %7080, %7057
  %7089 = fmul fast float %7088, %7038
  %7090 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %54, float %7087, float %7089, float undef, float undef, i32 0, i32 0, i32 undef, float %7042)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7091 = extractvalue %dx.types.ResRet.f32 %7090, 0
  %7092 = fmul fast float %7091, %7059
  %7093 = fadd fast float %7071, %7056
  %7094 = fmul fast float %7093, %7037
  %7095 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %54, float %7094, float %7089, float undef, float undef, i32 0, i32 0, i32 undef, float %7042)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7096 = extractvalue %dx.types.ResRet.f32 %7095, 0
  %7097 = fmul fast float %7096, %7060
  %7098 = fadd fast float %7085, %7057
  %7099 = fmul fast float %7098, %7038
  %7100 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %54, float %7087, float %7099, float undef, float undef, i32 0, i32 0, i32 undef, float %7042)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7101 = extractvalue %dx.types.ResRet.f32 %7100, 0
  %7102 = fmul fast float %7101, %7059
  %7103 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %54, float %7094, float %7099, float undef, float undef, i32 0, i32 0, i32 undef, float %7042)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7104 = extractvalue %dx.types.ResRet.f32 %7103, 0
  %7105 = fmul fast float %7104, %7060
  %7106 = fadd fast float %7105, %7102
  %7107 = fmul fast float %7106, %7074
  %7108 = fadd fast float %7097, %7092
  %7109 = fmul fast float %7108, %7073
  %7110 = fadd fast float %7109, %7107
  %7111 = fmul fast float %7110, 6.250000e-02
  br label %7350

; <label>:7112                                    ; preds = %7044
  %7113 = fmul fast float %313, 0x401921FB60000000
  %7114 = call float @dx.op.unary.f32(i32 13, float %7113)  ; Sin(value)
  %7115 = call float @dx.op.unary.f32(i32 12, float %7113)  ; Cos(value)
  %7116 = fsub fast float -0.000000e+00, %7114
  br label %7117

; <label>:7117                                    ; preds = %7166, %7112
  %7118 = phi float [ 0.000000e+00, %7112 ], [ %7161, %7166 ]
  %7119 = phi float [ 0.000000e+00, %7112 ], [ %7163, %7166 ]
  %7120 = phi i32 [ 0, %7112 ], [ %7167, %7166 ]
  %7121 = mul i32 %7120, 2
  %7122 = add i32 0, %7121
  %7123 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7122
  %7124 = load float, float* %7123, align 4
  %7125 = mul i32 %7120, 2
  %7126 = add i32 1, %7125
  %7127 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7126
  %7128 = load float, float* %7127, align 4
  %7129 = fmul fast float %7124, %7115
  %7130 = call float @dx.op.tertiary.f32(i32 46, float %7128, float %7116, float %7129)  ; FMad(a,b,c)
  %7131 = fmul fast float %7124, %7114
  %7132 = call float @dx.op.tertiary.f32(i32 46, float %7128, float %7115, float %7131)  ; FMad(a,b,c)
  %7133 = fmul fast float %7130, %7040
  %7134 = fmul fast float %7132, %7040
  %7135 = fadd fast float %7133, %6166
  %7136 = fadd fast float %7134, %6170
  %7137 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %53, float %7135, float %7136, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7138 = extractvalue %dx.types.ResRet.f32 %7137, 0
  %7139 = extractvalue %dx.types.ResRet.f32 %7137, 1
  %7140 = extractvalue %dx.types.ResRet.f32 %7137, 2
  %7141 = extractvalue %dx.types.ResRet.f32 %7137, 3
  %7142 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %7138, float* %7142, align 4
  %7143 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %7139, float* %7143, align 4
  %7144 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %7140, float* %7144, align 4
  %7145 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %7141, float* %7145, align 4
  %7146 = fsub fast float %7138, %7042
  %7147 = fcmp fast olt float %7146, 0.000000e+00
  %7148 = select i1 %7147, float 0.000000e+00, float 1.000000e+00
  %7149 = fadd fast float %7148, %7118
  %7150 = fmul fast float %7148, %7146
  %7151 = fadd fast float %7150, %7119
  br label %7152

; <label>:7152                                    ; preds = %7152, %7117
  %7153 = phi i32 [ 1, %7117 ], [ %7164, %7152 ]
  %7154 = phi float [ %7151, %7117 ], [ %7163, %7152 ]
  %7155 = phi float [ %7149, %7117 ], [ %7161, %7152 ]
  %7156 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %7153
  %7157 = load float, float* %7156, align 4, !tbaa !123, !noalias !113
  %7158 = fsub fast float %7157, %7042
  %7159 = fcmp fast olt float %7158, 0.000000e+00
  %7160 = select i1 %7159, float 0.000000e+00, float 1.000000e+00
  %7161 = fadd fast float %7160, %7155
  %7162 = fmul fast float %7160, %7158
  %7163 = fadd fast float %7162, %7154
  %7164 = add nuw nsw i32 %7153, 1
  %7165 = icmp eq i32 %7164, 4
  br i1 %7165, label %7166, label %7152, !llvm.loop !125

; <label>:7166                                    ; preds = %7152
  %7167 = add nuw nsw i32 %7120, 1
  %7168 = icmp eq i32 %7167, 8
  br i1 %7168, label %7169, label %7117, !llvm.loop !126

; <label>:7169                                    ; preds = %7166
  %7170 = fdiv fast float 1.000000e+00, %7161
  %7171 = fmul fast float %7170, %7163
  %7172 = fdiv fast float 1.000000e+00, %7042
  %7173 = fmul fast float %7171, %7172
  %7174 = call float @dx.op.unary.f32(i32 7, float %7173)  ; Saturate(value)
  %7175 = call float @dx.op.binary.f32(i32 35, float %7174, float 0.000000e+00)  ; FMax(a,b)
  %7176 = fmul fast float %7161, 3.125000e-02
  %7177 = call float @dx.op.unary.f32(i32 7, float %7176)  ; Saturate(value)
  %7178 = fmul fast float %7177, 2.000000e+00
  %7179 = fadd fast float %7178, -1.000000e+00
  %7180 = fcmp fast ogt float %7179, 0.000000e+00
  %7181 = fcmp fast olt float %7179, 0.000000e+00
  %7182 = zext i1 %7180 to i32
  %7183 = zext i1 %7181 to i32
  %7184 = sub nsw i32 %7182, %7183
  %7185 = sitofp i32 %7184 to float
  %7186 = fmul fast float %7185, %7179
  %7187 = fsub fast float 1.000000e+00, %7186
  %7188 = fmul fast float %7187, %7187
  %7189 = fmul fast float %7188, %7187
  %7190 = fsub fast float %7187, %7189
  %7191 = fmul fast float %7190, %7175
  %7192 = fsub fast float 1.000000e+00, %7189
  %7193 = fsub fast float %7192, %7191
  %7194 = fmul fast float %7185, 5.000000e-01
  %7195 = fmul fast float %7194, %7193
  %7196 = fsub fast float 5.000000e-01, %7195
  br label %7350

; <label>:7197                                    ; preds = %7032
  br i1 %7043, label %7198, label %7265

; <label>:7198                                    ; preds = %7197
  %7199 = extractvalue %dx.types.CBufRet.f32 %7036, 1
  %7200 = extractvalue %dx.types.CBufRet.f32 %7036, 0
  %7201 = fmul fast float %7200, %6166
  %7202 = fmul fast float %7199, %6170
  %7203 = fadd fast float %7201, 5.000000e-01
  %7204 = call float @dx.op.unary.f32(i32 27, float %7203)  ; Round_ni(value)
  %7205 = fadd fast float %7202, 5.000000e-01
  %7206 = call float @dx.op.unary.f32(i32 27, float %7205)  ; Round_ni(value)
  %7207 = fsub fast float %7203, %7204
  %7208 = fsub fast float %7205, %7206
  %7209 = fadd fast float %7204, -5.000000e-01
  %7210 = fadd fast float %7206, -5.000000e-01
  %7211 = fmul fast float %7207, 2.000000e+00
  %7212 = fsub fast float 3.000000e+00, %7211
  %7213 = fadd fast float %7211, 1.000000e+00
  %7214 = fsub fast float 2.000000e+00, %7207
  %7215 = bitcast float %7212 to i32
  %7216 = sub nsw i32 2129859010, %7215
  %7217 = bitcast i32 %7216 to float
  %7218 = fmul fast float %7217, %7214
  %7219 = fadd fast float %7218, -1.000000e+00
  %7220 = bitcast float %7213 to i32
  %7221 = sub nsw i32 2129859010, %7220
  %7222 = bitcast i32 %7221 to float
  %7223 = fmul fast float %7222, %7207
  %7224 = fadd fast float %7223, 1.000000e+00
  %7225 = fmul fast float %7208, 2.000000e+00
  %7226 = fsub fast float 3.000000e+00, %7225
  %7227 = fadd fast float %7225, 1.000000e+00
  %7228 = fsub fast float 2.000000e+00, %7208
  %7229 = bitcast float %7226 to i32
  %7230 = sub nsw i32 2129859010, %7229
  %7231 = bitcast i32 %7230 to float
  %7232 = fmul fast float %7231, %7228
  %7233 = fadd fast float %7232, -1.000000e+00
  %7234 = bitcast float %7227 to i32
  %7235 = sub nsw i32 2129859010, %7234
  %7236 = bitcast i32 %7235 to float
  %7237 = fmul fast float %7236, %7208
  %7238 = fadd fast float %7237, 1.000000e+00
  %7239 = fadd fast float %7219, %7209
  %7240 = fmul fast float %7239, %7037
  %7241 = fadd fast float %7233, %7210
  %7242 = fmul fast float %7241, %7038
  %7243 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %54, float %7240, float %7242, float undef, float undef, i32 0, i32 0, i32 undef, float %7042)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7244 = extractvalue %dx.types.ResRet.f32 %7243, 0
  %7245 = fmul fast float %7244, %7212
  %7246 = fadd fast float %7224, %7209
  %7247 = fmul fast float %7246, %7037
  %7248 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %54, float %7247, float %7242, float undef, float undef, i32 0, i32 0, i32 undef, float %7042)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7249 = extractvalue %dx.types.ResRet.f32 %7248, 0
  %7250 = fmul fast float %7249, %7213
  %7251 = fadd fast float %7238, %7210
  %7252 = fmul fast float %7251, %7038
  %7253 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %54, float %7240, float %7252, float undef, float undef, i32 0, i32 0, i32 undef, float %7042)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7254 = extractvalue %dx.types.ResRet.f32 %7253, 0
  %7255 = fmul fast float %7254, %7212
  %7256 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %54, float %7247, float %7252, float undef, float undef, i32 0, i32 0, i32 undef, float %7042)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7257 = extractvalue %dx.types.ResRet.f32 %7256, 0
  %7258 = fmul fast float %7257, %7213
  %7259 = fadd fast float %7258, %7255
  %7260 = fmul fast float %7259, %7227
  %7261 = fadd fast float %7250, %7245
  %7262 = fmul fast float %7261, %7226
  %7263 = fadd fast float %7262, %7260
  %7264 = fmul fast float %7263, 6.250000e-02
  br label %7350

; <label>:7265                                    ; preds = %7197
  %7266 = fmul fast float %313, 0x401921FB60000000
  %7267 = call float @dx.op.unary.f32(i32 13, float %7266)  ; Sin(value)
  %7268 = call float @dx.op.unary.f32(i32 12, float %7266)  ; Cos(value)
  %7269 = fsub fast float -0.000000e+00, %7267
  br label %7270

; <label>:7270                                    ; preds = %7319, %7265
  %7271 = phi float [ 0.000000e+00, %7265 ], [ %7314, %7319 ]
  %7272 = phi float [ 0.000000e+00, %7265 ], [ %7316, %7319 ]
  %7273 = phi i32 [ 0, %7265 ], [ %7320, %7319 ]
  %7274 = mul i32 %7273, 2
  %7275 = add i32 0, %7274
  %7276 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7275
  %7277 = load float, float* %7276, align 4
  %7278 = mul i32 %7273, 2
  %7279 = add i32 1, %7278
  %7280 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7279
  %7281 = load float, float* %7280, align 4
  %7282 = fmul fast float %7277, %7268
  %7283 = call float @dx.op.tertiary.f32(i32 46, float %7281, float %7269, float %7282)  ; FMad(a,b,c)
  %7284 = fmul fast float %7277, %7267
  %7285 = call float @dx.op.tertiary.f32(i32 46, float %7281, float %7268, float %7284)  ; FMad(a,b,c)
  %7286 = fmul fast float %7283, %7040
  %7287 = fmul fast float %7285, %7040
  %7288 = fadd fast float %7286, %6166
  %7289 = fadd fast float %7287, %6170
  %7290 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %53, float %7288, float %7289, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7291 = extractvalue %dx.types.ResRet.f32 %7290, 0
  %7292 = extractvalue %dx.types.ResRet.f32 %7290, 1
  %7293 = extractvalue %dx.types.ResRet.f32 %7290, 2
  %7294 = extractvalue %dx.types.ResRet.f32 %7290, 3
  %7295 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %7291, float* %7295, align 4
  %7296 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %7292, float* %7296, align 4
  %7297 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %7293, float* %7297, align 4
  %7298 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %7294, float* %7298, align 4
  %7299 = fsub fast float %7291, %7042
  %7300 = fcmp fast olt float %7299, 0.000000e+00
  %7301 = select i1 %7300, float 0.000000e+00, float 1.000000e+00
  %7302 = fadd fast float %7301, %7271
  %7303 = fmul fast float %7301, %7299
  %7304 = fadd fast float %7303, %7272
  br label %7305

; <label>:7305                                    ; preds = %7305, %7270
  %7306 = phi i32 [ 1, %7270 ], [ %7317, %7305 ]
  %7307 = phi float [ %7304, %7270 ], [ %7316, %7305 ]
  %7308 = phi float [ %7302, %7270 ], [ %7314, %7305 ]
  %7309 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %7306
  %7310 = load float, float* %7309, align 4, !tbaa !123, !noalias !113
  %7311 = fsub fast float %7310, %7042
  %7312 = fcmp fast olt float %7311, 0.000000e+00
  %7313 = select i1 %7312, float 0.000000e+00, float 1.000000e+00
  %7314 = fadd fast float %7313, %7308
  %7315 = fmul fast float %7313, %7311
  %7316 = fadd fast float %7315, %7307
  %7317 = add nuw nsw i32 %7306, 1
  %7318 = icmp eq i32 %7317, 4
  br i1 %7318, label %7319, label %7305, !llvm.loop !125

; <label>:7319                                    ; preds = %7305
  %7320 = add nuw nsw i32 %7273, 1
  %7321 = icmp eq i32 %7320, 8
  br i1 %7321, label %7322, label %7270, !llvm.loop !126

; <label>:7322                                    ; preds = %7319
  %7323 = fdiv fast float 1.000000e+00, %7314
  %7324 = fmul fast float %7323, %7316
  %7325 = fdiv fast float 1.000000e+00, %7042
  %7326 = fmul fast float %7324, %7325
  %7327 = call float @dx.op.unary.f32(i32 7, float %7326)  ; Saturate(value)
  %7328 = call float @dx.op.binary.f32(i32 35, float %7327, float 0.000000e+00)  ; FMax(a,b)
  %7329 = fmul fast float %7314, 3.125000e-02
  %7330 = call float @dx.op.unary.f32(i32 7, float %7329)  ; Saturate(value)
  %7331 = fmul fast float %7330, 2.000000e+00
  %7332 = fadd fast float %7331, -1.000000e+00
  %7333 = fcmp fast ogt float %7332, 0.000000e+00
  %7334 = fcmp fast olt float %7332, 0.000000e+00
  %7335 = zext i1 %7333 to i32
  %7336 = zext i1 %7334 to i32
  %7337 = sub nsw i32 %7335, %7336
  %7338 = sitofp i32 %7337 to float
  %7339 = fmul fast float %7338, %7332
  %7340 = fsub fast float 1.000000e+00, %7339
  %7341 = fmul fast float %7340, %7340
  %7342 = fmul fast float %7341, %7340
  %7343 = fsub fast float %7340, %7342
  %7344 = fmul fast float %7343, %7328
  %7345 = fsub fast float 1.000000e+00, %7342
  %7346 = fsub fast float %7345, %7344
  %7347 = fmul fast float %7338, 5.000000e-01
  %7348 = fmul fast float %7347, %7346
  %7349 = fsub fast float 5.000000e-01, %7348
  br label %7350

; <label>:7350                                    ; preds = %7322, %7198, %7169, %7045, %7029
  %7351 = phi float [ 1.000000e+00, %7029 ], [ %7111, %7045 ], [ %7196, %7169 ], [ %7264, %7198 ], [ %7349, %7322 ]
  %7352 = fsub fast float %6863, %6696
  %7353 = fmul fast float %7352, %6263
  %7354 = fadd fast float %7353, %6696
  %7355 = fsub fast float %7030, %7354
  %7356 = fmul fast float %7355, %6262
  %7357 = fadd fast float %7356, %7354
  %7358 = fsub fast float %7351, %7357
  %7359 = fmul fast float %7358, %6290
  %7360 = fadd fast float %7359, %7357
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 2
  %7363 = fcmp fast ogt float %7362, 0.000000e+00
  br i1 %7363, label %7364, label %7404, !dx.controlflow.hints !130

; <label>:7364                                    ; preds = %7350
  %7365 = fcmp fast ugt float %7362, 0.000000e+00
  br i1 %7365, label %7366, label %7401

; <label>:7366                                    ; preds = %7364
  %7367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7368 = extractvalue %dx.types.CBufRet.f32 %7367, 0
  %7369 = extractvalue %dx.types.CBufRet.f32 %7367, 1
  %7370 = extractvalue %dx.types.CBufRet.f32 %7367, 2
  %7371 = extractvalue %dx.types.CBufRet.f32 %7367, 3
  %7372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7373 = extractvalue %dx.types.CBufRet.f32 %7372, 0
  %7374 = extractvalue %dx.types.CBufRet.f32 %7372, 1
  %7375 = extractvalue %dx.types.CBufRet.f32 %7372, 2
  %7376 = extractvalue %dx.types.CBufRet.f32 %7372, 3
  %7377 = extractvalue %dx.types.CBufRet.f32 %7361, 0
  %7378 = extractvalue %dx.types.CBufRet.f32 %7361, 1
  %7379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7380 = extractvalue %dx.types.CBufRet.f32 %7379, 0
  %7381 = extractvalue %dx.types.CBufRet.f32 %7379, 1
  %7382 = extractvalue %dx.types.CBufRet.f32 %7379, 2
  %7383 = fadd fast float %7380, %6143
  %7384 = fadd fast float %7381, %6144
  %7385 = fadd fast float %7382, %6145
  %7386 = fmul fast float %7383, %7368
  %7387 = call float @dx.op.tertiary.f32(i32 46, float %7369, float %7384, float %7386)  ; FMad(a,b,c)
  %7388 = call float @dx.op.tertiary.f32(i32 46, float %7370, float %7385, float %7387)  ; FMad(a,b,c)
  %7389 = fadd fast float %7388, %7371
  %7390 = fmul fast float %7383, %7373
  %7391 = call float @dx.op.tertiary.f32(i32 46, float %7374, float %7384, float %7390)  ; FMad(a,b,c)
  %7392 = call float @dx.op.tertiary.f32(i32 46, float %7375, float %7385, float %7391)  ; FMad(a,b,c)
  %7393 = fadd fast float %7392, %7376
  %7394 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %14, %dx.types.Handle %49, float %7389, float %7393, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7395 = extractvalue %dx.types.ResRet.f32 %7394, 0
  %7396 = fmul fast float %7395, %7378
  %7397 = fadd fast float %7396, %7377
  %7398 = call float @dx.op.unary.f32(i32 7, float %7397)  ; Saturate(value)
  %7399 = fmul fast float %7398, %7362
  %7400 = fsub fast float 1.000000e+00, %7399
  br label %7401

; <label>:7401                                    ; preds = %7366, %7364
  %7402 = phi float [ %7400, %7366 ], [ 1.000000e+00, %7364 ]
  %7403 = fmul fast float %7402, %7360
  br label %7404

; <label>:7404                                    ; preds = %7401, %7350, %6123
  %7405 = phi float [ 1.000000e+00, %6123 ], [ %7403, %7401 ], [ %7360, %7350 ]
  %7406 = call float @dx.op.binary.f32(i32 36, float %7405, float %7405)  ; FMin(a,b)
  %7407 = call float @dx.op.binary.f32(i32 36, float %7405, float %7406)  ; FMin(a,b)
  %7408 = fcmp fast ogt float %7407, 0.000000e+00
  br i1 %7408, label %7409, label %7574, !dx.controlflow.hints !131

; <label>:7409                                    ; preds = %7404
  %7410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7411 = extractvalue %dx.types.CBufRet.f32 %7410, 0
  %7412 = extractvalue %dx.types.CBufRet.f32 %7410, 1
  %7413 = extractvalue %dx.types.CBufRet.f32 %7410, 2
  %7414 = extractvalue %dx.types.CBufRet.f32 %7410, 3
  %7415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7416 = extractvalue %dx.types.CBufRet.f32 %7415, 0
  %7417 = extractvalue %dx.types.CBufRet.f32 %7415, 1
  %7418 = extractvalue %dx.types.CBufRet.f32 %7415, 2
  %7419 = extractvalue %dx.types.CBufRet.f32 %7415, 3
  %7420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7421 = extractvalue %dx.types.CBufRet.f32 %7420, 0
  %7422 = extractvalue %dx.types.CBufRet.f32 %7420, 1
  %7423 = extractvalue %dx.types.CBufRet.f32 %7420, 2
  %7424 = extractvalue %dx.types.CBufRet.f32 %7420, 3
  %7425 = fmul fast float %7411, %6143
  %7426 = call float @dx.op.tertiary.f32(i32 46, float %6144, float %7412, float %7425)  ; FMad(a,b,c)
  %7427 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %7413, float %7426)  ; FMad(a,b,c)
  %7428 = fadd fast float %7427, %7414
  %7429 = fmul fast float %7416, %6143
  %7430 = call float @dx.op.tertiary.f32(i32 46, float %6144, float %7417, float %7429)  ; FMad(a,b,c)
  %7431 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %7418, float %7430)  ; FMad(a,b,c)
  %7432 = fadd fast float %7431, %7419
  %7433 = fmul fast float %7421, %6143
  %7434 = call float @dx.op.tertiary.f32(i32 46, float %6144, float %7422, float %7433)  ; FMad(a,b,c)
  %7435 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %7423, float %7434)  ; FMad(a,b,c)
  %7436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7437 = extractvalue %dx.types.CBufRet.f32 %7436, 0
  %7438 = extractvalue %dx.types.CBufRet.f32 %7436, 1
  %7439 = extractvalue %dx.types.CBufRet.f32 %7436, 3
  %7440 = fmul fast float %7439, %7428
  %7441 = fmul fast float %7439, %7432
  %7442 = fadd fast float %7440, %7437
  %7443 = fadd fast float %7441, %7438
  %7444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7445 = extractvalue %dx.types.CBufRet.f32 %7444, 0
  %7446 = extractvalue %dx.types.CBufRet.f32 %7444, 1
  %7447 = fsub fast float %7442, %7445
  %7448 = fsub fast float %7443, %7446
  %7449 = fcmp fast olt float %7447, 0.000000e+00
  %7450 = fcmp fast olt float %7448, 0.000000e+00
  %7451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7452 = extractvalue %dx.types.CBufRet.f32 %7451, 0
  %7453 = extractvalue %dx.types.CBufRet.f32 %7451, 1
  %7454 = extractvalue %dx.types.CBufRet.f32 %7451, 2
  %7455 = extractvalue %dx.types.CBufRet.f32 %7451, 3
  %7456 = select i1 %7449, float %7452, float %7454
  %7457 = select i1 %7450, float %7453, float %7455
  %7458 = fmul fast float %7456, %7447
  %7459 = fmul fast float %7457, %7448
  %7460 = call float @dx.op.unary.f32(i32 6, float %7458)  ; FAbs(value)
  %7461 = call float @dx.op.unary.f32(i32 6, float %7459)  ; FAbs(value)
  %7462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7463 = extractvalue %dx.types.CBufRet.f32 %7462, 0
  %7464 = call float @dx.op.binary.f32(i32 35, float %7460, float %7461)  ; FMax(a,b)
  %7465 = fsub fast float %7463, %7464
  %7466 = call float @dx.op.unary.f32(i32 7, float %7465)  ; Saturate(value)
  %7467 = fcmp fast ogt float %7466, 0.000000e+00
  br i1 %7467, label %7468, label %7509, !dx.controlflow.hints !132

; <label>:7468                                    ; preds = %7409
  %7469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %52, float %7442, float %7443, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7470 = extractvalue %dx.types.ResRet.f32 %7469, 1
  %7471 = fcmp fast ogt float %7470, 0.000000e+00
  br i1 %7471, label %7472, label %7504

; <label>:7472                                    ; preds = %7468
  %7473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %52, float %7442, float %7443, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7474 = extractvalue %dx.types.ResRet.f32 %7473, 0
  %7475 = extractvalue %dx.types.ResRet.f32 %7473, 1
  %7476 = extractvalue %dx.types.ResRet.f32 %7473, 2
  %7477 = extractvalue %dx.types.ResRet.f32 %7473, 3
  %7478 = fsub fast float 1.000000e+00, %7424
  %7479 = fsub fast float %7478, %7435
  %7480 = fmul fast float %7479, 0x400921FB60000000
  %7481 = fadd fast float %7480, 0x3FF921FB60000000
  %7482 = call float @dx.op.unary.f32(i32 13, float %7481)  ; Sin(value)
  %7483 = fadd fast float %7482, -1.000000e+00
  %7484 = fmul fast float %7483, 0x3FD45F3060000000
  %7485 = fmul fast float %7479, 0x401921FB60000000
  %7486 = fadd fast float %7485, 0x400921FB60000000
  %7487 = call float @dx.op.unary.f32(i32 13, float %7486)  ; Sin(value)
  %7488 = fadd fast float %7487, 0x3E7777A5C0000000
  %7489 = fmul fast float %7488, 0x3FC45F3060000000
  %7490 = fmul fast float %7479, 0x4022D97C80000000
  %7491 = fadd fast float %7490, 0x4012D97C80000000
  %7492 = call float @dx.op.unary.f32(i32 13, float %7491)  ; Sin(value)
  %7493 = fadd fast float %7492, 1.000000e+00
  %7494 = fmul fast float %7493, 0x3FBB2995E0000000
  %7495 = fmul fast float %7479, 0x402921FB60000000
  %7496 = fadd fast float %7495, 0x401921FB60000000
  %7497 = call float @dx.op.unary.f32(i32 13, float %7496)  ; Sin(value)
  %7498 = fadd fast float %7497, 0xBE8777A5C0000000
  %7499 = fmul fast float %7498, 0x3FB45F3060000000
  %7500 = call float @dx.op.dot4.f32(i32 56, float %7474, float %7475, float %7476, float %7477, float %7484, float %7489, float %7494, float %7499)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7501 = fmul fast float %7500, 0xBFF7154760000000
  %7502 = call float @dx.op.unary.f32(i32 21, float %7501)  ; Exp(value)
  %7503 = call float @dx.op.unary.f32(i32 7, float %7502)  ; Saturate(value)
  br label %7504

; <label>:7504                                    ; preds = %7472, %7468
  %7505 = phi float [ %7503, %7472 ], [ 1.000000e+00, %7468 ]
  %7506 = fadd fast float %7505, -1.000000e+00
  %7507 = fmul fast float %7506, %7466
  %7508 = fadd fast float %7507, 1.000000e+00
  br label %7509

; <label>:7509                                    ; preds = %7504, %7409
  %7510 = phi float [ %7508, %7504 ], [ 1.000000e+00, %7409 ]
  %7511 = fmul fast float %7510, %7405
  %7512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7513 = extractvalue %dx.types.CBufRet.f32 %7512, 0
  %7514 = extractvalue %dx.types.CBufRet.f32 %7512, 1
  %7515 = extractvalue %dx.types.CBufRet.f32 %7512, 2
  %7516 = fadd fast float %7513, %202
  %7517 = fadd fast float %7514, %203
  %7518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7519 = extractvalue %dx.types.CBufRet.f32 %7518, 1
  %7520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7521 = extractvalue %dx.types.CBufRet.f32 %7520, 0
  %7522 = extractvalue %dx.types.CBufRet.f32 %7520, 1
  %7523 = extractvalue %dx.types.CBufRet.f32 %7520, 2
  %7524 = fsub fast float -0.000000e+00, %7516
  %7525 = fsub fast float -0.000000e+00, %7517
  %7526 = fsub fast float %5326, %7515
  %7527 = fadd fast float %7526, %7519
  %7528 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7524, float %7525, float %7527)  ; Dot3(ax,ay,az,bx,by,bz)
  %7529 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7521, float %7522, float %7523)  ; Dot3(ax,ay,az,bx,by,bz)
  %7530 = fdiv fast float 1.000000e+00, %7529
  %7531 = fmul fast float %7530, %7528
  %7532 = fmul fast float %7521, %7531
  %7533 = fmul fast float %7522, %7531
  %7534 = fadd fast float %7532, %7516
  %7535 = fadd fast float %7533, %7517
  %7536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7537 = extractvalue %dx.types.CBufRet.f32 %7536, 0
  %7538 = extractvalue %dx.types.CBufRet.f32 %7536, 1
  %7539 = fsub fast float %7534, %7537
  %7540 = fsub fast float %7535, %7538
  %7541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7542 = extractvalue %dx.types.CBufRet.f32 %7541, 2
  %7543 = extractvalue %dx.types.CBufRet.f32 %7541, 3
  %7544 = fmul fast float %7539, %7542
  %7545 = fmul fast float %7540, %7543
  %7546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7547 = extractvalue %dx.types.CBufRet.i32 %7546, 3
  %7548 = icmp eq i32 %7547, 0
  br i1 %7548, label %7554, label %7549

; <label>:7549                                    ; preds = %7509
  %7550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %51, float %7544, float %7545, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7551 = extractvalue %dx.types.ResRet.f32 %7550, 0
  %7552 = extractvalue %dx.types.ResRet.f32 %7550, 1
  %7553 = extractvalue %dx.types.ResRet.f32 %7550, 2
  br label %7559

; <label>:7554                                    ; preds = %7509
  %7555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %52, float %7544, float %7545, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7556 = extractvalue %dx.types.ResRet.f32 %7555, 0
  %7557 = extractvalue %dx.types.ResRet.f32 %7555, 1
  %7558 = extractvalue %dx.types.ResRet.f32 %7555, 2
  br label %7559

; <label>:7559                                    ; preds = %7554, %7549
  %7560 = phi float [ %7551, %7549 ], [ %7556, %7554 ]
  %7561 = phi float [ %7552, %7549 ], [ %7557, %7554 ]
  %7562 = phi float [ %7553, %7549 ], [ %7558, %7554 ]
  %7563 = extractvalue %dx.types.CBufRet.f32 %7518, 2
  %7564 = fmul fast float %7563, %7560
  %7565 = extractvalue %dx.types.CBufRet.f32 %7518, 0
  %7566 = fsub fast float %7531, %7565
  %7567 = fsub fast float %7566, %7564
  %7568 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7567)  ; FMax(a,b)
  %7569 = fmul fast float %7568, %7561
  %7570 = call float @dx.op.binary.f32(i32 36, float %7562, float %7569)  ; FMin(a,b)
  %7571 = fmul fast float %7570, 0xBFF7154760000000
  %7572 = call float @dx.op.unary.f32(i32 21, float %7571)  ; Exp(value)
  %7573 = fmul fast float %7511, %7572
  br label %7574

; <label>:7574                                    ; preds = %7559, %7404
  %7575 = phi float [ %7573, %7559 ], [ %7405, %7404 ]
  %7576 = call float @dx.op.binary.f32(i32 36, float %7575, float %7575)  ; FMin(a,b)
  %7577 = call float @dx.op.binary.f32(i32 36, float %7575, float %7576)  ; FMin(a,b)
  %7578 = fcmp fast ogt float %7577, 0.000000e+00
  br i1 %7578, label %7579, label %7770, !dx.controlflow.hints !133

; <label>:7579                                    ; preds = %7574
  %7580 = fmul fast float %7575, %6135
  %7581 = fmul fast float %7575, %6136
  %7582 = fmul fast float %7575, %6137
  %7583 = fsub fast float %204, %4503
  %7584 = fcmp fast ogt float %7583, 0.000000e+00
  %7585 = fmul fast float %6124, 5.120000e+02
  %7586 = fmul fast float %6125, 5.120000e+02
  %7587 = fmul fast float %6126, 5.120000e+02
  %7588 = fadd fast float %7587, %204
  %7589 = fsub fast float %4503, %7588
  %7590 = fmul fast float %7589, 2.000000e+00
  %7591 = fadd fast float %7590, %7588
  %7592 = select i1 %7584, float %7591, float %7588
  %7593 = fsub fast float %7592, %204
  %7594 = call float @dx.op.dot3.f32(i32 55, float %7585, float %7586, float %7593, float %7585, float %7586, float %7593)  ; Dot3(ax,ay,az,bx,by,bz)
  %7595 = call float @dx.op.unary.f32(i32 25, float %7594)  ; Rsqrt(value)
  %7596 = fmul fast float %7595, %7585
  %7597 = fmul fast float %7595, %7586
  %7598 = fmul fast float %7595, %7593
  %7599 = fsub fast float %4503, %204
  %7600 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7599)  ; Dot3(ax,ay,az,bx,by,bz)
  %7601 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7596, float %7597, float %7598)  ; Dot3(ax,ay,az,bx,by,bz)
  %7602 = fdiv fast float 1.000000e+00, %7601
  %7603 = fmul fast float %7602, %7600
  %7604 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7583, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7605 = fcmp fast ogt float %7604, 0.000000e+00
  %7606 = fcmp fast olt float %7604, 0.000000e+00
  %7607 = zext i1 %7605 to i32
  %7608 = zext i1 %7606 to i32
  %7609 = sub nsw i32 %7607, %7608
  %7610 = sitofp i32 %7609 to float
  %7611 = fsub fast float %7592, %4503
  %7612 = call float @dx.op.dot3.f32(i32 55, float %7585, float %7586, float %7611, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7613 = fcmp fast ogt float %7612, 0.000000e+00
  %7614 = fcmp fast olt float %7612, 0.000000e+00
  %7615 = zext i1 %7613 to i32
  %7616 = zext i1 %7614 to i32
  %7617 = sub nsw i32 %7615, %7616
  %7618 = sitofp i32 %7617 to float
  %7619 = fcmp fast une float %7610, %7618
  br i1 %7619, label %7620, label %7630

; <label>:7620                                    ; preds = %7579
  %7621 = fmul fast float %7603, %7598
  %7622 = fmul fast float %7603, %7597
  %7623 = fmul fast float %7603, %7596
  %7624 = fmul fast float %7623, %7623
  %7625 = fmul fast float %7622, %7622
  %7626 = fadd fast float %7624, %7625
  %7627 = fmul fast float %7621, %7621
  %7628 = fadd fast float %7626, %7627
  %7629 = call float @dx.op.unary.f32(i32 24, float %7628)  ; Sqrt(value)
  br label %7640

; <label>:7630                                    ; preds = %7579
  %7631 = icmp slt i32 %7609, 0
  br i1 %7631, label %7632, label %7640

; <label>:7632                                    ; preds = %7630
  %7633 = fsub fast float %204, %7592
  %7634 = fmul fast float %7585, %7585
  %7635 = fmul fast float %7586, %7586
  %7636 = fadd fast float %7634, %7635
  %7637 = fmul fast float %7633, %7633
  %7638 = fadd fast float %7636, %7637
  %7639 = call float @dx.op.unary.f32(i32 24, float %7638)  ; Sqrt(value)
  br label %7640

; <label>:7640                                    ; preds = %7632, %7630, %7620
  %7641 = phi float [ %7629, %7620 ], [ %7639, %7632 ], [ 0.000000e+00, %7630 ]
  %7642 = fsub fast float -0.000000e+00, %7641
  %7643 = select i1 %7584, float -0.000000e+00, float %7642
  %7644 = fmul fast float %4504, 0x3FF7154760000000
  %7645 = fmul fast float %7644, %7643
  %7646 = fmul fast float %4505, 0x3FF7154760000000
  %7647 = fmul fast float %7646, %7643
  %7648 = fmul fast float %4506, 0x3FF7154760000000
  %7649 = fmul fast float %7648, %7643
  %7650 = call float @dx.op.unary.f32(i32 21, float %7645)  ; Exp(value)
  %7651 = call float @dx.op.unary.f32(i32 21, float %7647)  ; Exp(value)
  %7652 = call float @dx.op.unary.f32(i32 21, float %7649)  ; Exp(value)
  %7653 = call float @dx.op.unary.f32(i32 7, float %7650)  ; Saturate(value)
  %7654 = call float @dx.op.unary.f32(i32 7, float %7651)  ; Saturate(value)
  %7655 = call float @dx.op.unary.f32(i32 7, float %7652)  ; Saturate(value)
  %7656 = fmul fast float %7580, %7653
  %7657 = fmul fast float %7581, %7654
  %7658 = fmul fast float %7582, %7655
  %7659 = fsub fast float %6124, %5329
  %7660 = fsub fast float %6125, %5330
  %7661 = fsub fast float %6126, %5331
  %7662 = call float @dx.op.dot3.f32(i32 55, float %7659, float %7660, float %7661, float %7659, float %7660, float %7661)  ; Dot3(ax,ay,az,bx,by,bz)
  %7663 = call float @dx.op.unary.f32(i32 25, float %7662)  ; Rsqrt(value)
  %7664 = fmul fast float %7663, %7659
  %7665 = fmul fast float %7663, %7660
  %7666 = fmul fast float %7663, %7661
  %7667 = call float @dx.op.dot3.f32(i32 55, float %6124, float %6125, float %6126, float %5289, float %5290, float %5291)  ; Dot3(ax,ay,az,bx,by,bz)
  %7668 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %7664, float %7665, float %7666)  ; Dot3(ax,ay,az,bx,by,bz)
  %7669 = call float @dx.op.unary.f32(i32 7, float %7667)  ; Saturate(value)
  %7670 = bitcast i32 %5361 to float
  %7671 = fmul fast float %7669, %7669
  %7672 = fmul fast float %7671, %7670
  %7673 = call float @dx.op.unary.f32(i32 7, float %7672)  ; Saturate(value)
  %7674 = fmul fast float %7673, %7669
  %7675 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %7664, float %7665, float %7666)  ; Dot3(ax,ay,az,bx,by,bz)
  %7676 = fmul fast float %7675, %7675
  %7677 = call float @dx.op.unary.f32(i32 6, float %7667)  ; FAbs(value)
  %7678 = fsub fast float 1.000000e+00, %5355
  %7679 = fmul fast float %5337, %5337
  %7680 = fmul fast float %7679, %7678
  %7681 = fadd fast float %7680, %5355
  %7682 = bitcast float %7681 to i32
  %7683 = ashr i32 %7682, 1
  %7684 = add nsw i32 %7683, 532487669
  %7685 = bitcast i32 %7684 to float
  %7686 = fadd fast float %7685, %5337
  %7687 = fmul fast float %5355, %7676
  %7688 = fsub fast float 1.000000e+00, %7676
  %7689 = fadd fast float %7688, %7687
  %7690 = fmul fast float %7677, %7677
  %7691 = fmul fast float %7690, %7678
  %7692 = fadd fast float %7691, %5355
  %7693 = bitcast float %7692 to i32
  %7694 = ashr i32 %7693, 1
  %7695 = add nsw i32 %7694, 532487669
  %7696 = bitcast i32 %7695 to float
  %7697 = fadd fast float %7696, %7677
  %7698 = fmul fast float %7689, %7689
  %7699 = fmul fast float %7698, %7686
  %7700 = fmul fast float %7699, %7697
  %7701 = fdiv fast float 0x3FF0A00000000000, %7700
  %7702 = fmul fast float %7701, %5355
  %7703 = fmul fast float %5465, 0x3FF9999980000000
  %7704 = fsub fast float 5.000000e+00, %7703
  %7705 = call float @dx.op.unary.f32(i32 6, float %7668)  ; FAbs(value)
  %7706 = fsub fast float 1.000000e+00, %7705
  %7707 = fmul fast float %5465, 0x41D9660740000000
  %7708 = fadd fast float %7707, 0xC1EFBF8940000000
  %7709 = bitcast float %7706 to i32
  %7710 = sitofp i32 %7709 to float
  %7711 = fmul fast float %7710, %7704
  %7712 = fadd fast float %7708, %7711
  %7713 = fptosi float %7712 to i32
  %7714 = bitcast i32 %7713 to float
  %7715 = fsub fast float 1.000000e+00, %5283
  %7716 = fsub fast float 1.000000e+00, %5284
  %7717 = fsub fast float 1.000000e+00, %5335
  %7718 = fmul fast float %7714, %7715
  %7719 = fmul fast float %7714, %7716
  %7720 = fmul fast float %7714, %7717
  %7721 = fadd fast float %7718, %5283
  %7722 = fadd fast float %7719, %5284
  %7723 = fadd fast float %7720, %5335
  %7724 = fmul fast float %7667, 9.843750e-01
  %7725 = fadd fast float %7724, 7.812500e-03
  %7726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %52, float %7725, float %5469, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7727 = extractvalue %dx.types.ResRet.f32 %7726, 0
  %7728 = extractvalue %dx.types.ResRet.f32 %7726, 1
  %7729 = extractvalue %dx.types.ResRet.f32 %7726, 2
  %7730 = extractvalue %dx.types.ResRet.f32 %7726, 3
  %7731 = fsub fast float %7729, %7727
  %7732 = fsub fast float %7730, %7728
  %7733 = fmul fast float %7731, %5475
  %7734 = fmul fast float %7732, %5475
  %7735 = fadd fast float %7733, %7727
  %7736 = fadd fast float %7734, %7728
  %7737 = fmul fast float %7735, %5283
  %7738 = fmul fast float %7735, %5284
  %7739 = fmul fast float %7735, %5335
  %7740 = fadd fast float %7737, %7736
  %7741 = fadd fast float %7738, %7736
  %7742 = fadd fast float %7739, %7736
  %7743 = call float @dx.op.binary.f32(i32 35, float %7741, float %7742)  ; FMax(a,b)
  %7744 = call float @dx.op.binary.f32(i32 35, float %7740, float %7743)  ; FMax(a,b)
  %7745 = fsub fast float 1.000000e+00, %7744
  %7746 = fmul fast float %7674, %7656
  %7747 = fmul fast float %7746, %7745
  %7748 = fmul fast float %7674, %7657
  %7749 = fmul fast float %7748, %7745
  %7750 = fmul fast float %7674, %7658
  %7751 = fmul fast float %7750, %7745
  %7752 = fmul fast float %7746, %7702
  %7753 = fmul fast float %7752, %7721
  %7754 = fmul fast float %7748, %7702
  %7755 = fmul fast float %7754, %7722
  %7756 = fmul fast float %7750, %7702
  %7757 = fmul fast float %7756, %7723
  %7758 = fadd fast float %7747, %6032
  %7759 = fmul fast float %7758, %1375
  %7760 = fadd fast float %7749, %6034
  %7761 = fmul fast float %7760, %1375
  %7762 = fadd fast float %7751, %6036
  %7763 = fmul fast float %7762, %1375
  %7764 = fadd fast float %7753, %6112
  %7765 = fmul fast float %7764, %1375
  %7766 = fadd fast float %7755, %6115
  %7767 = fmul fast float %7766, %1375
  %7768 = fadd fast float %7757, %6118
  %7769 = fmul fast float %7768, %1375
  br label %7770

; <label>:7770                                    ; preds = %7640, %7574, %5979
  %7771 = phi float [ %6113, %5979 ], [ %6113, %7574 ], [ %7765, %7640 ]
  %7772 = phi float [ %6116, %5979 ], [ %6116, %7574 ], [ %7767, %7640 ]
  %7773 = phi float [ %6119, %5979 ], [ %6119, %7574 ], [ %7769, %7640 ]
  %7774 = phi float [ %6108, %5979 ], [ %6108, %7574 ], [ %7759, %7640 ]
  %7775 = phi float [ %6109, %5979 ], [ %6109, %7574 ], [ %7761, %7640 ]
  %7776 = phi float [ %6110, %5979 ], [ %6110, %7574 ], [ %7763, %7640 ]
  %7777 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7778 = extractvalue %dx.types.CBufRet.i32 %7777, 0
  %7779 = icmp eq i32 %7778, 0
  br i1 %7779, label %8386, label %7780

; <label>:7780                                    ; preds = %7770
  %7781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7782 = extractvalue %dx.types.CBufRet.f32 %7781, 2
  %7783 = extractvalue %dx.types.CBufRet.f32 %7781, 3
  %7784 = fmul fast float %7782, %115
  %7785 = fmul fast float %7783, %116
  %7786 = fptoui float %7784 to i32
  %7787 = fptoui float %7785 to i32
  %7788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7789 = extractvalue %dx.types.CBufRet.f32 %7788, 0
  %7790 = extractvalue %dx.types.CBufRet.f32 %7788, 2
  %7791 = extractvalue %dx.types.CBufRet.f32 %7788, 3
  %7792 = fadd fast float %102, -4.000000e+00
  %7793 = call float @dx.op.binary.f32(i32 35, float %7792, float 0.000000e+00)  ; FMax(a,b)
  %7794 = fadd fast float %7793, %7789
  %7795 = fmul fast float %7794, %7790
  %7796 = call float @dx.op.unary.f32(i32 23, float %7795)  ; Log(value)
  %7797 = fmul fast float %7796, %7791
  %7798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7799 = extractvalue %dx.types.CBufRet.f32 %7798, 2
  %7800 = fmul fast float %7797, %7799
  %7801 = call float @dx.op.unary.f32(i32 7, float %7800)  ; Saturate(value)
  %7802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7803 = extractvalue %dx.types.CBufRet.i32 %7802, 1
  %7804 = add i32 %7803, -1
  %7805 = uitofp i32 %7803 to float
  %7806 = fmul fast float %7805, %7801
  %7807 = fptoui float %7806 to i32
  %7808 = call i32 @dx.op.binary.i32(i32 40, i32 %7807, i32 %7804)  ; UMin(a,b)
  %7809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7810 = extractvalue %dx.types.CBufRet.i32 %7809, 2
  %7811 = extractvalue %dx.types.CBufRet.i32 %7809, 3
  %7812 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7787, i32 %7810, i32 %7786)  ; UMad(a,b,c)
  %7813 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7808, i32 %7811, i32 %7812)  ; UMad(a,b,c)
  %7814 = add nsw i32 %7778, -1
  %7815 = call i32 @dx.op.binary.i32(i32 37, i32 %7814, i32 0)  ; IMax(a,b)
  %7816 = call float @dx.op.binary.f32(i32 35, float %102, float 0.000000e+00)  ; FMax(a,b)
  %7817 = fptoui float %7816 to i32
  %7818 = lshr i32 %7817, 5
  %7819 = call i32 @dx.op.binary.i32(i32 40, i32 %7818, i32 8191)  ; UMin(a,b)
  %7820 = shl i32 %7819, 2
  %7821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7820, i32 undef)  ; BufferLoad(srv,index,wot)
  %7822 = extractvalue %dx.types.ResRet.i32 %7821, 0
  %7823 = lshr i32 %7822, 16
  %7824 = and i32 %7822, 65535
  %7825 = lshr i32 %7822, 21
  %7826 = lshr i32 %7824, 5
  %7827 = call i32 @dx.op.binary.i32(i32 40, i32 %7826, i32 %7815)  ; UMin(a,b)
  %7828 = icmp ugt i32 %7825, %7827
  br i1 %7828, label %8386, label %7829

; <label>:7829                                    ; preds = %7780
  br label %7830

; <label>:7830                                    ; preds = %8376, %7829
  %7831 = phi i32 [ %8383, %8376 ], [ %7825, %7829 ]
  %7832 = phi float [ %8377, %8376 ], [ %7771, %7829 ]
  %7833 = phi float [ %8378, %8376 ], [ %7772, %7829 ]
  %7834 = phi float [ %8379, %8376 ], [ %7773, %7829 ]
  %7835 = phi float [ %8380, %8376 ], [ %7774, %7829 ]
  %7836 = phi float [ %8381, %8376 ], [ %7775, %7829 ]
  %7837 = phi float [ %8382, %8376 ], [ %7776, %7829 ]
  %7838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7839 = extractvalue %dx.types.CBufRet.i32 %7838, 0
  %7840 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7813, i32 %7839, i32 %7831)  ; UMad(a,b,c)
  %7841 = shl i32 %7840, 2
  %7842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %7841, i32 undef)  ; BufferLoad(srv,index,wot)
  %7843 = extractvalue %dx.types.ResRet.i32 %7842, 0
  %7844 = shl i32 %7831, 5
  %7845 = sub nsw i32 %7823, %7844
  %7846 = call i32 @dx.op.binary.i32(i32 37, i32 %7845, i32 0)  ; IMax(a,b)
  %7847 = call i32 @dx.op.binary.i32(i32 38, i32 %7846, i32 31)  ; IMin(a,b)
  %7848 = sub nsw i32 1, %7823
  %7849 = add nsw i32 %7848, %7824
  %7850 = call i32 @dx.op.binary.i32(i32 37, i32 %7849, i32 0)  ; IMax(a,b)
  %7851 = call i32 @dx.op.binary.i32(i32 38, i32 %7850, i32 32)  ; IMin(a,b)
  %7852 = and i32 %7851, 31
  %7853 = shl i32 -1, %7852
  %7854 = xor i32 %7853, -1
  %7855 = and i32 %7847, 31
  %7856 = shl i32 %7854, %7855
  %7857 = icmp eq i32 %7851, 32
  %7858 = select i1 %7857, i32 -1, i32 %7856
  %7859 = and i32 %7858, %7843
  %7860 = icmp eq i32 %7859, 0
  br i1 %7860, label %8376, label %7861

; <label>:7861                                    ; preds = %7830
  br label %7862

; <label>:7862                                    ; preds = %7996, %7861
  %7863 = phi i32 [ %7874, %7996 ], [ %7859, %7861 ]
  %7864 = phi float [ %7997, %7996 ], [ %7832, %7861 ]
  %7865 = phi float [ %7998, %7996 ], [ %7833, %7861 ]
  %7866 = phi float [ %7999, %7996 ], [ %7834, %7861 ]
  %7867 = phi float [ %8000, %7996 ], [ %7835, %7861 ]
  %7868 = phi float [ %8001, %7996 ], [ %7836, %7861 ]
  %7869 = phi float [ %8002, %7996 ], [ %7837, %7861 ]
  %7870 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7863)  ; FirstbitLo(value)
  %7871 = add i32 %7870, %7844
  %7872 = and i32 %7870, 31
  %7873 = shl i32 1, %7872
  %7874 = xor i32 %7873, %7863
  %7875 = mul i32 %7871, 112
  %7876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7875, i32 undef)  ; BufferLoad(srv,index,wot)
  %7877 = extractvalue %dx.types.ResRet.f32 %7876, 0
  %7878 = extractvalue %dx.types.ResRet.f32 %7876, 1
  %7879 = extractvalue %dx.types.ResRet.f32 %7876, 2
  %7880 = or i32 %7875, 12
  %7881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7880, i32 undef)  ; BufferLoad(srv,index,wot)
  %7882 = extractvalue %dx.types.ResRet.f32 %7881, 0
  %7883 = add i32 %7875, 16
  %7884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7883, i32 undef)  ; BufferLoad(srv,index,wot)
  %7885 = extractvalue %dx.types.ResRet.f32 %7884, 0
  %7886 = extractvalue %dx.types.ResRet.f32 %7884, 1
  %7887 = extractvalue %dx.types.ResRet.f32 %7884, 2
  %7888 = add i32 %7875, 28
  %7889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %7888, i32 undef)  ; BufferLoad(srv,index,wot)
  %7890 = extractvalue %dx.types.ResRet.i32 %7889, 0
  %7891 = add i32 %7875, 44
  %7892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7891, i32 undef)  ; BufferLoad(srv,index,wot)
  %7893 = extractvalue %dx.types.ResRet.f32 %7892, 0
  %7894 = add i32 %7875, 48
  %7895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7894, i32 undef)  ; BufferLoad(srv,index,wot)
  %7896 = extractvalue %dx.types.ResRet.f32 %7895, 0
  %7897 = extractvalue %dx.types.ResRet.f32 %7895, 1
  %7898 = extractvalue %dx.types.ResRet.f32 %7895, 2
  %7899 = extractvalue %dx.types.ResRet.f32 %7895, 3
  %7900 = add i32 %7875, 64
  %7901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7900, i32 undef)  ; BufferLoad(srv,index,wot)
  %7902 = extractvalue %dx.types.ResRet.f32 %7901, 0
  %7903 = extractvalue %dx.types.ResRet.f32 %7901, 1
  %7904 = extractvalue %dx.types.ResRet.f32 %7901, 2
  %7905 = extractvalue %dx.types.ResRet.f32 %7901, 3
  %7906 = add i32 %7875, 80
  %7907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7906, i32 undef)  ; BufferLoad(srv,index,wot)
  %7908 = extractvalue %dx.types.ResRet.f32 %7907, 1
  %7909 = extractvalue %dx.types.ResRet.f32 %7907, 2
  %7910 = add i32 %7875, 92
  %7911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %7910, i32 undef)  ; BufferLoad(srv,index,wot)
  %7912 = extractvalue %dx.types.ResRet.i32 %7911, 0
  %7913 = call float @dx.op.dot3.f32(i32 55, float %7877, float %7878, float %7879, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7914 = select i1 %302, float %7908, float %7877
  %7915 = select i1 %302, float %7913, float %7878
  %7916 = select i1 %302, float %7909, float %7879
  %7917 = and i32 %7912, 65535
  %7918 = uitofp i32 %7917 to float
  %7919 = lshr i32 %7912, 16
  %7920 = uitofp i32 %7919 to float
  %7921 = and i32 %7890, 65535
  %7922 = and i32 %7890, 50331648
  %7923 = icmp eq i32 %7922, 33554432
  %7924 = fsub fast float %7896, %202
  %7925 = fsub fast float %7897, %203
  %7926 = fsub fast float %7898, %204
  %7927 = call float @dx.op.dot3.f32(i32 55, float %7924, float %7925, float %7926, float %7924, float %7925, float %7926)  ; Dot3(ax,ay,az,bx,by,bz)
  %7928 = call float @dx.op.unary.f32(i32 24, float %7927)  ; Sqrt(value)
  %7929 = fdiv fast float 1.000000e+00, %7928
  %7930 = fmul fast float %7929, %7924
  %7931 = fmul fast float %7929, %7925
  %7932 = fmul fast float %7929, %7926
  %7933 = fadd fast float %7928, %7882
  %7934 = fdiv fast float 1.000000e+00, %7933
  %7935 = fmul float %7893, %7934
  %7936 = fmul float %7935, %7935
  %7937 = call float @dx.op.unary.f32(i32 7, float %7936)  ; Saturate(value)
  br i1 %7923, label %7938, label %7959

; <label>:7938                                    ; preds = %7862
  %7939 = fmul fast float %7904, %7885
  %7940 = fmul fast float %7904, %7886
  %7941 = fmul fast float %7904, %7887
  %7942 = fadd fast float %7924, %7939
  %7943 = fadd fast float %7925, %7940
  %7944 = fadd fast float %7926, %7941
  %7945 = call float @dx.op.dot3.f32(i32 55, float %7942, float %7943, float %7944, float %7942, float %7943, float %7944)  ; Dot3(ax,ay,az,bx,by,bz)
  %7946 = call float @dx.op.unary.f32(i32 25, float %7945)  ; Rsqrt(value)
  %7947 = fmul fast float %7946, %7942
  %7948 = fmul fast float %7946, %7943
  %7949 = fmul fast float %7946, %7944
  %7950 = fsub fast float %202, %7896
  %7951 = fsub fast float %203, %7897
  %7952 = fsub fast float %204, %7898
  %7953 = fsub fast float -0.000000e+00, %7950
  %7954 = fsub fast float -0.000000e+00, %7951
  %7955 = fsub fast float -0.000000e+00, %7952
  %7956 = call float @dx.op.dot3.f32(i32 55, float %7953, float %7954, float %7955, float %7885, float %7886, float %7887)  ; Dot3(ax,ay,az,bx,by,bz)
  %7957 = fcmp fast ogt float %7956, 0.000000e+00
  %7958 = uitofp i1 %7957 to float
  br label %7959

; <label>:7959                                    ; preds = %7938, %7862
  %7960 = phi float [ %7958, %7938 ], [ 1.000000e+00, %7862 ]
  %7961 = phi float [ %7947, %7938 ], [ %7930, %7862 ]
  %7962 = phi float [ %7948, %7938 ], [ %7931, %7862 ]
  %7963 = phi float [ %7949, %7938 ], [ %7932, %7862 ]
  %7964 = call float @dx.op.dot3.f32(i32 55, float %7885, float %7886, float %7887, float %7961, float %7962, float %7963)  ; Dot3(ax,ay,az,bx,by,bz)
  %7965 = fmul fast float %7964, %7964
  %7966 = call float @dx.op.unary.f32(i32 7, float %7965)  ; Saturate(value)
  %7967 = fsub fast float 1.000000e+00, %7966
  %7968 = fmul fast float %7967, 5.000000e-01
  %7969 = fcmp fast ogt float %7964, 0.000000e+00
  %7970 = fsub fast float 1.000000e+00, %7968
  %7971 = select i1 %7969, float %7968, float %7970
  %7972 = fmul fast float %7971, %7920
  %7973 = fadd fast float %7972, %7918
  %7974 = fmul fast float %7973, 0x3EF0001000000000
  %7975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %52, float %7974, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7976 = extractvalue %dx.types.ResRet.f32 %7975, 0
  %7977 = fmul fast float %7964, %7902
  %7978 = fadd fast float %7977, %7903
  %7979 = call float @dx.op.unary.f32(i32 7, float %7978)  ; Saturate(value)
  %7980 = select i1 %7923, float 1.000000e+00, float %7979
  %7981 = select i1 %7923, float %7979, float 1.000000e+00
  %7982 = fmul fast float %7928, %7899
  %7983 = fsub fast float 1.000000e+00, %7982
  %7984 = fmul fast float %7983, %7905
  %7985 = call float @dx.op.unary.f32(i32 7, float %7984)  ; Saturate(value)
  %7986 = fmul fast float %7985, %7981
  %7987 = fmul fast float %7986, 2.000000e+00
  %7988 = fsub fast float 3.000000e+00, %7987
  %7989 = fmul fast float %7976, %7960
  %7990 = fmul fast float %7986, %7986
  %7991 = fmul fast float %7990, %7989
  %7992 = fmul fast float %7991, %7988
  %7993 = call float @dx.op.binary.f32(i32 36, float %7992, float %7992)  ; FMin(a,b)
  %7994 = call float @dx.op.binary.f32(i32 36, float %7992, float %7993)  ; FMin(a,b)
  %7995 = fcmp fast ogt float %7994, 0.000000e+00
  br i1 %7995, label %8004, label %7996, !dx.controlflow.hints !134

; <label>:7996                                    ; preds = %8217, %8150, %7959
  %7997 = phi float [ %7864, %8150 ], [ %7864, %7959 ], [ %8372, %8217 ]
  %7998 = phi float [ %7865, %8150 ], [ %7865, %7959 ], [ %8373, %8217 ]
  %7999 = phi float [ %7866, %8150 ], [ %7866, %7959 ], [ %8374, %8217 ]
  %8000 = phi float [ %7867, %8150 ], [ %7867, %7959 ], [ %8363, %8217 ]
  %8001 = phi float [ %7868, %8150 ], [ %7868, %7959 ], [ %8364, %8217 ]
  %8002 = phi float [ %7869, %8150 ], [ %7869, %7959 ], [ %8365, %8217 ]
  %8003 = icmp eq i32 %7863, %7873
  br i1 %8003, label %8375, label %7862

; <label>:8004                                    ; preds = %7959
  %8005 = icmp eq i32 %7921, 255
  br i1 %8005, label %8150, label %8006, !dx.controlflow.hints !135

; <label>:8006                                    ; preds = %8004
  %8007 = mul nuw nsw i32 %7921, 176
  %8008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8007, i32 undef)  ; BufferLoad(srv,index,wot)
  %8009 = extractvalue %dx.types.ResRet.f32 %8008, 0
  %8010 = extractvalue %dx.types.ResRet.f32 %8008, 1
  %8011 = extractvalue %dx.types.ResRet.f32 %8008, 2
  %8012 = extractvalue %dx.types.ResRet.f32 %8008, 3
  %8013 = add nuw nsw i32 %8007, 16
  %8014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8013, i32 undef)  ; BufferLoad(srv,index,wot)
  %8015 = extractvalue %dx.types.ResRet.f32 %8014, 0
  %8016 = extractvalue %dx.types.ResRet.f32 %8014, 1
  %8017 = add nuw nsw i32 %8007, 32
  %8018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8017, i32 undef)  ; BufferLoad(srv,index,wot)
  %8019 = extractvalue %dx.types.ResRet.f32 %8018, 0
  %8020 = extractvalue %dx.types.ResRet.f32 %8018, 1
  %8021 = extractvalue %dx.types.ResRet.f32 %8018, 2
  %8022 = add nuw nsw i32 %8007, 48
  %8023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8022, i32 undef)  ; BufferLoad(srv,index,wot)
  %8024 = extractvalue %dx.types.ResRet.f32 %8023, 0
  %8025 = extractvalue %dx.types.ResRet.f32 %8023, 1
  %8026 = extractvalue %dx.types.ResRet.f32 %8023, 2
  %8027 = extractvalue %dx.types.ResRet.f32 %8023, 3
  %8028 = add nuw nsw i32 %8007, 64
  %8029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8028, i32 undef)  ; BufferLoad(srv,index,wot)
  %8030 = extractvalue %dx.types.ResRet.f32 %8029, 0
  %8031 = extractvalue %dx.types.ResRet.f32 %8029, 1
  %8032 = extractvalue %dx.types.ResRet.f32 %8029, 2
  %8033 = extractvalue %dx.types.ResRet.f32 %8029, 3
  %8034 = add nuw nsw i32 %8007, 80
  %8035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8034, i32 undef)  ; BufferLoad(srv,index,wot)
  %8036 = extractvalue %dx.types.ResRet.f32 %8035, 0
  %8037 = extractvalue %dx.types.ResRet.f32 %8035, 1
  %8038 = extractvalue %dx.types.ResRet.f32 %8035, 2
  %8039 = extractvalue %dx.types.ResRet.f32 %8035, 3
  %8040 = add nuw nsw i32 %8007, 96
  %8041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8040, i32 undef)  ; BufferLoad(srv,index,wot)
  %8042 = extractvalue %dx.types.ResRet.f32 %8041, 0
  %8043 = extractvalue %dx.types.ResRet.f32 %8041, 1
  %8044 = extractvalue %dx.types.ResRet.f32 %8041, 2
  %8045 = extractvalue %dx.types.ResRet.f32 %8041, 3
  %8046 = bitcast float %8016 to i32
  %8047 = fmul fast float %8021, %122
  %8048 = fmul fast float %8021, %123
  %8049 = fmul fast float %8021, %124
  %8050 = fadd fast float %8047, %202
  %8051 = fadd fast float %8048, %203
  %8052 = fadd fast float %8049, %204
  %8053 = fmul fast float %8050, %8024
  %8054 = call float @dx.op.tertiary.f32(i32 46, float %8051, float %8030, float %8053)  ; FMad(a,b,c)
  %8055 = call float @dx.op.tertiary.f32(i32 46, float %8052, float %8036, float %8054)  ; FMad(a,b,c)
  %8056 = fadd fast float %8055, %8042
  %8057 = fmul fast float %8050, %8025
  %8058 = call float @dx.op.tertiary.f32(i32 46, float %8051, float %8031, float %8057)  ; FMad(a,b,c)
  %8059 = call float @dx.op.tertiary.f32(i32 46, float %8052, float %8037, float %8058)  ; FMad(a,b,c)
  %8060 = fadd fast float %8059, %8043
  %8061 = fmul fast float %8050, %8026
  %8062 = call float @dx.op.tertiary.f32(i32 46, float %8051, float %8032, float %8061)  ; FMad(a,b,c)
  %8063 = call float @dx.op.tertiary.f32(i32 46, float %8052, float %8038, float %8062)  ; FMad(a,b,c)
  %8064 = fadd fast float %8063, %8044
  %8065 = fmul fast float %8050, %8027
  %8066 = call float @dx.op.tertiary.f32(i32 46, float %8051, float %8033, float %8065)  ; FMad(a,b,c)
  %8067 = call float @dx.op.tertiary.f32(i32 46, float %8052, float %8039, float %8066)  ; FMad(a,b,c)
  %8068 = fadd fast float %8067, %8045
  %8069 = fdiv fast float %8056, %8068
  %8070 = fdiv fast float %8060, %8068
  %8071 = fdiv fast float %8064, %8068
  %8072 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8071)  ; FMax(a,b)
  %8073 = fmul fast float %313, 0x401921FB60000000
  %8074 = call float @dx.op.unary.f32(i32 13, float %8073)  ; Sin(value)
  %8075 = call float @dx.op.unary.f32(i32 12, float %8073)  ; Cos(value)
  %8076 = fmul fast float %8075, %8020
  %8077 = call float @dx.op.tertiary.f32(i32 46, float %8074, float %8020, float 0.000000e+00)  ; FMad(a,b,c)
  %8078 = fmul fast float %8020, %8074
  %8079 = fsub fast float -0.000000e+00, %8078
  %8080 = call float @dx.op.tertiary.f32(i32 46, float %8075, float %8020, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8081

; <label>:8081                                    ; preds = %8081, %8006
  %8082 = phi float [ 0.000000e+00, %8006 ], [ %8114, %8081 ]
  %8083 = phi float [ 0.000000e+00, %8006 ], [ %8116, %8081 ]
  %8084 = phi i32 [ 0, %8006 ], [ %8117, %8081 ]
  %8085 = mul i32 %8084, 2
  %8086 = add i32 0, %8085
  %8087 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8086
  %8088 = load float, float* %8087, align 4
  %8089 = mul i32 %8084, 2
  %8090 = add i32 1, %8089
  %8091 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8090
  %8092 = load float, float* %8091, align 4
  %8093 = fmul fast float %8076, %8088
  %8094 = call float @dx.op.tertiary.f32(i32 46, float %8092, float %8079, float %8093)  ; FMad(a,b,c)
  %8095 = fmul fast float %8088, %8077
  %8096 = call float @dx.op.tertiary.f32(i32 46, float %8092, float %8080, float %8095)  ; FMad(a,b,c)
  %8097 = fadd fast float %8094, %8069
  %8098 = fadd fast float %8096, %8070
  %8099 = fmul fast float %8097, %8015
  %8100 = fmul fast float %8098, %8015
  %8101 = call float @dx.op.binary.f32(i32 35, float %8099, float %8011)  ; FMax(a,b)
  %8102 = call float @dx.op.binary.f32(i32 35, float %8100, float %8011)  ; FMax(a,b)
  %8103 = call float @dx.op.binary.f32(i32 36, float %8101, float %8012)  ; FMin(a,b)
  %8104 = call float @dx.op.binary.f32(i32 36, float %8102, float %8012)  ; FMin(a,b)
  %8105 = fadd fast float %8103, %8009
  %8106 = fadd fast float %8104, %8010
  %8107 = uitofp i32 %8046 to float
  %8108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %53, float %8105, float %8106, float %8107, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8109 = extractvalue %dx.types.ResRet.f32 %8108, 0
  %8110 = fsub fast float %8109, %8072
  %8111 = fsub fast float %8110, %8019
  %8112 = fcmp fast ogt float %8111, 0.000000e+00
  %8113 = select i1 %8112, float 1.000000e+00, float 0.000000e+00
  %8114 = fadd fast float %8113, %8082
  %8115 = select i1 %8112, float %8111, float 0.000000e+00
  %8116 = fadd fast float %8115, %8083
  %8117 = add nuw nsw i32 %8084, 1
  %8118 = icmp eq i32 %8117, 8
  br i1 %8118, label %8119, label %8081

; <label>:8119                                    ; preds = %8081
  %8120 = fdiv fast float 1.000000e+00, %8114
  %8121 = fmul fast float %8120, %8116
  %8122 = fdiv fast float 1.000000e+00, %8072
  %8123 = fmul fast float %8121, %8122
  %8124 = call float @dx.op.unary.f32(i32 7, float %8123)  ; Saturate(value)
  %8125 = call float @dx.op.binary.f32(i32 35, float %8124, float 0.000000e+00)  ; FMax(a,b)
  %8126 = fmul fast float %8114, 1.250000e-01
  %8127 = call float @dx.op.unary.f32(i32 7, float %8126)  ; Saturate(value)
  %8128 = fmul fast float %8127, 2.000000e+00
  %8129 = fadd fast float %8128, -1.000000e+00
  %8130 = fcmp fast ogt float %8129, 0.000000e+00
  %8131 = fcmp fast olt float %8129, 0.000000e+00
  %8132 = zext i1 %8130 to i32
  %8133 = zext i1 %8131 to i32
  %8134 = sub nsw i32 %8132, %8133
  %8135 = sitofp i32 %8134 to float
  %8136 = fmul fast float %8135, %8129
  %8137 = fsub fast float 1.000000e+00, %8136
  %8138 = fmul fast float %8137, %8137
  %8139 = fmul fast float %8138, %8137
  %8140 = fsub fast float %8137, %8139
  %8141 = fmul fast float %8140, %8125
  %8142 = fsub fast float 1.000000e+00, %8139
  %8143 = fsub fast float %8142, %8141
  %8144 = fmul fast float %8135, 5.000000e-01
  %8145 = fmul fast float %8144, %8143
  %8146 = fsub fast float -5.000000e-01, %8145
  %8147 = fmul fast float %8146, %7980
  %8148 = fadd fast float %8147, 1.000000e+00
  %8149 = fmul fast float %8148, %7992
  br label %8150

; <label>:8150                                    ; preds = %8119, %8004
  %8151 = phi float [ %8149, %8119 ], [ %7992, %8004 ]
  %8152 = call float @dx.op.binary.f32(i32 36, float %8151, float %8151)  ; FMin(a,b)
  %8153 = call float @dx.op.binary.f32(i32 36, float %8151, float %8152)  ; FMin(a,b)
  %8154 = fcmp fast ogt float %8153, 0.000000e+00
  br i1 %8154, label %8155, label %7996, !dx.controlflow.hints !136

; <label>:8155                                    ; preds = %8150
  %8156 = fmul fast float %8151, %7914
  %8157 = fmul fast float %8151, %7915
  %8158 = fmul fast float %8151, %7916
  %8159 = fsub fast float %7898, %4503
  %8160 = fcmp fast ogt float %8159, 0.000000e+00
  %8161 = fsub fast float %204, %4503
  %8162 = fcmp fast ogt float %8161, 0.000000e+00
  %8163 = xor i1 %8162, %8160
  %8164 = fsub fast float %4503, %7898
  %8165 = fmul fast float %8164, 2.000000e+00
  %8166 = fadd fast float %8165, %7898
  %8167 = select i1 %8163, float %7898, float %8166
  %8168 = fsub fast float %8167, %204
  %8169 = call float @dx.op.dot3.f32(i32 55, float %7924, float %7925, float %8168, float %7924, float %7925, float %8168)  ; Dot3(ax,ay,az,bx,by,bz)
  %8170 = call float @dx.op.unary.f32(i32 25, float %8169)  ; Rsqrt(value)
  %8171 = fmul fast float %8170, %7924
  %8172 = fmul fast float %8170, %7925
  %8173 = fmul fast float %8170, %8168
  %8174 = fsub fast float %4503, %204
  %8175 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8174)  ; Dot3(ax,ay,az,bx,by,bz)
  %8176 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8171, float %8172, float %8173)  ; Dot3(ax,ay,az,bx,by,bz)
  %8177 = fdiv fast float 1.000000e+00, %8176
  %8178 = fmul fast float %8177, %8175
  %8179 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8161, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8180 = fcmp fast ogt float %8179, 0.000000e+00
  %8181 = fcmp fast olt float %8179, 0.000000e+00
  %8182 = zext i1 %8180 to i32
  %8183 = zext i1 %8181 to i32
  %8184 = sub nsw i32 %8182, %8183
  %8185 = sitofp i32 %8184 to float
  %8186 = fsub fast float %8167, %4503
  %8187 = call float @dx.op.dot3.f32(i32 55, float %7924, float %7925, float %8186, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8188 = fcmp fast ogt float %8187, 0.000000e+00
  %8189 = fcmp fast olt float %8187, 0.000000e+00
  %8190 = zext i1 %8188 to i32
  %8191 = zext i1 %8189 to i32
  %8192 = sub nsw i32 %8190, %8191
  %8193 = sitofp i32 %8192 to float
  %8194 = fcmp fast une float %8185, %8193
  br i1 %8194, label %8195, label %8205

; <label>:8195                                    ; preds = %8155
  %8196 = fmul fast float %8178, %8173
  %8197 = fmul fast float %8178, %8172
  %8198 = fmul fast float %8178, %8171
  %8199 = fmul fast float %8198, %8198
  %8200 = fmul fast float %8197, %8197
  %8201 = fadd fast float %8199, %8200
  %8202 = fmul fast float %8196, %8196
  %8203 = fadd fast float %8201, %8202
  %8204 = call float @dx.op.unary.f32(i32 24, float %8203)  ; Sqrt(value)
  br label %8217

; <label>:8205                                    ; preds = %8155
  %8206 = icmp slt i32 %8184, 0
  br i1 %8206, label %8207, label %8217

; <label>:8207                                    ; preds = %8205
  %8208 = fsub fast float %202, %7896
  %8209 = fsub fast float %203, %7897
  %8210 = fsub fast float %204, %8167
  %8211 = fmul fast float %8208, %8208
  %8212 = fmul fast float %8209, %8209
  %8213 = fadd fast float %8211, %8212
  %8214 = fmul fast float %8210, %8210
  %8215 = fadd fast float %8213, %8214
  %8216 = call float @dx.op.unary.f32(i32 24, float %8215)  ; Sqrt(value)
  br label %8217

; <label>:8217                                    ; preds = %8207, %8205, %8195
  %8218 = phi float [ %8204, %8195 ], [ %8216, %8207 ], [ 0.000000e+00, %8205 ]
  %8219 = and i1 %8162, %8160
  %8220 = fsub fast float -0.000000e+00, %8218
  %8221 = select i1 %8219, float -0.000000e+00, float %8220
  %8222 = fmul fast float %4504, 0x3FF7154760000000
  %8223 = fmul fast float %8222, %8221
  %8224 = fmul fast float %4505, 0x3FF7154760000000
  %8225 = fmul fast float %8224, %8221
  %8226 = fmul fast float %4506, 0x3FF7154760000000
  %8227 = fmul fast float %8226, %8221
  %8228 = call float @dx.op.unary.f32(i32 21, float %8223)  ; Exp(value)
  %8229 = call float @dx.op.unary.f32(i32 21, float %8225)  ; Exp(value)
  %8230 = call float @dx.op.unary.f32(i32 21, float %8227)  ; Exp(value)
  %8231 = call float @dx.op.unary.f32(i32 7, float %8228)  ; Saturate(value)
  %8232 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  %8233 = call float @dx.op.unary.f32(i32 7, float %8230)  ; Saturate(value)
  %8234 = fmul fast float %8156, %8231
  %8235 = fmul fast float %8157, %8232
  %8236 = fmul fast float %8158, %8233
  %8237 = fsub fast float %7930, %5329
  %8238 = fsub fast float %7931, %5330
  %8239 = fsub fast float %7932, %5331
  %8240 = call float @dx.op.dot3.f32(i32 55, float %8237, float %8238, float %8239, float %8237, float %8238, float %8239)  ; Dot3(ax,ay,az,bx,by,bz)
  %8241 = call float @dx.op.unary.f32(i32 25, float %8240)  ; Rsqrt(value)
  %8242 = fmul fast float %8241, %8237
  %8243 = fmul fast float %8241, %8238
  %8244 = fmul fast float %8241, %8239
  %8245 = call float @dx.op.dot3.f32(i32 55, float %7930, float %7931, float %7932, float %5289, float %5290, float %5291)  ; Dot3(ax,ay,az,bx,by,bz)
  %8246 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %8242, float %8243, float %8244)  ; Dot3(ax,ay,az,bx,by,bz)
  %8247 = call float @dx.op.unary.f32(i32 7, float %8245)  ; Saturate(value)
  %8248 = fmul fast float %8247, %7937
  %8249 = bitcast i32 %5361 to float
  %8250 = fmul fast float %8247, %8247
  %8251 = fmul fast float %8250, %8249
  %8252 = call float @dx.op.unary.f32(i32 7, float %8251)  ; Saturate(value)
  %8253 = fmul fast float %8248, %8252
  %8254 = bitcast float %7927 to i32
  %8255 = ashr i32 %8254, 1
  %8256 = sub nsw i32 1597463007, %8255
  %8257 = bitcast i32 %8256 to float
  %8258 = fmul fast float %8257, %7924
  %8259 = fmul fast float %8257, %7925
  %8260 = fmul fast float %8257, %7926
  %8261 = fsub fast float %8258, %5329
  %8262 = fsub fast float %8259, %5330
  %8263 = fsub fast float %8260, %5331
  %8264 = call float @dx.op.dot3.f32(i32 55, float %8261, float %8262, float %8263, float %8261, float %8262, float %8263)  ; Dot3(ax,ay,az,bx,by,bz)
  %8265 = call float @dx.op.unary.f32(i32 25, float %8264)  ; Rsqrt(value)
  %8266 = fmul fast float %8261, %8265
  %8267 = fmul fast float %8262, %8265
  %8268 = fmul fast float %8263, %8265
  %8269 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float %8266, float %8267, float %8268)  ; Dot3(ax,ay,az,bx,by,bz)
  %8270 = fmul fast float %8269, %8269
  %8271 = call float @dx.op.unary.f32(i32 6, float %8245)  ; FAbs(value)
  %8272 = fsub fast float 1.000000e+00, %5355
  %8273 = fmul fast float %5337, %5337
  %8274 = fmul fast float %8273, %8272
  %8275 = fadd fast float %8274, %5355
  %8276 = bitcast float %8275 to i32
  %8277 = ashr i32 %8276, 1
  %8278 = add nsw i32 %8277, 532487669
  %8279 = bitcast i32 %8278 to float
  %8280 = fadd fast float %8279, %5337
  %8281 = fmul fast float %5355, %8270
  %8282 = fsub fast float 1.000000e+00, %8270
  %8283 = fadd fast float %8282, %8281
  %8284 = fmul fast float %8271, %8271
  %8285 = fmul fast float %8284, %8272
  %8286 = fadd fast float %8285, %5355
  %8287 = bitcast float %8286 to i32
  %8288 = ashr i32 %8287, 1
  %8289 = add nsw i32 %8288, 532487669
  %8290 = bitcast i32 %8289 to float
  %8291 = fadd fast float %8290, %8271
  %8292 = fmul fast float %8283, %8283
  %8293 = fmul fast float %8292, %8280
  %8294 = fmul fast float %8293, %8291
  %8295 = fdiv fast float 1.000000e+00, %8294
  %8296 = bitcast float %5355 to i32
  %8297 = sitofp i32 %8296 to float
  %8298 = fmul fast float %8297, 0x3FE7F73180000000
  %8299 = fadd fast float %8298, 0x41AFE27C40000000
  %8300 = fptosi float %8299 to i32
  %8301 = bitcast i32 %8300 to float
  %8302 = fmul fast float %7893, 0x3FD80E9D60000000
  %8303 = fmul fast float %8302, %8257
  %8304 = fadd fast float %8301, %8303
  %8305 = bitcast float %8304 to i32
  %8306 = sub nsw i32 2129859010, %8305
  %8307 = bitcast i32 %8306 to float
  %8308 = fmul fast float %5355, %8295
  %8309 = fmul fast float %8308, %8301
  %8310 = fmul fast float %8309, %8307
  %8311 = fmul fast float %5465, 0x3FF9999980000000
  %8312 = fsub fast float 5.000000e+00, %8311
  %8313 = call float @dx.op.unary.f32(i32 6, float %8246)  ; FAbs(value)
  %8314 = fsub fast float 1.000000e+00, %8313
  %8315 = fmul fast float %5465, 0x41D9660740000000
  %8316 = fadd fast float %8315, 0xC1EFBF8940000000
  %8317 = bitcast float %8314 to i32
  %8318 = sitofp i32 %8317 to float
  %8319 = fmul fast float %8318, %8312
  %8320 = fadd fast float %8316, %8319
  %8321 = fptosi float %8320 to i32
  %8322 = bitcast i32 %8321 to float
  %8323 = fsub fast float 1.000000e+00, %5283
  %8324 = fsub fast float 1.000000e+00, %5284
  %8325 = fsub fast float 1.000000e+00, %5335
  %8326 = fmul fast float %8322, %8323
  %8327 = fmul fast float %8322, %8324
  %8328 = fmul fast float %8322, %8325
  %8329 = fadd fast float %8326, %5283
  %8330 = fadd fast float %8327, %5284
  %8331 = fadd fast float %8328, %5335
  %8332 = fmul fast float %8245, 9.843750e-01
  %8333 = fadd fast float %8332, 7.812500e-03
  %8334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %52, float %8333, float %5469, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8335 = extractvalue %dx.types.ResRet.f32 %8334, 0
  %8336 = extractvalue %dx.types.ResRet.f32 %8334, 1
  %8337 = extractvalue %dx.types.ResRet.f32 %8334, 2
  %8338 = extractvalue %dx.types.ResRet.f32 %8334, 3
  %8339 = fsub fast float %8337, %8335
  %8340 = fsub fast float %8338, %8336
  %8341 = fmul fast float %8339, %5475
  %8342 = fmul fast float %8340, %5475
  %8343 = fadd fast float %8341, %8335
  %8344 = fadd fast float %8342, %8336
  %8345 = fmul fast float %8343, %5283
  %8346 = fmul fast float %8343, %5284
  %8347 = fmul fast float %8343, %5335
  %8348 = fadd fast float %8345, %8344
  %8349 = fadd fast float %8346, %8344
  %8350 = fadd fast float %8347, %8344
  %8351 = call float @dx.op.binary.f32(i32 35, float %8349, float %8350)  ; FMax(a,b)
  %8352 = call float @dx.op.binary.f32(i32 35, float %8348, float %8351)  ; FMax(a,b)
  %8353 = fsub fast float 1.000000e+00, %8352
  %8354 = fmul fast float %8234, %1375
  %8355 = fmul fast float %8354, %8253
  %8356 = fmul fast float %8355, %8353
  %8357 = fmul fast float %8235, %1375
  %8358 = fmul fast float %8357, %8253
  %8359 = fmul fast float %8358, %8353
  %8360 = fmul fast float %8236, %1375
  %8361 = fmul fast float %8360, %8253
  %8362 = fmul fast float %8361, %8353
  %8363 = fadd fast float %8356, %7867
  %8364 = fadd fast float %8359, %7868
  %8365 = fadd fast float %8362, %7869
  %8366 = fmul fast float %8355, %8329
  %8367 = fmul fast float %8366, %8310
  %8368 = fmul fast float %8358, %8330
  %8369 = fmul fast float %8368, %8310
  %8370 = fmul fast float %8361, %8331
  %8371 = fmul fast float %8370, %8310
  %8372 = fadd fast float %8367, %7864
  %8373 = fadd fast float %8369, %7865
  %8374 = fadd fast float %8371, %7866
  br label %7996

; <label>:8375                                    ; preds = %7996
  br label %8376

; <label>:8376                                    ; preds = %8375, %7830
  %8377 = phi float [ %7832, %7830 ], [ %7997, %8375 ]
  %8378 = phi float [ %7833, %7830 ], [ %7998, %8375 ]
  %8379 = phi float [ %7834, %7830 ], [ %7999, %8375 ]
  %8380 = phi float [ %7835, %7830 ], [ %8000, %8375 ]
  %8381 = phi float [ %7836, %7830 ], [ %8001, %8375 ]
  %8382 = phi float [ %7837, %7830 ], [ %8002, %8375 ]
  %8383 = add i32 %7831, 1
  %8384 = icmp ugt i32 %8383, %7827
  br i1 %8384, label %8385, label %7830

; <label>:8385                                    ; preds = %8376
  br label %8386

; <label>:8386                                    ; preds = %8385, %7780, %7770
  %8387 = phi float [ %7771, %7770 ], [ %7771, %7780 ], [ %8377, %8385 ]
  %8388 = phi float [ %7772, %7770 ], [ %7772, %7780 ], [ %8378, %8385 ]
  %8389 = phi float [ %7773, %7770 ], [ %7773, %7780 ], [ %8379, %8385 ]
  %8390 = phi float [ %7774, %7770 ], [ %7774, %7780 ], [ %8380, %8385 ]
  %8391 = phi float [ %7775, %7770 ], [ %7775, %7780 ], [ %8381, %8385 ]
  %8392 = phi float [ %7776, %7770 ], [ %7776, %7780 ], [ %8382, %8385 ]
  %8393 = fmul fast float %1375, %1375
  %8394 = fmul fast float %8393, %6085
  %8395 = fmul fast float %8393, %6086
  %8396 = fmul fast float %8393, %6087
  %8397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8398 = extractvalue %dx.types.CBufRet.f32 %8397, 0
  %8399 = fmul fast float %8398, %6091
  %8400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8401 = extractvalue %dx.types.CBufRet.f32 %8400, 3
  %8402 = fsub fast float 1.000000e+00, %4028
  %8403 = call float @dx.op.unary.f32(i32 7, float %8402)  ; Saturate(value)
  %8404 = fadd fast float %4049, %8392
  %8405 = fmul fast float %8404, %4028
  %8406 = fmul fast float %8403, %8401
  %8407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8408 = extractvalue %dx.types.CBufRet.f32 %8407, 3
  %8409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %8410 = extractvalue %dx.types.CBufRet.f32 %8409, 0
  %8411 = fmul fast float %8390, %5286
  %8412 = fmul fast float %8391, %5287
  %8413 = fmul fast float %8392, %5288
  %8414 = fmul fast float %8394, %8410
  %8415 = fsub fast float -0.000000e+00, %8414
  %8416 = fmul fast float %8395, %8410
  %8417 = fsub fast float -0.000000e+00, %8416
  %8418 = fmul fast float %8396, %8410
  %8419 = fsub fast float -0.000000e+00, %8418
  %8420 = fmul fast float %8411, %8410
  %8421 = fmul fast float %8412, %8410
  %8422 = fmul fast float %8413, %8410
  %8423 = fmul fast float %8410, %8387
  %8424 = fmul fast float %8410, %8388
  %8425 = fmul fast float %8410, %8389
  %8426 = fcmp fast ogt float %102, %262
  %8427 = and i1 %8426, %4509
  %8428 = or i1 %4515, %8427
  %8429 = icmp eq i32 %4508, 2
  %8430 = fcmp fast ole float %102, %262
  %8431 = and i1 %8430, %8429
  %8432 = or i1 %8431, %8428
  br i1 %8427, label %8433, label %8690

; <label>:8433                                    ; preds = %8386
  %8434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8434, 2
  %8436 = extractvalue %dx.types.CBufRet.f32 %8434, 3
  %8437 = fmul fast float %8435, %115
  %8438 = fmul fast float %8436, %116
  %8439 = call float @dx.op.unary.f32(i32 7, float %8437)  ; Saturate(value)
  %8440 = call float @dx.op.unary.f32(i32 7, float %8438)  ; Saturate(value)
  %8441 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %52, float %8439, float %8440, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8442 = extractvalue %dx.types.ResRet.f32 %8441, 0
  %8443 = extractvalue %dx.types.ResRet.f32 %8441, 1
  %8444 = extractvalue %dx.types.ResRet.f32 %8441, 2
  %8445 = extractvalue %dx.types.ResRet.f32 %8441, 3
  %8446 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %52, float %8439, float %8440, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8447 = extractvalue %dx.types.ResRet.f32 %8446, 0
  %8448 = extractvalue %dx.types.ResRet.f32 %8446, 1
  %8449 = extractvalue %dx.types.ResRet.f32 %8446, 2
  %8450 = extractvalue %dx.types.ResRet.f32 %8446, 3
  %8451 = call float @dx.op.binary.f32(i32 35, float %8443, float %8444)  ; FMax(a,b)
  %8452 = call float @dx.op.binary.f32(i32 35, float %8442, float %8451)  ; FMax(a,b)
  %8453 = call float @dx.op.binary.f32(i32 35, float %8452, float %8445)  ; FMax(a,b)
  %8454 = call float @dx.op.binary.f32(i32 36, float %8448, float %8449)  ; FMin(a,b)
  %8455 = call float @dx.op.binary.f32(i32 36, float %8447, float %8454)  ; FMin(a,b)
  %8456 = call float @dx.op.binary.f32(i32 36, float %8455, float %8450)  ; FMin(a,b)
  %8457 = fmul fast float %8453, 2.550000e+02
  %8458 = fadd fast float %8457, 0x3F70101020000000
  %8459 = fptoui float %8458 to i32
  %8460 = fmul fast float %8456, 2.550000e+02
  %8461 = fadd fast float %8460, 0x3F70101020000000
  %8462 = fptoui float %8461 to i32
  %8463 = icmp ult i32 %8459, %8462
  br i1 %8463, label %8464, label %8632

; <label>:8464                                    ; preds = %8433
  %8465 = fcmp fast ogt float %101, 9.843750e-01
  %8466 = fadd fast float %102, -4.000000e+00
  %8467 = select i1 %8465, float -4.000000e+00, float %8466
  %8468 = call float @dx.op.binary.f32(i32 35, float %8467, float 0.000000e+00)  ; FMax(a,b)
  %8469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8470 = extractvalue %dx.types.CBufRet.f32 %8469, 0
  %8471 = fadd fast float %8470, %8468
  %8472 = extractvalue %dx.types.CBufRet.f32 %8469, 2
  %8473 = fmul fast float %8471, %8472
  %8474 = call float @dx.op.unary.f32(i32 23, float %8473)  ; Log(value)
  %8475 = extractvalue %dx.types.CBufRet.f32 %8469, 3
  %8476 = fmul fast float %8475, %8474
  %8477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8478 = extractvalue %dx.types.CBufRet.f32 %8477, 2
  %8479 = fmul fast float %8476, %8478
  %8480 = call float @dx.op.unary.f32(i32 7, float %8479)  ; Saturate(value)
  %8481 = uitofp i32 %8459 to float
  %8482 = uitofp i32 %8462 to float
  %8483 = fadd fast float %8481, 5.000000e-01
  %8484 = fadd fast float %8482, 5.000000e-01
  %8485 = fmul fast float %8478, %8483
  %8486 = fmul fast float %8478, %8484
  %8487 = fadd fast float %8485, 0x3F0FFB4800000000
  %8488 = fadd fast float %8486, 0xBF0FFB4800000000
  %8489 = call float @dx.op.binary.f32(i32 35, float %8480, float %8487)  ; FMax(a,b)
  %8490 = call float @dx.op.binary.f32(i32 36, float %8489, float %8488)  ; FMin(a,b)
  %8491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8492 = extractvalue %dx.types.CBufRet.f32 %8491, 1
  %8493 = extractvalue %dx.types.CBufRet.f32 %8491, 2
  %8494 = extractvalue %dx.types.CBufRet.f32 %8491, 0
  %8495 = fmul fast float %8492, %8490
  %8496 = fadd fast float %8494, %8495
  %8497 = fadd fast float %8494, %8493
  %8498 = fsub fast float %8492, %8493
  %8499 = fadd fast float %8498, %8494
  %8500 = call float @dx.op.binary.f32(i32 35, float %8496, float %8497)  ; FMax(a,b)
  %8501 = call float @dx.op.binary.f32(i32 36, float %8500, float %8499)  ; FMin(a,b)
  %8502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %8439, float %8440, float %8501, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8503 = extractvalue %dx.types.ResRet.f32 %8502, 0
  %8504 = extractvalue %dx.types.ResRet.f32 %8502, 1
  %8505 = extractvalue %dx.types.ResRet.f32 %8502, 2
  %8506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8507 = extractvalue %dx.types.CBufRet.i32 %8506, 0
  %8508 = extractvalue %dx.types.CBufRet.i32 %8506, 1
  %8509 = uitofp i32 %8507 to float
  %8510 = uitofp i32 %8508 to float
  %8511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8511, 0
  %8513 = extractvalue %dx.types.CBufRet.f32 %8511, 1
  %8514 = fmul fast float %8509, %8439
  %8515 = fmul fast float %8510, %8440
  %8516 = fadd fast float %8514, -5.000000e-01
  %8517 = fadd fast float %8515, -5.000000e-01
  %8518 = call float @dx.op.unary.f32(i32 22, float %8516)  ; Frc(value)
  %8519 = call float @dx.op.unary.f32(i32 22, float %8517)  ; Frc(value)
  %8520 = fmul fast float %8518, %8518
  %8521 = fmul fast float %8520, %8518
  %8522 = fsub fast float 3.000000e+00, %8518
  %8523 = fmul fast float %8520, %8522
  %8524 = fmul fast float %8518, 3.000000e+00
  %8525 = fmul fast float %8521, 3.000000e+00
  %8526 = fmul fast float %8520, 6.000000e+00
  %8527 = fsub fast float %8525, %8526
  %8528 = fadd fast float %8527, 4.000000e+00
  %8529 = fmul fast float %8528, 0x3FC5555560000000
  %8530 = fmul fast float %8521, -3.000000e+00
  %8531 = fadd fast float %8520, %8518
  %8532 = fmul fast float %8531, 3.000000e+00
  %8533 = fadd fast float %8530, 1.000000e+00
  %8534 = fadd fast float %8533, %8532
  %8535 = fmul fast float %8521, 0x3FC5555560000000
  %8536 = fmul fast float %8519, %8519
  %8537 = fmul fast float %8536, %8519
  %8538 = fsub fast float 3.000000e+00, %8519
  %8539 = fmul fast float %8536, %8538
  %8540 = fmul fast float %8519, 3.000000e+00
  %8541 = fmul fast float %8537, 3.000000e+00
  %8542 = fmul fast float %8536, 6.000000e+00
  %8543 = fsub fast float %8541, %8542
  %8544 = fadd fast float %8543, 4.000000e+00
  %8545 = fmul fast float %8544, 0x3FC5555560000000
  %8546 = fmul fast float %8537, -3.000000e+00
  %8547 = fadd fast float %8536, %8519
  %8548 = fmul fast float %8547, 3.000000e+00
  %8549 = fadd fast float %8546, 1.000000e+00
  %8550 = fadd fast float %8549, %8548
  %8551 = fmul fast float %8537, 0x3FC5555560000000
  %8552 = fadd fast float %8518, 1.000000e+00
  %8553 = fsub fast float 1.000000e+00, %8524
  %8554 = fadd fast float %8553, %8523
  %8555 = fadd fast float %8554, %8528
  %8556 = fmul fast float %8555, 0x3FC5555560000000
  %8557 = fdiv fast float %8529, %8556
  %8558 = fsub fast float %8552, %8557
  %8559 = fsub fast float 1.000000e+00, %8518
  %8560 = fadd fast float %8534, %8521
  %8561 = fmul fast float %8560, 0x3FC5555560000000
  %8562 = fdiv fast float %8535, %8561
  %8563 = fadd fast float %8559, %8562
  %8564 = fadd fast float %8519, 1.000000e+00
  %8565 = fsub fast float 1.000000e+00, %8540
  %8566 = fadd fast float %8565, %8539
  %8567 = fadd fast float %8566, %8544
  %8568 = fmul fast float %8567, 0x3FC5555560000000
  %8569 = fdiv fast float %8545, %8568
  %8570 = fsub fast float %8564, %8569
  %8571 = fsub fast float 1.000000e+00, %8519
  %8572 = fadd fast float %8550, %8537
  %8573 = fmul fast float %8572, 0x3FC5555560000000
  %8574 = fdiv fast float %8551, %8573
  %8575 = fadd fast float %8574, %8571
  %8576 = fmul fast float %8558, %8512
  %8577 = fsub fast float %8439, %8576
  %8578 = fmul fast float %8563, %8512
  %8579 = fadd fast float %8578, %8439
  %8580 = fmul fast float %8575, %8513
  %8581 = fadd fast float %8580, %8440
  %8582 = fmul fast float %8570, %8513
  %8583 = fsub fast float %8440, %8582
  %8584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8577, float %8583, float %8501, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8585 = extractvalue %dx.types.ResRet.f32 %8584, 0
  %8586 = extractvalue %dx.types.ResRet.f32 %8584, 1
  %8587 = extractvalue %dx.types.ResRet.f32 %8584, 2
  %8588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8579, float %8583, float %8501, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8589 = extractvalue %dx.types.ResRet.f32 %8588, 0
  %8590 = extractvalue %dx.types.ResRet.f32 %8588, 1
  %8591 = extractvalue %dx.types.ResRet.f32 %8588, 2
  %8592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8577, float %8581, float %8501, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8593 = extractvalue %dx.types.ResRet.f32 %8592, 0
  %8594 = extractvalue %dx.types.ResRet.f32 %8592, 1
  %8595 = extractvalue %dx.types.ResRet.f32 %8592, 2
  %8596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8579, float %8581, float %8501, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8597 = extractvalue %dx.types.ResRet.f32 %8596, 0
  %8598 = extractvalue %dx.types.ResRet.f32 %8596, 1
  %8599 = extractvalue %dx.types.ResRet.f32 %8596, 2
  %8600 = fsub fast float %8593, %8585
  %8601 = fsub fast float %8594, %8586
  %8602 = fsub fast float %8595, %8587
  %8603 = fmul fast float %8600, %8573
  %8604 = fmul fast float %8601, %8573
  %8605 = fmul fast float %8602, %8573
  %8606 = fadd fast float %8603, %8585
  %8607 = fadd fast float %8604, %8586
  %8608 = fadd fast float %8605, %8587
  %8609 = fsub fast float %8597, %8589
  %8610 = fsub fast float %8598, %8590
  %8611 = fsub fast float %8599, %8591
  %8612 = fmul fast float %8609, %8573
  %8613 = fmul fast float %8610, %8573
  %8614 = fmul fast float %8611, %8573
  %8615 = fsub fast float %8589, %8606
  %8616 = fadd fast float %8615, %8612
  %8617 = fsub fast float %8590, %8607
  %8618 = fadd fast float %8617, %8613
  %8619 = fsub fast float %8591, %8608
  %8620 = fadd fast float %8619, %8614
  %8621 = fmul fast float %8616, %8561
  %8622 = fmul fast float %8618, %8561
  %8623 = fmul fast float %8620, %8561
  %8624 = fadd fast float %8621, %8606
  %8625 = fadd fast float %8622, %8607
  %8626 = fadd fast float %8623, %8608
  %8627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8628 = extractvalue %dx.types.CBufRet.f32 %8627, 1
  %8629 = fmul fast float %8624, %8628
  %8630 = fmul fast float %8625, %8628
  %8631 = fmul fast float %8626, %8628
  br label %8632

; <label>:8632                                    ; preds = %8464, %8433
  %8633 = phi float [ %8503, %8464 ], [ 1.000000e+00, %8433 ]
  %8634 = phi float [ %8504, %8464 ], [ 1.000000e+00, %8433 ]
  %8635 = phi float [ %8505, %8464 ], [ 1.000000e+00, %8433 ]
  %8636 = phi float [ %8629, %8464 ], [ 0.000000e+00, %8433 ]
  %8637 = phi float [ %8630, %8464 ], [ 0.000000e+00, %8433 ]
  %8638 = phi float [ %8631, %8464 ], [ 0.000000e+00, %8433 ]
  %8639 = fmul fast float %8636, %8415
  %8640 = fmul fast float %8637, %8417
  %8641 = fmul fast float %8638, %8419
  %8642 = call float @dx.op.dot3.f32(i32 55, float %8633, float %8634, float %8635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8643 = call float @dx.op.dot3.f32(i32 55, float %8639, float %8640, float %8641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8644 = select i1 %302, float %8642, float %8633
  %8645 = select i1 %302, float %8642, float %8634
  %8646 = select i1 %302, float 1.000000e+00, float %8635
  %8647 = select i1 %302, float %8643, float %8639
  %8648 = select i1 %302, float 0.000000e+00, float %8640
  %8649 = select i1 %302, float 0.000000e+00, float %8641
  %8650 = fmul fast float %8644, %8420
  %8651 = fmul fast float %8645, %8421
  %8652 = fmul fast float %8646, %8422
  %8653 = fadd fast float %8650, %8647
  %8654 = fadd fast float %8651, %8648
  %8655 = fadd fast float %8649, %8652
  %8656 = fmul fast float %8644, %8423
  %8657 = fmul fast float %8645, %8424
  %8658 = fmul fast float %8646, %8425
  %8659 = fmul fast float %151, %8435
  %8660 = fmul fast float %153, %8436
  %8661 = fsub fast float 1.000000e+00, %8659
  %8662 = fsub fast float 1.000000e+00, %8660
  %8663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8664 = extractvalue %dx.types.CBufRet.f32 %8663, 0
  %8665 = extractvalue %dx.types.CBufRet.f32 %8663, 1
  %8666 = extractvalue %dx.types.CBufRet.f32 %8663, 2
  %8667 = fmul fast float %8661, %8664
  %8668 = fmul fast float %8661, %8665
  %8669 = fmul fast float %8661, %8666
  %8670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8671 = extractvalue %dx.types.CBufRet.f32 %8670, 0
  %8672 = extractvalue %dx.types.CBufRet.f32 %8670, 1
  %8673 = extractvalue %dx.types.CBufRet.f32 %8670, 2
  %8674 = fmul fast float %8662, %8671
  %8675 = fmul fast float %8662, %8672
  %8676 = fmul fast float %8662, %8673
  %8677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8678 = extractvalue %dx.types.CBufRet.f32 %8677, 0
  %8679 = extractvalue %dx.types.CBufRet.f32 %8677, 1
  %8680 = extractvalue %dx.types.CBufRet.f32 %8677, 2
  %8681 = fadd fast float %8674, %8678
  %8682 = fadd fast float %8681, %8667
  %8683 = fadd fast float %8675, %8679
  %8684 = fadd fast float %8683, %8668
  %8685 = fadd fast float %8676, %8680
  %8686 = fadd fast float %8685, %8669
  %8687 = fmul fast float %8682, %262
  %8688 = fmul fast float %8684, %262
  %8689 = fmul fast float %8686, %262
  br label %8690

; <label>:8690                                    ; preds = %8632, %8386
  %8691 = phi float [ %8687, %8632 ], [ %202, %8386 ]
  %8692 = phi float [ %8688, %8632 ], [ %203, %8386 ]
  %8693 = phi float [ %8689, %8632 ], [ %204, %8386 ]
  %8694 = phi float [ %262, %8632 ], [ %102, %8386 ]
  %8695 = phi float [ %8653, %8632 ], [ %8420, %8386 ]
  %8696 = phi float [ %8654, %8632 ], [ %8421, %8386 ]
  %8697 = phi float [ %8655, %8632 ], [ %8422, %8386 ]
  %8698 = phi float [ %8656, %8632 ], [ %8423, %8386 ]
  %8699 = phi float [ %8657, %8632 ], [ %8424, %8386 ]
  %8700 = phi float [ %8658, %8632 ], [ %8425, %8386 ]
  %8701 = phi float [ %8633, %8632 ], [ 1.000000e+00, %8386 ]
  br i1 %8432, label %9856, label %8702

; <label>:8702                                    ; preds = %8690
  %8703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8703, 0
  %8705 = extractvalue %dx.types.CBufRet.f32 %8703, 1
  %8706 = extractvalue %dx.types.CBufRet.f32 %8703, 2
  %8707 = extractvalue %dx.types.CBufRet.f32 %8703, 3
  %8708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8709 = extractvalue %dx.types.CBufRet.f32 %8708, 0
  %8710 = extractvalue %dx.types.CBufRet.f32 %8708, 1
  %8711 = extractvalue %dx.types.CBufRet.f32 %8708, 2
  %8712 = extractvalue %dx.types.CBufRet.f32 %8708, 3
  %8713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8714 = extractvalue %dx.types.CBufRet.f32 %8713, 0
  %8715 = extractvalue %dx.types.CBufRet.f32 %8713, 1
  %8716 = extractvalue %dx.types.CBufRet.f32 %8713, 2
  %8717 = extractvalue %dx.types.CBufRet.f32 %8713, 3
  %8718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8719 = extractvalue %dx.types.CBufRet.f32 %8718, 0
  %8720 = extractvalue %dx.types.CBufRet.f32 %8718, 1
  %8721 = extractvalue %dx.types.CBufRet.f32 %8718, 2
  %8722 = extractvalue %dx.types.CBufRet.f32 %8718, 3
  %8723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8724 = extractvalue %dx.types.CBufRet.f32 %8723, 3
  %8725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8726 = extractvalue %dx.types.CBufRet.f32 %8725, 3
  %8727 = extractvalue %dx.types.CBufRet.f32 %8725, 0
  %8728 = extractvalue %dx.types.CBufRet.f32 %8725, 1
  %8729 = extractvalue %dx.types.CBufRet.f32 %8725, 2
  %8730 = fcmp fast olt float %8729, -5.000000e-01
  %8731 = call float @dx.op.dot3.f32(i32 55, float %8691, float %8692, float %8693, float %8691, float %8692, float %8693)  ; Dot3(ax,ay,az,bx,by,bz)
  %8732 = call float @dx.op.unary.f32(i32 25, float %8731)  ; Rsqrt(value)
  %8733 = fmul fast float %8732, %8731
  %8734 = fmul fast float %8732, %8691
  %8735 = fmul fast float %8732, %8692
  %8736 = fmul fast float %8732, %8693
  %8737 = fadd fast float %8733, %8707
  %8738 = call float @dx.op.dot3.f32(i32 55, float %8734, float %8735, float %8736, float %8704, float %8705, float %8706)  ; Dot3(ax,ay,az,bx,by,bz)
  %8739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8740 = extractvalue %dx.types.CBufRet.i32 %8739, 1
  %8741 = and i32 %8740, 1
  %8742 = icmp ne i32 %8741, 0
  %8743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8744 = extractvalue %dx.types.CBufRet.f32 %8743, 2
  %8745 = fcmp fast ogt float %8744, 0.000000e+00
  %8746 = and i1 %8742, %8745
  br i1 %8746, label %8747, label %9153, !dx.controlflow.hints !137

; <label>:8747                                    ; preds = %8702
  %8748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8749 = extractvalue %dx.types.CBufRet.f32 %8748, 3
  %8750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8751 = extractvalue %dx.types.CBufRet.f32 %8750, 2
  %8752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8753 = extractvalue %dx.types.CBufRet.f32 %8752, 2
  %8754 = fsub fast float %8751, %8753
  %8755 = and i32 %8740, 2
  %8756 = extractvalue %dx.types.CBufRet.i32 %8739, 0
  %8757 = call i32 @dx.op.binary.i32(i32 40, i32 %8756, i32 3)  ; UMin(a,b)
  %8758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8759 = extractvalue %dx.types.CBufRet.f32 %8758, 0
  %8760 = extractvalue %dx.types.CBufRet.f32 %8758, 1
  %8761 = extractvalue %dx.types.CBufRet.f32 %8752, 0
  %8762 = extractvalue %dx.types.CBufRet.f32 %8752, 1
  %8763 = fsub fast float %8759, %8761
  %8764 = fsub fast float %8760, %8762
  %8765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8766 = extractvalue %dx.types.CBufRet.f32 %8765, 0
  %8767 = fcmp fast ogt float %8766, 0.000000e+00
  %8768 = fsub fast float -0.000000e+00, %8763
  %8769 = fsub fast float -0.000000e+00, %8764
  %8770 = call float @dx.op.dot2.f32(i32 54, float %8734, float %8735, float %8734, float %8735)  ; Dot2(ax,ay,bx,by)
  %8771 = call float @dx.op.dot2.f32(i32 54, float %8734, float %8735, float %8768, float %8769)  ; Dot2(ax,ay,bx,by)
  %8772 = fmul fast float %8771, 2.000000e+00
  %8773 = call float @dx.op.dot2.f32(i32 54, float %8768, float %8769, float %8768, float %8769)  ; Dot2(ax,ay,bx,by)
  %8774 = fmul fast float %8766, %8766
  %8775 = fsub fast float %8773, %8774
  %8776 = fmul fast float %8772, %8772
  %8777 = fmul fast float %8770, 4.000000e+00
  %8778 = fmul fast float %8777, %8775
  %8779 = fsub fast float %8776, %8778
  %8780 = fcmp fast ogt float %8779, 0.000000e+00
  br i1 %8780, label %8781, label %8796

; <label>:8781                                    ; preds = %8747
  %8782 = fcmp fast ogt float %8772, 0.000000e+00
  %8783 = call float @dx.op.unary.f32(i32 24, float %8779)  ; Sqrt(value)
  %8784 = fsub fast float -0.000000e+00, %8783
  %8785 = select i1 %8782, float %8783, float %8784
  %8786 = fadd fast float %8785, %8772
  %8787 = fmul float %8786, -5.000000e-01
  %8788 = fdiv fast float %8787, %8770
  %8789 = call float @dx.op.binary.f32(i32 35, float %8788, float 0.000000e+00)  ; FMax(a,b)
  %8790 = call float @dx.op.binary.f32(i32 36, float %8733, float %8789)  ; FMin(a,b)
  %8791 = fdiv fast float %8775, %8787
  %8792 = call float @dx.op.binary.f32(i32 35, float %8791, float 0.000000e+00)  ; FMax(a,b)
  %8793 = call float @dx.op.binary.f32(i32 36, float %8733, float %8792)  ; FMin(a,b)
  %8794 = call float @dx.op.binary.f32(i32 36, float %8790, float %8793)  ; FMin(a,b)
  %8795 = call float @dx.op.binary.f32(i32 35, float %8790, float %8793)  ; FMax(a,b)
  br label %8796

; <label>:8796                                    ; preds = %8781, %8747
  %8797 = phi float [ %8795, %8781 ], [ -1.000000e+00, %8747 ]
  %8798 = phi float [ %8794, %8781 ], [ -1.000000e+00, %8747 ]
  %8799 = phi i1 [ true, %8781 ], [ false, %8747 ]
  %8800 = and i1 %8767, %8799
  br i1 %8800, label %8801, label %8803

; <label>:8801                                    ; preds = %8796
  %8802 = fcmp fast oeq float %8798, %8797
  br i1 %8802, label %9106, label %8804

; <label>:8803                                    ; preds = %8796
  br i1 %8767, label %9106, label %8804

; <label>:8804                                    ; preds = %8803, %8801
  %8805 = phi float [ %8733, %8803 ], [ %8797, %8801 ]
  %8806 = phi float [ 0.000000e+00, %8803 ], [ %8798, %8801 ]
  %8807 = icmp ne i32 %8755, 0
  %8808 = fmul fast float %8805, %8736
  %8809 = fadd fast float %8808, %8749
  %8810 = fmul fast float %8809, %8805
  %8811 = select i1 %8807, float 0.000000e+00, float %8810
  %8812 = fcmp fast oeq float %8736, 0.000000e+00
  %8813 = fdiv fast float %8754, %8736
  %8814 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8813)  ; FMax(a,b)
  %8815 = select i1 %8812, float %8805, float %8814
  %8816 = call float @dx.op.binary.f32(i32 36, float %8805, float %8815)  ; FMin(a,b)
  %8817 = fcmp fast ogt float %8736, 0.000000e+00
  %8818 = fcmp fast olt float %8754, 0.000000e+00
  br i1 %8817, label %8819, label %8876

; <label>:8819                                    ; preds = %8804
  %8820 = icmp eq i32 %8755, 0
  br i1 %8818, label %8821, label %8865

; <label>:8821                                    ; preds = %8819
  %8822 = select i1 %8820, float %8805, float 0.000000e+00
  %8823 = fsub fast float -0.000000e+00, %8822
  %8824 = call float @dx.op.unary.f32(i32 6, float %8823)  ; FAbs(value)
  %8825 = fmul fast float %8822, %8736
  %8826 = fadd fast float %8825, %8749
  %8827 = fmul fast float %8824, %8826
  %8828 = fsub fast float %8811, %8827
  %8829 = fsub fast float %8805, %8824
  %8830 = select i1 %8820, float %8829, float 0.000000e+00
  %8831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8832 = extractvalue %dx.types.CBufRet.f32 %8831, 0
  %8833 = extractvalue %dx.types.CBufRet.f32 %8831, 1
  %8834 = extractvalue %dx.types.CBufRet.f32 %8831, 2
  %8835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8836 = extractvalue %dx.types.CBufRet.f32 %8835, 0
  %8837 = extractvalue %dx.types.CBufRet.f32 %8835, 1
  %8838 = extractvalue %dx.types.CBufRet.f32 %8835, 2
  %8839 = extractvalue %dx.types.CBufRet.f32 %8835, 3
  %8840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8841 = extractvalue %dx.types.CBufRet.f32 %8840, 3
  %8842 = call float @dx.op.binary.f32(i32 36, float %8828, float %8841)  ; FMin(a,b)
  %8843 = fmul fast float %8839, %8830
  %8844 = call float @dx.op.unary.f32(i32 7, float %8843)  ; Saturate(value)
  %8845 = fsub fast float %8836, %8832
  %8846 = fsub fast float %8837, %8833
  %8847 = fsub fast float %8838, %8834
  %8848 = fmul fast float %8844, %8845
  %8849 = fmul fast float %8844, %8846
  %8850 = fmul fast float %8844, %8847
  %8851 = fadd fast float %8848, %8832
  %8852 = fadd fast float %8849, %8833
  %8853 = fadd fast float %8850, %8834
  %8854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8855 = extractvalue %dx.types.CBufRet.f32 %8854, 0
  %8856 = extractvalue %dx.types.CBufRet.f32 %8854, 1
  %8857 = fadd fast float %8856, %8855
  %8858 = call float @dx.op.unary.f32(i32 7, float %8857)  ; Saturate(value)
  %8859 = extractvalue %dx.types.CBufRet.f32 %8854, 2
  %8860 = extractvalue %dx.types.CBufRet.f32 %8854, 3
  %8861 = fadd fast float %8860, %8859
  %8862 = call float @dx.op.unary.f32(i32 7, float %8861)  ; Saturate(value)
  %8863 = fmul fast float %8858, %8842
  %8864 = fmul fast float %8863, %8862
  br label %9106

; <label>:8865                                    ; preds = %8819
  br i1 %8820, label %8866, label %8887

; <label>:8866                                    ; preds = %8865
  %8867 = call float @dx.op.binary.f32(i32 36, float %8816, float %8806)  ; FMin(a,b)
  %8868 = fsub fast float %8816, %8867
  %8869 = fsub fast float %8868, %8805
  %8870 = call float @dx.op.unary.f32(i32 6, float %8869)  ; FAbs(value)
  %8871 = fadd fast float %8868, %8805
  %8872 = fmul fast float %8871, %8736
  %8873 = fadd fast float %8872, %8749
  %8874 = fmul fast float %8873, %8870
  %8875 = fsub fast float %8811, %8874
  br label %8887

; <label>:8876                                    ; preds = %8804
  br i1 %8818, label %8877, label %8887

; <label>:8877                                    ; preds = %8876
  %8878 = call float @dx.op.binary.f32(i32 35, float %8806, float %8816)  ; FMax(a,b)
  %8879 = icmp eq i32 %8755, 0
  %8880 = select i1 %8879, float %8816, float 0.000000e+00
  %8881 = fsub fast float -0.000000e+00, %8880
  %8882 = call float @dx.op.unary.f32(i32 6, float %8881)  ; FAbs(value)
  %8883 = fmul fast float %8880, %8736
  %8884 = fadd fast float %8883, %8749
  %8885 = fmul fast float %8882, %8884
  %8886 = fsub fast float %8811, %8885
  br label %8887

; <label>:8887                                    ; preds = %8877, %8876, %8866, %8865
  %8888 = phi float [ %8806, %8865 ], [ %8806, %8866 ], [ %8878, %8877 ], [ %8806, %8876 ]
  %8889 = phi float [ 0.000000e+00, %8865 ], [ %8870, %8866 ], [ %8882, %8877 ], [ 0.000000e+00, %8876 ]
  %8890 = phi float [ %8811, %8865 ], [ %8875, %8866 ], [ %8886, %8877 ], [ %8811, %8876 ]
  %8891 = phi float [ %8816, %8865 ], [ %8816, %8866 ], [ %8805, %8877 ], [ %8805, %8876 ]
  %8892 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %8892, align 4, !tbaa !123, !noalias !138
  %8893 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %8893, align 4, !tbaa !123, !noalias !138
  %8894 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %8894, align 4, !tbaa !123, !noalias !138
  %8895 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %8895, align 4, !tbaa !123, !noalias !138
  %8896 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %8896, align 4, !tbaa !123, !noalias !138
  %8897 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %8897, align 4, !tbaa !123, !noalias !138
  %8898 = icmp sgt i32 %8757, 0
  br i1 %8898, label %8899, label %8960

; <label>:8899                                    ; preds = %8887
  br label %8900

; <label>:8900                                    ; preds = %8949, %8899
  %8901 = phi i32 [ %8950, %8949 ], [ 0, %8899 ]
  %8902 = phi i32 [ %8951, %8949 ], [ 0, %8899 ]
  %8903 = add nuw i32 %8902, 171
  %8904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %8903)  ; CBufferLoadLegacy(handle,regIndex)
  %8905 = extractvalue %dx.types.CBufRet.f32 %8904, 0
  %8906 = extractvalue %dx.types.CBufRet.f32 %8904, 1
  %8907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8908 = extractvalue %dx.types.CBufRet.f32 %8907, 0
  %8909 = extractvalue %dx.types.CBufRet.f32 %8907, 1
  %8910 = fsub fast float %8905, %8908
  %8911 = fsub fast float %8906, %8909
  %8912 = extractvalue %dx.types.CBufRet.f32 %8904, 2
  %8913 = fsub fast float -0.000000e+00, %8910
  %8914 = fsub fast float -0.000000e+00, %8911
  %8915 = call float @dx.op.dot2.f32(i32 54, float %8734, float %8735, float %8913, float %8914)  ; Dot2(ax,ay,bx,by)
  %8916 = fmul fast float %8915, 2.000000e+00
  %8917 = call float @dx.op.dot2.f32(i32 54, float %8913, float %8914, float %8913, float %8914)  ; Dot2(ax,ay,bx,by)
  %8918 = fmul fast float %8912, %8912
  %8919 = fsub fast float %8917, %8918
  %8920 = fmul fast float %8916, %8916
  %8921 = fmul fast float %8777, %8919
  %8922 = fsub fast float %8920, %8921
  %8923 = fcmp fast ogt float %8922, 0.000000e+00
  br i1 %8923, label %8924, label %8939

; <label>:8924                                    ; preds = %8900
  %8925 = fcmp fast ogt float %8916, 0.000000e+00
  %8926 = call float @dx.op.unary.f32(i32 24, float %8922)  ; Sqrt(value)
  %8927 = fsub fast float -0.000000e+00, %8926
  %8928 = select i1 %8925, float %8926, float %8927
  %8929 = fadd fast float %8928, %8916
  %8930 = fmul float %8929, -5.000000e-01
  %8931 = fdiv fast float %8930, %8770
  %8932 = call float @dx.op.binary.f32(i32 35, float %8931, float 0.000000e+00)  ; FMax(a,b)
  %8933 = call float @dx.op.binary.f32(i32 36, float %8805, float %8932)  ; FMin(a,b)
  %8934 = fdiv fast float %8919, %8930
  %8935 = call float @dx.op.binary.f32(i32 35, float %8934, float 0.000000e+00)  ; FMax(a,b)
  %8936 = call float @dx.op.binary.f32(i32 36, float %8805, float %8935)  ; FMin(a,b)
  %8937 = call float @dx.op.binary.f32(i32 36, float %8933, float %8936)  ; FMin(a,b)
  %8938 = call float @dx.op.binary.f32(i32 35, float %8933, float %8936)  ; FMax(a,b)
  br label %8939

; <label>:8939                                    ; preds = %8924, %8900
  %8940 = phi float [ %8938, %8924 ], [ -1.000000e+00, %8900 ]
  %8941 = phi float [ %8937, %8924 ], [ -1.000000e+00, %8900 ]
  %8942 = phi i1 [ true, %8924 ], [ false, %8900 ]
  br i1 %8942, label %8943, label %8949

; <label>:8943                                    ; preds = %8939
  %8944 = call float @dx.op.binary.f32(i32 35, float %8888, float %8941)  ; FMax(a,b)
  %8945 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8902
  store float %8944, float* %8945, align 4, !tbaa !123, !noalias !138
  %8946 = call float @dx.op.binary.f32(i32 35, float %8888, float %8940)  ; FMax(a,b)
  %8947 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8902
  store float %8946, float* %8947, align 4, !tbaa !123, !noalias !138
  %8948 = add nsw i32 %8901, 1
  br label %8949

; <label>:8949                                    ; preds = %8943, %8939
  %8950 = phi i32 [ %8948, %8943 ], [ %8901, %8939 ]
  %8951 = add nuw nsw i32 %8902, 1
  %8952 = icmp eq i32 %8951, %8757
  br i1 %8952, label %8953, label %8900

; <label>:8953                                    ; preds = %8949
  %8954 = load float, float* %8894, align 4, !tbaa !123, !alias.scope !154, !noalias !157
  %8955 = load float, float* %8893, align 4, !tbaa !123, !alias.scope !160, !noalias !161
  %8956 = load float, float* %8892, align 4, !tbaa !123, !alias.scope !162, !noalias !163
  %8957 = load float, float* %8897, align 4, !tbaa !123, !alias.scope !164, !noalias !167
  %8958 = load float, float* %8896, align 4, !tbaa !123, !alias.scope !170, !noalias !171
  %8959 = load float, float* %8895, align 4, !tbaa !123, !alias.scope !172, !noalias !173
  br label %8960

; <label>:8960                                    ; preds = %8953, %8887
  %8961 = phi float [ -1.000000e+00, %8887 ], [ %8959, %8953 ]
  %8962 = phi float [ -1.000000e+00, %8887 ], [ %8958, %8953 ]
  %8963 = phi float [ -1.000000e+00, %8887 ], [ %8957, %8953 ]
  %8964 = phi float [ -1.000000e+00, %8887 ], [ %8956, %8953 ]
  %8965 = phi float [ -1.000000e+00, %8887 ], [ %8955, %8953 ]
  %8966 = phi float [ -1.000000e+00, %8887 ], [ %8954, %8953 ]
  %8967 = phi i32 [ 0, %8887 ], [ %8950, %8953 ]
  %8968 = call float @dx.op.binary.f32(i32 36, float %8965, float %8966)  ; FMin(a,b)
  %8969 = call float @dx.op.binary.f32(i32 36, float %8964, float %8968)  ; FMin(a,b)
  %8970 = call float @dx.op.binary.f32(i32 35, float %8964, float %8965)  ; FMax(a,b)
  %8971 = call float @dx.op.binary.f32(i32 36, float %8970, float %8966)  ; FMin(a,b)
  %8972 = call float @dx.op.binary.f32(i32 36, float %8964, float %8965)  ; FMin(a,b)
  %8973 = call float @dx.op.binary.f32(i32 35, float %8972, float %8971)  ; FMax(a,b)
  %8974 = call float @dx.op.binary.f32(i32 35, float %8965, float %8966)  ; FMax(a,b)
  %8975 = call float @dx.op.binary.f32(i32 35, float %8964, float %8974)  ; FMax(a,b)
  store float %8969, float* %8892, align 4, !tbaa !123, !alias.scope !162, !noalias !163
  store float %8973, float* %8893, align 4, !tbaa !123, !alias.scope !160, !noalias !161
  store float %8975, float* %8894, align 4, !tbaa !123, !alias.scope !154, !noalias !157
  %8976 = call float @dx.op.binary.f32(i32 36, float %8962, float %8963)  ; FMin(a,b)
  %8977 = call float @dx.op.binary.f32(i32 36, float %8961, float %8976)  ; FMin(a,b)
  %8978 = call float @dx.op.binary.f32(i32 35, float %8961, float %8962)  ; FMax(a,b)
  %8979 = call float @dx.op.binary.f32(i32 36, float %8978, float %8963)  ; FMin(a,b)
  %8980 = call float @dx.op.binary.f32(i32 36, float %8961, float %8962)  ; FMin(a,b)
  %8981 = call float @dx.op.binary.f32(i32 35, float %8980, float %8979)  ; FMax(a,b)
  %8982 = call float @dx.op.binary.f32(i32 35, float %8962, float %8963)  ; FMax(a,b)
  %8983 = call float @dx.op.binary.f32(i32 35, float %8961, float %8982)  ; FMax(a,b)
  store float %8977, float* %8895, align 4, !tbaa !123, !alias.scope !172, !noalias !173
  store float %8981, float* %8896, align 4, !tbaa !123, !alias.scope !170, !noalias !171
  store float %8983, float* %8897, align 4, !tbaa !123, !alias.scope !164, !noalias !167
  %8984 = sub nsw i32 3, %8967
  %8985 = icmp sgt i32 %8984, 2
  br i1 %8985, label %8986, label %9024

; <label>:8986                                    ; preds = %8960
  %8987 = icmp eq i32 %8755, 0
  %8988 = fsub fast float %8805, %8889
  %8989 = select i1 %8987, float %8988, float %8889
  %8990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8990, 0
  %8992 = extractvalue %dx.types.CBufRet.f32 %8990, 1
  %8993 = extractvalue %dx.types.CBufRet.f32 %8990, 2
  %8994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8995 = extractvalue %dx.types.CBufRet.f32 %8994, 0
  %8996 = extractvalue %dx.types.CBufRet.f32 %8994, 1
  %8997 = extractvalue %dx.types.CBufRet.f32 %8994, 2
  %8998 = extractvalue %dx.types.CBufRet.f32 %8994, 3
  %8999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9000 = extractvalue %dx.types.CBufRet.f32 %8999, 3
  %9001 = call float @dx.op.binary.f32(i32 36, float %8890, float %9000)  ; FMin(a,b)
  %9002 = fmul fast float %8998, %8989
  %9003 = call float @dx.op.unary.f32(i32 7, float %9002)  ; Saturate(value)
  %9004 = fsub fast float %8995, %8991
  %9005 = fsub fast float %8996, %8992
  %9006 = fsub fast float %8997, %8993
  %9007 = fmul fast float %9003, %9004
  %9008 = fmul fast float %9003, %9005
  %9009 = fmul fast float %9003, %9006
  %9010 = fadd fast float %9007, %8991
  %9011 = fadd fast float %9008, %8992
  %9012 = fadd fast float %9009, %8993
  %9013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.f32 %9013, 0
  %9015 = extractvalue %dx.types.CBufRet.f32 %9013, 1
  %9016 = fadd fast float %9015, %9014
  %9017 = call float @dx.op.unary.f32(i32 7, float %9016)  ; Saturate(value)
  %9018 = extractvalue %dx.types.CBufRet.f32 %9013, 2
  %9019 = extractvalue %dx.types.CBufRet.f32 %9013, 3
  %9020 = fadd fast float %9019, %9018
  %9021 = call float @dx.op.unary.f32(i32 7, float %9020)  ; Saturate(value)
  %9022 = fmul fast float %9017, %9001
  %9023 = fmul fast float %9022, %9021
  br label %9106

; <label>:9024                                    ; preds = %8960
  %9025 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8984
  %9026 = load float, float* %9025, align 4, !tbaa !123, !noalias !138
  %9027 = fcmp fast olt float %9026, %8891
  %9028 = icmp sgt i32 %8967, 0
  %9029 = and i1 %9028, %9027
  br i1 %9029, label %9030, label %9067

; <label>:9030                                    ; preds = %9024
  br label %9031

; <label>:9031                                    ; preds = %9060, %9030
  %9032 = phi float [ %9061, %9060 ], [ %8889, %9030 ]
  %9033 = phi float [ %9062, %9060 ], [ %8890, %9030 ]
  %9034 = phi float [ %9042, %9060 ], [ %9026, %9030 ]
  %9035 = phi i32 [ %9039, %9060 ], [ %8984, %9030 ]
  %9036 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %9035
  %9037 = load float, float* %9036, align 4, !tbaa !123, !noalias !138
  %9038 = icmp slt i32 %9035, 2
  %9039 = add nsw i32 %9035, 1
  %9040 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %9039
  %9041 = load float, float* %9040, align 4, !tbaa !123, !noalias !138
  %9042 = select i1 %9038, float %9041, float %8805
  %9043 = call float @dx.op.binary.f32(i32 36, float %9042, float %9037)  ; FMin(a,b)
  %9044 = call float @dx.op.binary.f32(i32 36, float %8891, float %9043)  ; FMin(a,b)
  %9045 = icmp eq i32 %8755, 0
  %9046 = fadd fast float %9044, %9034
  %9047 = fmul fast float %9046, %8736
  %9048 = fadd fast float %9047, %8749
  br i1 %9045, label %9054, label %9049

; <label>:9049                                    ; preds = %9031
  %9050 = fsub fast float %9044, %9034
  %9051 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9050)  ; FMax(a,b)
  %9052 = fmul fast float %9051, %9048
  %9053 = fadd fast float %9052, %9033
  br label %9060

; <label>:9054                                    ; preds = %9031
  %9055 = fsub fast float %9034, %9044
  %9056 = call float @dx.op.unary.f32(i32 6, float %9055)  ; FAbs(value)
  %9057 = fadd fast float %9056, %9032
  %9058 = fmul fast float %9056, %9048
  %9059 = fsub fast float %9033, %9058
  br label %9060

; <label>:9060                                    ; preds = %9054, %9049
  %9061 = phi float [ %9051, %9049 ], [ %9057, %9054 ]
  %9062 = phi float [ %9053, %9049 ], [ %9059, %9054 ]
  %9063 = fcmp fast olt float %9042, %8891
  %9064 = icmp slt i32 %9039, 3
  %9065 = and i1 %9064, %9063
  br i1 %9065, label %9031, label %9066

; <label>:9066                                    ; preds = %9060
  br label %9067

; <label>:9067                                    ; preds = %9066, %9024
  %9068 = phi float [ %8889, %9024 ], [ %9061, %9066 ]
  %9069 = phi float [ %8890, %9024 ], [ %9062, %9066 ]
  %9070 = fsub fast float %8805, %9068
  %9071 = select i1 %8807, float %9068, float %9070
  %9072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9073 = extractvalue %dx.types.CBufRet.f32 %9072, 0
  %9074 = extractvalue %dx.types.CBufRet.f32 %9072, 1
  %9075 = extractvalue %dx.types.CBufRet.f32 %9072, 2
  %9076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9077 = extractvalue %dx.types.CBufRet.f32 %9076, 0
  %9078 = extractvalue %dx.types.CBufRet.f32 %9076, 1
  %9079 = extractvalue %dx.types.CBufRet.f32 %9076, 2
  %9080 = extractvalue %dx.types.CBufRet.f32 %9076, 3
  %9081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9082 = extractvalue %dx.types.CBufRet.f32 %9081, 3
  %9083 = call float @dx.op.binary.f32(i32 36, float %9069, float %9082)  ; FMin(a,b)
  %9084 = fmul fast float %9080, %9071
  %9085 = call float @dx.op.unary.f32(i32 7, float %9084)  ; Saturate(value)
  %9086 = fsub fast float %9077, %9073
  %9087 = fsub fast float %9078, %9074
  %9088 = fsub fast float %9079, %9075
  %9089 = fmul fast float %9085, %9086
  %9090 = fmul fast float %9085, %9087
  %9091 = fmul fast float %9085, %9088
  %9092 = fadd fast float %9089, %9073
  %9093 = fadd fast float %9090, %9074
  %9094 = fadd fast float %9091, %9075
  %9095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9096 = extractvalue %dx.types.CBufRet.f32 %9095, 0
  %9097 = extractvalue %dx.types.CBufRet.f32 %9095, 1
  %9098 = fadd fast float %9097, %9096
  %9099 = call float @dx.op.unary.f32(i32 7, float %9098)  ; Saturate(value)
  %9100 = extractvalue %dx.types.CBufRet.f32 %9095, 2
  %9101 = extractvalue %dx.types.CBufRet.f32 %9095, 3
  %9102 = fadd fast float %9101, %9100
  %9103 = call float @dx.op.unary.f32(i32 7, float %9102)  ; Saturate(value)
  %9104 = fmul fast float %9099, %9083
  %9105 = fmul fast float %9104, %9103
  br label %9106

; <label>:9106                                    ; preds = %9067, %8986, %8821, %8803, %8801
  %9107 = phi float [ %8830, %8821 ], [ %8989, %8986 ], [ %9071, %9067 ], [ 0.000000e+00, %8801 ], [ 0.000000e+00, %8803 ]
  %9108 = phi float [ %8864, %8821 ], [ %9023, %8986 ], [ %9105, %9067 ], [ 0.000000e+00, %8801 ], [ 0.000000e+00, %8803 ]
  %9109 = phi float [ %8851, %8821 ], [ %9010, %8986 ], [ %9092, %9067 ], [ 0.000000e+00, %8801 ], [ 0.000000e+00, %8803 ]
  %9110 = phi float [ %8852, %8821 ], [ %9011, %8986 ], [ %9093, %9067 ], [ 0.000000e+00, %8801 ], [ 0.000000e+00, %8803 ]
  %9111 = phi float [ %8853, %8821 ], [ %9012, %8986 ], [ %9094, %9067 ], [ 0.000000e+00, %8801 ], [ 0.000000e+00, %8803 ]
  %9112 = fmul fast float %8744, %9108
  %9113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9114 = extractvalue %dx.types.CBufRet.f32 %9113, 2
  %9115 = fsub fast float %8751, %9114
  %9116 = fcmp fast olt float %9112, -2.000000e+01
  %9117 = call float @dx.op.unary.f32(i32 21, float %9112)  ; Exp(value)
  %9118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9119 = extractvalue %dx.types.CBufRet.f32 %9118, 2
  %9120 = extractvalue %dx.types.CBufRet.f32 %9118, 3
  %9121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9122 = extractvalue %dx.types.CBufRet.f32 %9121, 2
  %9123 = fmul fast float %9120, %9115
  %9124 = call float @dx.op.unary.f32(i32 7, float %9123)  ; Saturate(value)
  %9125 = fsub fast float 1.000000e+00, %9124
  %9126 = fmul fast float %8736, 5.000000e-01
  %9127 = fadd fast float %9126, 5.000000e-01
  %9128 = call float @dx.op.unary.f32(i32 7, float %9127)  ; Saturate(value)
  %9129 = fsub fast float 1.000000e+00, %9128
  %9130 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9125)  ; FMax(a,b)
  %9131 = fdiv fast float %9129, %9130
  %9132 = fsub fast float %9115, %8693
  %9133 = call float @dx.op.unary.f32(i32 6, float %9132)  ; FAbs(value)
  %9134 = fmul fast float %9133, %9119
  %9135 = call float @dx.op.unary.f32(i32 7, float %9131)  ; Saturate(value)
  %9136 = fsub fast float 1.000000e+00, %9134
  %9137 = fmul fast float %9136, %9135
  %9138 = fadd fast float %9137, %9134
  %9139 = fmul fast float %9122, %9115
  %9140 = call float @dx.op.unary.f32(i32 7, float %9139)  ; Saturate(value)
  %9141 = fsub fast float 1.000000e+00, %9138
  %9142 = fmul fast float %9141, %9140
  %9143 = fadd fast float %9142, %9138
  %9144 = call float @dx.op.unary.f32(i32 7, float %9143)  ; Saturate(value)
  %9145 = fadd fast float %9117, -1.000000e+00
  %9146 = select i1 %9116, float -1.000000e+00, float %9145
  %9147 = fmul fast float %9144, %9146
  %9148 = fadd fast float %9147, 1.000000e+00
  %9149 = fsub fast float -0.000000e+00, %9147
  %9150 = fmul fast float %9109, %9149
  %9151 = fmul fast float %9110, %9149
  %9152 = fmul fast float %9111, %9149
  br label %9153

; <label>:9153                                    ; preds = %9106, %8702
  %9154 = phi float [ %9107, %9106 ], [ 0.000000e+00, %8702 ]
  %9155 = phi float [ %9148, %9106 ], [ 1.000000e+00, %8702 ]
  %9156 = phi float [ %9150, %9106 ], [ 0.000000e+00, %8702 ]
  %9157 = phi float [ %9151, %9106 ], [ 0.000000e+00, %8702 ]
  %9158 = phi float [ %9152, %9106 ], [ 0.000000e+00, %8702 ]
  %9159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9160 = extractvalue %dx.types.CBufRet.f32 %9159, 1
  %9161 = fsub fast float 1.000000e+00, %9155
  %9162 = fmul fast float %9161, %8737
  %9163 = fmul fast float %9162, %9160
  %9164 = fsub fast float %8737, %9163
  br i1 %8730, label %9165, label %9194, !dx.controlflow.hints !174

; <label>:9165                                    ; preds = %9153
  %9166 = fmul fast float %8738, %8727
  %9167 = fadd fast float %9166, %8728
  %9168 = call float @dx.op.unary.f32(i32 7, float %9167)  ; Saturate(value)
  %9169 = fmul fast float %8709, %9164
  %9170 = fsub fast float -0.000000e+00, %9169
  %9171 = fmul fast float %8710, %9164
  %9172 = fsub fast float -0.000000e+00, %9171
  %9173 = call float @dx.op.unary.f32(i32 21, float %9170)  ; Exp(value)
  %9174 = call float @dx.op.unary.f32(i32 21, float %9172)  ; Exp(value)
  %9175 = call float @dx.op.binary.f32(i32 35, float %8717, float %9173)  ; FMax(a,b)
  %9176 = call float @dx.op.binary.f32(i32 35, float %8717, float %9174)  ; FMax(a,b)
  %9177 = fsub fast float %9176, %9175
  %9178 = fmul fast float %9177, %9168
  %9179 = fadd fast float %9178, %9175
  %9180 = call float @dx.op.unary.f32(i32 7, float %9179)  ; Saturate(value)
  %9181 = fsub fast float %8714, %8719
  %9182 = fsub fast float %8715, %8720
  %9183 = fsub fast float %8716, %8721
  %9184 = fmul fast float %9168, %9181
  %9185 = fmul fast float %9168, %9182
  %9186 = fmul fast float %9168, %9183
  %9187 = fadd fast float %9184, %8719
  %9188 = fadd fast float %9185, %8720
  %9189 = fadd fast float %9186, %8721
  %9190 = fsub fast float 1.000000e+00, %9180
  %9191 = fmul fast float %9190, %9187
  %9192 = fmul fast float %9190, %9188
  %9193 = fmul fast float %9190, %9189
  br label %9253

; <label>:9194                                    ; preds = %9153
  %9195 = fmul fast float %9164, %8726
  %9196 = call float @dx.op.unary.f32(i32 7, float %9195)  ; Saturate(value)
  %9197 = fsub fast float 2.000000e+00, %9196
  %9198 = fmul fast float %9196, 9.921875e-01
  %9199 = fmul fast float %9198, %9197
  %9200 = fadd fast float %9199, 3.906250e-03
  %9201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %52, float %9200, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9202 = extractvalue %dx.types.ResRet.f32 %9201, 0
  %9203 = fsub fast float %9196, %9202
  %9204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9203)  ; FMax(a,b)
  %9205 = fmul fast float %8712, %8693
  %9206 = call float @dx.op.unary.f32(i32 6, float %9205)  ; FAbs(value)
  %9207 = fcmp fast ogt float %9206, 0x3EB0C6F7A0000000
  br i1 %9207, label %9208, label %9214, !dx.controlflow.hints !175

; <label>:9208                                    ; preds = %9194
  %9209 = fmul fast float %9205, 0xBFF7154760000000
  %9210 = call float @dx.op.unary.f32(i32 21, float %9209)  ; Exp(value)
  %9211 = fsub fast float 1.000000e+00, %9210
  %9212 = fdiv fast float %9211, %9205
  %9213 = fmul fast float %9212, %8722
  br label %9214

; <label>:9214                                    ; preds = %9208, %9194
  %9215 = phi float [ %9213, %9208 ], [ %8722, %9194 ]
  %9216 = fadd fast float %9215, %8724
  %9217 = fmul fast float %9216, %9204
  %9218 = fmul fast float %8709, %9217
  %9219 = fsub fast float -0.000000e+00, %9218
  %9220 = fmul fast float %8710, %9217
  %9221 = fsub fast float -0.000000e+00, %9220
  %9222 = fmul fast float %8711, %9217
  %9223 = fsub fast float -0.000000e+00, %9222
  %9224 = call float @dx.op.unary.f32(i32 21, float %9219)  ; Exp(value)
  %9225 = call float @dx.op.unary.f32(i32 21, float %9221)  ; Exp(value)
  %9226 = call float @dx.op.unary.f32(i32 21, float %9223)  ; Exp(value)
  %9227 = fmul fast float %8738, %8738
  %9228 = fadd fast float %9227, 1.000000e+00
  %9229 = fmul fast float %9228, 0x3FAE8EC8A0000000
  %9230 = fmul fast float %9229, %8719
  %9231 = fmul fast float %9229, %8720
  %9232 = fmul fast float %9229, %8721
  %9233 = fmul fast float %8738, %8717
  %9234 = fsub fast float 1.000000e+00, %9233
  %9235 = fmul fast float %8717, %8717
  %9236 = fsub fast float 1.000000e+00, %9235
  %9237 = fmul fast float %9236, 0x3FB45F3060000000
  %9238 = fmul fast float %9234, %9234
  %9239 = fdiv fast float 1.000000e+00, %9238
  %9240 = fmul fast float %9237, %9239
  %9241 = fmul fast float %9240, %8714
  %9242 = fmul fast float %9240, %8715
  %9243 = fmul fast float %9240, %8716
  %9244 = fadd fast float %9241, %9230
  %9245 = fadd fast float %9242, %9231
  %9246 = fadd fast float %9243, %9232
  %9247 = fsub fast float 1.000000e+00, %9224
  %9248 = fsub fast float 1.000000e+00, %9225
  %9249 = fsub fast float 1.000000e+00, %9226
  %9250 = fmul fast float %9244, %9247
  %9251 = fmul fast float %9245, %9248
  %9252 = fmul fast float %9246, %9249
  br label %9253

; <label>:9253                                    ; preds = %9214, %9165
  %9254 = phi float [ %9191, %9165 ], [ %9250, %9214 ]
  %9255 = phi float [ %9192, %9165 ], [ %9251, %9214 ]
  %9256 = phi float [ %9193, %9165 ], [ %9252, %9214 ]
  %9257 = phi float [ %9180, %9165 ], [ %9224, %9214 ]
  %9258 = phi float [ %9180, %9165 ], [ %9225, %9214 ]
  %9259 = phi float [ %9180, %9165 ], [ %9226, %9214 ]
  br i1 %8746, label %9260, label %9458, !dx.controlflow.hints !176

; <label>:9260                                    ; preds = %9253
  %9261 = extractvalue %dx.types.CBufRet.f32 %9159, 0
  %9262 = fmul fast float %9261, %9161
  %9263 = fsub fast float %9156, %9254
  %9264 = fsub fast float %9157, %9255
  %9265 = fsub fast float %9158, %9256
  %9266 = fmul fast float %9262, %9263
  %9267 = fmul fast float %9262, %9264
  %9268 = fmul fast float %9262, %9265
  %9269 = fadd fast float %9266, %9254
  %9270 = fadd fast float %9267, %9255
  %9271 = fadd fast float %9268, %9256
  %9272 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9257)  ; FMax(a,b)
  %9273 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9258)  ; FMax(a,b)
  %9274 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9259)  ; FMax(a,b)
  %9275 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9155)  ; FMax(a,b)
  %9276 = call float @dx.op.binary.f32(i32 35, float %9154, float %9164)  ; FMax(a,b)
  %9277 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9276)  ; FMax(a,b)
  %9278 = fdiv fast float %9154, %9277
  %9279 = call float @dx.op.unary.f32(i32 7, float %9278)  ; Saturate(value)
  %9280 = fdiv fast float %9164, %9277
  %9281 = call float @dx.op.unary.f32(i32 7, float %9280)  ; Saturate(value)
  %9282 = fcmp fast une float %9275, 1.000000e+00
  br i1 %9282, label %9283, label %9296, !dx.controlflow.hints !177

; <label>:9283                                    ; preds = %9260
  %9284 = call float @dx.op.unary.f32(i32 23, float %9275)  ; Log(value)
  %9285 = fmul fast float %9284, 0x3FE62E4300000000
  %9286 = fmul fast float %9156, %9285
  %9287 = fsub fast float -0.000000e+00, %9286
  %9288 = fmul fast float %9157, %9285
  %9289 = fsub fast float -0.000000e+00, %9288
  %9290 = fmul fast float %9158, %9285
  %9291 = fsub fast float -0.000000e+00, %9290
  %9292 = fsub fast float 1.000000e+00, %9275
  %9293 = fdiv fast float %9287, %9292
  %9294 = fdiv fast float %9289, %9292
  %9295 = fdiv fast float %9291, %9292
  br label %9296

; <label>:9296                                    ; preds = %9283, %9260
  %9297 = phi float [ %9293, %9283 ], [ %9156, %9260 ]
  %9298 = phi float [ %9294, %9283 ], [ %9157, %9260 ]
  %9299 = phi float [ %9295, %9283 ], [ %9158, %9260 ]
  %9300 = phi float [ %9285, %9283 ], [ 0.000000e+00, %9260 ]
  %9301 = fcmp fast une float %9272, 1.000000e+00
  br i1 %9301, label %9302, label %9309, !dx.controlflow.hints !178

; <label>:9302                                    ; preds = %9296
  %9303 = call float @dx.op.unary.f32(i32 23, float %9272)  ; Log(value)
  %9304 = fmul fast float %9303, 0x3FE62E4300000000
  %9305 = fmul fast float %9269, %9304
  %9306 = fsub fast float -0.000000e+00, %9305
  %9307 = fsub fast float 1.000000e+00, %9272
  %9308 = fdiv fast float %9306, %9307
  br label %9309

; <label>:9309                                    ; preds = %9302, %9296
  %9310 = phi float [ %9308, %9302 ], [ %9269, %9296 ]
  %9311 = phi float [ %9304, %9302 ], [ 0.000000e+00, %9296 ]
  %9312 = fcmp fast une float %9273, 1.000000e+00
  br i1 %9312, label %9313, label %9320, !dx.controlflow.hints !178

; <label>:9313                                    ; preds = %9309
  %9314 = call float @dx.op.unary.f32(i32 23, float %9273)  ; Log(value)
  %9315 = fmul fast float %9314, 0x3FE62E4300000000
  %9316 = fmul fast float %9270, %9315
  %9317 = fsub fast float -0.000000e+00, %9316
  %9318 = fsub fast float 1.000000e+00, %9273
  %9319 = fdiv fast float %9317, %9318
  br label %9320

; <label>:9320                                    ; preds = %9313, %9309
  %9321 = phi float [ %9319, %9313 ], [ %9270, %9309 ]
  %9322 = phi float [ %9315, %9313 ], [ 0.000000e+00, %9309 ]
  %9323 = fcmp fast une float %9274, 1.000000e+00
  br i1 %9323, label %9324, label %9331, !dx.controlflow.hints !178

; <label>:9324                                    ; preds = %9320
  %9325 = call float @dx.op.unary.f32(i32 23, float %9274)  ; Log(value)
  %9326 = fmul fast float %9325, 0x3FE62E4300000000
  %9327 = fmul fast float %9271, %9326
  %9328 = fsub fast float -0.000000e+00, %9327
  %9329 = fsub fast float 1.000000e+00, %9274
  %9330 = fdiv fast float %9328, %9329
  br label %9331

; <label>:9331                                    ; preds = %9324, %9320
  %9332 = phi float [ %9330, %9324 ], [ %9271, %9320 ]
  %9333 = phi float [ %9326, %9324 ], [ 0.000000e+00, %9320 ]
  %9334 = fmul fast float %9297, %9281
  %9335 = fmul fast float %9298, %9281
  %9336 = fmul fast float %9299, %9281
  %9337 = fmul fast float %9300, %9281
  %9338 = fmul fast float %9310, %9279
  %9339 = fmul fast float %9321, %9279
  %9340 = fmul fast float %9332, %9279
  %9341 = fmul fast float %9311, %9279
  %9342 = fmul fast float %9322, %9279
  %9343 = fmul fast float %9333, %9279
  %9344 = fadd fast float %9338, %9334
  %9345 = fadd fast float %9339, %9335
  %9346 = fadd fast float %9340, %9336
  %9347 = fadd fast float %9341, %9337
  %9348 = fadd fast float %9342, %9337
  %9349 = fadd fast float %9343, %9337
  %9350 = fcmp fast une float %9347, 0.000000e+00
  br i1 %9350, label %9351, label %9358, !dx.controlflow.hints !179

; <label>:9351                                    ; preds = %9331
  %9352 = fmul fast float %9347, 0x3FF7154760000000
  %9353 = call float @dx.op.unary.f32(i32 21, float %9352)  ; Exp(value)
  %9354 = fsub fast float 1.000000e+00, %9353
  %9355 = fmul fast float %9344, %9354
  %9356 = fsub fast float -0.000000e+00, %9355
  %9357 = fdiv fast float %9356, %9347
  br label %9358

; <label>:9358                                    ; preds = %9351, %9331
  %9359 = phi float [ %9353, %9351 ], [ 1.000000e+00, %9331 ]
  %9360 = phi float [ %9357, %9351 ], [ %9344, %9331 ]
  %9361 = fcmp fast une float %9348, 0.000000e+00
  br i1 %9361, label %9362, label %9369, !dx.controlflow.hints !179

; <label>:9362                                    ; preds = %9358
  %9363 = fmul fast float %9348, 0x3FF7154760000000
  %9364 = call float @dx.op.unary.f32(i32 21, float %9363)  ; Exp(value)
  %9365 = fsub fast float 1.000000e+00, %9364
  %9366 = fmul fast float %9345, %9365
  %9367 = fsub fast float -0.000000e+00, %9366
  %9368 = fdiv fast float %9367, %9348
  br label %9369

; <label>:9369                                    ; preds = %9362, %9358
  %9370 = phi float [ %9364, %9362 ], [ 1.000000e+00, %9358 ]
  %9371 = phi float [ %9368, %9362 ], [ %9345, %9358 ]
  %9372 = fcmp fast une float %9349, 0.000000e+00
  br i1 %9372, label %9373, label %9380, !dx.controlflow.hints !179

; <label>:9373                                    ; preds = %9369
  %9374 = fmul fast float %9349, 0x3FF7154760000000
  %9375 = call float @dx.op.unary.f32(i32 21, float %9374)  ; Exp(value)
  %9376 = fsub fast float 1.000000e+00, %9375
  %9377 = fmul fast float %9346, %9376
  %9378 = fsub fast float -0.000000e+00, %9377
  %9379 = fdiv fast float %9378, %9349
  br label %9380

; <label>:9380                                    ; preds = %9373, %9369
  %9381 = phi float [ %9375, %9373 ], [ 1.000000e+00, %9369 ]
  %9382 = phi float [ %9379, %9373 ], [ %9346, %9369 ]
  %9383 = fcmp fast ogt float %9279, %9281
  br i1 %9383, label %9384, label %9404

; <label>:9384                                    ; preds = %9380
  %9385 = fsub fast float 1.000000e+00, %9281
  %9386 = fmul fast float %9297, %9385
  %9387 = fmul fast float %9298, %9385
  %9388 = fmul fast float %9299, %9385
  %9389 = fmul fast float %9300, %9385
  %9390 = fcmp fast une float %9389, 0.000000e+00
  br i1 %9390, label %9391, label %9442, !dx.controlflow.hints !180

; <label>:9391                                    ; preds = %9384
  %9392 = fmul fast float %9389, 0x3FF7154760000000
  %9393 = call float @dx.op.unary.f32(i32 21, float %9392)  ; Exp(value)
  %9394 = fsub fast float 1.000000e+00, %9393
  %9395 = fmul fast float %9386, %9394
  %9396 = fsub fast float -0.000000e+00, %9395
  %9397 = fmul fast float %9387, %9394
  %9398 = fsub fast float -0.000000e+00, %9397
  %9399 = fmul fast float %9388, %9394
  %9400 = fsub fast float -0.000000e+00, %9399
  %9401 = fdiv fast float %9396, %9389
  %9402 = fdiv fast float %9398, %9389
  %9403 = fdiv fast float %9400, %9389
  br label %9442

; <label>:9404                                    ; preds = %9380
  %9405 = fsub fast float 1.000000e+00, %9279
  %9406 = fmul fast float %9310, %9405
  %9407 = fmul fast float %9321, %9405
  %9408 = fmul fast float %9332, %9405
  %9409 = fmul fast float %9311, %9405
  %9410 = fmul fast float %9322, %9405
  %9411 = fmul fast float %9333, %9405
  %9412 = fcmp fast une float %9409, 0.000000e+00
  br i1 %9412, label %9413, label %9420, !dx.controlflow.hints !179

; <label>:9413                                    ; preds = %9404
  %9414 = fmul fast float %9409, 0x3FF7154760000000
  %9415 = call float @dx.op.unary.f32(i32 21, float %9414)  ; Exp(value)
  %9416 = fsub fast float 1.000000e+00, %9415
  %9417 = fmul fast float %9406, %9416
  %9418 = fsub fast float -0.000000e+00, %9417
  %9419 = fdiv fast float %9418, %9409
  br label %9420

; <label>:9420                                    ; preds = %9413, %9404
  %9421 = phi float [ %9419, %9413 ], [ %9406, %9404 ]
  %9422 = phi float [ %9415, %9413 ], [ 1.000000e+00, %9404 ]
  %9423 = fcmp fast une float %9410, 0.000000e+00
  br i1 %9423, label %9424, label %9431, !dx.controlflow.hints !179

; <label>:9424                                    ; preds = %9420
  %9425 = fmul fast float %9410, 0x3FF7154760000000
  %9426 = call float @dx.op.unary.f32(i32 21, float %9425)  ; Exp(value)
  %9427 = fsub fast float 1.000000e+00, %9426
  %9428 = fmul fast float %9407, %9427
  %9429 = fsub fast float -0.000000e+00, %9428
  %9430 = fdiv fast float %9429, %9410
  br label %9431

; <label>:9431                                    ; preds = %9424, %9420
  %9432 = phi float [ %9430, %9424 ], [ %9407, %9420 ]
  %9433 = phi float [ %9426, %9424 ], [ 1.000000e+00, %9420 ]
  %9434 = fcmp fast une float %9411, 0.000000e+00
  br i1 %9434, label %9435, label %9442, !dx.controlflow.hints !179

; <label>:9435                                    ; preds = %9431
  %9436 = fmul fast float %9411, 0x3FF7154760000000
  %9437 = call float @dx.op.unary.f32(i32 21, float %9436)  ; Exp(value)
  %9438 = fsub fast float 1.000000e+00, %9437
  %9439 = fmul fast float %9408, %9438
  %9440 = fsub fast float -0.000000e+00, %9439
  %9441 = fdiv fast float %9440, %9411
  br label %9442

; <label>:9442                                    ; preds = %9435, %9431, %9391, %9384
  %9443 = phi float [ %9441, %9435 ], [ %9403, %9391 ], [ %9388, %9384 ], [ %9408, %9431 ]
  %9444 = phi float [ %9432, %9435 ], [ %9402, %9391 ], [ %9387, %9384 ], [ %9432, %9431 ]
  %9445 = phi float [ %9421, %9435 ], [ %9401, %9391 ], [ %9386, %9384 ], [ %9421, %9431 ]
  %9446 = phi float [ %9437, %9435 ], [ %9393, %9391 ], [ 1.000000e+00, %9384 ], [ 1.000000e+00, %9431 ]
  %9447 = phi float [ %9433, %9435 ], [ %9393, %9391 ], [ 1.000000e+00, %9384 ], [ %9433, %9431 ]
  %9448 = phi float [ %9422, %9435 ], [ %9393, %9391 ], [ 1.000000e+00, %9384 ], [ %9422, %9431 ]
  %9449 = fmul fast float %9448, %9360
  %9450 = fmul fast float %9447, %9371
  %9451 = fmul fast float %9446, %9382
  %9452 = fadd fast float %9449, %9445
  %9453 = fadd fast float %9450, %9444
  %9454 = fadd fast float %9451, %9443
  %9455 = fmul fast float %9448, %9359
  %9456 = fmul fast float %9447, %9370
  %9457 = fmul fast float %9446, %9381
  br label %9458

; <label>:9458                                    ; preds = %9442, %9253
  %9459 = phi float [ %9457, %9442 ], [ %9259, %9253 ]
  %9460 = phi float [ %9456, %9442 ], [ %9258, %9253 ]
  %9461 = phi float [ %9455, %9442 ], [ %9257, %9253 ]
  %9462 = phi float [ %9454, %9442 ], [ %9256, %9253 ]
  %9463 = phi float [ %9453, %9442 ], [ %9255, %9253 ]
  %9464 = phi float [ %9452, %9442 ], [ %9254, %9253 ]
  %9465 = fmul fast float %9464, %8415
  %9466 = fmul fast float %9463, %8417
  %9467 = fmul fast float %9462, %8419
  %9468 = fmul fast float %9461, %8701
  %9469 = call float @dx.op.dot3.f32(i32 55, float %9461, float %9460, float %9459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9470 = call float @dx.op.dot3.f32(i32 55, float %9465, float %9466, float %9467, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9471 = select i1 %302, float %9469, float %9461
  %9472 = select i1 %302, float %9469, float %9460
  %9473 = select i1 %302, float 1.000000e+00, float %9459
  %9474 = select i1 %302, float %9470, float %9465
  %9475 = select i1 %302, float 0.000000e+00, float %9466
  %9476 = select i1 %302, float 0.000000e+00, float %9467
  %9477 = fmul fast float %9471, %8695
  %9478 = fmul fast float %9472, %8696
  %9479 = fmul fast float %9473, %8697
  %9480 = fadd fast float %9477, %9474
  %9481 = fadd fast float %9478, %9475
  %9482 = fadd fast float %9476, %9479
  %9483 = fmul fast float %9471, %8698
  %9484 = fmul fast float %9472, %8699
  %9485 = fmul fast float %9473, %8700
  %9486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9487 = extractvalue %dx.types.CBufRet.i32 %9486, 0
  %9488 = icmp eq i32 %9487, 0
  br i1 %9488, label %9856, label %9489, !dx.controlflow.hints !181

; <label>:9489                                    ; preds = %9458
  %9490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9491 = extractvalue %dx.types.CBufRet.f32 %9490, 2
  %9492 = extractvalue %dx.types.CBufRet.f32 %9490, 3
  %9493 = fmul fast float %9491, %115
  %9494 = fmul fast float %9492, %116
  %9495 = fmul fast float %9493, 2.000000e+00
  %9496 = fmul fast float %9494, 2.000000e+00
  %9497 = fsub fast float 1.000000e+00, %9495
  %9498 = fsub fast float 1.000000e+00, %9496
  %9499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9500 = extractvalue %dx.types.CBufRet.f32 %9499, 0
  %9501 = extractvalue %dx.types.CBufRet.f32 %9499, 1
  %9502 = extractvalue %dx.types.CBufRet.f32 %9499, 2
  %9503 = fmul fast float %9497, %9500
  %9504 = fmul fast float %9497, %9501
  %9505 = fmul fast float %9497, %9502
  %9506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9507 = extractvalue %dx.types.CBufRet.f32 %9506, 0
  %9508 = extractvalue %dx.types.CBufRet.f32 %9506, 1
  %9509 = extractvalue %dx.types.CBufRet.f32 %9506, 2
  %9510 = fmul fast float %9498, %9507
  %9511 = fmul fast float %9498, %9508
  %9512 = fmul fast float %9498, %9509
  %9513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9514 = extractvalue %dx.types.CBufRet.f32 %9513, 0
  %9515 = extractvalue %dx.types.CBufRet.f32 %9513, 1
  %9516 = extractvalue %dx.types.CBufRet.f32 %9513, 2
  %9517 = fadd fast float %9510, %9514
  %9518 = fadd fast float %9517, %9503
  %9519 = fadd fast float %9511, %9515
  %9520 = fadd fast float %9519, %9504
  %9521 = fadd fast float %9512, %9516
  %9522 = fadd fast float %9521, %9505
  %9523 = fmul fast float %9518, %8694
  %9524 = fmul fast float %9520, %8694
  %9525 = fmul fast float %9522, %8694
  %9526 = fmul fast float %9523, %9523
  %9527 = fmul fast float %9524, %9524
  %9528 = fadd fast float %9526, %9527
  %9529 = fmul fast float %9525, %9525
  %9530 = fadd fast float %9528, %9529
  %9531 = call float @dx.op.unary.f32(i32 24, float %9530)  ; Sqrt(value)
  %9532 = extractvalue %dx.types.CBufRet.f32 %8407, 0
  %9533 = fsub fast float %9531, %9532
  %9534 = extractvalue %dx.types.CBufRet.f32 %8407, 2
  %9535 = fmul fast float %9533, %9534
  %9536 = call float @dx.op.unary.f32(i32 7, float %9535)  ; Saturate(value)
  %9537 = fadd fast float %9536, -5.000000e-01
  %9538 = fmul fast float %9537, 2.000000e+00
  %9539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9540 = extractvalue %dx.types.CBufRet.f32 %9539, 2
  %9541 = call float @dx.op.binary.f32(i32 36, float %9540, float %9538)  ; FMin(a,b)
  %9542 = fsub fast float -0.000000e+00, %9540
  %9543 = fcmp fast ogt float %9541, %9542
  br i1 %9543, label %9544, label %9856, !dx.controlflow.hints !182

; <label>:9544                                    ; preds = %9489
  %9545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9546 = extractvalue %dx.types.CBufRet.f32 %9545, 3
  %9547 = fcmp fast ogt float %9546, 0.000000e+00
  br i1 %9547, label %9548, label %9623, !dx.controlflow.hints !183

; <label>:9548                                    ; preds = %9544
  %9549 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9550 = extractvalue %dx.types.Dimensions %9549, 0
  %9551 = sitofp i32 %9550 to float
  %9552 = extractvalue %dx.types.Dimensions %9549, 1
  %9553 = sitofp i32 %9552 to float
  %9554 = fmul fast float %9493, %9551
  %9555 = fmul fast float %9494, %9553
  %9556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9557 = extractvalue %dx.types.CBufRet.f32 %9556, 1
  %9558 = fsub fast float -0.000000e+00, %9557
  %9559 = fptoui float %9558 to i32
  %9560 = fptoui float %9554 to i32
  %9561 = fptoui float %9555 to i32
  %9562 = and i32 %9559, 31
  %9563 = lshr i32 %9560, %9562
  %9564 = lshr i32 %9561, %9562
  %9565 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9559, i32 %9563, i32 %9564, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9566 = extractvalue %dx.types.ResRet.f32 %9565, 0
  %9567 = fcmp fast olt float %9566, -1.000000e+00
  %9568 = fcmp fast ogt float %9566, -1.000000e+00
  %9569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9570 = extractvalue %dx.types.CBufRet.f32 %9569, 1
  %9571 = select i1 %9568, float %9570, float 1.000000e+00
  %9572 = fadd fast float %9566, 1.000000e+00
  %9573 = fmul fast float %9571, %9572
  %9574 = call float @dx.op.unary.f32(i32 6, float %9573)  ; FAbs(value)
  %9575 = extractvalue %dx.types.CBufRet.f32 %9569, 3
  %9576 = fcmp fast oge float %9574, %9575
  %9577 = select i1 %9576, float 0x4197782600000000, float %9574
  %9578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9579 = extractvalue %dx.types.CBufRet.f32 %9578, 0
  %9580 = extractvalue %dx.types.CBufRet.f32 %9578, 1
  %9581 = extractvalue %dx.types.CBufRet.f32 %9578, 2
  %9582 = select i1 %9567, float %9579, float %9500
  %9583 = select i1 %9567, float %9580, float %9501
  %9584 = select i1 %9567, float %9581, float %9502
  %9585 = fmul fast float %9582, %9497
  %9586 = fmul fast float %9583, %9497
  %9587 = fmul fast float %9584, %9497
  %9588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9589 = extractvalue %dx.types.CBufRet.f32 %9588, 0
  %9590 = extractvalue %dx.types.CBufRet.f32 %9588, 1
  %9591 = extractvalue %dx.types.CBufRet.f32 %9588, 2
  %9592 = select i1 %9567, float %9589, float %9507
  %9593 = select i1 %9567, float %9590, float %9508
  %9594 = select i1 %9567, float %9591, float %9509
  %9595 = fmul fast float %9592, %9498
  %9596 = fmul fast float %9593, %9498
  %9597 = fmul fast float %9594, %9498
  %9598 = fadd fast float %9595, %9585
  %9599 = fadd fast float %9596, %9586
  %9600 = fadd fast float %9597, %9587
  %9601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9602 = extractvalue %dx.types.CBufRet.f32 %9601, 0
  %9603 = extractvalue %dx.types.CBufRet.f32 %9601, 1
  %9604 = extractvalue %dx.types.CBufRet.f32 %9601, 2
  %9605 = select i1 %9567, float %9602, float %9514
  %9606 = select i1 %9567, float %9603, float %9515
  %9607 = select i1 %9567, float %9604, float %9516
  %9608 = fadd fast float %9598, %9605
  %9609 = fadd fast float %9599, %9606
  %9610 = fadd fast float %9600, %9607
  %9611 = fmul fast float %9608, %9577
  %9612 = fmul fast float %9609, %9577
  %9613 = fmul fast float %9610, %9577
  %9614 = fmul fast float %9611, %9611
  %9615 = fmul fast float %9612, %9612
  %9616 = fadd fast float %9614, %9615
  %9617 = fmul fast float %9613, %9613
  %9618 = fadd fast float %9616, %9617
  %9619 = call float @dx.op.unary.f32(i32 24, float %9618)  ; Sqrt(value)
  %9620 = fsub fast float %9619, %9532
  %9621 = fmul fast float %9620, %9534
  %9622 = call float @dx.op.unary.f32(i32 7, float %9621)  ; Saturate(value)
  br label %9623

; <label>:9623                                    ; preds = %9548, %9544
  %9624 = phi float [ %9622, %9548 ], [ 1.000000e+00, %9544 ]
  %9625 = fmul fast float %9541, 5.000000e-01
  %9626 = fadd fast float %9625, 5.000000e-01
  %9627 = call float @dx.op.unary.f32(i32 22, float %9626)  ; Frc(value)
  %9628 = call float @dx.op.unary.f32(i32 27, float %9627)  ; Round_ni(value)
  %9629 = call float @dx.op.unary.f32(i32 22, float %9627)  ; Frc(value)
  %9630 = fmul fast float %9629, 2.000000e+00
  %9631 = fadd fast float %9630, -1.000000e+00
  %9632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %52, float %9493, float %9494, float %9628, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9633 = extractvalue %dx.types.ResRet.f32 %9632, 0
  %9634 = extractvalue %dx.types.ResRet.f32 %9632, 1
  %9635 = extractvalue %dx.types.ResRet.f32 %9632, 2
  %9636 = extractvalue %dx.types.ResRet.f32 %9632, 3
  %9637 = fadd fast float %9633, -5.000000e-01
  %9638 = fadd fast float %9635, -5.000000e-01
  %9639 = fmul fast float %9637, 0xBFD5555560000000
  %9640 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9638, float %9639)  ; FMad(a,b,c)
  %9641 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9634, float 0.000000e+00)  ; FMad(a,b,c)
  %9642 = fadd fast float %9641, %9636
  %9643 = fmul fast float %9637, -7.500000e-01
  %9644 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9638, float %9643)  ; FMad(a,b,c)
  %9645 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9634, float 0.000000e+00)  ; FMad(a,b,c)
  %9646 = fadd fast float %9645, %9636
  %9647 = call float @dx.op.binary.f32(i32 35, float %9640, float -1.000000e+00)  ; FMax(a,b)
  %9648 = call float @dx.op.binary.f32(i32 35, float %9642, float -1.000000e+00)  ; FMax(a,b)
  %9649 = call float @dx.op.binary.f32(i32 35, float %9644, float -1.000000e+00)  ; FMax(a,b)
  %9650 = call float @dx.op.binary.f32(i32 35, float %9646, float -1.000000e+00)  ; FMax(a,b)
  %9651 = call float @dx.op.binary.f32(i32 36, float %9647, float 1.000000e+00)  ; FMin(a,b)
  %9652 = call float @dx.op.binary.f32(i32 36, float %9648, float 1.000000e+00)  ; FMin(a,b)
  %9653 = call float @dx.op.binary.f32(i32 36, float %9649, float 1.000000e+00)  ; FMin(a,b)
  %9654 = call float @dx.op.binary.f32(i32 36, float %9650, float 1.000000e+00)  ; FMin(a,b)
  %9655 = fcmp fast olt float %9651, 0x3FEFFF8020000000
  br i1 %9655, label %9656, label %9771, !dx.controlflow.hints !184

; <label>:9656                                    ; preds = %9623
  %9657 = extractvalue %dx.types.CBufRet.f32 %9539, 3
  %9658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9659 = extractvalue %dx.types.CBufRet.f32 %9658, 0
  %9660 = extractvalue %dx.types.CBufRet.f32 %9658, 1
  %9661 = extractvalue %dx.types.CBufRet.f32 %9658, 2
  %9662 = extractvalue %dx.types.CBufRet.f32 %9658, 3
  %9663 = fsub fast float %9659, %9651
  %9664 = fsub fast float %9660, %9652
  %9665 = fsub fast float %9661, %9653
  %9666 = fsub fast float %9662, %9654
  %9667 = fmul fast float %9663, %9657
  %9668 = fmul fast float %9664, %9657
  %9669 = fmul fast float %9665, %9657
  %9670 = fmul fast float %9666, %9657
  %9671 = fadd fast float %9667, %9651
  %9672 = fadd fast float %9668, %9652
  %9673 = fsub fast float -0.000000e+00, %9672
  %9674 = fadd fast float %9669, %9653
  %9675 = fadd fast float %9670, %9654
  %9676 = fmul fast float %9671, %9671
  %9677 = fsub fast float %9672, %9676
  %9678 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9677)  ; FMax(a,b)
  %9679 = fdiv fast float 1.000000e+00, %9678
  %9680 = fmul fast float %9672, %9671
  %9681 = fsub fast float %9674, %9680
  %9682 = fsub fast float %9631, %9671
  %9683 = fmul fast float %9631, %9631
  %9684 = fsub fast float %9683, %9672
  %9685 = fmul fast float %9682, %9679
  %9686 = fmul fast float %9685, %9681
  %9687 = fsub fast float %9684, %9686
  %9688 = fmul fast float %9672, %9672
  %9689 = fsub fast float %9675, %9688
  %9690 = fmul fast float %9681, %9681
  %9691 = fmul fast float %9690, %9679
  %9692 = fsub fast float %9689, %9691
  %9693 = fdiv fast float %9687, %9692
  %9694 = fmul fast float %9681, %9693
  %9695 = fsub fast float %9682, %9694
  %9696 = fmul fast float %9695, %9679
  %9697 = fmul fast float %9696, %9671
  %9698 = fsub fast float 1.000000e+00, %9697
  %9699 = fmul fast float %9672, %9693
  %9700 = fsub fast float %9698, %9699
  %9701 = fmul fast float %9696, %9696
  %9702 = fmul fast float %9693, 4.000000e+00
  %9703 = fmul fast float %9702, %9700
  %9704 = fsub fast float %9701, %9703
  %9705 = call float @dx.op.unary.f32(i32 24, float %9704)  ; Sqrt(value)
  %9706 = fcmp fast oge float %9696, 0.000000e+00
  %9707 = fsub fast float -0.000000e+00, %9705
  %9708 = select i1 %9706, float %9707, float %9705
  %9709 = fsub fast float %9708, %9696
  %9710 = fdiv fast float %9709, %9693
  %9711 = fdiv fast float %9700, %9709
  %9712 = fmul fast float %9710, 5.000000e-01
  %9713 = fmul fast float %9711, 2.000000e+00
  %9714 = select i1 %9706, float %9712, float %9713
  %9715 = select i1 %9706, float %9713, float %9712
  %9716 = call float @dx.op.binary.f32(i32 35, float %9714, float %9715)  ; FMax(a,b)
  %9717 = call float @dx.op.binary.f32(i32 36, float %9714, float %9715)  ; FMin(a,b)
  %9718 = fcmp fast ogt float %9631, %9717
  br i1 %9718, label %9719, label %9729

; <label>:9719                                    ; preds = %9656
  %9720 = fsub fast float %9631, %9717
  %9721 = fsub fast float %9716, %9717
  %9722 = fmul fast float %9720, %9721
  %9723 = fmul fast float %9716, %9631
  %9724 = fadd fast float %9716, %9631
  %9725 = fmul fast float %9724, %9671
  %9726 = fadd fast float %9723, %9672
  %9727 = fsub fast float %9726, %9725
  %9728 = fdiv fast float %9727, %9722
  br label %9729

; <label>:9729                                    ; preds = %9719, %9656
  %9730 = phi float [ %9728, %9719 ], [ 0.000000e+00, %9656 ]
  %9731 = fcmp fast ogt float %9631, %9716
  %9732 = fsub fast float %9631, %9716
  br i1 %9731, label %9733, label %9743

; <label>:9733                                    ; preds = %9729
  %9734 = fsub fast float %9716, %9717
  %9735 = fmul fast float %9734, %9732
  %9736 = fmul fast float %9717, %9631
  %9737 = fadd fast float %9717, %9631
  %9738 = fmul fast float %9737, %9671
  %9739 = fsub fast float %9673, %9736
  %9740 = fadd fast float %9739, %9738
  %9741 = fdiv fast float %9740, %9735
  %9742 = fadd fast float %9741, %9730
  br label %9743

; <label>:9743                                    ; preds = %9733, %9729
  %9744 = phi float [ %9742, %9733 ], [ %9730, %9729 ]
  %9745 = fsub fast float %9631, %9717
  %9746 = fmul fast float %9745, %9732
  %9747 = fmul fast float %9717, %9716
  %9748 = fadd fast float %9717, %9716
  %9749 = fmul fast float %9748, %9671
  %9750 = fadd fast float %9747, %9672
  %9751 = fsub fast float %9750, %9749
  %9752 = fdiv fast float %9751, %9746
  %9753 = call float @dx.op.unary.f32(i32 7, float %9744)  ; Saturate(value)
  %9754 = fcmp fast oeq float %8408, 0.000000e+00
  %9755 = extractvalue %dx.types.CBufRet.f32 %9539, 0
  %9756 = fcmp fast oeq float %9755, 0.000000e+00
  %9757 = or i1 %9754, %9756
  %9758 = fmul fast float %9755, 2.000000e+00
  %9759 = fadd fast float %9540, %9541
  %9760 = fdiv fast float %9759, %9758
  %9761 = call float @dx.op.unary.f32(i32 7, float %9760)  ; Saturate(value)
  %9762 = fmul fast float %9761, 2.000000e+00
  %9763 = fsub fast float 3.000000e+00, %9762
  %9764 = fmul fast float %9761, %9761
  %9765 = fmul fast float %9764, %9763
  %9766 = select i1 %9757, float 1.000000e+00, float %9765
  %9767 = fmul fast float %9752, %8408
  %9768 = fadd fast float %9753, %9767
  %9769 = call float @dx.op.unary.f32(i32 7, float %9768)  ; Saturate(value)
  %9770 = fmul fast float %9766, %9769
  br label %9771

; <label>:9771                                    ; preds = %9743, %9623
  %9772 = phi float [ %9770, %9743 ], [ 0.000000e+00, %9623 ]
  %9773 = fsub fast float 1.000000e+00, %9772
  %9774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %52, float %9493, float %9494, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9775 = extractvalue %dx.types.ResRet.f32 %9774, 0
  %9776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9777 = extractvalue %dx.types.CBufRet.i32 %9776, 2
  %9778 = icmp eq i32 %9777, 0
  br i1 %9778, label %9784, label %9779

; <label>:9779                                    ; preds = %9771
  %9780 = call float @dx.op.unary.f32(i32 7, float %9772)  ; Saturate(value)
  %9781 = fadd fast float %9775, -1.000000e+00
  %9782 = fmul fast float %9780, %9781
  %9783 = fadd fast float %9782, 1.000000e+00
  br label %9784

; <label>:9784                                    ; preds = %9779, %9771
  %9785 = phi float [ %9783, %9779 ], [ %9773, %9771 ]
  br i1 %9547, label %9786, label %9804

; <label>:9786                                    ; preds = %9784
  %9787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9788 = extractvalue %dx.types.CBufRet.f32 %9787, 1
  %9789 = fsub fast float %9624, %9788
  %9790 = call float @dx.op.unary.f32(i32 7, float %9789)  ; Saturate(value)
  %9791 = fsub fast float %9624, %9546
  %9792 = call float @dx.op.unary.f32(i32 7, float %9791)  ; Saturate(value)
  %9793 = fsub fast float %9790, %9792
  %9794 = fsub fast float %9626, %9792
  %9795 = fdiv fast float %9794, %9793
  %9796 = call float @dx.op.unary.f32(i32 7, float %9795)  ; Saturate(value)
  %9797 = fmul fast float %9796, 2.000000e+00
  %9798 = fsub fast float 3.000000e+00, %9797
  %9799 = fsub fast float %9775, %9785
  %9800 = fmul fast float %9796, %9796
  %9801 = fmul fast float %9800, %9799
  %9802 = fmul fast float %9801, %9798
  %9803 = fadd fast float %9802, %9785
  br label %9804

; <label>:9804                                    ; preds = %9786, %9784
  %9805 = phi float [ %9803, %9786 ], [ %9785, %9784 ]
  %9806 = call float @dx.op.binary.f32(i32 35, float %9775, float %9805)  ; FMax(a,b)
  %9807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9808 = extractvalue %dx.types.CBufRet.i32 %9807, 2
  %9809 = and i32 %9808, 1
  %9810 = icmp eq i32 %9809, 0
  %9811 = fcmp fast une float %9806, 1.000000e+00
  %9812 = and i1 %9811, %9810
  br i1 %9812, label %9813, label %9832

; <label>:9813                                    ; preds = %9804
  %9814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %52, float %9493, float %9494, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9815 = extractvalue %dx.types.ResRet.f32 %9814, 0
  %9816 = extractvalue %dx.types.ResRet.f32 %9814, 1
  %9817 = extractvalue %dx.types.ResRet.f32 %9814, 2
  %9818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9819 = extractvalue %dx.types.CBufRet.f32 %9818, 1
  %9820 = fmul fast float %9819, %9815
  %9821 = fmul fast float %9819, %9816
  %9822 = fmul fast float %9819, %9817
  %9823 = fcmp fast ogt float %9775, 0x3FEFFF2E40000000
  %9824 = fsub fast float 1.000000e+00, %9806
  %9825 = fsub fast float 1.000000e+00, %9775
  %9826 = fdiv fast float %9824, %9825
  %9827 = call float @dx.op.unary.f32(i32 7, float %9826)  ; Saturate(value)
  %9828 = select i1 %9823, float 0.000000e+00, float %9827
  %9829 = fmul fast float %9820, %9828
  %9830 = fmul fast float %9821, %9828
  %9831 = fmul fast float %9822, %9828
  br label %9832

; <label>:9832                                    ; preds = %9813, %9804
  %9833 = phi float [ 0.000000e+00, %9804 ], [ %9829, %9813 ]
  %9834 = phi float [ 0.000000e+00, %9804 ], [ %9830, %9813 ]
  %9835 = phi float [ 0.000000e+00, %9804 ], [ %9831, %9813 ]
  %9836 = fmul fast float %9833, %8415
  %9837 = fmul fast float %9834, %8417
  %9838 = fmul fast float %9835, %8419
  %9839 = fmul fast float %9806, %9468
  %9840 = call float @dx.op.dot3.f32(i32 55, float %9806, float %9806, float %9806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9841 = call float @dx.op.dot3.f32(i32 55, float %9836, float %9837, float %9838, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9842 = select i1 %302, float %9840, float %9806
  %9843 = select i1 %302, float 1.000000e+00, float %9806
  %9844 = select i1 %302, float %9841, float %9836
  %9845 = select i1 %302, float 0.000000e+00, float %9837
  %9846 = select i1 %302, float 0.000000e+00, float %9838
  %9847 = fmul fast float %9842, %9480
  %9848 = fmul fast float %9842, %9481
  %9849 = fmul fast float %9843, %9482
  %9850 = fadd fast float %9847, %9844
  %9851 = fadd fast float %9848, %9845
  %9852 = fadd fast float %9846, %9849
  %9853 = fmul fast float %9842, %9483
  %9854 = fmul fast float %9842, %9484
  %9855 = fmul fast float %9843, %9485
  br label %9856

; <label>:9856                                    ; preds = %9832, %9489, %9458, %8690
  %9857 = phi float [ %8695, %8690 ], [ %9480, %9458 ], [ %9850, %9832 ], [ %9480, %9489 ]
  %9858 = phi float [ %8696, %8690 ], [ %9481, %9458 ], [ %9851, %9832 ], [ %9481, %9489 ]
  %9859 = phi float [ %8697, %8690 ], [ %9482, %9458 ], [ %9852, %9832 ], [ %9482, %9489 ]
  %9860 = phi float [ %8698, %8690 ], [ %9483, %9458 ], [ %9853, %9832 ], [ %9483, %9489 ]
  %9861 = phi float [ %8699, %8690 ], [ %9484, %9458 ], [ %9854, %9832 ], [ %9484, %9489 ]
  %9862 = phi float [ %8700, %8690 ], [ %9485, %9458 ], [ %9855, %9832 ], [ %9485, %9489 ]
  %9863 = phi float [ %8701, %8690 ], [ %9468, %9458 ], [ %9839, %9832 ], [ %9468, %9489 ]
  %9864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9865 = extractvalue %dx.types.CBufRet.f32 %9864, 2
  %9866 = extractvalue %dx.types.CBufRet.f32 %9864, 3
  %9867 = fmul fast float %9865, %115
  %9868 = fmul fast float %9866, %116
  %9869 = call float @dx.op.unary.f32(i32 7, float %9867)  ; Saturate(value)
  %9870 = call float @dx.op.unary.f32(i32 7, float %9868)  ; Saturate(value)
  %9871 = select i1 %8432, i32 2, i32 0
  %9872 = or i32 %9871, 1
  %9873 = uitofp i32 %9872 to float
  %9874 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %52, float %9869, float %9870, float %9873, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9875 = extractvalue %dx.types.ResRet.f32 %9874, 0
  %9876 = extractvalue %dx.types.ResRet.f32 %9874, 1
  %9877 = extractvalue %dx.types.ResRet.f32 %9874, 2
  %9878 = extractvalue %dx.types.ResRet.f32 %9874, 3
  %9879 = add nuw nsw i32 %9871, 2
  %9880 = uitofp i32 %9879 to float
  %9881 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %52, float %9869, float %9870, float %9880, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9882 = extractvalue %dx.types.ResRet.f32 %9881, 0
  %9883 = extractvalue %dx.types.ResRet.f32 %9881, 1
  %9884 = extractvalue %dx.types.ResRet.f32 %9881, 2
  %9885 = extractvalue %dx.types.ResRet.f32 %9881, 3
  %9886 = call float @dx.op.binary.f32(i32 35, float %9876, float %9877)  ; FMax(a,b)
  %9887 = call float @dx.op.binary.f32(i32 35, float %9875, float %9886)  ; FMax(a,b)
  %9888 = call float @dx.op.binary.f32(i32 35, float %9887, float %9878)  ; FMax(a,b)
  %9889 = call float @dx.op.binary.f32(i32 36, float %9883, float %9884)  ; FMin(a,b)
  %9890 = call float @dx.op.binary.f32(i32 36, float %9882, float %9889)  ; FMin(a,b)
  %9891 = call float @dx.op.binary.f32(i32 36, float %9890, float %9885)  ; FMin(a,b)
  %9892 = fmul fast float %9888, 2.550000e+02
  %9893 = fadd fast float %9892, 0x3F70101020000000
  %9894 = fptoui float %9893 to i32
  %9895 = fmul fast float %9891, 2.550000e+02
  %9896 = fadd fast float %9895, 0x3F70101020000000
  %9897 = fptoui float %9896 to i32
  %9898 = icmp ult i32 %9894, %9897
  br i1 %9898, label %9899, label %10068

; <label>:9899                                    ; preds = %9856
  %9900 = fcmp fast ogt float %101, 9.843750e-01
  %9901 = fadd fast float %8694, -4.000000e+00
  %9902 = select i1 %9900, float -4.000000e+00, float %9901
  %9903 = call float @dx.op.binary.f32(i32 35, float %9902, float 0.000000e+00)  ; FMax(a,b)
  %9904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9905 = extractvalue %dx.types.CBufRet.f32 %9904, 0
  %9906 = fadd fast float %9905, %9903
  %9907 = extractvalue %dx.types.CBufRet.f32 %9904, 2
  %9908 = fmul fast float %9906, %9907
  %9909 = call float @dx.op.unary.f32(i32 23, float %9908)  ; Log(value)
  %9910 = extractvalue %dx.types.CBufRet.f32 %9904, 3
  %9911 = fmul fast float %9910, %9909
  %9912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9913 = extractvalue %dx.types.CBufRet.f32 %9912, 2
  %9914 = fmul fast float %9911, %9913
  %9915 = call float @dx.op.unary.f32(i32 7, float %9914)  ; Saturate(value)
  %9916 = uitofp i32 %9894 to float
  %9917 = uitofp i32 %9897 to float
  %9918 = fadd fast float %9916, 5.000000e-01
  %9919 = fadd fast float %9917, 5.000000e-01
  %9920 = fmul fast float %9913, %9918
  %9921 = fmul fast float %9913, %9919
  %9922 = fadd fast float %9920, 0x3F0FFB4800000000
  %9923 = fadd fast float %9921, 0xBF0FFB4800000000
  %9924 = call float @dx.op.binary.f32(i32 35, float %9915, float %9922)  ; FMax(a,b)
  %9925 = call float @dx.op.binary.f32(i32 36, float %9924, float %9923)  ; FMin(a,b)
  %9926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9927 = extractvalue %dx.types.CBufRet.f32 %9926, 1
  %9928 = extractvalue %dx.types.CBufRet.f32 %9926, 2
  %9929 = extractvalue %dx.types.CBufRet.f32 %9926, 0
  %9930 = select i1 %8432, float %9929, float 0.000000e+00
  %9931 = fmul fast float %9927, %9925
  %9932 = fadd fast float %9930, %9931
  %9933 = fadd fast float %9930, %9928
  %9934 = fsub fast float %9927, %9928
  %9935 = fadd fast float %9934, %9930
  %9936 = call float @dx.op.binary.f32(i32 35, float %9932, float %9933)  ; FMax(a,b)
  %9937 = call float @dx.op.binary.f32(i32 36, float %9936, float %9935)  ; FMin(a,b)
  %9938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %9869, float %9870, float %9937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9939 = extractvalue %dx.types.ResRet.f32 %9938, 0
  %9940 = extractvalue %dx.types.ResRet.f32 %9938, 1
  %9941 = extractvalue %dx.types.ResRet.f32 %9938, 2
  %9942 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9943 = extractvalue %dx.types.CBufRet.i32 %9942, 0
  %9944 = extractvalue %dx.types.CBufRet.i32 %9942, 1
  %9945 = uitofp i32 %9943 to float
  %9946 = uitofp i32 %9944 to float
  %9947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9948 = extractvalue %dx.types.CBufRet.f32 %9947, 0
  %9949 = extractvalue %dx.types.CBufRet.f32 %9947, 1
  %9950 = fmul fast float %9945, %9869
  %9951 = fmul fast float %9946, %9870
  %9952 = fadd fast float %9950, -5.000000e-01
  %9953 = fadd fast float %9951, -5.000000e-01
  %9954 = call float @dx.op.unary.f32(i32 22, float %9952)  ; Frc(value)
  %9955 = call float @dx.op.unary.f32(i32 22, float %9953)  ; Frc(value)
  %9956 = fmul fast float %9954, %9954
  %9957 = fmul fast float %9956, %9954
  %9958 = fsub fast float 3.000000e+00, %9954
  %9959 = fmul fast float %9956, %9958
  %9960 = fmul fast float %9954, 3.000000e+00
  %9961 = fmul fast float %9957, 3.000000e+00
  %9962 = fmul fast float %9956, 6.000000e+00
  %9963 = fsub fast float %9961, %9962
  %9964 = fadd fast float %9963, 4.000000e+00
  %9965 = fmul fast float %9964, 0x3FC5555560000000
  %9966 = fmul fast float %9957, -3.000000e+00
  %9967 = fadd fast float %9956, %9954
  %9968 = fmul fast float %9967, 3.000000e+00
  %9969 = fadd fast float %9966, 1.000000e+00
  %9970 = fadd fast float %9969, %9968
  %9971 = fmul fast float %9957, 0x3FC5555560000000
  %9972 = fmul fast float %9955, %9955
  %9973 = fmul fast float %9972, %9955
  %9974 = fsub fast float 3.000000e+00, %9955
  %9975 = fmul fast float %9972, %9974
  %9976 = fmul fast float %9955, 3.000000e+00
  %9977 = fmul fast float %9973, 3.000000e+00
  %9978 = fmul fast float %9972, 6.000000e+00
  %9979 = fsub fast float %9977, %9978
  %9980 = fadd fast float %9979, 4.000000e+00
  %9981 = fmul fast float %9980, 0x3FC5555560000000
  %9982 = fmul fast float %9973, -3.000000e+00
  %9983 = fadd fast float %9972, %9955
  %9984 = fmul fast float %9983, 3.000000e+00
  %9985 = fadd fast float %9982, 1.000000e+00
  %9986 = fadd fast float %9985, %9984
  %9987 = fmul fast float %9973, 0x3FC5555560000000
  %9988 = fadd fast float %9954, 1.000000e+00
  %9989 = fsub fast float 1.000000e+00, %9960
  %9990 = fadd fast float %9989, %9959
  %9991 = fadd fast float %9990, %9964
  %9992 = fmul fast float %9991, 0x3FC5555560000000
  %9993 = fdiv fast float %9965, %9992
  %9994 = fsub fast float %9988, %9993
  %9995 = fsub fast float 1.000000e+00, %9954
  %9996 = fadd fast float %9970, %9957
  %9997 = fmul fast float %9996, 0x3FC5555560000000
  %9998 = fdiv fast float %9971, %9997
  %9999 = fadd fast float %9995, %9998
  %10000 = fadd fast float %9955, 1.000000e+00
  %10001 = fsub fast float 1.000000e+00, %9976
  %10002 = fadd fast float %10001, %9975
  %10003 = fadd fast float %10002, %9980
  %10004 = fmul fast float %10003, 0x3FC5555560000000
  %10005 = fdiv fast float %9981, %10004
  %10006 = fsub fast float %10000, %10005
  %10007 = fsub fast float 1.000000e+00, %9955
  %10008 = fadd fast float %9986, %9973
  %10009 = fmul fast float %10008, 0x3FC5555560000000
  %10010 = fdiv fast float %9987, %10009
  %10011 = fadd fast float %10010, %10007
  %10012 = fmul fast float %9994, %9948
  %10013 = fsub fast float %9869, %10012
  %10014 = fmul fast float %9999, %9948
  %10015 = fadd fast float %10014, %9869
  %10016 = fmul fast float %10011, %9949
  %10017 = fadd fast float %10016, %9870
  %10018 = fmul fast float %10006, %9949
  %10019 = fsub fast float %9870, %10018
  %10020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %10013, float %10019, float %9937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10021 = extractvalue %dx.types.ResRet.f32 %10020, 0
  %10022 = extractvalue %dx.types.ResRet.f32 %10020, 1
  %10023 = extractvalue %dx.types.ResRet.f32 %10020, 2
  %10024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %10015, float %10019, float %9937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10025 = extractvalue %dx.types.ResRet.f32 %10024, 0
  %10026 = extractvalue %dx.types.ResRet.f32 %10024, 1
  %10027 = extractvalue %dx.types.ResRet.f32 %10024, 2
  %10028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %10013, float %10017, float %9937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10029 = extractvalue %dx.types.ResRet.f32 %10028, 0
  %10030 = extractvalue %dx.types.ResRet.f32 %10028, 1
  %10031 = extractvalue %dx.types.ResRet.f32 %10028, 2
  %10032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %10015, float %10017, float %9937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10033 = extractvalue %dx.types.ResRet.f32 %10032, 0
  %10034 = extractvalue %dx.types.ResRet.f32 %10032, 1
  %10035 = extractvalue %dx.types.ResRet.f32 %10032, 2
  %10036 = fsub fast float %10029, %10021
  %10037 = fsub fast float %10030, %10022
  %10038 = fsub fast float %10031, %10023
  %10039 = fmul fast float %10036, %10009
  %10040 = fmul fast float %10037, %10009
  %10041 = fmul fast float %10038, %10009
  %10042 = fadd fast float %10039, %10021
  %10043 = fadd fast float %10040, %10022
  %10044 = fadd fast float %10041, %10023
  %10045 = fsub fast float %10033, %10025
  %10046 = fsub fast float %10034, %10026
  %10047 = fsub fast float %10035, %10027
  %10048 = fmul fast float %10045, %10009
  %10049 = fmul fast float %10046, %10009
  %10050 = fmul fast float %10047, %10009
  %10051 = fsub fast float %10025, %10042
  %10052 = fadd fast float %10051, %10048
  %10053 = fsub fast float %10026, %10043
  %10054 = fadd fast float %10053, %10049
  %10055 = fsub fast float %10027, %10044
  %10056 = fadd fast float %10055, %10050
  %10057 = fmul fast float %10052, %9997
  %10058 = fmul fast float %10054, %9997
  %10059 = fmul fast float %10056, %9997
  %10060 = fadd fast float %10057, %10042
  %10061 = fadd fast float %10058, %10043
  %10062 = fadd fast float %10059, %10044
  %10063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10064 = extractvalue %dx.types.CBufRet.f32 %10063, 1
  %10065 = fmul fast float %10060, %10064
  %10066 = fmul fast float %10061, %10064
  %10067 = fmul fast float %10062, %10064
  br label %10068

; <label>:10068                                   ; preds = %9899, %9856
  %10069 = phi float [ %9939, %9899 ], [ 1.000000e+00, %9856 ]
  %10070 = phi float [ %9940, %9899 ], [ 1.000000e+00, %9856 ]
  %10071 = phi float [ %9941, %9899 ], [ 1.000000e+00, %9856 ]
  %10072 = phi float [ %10065, %9899 ], [ 0.000000e+00, %9856 ]
  %10073 = phi float [ %10066, %9899 ], [ 0.000000e+00, %9856 ]
  %10074 = phi float [ %10067, %9899 ], [ 0.000000e+00, %9856 ]
  %10075 = fmul fast float %10072, %8415
  %10076 = fmul fast float %10073, %8417
  %10077 = fmul fast float %10074, %8419
  %10078 = fmul fast float %10069, %9863
  %10079 = call float @dx.op.dot3.f32(i32 55, float %10069, float %10070, float %10071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10080 = call float @dx.op.dot3.f32(i32 55, float %10075, float %10076, float %10077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10081 = select i1 %302, float %10079, float %10069
  %10082 = select i1 %302, float %10079, float %10070
  %10083 = select i1 %302, float 1.000000e+00, float %10071
  %10084 = select i1 %302, float %10080, float %10075
  %10085 = select i1 %302, float 0.000000e+00, float %10076
  %10086 = select i1 %302, float 0.000000e+00, float %10077
  %10087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10088 = extractvalue %dx.types.CBufRet.i32 %10087, 3
  %10089 = and i32 %10088, 3
  %10090 = icmp ne i32 %10089, 0
  %10091 = and i32 %10088, 4
  %10092 = icmp ne i32 %10091, 0
  %10093 = and i1 %10090, %10092
  %10094 = and i1 %302, %10093
  br i1 %10094, label %10095, label %10101

; <label>:10095                                   ; preds = %10068
  %10096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10097 = extractvalue %dx.types.CBufRet.f32 %10096, 1
  %10098 = fadd fast float %10078, -1.000000e+00
  %10099 = fmul fast float %10097, %10098
  %10100 = fadd fast float %10099, 1.000000e+00
  br label %10101

; <label>:10101                                   ; preds = %10095, %10068
  %10102 = phi float [ %10100, %10095 ], [ %10078, %10068 ]
  %10103 = fadd fast float %9860, %9857
  %10104 = fmul fast float %10081, %10103
  %10105 = fadd fast float %10104, %10084
  %10106 = fadd fast float %9861, %9858
  %10107 = fmul fast float %10082, %10106
  %10108 = fadd fast float %10107, %10085
  %10109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10110 = extractvalue %dx.types.CBufRet.f32 %10109, 0
  br i1 %302, label %10111, label %10126

; <label>:10111                                   ; preds = %10101
  %10112 = fadd fast float %10105, %10108
  %10113 = fmul fast float %10110, %10112
  %10114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10115 = extractvalue %dx.types.CBufRet.f32 %10114, 3
  %10116 = extractvalue %dx.types.CBufRet.f32 %8400, 1
  %10117 = fsub fast float %8405, %8399
  %10118 = fadd fast float %10117, %8406
  %10119 = fsub fast float %10118, %10116
  %10120 = extractvalue %dx.types.CBufRet.f32 %8400, 2
  %10121 = fmul fast float %10119, %10120
  %10122 = call float @dx.op.unary.f32(i32 7, float %10121)  ; Saturate(value)
  %10123 = fsub fast float %10122, %10115
  %10124 = fmul fast float %10123, %10102
  %10125 = fadd fast float %10124, %10115
  br label %10152

; <label>:10126                                   ; preds = %10101
  %10127 = fadd fast float %9862, %9859
  %10128 = fmul fast float %10083, %10127
  %10129 = fadd fast float %10128, %10086
  %10130 = fmul fast float %10110, %10105
  %10131 = fmul fast float %10110, %10108
  %10132 = fmul fast float %10110, %10129
  %10133 = call float @dx.op.binary.f32(i32 35, float %10131, float %10132)  ; FMax(a,b)
  %10134 = call float @dx.op.binary.f32(i32 35, float %10130, float %10133)  ; FMax(a,b)
  %10135 = call float @dx.op.binary.f32(i32 35, float %8417, float %8419)  ; FMax(a,b)
  %10136 = call float @dx.op.binary.f32(i32 35, float %8415, float %10135)  ; FMax(a,b)
  %10137 = call float @dx.op.binary.f32(i32 35, float %10134, float %10136)  ; FMax(a,b)
  %10138 = fcmp fast ugt float %10137, 0x3F10000000000000
  br i1 %10138, label %10140, label %10139

; <label>:10139                                   ; preds = %10126
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10140

; <label>:10140                                   ; preds = %10139, %10126
  %10141 = add i32 %58, 356
  %10142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %10141, i32 undef)  ; BufferLoad(srv,index,wot)
  %10143 = extractvalue %dx.types.ResRet.i32 %10142, 0
  %10144 = and i32 %10143, 32
  %10145 = icmp eq i32 %10144, 0
  br i1 %10145, label %10152, label %10146

; <label>:10146                                   ; preds = %10140
  %10147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10148 = extractvalue %dx.types.CBufRet.f32 %10147, 0
  %10149 = fmul fast float %10148, 0x3FE99999A0000000
  %10150 = fadd fast float %10148, %10130
  %10151 = fadd fast float %10149, %10132
  br label %10152

; <label>:10152                                   ; preds = %10146, %10140, %10111
  %10153 = phi float [ 1.000000e+00, %10111 ], [ %8417, %10146 ], [ %8417, %10140 ]
  %10154 = phi float [ 1.000000e+00, %10111 ], [ %8419, %10146 ], [ %8419, %10140 ]
  %10155 = phi float [ %10113, %10111 ], [ %10150, %10146 ], [ %10130, %10140 ]
  %10156 = phi float [ %10125, %10111 ], [ %10131, %10146 ], [ %10131, %10140 ]
  %10157 = phi float [ 1.000000e+00, %10111 ], [ %10151, %10146 ], [ %10132, %10140 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10158 = call float @dx.op.binary.f32(i32 36, float %10155, float 3.225500e+04)  ; FMin(a,b)
  %10159 = call float @dx.op.binary.f32(i32 36, float %10156, float 3.225500e+04)  ; FMin(a,b)
  %10160 = call float @dx.op.binary.f32(i32 36, float %10157, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10158)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10159)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10160)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10161 = call float @dx.op.binary.f32(i32 36, float %8415, float 3.225500e+04)  ; FMin(a,b)
  %10162 = call float @dx.op.binary.f32(i32 36, float %10153, float 3.225500e+04)  ; FMin(a,b)
  %10163 = call float @dx.op.binary.f32(i32 36, float %10154, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10161)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10162)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10163)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!71}
!dx.entryPoints = !{!72}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !60, !63}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !32}
!32 = !{i32 0, i32 5}
!33 = !{i32 25, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!34 = !{i32 26, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!38 = !{i32 30, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !44}
!44 = !{i32 0, i32 14}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!46 = !{i32 37, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!52 = !{i32 43, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!53 = !{i32 44, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!54 = !{i32 45, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!55 = !{i32 46, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!56 = !{i32 47, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !44}
!57 = !{i32 48, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!58 = !{i32 49, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!59 = !{i32 50, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!60 = !{!61, !62}
!61 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!62 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!63 = !{!64, !65, !66, !67, !68, !69, !70}
!64 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!65 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!66 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!67 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!68 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!69 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!70 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!71 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!72 = !{void ()* @ps_main, !"ps_main", !73, !4, !100}
!73 = !{!74, !96, null}
!74 = !{!75, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !92, !93, !94, !95}
!75 = !{i32 0, !"SV_Position", i8 9, i8 3, !76, i8 4, i32 1, i8 4, i32 0, i8 0, !77}
!76 = !{i32 0}
!77 = !{i32 3, i32 15}
!78 = !{i32 1, !"COLOR", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 1, i8 0, !77}
!79 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 2, i8 0, !80}
!80 = !{i32 3, i32 3}
!81 = !{i32 3, !"NORMAL", i8 9, i8 0, !76, i8 2, i32 1, i8 3, i32 3, i8 0, !82}
!82 = !{i32 3, i32 7}
!83 = !{i32 4, !"TANGENT", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 4, i8 0, !77}
!84 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !76, i8 2, i32 1, i8 3, i32 5, i8 0, !82}
!85 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 6, i8 0, !77}
!86 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !76, i8 2, i32 1, i8 1, i32 3, i8 3, !87}
!87 = !{i32 3, i32 1}
!88 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !76, i8 2, i32 1, i8 3, i32 7, i8 0, !82}
!89 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 8, i8 0, !77}
!90 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !76, i8 2, i32 1, i8 2, i32 9, i8 0, !80}
!91 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 10, i8 0, !77}
!92 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 11, i8 0, !77}
!93 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !76, i8 1, i32 1, i8 2, i32 12, i8 0, !80}
!94 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !76, i8 1, i32 1, i8 4, i32 13, i8 0, !87}
!95 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !76, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!96 = !{!97, !98}
!97 = !{i32 0, !"SV_Target", i8 9, i8 16, !76, i8 0, i32 1, i8 4, i32 0, i8 0, !77}
!98 = !{i32 1, !"SV_Target", i8 9, i8 16, !99, i8 0, i32 1, i8 4, i32 1, i8 0, !77}
!99 = !{i32 1}
!100 = !{i32 0, i64 16}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = !{!110, !110, i64 0}
!110 = !{!"int", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !{!114, !116, !118, !120}
!114 = distinct !{!114, !115, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!115 = distinct !{!115, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!116 = distinct !{!116, !117, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!117 = distinct !{!117, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!118 = distinct !{!118, !119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!119 = distinct !{!119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!120 = distinct !{!120, !121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!121 = distinct !{!121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = !{!124, !124, i64 0}
!124 = !{!"float", !111, i64 0}
!125 = distinct !{!125, !103}
!126 = distinct !{!126, !103}
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
!138 = !{!139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!139 = distinct !{!139, !140, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!140 = distinct !{!140, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!141 = distinct !{!141, !142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!142 = distinct !{!142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!143 = distinct !{!143, !142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!144 = distinct !{!144, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!145 = distinct !{!145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!146 = distinct !{!146, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!147 = distinct !{!147, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!148 = distinct !{!148, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!149 = distinct !{!149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!150 = distinct !{!150, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!151 = distinct !{!151, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!152 = distinct !{!152, !153, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!153 = distinct !{!153, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!162 = !{!158}
!163 = !{!159, !155, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!164 = !{!165}
!165 = distinct !{!165, !166, !"\01?sort@@YAXAIAM00@Z: %c"}
!166 = distinct !{!166, !"\01?sort@@YAXAIAM00@Z"}
!167 = !{!168, !169, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!168 = distinct !{!168, !166, !"\01?sort@@YAXAIAM00@Z: %a"}
!169 = distinct !{!169, !166, !"\01?sort@@YAXAIAM00@Z: %b"}
!170 = !{!169}
!171 = !{!168, !165, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!172 = !{!168}
!173 = !{!169, !165, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 2}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}

