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
;
; shader hash: b656d17c3cbd92fc98f0b99b6ecfa6d4
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
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 52 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = alloca [4 x i32], align 4
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = alloca [12 x float], align 4
  %103 = alloca [12 x float], align 4
  %104 = alloca [4 x float], align 4
  %105 = alloca [4 x float], align 4
  %106 = alloca [4 x float], align 4
  %107 = alloca [4 x float], align 4
  %108 = alloca [3 x float], align 4
  %109 = alloca [3 x float], align 4
  %110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = fmul fast float %113, %98
  %115 = fmul fast float %113, %99
  %116 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %117 = bitcast float %116 to i32
  %118 = ashr i32 %117, 1
  %119 = sub nsw i32 1597250115, %118
  %120 = bitcast i32 %119 to float
  %121 = fmul fast float %120, %89
  %122 = fmul fast float %120, %90
  %123 = fmul fast float %120, %91
  %124 = fmul fast float %90, %87
  %125 = fmul fast float %91, %86
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %91, %85
  %128 = fmul fast float %89, %87
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %89, %86
  %131 = fmul fast float %90, %85
  %132 = fsub fast float %130, %131
  %133 = fmul fast float %126, %88
  %134 = fmul fast float %129, %88
  %135 = fmul fast float %132, %88
  %136 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %137 = bitcast float %136 to i32
  %138 = ashr i32 %137, 1
  %139 = sub nsw i32 1597250115, %138
  %140 = bitcast i32 %139 to float
  %141 = fmul fast float %140, %78
  %142 = fmul fast float %140, %79
  %143 = fmul fast float %140, %80
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = fcmp fast une float %145, 0.000000e+00
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %114, 2.000000e+00
  %151 = fmul fast float %150, %148
  %152 = fmul fast float %115, 2.000000e+00
  %153 = fmul fast float %152, %149
  %154 = fsub fast float 1.000000e+00, %151
  %155 = fsub fast float 1.000000e+00, %153
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = select i1 %146, float %157, float %161
  %165 = select i1 %146, float %158, float %162
  %166 = select i1 %146, float %159, float %163
  %167 = fmul fast float %164, %154
  %168 = fmul fast float %165, %154
  %169 = fmul fast float %166, %154
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = select i1 %146, float %171, float %175
  %179 = select i1 %146, float %172, float %176
  %180 = select i1 %146, float %173, float %177
  %181 = fmul fast float %178, %155
  %182 = fmul fast float %179, %155
  %183 = fmul fast float %180, %155
  %184 = fadd fast float %181, %167
  %185 = fadd fast float %182, %168
  %186 = fadd fast float %183, %169
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 1
  %190 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %195 = select i1 %146, float %188, float %192
  %196 = select i1 %146, float %189, float %193
  %197 = select i1 %146, float %190, float %194
  %198 = fadd fast float %184, %195
  %199 = fadd fast float %185, %196
  %200 = fadd fast float %186, %197
  %201 = fmul fast float %198, %101
  %202 = fmul fast float %199, %101
  %203 = fmul fast float %200, %101
  %204 = shl i32 %58, 5
  %205 = add i32 %204, 4194304
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = extractvalue %dx.types.ResRet.i32 %206, 1
  %209 = extractvalue %dx.types.ResRet.i32 %206, 2
  %210 = extractvalue %dx.types.ResRet.i32 %206, 3
  %211 = add i32 %204, 4194320
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = extractvalue %dx.types.ResRet.i32 %212, 1
  %215 = bitcast i32 %213 to float
  %216 = bitcast i32 %214 to float
  %217 = fmul fast float %114, 5.000000e-01
  %218 = fmul fast float %115, 5.000000e-01
  %219 = fptosi float %217 to i32
  %220 = fptosi float %218 to i32
  %221 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %219, i32 %220, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = lshr i32 %222, 18
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F4C00EBA0000000
  %226 = call float @dx.op.unary.f32(i32 21, float %225)  ; Exp(value)
  %227 = fadd fast float %226, -1.000000e+00
  %228 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %229 = extractvalue %dx.types.Dimensions %228, 0
  %230 = sitofp i32 %229 to float
  %231 = extractvalue %dx.types.Dimensions %228, 1
  %232 = sitofp i32 %231 to float
  %233 = fcmp fast oge float %217, %230
  %234 = fcmp fast oge float %218, %232
  %235 = or i1 %233, %234
  %236 = select i1 %235, float 0x4197782600000000, float %227
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %239 = extractvalue %dx.types.CBufRet.f32 %237, 3
  %240 = fmul fast float %238, %114
  %241 = fmul fast float %239, %115
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 114688
  %245 = icmp ne i32 %244, 0
  %246 = select i1 %245, float %240, float 0.000000e+00
  %247 = select i1 %245, float %241, float 0.000000e+00
  %248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %52, float %246, float %247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = fmul fast float %249, 2.550000e+02
  %251 = fptoui float %250 to i32
  %252 = select i1 %245, i32 %251, i32 0
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 3
  %255 = and i32 %254, 3
  %256 = icmp ne i32 %255, 0
  %257 = and i32 %254, 4
  %258 = icmp ne i32 %257, 0
  %259 = and i1 %256, %258
  br i1 %259, label %260, label %269

; <label>:260                                     ; preds = %0
  %261 = fmul fast float %149, %115
  %262 = fmul fast float %148, %114
  %263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %51, float %262, float %261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = fsub fast float 1.000000e+00, %264
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 0
  %268 = fcmp fast olt float %265, %267
  br label %272

; <label>:269                                     ; preds = %0
  %270 = icmp eq i32 %257, 0
  %271 = and i1 %256, %270
  br label %272

; <label>:272                                     ; preds = %269, %260
  %273 = phi i1 [ %268, %260 ], [ %271, %269 ]
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 2
  %276 = fmul fast float %275, 0x3FE3C6EF40000000
  %277 = frem fast float %114, 2.560000e+02
  %278 = frem fast float %115, 2.560000e+02
  %279 = fptoui float %277 to i32
  %280 = fptoui float %278 to i32
  %281 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %279, i32 %280, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = fadd fast float %282, %276
  %284 = call float @dx.op.unary.f32(i32 22, float %283)  ; Frc(value)
  %285 = add i32 %57, 156
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %287, 4
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %287, 7
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %287, 22
  %295 = shl nuw nsw i32 %294, 5
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %57, 216
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %299, 8
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %299, 16
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = add i32 %57, 36
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %57, 288
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = fmul fast float %322, 0x3F50624DE0000000
  %326 = fmul fast float %324, 0x3F50624DE0000000
  %327 = mul i32 %59, 100
  %328 = add i32 %327, 28
  %329 = add i32 %327, 40
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = add i32 %57, 172
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = shl i32 %334, 4
  %336 = and i32 %335, 32752
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %334, 7
  %339 = and i32 %338, 32752
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %334, 22
  %342 = shl nuw nsw i32 %341, 5
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %57, 232
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = lshr i32 %346, 8
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = lshr i32 %346, 16
  %355 = and i32 %354, 255
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, 0x3F70101020000000
  %358 = add i32 %57, 52
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 65535
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %360, 16
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = add i32 %57, 304
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 65535
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %367, 16
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = shl i32 %373, 4
  %375 = and i32 %374, 32752
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %373, 7
  %378 = and i32 %377, 32752
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = lshr i32 %373, 22
  %381 = shl nuw nsw i32 %380, 5
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = and i32 %331, 1
  %384 = icmp ne i32 %383, 0
  %385 = select i1 %384, float %376, float %337
  %386 = select i1 %384, float %379, float %340
  %387 = select i1 %384, float %382, float %343
  %388 = add i32 %327, 44
  %389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = fmul fast float %390, %385
  %392 = fmul fast float %390, %386
  %393 = fmul fast float %390, %387
  %394 = add i32 %327, 48
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = shl i32 %396, 4
  %398 = and i32 %397, 32752
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %396, 7
  %401 = and i32 %400, 32752
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = lshr i32 %396, 22
  %404 = shl nuw nsw i32 %403, 5
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = and i32 %331, 8
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %407, float %399, float %349
  %409 = select i1 %407, float %402, float %353
  %410 = select i1 %407, float %405, float %357
  %411 = add i32 %327, 52
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 65535
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %413, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = and i32 %331, 2
  %419 = icmp ne i32 %418, 0
  %420 = select i1 %419, float %415, float %362
  %421 = select i1 %419, float %417, float %364
  %422 = add i32 %327, 56
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = and i32 %424, 65535
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = lshr i32 %424, 16
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = and i32 %331, 4
  %430 = icmp ne i32 %429, 0
  %431 = select i1 %430, float %426, float %369
  %432 = fmul float %431, 0x3F50624DE0000000
  %433 = select i1 %430, float %428, float %371
  %434 = fmul float %433, 0x3F50624DE0000000
  %435 = add i32 %327, 60
  %436 = add i32 %327, 32
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = add i32 %57, 188
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = shl i32 %441, 4
  %443 = and i32 %442, 32752
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = lshr i32 %441, 7
  %446 = and i32 %445, 32752
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = lshr i32 %441, 22
  %449 = shl nuw nsw i32 %448, 5
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = add i32 %57, 248
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 255
  %455 = uitofp i32 %454 to float
  %456 = fmul fast float %455, 0x3F70101020000000
  %457 = lshr i32 %453, 8
  %458 = and i32 %457, 255
  %459 = uitofp i32 %458 to float
  %460 = fmul fast float %459, 0x3F70101020000000
  %461 = lshr i32 %453, 16
  %462 = and i32 %461, 255
  %463 = uitofp i32 %462 to float
  %464 = fmul fast float %463, 0x3F70101020000000
  %465 = add i32 %57, 68
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = and i32 %467, 65535
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = lshr i32 %467, 16
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = add i32 %57, 320
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 65535
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = lshr i32 %474, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = shl i32 %480, 4
  %482 = and i32 %481, 32752
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = lshr i32 %480, 7
  %485 = and i32 %484, 32752
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = lshr i32 %480, 22
  %488 = shl nuw nsw i32 %487, 5
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = and i32 %438, 1
  %491 = icmp ne i32 %490, 0
  %492 = select i1 %491, float %483, float %444
  %493 = select i1 %491, float %486, float %447
  %494 = select i1 %491, float %489, float %450
  %495 = add i32 %327, 64
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = fmul fast float %497, %492
  %499 = fmul fast float %497, %493
  %500 = fmul fast float %497, %494
  %501 = add i32 %327, 68
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = shl i32 %503, 4
  %505 = and i32 %504, 32752
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = lshr i32 %503, 7
  %508 = and i32 %507, 32752
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = lshr i32 %503, 22
  %511 = shl nuw nsw i32 %510, 5
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = and i32 %438, 8
  %514 = icmp ne i32 %513, 0
  %515 = select i1 %514, float %506, float %456
  %516 = select i1 %514, float %509, float %460
  %517 = select i1 %514, float %512, float %464
  %518 = add i32 %327, 72
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = and i32 %520, 65535
  %522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %521)  ; LegacyF16ToF32(value)
  %523 = lshr i32 %520, 16
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = and i32 %438, 2
  %526 = icmp ne i32 %525, 0
  %527 = select i1 %526, float %522, float %469
  %528 = select i1 %526, float %524, float %471
  %529 = add i32 %327, 76
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = and i32 %531, 65535
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = lshr i32 %531, 16
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = and i32 %438, 4
  %537 = icmp ne i32 %536, 0
  %538 = select i1 %537, float %533, float %476
  %539 = fmul float %538, 0x3F50624DE0000000
  %540 = select i1 %537, float %535, float %478
  %541 = fmul float %540, 0x3F50624DE0000000
  %542 = add i32 %327, 80
  %543 = add i32 %327, 36
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = add i32 %57, 204
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = shl i32 %548, 4
  %550 = and i32 %549, 32752
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = lshr i32 %548, 7
  %553 = and i32 %552, 32752
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = lshr i32 %548, 22
  %556 = shl nuw nsw i32 %555, 5
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = add i32 %57, 264
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = and i32 %560, 255
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %562, 0x3F70101020000000
  %564 = lshr i32 %560, 8
  %565 = and i32 %564, 255
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %566, 0x3F70101020000000
  %568 = lshr i32 %560, 16
  %569 = and i32 %568, 255
  %570 = uitofp i32 %569 to float
  %571 = fmul fast float %570, 0x3F70101020000000
  %572 = add i32 %57, 84
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = and i32 %574, 65535
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = lshr i32 %574, 16
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = add i32 %57, 336
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = and i32 %581, 65535
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = lshr i32 %581, 16
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = shl i32 %587, 4
  %589 = and i32 %588, 32752
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = lshr i32 %587, 7
  %592 = and i32 %591, 32752
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = lshr i32 %587, 22
  %595 = shl nuw nsw i32 %594, 5
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = and i32 %545, 1
  %598 = icmp ne i32 %597, 0
  %599 = select i1 %598, float %590, float %551
  %600 = select i1 %598, float %593, float %554
  %601 = select i1 %598, float %596, float %557
  %602 = add i32 %327, 84
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = fmul fast float %604, %599
  %606 = fmul fast float %604, %600
  %607 = fmul fast float %604, %601
  %608 = add i32 %327, 88
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = shl i32 %610, 4
  %612 = and i32 %611, 32752
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = lshr i32 %610, 7
  %615 = and i32 %614, 32752
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = lshr i32 %610, 22
  %618 = shl nuw nsw i32 %617, 5
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = and i32 %545, 8
  %621 = icmp ne i32 %620, 0
  %622 = select i1 %621, float %613, float %563
  %623 = select i1 %621, float %616, float %567
  %624 = select i1 %621, float %619, float %571
  %625 = add i32 %327, 92
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = and i32 %627, 65535
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = lshr i32 %627, 16
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = and i32 %545, 2
  %633 = icmp ne i32 %632, 0
  %634 = select i1 %633, float %629, float %576
  %635 = select i1 %633, float %631, float %578
  %636 = add i32 %327, 96
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = and i32 %638, 65535
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = lshr i32 %638, 16
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = and i32 %545, 4
  %644 = icmp ne i32 %643, 0
  %645 = select i1 %644, float %640, float %583
  %646 = fmul float %645, 0x3F50624DE0000000
  %647 = select i1 %644, float %642, float %585
  %648 = fmul float %647, 0x3F50624DE0000000
  %649 = add i32 %57, 348
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = and i32 %651, 32
  %653 = icmp eq i32 %652, 0
  %654 = and i32 %651, 64
  %655 = icmp eq i32 %654, 0
  %656 = and i32 %651, 128
  %657 = icmp eq i32 %656, 0
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = and i32 %659, 2
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %677, label %662

; <label>:662                                     ; preds = %272
  %663 = add i32 %57, 524
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = add i32 %665, 0
  %667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %666, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %668 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %667, %dx.types.Handle %111, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %669 = extractvalue %dx.types.ResRet.f32 %668, 0
  %670 = extractvalue %dx.types.ResRet.f32 %668, 1
  %671 = extractvalue %dx.types.ResRet.f32 %668, 2
  %672 = extractvalue %dx.types.ResRet.f32 %668, 3
  %673 = fmul fast float %672, %94
  %674 = fmul fast float %669, %95
  %675 = fmul fast float %670, %96
  %676 = fmul fast float %671, %97
  br label %677

; <label>:677                                     ; preds = %662, %272
  %678 = phi float [ %97, %272 ], [ %676, %662 ]
  %679 = phi float [ %96, %272 ], [ %675, %662 ]
  %680 = phi float [ %95, %272 ], [ %674, %662 ]
  %681 = phi float [ %94, %272 ], [ %673, %662 ]
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 2
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %705, label %686

; <label>:686                                     ; preds = %677
  %687 = add i32 %57, 44
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = and i32 %689, 1
  %691 = icmp ne i32 %690, 0
  %692 = select i1 %691, float %680, float 1.000000e+00
  %693 = add i32 %57, 60
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 1
  %697 = icmp ne i32 %696, 0
  %698 = select i1 %697, float %679, float 1.000000e+00
  %699 = add i32 %57, 76
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = and i32 %701, 1
  %703 = icmp ne i32 %702, 0
  %704 = select i1 %703, float %678, float 1.000000e+00
  br label %705

; <label>:705                                     ; preds = %686, %677
  %706 = phi float [ %678, %677 ], [ %704, %686 ]
  %707 = phi float [ %679, %677 ], [ %698, %686 ]
  %708 = phi float [ %680, %677 ], [ %692, %686 ]
  %709 = lshr i32 %683, 20
  %710 = and i32 %709, 3
  %711 = add nuw nsw i32 %710, 1
  %712 = add i32 %57, 24
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = add i32 %57, 28
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = or i32 %717, %714
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %1254, label %720

; <label>:720                                     ; preds = %705
  %721 = and i32 %714, 262144
  %722 = icmp ne i32 %721, 0
  %723 = select i1 %722, float %64, float 1.000000e+00
  %724 = select i1 %722, float %65, float 0.000000e+00
  %725 = select i1 %722, float %66, float 0.000000e+00
  %726 = select i1 %722, float %67, float 1.000000e+00
  %727 = select i1 %722, float %68, float %92
  %728 = select i1 %722, float %69, float %93
  %729 = add i32 %57, 284
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = lshr i32 %731, 16
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = fmul fast float %733, 0x3F50624DE0000000
  %735 = add i32 %57, 88
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = lshr i32 %737, 16
  %739 = and i32 %738, 255
  %740 = lshr i32 %737, 24
  %741 = add i32 %57, 292
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = and i32 %743, 65535
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = lshr i32 %743, 16
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = add i32 %57, 32
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = lshr i32 %750, 22
  %752 = shl nuw nsw i32 %751, 5
  %753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %752)  ; LegacyF16ToF32(value)
  %754 = shl i32 %750, 4
  %755 = and i32 %754, 32752
  %756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %755)  ; LegacyF16ToF32(value)
  %757 = lshr i32 %750, 7
  %758 = and i32 %757, 32752
  %759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %758)  ; LegacyF16ToF32(value)
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 3
  %762 = fmul fast float %761, 1.000000e+03
  %763 = fmul fast float %325, %762
  %764 = call float @dx.op.unary.f32(i32 22, float %763)  ; Frc(value)
  %765 = fadd fast float %764, %315
  %766 = fmul fast float %326, %762
  %767 = call float @dx.op.unary.f32(i32 22, float %766)  ; Frc(value)
  %768 = fadd fast float %767, %317
  %769 = fmul fast float %734, %762
  %770 = call float @dx.op.unary.f32(i32 22, float %769)  ; Frc(value)
  %771 = fmul fast float %770, 0x401921FB60000000
  %772 = fadd fast float %771, %753
  %773 = call float @dx.op.unary.f32(i32 13, float %772)  ; Sin(value)
  %774 = call float @dx.op.unary.f32(i32 12, float %772)  ; Cos(value)
  %775 = fsub fast float -0.000000e+00, %773
  %776 = fadd fast float %727, -5.000000e-01
  %777 = fadd fast float %728, -5.000000e-01
  %778 = fmul fast float %745, %776
  %779 = fmul fast float %747, %777
  %780 = fadd fast float %778, 5.000000e-01
  %781 = fadd fast float %779, 5.000000e-01
  %782 = fmul fast float %756, %780
  %783 = fmul fast float %759, %781
  %784 = fmul fast float %774, %782
  %785 = call float @dx.op.tertiary.f32(i32 46, float %775, float %783, float %784)  ; FMad(a,b,c)
  %786 = fmul fast float %773, %782
  %787 = call float @dx.op.tertiary.f32(i32 46, float %774, float %783, float %786)  ; FMad(a,b,c)
  %788 = fadd fast float %765, %785
  %789 = fadd fast float %768, %787
  %790 = icmp ugt i32 %739, 1
  %791 = icmp ugt i32 %737, 33554431
  %792 = or i1 %791, %790
  br i1 %792, label %793, label %818

; <label>:793                                     ; preds = %720
  %794 = add i32 %57, 228
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = lshr i32 %796, 16
  %798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %797)  ; LegacyF16ToF32(value)
  %799 = fmul fast float %761, %798
  %800 = call float @dx.op.unary.f32(i32 22, float %799)  ; Frc(value)
  %801 = mul nuw nsw i32 %739, %740
  %802 = uitofp i32 %801 to float
  %803 = fmul fast float %800, %802
  %804 = call float @dx.op.unary.f32(i32 27, float %803)  ; Round_ni(value)
  %805 = fptoui float %804 to i32
  %806 = urem i32 %805, %739
  %807 = udiv i32 %805, %740
  %808 = call float @dx.op.unary.f32(i32 22, float %788)  ; Frc(value)
  %809 = call float @dx.op.unary.f32(i32 22, float %789)  ; Frc(value)
  %810 = uitofp i32 %806 to float
  %811 = uitofp i32 %807 to float
  %812 = fadd fast float %808, %810
  %813 = fadd fast float %809, %811
  %814 = uitofp i32 %739 to float
  %815 = uitofp i32 %740 to float
  %816 = fdiv fast float %812, %814
  %817 = fdiv fast float %813, %815
  br label %818

; <label>:818                                     ; preds = %793, %720
  %819 = phi float [ %816, %793 ], [ %788, %720 ]
  %820 = phi float [ %817, %793 ], [ %789, %720 ]
  %821 = and i32 %714, 256
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %869, label %823

; <label>:823                                     ; preds = %818
  %824 = add i32 %57, 472
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = add i32 %826, 0
  %828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %827, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %829 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %828, %dx.types.Handle %111, float %819, float %820, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = add i32 %57, 100
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %831, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = shl i32 %833, 4
  %835 = and i32 %834, 32752
  %836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %835)  ; LegacyF16ToF32(value)
  %837 = lshr i32 %833, 7
  %838 = and i32 %837, 32752
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = fsub fast float 1.000000e+00, %681
  %841 = call float @dx.op.binary.f32(i32 35, float %840, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %842 = bitcast float %681 to i32
  %843 = sitofp i32 %842 to float
  %844 = fadd fast float %843, 0xC1CFBF8940000000
  %845 = fmul fast float %839, %844
  %846 = fadd fast float %845, 0x41CFBF8940000000
  %847 = fptosi float %846 to i32
  %848 = bitcast i32 %847 to float
  %849 = bitcast float %841 to i32
  %850 = sitofp i32 %849 to float
  %851 = fadd fast float %850, 0xC1CFBF8940000000
  %852 = fmul fast float %851, %839
  %853 = fadd fast float %852, 0x41CFBF8940000000
  %854 = fptosi float %853 to i32
  %855 = bitcast i32 %854 to float
  %856 = fmul fast float %848, %836
  %857 = fmul fast float %855, %836
  %858 = fsub fast float %841, %856
  %859 = fadd fast float %857, %841
  %860 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  %861 = call float @dx.op.unary.f32(i32 7, float %859)  ; Saturate(value)
  %862 = fsub fast float %830, %860
  %863 = fsub fast float %861, %860
  %864 = bitcast float %863 to i32
  %865 = sub nsw i32 2129859010, %864
  %866 = bitcast i32 %865 to float
  %867 = fmul fast float %866, %862
  %868 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  br label %869

; <label>:869                                     ; preds = %823, %818
  %870 = phi float [ %868, %823 ], [ %681, %818 ]
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %872, 128
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %891, label %875

; <label>:875                                     ; preds = %869
  %876 = add i32 %57, 456
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = add i32 %878, 0
  %880 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %879, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %881 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %880, %dx.types.Handle %111, float %819, float %820, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = and i32 %884, 524288
  %886 = icmp ne i32 %885, 0
  %887 = fcmp fast ogt float %882, 0x3FE0101020000000
  %888 = select i1 %887, float 1.000000e+00, float 0.000000e+00
  %889 = select i1 %886, float %888, float %882
  %890 = fmul fast float %889, %870
  br label %891

; <label>:891                                     ; preds = %875, %869
  %892 = phi float [ %890, %875 ], [ %870, %869 ]
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = and i32 %894, 16
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %1095, label %897

; <label>:897                                     ; preds = %891
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = add i32 %57, 408
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = add i32 %902, 0
  %904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %905 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %904, %dx.types.Handle %110, float %819, float %820, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 0
  %907 = extractvalue %dx.types.ResRet.f32 %905, 1
  %908 = extractvalue %dx.types.ResRet.f32 %905, 2
  %909 = extractvalue %dx.types.ResRet.f32 %905, 3
  %910 = and i32 %899, 255
  %911 = uitofp i32 %910 to float
  %912 = lshr i32 %899, 8
  %913 = and i32 %912, 255
  %914 = uitofp i32 %913 to float
  %915 = fmul fast float %909, %911
  %916 = fadd fast float %915, %914
  %917 = fmul fast float %916, 0x3F70101000000000
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = and i32 %919, 512
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %930, label %922

; <label>:922                                     ; preds = %897
  %923 = add i32 %57, 492
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = add i32 %925, 0
  %927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %927, %dx.types.Handle %111, float %819, float %820, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  br label %930

; <label>:930                                     ; preds = %922, %897
  %931 = phi float [ %929, %922 ], [ 1.000000e+00, %897 ]
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = and i32 %933, 33554432
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %1042, label %936

; <label>:936                                     ; preds = %930
  %937 = add i32 %57, 224
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = and i32 %939, 65535
  %941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %940)  ; LegacyF16ToF32(value)
  %942 = lshr i32 %939, 16
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = add i32 %57, 228
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = and i32 %946, 65535
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = lshr i32 %950, 24
  %952 = uitofp i32 %951 to float
  %953 = fmul fast float %952, 0x3F70101020000000
  %954 = and i32 %950, 255
  %955 = uitofp i32 %954 to float
  %956 = fmul fast float %955, 0x3F70101020000000
  %957 = lshr i32 %950, 8
  %958 = and i32 %957, 255
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %959, 0x3F70101020000000
  %961 = lshr i32 %950, 16
  %962 = and i32 %961, 255
  %963 = uitofp i32 %962 to float
  %964 = fmul fast float %963, 0x3F70101020000000
  %965 = add i32 %57, 220
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = lshr i32 %967, 24
  %969 = uitofp i32 %968 to float
  %970 = fmul fast float %969, 0x3F70101020000000
  %971 = and i32 %967, 255
  %972 = uitofp i32 %971 to float
  %973 = fmul fast float %972, 0x3F70101020000000
  %974 = lshr i32 %967, 8
  %975 = and i32 %974, 255
  %976 = uitofp i32 %975 to float
  %977 = fmul fast float %976, 0x3F70101020000000
  %978 = lshr i32 %967, 16
  %979 = and i32 %978, 255
  %980 = uitofp i32 %979 to float
  %981 = fmul fast float %980, 0x3F70101020000000
  %982 = bitcast float %906 to i32
  %983 = ashr i32 %982, 1
  %984 = sub nsw i32 1597463174, %983
  %985 = bitcast i32 %984 to float
  %986 = fmul fast float %906, 5.000000e-01
  %987 = fmul fast float %985, %985
  %988 = fmul fast float %987, %986
  %989 = fsub fast float 1.500000e+00, %988
  %990 = fmul fast float %985, %906
  %991 = fmul fast float %990, %989
  %992 = bitcast float %907 to i32
  %993 = ashr i32 %992, 1
  %994 = sub nsw i32 1597463174, %993
  %995 = bitcast i32 %994 to float
  %996 = fmul fast float %907, 5.000000e-01
  %997 = fmul fast float %995, %995
  %998 = fmul fast float %997, %996
  %999 = fsub fast float 1.500000e+00, %998
  %1000 = fmul fast float %995, %907
  %1001 = fmul fast float %1000, %999
  %1002 = bitcast float %908 to i32
  %1003 = ashr i32 %1002, 1
  %1004 = sub nsw i32 1597463174, %1003
  %1005 = bitcast i32 %1004 to float
  %1006 = fmul fast float %908, 5.000000e-01
  %1007 = fmul fast float %1005, %1005
  %1008 = fmul fast float %1007, %1006
  %1009 = fsub fast float 1.500000e+00, %1008
  %1010 = fmul fast float %1005, %908
  %1011 = fmul fast float %1010, %1009
  %1012 = fsub fast float %991, %973
  %1013 = fsub fast float %1001, %977
  %1014 = fsub fast float %1011, %981
  %1015 = fmul fast float %1012, %941
  %1016 = fmul fast float %1013, %943
  %1017 = fmul fast float %1014, %948
  %1018 = fadd fast float %1015, %956
  %1019 = fadd fast float %1016, %960
  %1020 = fadd fast float %1017, %964
  %1021 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  %1022 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1023 = call float @dx.op.unary.f32(i32 7, float %1020)  ; Saturate(value)
  %1024 = fmul fast float %1021, %1021
  %1025 = fmul fast float %1022, %1022
  %1026 = fmul fast float %1023, %1023
  %1027 = fsub fast float %1024, %906
  %1028 = fsub fast float %1025, %907
  %1029 = fsub fast float %1026, %908
  %1030 = fmul fast float %1027, %931
  %1031 = fmul fast float %1028, %931
  %1032 = fmul fast float %1029, %931
  %1033 = fadd fast float %1030, %906
  %1034 = fadd fast float %1031, %907
  %1035 = fadd fast float %1032, %908
  %1036 = fadd fast float %953, %917
  %1037 = fsub fast float %1036, %970
  %1038 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1039 = fsub fast float %1038, %917
  %1040 = fmul fast float %1039, %931
  %1041 = fadd fast float %1040, %917
  br label %1095

; <label>:1042                                    ; preds = %930
  %1043 = and i32 %933, 134217728
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1079, label %1045

; <label>:1045                                    ; preds = %1042
  %1046 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1047 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1048 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %1049 = fadd fast float %1046, -5.000000e-01
  %1050 = fadd fast float %1047, -5.000000e-01
  %1051 = fadd fast float %1048, -5.000000e-01
  %1052 = fmul fast float %1049, %931
  %1053 = fmul fast float %1050, %931
  %1054 = fmul fast float %1051, %931
  %1055 = fadd fast float %1052, 5.000000e-01
  %1056 = fadd fast float %1053, 5.000000e-01
  %1057 = fadd fast float %1054, 5.000000e-01
  %1058 = call float @dx.op.unary.f32(i32 24, float %906)  ; Sqrt(value)
  %1059 = call float @dx.op.unary.f32(i32 24, float %907)  ; Sqrt(value)
  %1060 = call float @dx.op.unary.f32(i32 24, float %908)  ; Sqrt(value)
  %1061 = fmul fast float %1055, 2.000000e+00
  %1062 = fsub fast float 1.000000e+00, %1061
  %1063 = fmul fast float %1062, %1058
  %1064 = fadd fast float %1063, %1061
  %1065 = fmul fast float %1064, %1058
  %1066 = fmul fast float %1056, 2.000000e+00
  %1067 = fsub fast float 1.000000e+00, %1066
  %1068 = fmul fast float %1067, %1059
  %1069 = fadd fast float %1068, %1066
  %1070 = fmul fast float %1069, %1059
  %1071 = fmul fast float %1057, 2.000000e+00
  %1072 = fsub fast float 1.000000e+00, %1071
  %1073 = fmul fast float %1072, %1060
  %1074 = fadd fast float %1073, %1071
  %1075 = fmul fast float %1074, %1060
  %1076 = fmul fast float %1065, %1065
  %1077 = fmul fast float %1070, %1070
  %1078 = fmul fast float %1075, %1075
  br label %1095

; <label>:1079                                    ; preds = %1042
  %1080 = fmul fast float %302, %302
  %1081 = fmul fast float %306, %306
  %1082 = fmul fast float %310, %310
  %1083 = fadd fast float %1080, -1.000000e+00
  %1084 = fadd fast float %1081, -1.000000e+00
  %1085 = fadd fast float %1082, -1.000000e+00
  %1086 = fmul fast float %931, %1083
  %1087 = fmul fast float %931, %1084
  %1088 = fmul fast float %931, %1085
  %1089 = fadd fast float %1086, 1.000000e+00
  %1090 = fadd fast float %1087, 1.000000e+00
  %1091 = fadd fast float %1088, 1.000000e+00
  %1092 = fmul fast float %1089, %906
  %1093 = fmul fast float %1090, %907
  %1094 = fmul fast float %1091, %908
  br label %1095

; <label>:1095                                    ; preds = %1079, %1045, %936, %891
  %1096 = phi float [ %1041, %936 ], [ %917, %1045 ], [ %917, %1079 ], [ 0x3FA23C0BE0000000, %891 ]
  %1097 = phi float [ %1033, %936 ], [ %1076, %1045 ], [ %1092, %1079 ], [ 1.000000e+00, %891 ]
  %1098 = phi float [ %1034, %936 ], [ %1077, %1045 ], [ %1093, %1079 ], [ 1.000000e+00, %891 ]
  %1099 = phi float [ %1035, %936 ], [ %1078, %1045 ], [ %1094, %1079 ], [ 1.000000e+00, %891 ]
  %1100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.i32 %1100, 1
  %1102 = and i32 %1101, 1
  %1103 = icmp ne i32 %1102, 0
  %1104 = add i32 %57, 356
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 32
  %1108 = icmp ne i32 %1107, 0
  %1109 = and i1 %1103, %1108
  %1110 = select i1 %1109, float 1.000000e+00, float %1097
  %1111 = select i1 %1109, float 0x3FD3333340000000, float %1098
  %1112 = select i1 %1109, float 0x3FD3333340000000, float %1099
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 32
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1189, label %1117

; <label>:1117                                    ; preds = %1095
  %1118 = add i32 %57, 92
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = add i32 %57, 424
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = add i32 %1123, 0
  %1125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1124, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1126 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1125, %dx.types.Handle %110, float %819, float %820, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.f32 %1126, 2
  %1130 = extractvalue %dx.types.ResRet.f32 %1126, 3
  %1131 = and i32 %1120, 255
  %1132 = uitofp i32 %1131 to float
  %1133 = lshr i32 %1120, 8
  %1134 = and i32 %1133, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = lshr i32 %1120, 16
  %1137 = and i32 %1136, 255
  %1138 = uitofp i32 %1137 to float
  %1139 = fmul fast float %1138, 0x3F70101000000000
  %1140 = fmul fast float %1127, %1132
  %1141 = fadd fast float %1140, %1135
  %1142 = fmul fast float %1141, 0x3F70101000000000
  %1143 = fadd fast float %1128, -5.000000e-01
  %1144 = fadd fast float %1130, -5.000000e-01
  %1145 = fmul fast float %1143, %1139
  %1146 = fmul fast float %1144, %1139
  %1147 = fadd fast float %1145, 5.000000e-01
  %1148 = fadd fast float %1146, 5.000000e-01
  %1149 = fmul fast float %1147, 2.000000e+00
  %1150 = fadd fast float %1149, -1.000000e+00
  %1151 = fmul fast float %1148, 2.000000e+00
  %1152 = fadd fast float %1151, -1.000000e+00
  %1153 = fadd fast float %1150, %1152
  %1154 = fmul fast float %1153, 5.000000e-01
  %1155 = fsub fast float %1150, %1152
  %1156 = fmul fast float %1155, 5.000000e-01
  %1157 = call float @dx.op.unary.f32(i32 6, float %1154)  ; FAbs(value)
  %1158 = fsub fast float 1.000000e+00, %1157
  %1159 = call float @dx.op.unary.f32(i32 6, float %1156)  ; FAbs(value)
  %1160 = fsub fast float %1158, %1159
  %1161 = call float @dx.op.dot3.f32(i32 55, float %1154, float %1156, float %1160, float %1154, float %1156, float %1160)  ; Dot3(ax,ay,az,bx,by,bz)
  %1162 = call float @dx.op.unary.f32(i32 25, float %1161)  ; Rsqrt(value)
  %1163 = fmul fast float %1154, %1162
  %1164 = fmul fast float %1156, %1162
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 67108864
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1185, label %1169

; <label>:1169                                    ; preds = %1117
  %1170 = add i32 %57, 280
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = and i32 %1172, 65535
  %1174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1173)  ; LegacyF16ToF32(value)
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = and i32 %1176, 65535
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = lshr i32 %1172, 16
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = fsub fast float %1142, %1180
  %1182 = fmul fast float %1181, %1174
  %1183 = fadd fast float %1182, %1178
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  br label %1185

; <label>:1185                                    ; preds = %1169, %1117
  %1186 = phi float [ %1184, %1169 ], [ %1142, %1117 ]
  %1187 = call float @dx.op.dot2.f32(i32 54, float %1163, float %1164, float %723, float %724)  ; Dot2(ax,ay,bx,by)
  %1188 = call float @dx.op.dot2.f32(i32 54, float %1163, float %1164, float %725, float %726)  ; Dot2(ax,ay,bx,by)
  br label %1189

; <label>:1189                                    ; preds = %1185, %1095
  %1190 = phi float [ %1186, %1185 ], [ 0x3FD6666660000000, %1095 ]
  %1191 = phi float [ %1187, %1185 ], [ 0.000000e+00, %1095 ]
  %1192 = phi float [ %1188, %1185 ], [ 0.000000e+00, %1095 ]
  %1193 = phi float [ %1129, %1185 ], [ 1.000000e+00, %1095 ]
  %1194 = add i32 %57, 160
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = lshr i32 %1196, 22
  %1198 = shl nuw nsw i32 %1197, 5
  %1199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1198)  ; LegacyF16ToF32(value)
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = and i32 %1201, 64
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1237, label %1204

; <label>:1204                                    ; preds = %1189
  %1205 = add i32 %57, 440
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = add i32 %1207, 0
  %1209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = and i32 %1211, 131072
  %1213 = icmp eq i32 %1212, 0
  %1214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1209, %dx.types.Handle %110, float %819, float %820, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.ResRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.ResRet.f32 %1214, 2
  %1218 = fmul fast float %1215, %290
  %1219 = fmul fast float %1216, %293
  %1220 = fmul fast float %1217, %296
  br i1 %1213, label %1227, label %1221

; <label>:1221                                    ; preds = %1204
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = fmul fast float %1223, %1218
  %1225 = fmul fast float %1223, %1219
  %1226 = fmul fast float %1223, %1220
  br label %1227

; <label>:1227                                    ; preds = %1221, %1204
  %1228 = phi float [ %1224, %1221 ], [ %1218, %1204 ]
  %1229 = phi float [ %1225, %1221 ], [ %1219, %1204 ]
  %1230 = phi float [ %1226, %1221 ], [ %1220, %1204 ]
  %1231 = fmul fast float %1228, %1199
  %1232 = select i1 %273, float %1231, float %1228
  %1233 = call float @dx.op.dot3.f32(i32 55, float %1232, float %1229, float %1230, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1234 = select i1 %273, float 0.000000e+00, float %1228
  %1235 = select i1 %273, float %1233, float %1229
  %1236 = select i1 %273, float 0.000000e+00, float %1230
  br label %1237

; <label>:1237                                    ; preds = %1227, %1189
  %1238 = phi float [ %1234, %1227 ], [ 0.000000e+00, %1189 ]
  %1239 = phi float [ %1235, %1227 ], [ 0.000000e+00, %1189 ]
  %1240 = phi float [ %1236, %1227 ], [ 0.000000e+00, %1189 ]
  %1241 = add i32 %57, 96
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 255
  %1245 = uitofp i32 %1244 to float
  %1246 = lshr i32 %1243, 8
  %1247 = and i32 %1246, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = call float @dx.op.dot3.f32(i32 55, float %1110, float %1111, float %1112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1250 = fmul fast float %1248, %1249
  %1251 = fadd fast float %1250, %1245
  %1252 = fmul fast float %1251, 0x3F70101020000000
  %1253 = call float @dx.op.unary.f32(i32 7, float %1252)  ; Saturate(value)
  br label %1254

; <label>:1254                                    ; preds = %1237, %705
  %1255 = phi float [ 0.000000e+00, %705 ], [ %1191, %1237 ]
  %1256 = phi float [ 0.000000e+00, %705 ], [ %1192, %1237 ]
  %1257 = phi float [ 0.000000e+00, %705 ], [ %1110, %1237 ]
  %1258 = phi float [ 0.000000e+00, %705 ], [ %1111, %1237 ]
  %1259 = phi float [ 0.000000e+00, %705 ], [ %1112, %1237 ]
  %1260 = phi float [ 0.000000e+00, %705 ], [ %1238, %1237 ]
  %1261 = phi float [ 0.000000e+00, %705 ], [ %1239, %1237 ]
  %1262 = phi float [ 0.000000e+00, %705 ], [ %1240, %1237 ]
  %1263 = phi float [ 0.000000e+00, %705 ], [ %1096, %1237 ]
  %1264 = phi float [ 0.000000e+00, %705 ], [ %892, %1237 ]
  %1265 = phi float [ 0.000000e+00, %705 ], [ %1190, %1237 ]
  %1266 = phi float [ 0.000000e+00, %705 ], [ %1193, %1237 ]
  %1267 = phi float [ 0.000000e+00, %705 ], [ %1253, %1237 ]
  br i1 %653, label %1994, label %1268

; <label>:1268                                    ; preds = %1254
  %1269 = icmp ult i32 %711, 2
  %1270 = add i32 %57, 40
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = add i32 %57, 44
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = or i32 %1275, %1272
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1994, label %1278

; <label>:1278                                    ; preds = %1268
  %1279 = and i32 %1272, 262144
  %1280 = icmp ne i32 %1279, 0
  %1281 = select i1 %1280, float %64, float 1.000000e+00
  %1282 = select i1 %1280, float %65, float 0.000000e+00
  %1283 = select i1 %1280, float %66, float 0.000000e+00
  %1284 = select i1 %1280, float %67, float 1.000000e+00
  %1285 = select i1 %1280, float %68, float %92
  %1286 = select i1 %1280, float %69, float %93
  %1287 = add i32 %57, 300
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = lshr i32 %1289, 16
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = fmul fast float %1291, 0x3F50624DE0000000
  %1293 = add i32 %57, 104
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = lshr i32 %1295, 16
  %1297 = and i32 %1296, 255
  %1298 = lshr i32 %1295, 24
  %1299 = add i32 %57, 308
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = and i32 %1301, 65535
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = lshr i32 %1301, 16
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = add i32 %57, 48
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = lshr i32 %1308, 22
  %1310 = shl nuw nsw i32 %1309, 5
  %1311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1310)  ; LegacyF16ToF32(value)
  %1312 = shl i32 %1308, 4
  %1313 = and i32 %1312, 32752
  %1314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1313)  ; LegacyF16ToF32(value)
  %1315 = lshr i32 %1308, 7
  %1316 = and i32 %1315, 32752
  %1317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1316)  ; LegacyF16ToF32(value)
  %1318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1319 = extractvalue %dx.types.CBufRet.f32 %1318, 3
  %1320 = fmul fast float %1319, 1.000000e+03
  %1321 = fmul fast float %1320, %432
  %1322 = call float @dx.op.unary.f32(i32 22, float %1321)  ; Frc(value)
  %1323 = fadd fast float %1322, %420
  %1324 = fmul fast float %1320, %434
  %1325 = call float @dx.op.unary.f32(i32 22, float %1324)  ; Frc(value)
  %1326 = fadd fast float %1325, %421
  %1327 = fmul fast float %1292, %1320
  %1328 = call float @dx.op.unary.f32(i32 22, float %1327)  ; Frc(value)
  %1329 = fmul fast float %1328, 0x401921FB60000000
  %1330 = fadd fast float %1329, %1311
  %1331 = call float @dx.op.unary.f32(i32 13, float %1330)  ; Sin(value)
  %1332 = call float @dx.op.unary.f32(i32 12, float %1330)  ; Cos(value)
  %1333 = fsub fast float -0.000000e+00, %1331
  %1334 = fadd fast float %1285, -5.000000e-01
  %1335 = fadd fast float %1286, -5.000000e-01
  %1336 = fmul fast float %1303, %1334
  %1337 = fmul fast float %1305, %1335
  %1338 = fadd fast float %1336, 5.000000e-01
  %1339 = fadd fast float %1337, 5.000000e-01
  %1340 = fmul fast float %1314, %1338
  %1341 = fmul fast float %1317, %1339
  %1342 = fmul fast float %1332, %1340
  %1343 = call float @dx.op.tertiary.f32(i32 46, float %1333, float %1341, float %1342)  ; FMad(a,b,c)
  %1344 = fmul fast float %1331, %1340
  %1345 = call float @dx.op.tertiary.f32(i32 46, float %1332, float %1341, float %1344)  ; FMad(a,b,c)
  %1346 = fadd fast float %1323, %1343
  %1347 = fadd fast float %1326, %1345
  %1348 = icmp ugt i32 %1297, 1
  %1349 = icmp ugt i32 %1295, 33554431
  %1350 = or i1 %1349, %1348
  br i1 %1350, label %1351, label %1376

; <label>:1351                                    ; preds = %1278
  %1352 = add i32 %57, 244
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = lshr i32 %1354, 16
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = fmul fast float %1319, %1356
  %1358 = call float @dx.op.unary.f32(i32 22, float %1357)  ; Frc(value)
  %1359 = mul nuw nsw i32 %1297, %1298
  %1360 = uitofp i32 %1359 to float
  %1361 = fmul fast float %1358, %1360
  %1362 = call float @dx.op.unary.f32(i32 27, float %1361)  ; Round_ni(value)
  %1363 = fptoui float %1362 to i32
  %1364 = urem i32 %1363, %1297
  %1365 = udiv i32 %1363, %1298
  %1366 = call float @dx.op.unary.f32(i32 22, float %1346)  ; Frc(value)
  %1367 = call float @dx.op.unary.f32(i32 22, float %1347)  ; Frc(value)
  %1368 = uitofp i32 %1364 to float
  %1369 = uitofp i32 %1365 to float
  %1370 = fadd fast float %1366, %1368
  %1371 = fadd fast float %1367, %1369
  %1372 = uitofp i32 %1297 to float
  %1373 = uitofp i32 %1298 to float
  %1374 = fdiv fast float %1370, %1372
  %1375 = fdiv fast float %1371, %1373
  br label %1376

; <label>:1376                                    ; preds = %1351, %1278
  %1377 = phi float [ %1374, %1351 ], [ %1346, %1278 ]
  %1378 = phi float [ %1375, %1351 ], [ %1347, %1278 ]
  %1379 = and i32 %1272, 256
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1427, label %1381

; <label>:1381                                    ; preds = %1376
  %1382 = add i32 %57, 476
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = add i32 %1384, 0
  %1386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1386, %dx.types.Handle %111, float %1377, float %1378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = add i32 %57, 116
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = shl i32 %1391, 4
  %1393 = and i32 %1392, 32752
  %1394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1393)  ; LegacyF16ToF32(value)
  %1395 = lshr i32 %1391, 7
  %1396 = and i32 %1395, 32752
  %1397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1396)  ; LegacyF16ToF32(value)
  %1398 = fsub fast float 1.000000e+00, %708
  %1399 = call float @dx.op.binary.f32(i32 35, float %1398, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1400 = bitcast float %708 to i32
  %1401 = sitofp i32 %1400 to float
  %1402 = fadd fast float %1401, 0xC1CFBF8940000000
  %1403 = fmul fast float %1397, %1402
  %1404 = fadd fast float %1403, 0x41CFBF8940000000
  %1405 = fptosi float %1404 to i32
  %1406 = bitcast i32 %1405 to float
  %1407 = bitcast float %1399 to i32
  %1408 = sitofp i32 %1407 to float
  %1409 = fadd fast float %1408, 0xC1CFBF8940000000
  %1410 = fmul fast float %1409, %1397
  %1411 = fadd fast float %1410, 0x41CFBF8940000000
  %1412 = fptosi float %1411 to i32
  %1413 = bitcast i32 %1412 to float
  %1414 = fmul fast float %1406, %1394
  %1415 = fmul fast float %1413, %1394
  %1416 = fsub fast float %1399, %1414
  %1417 = fadd fast float %1415, %1399
  %1418 = call float @dx.op.unary.f32(i32 7, float %1416)  ; Saturate(value)
  %1419 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  %1420 = fsub fast float %1388, %1418
  %1421 = fsub fast float %1419, %1418
  %1422 = bitcast float %1421 to i32
  %1423 = sub nsw i32 2129859010, %1422
  %1424 = bitcast i32 %1423 to float
  %1425 = fmul fast float %1424, %1420
  %1426 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  br label %1427

; <label>:1427                                    ; preds = %1381, %1376
  %1428 = phi float [ %1426, %1381 ], [ %708, %1376 ]
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = and i32 %1430, 128
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1449, label %1433

; <label>:1433                                    ; preds = %1427
  %1434 = add i32 %57, 460
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = add i32 %1436, 0
  %1438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1439 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1438, %dx.types.Handle %111, float %1377, float %1378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = and i32 %1442, 524288
  %1444 = icmp ne i32 %1443, 0
  %1445 = fcmp fast ogt float %1440, 0x3FE0101020000000
  %1446 = select i1 %1445, float 1.000000e+00, float 0.000000e+00
  %1447 = select i1 %1444, float %1446, float %1440
  %1448 = fmul fast float %1447, %1428
  br label %1449

; <label>:1449                                    ; preds = %1433, %1427
  %1450 = phi float [ %1448, %1433 ], [ %1428, %1427 ]
  %1451 = fcmp fast ult float %1450, 0x3F70101020000000
  br i1 %1451, label %1994, label %1452

; <label>:1452                                    ; preds = %1449
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = and i32 %1454, 16
  %1456 = icmp eq i32 %1455, 0
  br i1 %1456, label %1655, label %1457

; <label>:1457                                    ; preds = %1452
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = add i32 %57, 412
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = add i32 %1462, 0
  %1464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1465 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1464, %dx.types.Handle %110, float %1377, float %1378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1466 = extractvalue %dx.types.ResRet.f32 %1465, 0
  %1467 = extractvalue %dx.types.ResRet.f32 %1465, 1
  %1468 = extractvalue %dx.types.ResRet.f32 %1465, 2
  %1469 = extractvalue %dx.types.ResRet.f32 %1465, 3
  %1470 = and i32 %1459, 255
  %1471 = uitofp i32 %1470 to float
  %1472 = lshr i32 %1459, 8
  %1473 = and i32 %1472, 255
  %1474 = uitofp i32 %1473 to float
  %1475 = fmul fast float %1469, %1471
  %1476 = fadd fast float %1475, %1474
  %1477 = fmul fast float %1476, 0x3F70101000000000
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 512
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1490, label %1482

; <label>:1482                                    ; preds = %1457
  %1483 = add i32 %57, 496
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = add i32 %1485, 0
  %1487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1487, %dx.types.Handle %111, float %1377, float %1378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1489 = extractvalue %dx.types.ResRet.f32 %1488, 0
  br label %1490

; <label>:1490                                    ; preds = %1482, %1457
  %1491 = phi float [ %1489, %1482 ], [ 1.000000e+00, %1457 ]
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 33554432
  %1495 = icmp eq i32 %1494, 0
  br i1 %1495, label %1602, label %1496

; <label>:1496                                    ; preds = %1490
  %1497 = add i32 %57, 240
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = and i32 %1499, 65535
  %1501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1500)  ; LegacyF16ToF32(value)
  %1502 = lshr i32 %1499, 16
  %1503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1502)  ; LegacyF16ToF32(value)
  %1504 = add i32 %57, 244
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 65535
  %1508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1507)  ; LegacyF16ToF32(value)
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = lshr i32 %1510, 24
  %1512 = uitofp i32 %1511 to float
  %1513 = fmul fast float %1512, 0x3F70101020000000
  %1514 = and i32 %1510, 255
  %1515 = uitofp i32 %1514 to float
  %1516 = fmul fast float %1515, 0x3F70101020000000
  %1517 = lshr i32 %1510, 8
  %1518 = and i32 %1517, 255
  %1519 = uitofp i32 %1518 to float
  %1520 = fmul fast float %1519, 0x3F70101020000000
  %1521 = lshr i32 %1510, 16
  %1522 = and i32 %1521, 255
  %1523 = uitofp i32 %1522 to float
  %1524 = fmul fast float %1523, 0x3F70101020000000
  %1525 = add i32 %57, 236
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = lshr i32 %1527, 24
  %1529 = uitofp i32 %1528 to float
  %1530 = fmul fast float %1529, 0x3F70101020000000
  %1531 = and i32 %1527, 255
  %1532 = uitofp i32 %1531 to float
  %1533 = fmul fast float %1532, 0x3F70101020000000
  %1534 = lshr i32 %1527, 8
  %1535 = and i32 %1534, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = fmul fast float %1536, 0x3F70101020000000
  %1538 = lshr i32 %1527, 16
  %1539 = and i32 %1538, 255
  %1540 = uitofp i32 %1539 to float
  %1541 = fmul fast float %1540, 0x3F70101020000000
  %1542 = bitcast float %1466 to i32
  %1543 = ashr i32 %1542, 1
  %1544 = sub nsw i32 1597463174, %1543
  %1545 = bitcast i32 %1544 to float
  %1546 = fmul fast float %1466, 5.000000e-01
  %1547 = fmul fast float %1545, %1545
  %1548 = fmul fast float %1547, %1546
  %1549 = fsub fast float 1.500000e+00, %1548
  %1550 = fmul fast float %1545, %1466
  %1551 = fmul fast float %1550, %1549
  %1552 = bitcast float %1467 to i32
  %1553 = ashr i32 %1552, 1
  %1554 = sub nsw i32 1597463174, %1553
  %1555 = bitcast i32 %1554 to float
  %1556 = fmul fast float %1467, 5.000000e-01
  %1557 = fmul fast float %1555, %1555
  %1558 = fmul fast float %1557, %1556
  %1559 = fsub fast float 1.500000e+00, %1558
  %1560 = fmul fast float %1555, %1467
  %1561 = fmul fast float %1560, %1559
  %1562 = bitcast float %1468 to i32
  %1563 = ashr i32 %1562, 1
  %1564 = sub nsw i32 1597463174, %1563
  %1565 = bitcast i32 %1564 to float
  %1566 = fmul fast float %1468, 5.000000e-01
  %1567 = fmul fast float %1565, %1565
  %1568 = fmul fast float %1567, %1566
  %1569 = fsub fast float 1.500000e+00, %1568
  %1570 = fmul fast float %1565, %1468
  %1571 = fmul fast float %1570, %1569
  %1572 = fsub fast float %1551, %1533
  %1573 = fsub fast float %1561, %1537
  %1574 = fsub fast float %1571, %1541
  %1575 = fmul fast float %1572, %1501
  %1576 = fmul fast float %1573, %1503
  %1577 = fmul fast float %1574, %1508
  %1578 = fadd fast float %1575, %1516
  %1579 = fadd fast float %1576, %1520
  %1580 = fadd fast float %1577, %1524
  %1581 = call float @dx.op.unary.f32(i32 7, float %1578)  ; Saturate(value)
  %1582 = call float @dx.op.unary.f32(i32 7, float %1579)  ; Saturate(value)
  %1583 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1584 = fmul fast float %1581, %1581
  %1585 = fmul fast float %1582, %1582
  %1586 = fmul fast float %1583, %1583
  %1587 = fsub fast float %1584, %1466
  %1588 = fsub fast float %1585, %1467
  %1589 = fsub fast float %1586, %1468
  %1590 = fmul fast float %1587, %1491
  %1591 = fmul fast float %1588, %1491
  %1592 = fmul fast float %1589, %1491
  %1593 = fadd fast float %1590, %1466
  %1594 = fadd fast float %1591, %1467
  %1595 = fadd fast float %1592, %1468
  %1596 = fadd fast float %1513, %1477
  %1597 = fsub fast float %1596, %1530
  %1598 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  %1599 = fsub fast float %1598, %1477
  %1600 = fmul fast float %1599, %1491
  %1601 = fadd fast float %1600, %1477
  br label %1655

; <label>:1602                                    ; preds = %1490
  %1603 = and i32 %1493, 134217728
  %1604 = icmp eq i32 %1603, 0
  br i1 %1604, label %1639, label %1605

; <label>:1605                                    ; preds = %1602
  %1606 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %1607 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %1608 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %1609 = fadd fast float %1606, -5.000000e-01
  %1610 = fadd fast float %1607, -5.000000e-01
  %1611 = fadd fast float %1608, -5.000000e-01
  %1612 = fmul fast float %1609, %1491
  %1613 = fmul fast float %1610, %1491
  %1614 = fmul fast float %1611, %1491
  %1615 = fadd fast float %1612, 5.000000e-01
  %1616 = fadd fast float %1613, 5.000000e-01
  %1617 = fadd fast float %1614, 5.000000e-01
  %1618 = call float @dx.op.unary.f32(i32 24, float %1466)  ; Sqrt(value)
  %1619 = call float @dx.op.unary.f32(i32 24, float %1467)  ; Sqrt(value)
  %1620 = call float @dx.op.unary.f32(i32 24, float %1468)  ; Sqrt(value)
  %1621 = fmul fast float %1615, 2.000000e+00
  %1622 = fsub fast float 1.000000e+00, %1621
  %1623 = fmul fast float %1622, %1618
  %1624 = fadd fast float %1623, %1621
  %1625 = fmul fast float %1624, %1618
  %1626 = fmul fast float %1616, 2.000000e+00
  %1627 = fsub fast float 1.000000e+00, %1626
  %1628 = fmul fast float %1627, %1619
  %1629 = fadd fast float %1628, %1626
  %1630 = fmul fast float %1629, %1619
  %1631 = fmul fast float %1617, 2.000000e+00
  %1632 = fsub fast float 1.000000e+00, %1631
  %1633 = fmul fast float %1632, %1620
  %1634 = fadd fast float %1633, %1631
  %1635 = fmul fast float %1634, %1620
  %1636 = fmul fast float %1625, %1625
  %1637 = fmul fast float %1630, %1630
  %1638 = fmul fast float %1635, %1635
  br label %1655

; <label>:1639                                    ; preds = %1602
  %1640 = fmul fast float %408, %408
  %1641 = fmul fast float %409, %409
  %1642 = fmul fast float %410, %410
  %1643 = fadd fast float %1640, -1.000000e+00
  %1644 = fadd fast float %1641, -1.000000e+00
  %1645 = fadd fast float %1642, -1.000000e+00
  %1646 = fmul fast float %1491, %1643
  %1647 = fmul fast float %1491, %1644
  %1648 = fmul fast float %1491, %1645
  %1649 = fadd fast float %1646, 1.000000e+00
  %1650 = fadd fast float %1647, 1.000000e+00
  %1651 = fadd fast float %1648, 1.000000e+00
  %1652 = fmul fast float %1649, %1466
  %1653 = fmul fast float %1650, %1467
  %1654 = fmul fast float %1651, %1468
  br label %1655

; <label>:1655                                    ; preds = %1639, %1605, %1496, %1452
  %1656 = phi float [ %1601, %1496 ], [ %1477, %1605 ], [ %1477, %1639 ], [ 0x3FA23C0BE0000000, %1452 ]
  %1657 = phi float [ %1593, %1496 ], [ %1636, %1605 ], [ %1652, %1639 ], [ 1.000000e+00, %1452 ]
  %1658 = phi float [ %1594, %1496 ], [ %1637, %1605 ], [ %1653, %1639 ], [ 1.000000e+00, %1452 ]
  %1659 = phi float [ %1595, %1496 ], [ %1638, %1605 ], [ %1654, %1639 ], [ 1.000000e+00, %1452 ]
  %1660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.i32 %1660, 1
  %1662 = and i32 %1661, 1
  %1663 = icmp ne i32 %1662, 0
  %1664 = add i32 %57, 356
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = and i32 %1666, 32
  %1668 = icmp ne i32 %1667, 0
  %1669 = and i1 %1663, %1668
  %1670 = select i1 %1669, float 1.000000e+00, float %1657
  %1671 = select i1 %1669, float 0x3FD3333340000000, float %1658
  %1672 = select i1 %1669, float 0x3FD3333340000000, float %1659
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = and i32 %1674, 32
  %1676 = icmp eq i32 %1675, 0
  br i1 %1676, label %1749, label %1677

; <label>:1677                                    ; preds = %1655
  %1678 = add i32 %57, 108
  %1679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.i32 %1679, 0
  %1681 = add i32 %57, 428
  %1682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.i32 %1682, 0
  %1684 = add i32 %1683, 0
  %1685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1684, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1686 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1685, %dx.types.Handle %110, float %1377, float %1378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1687 = extractvalue %dx.types.ResRet.f32 %1686, 0
  %1688 = extractvalue %dx.types.ResRet.f32 %1686, 1
  %1689 = extractvalue %dx.types.ResRet.f32 %1686, 2
  %1690 = extractvalue %dx.types.ResRet.f32 %1686, 3
  %1691 = and i32 %1680, 255
  %1692 = uitofp i32 %1691 to float
  %1693 = lshr i32 %1680, 8
  %1694 = and i32 %1693, 255
  %1695 = uitofp i32 %1694 to float
  %1696 = lshr i32 %1680, 16
  %1697 = and i32 %1696, 255
  %1698 = uitofp i32 %1697 to float
  %1699 = fmul fast float %1698, 0x3F70101000000000
  %1700 = fmul fast float %1687, %1692
  %1701 = fadd fast float %1700, %1695
  %1702 = fmul fast float %1701, 0x3F70101000000000
  %1703 = fadd fast float %1688, -5.000000e-01
  %1704 = fadd fast float %1690, -5.000000e-01
  %1705 = fmul fast float %1703, %1699
  %1706 = fmul fast float %1704, %1699
  %1707 = fadd fast float %1705, 5.000000e-01
  %1708 = fadd fast float %1706, 5.000000e-01
  %1709 = fmul fast float %1707, 2.000000e+00
  %1710 = fadd fast float %1709, -1.000000e+00
  %1711 = fmul fast float %1708, 2.000000e+00
  %1712 = fadd fast float %1711, -1.000000e+00
  %1713 = fadd fast float %1710, %1712
  %1714 = fmul fast float %1713, 5.000000e-01
  %1715 = fsub fast float %1710, %1712
  %1716 = fmul fast float %1715, 5.000000e-01
  %1717 = call float @dx.op.unary.f32(i32 6, float %1714)  ; FAbs(value)
  %1718 = fsub fast float 1.000000e+00, %1717
  %1719 = call float @dx.op.unary.f32(i32 6, float %1716)  ; FAbs(value)
  %1720 = fsub fast float %1718, %1719
  %1721 = call float @dx.op.dot3.f32(i32 55, float %1714, float %1716, float %1720, float %1714, float %1716, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1722 = call float @dx.op.unary.f32(i32 25, float %1721)  ; Rsqrt(value)
  %1723 = fmul fast float %1714, %1722
  %1724 = fmul fast float %1716, %1722
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = and i32 %1726, 67108864
  %1728 = icmp eq i32 %1727, 0
  br i1 %1728, label %1745, label %1729

; <label>:1729                                    ; preds = %1677
  %1730 = add i32 %57, 296
  %1731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1730, i32 undef)  ; BufferLoad(srv,index,wot)
  %1732 = extractvalue %dx.types.ResRet.i32 %1731, 0
  %1733 = and i32 %1732, 65535
  %1734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1733)  ; LegacyF16ToF32(value)
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = and i32 %1736, 65535
  %1738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1737)  ; LegacyF16ToF32(value)
  %1739 = lshr i32 %1732, 16
  %1740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1739)  ; LegacyF16ToF32(value)
  %1741 = fsub fast float %1702, %1740
  %1742 = fmul fast float %1741, %1734
  %1743 = fadd fast float %1742, %1738
  %1744 = call float @dx.op.unary.f32(i32 7, float %1743)  ; Saturate(value)
  br label %1745

; <label>:1745                                    ; preds = %1729, %1677
  %1746 = phi float [ %1744, %1729 ], [ %1702, %1677 ]
  %1747 = call float @dx.op.dot2.f32(i32 54, float %1723, float %1724, float %1281, float %1282)  ; Dot2(ax,ay,bx,by)
  %1748 = call float @dx.op.dot2.f32(i32 54, float %1723, float %1724, float %1283, float %1284)  ; Dot2(ax,ay,bx,by)
  br label %1749

; <label>:1749                                    ; preds = %1745, %1655
  %1750 = phi float [ %1746, %1745 ], [ 0x3FD6666660000000, %1655 ]
  %1751 = phi float [ %1747, %1745 ], [ 0.000000e+00, %1655 ]
  %1752 = phi float [ %1748, %1745 ], [ 0.000000e+00, %1655 ]
  %1753 = phi float [ %1689, %1745 ], [ 1.000000e+00, %1655 ]
  %1754 = add i32 %57, 176
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = lshr i32 %1756, 22
  %1758 = shl nuw nsw i32 %1757, 5
  %1759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1758)  ; LegacyF16ToF32(value)
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = and i32 %1761, 64
  %1763 = icmp eq i32 %1762, 0
  br i1 %1763, label %1797, label %1764

; <label>:1764                                    ; preds = %1749
  %1765 = add i32 %57, 444
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = add i32 %1767, 0
  %1769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1768, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = and i32 %1771, 131072
  %1773 = icmp eq i32 %1772, 0
  %1774 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1769, %dx.types.Handle %110, float %1377, float %1378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1775 = extractvalue %dx.types.ResRet.f32 %1774, 0
  %1776 = extractvalue %dx.types.ResRet.f32 %1774, 1
  %1777 = extractvalue %dx.types.ResRet.f32 %1774, 2
  %1778 = fmul fast float %391, %1775
  %1779 = fmul fast float %392, %1776
  %1780 = fmul fast float %393, %1777
  br i1 %1773, label %1787, label %1781

; <label>:1781                                    ; preds = %1764
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 0
  %1784 = fmul fast float %1783, %1778
  %1785 = fmul fast float %1783, %1779
  %1786 = fmul fast float %1783, %1780
  br label %1787

; <label>:1787                                    ; preds = %1781, %1764
  %1788 = phi float [ %1784, %1781 ], [ %1778, %1764 ]
  %1789 = phi float [ %1785, %1781 ], [ %1779, %1764 ]
  %1790 = phi float [ %1786, %1781 ], [ %1780, %1764 ]
  %1791 = fmul fast float %1788, %1759
  %1792 = select i1 %273, float %1791, float %1788
  %1793 = call float @dx.op.dot3.f32(i32 55, float %1792, float %1789, float %1790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1794 = select i1 %273, float 0.000000e+00, float %1788
  %1795 = select i1 %273, float %1793, float %1789
  %1796 = select i1 %273, float 0.000000e+00, float %1790
  br label %1797

; <label>:1797                                    ; preds = %1787, %1749
  %1798 = phi float [ %1794, %1787 ], [ 0.000000e+00, %1749 ]
  %1799 = phi float [ %1795, %1787 ], [ 0.000000e+00, %1749 ]
  %1800 = phi float [ %1796, %1787 ], [ 0.000000e+00, %1749 ]
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = add i32 %57, 112
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = and i32 %1805, 255
  %1807 = uitofp i32 %1806 to float
  %1808 = lshr i32 %1805, 8
  %1809 = and i32 %1808, 255
  %1810 = uitofp i32 %1809 to float
  %1811 = call float @dx.op.dot3.f32(i32 55, float %1670, float %1671, float %1672, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1812 = fmul fast float %1810, %1811
  %1813 = fadd fast float %1812, %1807
  %1814 = fmul fast float %1813, 0x3F70101020000000
  %1815 = call float @dx.op.unary.f32(i32 7, float %1814)  ; Saturate(value)
  br i1 %1269, label %1816, label %1824

; <label>:1816                                    ; preds = %1797
  %1817 = fsub fast float 1.000000e+00, %1450
  %1818 = fmul fast float %1817, %1257
  %1819 = fmul fast float %1817, %1258
  %1820 = fmul fast float %1817, %1259
  %1821 = fmul fast float %1817, %1260
  %1822 = fmul fast float %1817, %1261
  %1823 = fmul fast float %1817, %1262
  br label %1824

; <label>:1824                                    ; preds = %1816, %1797
  %1825 = phi float [ %1818, %1816 ], [ %1257, %1797 ]
  %1826 = phi float [ %1819, %1816 ], [ %1258, %1797 ]
  %1827 = phi float [ %1820, %1816 ], [ %1259, %1797 ]
  %1828 = phi float [ %1821, %1816 ], [ %1260, %1797 ]
  %1829 = phi float [ %1822, %1816 ], [ %1261, %1797 ]
  %1830 = phi float [ %1823, %1816 ], [ %1262, %1797 ]
  %1831 = and i32 %1802, 3
  %1832 = icmp eq i32 %1831, 3
  br i1 %1832, label %1911, label %1833

; <label>:1833                                    ; preds = %1824
  %1834 = and i32 %1802, 16
  %1835 = icmp ne i32 %1834, 0
  %1836 = select i1 %1835, float %1450, float 0.000000e+00
  %1837 = icmp eq i32 %1831, 0
  br i1 %1837, label %1838, label %1866

; <label>:1838                                    ; preds = %1833
  %1839 = and i32 %1802, 64
  %1840 = icmp ne i32 %1839, 0
  %1841 = select i1 %1840, float %1450, float 0.000000e+00
  %1842 = fsub fast float %1670, %1825
  %1843 = fsub fast float %1671, %1826
  %1844 = fsub fast float %1672, %1827
  %1845 = fmul fast float %1836, %1842
  %1846 = fmul fast float %1836, %1843
  %1847 = fmul fast float %1836, %1844
  %1848 = fadd fast float %1845, %1825
  %1849 = fadd fast float %1846, %1826
  %1850 = fadd fast float %1847, %1827
  %1851 = fsub fast float %1656, %1263
  %1852 = fmul fast float %1836, %1851
  %1853 = fadd fast float %1852, %1263
  %1854 = fsub fast float %1798, %1828
  %1855 = fsub fast float %1799, %1829
  %1856 = fsub fast float %1800, %1830
  %1857 = fmul fast float %1841, %1854
  %1858 = fmul fast float %1841, %1855
  %1859 = fmul fast float %1841, %1856
  %1860 = fadd fast float %1857, %1828
  %1861 = fadd fast float %1858, %1829
  %1862 = fadd fast float %1859, %1830
  %1863 = fsub fast float %1815, %1267
  %1864 = fmul fast float %1836, %1863
  %1865 = fadd fast float %1864, %1267
  br label %1911

; <label>:1866                                    ; preds = %1833
  %1867 = icmp eq i32 %1831, 1
  br i1 %1867, label %1868, label %1881

; <label>:1868                                    ; preds = %1866
  %1869 = fadd fast float %1670, -1.000000e+00
  %1870 = fadd fast float %1671, -1.000000e+00
  %1871 = fadd fast float %1672, -1.000000e+00
  %1872 = fmul fast float %1836, %1869
  %1873 = fmul fast float %1836, %1870
  %1874 = fmul fast float %1836, %1871
  %1875 = fadd fast float %1872, 1.000000e+00
  %1876 = fadd fast float %1873, 1.000000e+00
  %1877 = fadd fast float %1874, 1.000000e+00
  %1878 = fmul fast float %1875, %1825
  %1879 = fmul fast float %1876, %1826
  %1880 = fmul fast float %1877, %1827
  br label %1911

; <label>:1881                                    ; preds = %1866
  %1882 = icmp eq i32 %1831, 2
  br i1 %1882, label %1883, label %1911

; <label>:1883                                    ; preds = %1881
  %1884 = call float @dx.op.unary.f32(i32 24, float %1670)  ; Sqrt(value)
  %1885 = call float @dx.op.unary.f32(i32 24, float %1671)  ; Sqrt(value)
  %1886 = call float @dx.op.unary.f32(i32 24, float %1672)  ; Sqrt(value)
  %1887 = fadd fast float %1884, -5.000000e-01
  %1888 = fadd fast float %1885, -5.000000e-01
  %1889 = fadd fast float %1886, -5.000000e-01
  %1890 = fmul fast float %1887, %1836
  %1891 = fmul fast float %1888, %1836
  %1892 = fmul fast float %1889, %1836
  %1893 = fadd fast float %1890, 5.000000e-01
  %1894 = fadd fast float %1891, 5.000000e-01
  %1895 = fadd fast float %1892, 5.000000e-01
  %1896 = fmul fast float %1893, 2.000000e+00
  %1897 = fsub fast float 1.000000e+00, %1896
  %1898 = fmul fast float %1897, %1825
  %1899 = fadd fast float %1898, %1896
  %1900 = fmul fast float %1899, %1825
  %1901 = fmul fast float %1894, 2.000000e+00
  %1902 = fsub fast float 1.000000e+00, %1901
  %1903 = fmul fast float %1902, %1826
  %1904 = fadd fast float %1903, %1901
  %1905 = fmul fast float %1904, %1826
  %1906 = fmul fast float %1895, 2.000000e+00
  %1907 = fsub fast float 1.000000e+00, %1906
  %1908 = fmul fast float %1907, %1827
  %1909 = fadd fast float %1908, %1906
  %1910 = fmul fast float %1909, %1827
  br label %1911

; <label>:1911                                    ; preds = %1883, %1881, %1868, %1838, %1824
  %1912 = phi float [ %1825, %1824 ], [ %1900, %1883 ], [ %1825, %1881 ], [ %1878, %1868 ], [ %1848, %1838 ]
  %1913 = phi float [ %1826, %1824 ], [ %1905, %1883 ], [ %1826, %1881 ], [ %1879, %1868 ], [ %1849, %1838 ]
  %1914 = phi float [ %1827, %1824 ], [ %1910, %1883 ], [ %1827, %1881 ], [ %1880, %1868 ], [ %1850, %1838 ]
  %1915 = phi float [ %1828, %1824 ], [ %1828, %1883 ], [ %1828, %1881 ], [ %1828, %1868 ], [ %1860, %1838 ]
  %1916 = phi float [ %1829, %1824 ], [ %1829, %1883 ], [ %1829, %1881 ], [ %1829, %1868 ], [ %1861, %1838 ]
  %1917 = phi float [ %1830, %1824 ], [ %1830, %1883 ], [ %1830, %1881 ], [ %1830, %1868 ], [ %1862, %1838 ]
  %1918 = phi float [ %1263, %1824 ], [ %1263, %1883 ], [ %1263, %1881 ], [ %1263, %1868 ], [ %1853, %1838 ]
  %1919 = phi float [ %1267, %1824 ], [ %1267, %1883 ], [ %1267, %1881 ], [ %1267, %1868 ], [ %1865, %1838 ]
  %1920 = and i32 %1802, 12
  %1921 = icmp eq i32 %1920, 12
  br i1 %1921, label %1994, label %1922

; <label>:1922                                    ; preds = %1911
  %1923 = and i32 %1802, 2097184
  %1924 = icmp eq i32 %1923, 2097184
  %1925 = select i1 %1924, float %1450, float 0.000000e+00
  %1926 = and i32 %1802, 4194336
  %1927 = icmp eq i32 %1926, 4194336
  %1928 = select i1 %1927, float %1450, float 0.000000e+00
  %1929 = and i32 %1802, 8388640
  %1930 = icmp eq i32 %1929, 8388640
  %1931 = select i1 %1930, float %1450, float 0.000000e+00
  %1932 = icmp eq i32 %1920, 0
  br i1 %1932, label %1933, label %1946

; <label>:1933                                    ; preds = %1922
  %1934 = fsub fast float %1751, %1255
  %1935 = fsub fast float %1752, %1256
  %1936 = fmul fast float %1925, %1934
  %1937 = fmul fast float %1925, %1935
  %1938 = fadd fast float %1936, %1255
  %1939 = fadd fast float %1937, %1256
  %1940 = fsub fast float %1753, %1266
  %1941 = fmul fast float %1928, %1940
  %1942 = fadd fast float %1941, %1266
  %1943 = fsub fast float %1750, %1265
  %1944 = fmul fast float %1931, %1943
  %1945 = fadd fast float %1944, %1265
  br label %1994

; <label>:1946                                    ; preds = %1922
  %1947 = icmp eq i32 %1920, 4
  br i1 %1947, label %1948, label %1980

; <label>:1948                                    ; preds = %1946
  %1949 = fmul fast float %1925, %1751
  %1950 = fmul fast float %1925, %1752
  %1951 = fadd fast float %1949, %1255
  %1952 = fadd fast float %1950, %1256
  %1953 = call float @dx.op.binary.f32(i32 36, float %1266, float %1753)  ; FMin(a,b)
  %1954 = fsub fast float %1953, %1266
  %1955 = fmul fast float %1954, %1928
  %1956 = fadd fast float %1955, %1266
  %1957 = fadd fast float %1750, %1265
  %1958 = fmul fast float %1957, 0x3FF337FAE0000000
  %1959 = fmul fast float %1265, %1265
  %1960 = fmul fast float %1750, %1750
  %1961 = fadd fast float %1960, %1959
  %1962 = fmul fast float %1961, 0x3FE5152B00000000
  %1963 = fmul fast float %1265, 0xBFCC1F85E0000000
  %1964 = fmul fast float %1963, %1750
  %1965 = fadd fast float %1964, 0xBFE1363700000000
  %1966 = fadd fast float %1965, %1958
  %1967 = fsub fast float %1966, %1962
  %1968 = fmul fast float %1957, 0x3FBA6F0D00000000
  %1969 = fmul fast float %1961, 0x3FD0432880000000
  %1970 = fmul fast float %1265, 0xBFEF110800000000
  %1971 = fmul fast float %1970, %1750
  %1972 = fadd fast float %1971, 1.000000e+00
  %1973 = fsub fast float %1972, %1968
  %1974 = fadd fast float %1973, %1969
  %1975 = fdiv fast float %1967, %1974
  %1976 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1977 = fsub fast float %1976, %1265
  %1978 = fmul fast float %1977, %1931
  %1979 = fadd fast float %1978, %1265
  br label %1994

; <label>:1980                                    ; preds = %1946
  %1981 = icmp eq i32 %1920, 8
  br i1 %1981, label %1982, label %1994

; <label>:1982                                    ; preds = %1980
  %1983 = fmul fast float %1925, %1751
  %1984 = fmul fast float %1925, %1752
  %1985 = fadd fast float %1983, %1255
  %1986 = fadd fast float %1984, %1256
  %1987 = call float @dx.op.binary.f32(i32 36, float %1266, float %1753)  ; FMin(a,b)
  %1988 = fsub fast float %1987, %1266
  %1989 = fmul fast float %1988, %1928
  %1990 = fadd fast float %1989, %1266
  %1991 = fsub fast float %1750, %1265
  %1992 = fmul fast float %1931, %1991
  %1993 = fadd fast float %1992, %1265
  br label %1994

; <label>:1994                                    ; preds = %1982, %1980, %1948, %1933, %1911, %1449, %1268, %1254
  %1995 = phi float [ %1255, %1911 ], [ %1255, %1449 ], [ %1255, %1254 ], [ %1985, %1982 ], [ %1255, %1980 ], [ %1951, %1948 ], [ %1938, %1933 ], [ %1255, %1268 ]
  %1996 = phi float [ %1256, %1911 ], [ %1256, %1449 ], [ %1256, %1254 ], [ %1986, %1982 ], [ %1256, %1980 ], [ %1952, %1948 ], [ %1939, %1933 ], [ %1256, %1268 ]
  %1997 = phi float [ %1912, %1911 ], [ %1257, %1449 ], [ %1257, %1254 ], [ %1912, %1982 ], [ %1912, %1980 ], [ %1912, %1948 ], [ %1912, %1933 ], [ %1257, %1268 ]
  %1998 = phi float [ %1913, %1911 ], [ %1258, %1449 ], [ %1258, %1254 ], [ %1913, %1982 ], [ %1913, %1980 ], [ %1913, %1948 ], [ %1913, %1933 ], [ %1258, %1268 ]
  %1999 = phi float [ %1914, %1911 ], [ %1259, %1449 ], [ %1259, %1254 ], [ %1914, %1982 ], [ %1914, %1980 ], [ %1914, %1948 ], [ %1914, %1933 ], [ %1259, %1268 ]
  %2000 = phi float [ %1915, %1911 ], [ %1260, %1449 ], [ %1260, %1254 ], [ %1915, %1982 ], [ %1915, %1980 ], [ %1915, %1948 ], [ %1915, %1933 ], [ %1260, %1268 ]
  %2001 = phi float [ %1916, %1911 ], [ %1261, %1449 ], [ %1261, %1254 ], [ %1916, %1982 ], [ %1916, %1980 ], [ %1916, %1948 ], [ %1916, %1933 ], [ %1261, %1268 ]
  %2002 = phi float [ %1917, %1911 ], [ %1262, %1449 ], [ %1262, %1254 ], [ %1917, %1982 ], [ %1917, %1980 ], [ %1917, %1948 ], [ %1917, %1933 ], [ %1262, %1268 ]
  %2003 = phi float [ %1918, %1911 ], [ %1263, %1449 ], [ %1263, %1254 ], [ %1918, %1982 ], [ %1918, %1980 ], [ %1918, %1948 ], [ %1918, %1933 ], [ %1263, %1268 ]
  %2004 = phi float [ %1265, %1911 ], [ %1265, %1449 ], [ %1265, %1254 ], [ %1993, %1982 ], [ %1265, %1980 ], [ %1979, %1948 ], [ %1945, %1933 ], [ %1265, %1268 ]
  %2005 = phi float [ %1266, %1911 ], [ %1266, %1449 ], [ %1266, %1254 ], [ %1990, %1982 ], [ %1266, %1980 ], [ %1956, %1948 ], [ %1942, %1933 ], [ %1266, %1268 ]
  %2006 = phi float [ %1919, %1911 ], [ %1267, %1449 ], [ %1267, %1254 ], [ %1919, %1982 ], [ %1919, %1980 ], [ %1919, %1948 ], [ %1919, %1933 ], [ %1267, %1268 ]
  br i1 %655, label %2733, label %2007

; <label>:2007                                    ; preds = %1994
  %2008 = icmp ult i32 %711, 3
  %2009 = add i32 %57, 56
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = add i32 %57, 60
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2012, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = or i32 %2014, %2011
  %2016 = icmp eq i32 %2015, 0
  br i1 %2016, label %2733, label %2017

; <label>:2017                                    ; preds = %2007
  %2018 = and i32 %2011, 262144
  %2019 = icmp ne i32 %2018, 0
  %2020 = select i1 %2019, float %64, float 1.000000e+00
  %2021 = select i1 %2019, float %65, float 0.000000e+00
  %2022 = select i1 %2019, float %66, float 0.000000e+00
  %2023 = select i1 %2019, float %67, float 1.000000e+00
  %2024 = select i1 %2019, float %68, float %92
  %2025 = select i1 %2019, float %69, float %93
  %2026 = add i32 %57, 316
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = lshr i32 %2028, 16
  %2030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2029)  ; LegacyF16ToF32(value)
  %2031 = fmul fast float %2030, 0x3F50624DE0000000
  %2032 = add i32 %57, 120
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = lshr i32 %2034, 16
  %2036 = and i32 %2035, 255
  %2037 = lshr i32 %2034, 24
  %2038 = add i32 %57, 324
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2038, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = and i32 %2040, 65535
  %2042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2041)  ; LegacyF16ToF32(value)
  %2043 = lshr i32 %2040, 16
  %2044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2043)  ; LegacyF16ToF32(value)
  %2045 = add i32 %57, 64
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = lshr i32 %2047, 22
  %2049 = shl nuw nsw i32 %2048, 5
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = shl i32 %2047, 4
  %2052 = and i32 %2051, 32752
  %2053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2052)  ; LegacyF16ToF32(value)
  %2054 = lshr i32 %2047, 7
  %2055 = and i32 %2054, 32752
  %2056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2055)  ; LegacyF16ToF32(value)
  %2057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2057, 3
  %2059 = fmul fast float %2058, 1.000000e+03
  %2060 = fmul fast float %2059, %539
  %2061 = call float @dx.op.unary.f32(i32 22, float %2060)  ; Frc(value)
  %2062 = fadd fast float %2061, %527
  %2063 = fmul fast float %2059, %541
  %2064 = call float @dx.op.unary.f32(i32 22, float %2063)  ; Frc(value)
  %2065 = fadd fast float %2064, %528
  %2066 = fmul fast float %2031, %2059
  %2067 = call float @dx.op.unary.f32(i32 22, float %2066)  ; Frc(value)
  %2068 = fmul fast float %2067, 0x401921FB60000000
  %2069 = fadd fast float %2068, %2050
  %2070 = call float @dx.op.unary.f32(i32 13, float %2069)  ; Sin(value)
  %2071 = call float @dx.op.unary.f32(i32 12, float %2069)  ; Cos(value)
  %2072 = fsub fast float -0.000000e+00, %2070
  %2073 = fadd fast float %2024, -5.000000e-01
  %2074 = fadd fast float %2025, -5.000000e-01
  %2075 = fmul fast float %2042, %2073
  %2076 = fmul fast float %2044, %2074
  %2077 = fadd fast float %2075, 5.000000e-01
  %2078 = fadd fast float %2076, 5.000000e-01
  %2079 = fmul fast float %2053, %2077
  %2080 = fmul fast float %2056, %2078
  %2081 = fmul fast float %2071, %2079
  %2082 = call float @dx.op.tertiary.f32(i32 46, float %2072, float %2080, float %2081)  ; FMad(a,b,c)
  %2083 = fmul fast float %2070, %2079
  %2084 = call float @dx.op.tertiary.f32(i32 46, float %2071, float %2080, float %2083)  ; FMad(a,b,c)
  %2085 = fadd fast float %2062, %2082
  %2086 = fadd fast float %2065, %2084
  %2087 = icmp ugt i32 %2036, 1
  %2088 = icmp ugt i32 %2034, 33554431
  %2089 = or i1 %2088, %2087
  br i1 %2089, label %2090, label %2115

; <label>:2090                                    ; preds = %2017
  %2091 = add i32 %57, 260
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = lshr i32 %2093, 16
  %2095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2094)  ; LegacyF16ToF32(value)
  %2096 = fmul fast float %2058, %2095
  %2097 = call float @dx.op.unary.f32(i32 22, float %2096)  ; Frc(value)
  %2098 = mul nuw nsw i32 %2036, %2037
  %2099 = uitofp i32 %2098 to float
  %2100 = fmul fast float %2097, %2099
  %2101 = call float @dx.op.unary.f32(i32 27, float %2100)  ; Round_ni(value)
  %2102 = fptoui float %2101 to i32
  %2103 = urem i32 %2102, %2036
  %2104 = udiv i32 %2102, %2037
  %2105 = call float @dx.op.unary.f32(i32 22, float %2085)  ; Frc(value)
  %2106 = call float @dx.op.unary.f32(i32 22, float %2086)  ; Frc(value)
  %2107 = uitofp i32 %2103 to float
  %2108 = uitofp i32 %2104 to float
  %2109 = fadd fast float %2105, %2107
  %2110 = fadd fast float %2106, %2108
  %2111 = uitofp i32 %2036 to float
  %2112 = uitofp i32 %2037 to float
  %2113 = fdiv fast float %2109, %2111
  %2114 = fdiv fast float %2110, %2112
  br label %2115

; <label>:2115                                    ; preds = %2090, %2017
  %2116 = phi float [ %2113, %2090 ], [ %2085, %2017 ]
  %2117 = phi float [ %2114, %2090 ], [ %2086, %2017 ]
  %2118 = and i32 %2011, 256
  %2119 = icmp eq i32 %2118, 0
  br i1 %2119, label %2166, label %2120

; <label>:2120                                    ; preds = %2115
  %2121 = add i32 %57, 480
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2121, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = add i32 %2123, 0
  %2125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2124, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2126 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2125, %dx.types.Handle %111, float %2116, float %2117, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2127 = extractvalue %dx.types.ResRet.f32 %2126, 0
  %2128 = add i32 %57, 132
  %2129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = shl i32 %2130, 4
  %2132 = and i32 %2131, 32752
  %2133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2132)  ; LegacyF16ToF32(value)
  %2134 = lshr i32 %2130, 7
  %2135 = and i32 %2134, 32752
  %2136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2135)  ; LegacyF16ToF32(value)
  %2137 = fsub fast float 1.000000e+00, %707
  %2138 = call float @dx.op.binary.f32(i32 35, float %2137, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2139 = bitcast float %707 to i32
  %2140 = sitofp i32 %2139 to float
  %2141 = fadd fast float %2140, 0xC1CFBF8940000000
  %2142 = fmul fast float %2136, %2141
  %2143 = fadd fast float %2142, 0x41CFBF8940000000
  %2144 = fptosi float %2143 to i32
  %2145 = bitcast i32 %2144 to float
  %2146 = bitcast float %2138 to i32
  %2147 = sitofp i32 %2146 to float
  %2148 = fadd fast float %2147, 0xC1CFBF8940000000
  %2149 = fmul fast float %2148, %2136
  %2150 = fadd fast float %2149, 0x41CFBF8940000000
  %2151 = fptosi float %2150 to i32
  %2152 = bitcast i32 %2151 to float
  %2153 = fmul fast float %2145, %2133
  %2154 = fmul fast float %2152, %2133
  %2155 = fsub fast float %2138, %2153
  %2156 = fadd fast float %2154, %2138
  %2157 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2158 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2159 = fsub fast float %2127, %2157
  %2160 = fsub fast float %2158, %2157
  %2161 = bitcast float %2160 to i32
  %2162 = sub nsw i32 2129859010, %2161
  %2163 = bitcast i32 %2162 to float
  %2164 = fmul fast float %2163, %2159
  %2165 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  br label %2166

; <label>:2166                                    ; preds = %2120, %2115
  %2167 = phi float [ %2165, %2120 ], [ %707, %2115 ]
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = and i32 %2169, 128
  %2171 = icmp eq i32 %2170, 0
  br i1 %2171, label %2188, label %2172

; <label>:2172                                    ; preds = %2166
  %2173 = add i32 %57, 464
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2173, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = add i32 %2175, 0
  %2177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2177, %dx.types.Handle %111, float %2116, float %2117, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2179 = extractvalue %dx.types.ResRet.f32 %2178, 0
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = and i32 %2181, 524288
  %2183 = icmp ne i32 %2182, 0
  %2184 = fcmp fast ogt float %2179, 0x3FE0101020000000
  %2185 = select i1 %2184, float 1.000000e+00, float 0.000000e+00
  %2186 = select i1 %2183, float %2185, float %2179
  %2187 = fmul fast float %2186, %2167
  br label %2188

; <label>:2188                                    ; preds = %2172, %2166
  %2189 = phi float [ %2187, %2172 ], [ %2167, %2166 ]
  %2190 = fcmp fast ult float %2189, 0x3F70101020000000
  br i1 %2190, label %2733, label %2191

; <label>:2191                                    ; preds = %2188
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = and i32 %2193, 16
  %2195 = icmp eq i32 %2194, 0
  br i1 %2195, label %2394, label %2196

; <label>:2196                                    ; preds = %2191
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = add i32 %57, 416
  %2200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.i32 %2200, 0
  %2202 = add i32 %2201, 0
  %2203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2204 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2203, %dx.types.Handle %110, float %2116, float %2117, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2205 = extractvalue %dx.types.ResRet.f32 %2204, 0
  %2206 = extractvalue %dx.types.ResRet.f32 %2204, 1
  %2207 = extractvalue %dx.types.ResRet.f32 %2204, 2
  %2208 = extractvalue %dx.types.ResRet.f32 %2204, 3
  %2209 = and i32 %2198, 255
  %2210 = uitofp i32 %2209 to float
  %2211 = lshr i32 %2198, 8
  %2212 = and i32 %2211, 255
  %2213 = uitofp i32 %2212 to float
  %2214 = fmul fast float %2208, %2210
  %2215 = fadd fast float %2214, %2213
  %2216 = fmul fast float %2215, 0x3F70101000000000
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = and i32 %2218, 512
  %2220 = icmp eq i32 %2219, 0
  br i1 %2220, label %2229, label %2221

; <label>:2221                                    ; preds = %2196
  %2222 = add i32 %57, 500
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2222, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = add i32 %2224, 0
  %2226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2225, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2227 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2226, %dx.types.Handle %111, float %2116, float %2117, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2228 = extractvalue %dx.types.ResRet.f32 %2227, 0
  br label %2229

; <label>:2229                                    ; preds = %2221, %2196
  %2230 = phi float [ %2228, %2221 ], [ 1.000000e+00, %2196 ]
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = and i32 %2232, 33554432
  %2234 = icmp eq i32 %2233, 0
  br i1 %2234, label %2341, label %2235

; <label>:2235                                    ; preds = %2229
  %2236 = add i32 %57, 256
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = and i32 %2238, 65535
  %2240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2239)  ; LegacyF16ToF32(value)
  %2241 = lshr i32 %2238, 16
  %2242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2241)  ; LegacyF16ToF32(value)
  %2243 = add i32 %57, 260
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2243, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = and i32 %2245, 65535
  %2247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2246)  ; LegacyF16ToF32(value)
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = lshr i32 %2249, 24
  %2251 = uitofp i32 %2250 to float
  %2252 = fmul fast float %2251, 0x3F70101020000000
  %2253 = and i32 %2249, 255
  %2254 = uitofp i32 %2253 to float
  %2255 = fmul fast float %2254, 0x3F70101020000000
  %2256 = lshr i32 %2249, 8
  %2257 = and i32 %2256, 255
  %2258 = uitofp i32 %2257 to float
  %2259 = fmul fast float %2258, 0x3F70101020000000
  %2260 = lshr i32 %2249, 16
  %2261 = and i32 %2260, 255
  %2262 = uitofp i32 %2261 to float
  %2263 = fmul fast float %2262, 0x3F70101020000000
  %2264 = add i32 %57, 252
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = lshr i32 %2266, 24
  %2268 = uitofp i32 %2267 to float
  %2269 = fmul fast float %2268, 0x3F70101020000000
  %2270 = and i32 %2266, 255
  %2271 = uitofp i32 %2270 to float
  %2272 = fmul fast float %2271, 0x3F70101020000000
  %2273 = lshr i32 %2266, 8
  %2274 = and i32 %2273, 255
  %2275 = uitofp i32 %2274 to float
  %2276 = fmul fast float %2275, 0x3F70101020000000
  %2277 = lshr i32 %2266, 16
  %2278 = and i32 %2277, 255
  %2279 = uitofp i32 %2278 to float
  %2280 = fmul fast float %2279, 0x3F70101020000000
  %2281 = bitcast float %2205 to i32
  %2282 = ashr i32 %2281, 1
  %2283 = sub nsw i32 1597463174, %2282
  %2284 = bitcast i32 %2283 to float
  %2285 = fmul fast float %2205, 5.000000e-01
  %2286 = fmul fast float %2284, %2284
  %2287 = fmul fast float %2286, %2285
  %2288 = fsub fast float 1.500000e+00, %2287
  %2289 = fmul fast float %2284, %2205
  %2290 = fmul fast float %2289, %2288
  %2291 = bitcast float %2206 to i32
  %2292 = ashr i32 %2291, 1
  %2293 = sub nsw i32 1597463174, %2292
  %2294 = bitcast i32 %2293 to float
  %2295 = fmul fast float %2206, 5.000000e-01
  %2296 = fmul fast float %2294, %2294
  %2297 = fmul fast float %2296, %2295
  %2298 = fsub fast float 1.500000e+00, %2297
  %2299 = fmul fast float %2294, %2206
  %2300 = fmul fast float %2299, %2298
  %2301 = bitcast float %2207 to i32
  %2302 = ashr i32 %2301, 1
  %2303 = sub nsw i32 1597463174, %2302
  %2304 = bitcast i32 %2303 to float
  %2305 = fmul fast float %2207, 5.000000e-01
  %2306 = fmul fast float %2304, %2304
  %2307 = fmul fast float %2306, %2305
  %2308 = fsub fast float 1.500000e+00, %2307
  %2309 = fmul fast float %2304, %2207
  %2310 = fmul fast float %2309, %2308
  %2311 = fsub fast float %2290, %2272
  %2312 = fsub fast float %2300, %2276
  %2313 = fsub fast float %2310, %2280
  %2314 = fmul fast float %2311, %2240
  %2315 = fmul fast float %2312, %2242
  %2316 = fmul fast float %2313, %2247
  %2317 = fadd fast float %2314, %2255
  %2318 = fadd fast float %2315, %2259
  %2319 = fadd fast float %2316, %2263
  %2320 = call float @dx.op.unary.f32(i32 7, float %2317)  ; Saturate(value)
  %2321 = call float @dx.op.unary.f32(i32 7, float %2318)  ; Saturate(value)
  %2322 = call float @dx.op.unary.f32(i32 7, float %2319)  ; Saturate(value)
  %2323 = fmul fast float %2320, %2320
  %2324 = fmul fast float %2321, %2321
  %2325 = fmul fast float %2322, %2322
  %2326 = fsub fast float %2323, %2205
  %2327 = fsub fast float %2324, %2206
  %2328 = fsub fast float %2325, %2207
  %2329 = fmul fast float %2326, %2230
  %2330 = fmul fast float %2327, %2230
  %2331 = fmul fast float %2328, %2230
  %2332 = fadd fast float %2329, %2205
  %2333 = fadd fast float %2330, %2206
  %2334 = fadd fast float %2331, %2207
  %2335 = fadd fast float %2252, %2216
  %2336 = fsub fast float %2335, %2269
  %2337 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2338 = fsub fast float %2337, %2216
  %2339 = fmul fast float %2338, %2230
  %2340 = fadd fast float %2339, %2216
  br label %2394

; <label>:2341                                    ; preds = %2229
  %2342 = and i32 %2232, 134217728
  %2343 = icmp eq i32 %2342, 0
  br i1 %2343, label %2378, label %2344

; <label>:2344                                    ; preds = %2341
  %2345 = call float @dx.op.unary.f32(i32 24, float %515)  ; Sqrt(value)
  %2346 = call float @dx.op.unary.f32(i32 24, float %516)  ; Sqrt(value)
  %2347 = call float @dx.op.unary.f32(i32 24, float %517)  ; Sqrt(value)
  %2348 = fadd fast float %2345, -5.000000e-01
  %2349 = fadd fast float %2346, -5.000000e-01
  %2350 = fadd fast float %2347, -5.000000e-01
  %2351 = fmul fast float %2348, %2230
  %2352 = fmul fast float %2349, %2230
  %2353 = fmul fast float %2350, %2230
  %2354 = fadd fast float %2351, 5.000000e-01
  %2355 = fadd fast float %2352, 5.000000e-01
  %2356 = fadd fast float %2353, 5.000000e-01
  %2357 = call float @dx.op.unary.f32(i32 24, float %2205)  ; Sqrt(value)
  %2358 = call float @dx.op.unary.f32(i32 24, float %2206)  ; Sqrt(value)
  %2359 = call float @dx.op.unary.f32(i32 24, float %2207)  ; Sqrt(value)
  %2360 = fmul fast float %2354, 2.000000e+00
  %2361 = fsub fast float 1.000000e+00, %2360
  %2362 = fmul fast float %2361, %2357
  %2363 = fadd fast float %2362, %2360
  %2364 = fmul fast float %2363, %2357
  %2365 = fmul fast float %2355, 2.000000e+00
  %2366 = fsub fast float 1.000000e+00, %2365
  %2367 = fmul fast float %2366, %2358
  %2368 = fadd fast float %2367, %2365
  %2369 = fmul fast float %2368, %2358
  %2370 = fmul fast float %2356, 2.000000e+00
  %2371 = fsub fast float 1.000000e+00, %2370
  %2372 = fmul fast float %2371, %2359
  %2373 = fadd fast float %2372, %2370
  %2374 = fmul fast float %2373, %2359
  %2375 = fmul fast float %2364, %2364
  %2376 = fmul fast float %2369, %2369
  %2377 = fmul fast float %2374, %2374
  br label %2394

; <label>:2378                                    ; preds = %2341
  %2379 = fmul fast float %515, %515
  %2380 = fmul fast float %516, %516
  %2381 = fmul fast float %517, %517
  %2382 = fadd fast float %2379, -1.000000e+00
  %2383 = fadd fast float %2380, -1.000000e+00
  %2384 = fadd fast float %2381, -1.000000e+00
  %2385 = fmul fast float %2230, %2382
  %2386 = fmul fast float %2230, %2383
  %2387 = fmul fast float %2230, %2384
  %2388 = fadd fast float %2385, 1.000000e+00
  %2389 = fadd fast float %2386, 1.000000e+00
  %2390 = fadd fast float %2387, 1.000000e+00
  %2391 = fmul fast float %2388, %2205
  %2392 = fmul fast float %2389, %2206
  %2393 = fmul fast float %2390, %2207
  br label %2394

; <label>:2394                                    ; preds = %2378, %2344, %2235, %2191
  %2395 = phi float [ %2340, %2235 ], [ %2216, %2344 ], [ %2216, %2378 ], [ 0x3FA23C0BE0000000, %2191 ]
  %2396 = phi float [ %2332, %2235 ], [ %2375, %2344 ], [ %2391, %2378 ], [ 1.000000e+00, %2191 ]
  %2397 = phi float [ %2333, %2235 ], [ %2376, %2344 ], [ %2392, %2378 ], [ 1.000000e+00, %2191 ]
  %2398 = phi float [ %2334, %2235 ], [ %2377, %2344 ], [ %2393, %2378 ], [ 1.000000e+00, %2191 ]
  %2399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2400 = extractvalue %dx.types.CBufRet.i32 %2399, 1
  %2401 = and i32 %2400, 1
  %2402 = icmp ne i32 %2401, 0
  %2403 = add i32 %57, 356
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = and i32 %2405, 32
  %2407 = icmp ne i32 %2406, 0
  %2408 = and i1 %2402, %2407
  %2409 = select i1 %2408, float 1.000000e+00, float %2396
  %2410 = select i1 %2408, float 0x3FD3333340000000, float %2397
  %2411 = select i1 %2408, float 0x3FD3333340000000, float %2398
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 32
  %2415 = icmp eq i32 %2414, 0
  br i1 %2415, label %2488, label %2416

; <label>:2416                                    ; preds = %2394
  %2417 = add i32 %57, 124
  %2418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.i32 %2418, 0
  %2420 = add i32 %57, 432
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = add i32 %2422, 0
  %2424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2425 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2424, %dx.types.Handle %110, float %2116, float %2117, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2426 = extractvalue %dx.types.ResRet.f32 %2425, 0
  %2427 = extractvalue %dx.types.ResRet.f32 %2425, 1
  %2428 = extractvalue %dx.types.ResRet.f32 %2425, 2
  %2429 = extractvalue %dx.types.ResRet.f32 %2425, 3
  %2430 = and i32 %2419, 255
  %2431 = uitofp i32 %2430 to float
  %2432 = lshr i32 %2419, 8
  %2433 = and i32 %2432, 255
  %2434 = uitofp i32 %2433 to float
  %2435 = lshr i32 %2419, 16
  %2436 = and i32 %2435, 255
  %2437 = uitofp i32 %2436 to float
  %2438 = fmul fast float %2437, 0x3F70101000000000
  %2439 = fmul fast float %2426, %2431
  %2440 = fadd fast float %2439, %2434
  %2441 = fmul fast float %2440, 0x3F70101000000000
  %2442 = fadd fast float %2427, -5.000000e-01
  %2443 = fadd fast float %2429, -5.000000e-01
  %2444 = fmul fast float %2442, %2438
  %2445 = fmul fast float %2443, %2438
  %2446 = fadd fast float %2444, 5.000000e-01
  %2447 = fadd fast float %2445, 5.000000e-01
  %2448 = fmul fast float %2446, 2.000000e+00
  %2449 = fadd fast float %2448, -1.000000e+00
  %2450 = fmul fast float %2447, 2.000000e+00
  %2451 = fadd fast float %2450, -1.000000e+00
  %2452 = fadd fast float %2449, %2451
  %2453 = fmul fast float %2452, 5.000000e-01
  %2454 = fsub fast float %2449, %2451
  %2455 = fmul fast float %2454, 5.000000e-01
  %2456 = call float @dx.op.unary.f32(i32 6, float %2453)  ; FAbs(value)
  %2457 = fsub fast float 1.000000e+00, %2456
  %2458 = call float @dx.op.unary.f32(i32 6, float %2455)  ; FAbs(value)
  %2459 = fsub fast float %2457, %2458
  %2460 = call float @dx.op.dot3.f32(i32 55, float %2453, float %2455, float %2459, float %2453, float %2455, float %2459)  ; Dot3(ax,ay,az,bx,by,bz)
  %2461 = call float @dx.op.unary.f32(i32 25, float %2460)  ; Rsqrt(value)
  %2462 = fmul fast float %2453, %2461
  %2463 = fmul fast float %2455, %2461
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = and i32 %2465, 67108864
  %2467 = icmp eq i32 %2466, 0
  br i1 %2467, label %2484, label %2468

; <label>:2468                                    ; preds = %2416
  %2469 = add i32 %57, 312
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2469, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = and i32 %2471, 65535
  %2473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2472)  ; LegacyF16ToF32(value)
  %2474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2475 = extractvalue %dx.types.ResRet.i32 %2474, 0
  %2476 = and i32 %2475, 65535
  %2477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2476)  ; LegacyF16ToF32(value)
  %2478 = lshr i32 %2471, 16
  %2479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2478)  ; LegacyF16ToF32(value)
  %2480 = fsub fast float %2441, %2479
  %2481 = fmul fast float %2480, %2473
  %2482 = fadd fast float %2481, %2477
  %2483 = call float @dx.op.unary.f32(i32 7, float %2482)  ; Saturate(value)
  br label %2484

; <label>:2484                                    ; preds = %2468, %2416
  %2485 = phi float [ %2483, %2468 ], [ %2441, %2416 ]
  %2486 = call float @dx.op.dot2.f32(i32 54, float %2462, float %2463, float %2020, float %2021)  ; Dot2(ax,ay,bx,by)
  %2487 = call float @dx.op.dot2.f32(i32 54, float %2462, float %2463, float %2022, float %2023)  ; Dot2(ax,ay,bx,by)
  br label %2488

; <label>:2488                                    ; preds = %2484, %2394
  %2489 = phi float [ %2485, %2484 ], [ 0x3FD6666660000000, %2394 ]
  %2490 = phi float [ %2486, %2484 ], [ 0.000000e+00, %2394 ]
  %2491 = phi float [ %2487, %2484 ], [ 0.000000e+00, %2394 ]
  %2492 = phi float [ %2428, %2484 ], [ 1.000000e+00, %2394 ]
  %2493 = add i32 %57, 192
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2493, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = lshr i32 %2495, 22
  %2497 = shl nuw nsw i32 %2496, 5
  %2498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2497)  ; LegacyF16ToF32(value)
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = and i32 %2500, 64
  %2502 = icmp eq i32 %2501, 0
  br i1 %2502, label %2536, label %2503

; <label>:2503                                    ; preds = %2488
  %2504 = add i32 %57, 448
  %2505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2504, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.i32 %2505, 0
  %2507 = add i32 %2506, 0
  %2508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.i32 %2509, 0
  %2511 = and i32 %2510, 131072
  %2512 = icmp eq i32 %2511, 0
  %2513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2508, %dx.types.Handle %110, float %2116, float %2117, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2514 = extractvalue %dx.types.ResRet.f32 %2513, 0
  %2515 = extractvalue %dx.types.ResRet.f32 %2513, 1
  %2516 = extractvalue %dx.types.ResRet.f32 %2513, 2
  %2517 = fmul fast float %498, %2514
  %2518 = fmul fast float %499, %2515
  %2519 = fmul fast float %500, %2516
  br i1 %2512, label %2526, label %2520

; <label>:2520                                    ; preds = %2503
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 0
  %2523 = fmul fast float %2522, %2517
  %2524 = fmul fast float %2522, %2518
  %2525 = fmul fast float %2522, %2519
  br label %2526

; <label>:2526                                    ; preds = %2520, %2503
  %2527 = phi float [ %2523, %2520 ], [ %2517, %2503 ]
  %2528 = phi float [ %2524, %2520 ], [ %2518, %2503 ]
  %2529 = phi float [ %2525, %2520 ], [ %2519, %2503 ]
  %2530 = fmul fast float %2527, %2498
  %2531 = select i1 %273, float %2530, float %2527
  %2532 = call float @dx.op.dot3.f32(i32 55, float %2531, float %2528, float %2529, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2533 = select i1 %273, float 0.000000e+00, float %2527
  %2534 = select i1 %273, float %2532, float %2528
  %2535 = select i1 %273, float 0.000000e+00, float %2529
  br label %2536

; <label>:2536                                    ; preds = %2526, %2488
  %2537 = phi float [ %2533, %2526 ], [ 0.000000e+00, %2488 ]
  %2538 = phi float [ %2534, %2526 ], [ 0.000000e+00, %2488 ]
  %2539 = phi float [ %2535, %2526 ], [ 0.000000e+00, %2488 ]
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = add i32 %57, 128
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = and i32 %2544, 255
  %2546 = uitofp i32 %2545 to float
  %2547 = lshr i32 %2544, 8
  %2548 = and i32 %2547, 255
  %2549 = uitofp i32 %2548 to float
  %2550 = call float @dx.op.dot3.f32(i32 55, float %2409, float %2410, float %2411, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2551 = fmul fast float %2549, %2550
  %2552 = fadd fast float %2551, %2546
  %2553 = fmul fast float %2552, 0x3F70101020000000
  %2554 = call float @dx.op.unary.f32(i32 7, float %2553)  ; Saturate(value)
  br i1 %2008, label %2555, label %2563

; <label>:2555                                    ; preds = %2536
  %2556 = fsub fast float 1.000000e+00, %2189
  %2557 = fmul fast float %2556, %1997
  %2558 = fmul fast float %2556, %1998
  %2559 = fmul fast float %2556, %1999
  %2560 = fmul fast float %2556, %2000
  %2561 = fmul fast float %2556, %2001
  %2562 = fmul fast float %2556, %2002
  br label %2563

; <label>:2563                                    ; preds = %2555, %2536
  %2564 = phi float [ %2557, %2555 ], [ %1997, %2536 ]
  %2565 = phi float [ %2558, %2555 ], [ %1998, %2536 ]
  %2566 = phi float [ %2559, %2555 ], [ %1999, %2536 ]
  %2567 = phi float [ %2560, %2555 ], [ %2000, %2536 ]
  %2568 = phi float [ %2561, %2555 ], [ %2001, %2536 ]
  %2569 = phi float [ %2562, %2555 ], [ %2002, %2536 ]
  %2570 = and i32 %2541, 3
  %2571 = icmp eq i32 %2570, 3
  br i1 %2571, label %2650, label %2572

; <label>:2572                                    ; preds = %2563
  %2573 = and i32 %2541, 16
  %2574 = icmp ne i32 %2573, 0
  %2575 = select i1 %2574, float %2189, float 0.000000e+00
  %2576 = icmp eq i32 %2570, 0
  br i1 %2576, label %2577, label %2605

; <label>:2577                                    ; preds = %2572
  %2578 = and i32 %2541, 64
  %2579 = icmp ne i32 %2578, 0
  %2580 = select i1 %2579, float %2189, float 0.000000e+00
  %2581 = fsub fast float %2409, %2564
  %2582 = fsub fast float %2410, %2565
  %2583 = fsub fast float %2411, %2566
  %2584 = fmul fast float %2575, %2581
  %2585 = fmul fast float %2575, %2582
  %2586 = fmul fast float %2575, %2583
  %2587 = fadd fast float %2584, %2564
  %2588 = fadd fast float %2585, %2565
  %2589 = fadd fast float %2586, %2566
  %2590 = fsub fast float %2395, %2003
  %2591 = fmul fast float %2575, %2590
  %2592 = fadd fast float %2591, %2003
  %2593 = fsub fast float %2537, %2567
  %2594 = fsub fast float %2538, %2568
  %2595 = fsub fast float %2539, %2569
  %2596 = fmul fast float %2580, %2593
  %2597 = fmul fast float %2580, %2594
  %2598 = fmul fast float %2580, %2595
  %2599 = fadd fast float %2596, %2567
  %2600 = fadd fast float %2597, %2568
  %2601 = fadd fast float %2598, %2569
  %2602 = fsub fast float %2554, %2006
  %2603 = fmul fast float %2575, %2602
  %2604 = fadd fast float %2603, %2006
  br label %2650

; <label>:2605                                    ; preds = %2572
  %2606 = icmp eq i32 %2570, 1
  br i1 %2606, label %2607, label %2620

; <label>:2607                                    ; preds = %2605
  %2608 = fadd fast float %2409, -1.000000e+00
  %2609 = fadd fast float %2410, -1.000000e+00
  %2610 = fadd fast float %2411, -1.000000e+00
  %2611 = fmul fast float %2575, %2608
  %2612 = fmul fast float %2575, %2609
  %2613 = fmul fast float %2575, %2610
  %2614 = fadd fast float %2611, 1.000000e+00
  %2615 = fadd fast float %2612, 1.000000e+00
  %2616 = fadd fast float %2613, 1.000000e+00
  %2617 = fmul fast float %2614, %2564
  %2618 = fmul fast float %2615, %2565
  %2619 = fmul fast float %2616, %2566
  br label %2650

; <label>:2620                                    ; preds = %2605
  %2621 = icmp eq i32 %2570, 2
  br i1 %2621, label %2622, label %2650

; <label>:2622                                    ; preds = %2620
  %2623 = call float @dx.op.unary.f32(i32 24, float %2409)  ; Sqrt(value)
  %2624 = call float @dx.op.unary.f32(i32 24, float %2410)  ; Sqrt(value)
  %2625 = call float @dx.op.unary.f32(i32 24, float %2411)  ; Sqrt(value)
  %2626 = fadd fast float %2623, -5.000000e-01
  %2627 = fadd fast float %2624, -5.000000e-01
  %2628 = fadd fast float %2625, -5.000000e-01
  %2629 = fmul fast float %2626, %2575
  %2630 = fmul fast float %2627, %2575
  %2631 = fmul fast float %2628, %2575
  %2632 = fadd fast float %2629, 5.000000e-01
  %2633 = fadd fast float %2630, 5.000000e-01
  %2634 = fadd fast float %2631, 5.000000e-01
  %2635 = fmul fast float %2632, 2.000000e+00
  %2636 = fsub fast float 1.000000e+00, %2635
  %2637 = fmul fast float %2636, %2564
  %2638 = fadd fast float %2637, %2635
  %2639 = fmul fast float %2638, %2564
  %2640 = fmul fast float %2633, 2.000000e+00
  %2641 = fsub fast float 1.000000e+00, %2640
  %2642 = fmul fast float %2641, %2565
  %2643 = fadd fast float %2642, %2640
  %2644 = fmul fast float %2643, %2565
  %2645 = fmul fast float %2634, 2.000000e+00
  %2646 = fsub fast float 1.000000e+00, %2645
  %2647 = fmul fast float %2646, %2566
  %2648 = fadd fast float %2647, %2645
  %2649 = fmul fast float %2648, %2566
  br label %2650

; <label>:2650                                    ; preds = %2622, %2620, %2607, %2577, %2563
  %2651 = phi float [ %2564, %2563 ], [ %2639, %2622 ], [ %2564, %2620 ], [ %2617, %2607 ], [ %2587, %2577 ]
  %2652 = phi float [ %2565, %2563 ], [ %2644, %2622 ], [ %2565, %2620 ], [ %2618, %2607 ], [ %2588, %2577 ]
  %2653 = phi float [ %2566, %2563 ], [ %2649, %2622 ], [ %2566, %2620 ], [ %2619, %2607 ], [ %2589, %2577 ]
  %2654 = phi float [ %2567, %2563 ], [ %2567, %2622 ], [ %2567, %2620 ], [ %2567, %2607 ], [ %2599, %2577 ]
  %2655 = phi float [ %2568, %2563 ], [ %2568, %2622 ], [ %2568, %2620 ], [ %2568, %2607 ], [ %2600, %2577 ]
  %2656 = phi float [ %2569, %2563 ], [ %2569, %2622 ], [ %2569, %2620 ], [ %2569, %2607 ], [ %2601, %2577 ]
  %2657 = phi float [ %2003, %2563 ], [ %2003, %2622 ], [ %2003, %2620 ], [ %2003, %2607 ], [ %2592, %2577 ]
  %2658 = phi float [ %2006, %2563 ], [ %2006, %2622 ], [ %2006, %2620 ], [ %2006, %2607 ], [ %2604, %2577 ]
  %2659 = and i32 %2541, 12
  %2660 = icmp eq i32 %2659, 12
  br i1 %2660, label %2733, label %2661

; <label>:2661                                    ; preds = %2650
  %2662 = and i32 %2541, 2097184
  %2663 = icmp eq i32 %2662, 2097184
  %2664 = select i1 %2663, float %2189, float 0.000000e+00
  %2665 = and i32 %2541, 4194336
  %2666 = icmp eq i32 %2665, 4194336
  %2667 = select i1 %2666, float %2189, float 0.000000e+00
  %2668 = and i32 %2541, 8388640
  %2669 = icmp eq i32 %2668, 8388640
  %2670 = select i1 %2669, float %2189, float 0.000000e+00
  %2671 = icmp eq i32 %2659, 0
  br i1 %2671, label %2672, label %2685

; <label>:2672                                    ; preds = %2661
  %2673 = fsub fast float %2490, %1995
  %2674 = fsub fast float %2491, %1996
  %2675 = fmul fast float %2664, %2673
  %2676 = fmul fast float %2664, %2674
  %2677 = fadd fast float %2675, %1995
  %2678 = fadd fast float %2676, %1996
  %2679 = fsub fast float %2492, %2005
  %2680 = fmul fast float %2667, %2679
  %2681 = fadd fast float %2680, %2005
  %2682 = fsub fast float %2489, %2004
  %2683 = fmul fast float %2670, %2682
  %2684 = fadd fast float %2683, %2004
  br label %2733

; <label>:2685                                    ; preds = %2661
  %2686 = icmp eq i32 %2659, 4
  br i1 %2686, label %2687, label %2719

; <label>:2687                                    ; preds = %2685
  %2688 = fmul fast float %2664, %2490
  %2689 = fmul fast float %2664, %2491
  %2690 = fadd fast float %2688, %1995
  %2691 = fadd fast float %2689, %1996
  %2692 = call float @dx.op.binary.f32(i32 36, float %2005, float %2492)  ; FMin(a,b)
  %2693 = fsub fast float %2692, %2005
  %2694 = fmul fast float %2693, %2667
  %2695 = fadd fast float %2694, %2005
  %2696 = fadd fast float %2489, %2004
  %2697 = fmul fast float %2696, 0x3FF337FAE0000000
  %2698 = fmul fast float %2004, %2004
  %2699 = fmul fast float %2489, %2489
  %2700 = fadd fast float %2699, %2698
  %2701 = fmul fast float %2700, 0x3FE5152B00000000
  %2702 = fmul fast float %2004, 0xBFCC1F85E0000000
  %2703 = fmul fast float %2702, %2489
  %2704 = fadd fast float %2703, 0xBFE1363700000000
  %2705 = fadd fast float %2704, %2697
  %2706 = fsub fast float %2705, %2701
  %2707 = fmul fast float %2696, 0x3FBA6F0D00000000
  %2708 = fmul fast float %2700, 0x3FD0432880000000
  %2709 = fmul fast float %2004, 0xBFEF110800000000
  %2710 = fmul fast float %2709, %2489
  %2711 = fadd fast float %2710, 1.000000e+00
  %2712 = fsub fast float %2711, %2707
  %2713 = fadd fast float %2712, %2708
  %2714 = fdiv fast float %2706, %2713
  %2715 = call float @dx.op.unary.f32(i32 7, float %2714)  ; Saturate(value)
  %2716 = fsub fast float %2715, %2004
  %2717 = fmul fast float %2716, %2670
  %2718 = fadd fast float %2717, %2004
  br label %2733

; <label>:2719                                    ; preds = %2685
  %2720 = icmp eq i32 %2659, 8
  br i1 %2720, label %2721, label %2733

; <label>:2721                                    ; preds = %2719
  %2722 = fmul fast float %2664, %2490
  %2723 = fmul fast float %2664, %2491
  %2724 = fadd fast float %2722, %1995
  %2725 = fadd fast float %2723, %1996
  %2726 = call float @dx.op.binary.f32(i32 36, float %2005, float %2492)  ; FMin(a,b)
  %2727 = fsub fast float %2726, %2005
  %2728 = fmul fast float %2727, %2667
  %2729 = fadd fast float %2728, %2005
  %2730 = fsub fast float %2489, %2004
  %2731 = fmul fast float %2670, %2730
  %2732 = fadd fast float %2731, %2004
  br label %2733

; <label>:2733                                    ; preds = %2721, %2719, %2687, %2672, %2650, %2188, %2007, %1994
  %2734 = phi float [ %1995, %2650 ], [ %1995, %2188 ], [ %1995, %1994 ], [ %2724, %2721 ], [ %1995, %2719 ], [ %2690, %2687 ], [ %2677, %2672 ], [ %1995, %2007 ]
  %2735 = phi float [ %1996, %2650 ], [ %1996, %2188 ], [ %1996, %1994 ], [ %2725, %2721 ], [ %1996, %2719 ], [ %2691, %2687 ], [ %2678, %2672 ], [ %1996, %2007 ]
  %2736 = phi float [ %2651, %2650 ], [ %1997, %2188 ], [ %1997, %1994 ], [ %2651, %2721 ], [ %2651, %2719 ], [ %2651, %2687 ], [ %2651, %2672 ], [ %1997, %2007 ]
  %2737 = phi float [ %2652, %2650 ], [ %1998, %2188 ], [ %1998, %1994 ], [ %2652, %2721 ], [ %2652, %2719 ], [ %2652, %2687 ], [ %2652, %2672 ], [ %1998, %2007 ]
  %2738 = phi float [ %2653, %2650 ], [ %1999, %2188 ], [ %1999, %1994 ], [ %2653, %2721 ], [ %2653, %2719 ], [ %2653, %2687 ], [ %2653, %2672 ], [ %1999, %2007 ]
  %2739 = phi float [ %2654, %2650 ], [ %2000, %2188 ], [ %2000, %1994 ], [ %2654, %2721 ], [ %2654, %2719 ], [ %2654, %2687 ], [ %2654, %2672 ], [ %2000, %2007 ]
  %2740 = phi float [ %2655, %2650 ], [ %2001, %2188 ], [ %2001, %1994 ], [ %2655, %2721 ], [ %2655, %2719 ], [ %2655, %2687 ], [ %2655, %2672 ], [ %2001, %2007 ]
  %2741 = phi float [ %2656, %2650 ], [ %2002, %2188 ], [ %2002, %1994 ], [ %2656, %2721 ], [ %2656, %2719 ], [ %2656, %2687 ], [ %2656, %2672 ], [ %2002, %2007 ]
  %2742 = phi float [ %2657, %2650 ], [ %2003, %2188 ], [ %2003, %1994 ], [ %2657, %2721 ], [ %2657, %2719 ], [ %2657, %2687 ], [ %2657, %2672 ], [ %2003, %2007 ]
  %2743 = phi float [ %2004, %2650 ], [ %2004, %2188 ], [ %2004, %1994 ], [ %2732, %2721 ], [ %2004, %2719 ], [ %2718, %2687 ], [ %2684, %2672 ], [ %2004, %2007 ]
  %2744 = phi float [ %2005, %2650 ], [ %2005, %2188 ], [ %2005, %1994 ], [ %2729, %2721 ], [ %2005, %2719 ], [ %2695, %2687 ], [ %2681, %2672 ], [ %2005, %2007 ]
  %2745 = phi float [ %2658, %2650 ], [ %2006, %2188 ], [ %2006, %1994 ], [ %2658, %2721 ], [ %2658, %2719 ], [ %2658, %2687 ], [ %2658, %2672 ], [ %2006, %2007 ]
  br i1 %657, label %3472, label %2746

; <label>:2746                                    ; preds = %2733
  %2747 = icmp ult i32 %711, 4
  %2748 = add i32 %57, 72
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = add i32 %57, 76
  %2752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.i32 %2752, 0
  %2754 = or i32 %2753, %2750
  %2755 = icmp eq i32 %2754, 0
  br i1 %2755, label %3472, label %2756

; <label>:2756                                    ; preds = %2746
  %2757 = and i32 %2750, 262144
  %2758 = icmp ne i32 %2757, 0
  %2759 = select i1 %2758, float %64, float 1.000000e+00
  %2760 = select i1 %2758, float %65, float 0.000000e+00
  %2761 = select i1 %2758, float %66, float 0.000000e+00
  %2762 = select i1 %2758, float %67, float 1.000000e+00
  %2763 = select i1 %2758, float %68, float %92
  %2764 = select i1 %2758, float %69, float %93
  %2765 = add i32 %57, 332
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = lshr i32 %2767, 16
  %2769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2768)  ; LegacyF16ToF32(value)
  %2770 = fmul fast float %2769, 0x3F50624DE0000000
  %2771 = add i32 %57, 136
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2771, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = lshr i32 %2773, 16
  %2775 = and i32 %2774, 255
  %2776 = lshr i32 %2773, 24
  %2777 = add i32 %57, 340
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = and i32 %2779, 65535
  %2781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2780)  ; LegacyF16ToF32(value)
  %2782 = lshr i32 %2779, 16
  %2783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2782)  ; LegacyF16ToF32(value)
  %2784 = add i32 %57, 80
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = lshr i32 %2786, 22
  %2788 = shl nuw nsw i32 %2787, 5
  %2789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2788)  ; LegacyF16ToF32(value)
  %2790 = shl i32 %2786, 4
  %2791 = and i32 %2790, 32752
  %2792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2791)  ; LegacyF16ToF32(value)
  %2793 = lshr i32 %2786, 7
  %2794 = and i32 %2793, 32752
  %2795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2794)  ; LegacyF16ToF32(value)
  %2796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2797 = extractvalue %dx.types.CBufRet.f32 %2796, 3
  %2798 = fmul fast float %2797, 1.000000e+03
  %2799 = fmul fast float %2798, %646
  %2800 = call float @dx.op.unary.f32(i32 22, float %2799)  ; Frc(value)
  %2801 = fadd fast float %2800, %634
  %2802 = fmul fast float %2798, %648
  %2803 = call float @dx.op.unary.f32(i32 22, float %2802)  ; Frc(value)
  %2804 = fadd fast float %2803, %635
  %2805 = fmul fast float %2770, %2798
  %2806 = call float @dx.op.unary.f32(i32 22, float %2805)  ; Frc(value)
  %2807 = fmul fast float %2806, 0x401921FB60000000
  %2808 = fadd fast float %2807, %2789
  %2809 = call float @dx.op.unary.f32(i32 13, float %2808)  ; Sin(value)
  %2810 = call float @dx.op.unary.f32(i32 12, float %2808)  ; Cos(value)
  %2811 = fsub fast float -0.000000e+00, %2809
  %2812 = fadd fast float %2763, -5.000000e-01
  %2813 = fadd fast float %2764, -5.000000e-01
  %2814 = fmul fast float %2781, %2812
  %2815 = fmul fast float %2783, %2813
  %2816 = fadd fast float %2814, 5.000000e-01
  %2817 = fadd fast float %2815, 5.000000e-01
  %2818 = fmul fast float %2792, %2816
  %2819 = fmul fast float %2795, %2817
  %2820 = fmul fast float %2810, %2818
  %2821 = call float @dx.op.tertiary.f32(i32 46, float %2811, float %2819, float %2820)  ; FMad(a,b,c)
  %2822 = fmul fast float %2809, %2818
  %2823 = call float @dx.op.tertiary.f32(i32 46, float %2810, float %2819, float %2822)  ; FMad(a,b,c)
  %2824 = fadd fast float %2801, %2821
  %2825 = fadd fast float %2804, %2823
  %2826 = icmp ugt i32 %2775, 1
  %2827 = icmp ugt i32 %2773, 33554431
  %2828 = or i1 %2827, %2826
  br i1 %2828, label %2829, label %2854

; <label>:2829                                    ; preds = %2756
  %2830 = add i32 %57, 276
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = lshr i32 %2832, 16
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = fmul fast float %2797, %2834
  %2836 = call float @dx.op.unary.f32(i32 22, float %2835)  ; Frc(value)
  %2837 = mul nuw nsw i32 %2775, %2776
  %2838 = uitofp i32 %2837 to float
  %2839 = fmul fast float %2836, %2838
  %2840 = call float @dx.op.unary.f32(i32 27, float %2839)  ; Round_ni(value)
  %2841 = fptoui float %2840 to i32
  %2842 = urem i32 %2841, %2775
  %2843 = udiv i32 %2841, %2776
  %2844 = call float @dx.op.unary.f32(i32 22, float %2824)  ; Frc(value)
  %2845 = call float @dx.op.unary.f32(i32 22, float %2825)  ; Frc(value)
  %2846 = uitofp i32 %2842 to float
  %2847 = uitofp i32 %2843 to float
  %2848 = fadd fast float %2844, %2846
  %2849 = fadd fast float %2845, %2847
  %2850 = uitofp i32 %2775 to float
  %2851 = uitofp i32 %2776 to float
  %2852 = fdiv fast float %2848, %2850
  %2853 = fdiv fast float %2849, %2851
  br label %2854

; <label>:2854                                    ; preds = %2829, %2756
  %2855 = phi float [ %2852, %2829 ], [ %2824, %2756 ]
  %2856 = phi float [ %2853, %2829 ], [ %2825, %2756 ]
  %2857 = and i32 %2750, 256
  %2858 = icmp eq i32 %2857, 0
  br i1 %2858, label %2905, label %2859

; <label>:2859                                    ; preds = %2854
  %2860 = add i32 %57, 484
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2860, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = add i32 %2862, 0
  %2864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2863, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2865 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2864, %dx.types.Handle %111, float %2855, float %2856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2866 = extractvalue %dx.types.ResRet.f32 %2865, 0
  %2867 = add i32 %57, 148
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = shl i32 %2869, 4
  %2871 = and i32 %2870, 32752
  %2872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2871)  ; LegacyF16ToF32(value)
  %2873 = lshr i32 %2869, 7
  %2874 = and i32 %2873, 32752
  %2875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2874)  ; LegacyF16ToF32(value)
  %2876 = fsub fast float 1.000000e+00, %706
  %2877 = call float @dx.op.binary.f32(i32 35, float %2876, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2878 = bitcast float %706 to i32
  %2879 = sitofp i32 %2878 to float
  %2880 = fadd fast float %2879, 0xC1CFBF8940000000
  %2881 = fmul fast float %2875, %2880
  %2882 = fadd fast float %2881, 0x41CFBF8940000000
  %2883 = fptosi float %2882 to i32
  %2884 = bitcast i32 %2883 to float
  %2885 = bitcast float %2877 to i32
  %2886 = sitofp i32 %2885 to float
  %2887 = fadd fast float %2886, 0xC1CFBF8940000000
  %2888 = fmul fast float %2887, %2875
  %2889 = fadd fast float %2888, 0x41CFBF8940000000
  %2890 = fptosi float %2889 to i32
  %2891 = bitcast i32 %2890 to float
  %2892 = fmul fast float %2884, %2872
  %2893 = fmul fast float %2891, %2872
  %2894 = fsub fast float %2877, %2892
  %2895 = fadd fast float %2893, %2877
  %2896 = call float @dx.op.unary.f32(i32 7, float %2894)  ; Saturate(value)
  %2897 = call float @dx.op.unary.f32(i32 7, float %2895)  ; Saturate(value)
  %2898 = fsub fast float %2866, %2896
  %2899 = fsub fast float %2897, %2896
  %2900 = bitcast float %2899 to i32
  %2901 = sub nsw i32 2129859010, %2900
  %2902 = bitcast i32 %2901 to float
  %2903 = fmul fast float %2902, %2898
  %2904 = call float @dx.op.unary.f32(i32 7, float %2903)  ; Saturate(value)
  br label %2905

; <label>:2905                                    ; preds = %2859, %2854
  %2906 = phi float [ %2904, %2859 ], [ %706, %2854 ]
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = and i32 %2908, 128
  %2910 = icmp eq i32 %2909, 0
  br i1 %2910, label %2927, label %2911

; <label>:2911                                    ; preds = %2905
  %2912 = add i32 %57, 468
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = add i32 %2914, 0
  %2916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2916, %dx.types.Handle %111, float %2855, float %2856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2918 = extractvalue %dx.types.ResRet.f32 %2917, 0
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = and i32 %2920, 524288
  %2922 = icmp ne i32 %2921, 0
  %2923 = fcmp fast ogt float %2918, 0x3FE0101020000000
  %2924 = select i1 %2923, float 1.000000e+00, float 0.000000e+00
  %2925 = select i1 %2922, float %2924, float %2918
  %2926 = fmul fast float %2925, %2906
  br label %2927

; <label>:2927                                    ; preds = %2911, %2905
  %2928 = phi float [ %2926, %2911 ], [ %2906, %2905 ]
  %2929 = fcmp fast ult float %2928, 0x3F70101020000000
  br i1 %2929, label %3472, label %2930

; <label>:2930                                    ; preds = %2927
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = and i32 %2932, 16
  %2934 = icmp eq i32 %2933, 0
  br i1 %2934, label %3133, label %2935

; <label>:2935                                    ; preds = %2930
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2771, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = add i32 %57, 420
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = add i32 %2940, 0
  %2942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2943 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2942, %dx.types.Handle %110, float %2855, float %2856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2944 = extractvalue %dx.types.ResRet.f32 %2943, 0
  %2945 = extractvalue %dx.types.ResRet.f32 %2943, 1
  %2946 = extractvalue %dx.types.ResRet.f32 %2943, 2
  %2947 = extractvalue %dx.types.ResRet.f32 %2943, 3
  %2948 = and i32 %2937, 255
  %2949 = uitofp i32 %2948 to float
  %2950 = lshr i32 %2937, 8
  %2951 = and i32 %2950, 255
  %2952 = uitofp i32 %2951 to float
  %2953 = fmul fast float %2947, %2949
  %2954 = fadd fast float %2953, %2952
  %2955 = fmul fast float %2954, 0x3F70101000000000
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = and i32 %2957, 512
  %2959 = icmp eq i32 %2958, 0
  br i1 %2959, label %2968, label %2960

; <label>:2960                                    ; preds = %2935
  %2961 = add i32 %57, 504
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = add i32 %2963, 0
  %2965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2964, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2966 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2965, %dx.types.Handle %111, float %2855, float %2856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2967 = extractvalue %dx.types.ResRet.f32 %2966, 0
  br label %2968

; <label>:2968                                    ; preds = %2960, %2935
  %2969 = phi float [ %2967, %2960 ], [ 1.000000e+00, %2935 ]
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 33554432
  %2973 = icmp eq i32 %2972, 0
  br i1 %2973, label %3080, label %2974

; <label>:2974                                    ; preds = %2968
  %2975 = add i32 %57, 272
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = and i32 %2977, 65535
  %2979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2978)  ; LegacyF16ToF32(value)
  %2980 = lshr i32 %2977, 16
  %2981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2980)  ; LegacyF16ToF32(value)
  %2982 = add i32 %57, 276
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = and i32 %2984, 65535
  %2986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2985)  ; LegacyF16ToF32(value)
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = lshr i32 %2988, 24
  %2990 = uitofp i32 %2989 to float
  %2991 = fmul fast float %2990, 0x3F70101020000000
  %2992 = and i32 %2988, 255
  %2993 = uitofp i32 %2992 to float
  %2994 = fmul fast float %2993, 0x3F70101020000000
  %2995 = lshr i32 %2988, 8
  %2996 = and i32 %2995, 255
  %2997 = uitofp i32 %2996 to float
  %2998 = fmul fast float %2997, 0x3F70101020000000
  %2999 = lshr i32 %2988, 16
  %3000 = and i32 %2999, 255
  %3001 = uitofp i32 %3000 to float
  %3002 = fmul fast float %3001, 0x3F70101020000000
  %3003 = add i32 %57, 268
  %3004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3003, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.i32 %3004, 0
  %3006 = lshr i32 %3005, 24
  %3007 = uitofp i32 %3006 to float
  %3008 = fmul fast float %3007, 0x3F70101020000000
  %3009 = and i32 %3005, 255
  %3010 = uitofp i32 %3009 to float
  %3011 = fmul fast float %3010, 0x3F70101020000000
  %3012 = lshr i32 %3005, 8
  %3013 = and i32 %3012, 255
  %3014 = uitofp i32 %3013 to float
  %3015 = fmul fast float %3014, 0x3F70101020000000
  %3016 = lshr i32 %3005, 16
  %3017 = and i32 %3016, 255
  %3018 = uitofp i32 %3017 to float
  %3019 = fmul fast float %3018, 0x3F70101020000000
  %3020 = bitcast float %2944 to i32
  %3021 = ashr i32 %3020, 1
  %3022 = sub nsw i32 1597463174, %3021
  %3023 = bitcast i32 %3022 to float
  %3024 = fmul fast float %2944, 5.000000e-01
  %3025 = fmul fast float %3023, %3023
  %3026 = fmul fast float %3025, %3024
  %3027 = fsub fast float 1.500000e+00, %3026
  %3028 = fmul fast float %3023, %2944
  %3029 = fmul fast float %3028, %3027
  %3030 = bitcast float %2945 to i32
  %3031 = ashr i32 %3030, 1
  %3032 = sub nsw i32 1597463174, %3031
  %3033 = bitcast i32 %3032 to float
  %3034 = fmul fast float %2945, 5.000000e-01
  %3035 = fmul fast float %3033, %3033
  %3036 = fmul fast float %3035, %3034
  %3037 = fsub fast float 1.500000e+00, %3036
  %3038 = fmul fast float %3033, %2945
  %3039 = fmul fast float %3038, %3037
  %3040 = bitcast float %2946 to i32
  %3041 = ashr i32 %3040, 1
  %3042 = sub nsw i32 1597463174, %3041
  %3043 = bitcast i32 %3042 to float
  %3044 = fmul fast float %2946, 5.000000e-01
  %3045 = fmul fast float %3043, %3043
  %3046 = fmul fast float %3045, %3044
  %3047 = fsub fast float 1.500000e+00, %3046
  %3048 = fmul fast float %3043, %2946
  %3049 = fmul fast float %3048, %3047
  %3050 = fsub fast float %3029, %3011
  %3051 = fsub fast float %3039, %3015
  %3052 = fsub fast float %3049, %3019
  %3053 = fmul fast float %3050, %2979
  %3054 = fmul fast float %3051, %2981
  %3055 = fmul fast float %3052, %2986
  %3056 = fadd fast float %3053, %2994
  %3057 = fadd fast float %3054, %2998
  %3058 = fadd fast float %3055, %3002
  %3059 = call float @dx.op.unary.f32(i32 7, float %3056)  ; Saturate(value)
  %3060 = call float @dx.op.unary.f32(i32 7, float %3057)  ; Saturate(value)
  %3061 = call float @dx.op.unary.f32(i32 7, float %3058)  ; Saturate(value)
  %3062 = fmul fast float %3059, %3059
  %3063 = fmul fast float %3060, %3060
  %3064 = fmul fast float %3061, %3061
  %3065 = fsub fast float %3062, %2944
  %3066 = fsub fast float %3063, %2945
  %3067 = fsub fast float %3064, %2946
  %3068 = fmul fast float %3065, %2969
  %3069 = fmul fast float %3066, %2969
  %3070 = fmul fast float %3067, %2969
  %3071 = fadd fast float %3068, %2944
  %3072 = fadd fast float %3069, %2945
  %3073 = fadd fast float %3070, %2946
  %3074 = fadd fast float %2991, %2955
  %3075 = fsub fast float %3074, %3008
  %3076 = call float @dx.op.unary.f32(i32 7, float %3075)  ; Saturate(value)
  %3077 = fsub fast float %3076, %2955
  %3078 = fmul fast float %3077, %2969
  %3079 = fadd fast float %3078, %2955
  br label %3133

; <label>:3080                                    ; preds = %2968
  %3081 = and i32 %2971, 134217728
  %3082 = icmp eq i32 %3081, 0
  br i1 %3082, label %3117, label %3083

; <label>:3083                                    ; preds = %3080
  %3084 = call float @dx.op.unary.f32(i32 24, float %622)  ; Sqrt(value)
  %3085 = call float @dx.op.unary.f32(i32 24, float %623)  ; Sqrt(value)
  %3086 = call float @dx.op.unary.f32(i32 24, float %624)  ; Sqrt(value)
  %3087 = fadd fast float %3084, -5.000000e-01
  %3088 = fadd fast float %3085, -5.000000e-01
  %3089 = fadd fast float %3086, -5.000000e-01
  %3090 = fmul fast float %3087, %2969
  %3091 = fmul fast float %3088, %2969
  %3092 = fmul fast float %3089, %2969
  %3093 = fadd fast float %3090, 5.000000e-01
  %3094 = fadd fast float %3091, 5.000000e-01
  %3095 = fadd fast float %3092, 5.000000e-01
  %3096 = call float @dx.op.unary.f32(i32 24, float %2944)  ; Sqrt(value)
  %3097 = call float @dx.op.unary.f32(i32 24, float %2945)  ; Sqrt(value)
  %3098 = call float @dx.op.unary.f32(i32 24, float %2946)  ; Sqrt(value)
  %3099 = fmul fast float %3093, 2.000000e+00
  %3100 = fsub fast float 1.000000e+00, %3099
  %3101 = fmul fast float %3100, %3096
  %3102 = fadd fast float %3101, %3099
  %3103 = fmul fast float %3102, %3096
  %3104 = fmul fast float %3094, 2.000000e+00
  %3105 = fsub fast float 1.000000e+00, %3104
  %3106 = fmul fast float %3105, %3097
  %3107 = fadd fast float %3106, %3104
  %3108 = fmul fast float %3107, %3097
  %3109 = fmul fast float %3095, 2.000000e+00
  %3110 = fsub fast float 1.000000e+00, %3109
  %3111 = fmul fast float %3110, %3098
  %3112 = fadd fast float %3111, %3109
  %3113 = fmul fast float %3112, %3098
  %3114 = fmul fast float %3103, %3103
  %3115 = fmul fast float %3108, %3108
  %3116 = fmul fast float %3113, %3113
  br label %3133

; <label>:3117                                    ; preds = %3080
  %3118 = fmul fast float %622, %622
  %3119 = fmul fast float %623, %623
  %3120 = fmul fast float %624, %624
  %3121 = fadd fast float %3118, -1.000000e+00
  %3122 = fadd fast float %3119, -1.000000e+00
  %3123 = fadd fast float %3120, -1.000000e+00
  %3124 = fmul fast float %2969, %3121
  %3125 = fmul fast float %2969, %3122
  %3126 = fmul fast float %2969, %3123
  %3127 = fadd fast float %3124, 1.000000e+00
  %3128 = fadd fast float %3125, 1.000000e+00
  %3129 = fadd fast float %3126, 1.000000e+00
  %3130 = fmul fast float %3127, %2944
  %3131 = fmul fast float %3128, %2945
  %3132 = fmul fast float %3129, %2946
  br label %3133

; <label>:3133                                    ; preds = %3117, %3083, %2974, %2930
  %3134 = phi float [ %3079, %2974 ], [ %2955, %3083 ], [ %2955, %3117 ], [ 0x3FA23C0BE0000000, %2930 ]
  %3135 = phi float [ %3071, %2974 ], [ %3114, %3083 ], [ %3130, %3117 ], [ 1.000000e+00, %2930 ]
  %3136 = phi float [ %3072, %2974 ], [ %3115, %3083 ], [ %3131, %3117 ], [ 1.000000e+00, %2930 ]
  %3137 = phi float [ %3073, %2974 ], [ %3116, %3083 ], [ %3132, %3117 ], [ 1.000000e+00, %2930 ]
  %3138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3139 = extractvalue %dx.types.CBufRet.i32 %3138, 1
  %3140 = and i32 %3139, 1
  %3141 = icmp ne i32 %3140, 0
  %3142 = add i32 %57, 356
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = and i32 %3144, 32
  %3146 = icmp ne i32 %3145, 0
  %3147 = and i1 %3141, %3146
  %3148 = select i1 %3147, float 1.000000e+00, float %3135
  %3149 = select i1 %3147, float 0x3FD3333340000000, float %3136
  %3150 = select i1 %3147, float 0x3FD3333340000000, float %3137
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = and i32 %3152, 32
  %3154 = icmp eq i32 %3153, 0
  br i1 %3154, label %3227, label %3155

; <label>:3155                                    ; preds = %3133
  %3156 = add i32 %57, 140
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3156, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = add i32 %57, 436
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = add i32 %3161, 0
  %3163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3164 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3163, %dx.types.Handle %110, float %2855, float %2856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3165 = extractvalue %dx.types.ResRet.f32 %3164, 0
  %3166 = extractvalue %dx.types.ResRet.f32 %3164, 1
  %3167 = extractvalue %dx.types.ResRet.f32 %3164, 2
  %3168 = extractvalue %dx.types.ResRet.f32 %3164, 3
  %3169 = and i32 %3158, 255
  %3170 = uitofp i32 %3169 to float
  %3171 = lshr i32 %3158, 8
  %3172 = and i32 %3171, 255
  %3173 = uitofp i32 %3172 to float
  %3174 = lshr i32 %3158, 16
  %3175 = and i32 %3174, 255
  %3176 = uitofp i32 %3175 to float
  %3177 = fmul fast float %3176, 0x3F70101000000000
  %3178 = fmul fast float %3165, %3170
  %3179 = fadd fast float %3178, %3173
  %3180 = fmul fast float %3179, 0x3F70101000000000
  %3181 = fadd fast float %3166, -5.000000e-01
  %3182 = fadd fast float %3168, -5.000000e-01
  %3183 = fmul fast float %3181, %3177
  %3184 = fmul fast float %3182, %3177
  %3185 = fadd fast float %3183, 5.000000e-01
  %3186 = fadd fast float %3184, 5.000000e-01
  %3187 = fmul fast float %3185, 2.000000e+00
  %3188 = fadd fast float %3187, -1.000000e+00
  %3189 = fmul fast float %3186, 2.000000e+00
  %3190 = fadd fast float %3189, -1.000000e+00
  %3191 = fadd fast float %3188, %3190
  %3192 = fmul fast float %3191, 5.000000e-01
  %3193 = fsub fast float %3188, %3190
  %3194 = fmul fast float %3193, 5.000000e-01
  %3195 = call float @dx.op.unary.f32(i32 6, float %3192)  ; FAbs(value)
  %3196 = fsub fast float 1.000000e+00, %3195
  %3197 = call float @dx.op.unary.f32(i32 6, float %3194)  ; FAbs(value)
  %3198 = fsub fast float %3196, %3197
  %3199 = call float @dx.op.dot3.f32(i32 55, float %3192, float %3194, float %3198, float %3192, float %3194, float %3198)  ; Dot3(ax,ay,az,bx,by,bz)
  %3200 = call float @dx.op.unary.f32(i32 25, float %3199)  ; Rsqrt(value)
  %3201 = fmul fast float %3192, %3200
  %3202 = fmul fast float %3194, %3200
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = and i32 %3204, 67108864
  %3206 = icmp eq i32 %3205, 0
  br i1 %3206, label %3223, label %3207

; <label>:3207                                    ; preds = %3155
  %3208 = add i32 %57, 328
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = and i32 %3210, 65535
  %3212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3211)  ; LegacyF16ToF32(value)
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = and i32 %3214, 65535
  %3216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3215)  ; LegacyF16ToF32(value)
  %3217 = lshr i32 %3210, 16
  %3218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3217)  ; LegacyF16ToF32(value)
  %3219 = fsub fast float %3180, %3218
  %3220 = fmul fast float %3219, %3212
  %3221 = fadd fast float %3220, %3216
  %3222 = call float @dx.op.unary.f32(i32 7, float %3221)  ; Saturate(value)
  br label %3223

; <label>:3223                                    ; preds = %3207, %3155
  %3224 = phi float [ %3222, %3207 ], [ %3180, %3155 ]
  %3225 = call float @dx.op.dot2.f32(i32 54, float %3201, float %3202, float %2759, float %2760)  ; Dot2(ax,ay,bx,by)
  %3226 = call float @dx.op.dot2.f32(i32 54, float %3201, float %3202, float %2761, float %2762)  ; Dot2(ax,ay,bx,by)
  br label %3227

; <label>:3227                                    ; preds = %3223, %3133
  %3228 = phi float [ %3224, %3223 ], [ 0x3FD6666660000000, %3133 ]
  %3229 = phi float [ %3225, %3223 ], [ 0.000000e+00, %3133 ]
  %3230 = phi float [ %3226, %3223 ], [ 0.000000e+00, %3133 ]
  %3231 = phi float [ %3167, %3223 ], [ 1.000000e+00, %3133 ]
  %3232 = add i32 %57, 208
  %3233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3232, i32 undef)  ; BufferLoad(srv,index,wot)
  %3234 = extractvalue %dx.types.ResRet.i32 %3233, 0
  %3235 = lshr i32 %3234, 22
  %3236 = shl nuw nsw i32 %3235, 5
  %3237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3236)  ; LegacyF16ToF32(value)
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = and i32 %3239, 64
  %3241 = icmp eq i32 %3240, 0
  br i1 %3241, label %3275, label %3242

; <label>:3242                                    ; preds = %3227
  %3243 = add i32 %57, 452
  %3244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3243, i32 undef)  ; BufferLoad(srv,index,wot)
  %3245 = extractvalue %dx.types.ResRet.i32 %3244, 0
  %3246 = add i32 %3245, 0
  %3247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3246, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = and i32 %3249, 131072
  %3251 = icmp eq i32 %3250, 0
  %3252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3247, %dx.types.Handle %110, float %2855, float %2856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3253 = extractvalue %dx.types.ResRet.f32 %3252, 0
  %3254 = extractvalue %dx.types.ResRet.f32 %3252, 1
  %3255 = extractvalue %dx.types.ResRet.f32 %3252, 2
  %3256 = fmul fast float %605, %3253
  %3257 = fmul fast float %606, %3254
  %3258 = fmul fast float %607, %3255
  br i1 %3251, label %3265, label %3259

; <label>:3259                                    ; preds = %3242
  %3260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.f32 %3260, 0
  %3262 = fmul fast float %3261, %3256
  %3263 = fmul fast float %3261, %3257
  %3264 = fmul fast float %3261, %3258
  br label %3265

; <label>:3265                                    ; preds = %3259, %3242
  %3266 = phi float [ %3262, %3259 ], [ %3256, %3242 ]
  %3267 = phi float [ %3263, %3259 ], [ %3257, %3242 ]
  %3268 = phi float [ %3264, %3259 ], [ %3258, %3242 ]
  %3269 = fmul fast float %3266, %3237
  %3270 = select i1 %273, float %3269, float %3266
  %3271 = call float @dx.op.dot3.f32(i32 55, float %3270, float %3267, float %3268, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3272 = select i1 %273, float 0.000000e+00, float %3266
  %3273 = select i1 %273, float %3271, float %3267
  %3274 = select i1 %273, float 0.000000e+00, float %3268
  br label %3275

; <label>:3275                                    ; preds = %3265, %3227
  %3276 = phi float [ %3272, %3265 ], [ 0.000000e+00, %3227 ]
  %3277 = phi float [ %3273, %3265 ], [ 0.000000e+00, %3227 ]
  %3278 = phi float [ %3274, %3265 ], [ 0.000000e+00, %3227 ]
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = add i32 %57, 144
  %3282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.i32 %3282, 0
  %3284 = and i32 %3283, 255
  %3285 = uitofp i32 %3284 to float
  %3286 = lshr i32 %3283, 8
  %3287 = and i32 %3286, 255
  %3288 = uitofp i32 %3287 to float
  %3289 = call float @dx.op.dot3.f32(i32 55, float %3148, float %3149, float %3150, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3290 = fmul fast float %3288, %3289
  %3291 = fadd fast float %3290, %3285
  %3292 = fmul fast float %3291, 0x3F70101020000000
  %3293 = call float @dx.op.unary.f32(i32 7, float %3292)  ; Saturate(value)
  br i1 %2747, label %3294, label %3302

; <label>:3294                                    ; preds = %3275
  %3295 = fsub fast float 1.000000e+00, %2928
  %3296 = fmul fast float %3295, %2736
  %3297 = fmul fast float %3295, %2737
  %3298 = fmul fast float %3295, %2738
  %3299 = fmul fast float %3295, %2739
  %3300 = fmul fast float %3295, %2740
  %3301 = fmul fast float %3295, %2741
  br label %3302

; <label>:3302                                    ; preds = %3294, %3275
  %3303 = phi float [ %3296, %3294 ], [ %2736, %3275 ]
  %3304 = phi float [ %3297, %3294 ], [ %2737, %3275 ]
  %3305 = phi float [ %3298, %3294 ], [ %2738, %3275 ]
  %3306 = phi float [ %3299, %3294 ], [ %2739, %3275 ]
  %3307 = phi float [ %3300, %3294 ], [ %2740, %3275 ]
  %3308 = phi float [ %3301, %3294 ], [ %2741, %3275 ]
  %3309 = and i32 %3280, 3
  %3310 = icmp eq i32 %3309, 3
  br i1 %3310, label %3389, label %3311

; <label>:3311                                    ; preds = %3302
  %3312 = and i32 %3280, 16
  %3313 = icmp ne i32 %3312, 0
  %3314 = select i1 %3313, float %2928, float 0.000000e+00
  %3315 = icmp eq i32 %3309, 0
  br i1 %3315, label %3316, label %3344

; <label>:3316                                    ; preds = %3311
  %3317 = and i32 %3280, 64
  %3318 = icmp ne i32 %3317, 0
  %3319 = select i1 %3318, float %2928, float 0.000000e+00
  %3320 = fsub fast float %3148, %3303
  %3321 = fsub fast float %3149, %3304
  %3322 = fsub fast float %3150, %3305
  %3323 = fmul fast float %3314, %3320
  %3324 = fmul fast float %3314, %3321
  %3325 = fmul fast float %3314, %3322
  %3326 = fadd fast float %3323, %3303
  %3327 = fadd fast float %3324, %3304
  %3328 = fadd fast float %3325, %3305
  %3329 = fsub fast float %3134, %2742
  %3330 = fmul fast float %3314, %3329
  %3331 = fadd fast float %3330, %2742
  %3332 = fsub fast float %3276, %3306
  %3333 = fsub fast float %3277, %3307
  %3334 = fsub fast float %3278, %3308
  %3335 = fmul fast float %3319, %3332
  %3336 = fmul fast float %3319, %3333
  %3337 = fmul fast float %3319, %3334
  %3338 = fadd fast float %3335, %3306
  %3339 = fadd fast float %3336, %3307
  %3340 = fadd fast float %3337, %3308
  %3341 = fsub fast float %3293, %2745
  %3342 = fmul fast float %3314, %3341
  %3343 = fadd fast float %3342, %2745
  br label %3389

; <label>:3344                                    ; preds = %3311
  %3345 = icmp eq i32 %3309, 1
  br i1 %3345, label %3346, label %3359

; <label>:3346                                    ; preds = %3344
  %3347 = fadd fast float %3148, -1.000000e+00
  %3348 = fadd fast float %3149, -1.000000e+00
  %3349 = fadd fast float %3150, -1.000000e+00
  %3350 = fmul fast float %3314, %3347
  %3351 = fmul fast float %3314, %3348
  %3352 = fmul fast float %3314, %3349
  %3353 = fadd fast float %3350, 1.000000e+00
  %3354 = fadd fast float %3351, 1.000000e+00
  %3355 = fadd fast float %3352, 1.000000e+00
  %3356 = fmul fast float %3353, %3303
  %3357 = fmul fast float %3354, %3304
  %3358 = fmul fast float %3355, %3305
  br label %3389

; <label>:3359                                    ; preds = %3344
  %3360 = icmp eq i32 %3309, 2
  br i1 %3360, label %3361, label %3389

; <label>:3361                                    ; preds = %3359
  %3362 = call float @dx.op.unary.f32(i32 24, float %3148)  ; Sqrt(value)
  %3363 = call float @dx.op.unary.f32(i32 24, float %3149)  ; Sqrt(value)
  %3364 = call float @dx.op.unary.f32(i32 24, float %3150)  ; Sqrt(value)
  %3365 = fadd fast float %3362, -5.000000e-01
  %3366 = fadd fast float %3363, -5.000000e-01
  %3367 = fadd fast float %3364, -5.000000e-01
  %3368 = fmul fast float %3365, %3314
  %3369 = fmul fast float %3366, %3314
  %3370 = fmul fast float %3367, %3314
  %3371 = fadd fast float %3368, 5.000000e-01
  %3372 = fadd fast float %3369, 5.000000e-01
  %3373 = fadd fast float %3370, 5.000000e-01
  %3374 = fmul fast float %3371, 2.000000e+00
  %3375 = fsub fast float 1.000000e+00, %3374
  %3376 = fmul fast float %3375, %3303
  %3377 = fadd fast float %3376, %3374
  %3378 = fmul fast float %3377, %3303
  %3379 = fmul fast float %3372, 2.000000e+00
  %3380 = fsub fast float 1.000000e+00, %3379
  %3381 = fmul fast float %3380, %3304
  %3382 = fadd fast float %3381, %3379
  %3383 = fmul fast float %3382, %3304
  %3384 = fmul fast float %3373, 2.000000e+00
  %3385 = fsub fast float 1.000000e+00, %3384
  %3386 = fmul fast float %3385, %3305
  %3387 = fadd fast float %3386, %3384
  %3388 = fmul fast float %3387, %3305
  br label %3389

; <label>:3389                                    ; preds = %3361, %3359, %3346, %3316, %3302
  %3390 = phi float [ %3303, %3302 ], [ %3378, %3361 ], [ %3303, %3359 ], [ %3356, %3346 ], [ %3326, %3316 ]
  %3391 = phi float [ %3304, %3302 ], [ %3383, %3361 ], [ %3304, %3359 ], [ %3357, %3346 ], [ %3327, %3316 ]
  %3392 = phi float [ %3305, %3302 ], [ %3388, %3361 ], [ %3305, %3359 ], [ %3358, %3346 ], [ %3328, %3316 ]
  %3393 = phi float [ %3306, %3302 ], [ %3306, %3361 ], [ %3306, %3359 ], [ %3306, %3346 ], [ %3338, %3316 ]
  %3394 = phi float [ %3307, %3302 ], [ %3307, %3361 ], [ %3307, %3359 ], [ %3307, %3346 ], [ %3339, %3316 ]
  %3395 = phi float [ %3308, %3302 ], [ %3308, %3361 ], [ %3308, %3359 ], [ %3308, %3346 ], [ %3340, %3316 ]
  %3396 = phi float [ %2742, %3302 ], [ %2742, %3361 ], [ %2742, %3359 ], [ %2742, %3346 ], [ %3331, %3316 ]
  %3397 = phi float [ %2745, %3302 ], [ %2745, %3361 ], [ %2745, %3359 ], [ %2745, %3346 ], [ %3343, %3316 ]
  %3398 = and i32 %3280, 12
  %3399 = icmp eq i32 %3398, 12
  br i1 %3399, label %3472, label %3400

; <label>:3400                                    ; preds = %3389
  %3401 = and i32 %3280, 2097184
  %3402 = icmp eq i32 %3401, 2097184
  %3403 = select i1 %3402, float %2928, float 0.000000e+00
  %3404 = and i32 %3280, 4194336
  %3405 = icmp eq i32 %3404, 4194336
  %3406 = select i1 %3405, float %2928, float 0.000000e+00
  %3407 = and i32 %3280, 8388640
  %3408 = icmp eq i32 %3407, 8388640
  %3409 = select i1 %3408, float %2928, float 0.000000e+00
  %3410 = icmp eq i32 %3398, 0
  br i1 %3410, label %3411, label %3424

; <label>:3411                                    ; preds = %3400
  %3412 = fsub fast float %3229, %2734
  %3413 = fsub fast float %3230, %2735
  %3414 = fmul fast float %3403, %3412
  %3415 = fmul fast float %3403, %3413
  %3416 = fadd fast float %3414, %2734
  %3417 = fadd fast float %3415, %2735
  %3418 = fsub fast float %3231, %2744
  %3419 = fmul fast float %3406, %3418
  %3420 = fadd fast float %3419, %2744
  %3421 = fsub fast float %3228, %2743
  %3422 = fmul fast float %3409, %3421
  %3423 = fadd fast float %3422, %2743
  br label %3472

; <label>:3424                                    ; preds = %3400
  %3425 = icmp eq i32 %3398, 4
  br i1 %3425, label %3426, label %3458

; <label>:3426                                    ; preds = %3424
  %3427 = fmul fast float %3403, %3229
  %3428 = fmul fast float %3403, %3230
  %3429 = fadd fast float %3427, %2734
  %3430 = fadd fast float %3428, %2735
  %3431 = call float @dx.op.binary.f32(i32 36, float %2744, float %3231)  ; FMin(a,b)
  %3432 = fsub fast float %3431, %2744
  %3433 = fmul fast float %3432, %3406
  %3434 = fadd fast float %3433, %2744
  %3435 = fadd fast float %3228, %2743
  %3436 = fmul fast float %3435, 0x3FF337FAE0000000
  %3437 = fmul fast float %2743, %2743
  %3438 = fmul fast float %3228, %3228
  %3439 = fadd fast float %3438, %3437
  %3440 = fmul fast float %3439, 0x3FE5152B00000000
  %3441 = fmul fast float %2743, 0xBFCC1F85E0000000
  %3442 = fmul fast float %3441, %3228
  %3443 = fadd fast float %3442, 0xBFE1363700000000
  %3444 = fadd fast float %3443, %3436
  %3445 = fsub fast float %3444, %3440
  %3446 = fmul fast float %3435, 0x3FBA6F0D00000000
  %3447 = fmul fast float %3439, 0x3FD0432880000000
  %3448 = fmul fast float %2743, 0xBFEF110800000000
  %3449 = fmul fast float %3448, %3228
  %3450 = fadd fast float %3449, 1.000000e+00
  %3451 = fsub fast float %3450, %3446
  %3452 = fadd fast float %3451, %3447
  %3453 = fdiv fast float %3445, %3452
  %3454 = call float @dx.op.unary.f32(i32 7, float %3453)  ; Saturate(value)
  %3455 = fsub fast float %3454, %2743
  %3456 = fmul fast float %3455, %3409
  %3457 = fadd fast float %3456, %2743
  br label %3472

; <label>:3458                                    ; preds = %3424
  %3459 = icmp eq i32 %3398, 8
  br i1 %3459, label %3460, label %3472

; <label>:3460                                    ; preds = %3458
  %3461 = fmul fast float %3403, %3229
  %3462 = fmul fast float %3403, %3230
  %3463 = fadd fast float %3461, %2734
  %3464 = fadd fast float %3462, %2735
  %3465 = call float @dx.op.binary.f32(i32 36, float %2744, float %3231)  ; FMin(a,b)
  %3466 = fsub fast float %3465, %2744
  %3467 = fmul fast float %3466, %3406
  %3468 = fadd fast float %3467, %2744
  %3469 = fsub fast float %3228, %2743
  %3470 = fmul fast float %3409, %3469
  %3471 = fadd fast float %3470, %2743
  br label %3472

; <label>:3472                                    ; preds = %3460, %3458, %3426, %3411, %3389, %2927, %2746, %2733
  %3473 = phi float [ %2734, %3389 ], [ %2734, %2927 ], [ %2734, %2733 ], [ %2734, %2746 ], [ %3416, %3411 ], [ %3429, %3426 ], [ %2734, %3458 ], [ %3463, %3460 ]
  %3474 = phi float [ %2735, %3389 ], [ %2735, %2927 ], [ %2735, %2733 ], [ %2735, %2746 ], [ %3417, %3411 ], [ %3430, %3426 ], [ %2735, %3458 ], [ %3464, %3460 ]
  %3475 = phi float [ %3390, %3389 ], [ %2736, %2927 ], [ %2736, %2733 ], [ %2736, %2746 ], [ %3390, %3411 ], [ %3390, %3426 ], [ %3390, %3458 ], [ %3390, %3460 ]
  %3476 = phi float [ %3391, %3389 ], [ %2737, %2927 ], [ %2737, %2733 ], [ %2737, %2746 ], [ %3391, %3411 ], [ %3391, %3426 ], [ %3391, %3458 ], [ %3391, %3460 ]
  %3477 = phi float [ %3392, %3389 ], [ %2738, %2927 ], [ %2738, %2733 ], [ %2738, %2746 ], [ %3392, %3411 ], [ %3392, %3426 ], [ %3392, %3458 ], [ %3392, %3460 ]
  %3478 = phi float [ %3393, %3389 ], [ %2739, %2927 ], [ %2739, %2733 ], [ %2739, %2746 ], [ %3393, %3411 ], [ %3393, %3426 ], [ %3393, %3458 ], [ %3393, %3460 ]
  %3479 = phi float [ %3394, %3389 ], [ %2740, %2927 ], [ %2740, %2733 ], [ %2740, %2746 ], [ %3394, %3411 ], [ %3394, %3426 ], [ %3394, %3458 ], [ %3394, %3460 ]
  %3480 = phi float [ %3395, %3389 ], [ %2741, %2927 ], [ %2741, %2733 ], [ %2741, %2746 ], [ %3395, %3411 ], [ %3395, %3426 ], [ %3395, %3458 ], [ %3395, %3460 ]
  %3481 = phi float [ %3396, %3389 ], [ %2742, %2927 ], [ %2742, %2733 ], [ %2742, %2746 ], [ %3396, %3411 ], [ %3396, %3426 ], [ %3396, %3458 ], [ %3396, %3460 ]
  %3482 = phi float [ %2743, %3389 ], [ %2743, %2927 ], [ %2743, %2733 ], [ %2743, %2746 ], [ %3423, %3411 ], [ %3457, %3426 ], [ %2743, %3458 ], [ %3471, %3460 ]
  %3483 = phi float [ %2744, %3389 ], [ %2744, %2927 ], [ %2744, %2733 ], [ %2744, %2746 ], [ %3420, %3411 ], [ %3434, %3426 ], [ %2744, %3458 ], [ %3468, %3460 ]
  %3484 = phi float [ %3397, %3389 ], [ %2745, %2927 ], [ %2745, %2733 ], [ %2745, %2746 ], [ %3397, %3411 ], [ %3397, %3426 ], [ %3397, %3458 ], [ %3397, %3460 ]
  %3485 = add i32 %57, 360
  %3486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3485, i32 undef)  ; BufferLoad(srv,index,wot)
  %3487 = extractvalue %dx.types.ResRet.i32 %3486, 0
  %3488 = extractvalue %dx.types.ResRet.i32 %3486, 1
  %3489 = bitcast i32 %3487 to float
  %3490 = bitcast i32 %3488 to float
  %3491 = fcmp fast oge float %3489, 0.000000e+00
  %3492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3493 = extractvalue %dx.types.CBufRet.f32 %3492, 0
  %3494 = select i1 %3491, float %3489, float %3493
  %3495 = fadd fast float %3494, %215
  %3496 = fmul fast float %3490, %216
  %3497 = add i32 %57, 488
  %3498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.i32 %3498, 0
  %3500 = add i32 %3499, 0
  %3501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3500, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3502 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3501, %dx.types.Handle %111, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3503 = extractvalue %dx.types.ResRet.f32 %3502, 0
  %3504 = fmul fast float %3496, %3503
  %3505 = fadd fast float %3495, %3504
  %3506 = and i32 %207, 65535
  %3507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3506)  ; LegacyF16ToF32(value)
  %3508 = lshr i32 %207, 16
  %3509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3508)  ; LegacyF16ToF32(value)
  %3510 = and i32 %208, 65535
  %3511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3510)  ; LegacyF16ToF32(value)
  %3512 = fmul fast float %3507, %3475
  %3513 = fmul fast float %3509, %3476
  %3514 = fmul fast float %3511, %3477
  %3515 = shl i32 %209, 4
  %3516 = and i32 %3515, 32752
  %3517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3516)  ; LegacyF16ToF32(value)
  %3518 = lshr i32 %209, 7
  %3519 = and i32 %3518, 32752
  %3520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3519)  ; LegacyF16ToF32(value)
  %3521 = lshr i32 %209, 22
  %3522 = shl nuw nsw i32 %3521, 5
  %3523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3522)  ; LegacyF16ToF32(value)
  %3524 = and i32 %210, 65535
  %3525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3524)  ; LegacyF16ToF32(value)
  %3526 = fmul fast float %3517, %3478
  %3527 = fmul fast float %3526, %3525
  %3528 = fmul fast float %3520, %3479
  %3529 = fmul fast float %3528, %3525
  %3530 = fmul fast float %3523, %3480
  %3531 = fmul fast float %3530, %3525
  %3532 = call float @dx.op.dot2.f32(i32 54, float %3473, float %3474, float %3473, float %3474)  ; Dot2(ax,ay,bx,by)
  %3533 = fmul fast float %3532, 0x3FE3333340000000
  %3534 = fsub fast float 1.000000e+00, %3533
  %3535 = call float @dx.op.dot3.f32(i32 55, float %3473, float %3474, float %3534, float %3473, float %3474, float %3534)  ; Dot3(ax,ay,az,bx,by,bz)
  %3536 = call float @dx.op.unary.f32(i32 25, float %3535)  ; Rsqrt(value)
  %3537 = fmul fast float %3536, %3473
  %3538 = fmul fast float %3536, %3474
  %3539 = fmul fast float %3534, %3536
  %3540 = fmul fast float %3539, %121
  %3541 = fmul fast float %3539, %122
  %3542 = fmul fast float %3539, %123
  %3543 = fmul fast float %3537, %85
  %3544 = fmul fast float %3537, %86
  %3545 = fmul fast float %3537, %87
  %3546 = fadd fast float %3540, %3543
  %3547 = fadd fast float %3541, %3544
  %3548 = fadd fast float %3542, %3545
  %3549 = fmul fast float %133, %3538
  %3550 = fmul fast float %134, %3538
  %3551 = fmul fast float %135, %3538
  %3552 = fadd fast float %3546, %3549
  %3553 = fadd fast float %3547, %3550
  %3554 = fadd fast float %3548, %3551
  %3555 = call float @dx.op.dot3.f32(i32 55, float %3552, float %3553, float %3554, float %3552, float %3553, float %3554)  ; Dot3(ax,ay,az,bx,by,bz)
  %3556 = call float @dx.op.unary.f32(i32 25, float %3555)  ; Rsqrt(value)
  %3557 = fmul fast float %3552, %3556
  %3558 = fmul fast float %3553, %3556
  %3559 = fmul fast float %3554, %3556
  %3560 = fadd fast float %3481, 0xBFB99999A0000000
  %3561 = call float @dx.op.unary.f32(i32 7, float %3560)  ; Saturate(value)
  %3562 = fmul fast float %3561, 0x3FF1C71C80000000
  %3563 = call float @dx.op.binary.f32(i32 36, float %3481, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3564 = fsub fast float 1.000000e+00, %3562
  %3565 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3566 = fmul fast float %3565, %3512
  %3567 = fmul fast float %3565, %3513
  %3568 = fmul fast float %3565, %3514
  %3569 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3570 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  %3571 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  %3572 = fmul fast float %3562, %3512
  %3573 = fmul fast float %3562, %3513
  %3574 = fmul fast float %3562, %3514
  %3575 = fadd fast float %3572, %3563
  %3576 = fadd fast float %3573, %3563
  %3577 = fadd fast float %3574, %3563
  %3578 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3579 = call float @dx.op.unary.f32(i32 7, float %3576)  ; Saturate(value)
  %3580 = call float @dx.op.unary.f32(i32 7, float %3577)  ; Saturate(value)
  %3581 = call float @dx.op.unary.f32(i32 7, float %3482)  ; Saturate(value)
  %3582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3583 = extractvalue %dx.types.CBufRet.i32 %3582, 3
  %3584 = and i32 %3583, 8
  %3585 = icmp ne i32 %3584, 0
  %3586 = call float @dx.op.binary.f32(i32 35, float %3569, float %3512)  ; FMax(a,b)
  %3587 = call float @dx.op.binary.f32(i32 35, float %3570, float %3512)  ; FMax(a,b)
  %3588 = call float @dx.op.binary.f32(i32 35, float %3571, float %3512)  ; FMax(a,b)
  %3589 = call float @dx.op.dot3.f32(i32 55, float %3569, float %3570, float %3571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3590 = select i1 %273, float %3512, float %3569
  %3591 = select i1 %273, float %3589, float %3570
  %3592 = select i1 %273, float 1.000000e+00, float %3571
  %3593 = select i1 %3585, float %3586, float %3590
  %3594 = select i1 %3585, float %3587, float %3591
  %3595 = select i1 %3585, float %3588, float %3592
  %3596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.CBufRet.f32 %3596, 1
  %3599 = extractvalue %dx.types.CBufRet.f32 %3596, 2
  %3600 = fadd fast float %3597, %201
  %3601 = fadd fast float %3598, %202
  %3602 = fadd fast float %3599, %203
  %3603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3604 = extractvalue %dx.types.CBufRet.f32 %3603, 0
  %3605 = extractvalue %dx.types.CBufRet.f32 %3603, 1
  %3606 = fsub fast float %3600, %3604
  %3607 = fsub fast float %3601, %3605
  %3608 = fmul fast float %3606, %3606
  %3609 = fmul fast float %3607, %3607
  %3610 = fadd fast float %3608, %3609
  %3611 = call float @dx.op.unary.f32(i32 24, float %3610)  ; Sqrt(value)
  %3612 = extractvalue %dx.types.CBufRet.f32 %3603, 2
  %3613 = fcmp fast olt float %3611, %3612
  br i1 %3613, label %3614, label %3681

; <label>:3614                                    ; preds = %3472
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3618 = extractvalue %dx.types.CBufRet.f32 %3617, 0
  %3619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3620 = extractvalue %dx.types.CBufRet.f32 %3619, 0
  %3621 = extractvalue %dx.types.CBufRet.f32 %3615, 1
  %3622 = extractvalue %dx.types.CBufRet.f32 %3617, 1
  %3623 = extractvalue %dx.types.CBufRet.f32 %3619, 1
  %3624 = extractvalue %dx.types.CBufRet.f32 %3615, 3
  %3625 = extractvalue %dx.types.CBufRet.f32 %3617, 3
  %3626 = extractvalue %dx.types.CBufRet.f32 %3619, 3
  %3627 = fadd fast float %3624, %3600
  %3628 = fadd fast float %3625, %3601
  %3629 = fadd fast float %3626, %3602
  %3630 = fmul fast float %3627, %3616
  %3631 = call float @dx.op.tertiary.f32(i32 46, float %3628, float %3618, float %3630)  ; FMad(a,b,c)
  %3632 = call float @dx.op.tertiary.f32(i32 46, float %3629, float %3620, float %3631)  ; FMad(a,b,c)
  %3633 = fmul fast float %3627, %3621
  %3634 = call float @dx.op.tertiary.f32(i32 46, float %3628, float %3622, float %3633)  ; FMad(a,b,c)
  %3635 = call float @dx.op.tertiary.f32(i32 46, float %3629, float %3623, float %3634)  ; FMad(a,b,c)
  %3636 = fsub fast float %3632, %3624
  %3637 = fsub fast float %3635, %3625
  %3638 = fsub fast float %3636, %3604
  %3639 = fadd fast float %3638, %3612
  %3640 = fsub fast float %3637, %3605
  %3641 = fadd fast float %3640, %3612
  %3642 = extractvalue %dx.types.CBufRet.f32 %3603, 3
  %3643 = fmul fast float %3639, %3642
  %3644 = fmul fast float %3641, %3642
  %3645 = call float @dx.op.unary.f32(i32 7, float %3643)  ; Saturate(value)
  %3646 = call float @dx.op.unary.f32(i32 7, float %3644)  ; Saturate(value)
  %3647 = fsub fast float 1.000000e+00, %3645
  %3648 = fsub fast float 1.000000e+00, %3646
  %3649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %3647, float %3648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = fcmp fast ugt float %3650, 0.000000e+00
  br i1 %3651, label %3652, label %3955

; <label>:3652                                    ; preds = %3614
  %3653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3654 = extractvalue %dx.types.CBufRet.f32 %3653, 2
  %3655 = fmul fast float %3654, %3650
  %3656 = extractvalue %dx.types.CBufRet.f32 %3653, 3
  %3657 = fadd fast float %3656, %3655
  %3658 = extractvalue %dx.types.CBufRet.f32 %3619, 2
  %3659 = fadd fast float %3657, %3626
  %3660 = fmul fast float %3632, %3620
  %3661 = call float @dx.op.tertiary.f32(i32 46, float %3635, float %3623, float %3660)  ; FMad(a,b,c)
  %3662 = call float @dx.op.tertiary.f32(i32 46, float %3659, float %3658, float %3661)  ; FMad(a,b,c)
  %3663 = fsub fast float %3662, %3626
  %3664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3664, 2
  %3666 = fsub fast float %3663, %3665
  %3667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %51, float %3647, float %3648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3668 = extractvalue %dx.types.ResRet.f32 %3667, 0
  %3669 = extractvalue %dx.types.ResRet.f32 %3667, 1
  %3670 = extractvalue %dx.types.ResRet.f32 %3667, 2
  %3671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %51, float %3647, float %3648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3672 = extractvalue %dx.types.ResRet.f32 %3671, 0
  %3673 = extractvalue %dx.types.ResRet.f32 %3671, 1
  %3674 = extractvalue %dx.types.ResRet.f32 %3671, 2
  %3675 = fadd fast float %3672, %3668
  %3676 = fmul fast float %3675, 0x3F847AE140000000
  %3677 = fadd fast float %3673, %3669
  %3678 = fmul fast float %3677, 0x3F847AE140000000
  %3679 = fadd fast float %3674, %3670
  %3680 = fmul fast float %3679, 0x3F847AE140000000
  br label %3955

; <label>:3681                                    ; preds = %3472
  %3682 = and i32 %252, 1
  %3683 = icmp eq i32 %3682, 0
  br i1 %3683, label %3955, label %3684

; <label>:3684                                    ; preds = %3681
  %3685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3685, 0
  %3687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3688 = extractvalue %dx.types.CBufRet.f32 %3687, 0
  %3689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.f32 %3689, 0
  %3691 = extractvalue %dx.types.CBufRet.f32 %3685, 1
  %3692 = extractvalue %dx.types.CBufRet.f32 %3687, 1
  %3693 = extractvalue %dx.types.CBufRet.f32 %3689, 1
  %3694 = extractvalue %dx.types.CBufRet.f32 %3685, 3
  %3695 = extractvalue %dx.types.CBufRet.f32 %3687, 3
  %3696 = extractvalue %dx.types.CBufRet.f32 %3689, 3
  %3697 = fadd fast float %3694, %3600
  %3698 = fadd fast float %3695, %3601
  %3699 = fadd fast float %3696, %3602
  %3700 = fmul fast float %3697, %3686
  %3701 = call float @dx.op.tertiary.f32(i32 46, float %3698, float %3688, float %3700)  ; FMad(a,b,c)
  %3702 = call float @dx.op.tertiary.f32(i32 46, float %3699, float %3690, float %3701)  ; FMad(a,b,c)
  %3703 = fmul fast float %3697, %3691
  %3704 = call float @dx.op.tertiary.f32(i32 46, float %3698, float %3692, float %3703)  ; FMad(a,b,c)
  %3705 = call float @dx.op.tertiary.f32(i32 46, float %3699, float %3693, float %3704)  ; FMad(a,b,c)
  %3706 = fsub fast float %3702, %3694
  %3707 = fsub fast float %3705, %3695
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.CBufRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.CBufRet.f32 %3708, 2
  %3712 = extractvalue %dx.types.CBufRet.f32 %3708, 3
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 3
  %3715 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.i32 %3715, 0
  %3717 = extractvalue %dx.types.CBufRet.i32 %3715, 1
  %3718 = udiv i32 %3717, %3716
  %3719 = fsub fast float %3706, %3709
  %3720 = fsub fast float %3707, %3710
  %3721 = call float @dx.op.binary.f32(i32 35, float %3719, float 0.000000e+00)  ; FMax(a,b)
  %3722 = call float @dx.op.binary.f32(i32 35, float %3720, float 0.000000e+00)  ; FMax(a,b)
  %3723 = call float @dx.op.binary.f32(i32 36, float %3721, float %3711)  ; FMin(a,b)
  %3724 = call float @dx.op.binary.f32(i32 36, float %3722, float %3712)  ; FMin(a,b)
  %3725 = add i32 %3716, -1
  %3726 = add i32 %3718, -1
  %3727 = fmul fast float %3723, %3714
  %3728 = fmul fast float %3724, %3714
  %3729 = fptoui float %3727 to i32
  %3730 = fptoui float %3728 to i32
  %3731 = call i32 @dx.op.binary.i32(i32 40, i32 %3729, i32 %3725)  ; UMin(a,b)
  %3732 = call i32 @dx.op.binary.i32(i32 40, i32 %3730, i32 %3726)  ; UMin(a,b)
  %3733 = mul i32 %3732, %3716
  %3734 = add i32 %3733, %3731
  %3735 = shl i32 %3734, 2
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = icmp eq i32 %3737, -1
  br i1 %3738, label %3955, label %3739

; <label>:3739                                    ; preds = %3684
  %3740 = mul i32 %3737, 148
  %3741 = add i32 %3740, 4
  %3742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.f32 %3742, 0
  %3744 = add i32 %3740, 8
  %3745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3746 = extractvalue %dx.types.ResRet.f32 %3745, 0
  %3747 = add i32 %3740, 36
  %3748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.f32 %3748, 0
  %3750 = add i32 %3740, 60
  %3751 = add i32 %3740, 92
  %3752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.i32 %3752, 0
  %3754 = add i32 %3740, 116
  %3755 = fsub fast float %3706, %3743
  %3756 = fsub fast float %3707, %3746
  %3757 = fmul fast float %3714, %3755
  %3758 = fmul fast float %3714, %3756
  %3759 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3760 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3761 = fsub fast float 1.000000e+00, %3760
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 2
  %3764 = call float @dx.op.unary.f32(i32 83, float %3759)  ; DerivCoarseX(value)
  %3765 = call float @dx.op.unary.f32(i32 83, float %3761)  ; DerivCoarseX(value)
  %3766 = call float @dx.op.unary.f32(i32 84, float %3759)  ; DerivCoarseY(value)
  %3767 = call float @dx.op.unary.f32(i32 84, float %3761)  ; DerivCoarseY(value)
  %3768 = fmul fast float %3764, %3763
  %3769 = fmul fast float %3765, %3763
  %3770 = fmul fast float %3766, %3763
  %3771 = fmul fast float %3767, %3763
  %3772 = call float @dx.op.dot2.f32(i32 54, float %3770, float %3771, float %3770, float %3771)  ; Dot2(ax,ay,bx,by)
  %3773 = call float @dx.op.dot2.f32(i32 54, float %3768, float %3769, float %3768, float %3769)  ; Dot2(ax,ay,bx,by)
  %3774 = call float @dx.op.binary.f32(i32 35, float %3773, float %3772)  ; FMax(a,b)
  %3775 = call float @dx.op.unary.f32(i32 23, float %3774)  ; Log(value)
  %3776 = fmul fast float %3775, 5.000000e-01
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3777, 1
  %3779 = fadd fast float %3778, %3776
  %3780 = call float @dx.op.binary.f32(i32 35, float %3779, float 0.000000e+00)  ; FMax(a,b)
  %3781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3782 = extractvalue %dx.types.CBufRet.f32 %3781, 3
  %3783 = fadd fast float %3782, %3780
  %3784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.f32 %3784, 3
  %3786 = fadd fast float %3783, %3785
  %3787 = add i32 %3753, 0
  %3788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3787, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3789 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3788, i32 0)  ; GetDimensions(handle,mipLevel)
  %3790 = extractvalue %dx.types.Dimensions %3789, 0
  %3791 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3790)  ; FirstbitLo(value)
  %3792 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3793 = extractvalue %dx.types.CBufRet.i32 %3792, 1
  %3794 = sub nsw i32 %3793, %3791
  %3795 = sitofp i32 %3794 to float
  %3796 = fsub fast float %3786, %3795
  %3797 = call float @dx.op.binary.f32(i32 35, float %3796, float 0.000000e+00)  ; FMax(a,b)
  %3798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3788, %dx.types.Handle %49, float %3759, float %3761, float %3749, float undef, i32 0, i32 0, i32 undef, float %3797)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = fcmp ule float %3799, 0x3FE0101020000000
  %3801 = extractvalue %dx.types.CBufRet.i32 %3792, 0
  %3802 = and i32 %3801, 128
  %3803 = icmp ne i32 %3802, 0
  %3804 = and i1 %3800, %3803
  br i1 %3804, label %3955, label %3805

; <label>:3805                                    ; preds = %3739
  %3806 = add i32 %3740, 20
  %3807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = add i32 %3740, 24
  %3810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = add i32 %3740, 40
  %3813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = add i32 %3740, 96
  %3816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3817 = extractvalue %dx.types.ResRet.i32 %3816, 0
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 2
  %3820 = fmul fast float %3819, %3759
  %3821 = fmul fast float %3819, %3761
  %3822 = extractvalue %dx.types.CBufRet.f32 %3818, 3
  %3823 = fadd fast float %3820, %3822
  %3824 = fadd fast float %3821, %3822
  %3825 = add i32 %3817, 0
  %3826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3825, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3827 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3826, i32 0)  ; GetDimensions(handle,mipLevel)
  %3828 = extractvalue %dx.types.Dimensions %3827, 0
  %3829 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3828)  ; FirstbitLo(value)
  %3830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.i32 %3830, 1
  %3832 = sub nsw i32 %3831, %3829
  %3833 = sitofp i32 %3832 to float
  %3834 = fsub fast float %3783, %3833
  %3835 = call float @dx.op.binary.f32(i32 35, float %3834, float 0.000000e+00)  ; FMax(a,b)
  %3836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3826, %dx.types.Handle %49, float %3823, float %3824, float %3814, float undef, i32 0, i32 0, i32 undef, float %3835)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 0
  %3838 = fmul fast float %3837, %3808
  %3839 = fadd fast float %3838, %3811
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.CBufRet.f32 %3840, 1
  %3843 = extractvalue %dx.types.CBufRet.f32 %3840, 2
  %3844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3845 = extractvalue %dx.types.CBufRet.f32 %3844, 3
  %3846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.f32 %3846, 3
  %3848 = extractvalue %dx.types.CBufRet.f32 %3840, 3
  %3849 = fadd fast float %3845, %3706
  %3850 = fadd fast float %3847, %3707
  %3851 = fadd fast float %3839, %3848
  %3852 = fmul fast float %3849, %3841
  %3853 = call float @dx.op.tertiary.f32(i32 46, float %3850, float %3842, float %3852)  ; FMad(a,b,c)
  %3854 = call float @dx.op.tertiary.f32(i32 46, float %3851, float %3843, float %3853)  ; FMad(a,b,c)
  %3855 = fsub fast float %3854, %3848
  %3856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3857 = extractvalue %dx.types.CBufRet.f32 %3856, 2
  %3858 = fsub fast float %3855, %3857
  %3859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3860 = extractvalue %dx.types.CBufRet.i32 %3859, 0
  %3861 = call i32 @dx.op.binary.i32(i32 40, i32 %3737, i32 %3860)  ; UMin(a,b)
  %3862 = mul i32 %3861, 36
  %3863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.i32 %3863, 0
  %3865 = add i32 %3862, 4
  %3866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3867 = extractvalue %dx.types.CBufRet.f32 %3866, 0
  %3868 = fmul fast float %3867, %3759
  %3869 = fmul fast float %3867, %3761
  %3870 = extractvalue %dx.types.CBufRet.f32 %3866, 1
  %3871 = fadd fast float %3868, %3870
  %3872 = fadd fast float %3869, %3870
  %3873 = icmp eq i32 %3864, 0
  br i1 %3873, label %3942, label %3874

; <label>:3874                                    ; preds = %3805
  br label %3875

; <label>:3875                                    ; preds = %3932, %3874
  %3876 = phi float [ %3933, %3932 ], [ 0.000000e+00, %3874 ]
  %3877 = phi float [ %3934, %3932 ], [ 0.000000e+00, %3874 ]
  %3878 = phi float [ %3935, %3932 ], [ 0.000000e+00, %3874 ]
  %3879 = phi float [ %3936, %3932 ], [ 0.000000e+00, %3874 ]
  %3880 = phi float [ %3937, %3932 ], [ 0.000000e+00, %3874 ]
  %3881 = phi float [ %3938, %3932 ], [ 0.000000e+00, %3874 ]
  %3882 = phi i32 [ %3939, %3932 ], [ 0, %3874 ]
  %3883 = shl i32 %3882, 2
  %3884 = add i32 %3750, %3883
  %3885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.f32 %3885, 0
  %3887 = add i32 %3754, %3883
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = add i32 %3889, 0
  %3891 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3890, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3892 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3891, i32 0)  ; GetDimensions(handle,mipLevel)
  %3893 = extractvalue %dx.types.Dimensions %3892, 0
  %3894 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3893)  ; FirstbitLo(value)
  %3895 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.i32 %3895, 1
  %3897 = sub nsw i32 %3896, %3894
  %3898 = sitofp i32 %3897 to float
  %3899 = fsub fast float %3783, %3898
  %3900 = call float @dx.op.binary.f32(i32 35, float %3899, float 0.000000e+00)  ; FMax(a,b)
  %3901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3891, %dx.types.Handle %49, float %3871, float %3872, float %3886, float undef, i32 0, i32 0, i32 undef, float %3900)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = fcmp fast ogt float %3902, 0.000000e+00
  br i1 %3903, label %3904, label %3932

; <label>:3904                                    ; preds = %3875
  %3905 = add i32 %3865, %3883
  %3906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.i32 %3906, 0
  %3908 = and i32 %3907, 32767
  %3909 = mul nuw nsw i32 %3908, 928
  %3910 = add nuw nsw i32 %3909, 48
  %3911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.ResRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.ResRet.f32 %3911, 2
  %3915 = add nuw nsw i32 %3909, 60
  %3916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.f32 %3916, 0
  %3918 = extractvalue %dx.types.ResRet.f32 %3916, 1
  %3919 = extractvalue %dx.types.ResRet.f32 %3916, 2
  %3920 = fmul fast float %3912, %3902
  %3921 = fmul fast float %3913, %3902
  %3922 = fmul fast float %3914, %3902
  %3923 = fadd fast float %3920, %3876
  %3924 = fadd fast float %3921, %3877
  %3925 = fadd fast float %3922, %3878
  %3926 = fmul fast float %3917, %3902
  %3927 = fmul fast float %3918, %3902
  %3928 = fmul fast float %3919, %3902
  %3929 = fadd fast float %3926, %3879
  %3930 = fadd fast float %3927, %3880
  %3931 = fadd fast float %3928, %3881
  br label %3932

; <label>:3932                                    ; preds = %3904, %3875
  %3933 = phi float [ %3923, %3904 ], [ %3876, %3875 ]
  %3934 = phi float [ %3924, %3904 ], [ %3877, %3875 ]
  %3935 = phi float [ %3925, %3904 ], [ %3878, %3875 ]
  %3936 = phi float [ %3929, %3904 ], [ %3879, %3875 ]
  %3937 = phi float [ %3930, %3904 ], [ %3880, %3875 ]
  %3938 = phi float [ %3931, %3904 ], [ %3881, %3875 ]
  %3939 = add nuw i32 %3882, 1
  %3940 = icmp eq i32 %3939, %3864
  br i1 %3940, label %3941, label %3875

; <label>:3941                                    ; preds = %3932
  br label %3942

; <label>:3942                                    ; preds = %3941, %3805
  %3943 = phi float [ 0.000000e+00, %3805 ], [ %3933, %3941 ]
  %3944 = phi float [ 0.000000e+00, %3805 ], [ %3934, %3941 ]
  %3945 = phi float [ 0.000000e+00, %3805 ], [ %3935, %3941 ]
  %3946 = phi float [ 0.000000e+00, %3805 ], [ %3936, %3941 ]
  %3947 = phi float [ 0.000000e+00, %3805 ], [ %3937, %3941 ]
  %3948 = phi float [ 0.000000e+00, %3805 ], [ %3938, %3941 ]
  %3949 = fadd fast float %3946, %3943
  %3950 = fmul fast float %3949, 0x3F847AE140000000
  %3951 = fadd fast float %3947, %3944
  %3952 = fmul fast float %3951, 0x3F847AE140000000
  %3953 = fadd fast float %3948, %3945
  %3954 = fmul fast float %3953, 0x3F847AE140000000
  br label %3955

; <label>:3955                                    ; preds = %3942, %3739, %3684, %3681, %3652, %3614
  %3956 = phi float [ %3666, %3652 ], [ -1.310720e+05, %3614 ], [ %3858, %3942 ], [ -1.310720e+05, %3684 ], [ -1.310720e+05, %3739 ], [ -1.310720e+05, %3681 ]
  %3957 = phi float [ %3676, %3652 ], [ 0.000000e+00, %3614 ], [ %3950, %3942 ], [ 0.000000e+00, %3684 ], [ 0.000000e+00, %3739 ], [ 0.000000e+00, %3681 ]
  %3958 = phi float [ %3678, %3652 ], [ 0.000000e+00, %3614 ], [ %3952, %3942 ], [ 0.000000e+00, %3684 ], [ 0.000000e+00, %3739 ], [ 0.000000e+00, %3681 ]
  %3959 = phi float [ %3680, %3652 ], [ 0.000000e+00, %3614 ], [ %3954, %3942 ], [ 0.000000e+00, %3684 ], [ 0.000000e+00, %3739 ], [ 0.000000e+00, %3681 ]
  %3960 = phi i1 [ true, %3652 ], [ false, %3614 ], [ true, %3942 ], [ false, %3684 ], [ false, %3739 ], [ false, %3681 ]
  %3961 = and i32 %252, 3
  %3962 = icmp eq i32 %3961, 1
  %3963 = select i1 %3962, float 1.000000e+00, float 0.000000e+00
  %3964 = fsub fast float %3956, %203
  %3965 = call float @dx.op.unary.f32(i32 7, float %3964)  ; Saturate(value)
  %3966 = select i1 %3960, float %3965, float 1.000000e+00
  %3967 = fmul fast float %3966, %3963
  %3968 = icmp eq i32 %3961, 3
  %3969 = select i1 %3968, float 1.000000e+00, float %3967
  %3970 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3969)  ; FMax(a,b)
  %3971 = fcmp fast olt float %3969, 1.000000e+00
  %3972 = fcmp uge float %74, 0.000000e+00
  %3973 = and i1 %3972, %3971
  br i1 %3973, label %3974, label %3984

; <label>:3974                                    ; preds = %3955
  %3975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %49, float %74, float %75, float %76, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3976 = extractvalue %dx.types.ResRet.f32 %3975, 0
  %3977 = extractvalue %dx.types.ResRet.f32 %3975, 1
  %3978 = extractvalue %dx.types.ResRet.f32 %3975, 2
  %3979 = fadd fast float %3976, %3970
  %3980 = fcmp ule float %73, 0.000000e+00
  %3981 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3982 = select i1 %3980, float %3981, float 1.000000e+00
  %3983 = fmul fast float %3982, %3978
  br label %3984

; <label>:3984                                    ; preds = %3974, %3955
  %3985 = phi float [ %3979, %3974 ], [ %3970, %3955 ]
  %3986 = phi float [ %3977, %3974 ], [ 0.000000e+00, %3955 ]
  %3987 = phi float [ %3983, %3974 ], [ 0.000000e+00, %3955 ]
  %3988 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3989 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3990 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3991 = fcmp fast une float %3989, 0.000000e+00
  %3992 = fcmp fast une float %3990, 0.000000e+00
  %3993 = or i1 %3991, %3992
  br i1 %3993, label %3994, label %4553

; <label>:3994                                    ; preds = %3984
  br i1 %3991, label %3995, label %4268

; <label>:3995                                    ; preds = %3994
  %3996 = call float @dx.op.unary.f32(i32 23, float %3483)  ; Log(value)
  %3997 = fmul fast float %3996, 4.000000e+00
  %3998 = call float @dx.op.unary.f32(i32 21, float %3997)  ; Exp(value)
  %3999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3999, 0
  %4001 = fmul fast float %4000, %60
  %4002 = fmul fast float %4000, %61
  %4003 = fmul fast float %4000, %62
  %4004 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4005 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4006 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4007 = call float @dx.op.unary.f32(i32 23, float %4004)  ; Log(value)
  %4008 = call float @dx.op.unary.f32(i32 23, float %4005)  ; Log(value)
  %4009 = call float @dx.op.unary.f32(i32 23, float %4006)  ; Log(value)
  %4010 = fmul fast float %4007, 4.000000e+00
  %4011 = fmul fast float %4008, 4.000000e+00
  %4012 = fmul fast float %4009, 4.000000e+00
  %4013 = call float @dx.op.unary.f32(i32 21, float %4010)  ; Exp(value)
  %4014 = call float @dx.op.unary.f32(i32 21, float %4011)  ; Exp(value)
  %4015 = call float @dx.op.unary.f32(i32 21, float %4012)  ; Exp(value)
  %4016 = fadd fast float %4014, %4013
  %4017 = fadd fast float %4016, %4015
  %4018 = fdiv fast float 1.000000e+00, %4017
  %4019 = fmul fast float %4018, %4013
  %4020 = fcmp fast ogt float %70, 0.000000e+00
  %4021 = fcmp fast ogt float %71, 0.000000e+00
  %4022 = fcmp fast ogt float %72, 0.000000e+00
  %4023 = fcmp fast olt float %70, 0.000000e+00
  %4024 = fcmp fast olt float %71, 0.000000e+00
  %4025 = fcmp fast olt float %72, 0.000000e+00
  %4026 = zext i1 %4020 to i32
  %4027 = zext i1 %4021 to i32
  %4028 = zext i1 %4022 to i32
  %4029 = zext i1 %4023 to i32
  %4030 = zext i1 %4024 to i32
  %4031 = zext i1 %4025 to i32
  %4032 = sub nsw i32 %4026, %4029
  %4033 = sub nsw i32 %4027, %4030
  %4034 = sub nsw i32 %4028, %4031
  %4035 = call float @dx.op.unary.f32(i32 83, float %4001)  ; DerivCoarseX(value)
  %4036 = call float @dx.op.unary.f32(i32 83, float %4002)  ; DerivCoarseX(value)
  %4037 = call float @dx.op.unary.f32(i32 83, float %4003)  ; DerivCoarseX(value)
  %4038 = call float @dx.op.unary.f32(i32 84, float %4001)  ; DerivCoarseY(value)
  %4039 = call float @dx.op.unary.f32(i32 84, float %4002)  ; DerivCoarseY(value)
  %4040 = call float @dx.op.unary.f32(i32 84, float %4003)  ; DerivCoarseY(value)
  %4041 = fcmp fast ole float %284, %4019
  %4042 = fmul fast float %4018, %4016
  %4043 = fcmp fast ole float %284, %4042
  %4044 = select i1 %4043, float %4003, float %4001
  %4045 = select i1 %4043, float %4001, float %4002
  %4046 = select i1 %4041, float %4002, float %4044
  %4047 = select i1 %4041, float %4003, float %4045
  %4048 = select i1 %4043, float %4037, float %4035
  %4049 = select i1 %4043, float %4035, float %4036
  %4050 = select i1 %4041, float %4036, float %4048
  %4051 = select i1 %4041, float %4037, float %4049
  %4052 = select i1 %4043, float %4040, float %4038
  %4053 = select i1 %4043, float %4038, float %4039
  %4054 = select i1 %4041, float %4039, float %4052
  %4055 = select i1 %4041, float %4040, float %4053
  %4056 = call float @dx.op.unary.f32(i32 27, float %4046)  ; Round_ni(value)
  %4057 = call float @dx.op.unary.f32(i32 27, float %4047)  ; Round_ni(value)
  %4058 = fptosi float %4056 to i32
  %4059 = fptosi float %4057 to i32
  %4060 = xor i32 %4059, %4058
  %4061 = sitofp i32 %4060 to float
  %4062 = fptosi float %4061 to i32
  %4063 = sitofp i32 %4062 to float
  %4064 = fmul fast float %4063, 0x3FE3C6EF40000000
  %4065 = frem fast float %4056, 2.560000e+02
  %4066 = frem fast float %4057, 2.560000e+02
  %4067 = fptoui float %4065 to i32
  %4068 = fptoui float %4066 to i32
  %4069 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %4067, i32 %4068, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = extractvalue %dx.types.ResRet.f32 %4069, 1
  %4072 = extractvalue %dx.types.ResRet.f32 %4069, 2
  %4073 = fadd fast float %4070, %4064
  %4074 = fadd fast float %4071, %4064
  %4075 = fadd fast float %4072, %4064
  %4076 = call float @dx.op.unary.f32(i32 22, float %4073)  ; Frc(value)
  %4077 = call float @dx.op.unary.f32(i32 22, float %4074)  ; Frc(value)
  %4078 = call float @dx.op.unary.f32(i32 22, float %4075)  ; Frc(value)
  %4079 = fmul fast float %4078, 0x401921FB60000000
  %4080 = call float @dx.op.unary.f32(i32 13, float %4079)  ; Sin(value)
  %4081 = call float @dx.op.unary.f32(i32 12, float %4079)  ; Cos(value)
  %4082 = fsub fast float -0.000000e+00, %4081
  %4083 = fmul fast float %4081, %4046
  %4084 = call float @dx.op.tertiary.f32(i32 46, float %4080, float %4047, float %4083)  ; FMad(a,b,c)
  %4085 = fmul fast float %4080, %4046
  %4086 = call float @dx.op.tertiary.f32(i32 46, float %4082, float %4047, float %4085)  ; FMad(a,b,c)
  %4087 = fadd fast float %4084, %4076
  %4088 = fadd fast float %4086, %4077
  %4089 = extractvalue %dx.types.CBufRet.f32 %3999, 3
  %4090 = bitcast float %4089 to i32
  %4091 = icmp eq i32 %4090, 0
  br i1 %4091, label %4130, label %4092

; <label>:4092                                    ; preds = %3995
  %4093 = add i32 %4090, 0
  %4094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4095 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4094, %dx.types.Handle %111, float %4087, float %4088, float undef, float undef, i32 0, i32 0, i32 undef, float %4050, float %4051, float undef, float %4054, float %4055, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4097, 2
  %4100 = fsub fast float 1.000000e+00, %3989
  %4101 = call float @dx.op.binary.f32(i32 35, float %4100, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4102 = bitcast float %3989 to i32
  %4103 = sitofp i32 %4102 to float
  %4104 = fadd fast float %4103, 0xC1CFBF8940000000
  %4105 = fmul fast float %4099, %4104
  %4106 = fadd fast float %4105, 0x41CFBF8940000000
  %4107 = fptosi float %4106 to i32
  %4108 = bitcast i32 %4107 to float
  %4109 = bitcast float %4101 to i32
  %4110 = sitofp i32 %4109 to float
  %4111 = fadd fast float %4110, 0xC1CFBF8940000000
  %4112 = fmul fast float %4111, %4099
  %4113 = fadd fast float %4112, 0x41CFBF8940000000
  %4114 = fptosi float %4113 to i32
  %4115 = bitcast i32 %4114 to float
  %4116 = fmul fast float %4108, %4098
  %4117 = fmul fast float %4115, %4098
  %4118 = fsub fast float %4101, %4116
  %4119 = fadd fast float %4117, %4101
  %4120 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4121 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4122 = fsub fast float %4096, %4120
  %4123 = fsub fast float %4121, %4120
  %4124 = bitcast float %4123 to i32
  %4125 = sub nsw i32 2129859010, %4124
  %4126 = bitcast i32 %4125 to float
  %4127 = fmul fast float %4126, %4122
  %4128 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4129 = fcmp fast olt float %4128, 0x3F70101020000000
  br i1 %4129, label %4268, label %4130

; <label>:4130                                    ; preds = %4092, %3995
  %4131 = phi float [ %4128, %4092 ], [ %3989, %3995 ]
  %4132 = fmul fast float %4131, %3998
  %4133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.i32 %4133, 1
  %4135 = extractvalue %dx.types.CBufRet.i32 %4133, 0
  %4136 = add i32 %4135, 0
  %4137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4138 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4137, %dx.types.Handle %110, float %4087, float %4088, float undef, float undef, i32 0, i32 0, i32 undef, float %4050, float %4051, float undef, float %4054, float %4055, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.ResRet.f32 %4138, 1
  %4141 = extractvalue %dx.types.ResRet.f32 %4138, 2
  %4142 = extractvalue %dx.types.ResRet.f32 %4138, 3
  %4143 = and i32 %4134, 255
  %4144 = uitofp i32 %4143 to float
  %4145 = lshr i32 %4134, 8
  %4146 = and i32 %4145, 255
  %4147 = uitofp i32 %4146 to float
  %4148 = fmul fast float %4142, %4144
  %4149 = fadd fast float %4148, %4147
  %4150 = fmul fast float %4149, 0x3F70101000000000
  %4151 = fadd fast float %4150, 0xBFB99999A0000000
  %4152 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4153 = fmul fast float %4152, 0x3FF1C71C80000000
  %4154 = call float @dx.op.binary.f32(i32 36, float %4150, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4155 = fsub fast float 1.000000e+00, %4153
  %4156 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4157 = fmul fast float %4156, %4139
  %4158 = fmul fast float %4156, %4140
  %4159 = fmul fast float %4156, %4141
  %4160 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4161 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4162 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4163 = fmul fast float %4153, %4139
  %4164 = fmul fast float %4153, %4140
  %4165 = fmul fast float %4153, %4141
  %4166 = fadd fast float %4163, %4154
  %4167 = fadd fast float %4164, %4154
  %4168 = fadd fast float %4165, %4154
  %4169 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4170 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4171 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4173 = extractvalue %dx.types.CBufRet.i32 %4172, 3
  %4174 = extractvalue %dx.types.CBufRet.i32 %4172, 2
  %4175 = add i32 %4174, 0
  %4176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4177 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4176, %dx.types.Handle %110, float %4087, float %4088, float undef, float undef, i32 0, i32 0, i32 undef, float %4050, float %4051, float undef, float %4054, float %4055, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4178 = extractvalue %dx.types.ResRet.f32 %4177, 0
  %4179 = extractvalue %dx.types.ResRet.f32 %4177, 1
  %4180 = extractvalue %dx.types.ResRet.f32 %4177, 2
  %4181 = extractvalue %dx.types.ResRet.f32 %4177, 3
  %4182 = and i32 %4173, 255
  %4183 = uitofp i32 %4182 to float
  %4184 = lshr i32 %4173, 8
  %4185 = and i32 %4184, 255
  %4186 = uitofp i32 %4185 to float
  %4187 = lshr i32 %4173, 16
  %4188 = and i32 %4187, 255
  %4189 = uitofp i32 %4188 to float
  %4190 = fmul fast float %4189, 0x3F70101000000000
  %4191 = fmul fast float %4178, %4183
  %4192 = fadd fast float %4191, %4186
  %4193 = fmul fast float %4192, 0x3F70101000000000
  %4194 = fadd fast float %4179, -5.000000e-01
  %4195 = fadd fast float %4181, -5.000000e-01
  %4196 = fmul fast float %4194, %4190
  %4197 = fmul fast float %4195, %4190
  %4198 = fadd fast float %4196, 5.000000e-01
  %4199 = fadd fast float %4197, 5.000000e-01
  %4200 = fmul fast float %4198, 2.000000e+00
  %4201 = fadd fast float %4200, -1.000000e+00
  %4202 = fmul fast float %4199, 2.000000e+00
  %4203 = fadd fast float %4202, -1.000000e+00
  %4204 = fadd fast float %4201, %4203
  %4205 = fmul fast float %4204, 5.000000e-01
  %4206 = fsub fast float %4201, %4203
  %4207 = fmul fast float %4206, 5.000000e-01
  %4208 = call float @dx.op.unary.f32(i32 6, float %4205)  ; FAbs(value)
  %4209 = fsub fast float 1.000000e+00, %4208
  %4210 = call float @dx.op.unary.f32(i32 6, float %4207)  ; FAbs(value)
  %4211 = fsub fast float %4209, %4210
  %4212 = call float @dx.op.dot3.f32(i32 55, float %4205, float %4207, float %4211, float %4205, float %4207, float %4211)  ; Dot3(ax,ay,az,bx,by,bz)
  %4213 = call float @dx.op.unary.f32(i32 25, float %4212)  ; Rsqrt(value)
  %4214 = fmul fast float %4205, %4213
  %4215 = fmul fast float %4207, %4213
  %4216 = select i1 %4043, i32 %4033, i32 %4034
  %4217 = select i1 %4041, i32 %4032, i32 %4216
  %4218 = sitofp i32 %4217 to float
  %4219 = fmul fast float %4211, %4218
  %4220 = fmul fast float %4219, %4213
  %4221 = select i1 %4043, float %4220, float %4215
  %4222 = select i1 %4043, float %4215, float %4220
  %4223 = select i1 %4041, float %4220, float %4214
  %4224 = select i1 %4041, float %4215, float %4221
  %4225 = select i1 %4041, float %4214, float %4222
  %4226 = fsub fast float %4160, %3593
  %4227 = fsub fast float %4161, %3594
  %4228 = fsub fast float %4162, %3595
  %4229 = fmul fast float %4226, %4132
  %4230 = fmul fast float %4227, %4132
  %4231 = fmul fast float %4228, %4132
  %4232 = fadd fast float %4229, %3593
  %4233 = fadd fast float %4230, %3594
  %4234 = fadd fast float %4231, %3595
  %4235 = fsub fast float %4169, %3578
  %4236 = fsub fast float %4170, %3579
  %4237 = fsub fast float %4171, %3580
  %4238 = fmul fast float %4235, %4132
  %4239 = fmul fast float %4236, %4132
  %4240 = fmul fast float %4237, %4132
  %4241 = fadd fast float %4238, %3578
  %4242 = fadd fast float %4239, %3579
  %4243 = fadd fast float %4240, %3580
  %4244 = fadd fast float %4223, %3557
  %4245 = fadd fast float %4224, %3558
  %4246 = fadd fast float %4225, %3559
  %4247 = call float @dx.op.dot3.f32(i32 55, float %4244, float %4245, float %4246, float %4244, float %4245, float %4246)  ; Dot3(ax,ay,az,bx,by,bz)
  %4248 = call float @dx.op.unary.f32(i32 25, float %4247)  ; Rsqrt(value)
  %4249 = fmul fast float %4244, %4248
  %4250 = fmul fast float %4245, %4248
  %4251 = fmul fast float %4246, %4248
  %4252 = fsub fast float %4249, %3557
  %4253 = fsub fast float %4250, %3558
  %4254 = fsub fast float %4251, %3559
  %4255 = fmul fast float %4252, %4132
  %4256 = fmul fast float %4253, %4132
  %4257 = fmul fast float %4254, %4132
  %4258 = fadd fast float %4255, %3557
  %4259 = fadd fast float %4256, %3558
  %4260 = fadd fast float %4257, %3559
  %4261 = call float @dx.op.binary.f32(i32 36, float %3483, float %4180)  ; FMin(a,b)
  %4262 = fsub fast float %4261, %3483
  %4263 = fmul fast float %4262, %4132
  %4264 = fadd fast float %4263, %3483
  %4265 = fsub fast float %4193, %3581
  %4266 = fmul fast float %4265, %4132
  %4267 = fadd fast float %4266, %3581
  br label %4268

; <label>:4268                                    ; preds = %4130, %4092, %3994
  %4269 = phi float [ %4241, %4130 ], [ %3578, %4092 ], [ %3578, %3994 ]
  %4270 = phi float [ %4242, %4130 ], [ %3579, %4092 ], [ %3579, %3994 ]
  %4271 = phi float [ %4243, %4130 ], [ %3580, %4092 ], [ %3580, %3994 ]
  %4272 = phi float [ %4258, %4130 ], [ %3557, %4092 ], [ %3557, %3994 ]
  %4273 = phi float [ %4259, %4130 ], [ %3558, %4092 ], [ %3558, %3994 ]
  %4274 = phi float [ %4260, %4130 ], [ %3559, %4092 ], [ %3559, %3994 ]
  %4275 = phi float [ %4232, %4130 ], [ %3593, %4092 ], [ %3593, %3994 ]
  %4276 = phi float [ %4233, %4130 ], [ %3594, %4092 ], [ %3594, %3994 ]
  %4277 = phi float [ %4234, %4130 ], [ %3595, %4092 ], [ %3595, %3994 ]
  %4278 = phi float [ %4267, %4130 ], [ %3581, %4092 ], [ %3581, %3994 ]
  %4279 = phi float [ %4264, %4130 ], [ %3483, %4092 ], [ %3483, %3994 ]
  br i1 %3992, label %4280, label %4553

; <label>:4280                                    ; preds = %4268
  %4281 = call float @dx.op.unary.f32(i32 23, float %4279)  ; Log(value)
  %4282 = fmul fast float %4281, 4.000000e+00
  %4283 = call float @dx.op.unary.f32(i32 21, float %4282)  ; Exp(value)
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = fmul fast float %4285, %60
  %4287 = fmul fast float %4285, %61
  %4288 = fmul fast float %4285, %62
  %4289 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4290 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4291 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4292 = call float @dx.op.unary.f32(i32 23, float %4289)  ; Log(value)
  %4293 = call float @dx.op.unary.f32(i32 23, float %4290)  ; Log(value)
  %4294 = call float @dx.op.unary.f32(i32 23, float %4291)  ; Log(value)
  %4295 = fmul fast float %4292, 4.000000e+00
  %4296 = fmul fast float %4293, 4.000000e+00
  %4297 = fmul fast float %4294, 4.000000e+00
  %4298 = call float @dx.op.unary.f32(i32 21, float %4295)  ; Exp(value)
  %4299 = call float @dx.op.unary.f32(i32 21, float %4296)  ; Exp(value)
  %4300 = call float @dx.op.unary.f32(i32 21, float %4297)  ; Exp(value)
  %4301 = fadd fast float %4299, %4298
  %4302 = fadd fast float %4301, %4300
  %4303 = fdiv fast float 1.000000e+00, %4302
  %4304 = fmul fast float %4303, %4298
  %4305 = fcmp fast ogt float %70, 0.000000e+00
  %4306 = fcmp fast ogt float %71, 0.000000e+00
  %4307 = fcmp fast ogt float %72, 0.000000e+00
  %4308 = fcmp fast olt float %70, 0.000000e+00
  %4309 = fcmp fast olt float %71, 0.000000e+00
  %4310 = fcmp fast olt float %72, 0.000000e+00
  %4311 = zext i1 %4305 to i32
  %4312 = zext i1 %4306 to i32
  %4313 = zext i1 %4307 to i32
  %4314 = zext i1 %4308 to i32
  %4315 = zext i1 %4309 to i32
  %4316 = zext i1 %4310 to i32
  %4317 = sub nsw i32 %4311, %4314
  %4318 = sub nsw i32 %4312, %4315
  %4319 = sub nsw i32 %4313, %4316
  %4320 = call float @dx.op.unary.f32(i32 83, float %4286)  ; DerivCoarseX(value)
  %4321 = call float @dx.op.unary.f32(i32 83, float %4287)  ; DerivCoarseX(value)
  %4322 = call float @dx.op.unary.f32(i32 83, float %4288)  ; DerivCoarseX(value)
  %4323 = call float @dx.op.unary.f32(i32 84, float %4286)  ; DerivCoarseY(value)
  %4324 = call float @dx.op.unary.f32(i32 84, float %4287)  ; DerivCoarseY(value)
  %4325 = call float @dx.op.unary.f32(i32 84, float %4288)  ; DerivCoarseY(value)
  %4326 = fcmp fast ole float %284, %4304
  %4327 = fmul fast float %4303, %4301
  %4328 = fcmp fast ole float %284, %4327
  %4329 = select i1 %4328, float %4288, float %4286
  %4330 = select i1 %4328, float %4286, float %4287
  %4331 = select i1 %4326, float %4287, float %4329
  %4332 = select i1 %4326, float %4288, float %4330
  %4333 = select i1 %4328, float %4322, float %4320
  %4334 = select i1 %4328, float %4320, float %4321
  %4335 = select i1 %4326, float %4321, float %4333
  %4336 = select i1 %4326, float %4322, float %4334
  %4337 = select i1 %4328, float %4325, float %4323
  %4338 = select i1 %4328, float %4323, float %4324
  %4339 = select i1 %4326, float %4324, float %4337
  %4340 = select i1 %4326, float %4325, float %4338
  %4341 = call float @dx.op.unary.f32(i32 27, float %4331)  ; Round_ni(value)
  %4342 = call float @dx.op.unary.f32(i32 27, float %4332)  ; Round_ni(value)
  %4343 = fptosi float %4341 to i32
  %4344 = fptosi float %4342 to i32
  %4345 = xor i32 %4344, %4343
  %4346 = sitofp i32 %4345 to float
  %4347 = fptosi float %4346 to i32
  %4348 = sitofp i32 %4347 to float
  %4349 = fmul fast float %4348, 0x3FE3C6EF40000000
  %4350 = frem fast float %4341, 2.560000e+02
  %4351 = frem fast float %4342, 2.560000e+02
  %4352 = fptoui float %4350 to i32
  %4353 = fptoui float %4351 to i32
  %4354 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %4352, i32 %4353, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4355 = extractvalue %dx.types.ResRet.f32 %4354, 0
  %4356 = extractvalue %dx.types.ResRet.f32 %4354, 1
  %4357 = extractvalue %dx.types.ResRet.f32 %4354, 2
  %4358 = fadd fast float %4355, %4349
  %4359 = fadd fast float %4356, %4349
  %4360 = fadd fast float %4357, %4349
  %4361 = call float @dx.op.unary.f32(i32 22, float %4358)  ; Frc(value)
  %4362 = call float @dx.op.unary.f32(i32 22, float %4359)  ; Frc(value)
  %4363 = call float @dx.op.unary.f32(i32 22, float %4360)  ; Frc(value)
  %4364 = fmul fast float %4363, 0x401921FB60000000
  %4365 = call float @dx.op.unary.f32(i32 13, float %4364)  ; Sin(value)
  %4366 = call float @dx.op.unary.f32(i32 12, float %4364)  ; Cos(value)
  %4367 = fsub fast float -0.000000e+00, %4366
  %4368 = fmul fast float %4366, %4331
  %4369 = call float @dx.op.tertiary.f32(i32 46, float %4365, float %4332, float %4368)  ; FMad(a,b,c)
  %4370 = fmul fast float %4365, %4331
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %4367, float %4332, float %4370)  ; FMad(a,b,c)
  %4372 = fadd fast float %4369, %4361
  %4373 = fadd fast float %4371, %4362
  %4374 = extractvalue %dx.types.CBufRet.f32 %4284, 3
  %4375 = bitcast float %4374 to i32
  %4376 = icmp eq i32 %4375, 0
  br i1 %4376, label %4415, label %4377

; <label>:4377                                    ; preds = %4280
  %4378 = add i32 %4375, 0
  %4379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4380 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4379, %dx.types.Handle %111, float %4372, float %4373, float undef, float undef, i32 0, i32 0, i32 undef, float %4335, float %4336, float undef, float %4339, float %4340, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4381 = extractvalue %dx.types.ResRet.f32 %4380, 0
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 1
  %4384 = extractvalue %dx.types.CBufRet.f32 %4382, 2
  %4385 = fsub fast float 1.000000e+00, %3990
  %4386 = call float @dx.op.binary.f32(i32 35, float %4385, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4387 = bitcast float %3990 to i32
  %4388 = sitofp i32 %4387 to float
  %4389 = fadd fast float %4388, 0xC1CFBF8940000000
  %4390 = fmul fast float %4384, %4389
  %4391 = fadd fast float %4390, 0x41CFBF8940000000
  %4392 = fptosi float %4391 to i32
  %4393 = bitcast i32 %4392 to float
  %4394 = bitcast float %4386 to i32
  %4395 = sitofp i32 %4394 to float
  %4396 = fadd fast float %4395, 0xC1CFBF8940000000
  %4397 = fmul fast float %4396, %4384
  %4398 = fadd fast float %4397, 0x41CFBF8940000000
  %4399 = fptosi float %4398 to i32
  %4400 = bitcast i32 %4399 to float
  %4401 = fmul fast float %4393, %4383
  %4402 = fmul fast float %4400, %4383
  %4403 = fsub fast float %4386, %4401
  %4404 = fadd fast float %4402, %4386
  %4405 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4406 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4407 = fsub fast float %4381, %4405
  %4408 = fsub fast float %4406, %4405
  %4409 = bitcast float %4408 to i32
  %4410 = sub nsw i32 2129859010, %4409
  %4411 = bitcast i32 %4410 to float
  %4412 = fmul fast float %4411, %4407
  %4413 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  %4414 = fcmp fast olt float %4413, 0x3F70101020000000
  br i1 %4414, label %4553, label %4415

; <label>:4415                                    ; preds = %4377, %4280
  %4416 = phi float [ %4413, %4377 ], [ %3990, %4280 ]
  %4417 = fmul fast float %4416, %4283
  %4418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.i32 %4418, 1
  %4420 = extractvalue %dx.types.CBufRet.i32 %4418, 0
  %4421 = add i32 %4420, 0
  %4422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4423 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4422, %dx.types.Handle %110, float %4372, float %4373, float undef, float undef, i32 0, i32 0, i32 undef, float %4335, float %4336, float undef, float %4339, float %4340, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4424 = extractvalue %dx.types.ResRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.ResRet.f32 %4423, 1
  %4426 = extractvalue %dx.types.ResRet.f32 %4423, 2
  %4427 = extractvalue %dx.types.ResRet.f32 %4423, 3
  %4428 = and i32 %4419, 255
  %4429 = uitofp i32 %4428 to float
  %4430 = lshr i32 %4419, 8
  %4431 = and i32 %4430, 255
  %4432 = uitofp i32 %4431 to float
  %4433 = fmul fast float %4427, %4429
  %4434 = fadd fast float %4433, %4432
  %4435 = fmul fast float %4434, 0x3F70101000000000
  %4436 = fadd fast float %4435, 0xBFB99999A0000000
  %4437 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4438 = fmul fast float %4437, 0x3FF1C71C80000000
  %4439 = call float @dx.op.binary.f32(i32 36, float %4435, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4440 = fsub fast float 1.000000e+00, %4438
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = fmul fast float %4441, %4424
  %4443 = fmul fast float %4441, %4425
  %4444 = fmul fast float %4441, %4426
  %4445 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4446 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4447 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4448 = fmul fast float %4438, %4424
  %4449 = fmul fast float %4438, %4425
  %4450 = fmul fast float %4438, %4426
  %4451 = fadd fast float %4448, %4439
  %4452 = fadd fast float %4449, %4439
  %4453 = fadd fast float %4450, %4439
  %4454 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4455 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4456 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.i32 %4457, 3
  %4459 = extractvalue %dx.types.CBufRet.i32 %4457, 2
  %4460 = add i32 %4459, 0
  %4461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4462 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4461, %dx.types.Handle %110, float %4372, float %4373, float undef, float undef, i32 0, i32 0, i32 undef, float %4335, float %4336, float undef, float %4339, float %4340, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4463 = extractvalue %dx.types.ResRet.f32 %4462, 0
  %4464 = extractvalue %dx.types.ResRet.f32 %4462, 1
  %4465 = extractvalue %dx.types.ResRet.f32 %4462, 2
  %4466 = extractvalue %dx.types.ResRet.f32 %4462, 3
  %4467 = and i32 %4458, 255
  %4468 = uitofp i32 %4467 to float
  %4469 = lshr i32 %4458, 8
  %4470 = and i32 %4469, 255
  %4471 = uitofp i32 %4470 to float
  %4472 = lshr i32 %4458, 16
  %4473 = and i32 %4472, 255
  %4474 = uitofp i32 %4473 to float
  %4475 = fmul fast float %4474, 0x3F70101000000000
  %4476 = fmul fast float %4463, %4468
  %4477 = fadd fast float %4476, %4471
  %4478 = fmul fast float %4477, 0x3F70101000000000
  %4479 = fadd fast float %4464, -5.000000e-01
  %4480 = fadd fast float %4466, -5.000000e-01
  %4481 = fmul fast float %4479, %4475
  %4482 = fmul fast float %4480, %4475
  %4483 = fadd fast float %4481, 5.000000e-01
  %4484 = fadd fast float %4482, 5.000000e-01
  %4485 = fmul fast float %4483, 2.000000e+00
  %4486 = fadd fast float %4485, -1.000000e+00
  %4487 = fmul fast float %4484, 2.000000e+00
  %4488 = fadd fast float %4487, -1.000000e+00
  %4489 = fadd fast float %4486, %4488
  %4490 = fmul fast float %4489, 5.000000e-01
  %4491 = fsub fast float %4486, %4488
  %4492 = fmul fast float %4491, 5.000000e-01
  %4493 = call float @dx.op.unary.f32(i32 6, float %4490)  ; FAbs(value)
  %4494 = fsub fast float 1.000000e+00, %4493
  %4495 = call float @dx.op.unary.f32(i32 6, float %4492)  ; FAbs(value)
  %4496 = fsub fast float %4494, %4495
  %4497 = call float @dx.op.dot3.f32(i32 55, float %4490, float %4492, float %4496, float %4490, float %4492, float %4496)  ; Dot3(ax,ay,az,bx,by,bz)
  %4498 = call float @dx.op.unary.f32(i32 25, float %4497)  ; Rsqrt(value)
  %4499 = fmul fast float %4490, %4498
  %4500 = fmul fast float %4492, %4498
  %4501 = select i1 %4328, i32 %4318, i32 %4319
  %4502 = select i1 %4326, i32 %4317, i32 %4501
  %4503 = sitofp i32 %4502 to float
  %4504 = fmul fast float %4496, %4503
  %4505 = fmul fast float %4504, %4498
  %4506 = select i1 %4328, float %4505, float %4500
  %4507 = select i1 %4328, float %4500, float %4505
  %4508 = select i1 %4326, float %4505, float %4499
  %4509 = select i1 %4326, float %4500, float %4506
  %4510 = select i1 %4326, float %4499, float %4507
  %4511 = fsub fast float %4445, %4275
  %4512 = fsub fast float %4446, %4276
  %4513 = fsub fast float %4447, %4277
  %4514 = fmul fast float %4511, %4417
  %4515 = fmul fast float %4512, %4417
  %4516 = fmul fast float %4513, %4417
  %4517 = fadd fast float %4514, %4275
  %4518 = fadd fast float %4515, %4276
  %4519 = fadd fast float %4516, %4277
  %4520 = fsub fast float %4454, %4269
  %4521 = fsub fast float %4455, %4270
  %4522 = fsub fast float %4456, %4271
  %4523 = fmul fast float %4520, %4417
  %4524 = fmul fast float %4521, %4417
  %4525 = fmul fast float %4522, %4417
  %4526 = fadd fast float %4523, %4269
  %4527 = fadd fast float %4524, %4270
  %4528 = fadd fast float %4525, %4271
  %4529 = fadd fast float %4508, %4272
  %4530 = fadd fast float %4509, %4273
  %4531 = fadd fast float %4510, %4274
  %4532 = call float @dx.op.dot3.f32(i32 55, float %4529, float %4530, float %4531, float %4529, float %4530, float %4531)  ; Dot3(ax,ay,az,bx,by,bz)
  %4533 = call float @dx.op.unary.f32(i32 25, float %4532)  ; Rsqrt(value)
  %4534 = fmul fast float %4529, %4533
  %4535 = fmul fast float %4530, %4533
  %4536 = fmul fast float %4531, %4533
  %4537 = fsub fast float %4534, %4272
  %4538 = fsub fast float %4535, %4273
  %4539 = fsub fast float %4536, %4274
  %4540 = fmul fast float %4537, %4417
  %4541 = fmul fast float %4538, %4417
  %4542 = fmul fast float %4539, %4417
  %4543 = fadd fast float %4540, %4272
  %4544 = fadd fast float %4541, %4273
  %4545 = fadd fast float %4542, %4274
  %4546 = call float @dx.op.binary.f32(i32 36, float %4279, float %4465)  ; FMin(a,b)
  %4547 = fsub fast float %4546, %4279
  %4548 = fmul fast float %4547, %4417
  %4549 = fadd fast float %4548, %4279
  %4550 = fsub fast float %4478, %4278
  %4551 = fmul fast float %4550, %4417
  %4552 = fadd fast float %4551, %4278
  br label %4553

; <label>:4553                                    ; preds = %4415, %4377, %4268, %3984
  %4554 = phi float [ %4526, %4415 ], [ %4269, %4377 ], [ %4269, %4268 ], [ %3578, %3984 ]
  %4555 = phi float [ %4527, %4415 ], [ %4270, %4377 ], [ %4270, %4268 ], [ %3579, %3984 ]
  %4556 = phi float [ %4528, %4415 ], [ %4271, %4377 ], [ %4271, %4268 ], [ %3580, %3984 ]
  %4557 = phi float [ %4543, %4415 ], [ %4272, %4377 ], [ %4272, %4268 ], [ %3557, %3984 ]
  %4558 = phi float [ %4544, %4415 ], [ %4273, %4377 ], [ %4273, %4268 ], [ %3558, %3984 ]
  %4559 = phi float [ %4545, %4415 ], [ %4274, %4377 ], [ %4274, %4268 ], [ %3559, %3984 ]
  %4560 = phi float [ %4517, %4415 ], [ %4275, %4377 ], [ %4275, %4268 ], [ %3593, %3984 ]
  %4561 = phi float [ %4518, %4415 ], [ %4276, %4377 ], [ %4276, %4268 ], [ %3594, %3984 ]
  %4562 = phi float [ %4519, %4415 ], [ %4277, %4377 ], [ %4277, %4268 ], [ %3595, %3984 ]
  %4563 = phi float [ %4552, %4415 ], [ %4278, %4377 ], [ %4278, %4268 ], [ %3581, %3984 ]
  %4564 = phi float [ %4549, %4415 ], [ %4279, %4377 ], [ %4279, %4268 ], [ %3483, %3984 ]
  %4565 = fcmp fast une float %3988, 0.000000e+00
  br i1 %4565, label %4566, label %4735

; <label>:4566                                    ; preds = %4553
  %4567 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4568 = call float @dx.op.unary.f32(i32 25, float %4567)  ; Rsqrt(value)
  %4569 = fmul fast float %201, %4568
  %4570 = fsub fast float -0.000000e+00, %4569
  %4571 = fmul fast float %202, %4568
  %4572 = fsub fast float -0.000000e+00, %4571
  %4573 = fmul fast float %203, %4568
  %4574 = fsub fast float -0.000000e+00, %4573
  %4575 = call float @dx.op.dot3.f32(i32 55, float %4570, float %4572, float %4574, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4576 = fmul fast float %3988, 2.500000e+00
  %4577 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4578 = fmul fast float %3988, 0x4013FFFFE0000000
  %4579 = fadd fast float %4578, 0xBFFFFFFFE0000000
  %4580 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4581 = fmul fast float %3988, 0x4004000020000000
  %4582 = fadd fast float %4581, 0xBFF8000040000000
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = fmul fast float %3560, 1.000000e+01
  %4585 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4586 = fmul fast float %4585, 2.000000e+00
  %4587 = fsub fast float 3.000000e+00, %4586
  %4588 = fmul fast float %4585, %4585
  %4589 = fmul fast float %4588, %4587
  %4590 = fsub fast float 1.000000e+00, %4589
  %4591 = fsub fast float 0x3FE3333340000000, %4563
  %4592 = fmul fast float %4591, 0x400AAAAAA0000000
  %4593 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4594 = fmul fast float %4590, %4593
  %4595 = fmul fast float %4560, 0x3FEA2B8620000000
  %4596 = fmul fast float %4561, 0x3FEA2B8620000000
  %4597 = fmul fast float %4562, 0x3FEA2B8620000000
  %4598 = fadd fast float %4595, 0x3FC81DFBA0000000
  %4599 = fmul fast float %4598, %4560
  %4600 = fadd fast float %4599, 0x3F910E6020000000
  %4601 = fadd fast float %4596, 0x3FC81DFBA0000000
  %4602 = fmul fast float %4601, %4561
  %4603 = fadd fast float %4602, 0x3F910E6020000000
  %4604 = fadd fast float %4597, 0x3FC81DFBA0000000
  %4605 = fmul fast float %4604, %4562
  %4606 = fadd fast float %4605, 0x3F910E6020000000
  %4607 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4608 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4609 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4610 = fsub fast float %4607, %4560
  %4611 = fsub fast float %4608, %4561
  %4612 = fsub fast float %4609, %4562
  %4613 = fmul fast float %4610, %4577
  %4614 = fmul fast float %4613, %4594
  %4615 = fmul fast float %4611, %4577
  %4616 = fmul fast float %4615, %4594
  %4617 = fmul fast float %4612, %4577
  %4618 = fmul fast float %4617, %4594
  %4619 = fadd fast float %4614, %4560
  %4620 = fadd fast float %4616, %4561
  %4621 = fadd fast float %4618, %4562
  %4622 = fmul fast float %4564, %4564
  %4623 = fmul fast float %4622, %4622
  %4624 = fadd fast float %4580, 1.000000e+00
  %4625 = fsub fast float %4624, %4594
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4628 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4629 = fsub fast float 1.000000e+00, %4623
  %4630 = call float @dx.op.binary.f32(i32 36, float %4626, float %4629)  ; FMin(a,b)
  %4631 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4632 = call float @dx.op.binary.f32(i32 35, float %4630, float %4631)  ; FMax(a,b)
  %4633 = fadd fast float %4628, 0xBFE4CCCCC0000000
  %4634 = fmul fast float %4633, 0x4006DB6DA0000000
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = fmul fast float %4635, 2.000000e+00
  %4637 = fsub fast float 3.000000e+00, %4636
  %4638 = bitcast float %4554 to i32
  %4639 = ashr i32 %4638, 1
  %4640 = add nsw i32 %4639, 532487669
  %4641 = bitcast i32 %4640 to float
  %4642 = fsub fast float 1.000000e+00, %4641
  %4643 = bitcast float %4642 to i32
  %4644 = sub nsw i32 2129859010, %4643
  %4645 = bitcast i32 %4644 to float
  %4646 = fmul fast float %4645, 2.000000e+00
  %4647 = bitcast float %4555 to i32
  %4648 = ashr i32 %4647, 1
  %4649 = add nsw i32 %4648, 532487669
  %4650 = bitcast i32 %4649 to float
  %4651 = fsub fast float 1.000000e+00, %4650
  %4652 = bitcast float %4651 to i32
  %4653 = sub nsw i32 2129859010, %4652
  %4654 = bitcast i32 %4653 to float
  %4655 = fmul fast float %4654, 2.000000e+00
  %4656 = bitcast float %4556 to i32
  %4657 = ashr i32 %4656, 1
  %4658 = add nsw i32 %4657, 532487669
  %4659 = bitcast i32 %4658 to float
  %4660 = fsub fast float 1.000000e+00, %4659
  %4661 = bitcast float %4660 to i32
  %4662 = sub nsw i32 2129859010, %4661
  %4663 = bitcast i32 %4662 to float
  %4664 = fmul fast float %4663, 2.000000e+00
  %4665 = fsub fast float 0x4002A9FBE0000000, %4646
  %4666 = fadd fast float %4646, 0x3FD54FDF00000000
  %4667 = bitcast float %4666 to i32
  %4668 = sub nsw i32 2129859010, %4667
  %4669 = bitcast i32 %4668 to float
  %4670 = fmul fast float %4669, %4665
  %4671 = fmul fast float %4670, %4670
  %4672 = fsub fast float 0x4002A9FBE0000000, %4655
  %4673 = fadd fast float %4655, 0x3FD54FDF00000000
  %4674 = bitcast float %4673 to i32
  %4675 = sub nsw i32 2129859010, %4674
  %4676 = bitcast i32 %4675 to float
  %4677 = fmul fast float %4676, %4672
  %4678 = fmul fast float %4677, %4677
  %4679 = fsub fast float 0x4002A9FBE0000000, %4664
  %4680 = fadd fast float %4664, 0x3FD54FDF00000000
  %4681 = bitcast float %4680 to i32
  %4682 = sub nsw i32 2129859010, %4681
  %4683 = bitcast i32 %4682 to float
  %4684 = fmul fast float %4683, %4679
  %4685 = fmul fast float %4684, %4684
  %4686 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4671)  ; FMax(a,b)
  %4687 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4678)  ; FMax(a,b)
  %4688 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4685)  ; FMax(a,b)
  %4689 = fsub fast float 1.000000e+00, %4575
  %4690 = fadd fast float %4689, %4590
  %4691 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4692 = fsub fast float 1.000000e+00, %3969
  %4693 = fmul fast float %4632, %4692
  %4694 = fmul fast float %4635, %4635
  %4695 = fmul fast float %4694, %4693
  %4696 = fmul fast float %4695, %4637
  %4697 = fmul fast float %4692, 0xBFE99999A0000000
  %4698 = fmul fast float %4697, %4577
  %4699 = fmul fast float %4698, %4594
  %4700 = fadd fast float %4699, 1.000000e+00
  %4701 = fadd fast float %4563, -1.000000e+00
  %4702 = fmul fast float %4700, %4701
  %4703 = fadd fast float %4702, 1.000000e+00
  %4704 = fsub fast float %4686, %4554
  %4705 = fsub fast float %4687, %4555
  %4706 = fsub fast float %4688, %4556
  %4707 = fmul fast float %4696, %4704
  %4708 = fmul fast float %4696, %4705
  %4709 = fmul fast float %4696, %4706
  %4710 = fadd fast float %4707, %4554
  %4711 = fadd fast float %4708, %4555
  %4712 = fadd fast float %4709, %4556
  %4713 = fsub fast float %121, %4557
  %4714 = fsub fast float %122, %4558
  %4715 = fsub fast float %123, %4559
  %4716 = fmul fast float %4696, %4713
  %4717 = fmul fast float %4696, %4714
  %4718 = fmul fast float %4696, %4715
  %4719 = fadd fast float %4716, %4557
  %4720 = fadd fast float %4717, %4558
  %4721 = fadd fast float %4718, %4559
  %4722 = fmul fast float %4696, %4691
  %4723 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4724 = fsub fast float 1.000000e+00, %4723
  %4725 = fmul fast float %4722, %4724
  %4726 = fadd fast float %4725, %4723
  %4727 = fsub fast float 1.000000e+00, %4564
  %4728 = fmul fast float %4696, %4727
  %4729 = fadd fast float %4728, %4564
  %4730 = call float @dx.op.dot3.f32(i32 55, float %4719, float %4720, float %4721, float %4719, float %4720, float %4721)  ; Dot3(ax,ay,az,bx,by,bz)
  %4731 = call float @dx.op.unary.f32(i32 25, float %4730)  ; Rsqrt(value)
  %4732 = fmul fast float %4719, %4731
  %4733 = fmul fast float %4720, %4731
  %4734 = fmul fast float %4721, %4731
  br label %4735

; <label>:4735                                    ; preds = %4566, %4553
  %4736 = phi float [ %4710, %4566 ], [ %4554, %4553 ]
  %4737 = phi float [ %4711, %4566 ], [ %4555, %4553 ]
  %4738 = phi float [ %4712, %4566 ], [ %4556, %4553 ]
  %4739 = phi float [ %4732, %4566 ], [ %4557, %4553 ]
  %4740 = phi float [ %4733, %4566 ], [ %4558, %4553 ]
  %4741 = phi float [ %4734, %4566 ], [ %4559, %4553 ]
  %4742 = phi float [ %4619, %4566 ], [ %4560, %4553 ]
  %4743 = phi float [ %4620, %4566 ], [ %4561, %4553 ]
  %4744 = phi float [ %4621, %4566 ], [ %4562, %4553 ]
  %4745 = phi float [ %4726, %4566 ], [ %4563, %4553 ]
  %4746 = phi float [ %4729, %4566 ], [ %4564, %4553 ]
  %4747 = icmp eq i32 %59, 0
  br i1 %4747, label %4778, label %4748

; <label>:4748                                    ; preds = %4735
  %4749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.f32 %4749, 2
  %4751 = extractvalue %dx.types.CBufRet.f32 %4749, 3
  %4752 = fmul fast float %4750, %114
  %4753 = fmul fast float %4751, %115
  %4754 = fmul fast float %4752, 1.024000e+03
  %4755 = fmul fast float %4753, 1.024000e+03
  %4756 = fadd fast float %4754, -5.120000e+02
  %4757 = fadd fast float %4755, -5.120000e+02
  %4758 = fmul fast float %4752, 0x4081BEDF00000000
  %4759 = fadd fast float %4758, 0xC071BEDF00000000
  %4760 = call float @dx.op.unary.f32(i32 22, float %4759)  ; Frc(value)
  %4761 = fmul fast float %4756, %4760
  %4762 = fadd fast float %4761, %4757
  %4763 = fmul fast float %4753, 0x4073BEBE20000000
  %4764 = fadd fast float %4763, 0xC063BEBE20000000
  %4765 = call float @dx.op.unary.f32(i32 22, float %4764)  ; Frc(value)
  %4766 = fmul fast float %4757, %4765
  %4767 = fadd fast float %4766, %4756
  %4768 = fmul fast float %4762, %4767
  %4769 = call float @dx.op.unary.f32(i32 22, float %4768)  ; Frc(value)
  %4770 = add i32 %327, 12
  %4771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %4770, i32 undef)  ; BufferLoad(srv,index,wot)
  %4772 = extractvalue %dx.types.ResRet.i32 %4771, 0
  %4773 = and i32 %4772, 255
  %4774 = uitofp i32 %4773 to float
  %4775 = fmul fast float %4774, 0x3F70101020000000
  %4776 = fcmp fast olt float %4769, %4775
  br i1 %4776, label %4777, label %4778

; <label>:4777                                    ; preds = %4748
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4778

; <label>:4778                                    ; preds = %4777, %4748, %4735
  %4779 = fsub fast float -0.000000e+00, %203
  %4780 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = call float @dx.op.unary.f32(i32 25, float %4780)  ; Rsqrt(value)
  %4782 = fmul fast float %4781, %201
  %4783 = fmul fast float %4781, %202
  %4784 = fmul fast float %4781, %203
  %4785 = fsub fast float -0.000000e+00, %4782
  %4786 = fsub fast float -0.000000e+00, %4783
  %4787 = fsub fast float -0.000000e+00, %4784
  %4788 = select i1 %273, float 0.000000e+00, float %4738
  %4789 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float %4785, float %4786, float %4787)  ; Dot3(ax,ay,az,bx,by,bz)
  %4790 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4791 = call float @dx.op.dot3.f32(i32 55, float %4782, float %4783, float %4784, float %4739, float %4740, float %4741)  ; Dot3(ax,ay,az,bx,by,bz)
  %4792 = fmul fast float %4791, 2.000000e+00
  %4793 = fmul fast float %4792, %4739
  %4794 = fmul fast float %4792, %4740
  %4795 = fmul fast float %4792, %4741
  %4796 = fsub fast float %4782, %4793
  %4797 = fsub fast float %4783, %4794
  %4798 = fsub fast float %4784, %4795
  %4799 = call float @dx.op.binary.f32(i32 36, float %4746, float 1.000000e+00)  ; FMin(a,b)
  %4800 = fsub fast float 1.000000e+00, %4799
  %4801 = bitcast float %4800 to i32
  %4802 = ashr i32 %4801, 1
  %4803 = add nsw i32 %4802, 532487669
  %4804 = bitcast i32 %4803 to float
  %4805 = fsub fast float 1.000000e+00, %4745
  %4806 = call float @dx.op.binary.f32(i32 35, float %4805, float 0x3F847AE140000000)  ; FMax(a,b)
  %4807 = fmul fast float %4806, %4806
  %4808 = fmul fast float %4807, %4807
  %4809 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %4804, float %4808, float %4809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4811 = extractvalue %dx.types.ResRet.f32 %4810, 0
  %4812 = fsub fast float 1.000000e+00, %4746
  %4813 = bitcast float %4812 to i32
  %4814 = sub nsw i32 2129859010, %4813
  %4815 = fsub fast float 1.000000e+00, %81
  %4816 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4817 = call float @dx.op.binary.f32(i32 35, float %4816, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4818 = fdiv fast float %4815, %4817
  %4819 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4820 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4821 = fmul fast float %4820, 5.000000e-01
  %4822 = fadd fast float %4821, 5.000000e-01
  %4823 = fmul fast float %4822, %81
  %4824 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4825 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4826 = fmul fast float %4825, %4818
  %4827 = fadd fast float %4823, %4826
  %4828 = fsub fast float 5.000000e-01, %4821
  %4829 = fmul fast float %4828, %4742
  %4830 = fmul fast float %4828, %4743
  %4831 = fmul fast float %4828, %4744
  %4832 = fadd fast float %4827, %4829
  %4833 = fadd fast float %4827, %4830
  %4834 = fadd fast float %4827, %4831
  %4835 = call float @dx.op.dot3.f32(i32 55, float %4796, float %4797, float %4798, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4836 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4837 = fmul fast float %4836, 5.000000e-01
  %4838 = fadd fast float %4837, 5.000000e-01
  %4839 = fmul fast float %4838, %81
  %4840 = call float @dx.op.dot3.f32(i32 55, float %4796, float %4797, float %4798, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = fmul fast float %4841, %4818
  %4843 = fadd fast float %4839, %4842
  %4844 = fsub fast float 5.000000e-01, %4837
  %4845 = fmul fast float %4844, %4742
  %4846 = fmul fast float %4844, %4743
  %4847 = fmul fast float %4844, %4744
  %4848 = fadd fast float %4843, %4845
  %4849 = fadd fast float %4843, %4846
  %4850 = fadd fast float %4843, %4847
  %4851 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.f32 %4852, 0
  %4854 = call float @dx.op.binary.f32(i32 36, float %4742, float %4853)  ; FMin(a,b)
  %4855 = fmul fast float %4854, %4800
  %4856 = fsub fast float 1.000000e+00, %4855
  %4857 = bitcast float %4856 to i32
  %4858 = sub nsw i32 2129859010, %4857
  %4859 = bitcast i32 %4858 to float
  %4860 = call float @dx.op.binary.f32(i32 36, float %4743, float %4853)  ; FMin(a,b)
  %4861 = fmul fast float %4860, %4800
  %4862 = fsub fast float 1.000000e+00, %4861
  %4863 = bitcast float %4862 to i32
  %4864 = sub nsw i32 2129859010, %4863
  %4865 = bitcast i32 %4864 to float
  %4866 = call float @dx.op.binary.f32(i32 36, float %4744, float %4853)  ; FMin(a,b)
  %4867 = fmul fast float %4866, %4800
  %4868 = fsub fast float 1.000000e+00, %4867
  %4869 = bitcast float %4868 to i32
  %4870 = sub nsw i32 2129859010, %4869
  %4871 = bitcast i32 %4870 to float
  %4872 = fmul fast float %4799, %82
  %4873 = fmul fast float %4872, %4832
  %4874 = fmul fast float %4873, %4859
  %4875 = fmul fast float %4799, %83
  %4876 = fmul fast float %4875, %4833
  %4877 = fmul fast float %4876, %4865
  %4878 = fmul fast float %4799, %84
  %4879 = fmul fast float %4878, %4834
  %4880 = fmul fast float %4879, %4871
  %4881 = call float @dx.op.binary.f32(i32 36, float %4736, float %4853)  ; FMin(a,b)
  %4882 = fmul fast float %4881, %4800
  %4883 = fsub fast float 1.000000e+00, %4882
  %4884 = bitcast float %4883 to i32
  %4885 = sub nsw i32 2129859010, %4884
  %4886 = bitcast i32 %4885 to float
  %4887 = call float @dx.op.binary.f32(i32 36, float %4737, float %4853)  ; FMin(a,b)
  %4888 = fmul fast float %4887, %4800
  %4889 = fsub fast float 1.000000e+00, %4888
  %4890 = bitcast float %4889 to i32
  %4891 = sub nsw i32 2129859010, %4890
  %4892 = bitcast i32 %4891 to float
  %4893 = call float @dx.op.binary.f32(i32 36, float %4788, float %4853)  ; FMin(a,b)
  %4894 = fmul fast float %4893, %4800
  %4895 = fsub fast float 1.000000e+00, %4894
  %4896 = bitcast float %4895 to i32
  %4897 = sub nsw i32 2129859010, %4896
  %4898 = bitcast i32 %4897 to float
  %4899 = fmul fast float %4872, %4848
  %4900 = fmul fast float %4899, %4886
  %4901 = fmul fast float %4875, %4849
  %4902 = fmul fast float %4901, %4892
  %4903 = fmul fast float %4878, %4850
  %4904 = fmul fast float %4903, %4898
  %4905 = call float @dx.op.dot3.f32(i32 55, float %4874, float %4877, float %4880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4906 = select i1 %273, float 0.000000e+00, float %4874
  %4907 = select i1 %273, float %4905, float %4877
  %4908 = select i1 %273, float 0.000000e+00, float %4880
  %4909 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4902, float %4904, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4910 = select i1 %273, float 0.000000e+00, float %4900
  %4911 = select i1 %273, float %4909, float %4902
  %4912 = select i1 %273, float 0.000000e+00, float %4904
  %4913 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4914 = fmul fast float %4913, %4906
  %4915 = fmul fast float %4913, %4907
  %4916 = fmul fast float %4908, %4913
  %4917 = fmul fast float %4790, 9.843750e-01
  %4918 = fmul fast float %4745, 9.843750e-01
  %4919 = fadd fast float %4917, 7.812500e-03
  %4920 = fadd fast float %4918, 7.812500e-03
  %4921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %4919, float %4920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4922 = extractvalue %dx.types.ResRet.f32 %4921, 2
  %4923 = extractvalue %dx.types.ResRet.f32 %4921, 3
  %4924 = fmul fast float %4922, %4736
  %4925 = fmul fast float %4922, %4737
  %4926 = fmul fast float %4922, %4788
  %4927 = fadd fast float %4924, %4923
  %4928 = fadd fast float %4925, %4923
  %4929 = fadd fast float %4926, %4923
  %4930 = call float @dx.op.binary.f32(i32 35, float %4928, float %4929)  ; FMax(a,b)
  %4931 = call float @dx.op.binary.f32(i32 35, float %4927, float %4930)  ; FMax(a,b)
  %4932 = fsub fast float 1.000000e+00, %4931
  %4933 = fmul fast float %4931, %4745
  %4934 = fadd fast float %4933, %4745
  %4935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.f32 %4935, 2
  %4937 = extractvalue %dx.types.CBufRet.f32 %4935, 3
  %4938 = fmul fast float %4934, %4936
  %4939 = fadd fast float %4938, %4937
  %4940 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4941 = fsub fast float 1.000000e+00, %4811
  %4942 = fadd fast float %4941, %4940
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fcmp fast olt float %4943, 1.000000e+00
  br i1 %4944, label %4945, label %5421

; <label>:4945                                    ; preds = %4778
  %4946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4947 = extractvalue %dx.types.CBufRet.f32 %4946, 2
  %4948 = extractvalue %dx.types.CBufRet.f32 %4946, 3
  %4949 = fmul fast float %4947, %114
  %4950 = fmul fast float %4948, %115
  %4951 = fptoui float %4949 to i32
  %4952 = fptoui float %4950 to i32
  %4953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.f32 %4953, 0
  %4955 = extractvalue %dx.types.CBufRet.f32 %4953, 2
  %4956 = extractvalue %dx.types.CBufRet.f32 %4953, 3
  %4957 = fadd fast float %101, -4.000000e+00
  %4958 = call float @dx.op.binary.f32(i32 35, float %4957, float 0.000000e+00)  ; FMax(a,b)
  %4959 = fadd fast float %4958, %4954
  %4960 = fmul fast float %4959, %4955
  %4961 = call float @dx.op.unary.f32(i32 23, float %4960)  ; Log(value)
  %4962 = fmul fast float %4961, %4956
  %4963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4963, 2
  %4965 = fmul fast float %4962, %4964
  %4966 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4968 = extractvalue %dx.types.CBufRet.i32 %4967, 1
  %4969 = add i32 %4968, -1
  %4970 = uitofp i32 %4968 to float
  %4971 = fmul fast float %4970, %4966
  %4972 = fptoui float %4971 to i32
  %4973 = call i32 @dx.op.binary.i32(i32 40, i32 %4972, i32 %4969)  ; UMin(a,b)
  %4974 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.i32 %4974, 2
  %4976 = extractvalue %dx.types.CBufRet.i32 %4974, 3
  %4977 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4952, i32 %4975, i32 %4951)  ; UMad(a,b,c)
  %4978 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4973, i32 %4976, i32 %4977)  ; UMad(a,b,c)
  %4979 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %4980 = fptoui float %4979 to i32
  %4981 = lshr i32 %4980, 5
  %4982 = call i32 @dx.op.binary.i32(i32 40, i32 %4981, i32 8191)  ; UMin(a,b)
  %4983 = fsub fast float %3956, %203
  %4984 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4985 = fcmp fast ogt float %4984, 0.000000e+00
  %4986 = fcmp fast ogt float %4798, 0.000000e+00
  %4987 = and i1 %4986, %4985
  br i1 %4987, label %4988, label %5017

; <label>:4988                                    ; preds = %4945
  %4989 = call float @dx.op.dot3.f32(i32 55, float %4796, float %4797, float %4798, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4990 = call float @dx.op.binary.f32(i32 35, float %4989, float -1.000000e+00)  ; FMax(a,b)
  %4991 = call float @dx.op.binary.f32(i32 36, float %4990, float 1.000000e+00)  ; FMin(a,b)
  %4992 = fmul fast float %4991, %4991
  %4993 = fsub fast float 1.000000e+00, %4992
  %4994 = fmul fast float %4993, 0x3FFC6E2300000000
  %4995 = fsub fast float 1.000000e+00, %4994
  %4996 = fcmp fast ogt float %4995, 0.000000e+00
  %4997 = call float @dx.op.unary.f32(i32 24, float %4995)  ; Sqrt(value)
  %4998 = fsub fast float 1.000000e+00, %4997
  %4999 = call float @dx.op.unary.f32(i32 23, float %4998)  ; Log(value)
  %5000 = fmul fast float %4999, 5.000000e+00
  %5001 = call float @dx.op.unary.f32(i32 21, float %5000)  ; Exp(value)
  %5002 = fmul fast float %5001, 0x3FEF591A60000000
  %5003 = fadd fast float %5002, 0x3F94DCB540000000
  %5004 = select i1 %4996, float %5003, float 1.000000e+00
  %5005 = fcmp fast oge float %5004, 1.000000e+00
  %5006 = fmul fast float %4989, 2.000000e+00
  %5007 = fadd fast float %5006, %4798
  %5008 = select i1 %5005, float %5007, float %4798
  %5009 = fsub fast float %5008, %4798
  %5010 = fmul fast float %5009, %4984
  %5011 = fadd fast float %5010, %4798
  %5012 = call float @dx.op.dot3.f32(i32 55, float %4796, float %4797, float %5011, float %4796, float %4797, float %5011)  ; Dot3(ax,ay,az,bx,by,bz)
  %5013 = call float @dx.op.unary.f32(i32 25, float %5012)  ; Rsqrt(value)
  %5014 = fmul fast float %5013, %4796
  %5015 = fmul fast float %5013, %4797
  %5016 = fmul fast float %5011, %5013
  br label %5017

; <label>:5017                                    ; preds = %4988, %4945
  %5018 = phi float [ %5014, %4988 ], [ %4796, %4945 ]
  %5019 = phi float [ %5015, %4988 ], [ %4797, %4945 ]
  %5020 = phi float [ %5016, %4988 ], [ %4798, %4945 ]
  %5021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5022 = extractvalue %dx.types.CBufRet.i32 %5021, 2
  %5023 = add nsw i32 %5022, -1
  %5024 = call i32 @dx.op.binary.i32(i32 37, i32 %5023, i32 0)  ; IMax(a,b)
  %5025 = shl i32 %4982, 2
  %5026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %5025, i32 undef)  ; BufferLoad(srv,index,wot)
  %5027 = extractvalue %dx.types.ResRet.i32 %5026, 0
  %5028 = lshr i32 %5027, 16
  %5029 = and i32 %5027, 65535
  %5030 = lshr i32 %5027, 21
  %5031 = lshr i32 %5029, 5
  %5032 = call i32 @dx.op.binary.i32(i32 40, i32 %5031, i32 %5024)  ; UMin(a,b)
  %5033 = icmp ugt i32 %5030, %5032
  br i1 %5033, label %5397, label %5034

; <label>:5034                                    ; preds = %5017
  br label %5035

; <label>:5035                                    ; preds = %5389, %5034
  %5036 = phi float [ %5390, %5389 ], [ 0.000000e+00, %5034 ]
  %5037 = phi float [ %5391, %5389 ], [ 0.000000e+00, %5034 ]
  %5038 = phi float [ %5392, %5389 ], [ 0.000000e+00, %5034 ]
  %5039 = phi float [ %5393, %5389 ], [ 1.000000e+00, %5034 ]
  %5040 = phi i32 [ %5394, %5389 ], [ %5030, %5034 ]
  %5041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5042 = extractvalue %dx.types.CBufRet.i32 %5041, 2
  %5043 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4978, i32 %5042, i32 %5040)  ; UMad(a,b,c)
  %5044 = shl i32 %5043, 2
  %5045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %5044, i32 undef)  ; BufferLoad(srv,index,wot)
  %5046 = extractvalue %dx.types.ResRet.i32 %5045, 0
  %5047 = shl i32 %5040, 5
  %5048 = sub nsw i32 %5028, %5047
  %5049 = call i32 @dx.op.binary.i32(i32 37, i32 %5048, i32 0)  ; IMax(a,b)
  %5050 = call i32 @dx.op.binary.i32(i32 38, i32 %5049, i32 31)  ; IMin(a,b)
  %5051 = sub nsw i32 1, %5028
  %5052 = add nsw i32 %5051, %5029
  %5053 = call i32 @dx.op.binary.i32(i32 37, i32 %5052, i32 0)  ; IMax(a,b)
  %5054 = call i32 @dx.op.binary.i32(i32 38, i32 %5053, i32 32)  ; IMin(a,b)
  %5055 = and i32 %5054, 31
  %5056 = shl i32 -1, %5055
  %5057 = xor i32 %5056, -1
  %5058 = and i32 %5050, 31
  %5059 = shl i32 %5057, %5058
  %5060 = icmp eq i32 %5054, 32
  %5061 = select i1 %5060, i32 -1, i32 %5059
  %5062 = and i32 %5061, %5046
  %5063 = icmp eq i32 %5062, 0
  br i1 %5063, label %5389, label %5064

; <label>:5064                                    ; preds = %5035
  br label %5065

; <label>:5065                                    ; preds = %5172, %5064
  %5066 = phi float [ %5173, %5172 ], [ %5036, %5064 ]
  %5067 = phi float [ %5174, %5172 ], [ %5037, %5064 ]
  %5068 = phi float [ %5175, %5172 ], [ %5038, %5064 ]
  %5069 = phi float [ %5176, %5172 ], [ %5039, %5064 ]
  %5070 = phi i32 [ %5075, %5172 ], [ %5062, %5064 ]
  %5071 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5070)  ; FirstbitLo(value)
  %5072 = add i32 %5071, %5047
  %5073 = and i32 %5071, 31
  %5074 = shl i32 1, %5073
  %5075 = xor i32 %5074, %5070
  %5076 = mul i32 %5072, 72
  %5077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5076, i32 undef)  ; BufferLoad(srv,index,wot)
  %5078 = extractvalue %dx.types.ResRet.f32 %5077, 0
  %5079 = extractvalue %dx.types.ResRet.f32 %5077, 1
  %5080 = extractvalue %dx.types.ResRet.f32 %5077, 2
  %5081 = add i32 %5076, 12
  %5082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %5081, i32 undef)  ; BufferLoad(srv,index,wot)
  %5083 = extractvalue %dx.types.ResRet.i32 %5082, 0
  %5084 = add i32 %5076, 16
  %5085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5084, i32 undef)  ; BufferLoad(srv,index,wot)
  %5086 = extractvalue %dx.types.ResRet.f32 %5085, 0
  %5087 = extractvalue %dx.types.ResRet.f32 %5085, 1
  %5088 = extractvalue %dx.types.ResRet.f32 %5085, 2
  %5089 = add i32 %5076, 28
  %5090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5089, i32 undef)  ; BufferLoad(srv,index,wot)
  %5091 = extractvalue %dx.types.ResRet.f32 %5090, 0
  %5092 = add i32 %5076, 32
  %5093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5092, i32 undef)  ; BufferLoad(srv,index,wot)
  %5094 = extractvalue %dx.types.ResRet.f32 %5093, 0
  %5095 = extractvalue %dx.types.ResRet.f32 %5093, 1
  %5096 = extractvalue %dx.types.ResRet.f32 %5093, 2
  %5097 = extractvalue %dx.types.ResRet.f32 %5093, 3
  %5098 = add i32 %5076, 48
  %5099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5098, i32 undef)  ; BufferLoad(srv,index,wot)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = extractvalue %dx.types.ResRet.f32 %5099, 1
  %5102 = add i32 %5076, 56
  %5103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5102, i32 undef)  ; BufferLoad(srv,index,wot)
  %5104 = extractvalue %dx.types.ResRet.f32 %5103, 0
  %5105 = extractvalue %dx.types.ResRet.f32 %5103, 1
  %5106 = add i32 %5076, 64
  %5107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5106, i32 undef)  ; BufferLoad(srv,index,wot)
  %5108 = extractvalue %dx.types.ResRet.f32 %5107, 0
  %5109 = extractvalue %dx.types.ResRet.f32 %5107, 1
  %5110 = mul i32 %5072, 60
  %5111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5110, i32 undef)  ; BufferLoad(srv,index,wot)
  %5112 = extractvalue %dx.types.ResRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.ResRet.f32 %5111, 1
  %5114 = extractvalue %dx.types.ResRet.f32 %5111, 2
  %5115 = add i32 %5110, 12
  %5116 = add i32 %5110, 48
  %5117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5116, i32 undef)  ; BufferLoad(srv,index,wot)
  %5118 = extractvalue %dx.types.ResRet.f32 %5117, 0
  %5119 = extractvalue %dx.types.ResRet.f32 %5117, 1
  %5120 = extractvalue %dx.types.ResRet.f32 %5117, 2
  %5121 = and i32 %5083, 32767
  %5122 = bitcast float %5078 to i32
  %5123 = icmp eq i32 %5122, -1
  %5124 = bitcast float %5079 to i32
  %5125 = and i32 %5083, 32768
  %5126 = icmp ne i32 %5125, 0
  %5127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5128 = extractvalue %dx.types.CBufRet.f32 %5127, 0
  %5129 = extractvalue %dx.types.CBufRet.f32 %5127, 1
  %5130 = extractvalue %dx.types.CBufRet.f32 %5127, 2
  %5131 = fsub fast float %5112, %5128
  %5132 = fsub fast float %5113, %5129
  %5133 = fsub fast float %5114, %5130
  %5134 = fsub fast float %201, %5131
  %5135 = fsub fast float %202, %5132
  %5136 = fsub fast float %203, %5133
  %5137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5115, i32 undef)  ; BufferLoad(srv,index,wot)
  %5138 = extractvalue %dx.types.ResRet.f32 %5137, 0
  %5139 = extractvalue %dx.types.ResRet.f32 %5137, 1
  %5140 = extractvalue %dx.types.ResRet.f32 %5137, 2
  %5141 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %5138, float %5139, float %5140)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = add i32 %5110, 24
  %5143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5142, i32 undef)  ; BufferLoad(srv,index,wot)
  %5144 = extractvalue %dx.types.ResRet.f32 %5143, 0
  %5145 = extractvalue %dx.types.ResRet.f32 %5143, 1
  %5146 = extractvalue %dx.types.ResRet.f32 %5143, 2
  %5147 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %5144, float %5145, float %5146)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = add i32 %5110, 36
  %5149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5148, i32 undef)  ; BufferLoad(srv,index,wot)
  %5150 = extractvalue %dx.types.ResRet.f32 %5149, 0
  %5151 = extractvalue %dx.types.ResRet.f32 %5149, 1
  %5152 = extractvalue %dx.types.ResRet.f32 %5149, 2
  %5153 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %5150, float %5151, float %5152)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = call float @dx.op.unary.f32(i32 6, float %5141)  ; FAbs(value)
  %5155 = call float @dx.op.unary.f32(i32 6, float %5147)  ; FAbs(value)
  %5156 = call float @dx.op.unary.f32(i32 6, float %5153)  ; FAbs(value)
  %5157 = fsub fast float %5118, %5154
  %5158 = fsub fast float %5119, %5155
  %5159 = fsub fast float %5120, %5156
  %5160 = fmul fast float %5157, %5086
  %5161 = fmul fast float %5158, %5087
  %5162 = fmul fast float %5159, %5088
  %5163 = call float @dx.op.binary.f32(i32 36, float %5161, float %5162)  ; FMin(a,b)
  %5164 = call float @dx.op.binary.f32(i32 36, float %5160, float %5163)  ; FMin(a,b)
  %5165 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  %5166 = call float @dx.op.binary.f32(i32 36, float %5069, float %5165)  ; FMin(a,b)
  %5167 = uitofp i1 %5126 to float
  %5168 = fadd fast float %4984, 1.000000e+00
  %5169 = fsub fast float %5168, %5167
  %5170 = fmul fast float %5166, %5169
  %5171 = fcmp fast ogt float %5170, 0.000000e+00
  br i1 %5171, label %5178, label %5172

; <label>:5172                                    ; preds = %5320, %5065
  %5173 = phi float [ %5384, %5320 ], [ %5066, %5065 ]
  %5174 = phi float [ %5385, %5320 ], [ %5067, %5065 ]
  %5175 = phi float [ %5386, %5320 ], [ %5068, %5065 ]
  %5176 = phi float [ %5387, %5320 ], [ %5069, %5065 ]
  %5177 = icmp eq i32 %5070, %5074
  br i1 %5177, label %5388, label %5065

; <label>:5178                                    ; preds = %5065
  br i1 %5123, label %5236, label %5179

; <label>:5179                                    ; preds = %5178
  %5180 = fsub fast float -0.000000e+00, %5138
  %5181 = fsub fast float -0.000000e+00, %5139
  %5182 = fsub fast float -0.000000e+00, %5140
  %5183 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5019, float %5020, float %5180, float %5181, float %5182)  ; Dot3(ax,ay,az,bx,by,bz)
  %5184 = fsub fast float -0.000000e+00, %5183
  %5185 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %5180, float %5181, float %5182)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = fadd fast float %5185, %5101
  %5187 = fadd fast float %5100, %5185
  %5188 = fsub fast float -0.000000e+00, %5187
  %5189 = fcmp ogt float %5183, -0.000000e+00
  %5190 = select i1 %5189, float %5188, float %5186
  %5191 = call float @dx.op.unary.f32(i32 6, float %5184)  ; FAbs(value)
  %5192 = fdiv fast float 1.000000e+00, %5191
  %5193 = fmul fast float %5190, %5192
  %5194 = call float @dx.op.binary.f32(i32 35, float %5193, float 0.000000e+00)  ; FMax(a,b)
  %5195 = fsub fast float -0.000000e+00, %5144
  %5196 = fsub fast float -0.000000e+00, %5145
  %5197 = fsub fast float -0.000000e+00, %5146
  %5198 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5019, float %5020, float %5195, float %5196, float %5197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5199 = fsub fast float -0.000000e+00, %5198
  %5200 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %5195, float %5196, float %5197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = fadd fast float %5200, %5105
  %5202 = fadd fast float %5104, %5200
  %5203 = fsub fast float -0.000000e+00, %5202
  %5204 = fcmp ogt float %5198, -0.000000e+00
  %5205 = select i1 %5204, float %5203, float %5201
  %5206 = call float @dx.op.unary.f32(i32 6, float %5199)  ; FAbs(value)
  %5207 = fdiv fast float 1.000000e+00, %5206
  %5208 = fmul fast float %5205, %5207
  %5209 = call float @dx.op.binary.f32(i32 35, float %5208, float 0.000000e+00)  ; FMax(a,b)
  %5210 = fsub fast float -0.000000e+00, %5150
  %5211 = fsub fast float -0.000000e+00, %5151
  %5212 = fsub fast float -0.000000e+00, %5152
  %5213 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5019, float %5020, float %5210, float %5211, float %5212)  ; Dot3(ax,ay,az,bx,by,bz)
  %5214 = fsub fast float -0.000000e+00, %5213
  %5215 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %5210, float %5211, float %5212)  ; Dot3(ax,ay,az,bx,by,bz)
  %5216 = fadd fast float %5215, %5109
  %5217 = fadd fast float %5108, %5215
  %5218 = fsub fast float -0.000000e+00, %5217
  %5219 = fcmp ogt float %5213, -0.000000e+00
  %5220 = select i1 %5219, float %5218, float %5216
  %5221 = call float @dx.op.unary.f32(i32 6, float %5214)  ; FAbs(value)
  %5222 = fdiv fast float 1.000000e+00, %5221
  %5223 = fmul fast float %5220, %5222
  %5224 = call float @dx.op.binary.f32(i32 35, float %5223, float 0.000000e+00)  ; FMax(a,b)
  %5225 = call float @dx.op.binary.f32(i32 36, float %5209, float %5224)  ; FMin(a,b)
  %5226 = call float @dx.op.binary.f32(i32 36, float %5194, float %5225)  ; FMin(a,b)
  %5227 = fmul fast float %5226, %5018
  %5228 = fmul fast float %5226, %5019
  %5229 = fmul fast float %5226, %5020
  %5230 = fadd fast float %5227, %201
  %5231 = fadd fast float %5228, %202
  %5232 = fadd fast float %5229, %203
  %5233 = fsub fast float %5230, %5078
  %5234 = fsub fast float %5231, %5079
  %5235 = fsub fast float %5232, %5080
  br label %5243

; <label>:5236                                    ; preds = %5178
  %5237 = fmul fast float %5018, 8.096000e+03
  %5238 = fmul fast float %5019, 8.096000e+03
  %5239 = fmul fast float %5020, 8.096000e+03
  %5240 = fadd fast float %5237, %201
  %5241 = fadd fast float %5238, %202
  %5242 = fadd fast float %5239, %203
  br label %5243

; <label>:5243                                    ; preds = %5236, %5179
  %5244 = phi float [ %5018, %5236 ], [ %5233, %5179 ]
  %5245 = phi float [ %5019, %5236 ], [ %5234, %5179 ]
  %5246 = phi float [ %5020, %5236 ], [ %5235, %5179 ]
  %5247 = phi float [ %5240, %5236 ], [ %5230, %5179 ]
  %5248 = phi float [ %5241, %5236 ], [ %5231, %5179 ]
  %5249 = phi float [ %5242, %5236 ], [ %5232, %5179 ]
  %5250 = fcmp fast olt float %5097, 1.000000e+00
  br i1 %5250, label %5251, label %5282, !dx.controlflow.hints !98

; <label>:5251                                    ; preds = %5243
  %5252 = fmul fast float %5246, %5095
  %5253 = fmul fast float %5245, %5096
  %5254 = fsub fast float %5252, %5253
  %5255 = fmul fast float %5244, %5096
  %5256 = fmul fast float %5246, %5094
  %5257 = fsub fast float %5255, %5256
  %5258 = fmul fast float %5245, %5094
  %5259 = fmul fast float %5244, %5095
  %5260 = fsub fast float %5258, %5259
  %5261 = fmul fast float %5254, 2.000000e+00
  %5262 = fmul fast float %5257, 2.000000e+00
  %5263 = fmul fast float %5260, 2.000000e+00
  %5264 = fmul fast float %5261, %5097
  %5265 = fmul fast float %5262, %5097
  %5266 = fmul fast float %5263, %5097
  %5267 = fmul fast float %5263, %5095
  %5268 = fmul fast float %5262, %5096
  %5269 = fmul fast float %5261, %5096
  %5270 = fmul fast float %5263, %5094
  %5271 = fmul fast float %5262, %5094
  %5272 = fmul fast float %5261, %5095
  %5273 = fadd fast float %5267, %5244
  %5274 = fadd fast float %5273, %5264
  %5275 = fsub fast float %5274, %5268
  %5276 = fsub fast float %5245, %5270
  %5277 = fadd fast float %5276, %5265
  %5278 = fadd fast float %5277, %5269
  %5279 = fadd fast float %5266, %5246
  %5280 = fsub fast float %5279, %5272
  %5281 = fadd fast float %5280, %5271
  br label %5282

; <label>:5282                                    ; preds = %5251, %5243
  %5283 = phi float [ %5275, %5251 ], [ %5244, %5243 ]
  %5284 = phi float [ %5278, %5251 ], [ %5245, %5243 ]
  %5285 = phi float [ %5281, %5251 ], [ %5246, %5243 ]
  br i1 %5123, label %5317, label %5286

; <label>:5286                                    ; preds = %5282
  %5287 = fmul fast float %4745, 0x400187C840000000
  %5288 = fadd fast float %5287, 0xC00EFC2120000000
  %5289 = fmul fast float %5288, %4745
  %5290 = fadd fast float %5289, 0x3FE5D16340000000
  %5291 = fmul fast float %5290, %4745
  %5292 = fadd fast float %5291, 1.000000e+00
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5294 = fsub fast float %5247, %201
  %5295 = fsub fast float %5248, %202
  %5296 = fsub fast float %5249, %203
  %5297 = fsub fast float %5247, %5078
  %5298 = fsub fast float %5248, %5079
  %5299 = fsub fast float %5249, %5080
  %5300 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5296, float %5294, float %5295, float %5296)  ; Dot3(ax,ay,az,bx,by,bz)
  %5301 = call float @dx.op.dot3.f32(i32 55, float %5297, float %5298, float %5299, float %5297, float %5298, float %5299)  ; Dot3(ax,ay,az,bx,by,bz)
  %5302 = fadd fast float %5301, 0x3EE4F8B580000000
  %5303 = fdiv fast float %5300, %5302
  %5304 = bitcast float %5303 to i32
  %5305 = ashr i32 %5304, 1
  %5306 = add nsw i32 %5305, 532487669
  %5307 = bitcast i32 %5306 to float
  %5308 = fmul fast float %5307, %5293
  %5309 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5310 = fmul fast float %5309, 0x4009981AE0000000
  %5311 = fsub fast float 0x40111BBD80000000, %5310
  %5312 = fmul fast float %5311, %5309
  %5313 = fadd fast float %5312, 0xC0009F6020000000
  %5314 = fmul fast float %5313, %5309
  %5315 = fadd fast float %5314, 1.000000e+00
  %5316 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  br label %5320

; <label>:5317                                    ; preds = %5282
  %5318 = icmp ne i32 %5124, -1
  %5319 = zext i1 %5318 to i32
  br label %5320

; <label>:5320                                    ; preds = %5317, %5286
  %5321 = phi float [ %4745, %5317 ], [ %5316, %5286 ]
  %5322 = phi i32 [ %5319, %5317 ], [ 0, %5286 ]
  %5323 = fmul float %5321, 5.000000e+00
  %5324 = fsub float 5.000000e+00, %5323
  %5325 = icmp ne i32 %5322, 0
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 3
  %5328 = fadd fast float %5327, %5324
  %5329 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5328)  ; FMax(a,b)
  %5330 = call float @dx.op.unary.f32(i32 6, float %5283)  ; FAbs(value)
  %5331 = call float @dx.op.unary.f32(i32 6, float %5284)  ; FAbs(value)
  %5332 = fadd fast float %5331, %5330
  %5333 = call float @dx.op.unary.f32(i32 6, float %5285)  ; FAbs(value)
  %5334 = fadd fast float %5332, %5333
  %5335 = fcmp fast oeq float %5334, 0.000000e+00
  %5336 = fdiv fast float 1.000000e+00, %5334
  %5337 = select i1 %5335, float 1.000000e+00, float %5336
  %5338 = fmul fast float %5337, %5283
  %5339 = fmul fast float %5337, %5284
  %5340 = call float @dx.op.unary.f32(i32 6, float %5339)  ; FAbs(value)
  %5341 = call float @dx.op.unary.f32(i32 6, float %5338)  ; FAbs(value)
  %5342 = fsub fast float 1.000000e+00, %5340
  %5343 = fsub fast float 1.000000e+00, %5341
  %5344 = fcmp fast oge float %5338, 0.000000e+00
  %5345 = fcmp fast oge float %5339, 0.000000e+00
  %5346 = select i1 %5344, float 1.000000e+00, float -1.000000e+00
  %5347 = select i1 %5345, float 1.000000e+00, float -1.000000e+00
  %5348 = fcmp fast ole float %5285, 0.000000e+00
  %5349 = fmul fast float %5346, %5342
  %5350 = fmul fast float %5347, %5343
  %5351 = select i1 %5348, float %5349, float %5338
  %5352 = select i1 %5348, float %5350, float %5339
  %5353 = fmul fast float %5351, 5.000000e-01
  %5354 = fmul fast float %5352, 5.000000e-01
  %5355 = fadd fast float %5353, 5.000000e-01
  %5356 = fadd fast float %5354, 5.000000e-01
  %5357 = uitofp i32 %5121 to float
  %5358 = call float @dx.op.binary.f32(i32 36, float %5329, float 3.000000e+00)  ; FMin(a,b)
  %5359 = fadd fast float %5358, 2.000000e+00
  %5360 = call float @dx.op.unary.f32(i32 21, float %5359)  ; Exp(value)
  %5361 = extractvalue %dx.types.CBufRet.f32 %5326, 1
  %5362 = fmul fast float %5361, %5360
  %5363 = fmul fast float %5362, 2.000000e+00
  %5364 = fsub fast float 1.000000e+00, %5363
  %5365 = fmul fast float %5355, %5364
  %5366 = fmul fast float %5356, %5364
  %5367 = fadd fast float %5365, %5362
  %5368 = fadd fast float %5366, %5362
  %5369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %49, float %5367, float %5368, float %5357, float undef, i32 0, i32 0, i32 undef, float %5329)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.ResRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.ResRet.f32 %5369, 2
  %5373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.f32 %5373, 3
  %5375 = fmul fast float %5374, %5091
  %5376 = call float @dx.op.binary.f32(i32 36, float %4851, float %5375)  ; FMin(a,b)
  %5377 = select i1 %5325, float %5376, float %5375
  %5378 = fmul fast float %5370, %5170
  %5379 = fmul fast float %5378, %5377
  %5380 = fmul fast float %5371, %5170
  %5381 = fmul fast float %5380, %5377
  %5382 = fmul fast float %5372, %5170
  %5383 = fmul fast float %5382, %5377
  %5384 = fadd fast float %5379, %5066
  %5385 = fadd fast float %5381, %5067
  %5386 = fadd fast float %5383, %5068
  %5387 = fsub fast float %5069, %5170
  br label %5172

; <label>:5388                                    ; preds = %5172
  br label %5389

; <label>:5389                                    ; preds = %5388, %5035
  %5390 = phi float [ %5036, %5035 ], [ %5173, %5388 ]
  %5391 = phi float [ %5037, %5035 ], [ %5174, %5388 ]
  %5392 = phi float [ %5038, %5035 ], [ %5175, %5388 ]
  %5393 = phi float [ %5039, %5035 ], [ %5176, %5388 ]
  %5394 = add i32 %5040, 1
  %5395 = icmp ugt i32 %5394, %5032
  br i1 %5395, label %5396, label %5035, !llvm.loop !99

; <label>:5396                                    ; preds = %5389
  br label %5397

; <label>:5397                                    ; preds = %5396, %5017
  %5398 = phi float [ 0.000000e+00, %5017 ], [ %5390, %5396 ]
  %5399 = phi float [ 0.000000e+00, %5017 ], [ %5391, %5396 ]
  %5400 = phi float [ 0.000000e+00, %5017 ], [ %5392, %5396 ]
  %5401 = call float @dx.op.dot3.f32(i32 55, float %5398, float %5399, float %5400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5402 = select i1 %273, float 0.000000e+00, float %5398
  %5403 = select i1 %273, float %5401, float %5399
  %5404 = select i1 %273, float 0.000000e+00, float %5400
  %5405 = fcmp fast olt float %4943, 0.000000e+00
  %5406 = call float @dx.op.unary.f32(i32 6, float %4943)  ; FAbs(value)
  %5407 = fmul fast float %5406, %4910
  %5408 = fmul fast float %5406, %4911
  %5409 = fmul fast float %5406, %4912
  %5410 = select i1 %5405, float %4910, float %5407
  %5411 = select i1 %5405, float %4911, float %5408
  %5412 = select i1 %5405, float %4912, float %5409
  %5413 = fsub fast float 1.000000e+00, %5406
  %5414 = call float @dx.op.unary.f32(i32 7, float %5413)  ; Saturate(value)
  %5415 = fmul fast float %5414, %5402
  %5416 = fmul fast float %5414, %5403
  %5417 = fmul fast float %5414, %5404
  %5418 = fadd fast float %5410, %5415
  %5419 = fadd fast float %5411, %5416
  %5420 = fadd fast float %5412, %5417
  br label %5421

; <label>:5421                                    ; preds = %5397, %4778
  %5422 = phi float [ %5418, %5397 ], [ %4910, %4778 ]
  %5423 = phi float [ %5419, %5397 ], [ %4911, %4778 ]
  %5424 = phi float [ %5420, %5397 ], [ %4912, %4778 ]
  %5425 = fmul fast float %201, %201
  %5426 = fmul fast float %202, %202
  %5427 = fadd fast float %5426, %5425
  %5428 = fmul fast float %203, %203
  %5429 = fadd fast float %5427, %5428
  %5430 = call float @dx.op.unary.f32(i32 24, float %5429)  ; Sqrt(value)
  %5431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5432 = extractvalue %dx.types.CBufRet.f32 %5431, 1
  %5433 = fsub fast float %5430, %5432
  %5434 = extractvalue %dx.types.CBufRet.f32 %5431, 2
  %5435 = fmul fast float %5433, %5434
  %5436 = call float @dx.op.unary.f32(i32 7, float %5435)  ; Saturate(value)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5431, 0
  %5438 = extractvalue %dx.types.CBufRet.f32 %5431, 3
  %5439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %5440 = extractvalue %dx.types.ResRet.i32 %5439, 0
  %5441 = and i32 %5440, 4194304
  %5442 = icmp ne i32 %5441, 0
  %5443 = and i32 %5440, 8388608
  %5444 = icmp ne i32 %5443, 0
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.CBufRet.f32 %5445, 2
  %5449 = extractvalue %dx.types.CBufRet.f32 %5445, 3
  %5450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.f32 %5450, 0
  %5452 = extractvalue %dx.types.CBufRet.f32 %5450, 1
  %5453 = extractvalue %dx.types.CBufRet.f32 %5450, 2
  %5454 = extractvalue %dx.types.CBufRet.f32 %5450, 3
  %5455 = select i1 %5442, float %5446, float %5451
  %5456 = select i1 %5442, float %5447, float %5452
  %5457 = select i1 %5442, float %5448, float %5453
  %5458 = select i1 %5442, float %5449, float %5454
  %5459 = select i1 %5444, float 0.000000e+00, float %5458
  %5460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.f32 %5460, 0
  %5462 = extractvalue %dx.types.CBufRet.f32 %5460, 1
  %5463 = select i1 %5442, float %5461, float %5462
  %5464 = select i1 %5444, float 0.000000e+00, float %5463
  %5465 = extractvalue %dx.types.CBufRet.f32 %5460, 2
  %5466 = extractvalue %dx.types.CBufRet.f32 %5460, 3
  %5467 = select i1 %5442, float %5465, float %5466
  %5468 = select i1 %5444, float 0.000000e+00, float %5467
  %5469 = fmul fast float %5436, %63
  %5470 = fmul fast float %5469, %5438
  %5471 = fmul fast float %5470, %5468
  %5472 = fadd fast float %5471, 1.000000e+00
  %5473 = fmul fast float %4932, %4914
  %5474 = fmul fast float %5473, %5472
  %5475 = fmul fast float %4932, %4915
  %5476 = fmul fast float %5475, %5472
  %5477 = fmul fast float %4932, %4916
  %5478 = fmul fast float %5477, %5472
  %5479 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4743, float %4744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = fcmp fast ogt float %5479, 0x3E7FF19E20000000
  %5481 = fdiv fast float 1.000000e+00, %5479
  %5482 = select i1 %5480, float %5481, float 0.000000e+00
  %5483 = fmul fast float %5482, %4742
  %5484 = fmul fast float %5482, %4743
  %5485 = fmul fast float %5482, %4744
  %5486 = fadd fast float %5483, -1.000000e+00
  %5487 = fadd fast float %5484, -1.000000e+00
  %5488 = fadd fast float %5485, -1.000000e+00
  %5489 = fmul fast float %5486, 5.000000e-01
  %5490 = fmul fast float %5487, 5.000000e-01
  %5491 = fmul fast float %5488, 5.000000e-01
  %5492 = fadd fast float %5489, 1.000000e+00
  %5493 = fadd fast float %5490, 1.000000e+00
  %5494 = fadd fast float %5491, 1.000000e+00
  %5495 = fsub fast float %5455, %5492
  %5496 = fsub fast float %5456, %5493
  %5497 = fsub fast float %5457, %5494
  %5498 = fmul fast float %5495, %5459
  %5499 = fmul fast float %5496, %5459
  %5500 = fmul fast float %5497, %5459
  %5501 = fadd fast float %5498, %5492
  %5502 = fadd fast float %5499, %5493
  %5503 = fadd fast float %5500, %5494
  %5504 = fmul fast float %5422, %4927
  %5505 = fmul fast float %5423, %4928
  %5506 = fmul fast float %5424, %4929
  %5507 = fsub fast float 1.000000e+00, %4790
  %5508 = bitcast float %5507 to i32
  %5509 = sitofp i32 %5508 to float
  %5510 = fmul fast float %5509, 5.000000e+00
  %5511 = fadd fast float %5510, 0xC1EFBF8940000000
  %5512 = fptosi float %5511 to i32
  %5513 = bitcast i32 %5512 to float
  %5514 = fmul fast float %5513, %63
  %5515 = fmul fast float %5514, %5436
  %5516 = fmul fast float %5515, %5437
  %5517 = fmul fast float %5516, %5464
  %5518 = fmul fast float %5473, %5517
  %5519 = fmul fast float %5518, %5501
  %5520 = fmul fast float %5475, %5517
  %5521 = fmul fast float %5520, %5502
  %5522 = fmul fast float %5477, %5517
  %5523 = fmul fast float %5522, %5503
  %5524 = fmul fast float %5474, %1264
  %5525 = fmul fast float %5476, %1264
  %5526 = fmul fast float %5478, %1264
  %5527 = fadd fast float %5504, %3527
  %5528 = fadd fast float %5527, %5519
  %5529 = fmul fast float %5528, %1264
  %5530 = fadd fast float %5505, %3529
  %5531 = fadd fast float %5530, %5521
  %5532 = fmul fast float %5531, %1264
  %5533 = fadd fast float %5506, %3531
  %5534 = fadd fast float %5533, %5523
  %5535 = fmul fast float %5534, %1264
  %5536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.f32 %5536, 3
  %5538 = fcmp fast oeq float %5537, 0.000000e+00
  br i1 %5538, label %7174, label %5539

; <label>:5539                                    ; preds = %5421
  %5540 = extractvalue %dx.types.CBufRet.f32 %5536, 0
  %5541 = extractvalue %dx.types.CBufRet.f32 %5536, 1
  %5542 = extractvalue %dx.types.CBufRet.f32 %5536, 2
  %5543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.f32 %5543, 0
  %5545 = extractvalue %dx.types.CBufRet.f32 %5543, 1
  %5546 = extractvalue %dx.types.CBufRet.f32 %5543, 2
  %5547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5548 = extractvalue %dx.types.CBufRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.CBufRet.f32 %5547, 1
  %5550 = call float @dx.op.dot3.f32(i32 55, float %5544, float %5545, float %5546, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5551 = select i1 %273, float %5548, float %5544
  %5552 = select i1 %273, float %5550, float %5545
  %5553 = select i1 %273, float %5549, float %5546
  %5554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5555 = extractvalue %dx.types.CBufRet.f32 %5554, 2
  %5556 = fmul fast float %5555, %121
  %5557 = fmul fast float %5555, %122
  %5558 = fmul fast float %5555, %123
  %5559 = fadd fast float %5556, %201
  %5560 = fadd fast float %5557, %202
  %5561 = fadd fast float %5558, %203
  %5562 = fcmp fast olt float %5537, 0.000000e+00
  br i1 %5562, label %6820, label %5563

; <label>:5563                                    ; preds = %5539
  %5564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5564, 0
  %5566 = extractvalue %dx.types.CBufRet.f32 %5564, 1
  %5567 = extractvalue %dx.types.CBufRet.f32 %5564, 2
  %5568 = extractvalue %dx.types.CBufRet.f32 %5564, 3
  %5569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5570 = extractvalue %dx.types.CBufRet.f32 %5569, 0
  %5571 = extractvalue %dx.types.CBufRet.f32 %5569, 1
  %5572 = extractvalue %dx.types.CBufRet.f32 %5569, 2
  %5573 = extractvalue %dx.types.CBufRet.f32 %5569, 3
  %5574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5575 = extractvalue %dx.types.CBufRet.f32 %5574, 0
  %5576 = extractvalue %dx.types.CBufRet.f32 %5574, 1
  %5577 = extractvalue %dx.types.CBufRet.f32 %5574, 2
  %5578 = extractvalue %dx.types.CBufRet.f32 %5574, 3
  %5579 = fmul fast float %5565, %5559
  %5580 = call float @dx.op.tertiary.f32(i32 46, float %5560, float %5566, float %5579)  ; FMad(a,b,c)
  %5581 = call float @dx.op.tertiary.f32(i32 46, float %5561, float %5567, float %5580)  ; FMad(a,b,c)
  %5582 = fadd fast float %5581, %5568
  %5583 = fmul fast float %5570, %5559
  %5584 = call float @dx.op.tertiary.f32(i32 46, float %5560, float %5571, float %5583)  ; FMad(a,b,c)
  %5585 = call float @dx.op.tertiary.f32(i32 46, float %5561, float %5572, float %5584)  ; FMad(a,b,c)
  %5586 = fadd fast float %5585, %5573
  %5587 = fmul fast float %5575, %5559
  %5588 = call float @dx.op.tertiary.f32(i32 46, float %5560, float %5576, float %5587)  ; FMad(a,b,c)
  %5589 = call float @dx.op.tertiary.f32(i32 46, float %5561, float %5577, float %5588)  ; FMad(a,b,c)
  %5590 = fadd fast float %5589, %5578
  %5591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5592 = extractvalue %dx.types.CBufRet.f32 %5591, 0
  %5593 = fcmp fast une float %5592, 0.000000e+00
  %5594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5595 = extractvalue %dx.types.CBufRet.f32 %5594, 0
  %5596 = extractvalue %dx.types.CBufRet.f32 %5594, 1
  %5597 = extractvalue %dx.types.CBufRet.f32 %5594, 3
  %5598 = fmul fast float %5597, %5582
  %5599 = fmul fast float %5597, %5586
  %5600 = fadd fast float %5598, %5595
  %5601 = fadd fast float %5599, %5596
  %5602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5603 = extractvalue %dx.types.CBufRet.f32 %5602, 0
  %5604 = extractvalue %dx.types.CBufRet.f32 %5602, 1
  %5605 = extractvalue %dx.types.CBufRet.f32 %5602, 3
  %5606 = fmul fast float %5605, %5582
  %5607 = fmul fast float %5605, %5586
  %5608 = fadd fast float %5606, %5603
  %5609 = fadd fast float %5607, %5604
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 1
  %5612 = fsub fast float %5611, %5590
  %5613 = extractvalue %dx.types.CBufRet.f32 %5610, 2
  %5614 = fmul fast float %5612, %5613
  %5615 = fsub fast float 1.000000e+00, %5614
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  br i1 %5593, label %5677, label %5617

; <label>:5617                                    ; preds = %5563
  %5618 = extractvalue %dx.types.CBufRet.f32 %5602, 2
  %5619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5620 = extractvalue %dx.types.CBufRet.f32 %5619, 2
  %5621 = fadd fast float %5620, %5618
  %5622 = fcmp fast ogt float %5621, 0.000000e+00
  br i1 %5622, label %5623, label %5647

; <label>:5623                                    ; preds = %5617
  %5624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5625 = extractvalue %dx.types.CBufRet.f32 %5624, 0
  %5626 = extractvalue %dx.types.CBufRet.f32 %5624, 1
  %5627 = fsub fast float %5608, %5625
  %5628 = fsub fast float %5609, %5626
  %5629 = fcmp fast olt float %5627, 0.000000e+00
  %5630 = fcmp fast olt float %5628, 0.000000e+00
  %5631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5632 = extractvalue %dx.types.CBufRet.f32 %5631, 0
  %5633 = extractvalue %dx.types.CBufRet.f32 %5631, 1
  %5634 = extractvalue %dx.types.CBufRet.f32 %5631, 2
  %5635 = extractvalue %dx.types.CBufRet.f32 %5631, 3
  %5636 = select i1 %5629, float %5632, float %5634
  %5637 = select i1 %5630, float %5633, float %5635
  %5638 = fmul fast float %5636, %5627
  %5639 = fmul fast float %5637, %5628
  %5640 = call float @dx.op.unary.f32(i32 6, float %5638)  ; FAbs(value)
  %5641 = call float @dx.op.unary.f32(i32 6, float %5639)  ; FAbs(value)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5554, 0
  %5643 = call float @dx.op.binary.f32(i32 35, float %5640, float %5641)  ; FMax(a,b)
  %5644 = fsub fast float %5642, %5643
  %5645 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5646 = fmul fast float %5645, %5616
  br label %5647

; <label>:5647                                    ; preds = %5623, %5617
  %5648 = phi float [ %5646, %5623 ], [ 0.000000e+00, %5617 ]
  %5649 = extractvalue %dx.types.CBufRet.f32 %5594, 2
  %5650 = extractvalue %dx.types.CBufRet.f32 %5619, 1
  %5651 = fadd fast float %5650, %5649
  %5652 = fcmp fast ogt float %5651, 0.000000e+00
  br i1 %5652, label %5653, label %5677

; <label>:5653                                    ; preds = %5647
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5654, 0
  %5656 = extractvalue %dx.types.CBufRet.f32 %5654, 1
  %5657 = fsub fast float %5600, %5655
  %5658 = fsub fast float %5601, %5656
  %5659 = fcmp fast olt float %5657, 0.000000e+00
  %5660 = fcmp fast olt float %5658, 0.000000e+00
  %5661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5662 = extractvalue %dx.types.CBufRet.f32 %5661, 0
  %5663 = extractvalue %dx.types.CBufRet.f32 %5661, 1
  %5664 = extractvalue %dx.types.CBufRet.f32 %5661, 2
  %5665 = extractvalue %dx.types.CBufRet.f32 %5661, 3
  %5666 = select i1 %5659, float %5662, float %5664
  %5667 = select i1 %5660, float %5663, float %5665
  %5668 = fmul fast float %5666, %5657
  %5669 = fmul fast float %5667, %5658
  %5670 = call float @dx.op.unary.f32(i32 6, float %5668)  ; FAbs(value)
  %5671 = call float @dx.op.unary.f32(i32 6, float %5669)  ; FAbs(value)
  %5672 = extractvalue %dx.types.CBufRet.f32 %5554, 0
  %5673 = call float @dx.op.binary.f32(i32 35, float %5670, float %5671)  ; FMax(a,b)
  %5674 = fsub fast float %5672, %5673
  %5675 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5676 = fmul fast float %5675, %5616
  br label %5677

; <label>:5677                                    ; preds = %5653, %5647, %5563
  %5678 = phi float [ 0.000000e+00, %5563 ], [ %5676, %5653 ], [ 0.000000e+00, %5647 ]
  %5679 = phi float [ 0.000000e+00, %5563 ], [ %5648, %5653 ], [ %5648, %5647 ]
  %5680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.f32 %5680, 1
  %5682 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.f32 %5683, 0
  %5685 = extractvalue %dx.types.CBufRet.f32 %5683, 1
  %5686 = fsub fast float %5582, %5684
  %5687 = fsub fast float %5586, %5685
  %5688 = fcmp fast olt float %5686, 0.000000e+00
  %5689 = fcmp fast olt float %5687, 0.000000e+00
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5692 = extractvalue %dx.types.CBufRet.f32 %5690, 1
  %5693 = extractvalue %dx.types.CBufRet.f32 %5690, 2
  %5694 = extractvalue %dx.types.CBufRet.f32 %5690, 3
  %5695 = select i1 %5688, float %5691, float %5693
  %5696 = select i1 %5689, float %5692, float %5694
  %5697 = fmul fast float %5695, %5686
  %5698 = fmul fast float %5696, %5687
  %5699 = call float @dx.op.unary.f32(i32 6, float %5697)  ; FAbs(value)
  %5700 = call float @dx.op.unary.f32(i32 6, float %5698)  ; FAbs(value)
  %5701 = extractvalue %dx.types.CBufRet.f32 %5554, 0
  %5702 = call float @dx.op.binary.f32(i32 35, float %5699, float %5700)  ; FMax(a,b)
  %5703 = fsub fast float %5701, %5702
  %5704 = call float @dx.op.unary.f32(i32 7, float %5703)  ; Saturate(value)
  %5705 = call float @dx.op.binary.f32(i32 36, float %5704, float %5682)  ; FMin(a,b)
  %5706 = fmul fast float %5705, %5616
  %5707 = fsub fast float %5678, %5706
  %5708 = fsub fast float %5679, %5678
  %5709 = fsub fast float %5708, %5706
  %5710 = call float @dx.op.binary.f32(i32 35, float %5678, float %5679)  ; FMax(a,b)
  %5711 = call float @dx.op.binary.f32(i32 35, float %5706, float %5710)  ; FMax(a,b)
  %5712 = fcmp fast olt float %5711, 1.000000e+00
  br i1 %5712, label %5713, label %6111, !dx.controlflow.hints !101

; <label>:5713                                    ; preds = %5677
  %5714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5715 = extractvalue %dx.types.CBufRet.f32 %5714, 0
  %5716 = fcmp fast une float %5715, 0.000000e+00
  br i1 %5716, label %5717, label %6111, !dx.controlflow.hints !102

; <label>:5717                                    ; preds = %5713
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 0
  %5720 = extractvalue %dx.types.CBufRet.f32 %5718, 1
  %5721 = extractvalue %dx.types.CBufRet.f32 %5718, 2
  %5722 = extractvalue %dx.types.CBufRet.f32 %5718, 3
  %5723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5724 = extractvalue %dx.types.CBufRet.f32 %5723, 0
  %5725 = extractvalue %dx.types.CBufRet.f32 %5723, 1
  %5726 = extractvalue %dx.types.CBufRet.f32 %5723, 2
  %5727 = extractvalue %dx.types.CBufRet.f32 %5723, 3
  %5728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5729 = extractvalue %dx.types.CBufRet.f32 %5728, 0
  %5730 = extractvalue %dx.types.CBufRet.f32 %5728, 1
  %5731 = extractvalue %dx.types.CBufRet.f32 %5728, 2
  %5732 = extractvalue %dx.types.CBufRet.f32 %5728, 3
  %5733 = fmul fast float %5719, %5559
  %5734 = call float @dx.op.tertiary.f32(i32 46, float %5560, float %5720, float %5733)  ; FMad(a,b,c)
  %5735 = call float @dx.op.tertiary.f32(i32 46, float %5561, float %5721, float %5734)  ; FMad(a,b,c)
  %5736 = fadd fast float %5735, %5722
  %5737 = fmul fast float %5724, %5559
  %5738 = call float @dx.op.tertiary.f32(i32 46, float %5560, float %5725, float %5737)  ; FMad(a,b,c)
  %5739 = call float @dx.op.tertiary.f32(i32 46, float %5561, float %5726, float %5738)  ; FMad(a,b,c)
  %5740 = fadd fast float %5739, %5727
  %5741 = fmul fast float %5729, %5559
  %5742 = call float @dx.op.tertiary.f32(i32 46, float %5560, float %5730, float %5741)  ; FMad(a,b,c)
  %5743 = call float @dx.op.tertiary.f32(i32 46, float %5561, float %5731, float %5742)  ; FMad(a,b,c)
  %5744 = fadd fast float %5743, %5732
  %5745 = fcmp fast oge float %5736, 1.000000e+00
  %5746 = fcmp fast oge float %5740, 1.000000e+00
  %5747 = or i1 %5745, %5746
  %5748 = fcmp fast olt float %5736, 0.000000e+00
  %5749 = fcmp fast olt float %5740, 0.000000e+00
  %5750 = or i1 %5748, %5749
  %5751 = or i1 %5747, %5750
  br i1 %5751, label %6111, label %5752, !dx.controlflow.hints !103

; <label>:5752                                    ; preds = %5717
  %5753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.f32 %5753, 0
  %5755 = extractvalue %dx.types.CBufRet.f32 %5753, 1
  %5756 = extractvalue %dx.types.CBufRet.f32 %5753, 2
  %5757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5758 = extractvalue %dx.types.CBufRet.i32 %5757, 2
  %5759 = uitofp i32 %5758 to float
  %5760 = extractvalue %dx.types.CBufRet.i32 %5757, 3
  %5761 = uitofp i32 %5760 to float
  %5762 = extractvalue %dx.types.CBufRet.f32 %5753, 3
  %5763 = fmul fast float %5762, 2.000000e+00
  %5764 = fsub fast float %5736, %5754
  %5765 = fsub fast float %5740, %5755
  %5766 = fmul fast float %5763, %5764
  %5767 = fmul fast float %5763, %5765
  %5768 = fdiv fast float 1.000000e+00, %5542
  %5769 = fmul fast float %5767, %5768
  %5770 = call float @dx.op.unary.f32(i32 6, float %5769)  ; FAbs(value)
  %5771 = fmul fast float %5756, %5561
  %5772 = fmul fast float %5771, %5763
  %5773 = call float @dx.op.unary.f32(i32 6, float %5772)  ; FAbs(value)
  %5774 = call float @dx.op.unary.f32(i32 6, float %5766)  ; FAbs(value)
  %5775 = call float @dx.op.binary.f32(i32 35, float %5773, float %5770)  ; FMax(a,b)
  %5776 = call float @dx.op.binary.f32(i32 35, float %5774, float %5775)  ; FMax(a,b)
  %5777 = fmul fast float %5776, 2.000000e+00
  %5778 = call float @dx.op.unary.f32(i32 23, float %5777)  ; Log(value)
  %5779 = call float @dx.op.binary.f32(i32 35, float %5778, float %5759)  ; FMax(a,b)
  %5780 = call float @dx.op.unary.f32(i32 22, float %5779)  ; Frc(value)
  %5781 = fadd fast float %5780, 0xBFEA666660000000
  %5782 = fmul fast float %5781, 8.000000e+00
  %5783 = call float @dx.op.unary.f32(i32 7, float %5782)  ; Saturate(value)
  %5784 = call float @dx.op.unary.f32(i32 27, float %5779)  ; Round_ni(value)
  %5785 = fadd fast float %5784, %5783
  %5786 = call float @dx.op.binary.f32(i32 36, float %5785, float %5761)  ; FMin(a,b)
  %5787 = call float @dx.op.unary.f32(i32 27, float %5786)  ; Round_ni(value)
  %5788 = fsub fast float -0.000000e+00, %5787
  %5789 = call float @dx.op.unary.f32(i32 21, float %5788)  ; Exp(value)
  %5790 = fmul fast float %5789, %5763
  %5791 = fmul fast float %5790, %5736
  %5792 = fmul fast float %5790, %5740
  %5793 = fmul fast float %5791, 2.500000e-01
  %5794 = fmul fast float %5792, 2.500000e-01
  %5795 = fadd fast float %5793, 5.000000e-01
  %5796 = fadd fast float %5794, 5.000000e-01
  %5797 = fsub fast float %5761, %5759
  %5798 = fptoui float %5797 to i32
  %5799 = add i32 %5798, 320
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %5799)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.CBufRet.f32 %5800, 1
  %5803 = fcmp fast une float %5786, %5761
  %5804 = fsub fast float %5736, %5801
  %5805 = fsub fast float %5740, %5802
  %5806 = call float @dx.op.unary.f32(i32 6, float %5804)  ; FAbs(value)
  %5807 = call float @dx.op.unary.f32(i32 6, float %5805)  ; FAbs(value)
  %5808 = fmul fast float %5806, %5790
  %5809 = fmul fast float %5807, %5790
  %5810 = fcmp fast olt float %5808, 1.000000e+00
  %5811 = fcmp fast olt float %5809, 1.000000e+00
  %5812 = and i1 %5810, %5811
  %5813 = or i1 %5803, %5812
  br i1 %5813, label %5814, label %6111, !dx.controlflow.hints !104

; <label>:5814                                    ; preds = %5752
  %5815 = fmul fast float %5792, 5.000000e-01
  %5816 = fmul fast float %5791, 5.000000e-01
  %5817 = fadd fast float %5815, 5.000000e-01
  %5818 = fadd fast float %5816, 5.000000e-01
  %5819 = sitofp i32 %5758 to float
  %5820 = fsub fast float %5786, %5819
  %5821 = call float @dx.op.unary.f32(i32 27, float %5820)  ; Round_ni(value)
  %5822 = call float @dx.op.unary.f32(i32 22, float %5786)  ; Frc(value)
  %5823 = call float @dx.op.unary.f32(i32 22, float %5818)  ; Frc(value)
  %5824 = call float @dx.op.unary.f32(i32 22, float %5817)  ; Frc(value)
  %5825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %5823, float %5824, float %5821, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5826 = extractvalue %dx.types.ResRet.f32 %5825, 0
  %5827 = extractvalue %dx.types.ResRet.f32 %5825, 1
  %5828 = extractvalue %dx.types.ResRet.f32 %5825, 2
  %5829 = extractvalue %dx.types.ResRet.f32 %5825, 3
  %5830 = fcmp fast ogt float %5822, 0.000000e+00
  br i1 %5830, label %5831, label %5852, !dx.controlflow.hints !105

; <label>:5831                                    ; preds = %5814
  %5832 = fadd fast float %5821, 1.000000e+00
  %5833 = call float @dx.op.unary.f32(i32 22, float %5795)  ; Frc(value)
  %5834 = call float @dx.op.unary.f32(i32 22, float %5796)  ; Frc(value)
  %5835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %5833, float %5834, float %5832, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5836 = extractvalue %dx.types.ResRet.f32 %5835, 0
  %5837 = extractvalue %dx.types.ResRet.f32 %5835, 1
  %5838 = extractvalue %dx.types.ResRet.f32 %5835, 2
  %5839 = extractvalue %dx.types.ResRet.f32 %5835, 3
  %5840 = fsub fast float %5836, %5826
  %5841 = fsub fast float %5837, %5827
  %5842 = fsub fast float %5838, %5828
  %5843 = fsub fast float %5839, %5829
  %5844 = fmul fast float %5840, %5822
  %5845 = fmul fast float %5841, %5822
  %5846 = fmul fast float %5842, %5822
  %5847 = fmul fast float %5843, %5822
  %5848 = fadd fast float %5844, %5826
  %5849 = fadd fast float %5845, %5827
  %5850 = fadd fast float %5846, %5828
  %5851 = fadd fast float %5847, %5829
  br label %5852

; <label>:5852                                    ; preds = %5831, %5814
  %5853 = phi float [ %5848, %5831 ], [ %5826, %5814 ]
  %5854 = phi float [ %5849, %5831 ], [ %5827, %5814 ]
  %5855 = phi float [ %5850, %5831 ], [ %5828, %5814 ]
  %5856 = phi float [ %5851, %5831 ], [ %5829, %5814 ]
  %5857 = fadd fast float %5853, -5.000000e-01
  %5858 = fadd fast float %5855, -5.000000e-01
  %5859 = fmul fast float %5857, 0xBFD5555560000000
  %5860 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5858, float %5859)  ; FMad(a,b,c)
  %5861 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5854, float 0.000000e+00)  ; FMad(a,b,c)
  %5862 = fadd fast float %5861, %5856
  %5863 = fmul fast float %5857, -7.500000e-01
  %5864 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5858, float %5863)  ; FMad(a,b,c)
  %5865 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5854, float 0.000000e+00)  ; FMad(a,b,c)
  %5866 = fadd fast float %5865, %5856
  %5867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5867, 0
  %5869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5869, 0
  %5871 = extractvalue %dx.types.CBufRet.f32 %5869, 1
  %5872 = extractvalue %dx.types.CBufRet.f32 %5869, 2
  %5873 = extractvalue %dx.types.CBufRet.f32 %5869, 3
  %5874 = fsub fast float %5870, %5860
  %5875 = fsub fast float %5871, %5862
  %5876 = fsub fast float %5872, %5864
  %5877 = fsub fast float %5873, %5866
  %5878 = fmul fast float %5874, %5868
  %5879 = fmul fast float %5875, %5868
  %5880 = fmul fast float %5876, %5868
  %5881 = fmul fast float %5877, %5868
  %5882 = fadd fast float %5878, %5860
  %5883 = fadd fast float %5879, %5862
  %5884 = fadd fast float %5880, %5864
  %5885 = fadd fast float %5881, %5866
  %5886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5887 = extractvalue %dx.types.ResRet.i32 %5886, 0
  %5888 = and i32 %5887, 536870911
  %5889 = uitofp i32 %5888 to float
  %5890 = fmul fast float %5889, %5736
  %5891 = fmul fast float %5889, %5740
  %5892 = fptoui float %5890 to i32
  %5893 = fptoui float %5891 to i32
  %5894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5895 = extractvalue %dx.types.ResRet.i32 %5894, 0
  %5896 = and i32 %5895, 31
  %5897 = lshr i32 %5892, %5896
  %5898 = lshr i32 %5893, %5896
  %5899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5900 = extractvalue %dx.types.ResRet.i32 %5899, 0
  %5901 = and i32 %5900, 31
  %5902 = shl i32 1, %5901
  %5903 = call i32 @dx.op.binary.i32(i32 40, i32 %5902, i32 4)  ; UMin(a,b)
  %5904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5905 = extractvalue %dx.types.ResRet.i32 %5904, 0
  %5906 = extractvalue %dx.types.ResRet.i32 %5904, 1
  %5907 = icmp eq i32 %5903, 0
  br i1 %5907, label %5949, label %5908

; <label>:5908                                    ; preds = %5852
  br label %5909

; <label>:5909                                    ; preds = %5937, %5908
  %5910 = phi i32 [ %5940, %5937 ], [ 0, %5908 ]
  %5911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5912 = extractvalue %dx.types.ResRet.i32 %5911, 0
  %5913 = lshr i32 %5912, 16
  %5914 = and i32 %5913, 31
  %5915 = shl i32 %5898, %5914
  %5916 = add i32 %5915, %5897
  %5917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5918 = extractvalue %dx.types.ResRet.i32 %5917, 0
  %5919 = and i32 %5918, 31
  %5920 = shl i32 %5916, %5919
  %5921 = add i32 %5920, %5910
  %5922 = shl i32 %5921, 2
  %5923 = add i32 %5922, 32
  %5924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5923, i32 undef)  ; BufferLoad(srv,index,wot)
  %5925 = extractvalue %dx.types.ResRet.i32 %5924, 0
  %5926 = icmp slt i32 %5925, 0
  %5927 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5910
  %5928 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5910
  %5929 = bitcast float* %5927 to i32*
  %5930 = bitcast float* %5928 to i32*
  br i1 %5926, label %5931, label %5937

; <label>:5931                                    ; preds = %5909
  %5932 = and i32 %5925, 1073741823
  %5933 = add nuw nsw i32 %5932, 20
  %5934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5933, i32 undef)  ; BufferLoad(srv,index,wot)
  %5935 = extractvalue %dx.types.ResRet.i32 %5934, 0
  %5936 = extractvalue %dx.types.ResRet.i32 %5934, 1
  br label %5937

; <label>:5937                                    ; preds = %5931, %5909
  %5938 = phi i32 [ %5935, %5931 ], [ %5905, %5909 ]
  %5939 = phi i32 [ %5936, %5931 ], [ %5906, %5909 ]
  store i32 %5938, i32* %5929, align 4
  store i32 %5939, i32* %5930, align 4
  %5940 = add nuw i32 %5910, 1
  %5941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.i32 %5941, 2
  %5943 = icmp eq i32 %5942, 0
  %5944 = icmp ugt i32 %5925, -1073741825
  %5945 = and i1 %5944, %5943
  %5946 = icmp ult i32 %5940, %5903
  %5947 = and i1 %5945, %5946
  br i1 %5947, label %5909, label %5948

; <label>:5948                                    ; preds = %5937
  br label %5949

; <label>:5949                                    ; preds = %5948, %5852
  %5950 = phi i32 [ 0, %5852 ], [ %5940, %5948 ]
  %5951 = extractvalue %dx.types.CBufRet.f32 %5714, 2
  %5952 = fptoui float %5951 to i32
  %5953 = icmp eq i32 %5952, 0
  br i1 %5953, label %6005, label %5954

; <label>:5954                                    ; preds = %5949
  br label %5955

; <label>:5955                                    ; preds = %6000, %5954
  %5956 = phi i32 [ %6001, %6000 ], [ %5950, %5954 ]
  %5957 = phi i32 [ %6002, %6000 ], [ 0, %5954 ]
  %5958 = lshr i32 %5957, 2
  %5959 = and i32 %5957, 3
  %5960 = add nuw nsw i32 %5958, 83
  %5961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 %5960)  ; CBufferLoadLegacy(handle,regIndex)
  %5962 = extractvalue %dx.types.CBufRet.i32 %5961, 0
  %5963 = extractvalue %dx.types.CBufRet.i32 %5961, 1
  %5964 = extractvalue %dx.types.CBufRet.i32 %5961, 2
  %5965 = extractvalue %dx.types.CBufRet.i32 %5961, 3
  %5966 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %5962, i32* %5966, align 4
  %5967 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %5963, i32* %5967, align 4
  %5968 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %5964, i32* %5968, align 4
  %5969 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %5965, i32* %5969, align 4
  %5970 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 %5959
  %5971 = load i32, i32* %5970, align 4, !tbaa !106, !noalias !110
  %5972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5973 = extractvalue %dx.types.ResRet.i32 %5972, 0
  %5974 = lshr i32 %5973, 16
  %5975 = and i32 %5974, 31
  %5976 = shl i32 %5898, %5975
  %5977 = add i32 %5976, %5897
  %5978 = shl i32 %5977, 2
  %5979 = add i32 %5978, %5971
  %5980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5979, i32 undef)  ; BufferLoad(srv,index,wot)
  %5981 = extractvalue %dx.types.ResRet.i32 %5980, 0
  %5982 = icmp eq i32 %5981, 0
  br i1 %5982, label %6000, label %5983

; <label>:5983                                    ; preds = %5955
  %5984 = icmp slt i32 %5981, 0
  %5985 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %5956
  %5986 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %5956
  %5987 = bitcast float* %5985 to i32*
  %5988 = bitcast float* %5986 to i32*
  br i1 %5984, label %5989, label %5996

; <label>:5989                                    ; preds = %5983
  %5990 = and i32 %5981, 1073741823
  %5991 = add i32 %5971, 20
  %5992 = add i32 %5991, %5990
  %5993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5992, i32 undef)  ; BufferLoad(srv,index,wot)
  %5994 = extractvalue %dx.types.ResRet.i32 %5993, 0
  %5995 = extractvalue %dx.types.ResRet.i32 %5993, 1
  br label %5996

; <label>:5996                                    ; preds = %5989, %5983
  %5997 = phi i32 [ %5994, %5989 ], [ %5905, %5983 ]
  %5998 = phi i32 [ %5995, %5989 ], [ %5906, %5983 ]
  store i32 %5997, i32* %5987, align 4
  store i32 %5998, i32* %5988, align 4
  %5999 = add i32 %5956, 1
  br label %6000

; <label>:6000                                    ; preds = %5996, %5955
  %6001 = phi i32 [ %5956, %5955 ], [ %5999, %5996 ]
  %6002 = add nuw i32 %5957, 1
  %6003 = icmp eq i32 %6002, %5952
  br i1 %6003, label %6004, label %5955

; <label>:6004                                    ; preds = %6000
  br label %6005

; <label>:6005                                    ; preds = %6004, %5949
  %6006 = phi i32 [ %5950, %5949 ], [ %6001, %6004 ]
  %6007 = icmp eq i32 %6006, 1
  %6008 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6009 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6007, label %6010, label %6013

; <label>:6010                                    ; preds = %6005
  %6011 = load float, float* %6008, align 4
  %6012 = load float, float* %6009, align 4
  br label %6040

; <label>:6013                                    ; preds = %6005
  %6014 = load float, float* %6008, align 4
  %6015 = load float, float* %6009, align 4
  %6016 = fdiv fast float 1.000000e+00, %6015
  %6017 = fsub fast float %6014, %6016
  %6018 = icmp ugt i32 %6006, 1
  br i1 %6018, label %6019, label %6035

; <label>:6019                                    ; preds = %6013
  br label %6020

; <label>:6020                                    ; preds = %6020, %6019
  %6021 = phi float [ %6030, %6020 ], [ %6017, %6019 ]
  %6022 = phi float [ %6031, %6020 ], [ %6014, %6019 ]
  %6023 = phi i32 [ %6032, %6020 ], [ 1, %6019 ]
  %6024 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6023
  %6025 = load float, float* %6024, align 4
  %6026 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6023
  %6027 = load float, float* %6026, align 4
  %6028 = fdiv fast float 1.000000e+00, %6027
  %6029 = fsub fast float %6025, %6028
  %6030 = call float @dx.op.binary.f32(i32 36, float %6021, float %6029)  ; FMin(a,b)
  %6031 = call float @dx.op.binary.f32(i32 35, float %6022, float %6025)  ; FMax(a,b)
  %6032 = add nuw i32 %6023, 1
  %6033 = icmp eq i32 %6032, %6006
  br i1 %6033, label %6034, label %6020

; <label>:6034                                    ; preds = %6020
  br label %6035

; <label>:6035                                    ; preds = %6034, %6013
  %6036 = phi float [ %6017, %6013 ], [ %6030, %6034 ]
  %6037 = phi float [ %6014, %6013 ], [ %6031, %6034 ]
  %6038 = fsub fast float %6037, %6036
  %6039 = fdiv fast float 1.000000e+00, %6038
  br label %6040

; <label>:6040                                    ; preds = %6035, %6010
  %6041 = phi float [ %6011, %6010 ], [ %6037, %6035 ]
  %6042 = phi float [ %6012, %6010 ], [ %6039, %6035 ]
  %6043 = fadd fast float %5744, %6041
  %6044 = fmul fast float %6043, %6042
  %6045 = call float @dx.op.unary.f32(i32 7, float %6044)  ; Saturate(value)
  %6046 = fmul fast float %6045, 2.000000e+00
  %6047 = fsub fast float 1.000000e+00, %6046
  %6048 = fmul fast float %5882, %5882
  %6049 = fsub fast float %5883, %6048
  %6050 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6049)  ; FMax(a,b)
  %6051 = fdiv fast float 1.000000e+00, %6050
  %6052 = fmul fast float %5883, %5882
  %6053 = fsub fast float %5884, %6052
  %6054 = fsub fast float %6047, %5882
  %6055 = fmul fast float %6047, %6047
  %6056 = fsub fast float %6055, %5883
  %6057 = fmul fast float %6051, %6053
  %6058 = fmul fast float %6057, %6054
  %6059 = fsub fast float %6056, %6058
  %6060 = fmul fast float %5883, %5883
  %6061 = fsub fast float %5885, %6060
  %6062 = fmul fast float %6053, %6053
  %6063 = fmul fast float %6062, %6051
  %6064 = fsub fast float %6061, %6063
  %6065 = fdiv fast float %6059, %6064
  %6066 = fmul fast float %6065, %6053
  %6067 = fsub fast float %6054, %6066
  %6068 = fmul fast float %6067, %6051
  %6069 = fmul fast float %6068, %5882
  %6070 = fsub fast float 1.000000e+00, %6069
  %6071 = fmul fast float %6065, %5883
  %6072 = fsub fast float %6070, %6071
  %6073 = fmul fast float %6068, %6068
  %6074 = fmul fast float %6065, 4.000000e+00
  %6075 = fmul fast float %6074, %6072
  %6076 = fsub fast float %6073, %6075
  %6077 = call float @dx.op.unary.f32(i32 24, float %6076)  ; Sqrt(value)
  %6078 = fcmp fast oge float %6068, 0.000000e+00
  %6079 = fsub fast float -0.000000e+00, %6077
  %6080 = select i1 %6078, float %6079, float %6077
  %6081 = fsub fast float %6080, %6068
  %6082 = fdiv fast float %6081, %6065
  %6083 = fdiv fast float %6072, %6081
  %6084 = fmul fast float %6082, 5.000000e-01
  %6085 = fmul fast float %6083, 2.000000e+00
  %6086 = select i1 %6078, float %6084, float %6085
  %6087 = select i1 %6078, float %6085, float %6084
  %6088 = call float @dx.op.binary.f32(i32 35, float %6086, float %6087)  ; FMax(a,b)
  %6089 = call float @dx.op.binary.f32(i32 36, float %6086, float %6087)  ; FMin(a,b)
  %6090 = fcmp fast ogt float %6047, %6088
  %6091 = fsub fast float %6047, %6089
  %6092 = fsub fast float %6047, %6088
  %6093 = fsub fast float %6088, %6089
  %6094 = select i1 %6090, float %6092, float %6093
  %6095 = fmul float %6091, %6094
  %6096 = select i1 %6090, float %6089, float %6047
  %6097 = fcmp fast ogt float %6047, %6089
  %6098 = fmul fast float %6096, %6088
  %6099 = fadd fast float %6096, %6088
  %6100 = fmul fast float %6099, %5882
  %6101 = fadd fast float %6098, %5883
  %6102 = fsub fast float %6101, %6100
  %6103 = fdiv fast float %6102, %6095
  %6104 = select i1 %6097, float %6103, float 0.000000e+00
  %6105 = fsub fast float 1.000000e+00, %6104
  %6106 = select i1 %6090, float %6105, float %6104
  %6107 = call float @dx.op.unary.f32(i32 7, float %6106)  ; Saturate(value)
  %6108 = extractvalue %dx.types.CBufRet.f32 %5867, 3
  %6109 = fmul fast float %6108, %6107
  %6110 = fsub fast float 1.000000e+00, %6109
  br label %6111

; <label>:6111                                    ; preds = %6040, %5752, %5717, %5713, %5677
  %6112 = phi float [ 1.000000e+00, %5677 ], [ %6110, %6040 ], [ 1.000000e+00, %5717 ], [ 1.000000e+00, %5752 ], [ 1.000000e+00, %5713 ]
  %6113 = fcmp fast ogt float %5709, 0.000000e+00
  br i1 %6113, label %6114, label %6278, !dx.controlflow.hints !119

; <label>:6114                                    ; preds = %6111
  %6115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.f32 %6115, 2
  %6117 = fadd fast float %6116, %5590
  %6118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6119 = extractvalue %dx.types.CBufRet.f32 %6118, 2
  %6120 = extractvalue %dx.types.CBufRet.f32 %6118, 3
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.f32 %6121, 2
  %6123 = call float @dx.op.binary.f32(i32 35, float %6117, float 0.000000e+00)  ; FMax(a,b)
  %6124 = fadd fast float %6123, 0x3F10000000000000
  %6125 = fcmp fast oeq float %6122, 0.000000e+00
  br i1 %6125, label %6126, label %6193

; <label>:6126                                    ; preds = %6114
  %6127 = extractvalue %dx.types.CBufRet.f32 %6118, 1
  %6128 = extractvalue %dx.types.CBufRet.f32 %6118, 0
  %6129 = fmul fast float %6128, %5608
  %6130 = fmul fast float %6127, %5609
  %6131 = fadd fast float %6129, 5.000000e-01
  %6132 = call float @dx.op.unary.f32(i32 27, float %6131)  ; Round_ni(value)
  %6133 = fadd fast float %6130, 5.000000e-01
  %6134 = call float @dx.op.unary.f32(i32 27, float %6133)  ; Round_ni(value)
  %6135 = fsub fast float %6131, %6132
  %6136 = fsub fast float %6133, %6134
  %6137 = fadd fast float %6132, -5.000000e-01
  %6138 = fadd fast float %6134, -5.000000e-01
  %6139 = fmul fast float %6135, 2.000000e+00
  %6140 = fsub fast float 3.000000e+00, %6139
  %6141 = fadd fast float %6139, 1.000000e+00
  %6142 = fsub fast float 2.000000e+00, %6135
  %6143 = bitcast float %6140 to i32
  %6144 = sub nsw i32 2129859010, %6143
  %6145 = bitcast i32 %6144 to float
  %6146 = fmul fast float %6145, %6142
  %6147 = fadd fast float %6146, -1.000000e+00
  %6148 = bitcast float %6141 to i32
  %6149 = sub nsw i32 2129859010, %6148
  %6150 = bitcast i32 %6149 to float
  %6151 = fmul fast float %6150, %6135
  %6152 = fadd fast float %6151, 1.000000e+00
  %6153 = fmul fast float %6136, 2.000000e+00
  %6154 = fsub fast float 3.000000e+00, %6153
  %6155 = fadd fast float %6153, 1.000000e+00
  %6156 = fsub fast float 2.000000e+00, %6136
  %6157 = bitcast float %6154 to i32
  %6158 = sub nsw i32 2129859010, %6157
  %6159 = bitcast i32 %6158 to float
  %6160 = fmul fast float %6159, %6156
  %6161 = fadd fast float %6160, -1.000000e+00
  %6162 = bitcast float %6155 to i32
  %6163 = sub nsw i32 2129859010, %6162
  %6164 = bitcast i32 %6163 to float
  %6165 = fmul fast float %6164, %6136
  %6166 = fadd fast float %6165, 1.000000e+00
  %6167 = fadd fast float %6147, %6137
  %6168 = fmul fast float %6167, %6119
  %6169 = fadd fast float %6161, %6138
  %6170 = fmul fast float %6169, %6120
  %6171 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %6168, float %6170, float undef, float undef, i32 0, i32 0, i32 undef, float %6124)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6172 = extractvalue %dx.types.ResRet.f32 %6171, 0
  %6173 = fmul fast float %6172, %6140
  %6174 = fadd fast float %6152, %6137
  %6175 = fmul fast float %6174, %6119
  %6176 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %6175, float %6170, float undef, float undef, i32 0, i32 0, i32 undef, float %6124)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6177 = extractvalue %dx.types.ResRet.f32 %6176, 0
  %6178 = fmul fast float %6177, %6141
  %6179 = fadd fast float %6166, %6138
  %6180 = fmul fast float %6179, %6120
  %6181 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %6168, float %6180, float undef, float undef, i32 0, i32 0, i32 undef, float %6124)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6182 = extractvalue %dx.types.ResRet.f32 %6181, 0
  %6183 = fmul fast float %6182, %6140
  %6184 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %6175, float %6180, float undef, float undef, i32 0, i32 0, i32 undef, float %6124)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6185 = extractvalue %dx.types.ResRet.f32 %6184, 0
  %6186 = fmul fast float %6185, %6141
  %6187 = fadd fast float %6186, %6183
  %6188 = fmul fast float %6187, %6155
  %6189 = fadd fast float %6178, %6173
  %6190 = fmul fast float %6189, %6154
  %6191 = fadd fast float %6190, %6188
  %6192 = fmul fast float %6191, 6.250000e-02
  br label %6278

; <label>:6193                                    ; preds = %6114
  %6194 = fmul fast float %284, 0x401921FB60000000
  %6195 = call float @dx.op.unary.f32(i32 13, float %6194)  ; Sin(value)
  %6196 = call float @dx.op.unary.f32(i32 12, float %6194)  ; Cos(value)
  %6197 = fsub fast float -0.000000e+00, %6195
  br label %6198

; <label>:6198                                    ; preds = %6247, %6193
  %6199 = phi float [ 0.000000e+00, %6193 ], [ %6242, %6247 ]
  %6200 = phi float [ 0.000000e+00, %6193 ], [ %6244, %6247 ]
  %6201 = phi i32 [ 0, %6193 ], [ %6248, %6247 ]
  %6202 = mul i32 %6201, 2
  %6203 = add i32 0, %6202
  %6204 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6203
  %6205 = load float, float* %6204, align 4
  %6206 = mul i32 %6201, 2
  %6207 = add i32 1, %6206
  %6208 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6207
  %6209 = load float, float* %6208, align 4
  %6210 = fmul fast float %6205, %6196
  %6211 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %6197, float %6210)  ; FMad(a,b,c)
  %6212 = fmul fast float %6205, %6195
  %6213 = call float @dx.op.tertiary.f32(i32 46, float %6209, float %6196, float %6212)  ; FMad(a,b,c)
  %6214 = fmul fast float %6211, %6122
  %6215 = fmul fast float %6213, %6122
  %6216 = fadd fast float %6214, %5608
  %6217 = fadd fast float %6215, %5609
  %6218 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %52, float %6216, float %6217, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6219 = extractvalue %dx.types.ResRet.f32 %6218, 0
  %6220 = extractvalue %dx.types.ResRet.f32 %6218, 1
  %6221 = extractvalue %dx.types.ResRet.f32 %6218, 2
  %6222 = extractvalue %dx.types.ResRet.f32 %6218, 3
  %6223 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6219, float* %6223, align 4
  %6224 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6220, float* %6224, align 4
  %6225 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6221, float* %6225, align 4
  %6226 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6222, float* %6226, align 4
  %6227 = fsub fast float %6219, %6124
  %6228 = fcmp fast olt float %6227, 0.000000e+00
  %6229 = select i1 %6228, float 0.000000e+00, float 1.000000e+00
  %6230 = fadd fast float %6229, %6199
  %6231 = fmul fast float %6229, %6227
  %6232 = fadd fast float %6231, %6200
  br label %6233

; <label>:6233                                    ; preds = %6233, %6198
  %6234 = phi i32 [ 1, %6198 ], [ %6245, %6233 ]
  %6235 = phi float [ %6232, %6198 ], [ %6244, %6233 ]
  %6236 = phi float [ %6230, %6198 ], [ %6242, %6233 ]
  %6237 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6234
  %6238 = load float, float* %6237, align 4, !tbaa !120, !noalias !110
  %6239 = fsub fast float %6238, %6124
  %6240 = fcmp fast olt float %6239, 0.000000e+00
  %6241 = select i1 %6240, float 0.000000e+00, float 1.000000e+00
  %6242 = fadd fast float %6241, %6236
  %6243 = fmul fast float %6241, %6239
  %6244 = fadd fast float %6243, %6235
  %6245 = add nuw nsw i32 %6234, 1
  %6246 = icmp eq i32 %6245, 4
  br i1 %6246, label %6247, label %6233, !llvm.loop !122

; <label>:6247                                    ; preds = %6233
  %6248 = add nuw nsw i32 %6201, 1
  %6249 = icmp eq i32 %6248, 8
  br i1 %6249, label %6250, label %6198, !llvm.loop !123

; <label>:6250                                    ; preds = %6247
  %6251 = fdiv fast float 1.000000e+00, %6242
  %6252 = fmul fast float %6251, %6244
  %6253 = fdiv fast float 1.000000e+00, %6124
  %6254 = fmul fast float %6252, %6253
  %6255 = call float @dx.op.unary.f32(i32 7, float %6254)  ; Saturate(value)
  %6256 = call float @dx.op.binary.f32(i32 35, float %6255, float 0.000000e+00)  ; FMax(a,b)
  %6257 = fmul fast float %6242, 3.125000e-02
  %6258 = call float @dx.op.unary.f32(i32 7, float %6257)  ; Saturate(value)
  %6259 = fmul fast float %6258, 2.000000e+00
  %6260 = fadd fast float %6259, -1.000000e+00
  %6261 = fcmp fast ogt float %6260, 0.000000e+00
  %6262 = fcmp fast olt float %6260, 0.000000e+00
  %6263 = zext i1 %6261 to i32
  %6264 = zext i1 %6262 to i32
  %6265 = sub nsw i32 %6263, %6264
  %6266 = sitofp i32 %6265 to float
  %6267 = fmul fast float %6266, %6260
  %6268 = fsub fast float 1.000000e+00, %6267
  %6269 = fmul fast float %6268, %6268
  %6270 = fmul fast float %6269, %6268
  %6271 = fsub fast float %6268, %6270
  %6272 = fmul fast float %6271, %6256
  %6273 = fsub fast float 1.000000e+00, %6270
  %6274 = fsub fast float %6273, %6272
  %6275 = fmul fast float %6266, 5.000000e-01
  %6276 = fmul fast float %6275, %6274
  %6277 = fsub fast float 5.000000e-01, %6276
  br label %6278

; <label>:6278                                    ; preds = %6250, %6126, %6111
  %6279 = phi float [ 1.000000e+00, %6111 ], [ %6192, %6126 ], [ %6277, %6250 ]
  %6280 = fcmp fast ogt float %5707, 0.000000e+00
  br i1 %6280, label %6281, label %6445, !dx.controlflow.hints !124

; <label>:6281                                    ; preds = %6278
  %6282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.f32 %6282, 1
  %6284 = fadd fast float %6283, %5590
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 2
  %6287 = extractvalue %dx.types.CBufRet.f32 %6285, 3
  %6288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6289 = extractvalue %dx.types.CBufRet.f32 %6288, 1
  %6290 = call float @dx.op.binary.f32(i32 35, float %6284, float 0.000000e+00)  ; FMax(a,b)
  %6291 = fadd fast float %6290, 0x3F10000000000000
  %6292 = fcmp fast oeq float %6289, 0.000000e+00
  br i1 %6292, label %6293, label %6360

; <label>:6293                                    ; preds = %6281
  %6294 = extractvalue %dx.types.CBufRet.f32 %6285, 1
  %6295 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6296 = fmul fast float %6295, %5600
  %6297 = fmul fast float %6294, %5601
  %6298 = fadd fast float %6296, 5.000000e-01
  %6299 = call float @dx.op.unary.f32(i32 27, float %6298)  ; Round_ni(value)
  %6300 = fadd fast float %6297, 5.000000e-01
  %6301 = call float @dx.op.unary.f32(i32 27, float %6300)  ; Round_ni(value)
  %6302 = fsub fast float %6298, %6299
  %6303 = fsub fast float %6300, %6301
  %6304 = fadd fast float %6299, -5.000000e-01
  %6305 = fadd fast float %6301, -5.000000e-01
  %6306 = fmul fast float %6302, 2.000000e+00
  %6307 = fsub fast float 3.000000e+00, %6306
  %6308 = fadd fast float %6306, 1.000000e+00
  %6309 = fsub fast float 2.000000e+00, %6302
  %6310 = bitcast float %6307 to i32
  %6311 = sub nsw i32 2129859010, %6310
  %6312 = bitcast i32 %6311 to float
  %6313 = fmul fast float %6312, %6309
  %6314 = fadd fast float %6313, -1.000000e+00
  %6315 = bitcast float %6308 to i32
  %6316 = sub nsw i32 2129859010, %6315
  %6317 = bitcast i32 %6316 to float
  %6318 = fmul fast float %6317, %6302
  %6319 = fadd fast float %6318, 1.000000e+00
  %6320 = fmul fast float %6303, 2.000000e+00
  %6321 = fsub fast float 3.000000e+00, %6320
  %6322 = fadd fast float %6320, 1.000000e+00
  %6323 = fsub fast float 2.000000e+00, %6303
  %6324 = bitcast float %6321 to i32
  %6325 = sub nsw i32 2129859010, %6324
  %6326 = bitcast i32 %6325 to float
  %6327 = fmul fast float %6326, %6323
  %6328 = fadd fast float %6327, -1.000000e+00
  %6329 = bitcast float %6322 to i32
  %6330 = sub nsw i32 2129859010, %6329
  %6331 = bitcast i32 %6330 to float
  %6332 = fmul fast float %6331, %6303
  %6333 = fadd fast float %6332, 1.000000e+00
  %6334 = fadd fast float %6314, %6304
  %6335 = fmul fast float %6334, %6286
  %6336 = fadd fast float %6328, %6305
  %6337 = fmul fast float %6336, %6287
  %6338 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %6335, float %6337, float undef, float undef, i32 0, i32 0, i32 undef, float %6291)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6339 = extractvalue %dx.types.ResRet.f32 %6338, 0
  %6340 = fmul fast float %6339, %6307
  %6341 = fadd fast float %6319, %6304
  %6342 = fmul fast float %6341, %6286
  %6343 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %6342, float %6337, float undef, float undef, i32 0, i32 0, i32 undef, float %6291)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6344 = extractvalue %dx.types.ResRet.f32 %6343, 0
  %6345 = fmul fast float %6344, %6308
  %6346 = fadd fast float %6333, %6305
  %6347 = fmul fast float %6346, %6287
  %6348 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %6335, float %6347, float undef, float undef, i32 0, i32 0, i32 undef, float %6291)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6349 = extractvalue %dx.types.ResRet.f32 %6348, 0
  %6350 = fmul fast float %6349, %6307
  %6351 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %6342, float %6347, float undef, float undef, i32 0, i32 0, i32 undef, float %6291)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6352 = extractvalue %dx.types.ResRet.f32 %6351, 0
  %6353 = fmul fast float %6352, %6308
  %6354 = fadd fast float %6353, %6350
  %6355 = fmul fast float %6354, %6322
  %6356 = fadd fast float %6345, %6340
  %6357 = fmul fast float %6356, %6321
  %6358 = fadd fast float %6357, %6355
  %6359 = fmul fast float %6358, 6.250000e-02
  br label %6445

; <label>:6360                                    ; preds = %6281
  %6361 = fmul fast float %284, 0x401921FB60000000
  %6362 = call float @dx.op.unary.f32(i32 13, float %6361)  ; Sin(value)
  %6363 = call float @dx.op.unary.f32(i32 12, float %6361)  ; Cos(value)
  %6364 = fsub fast float -0.000000e+00, %6362
  br label %6365

; <label>:6365                                    ; preds = %6414, %6360
  %6366 = phi float [ 0.000000e+00, %6360 ], [ %6409, %6414 ]
  %6367 = phi float [ 0.000000e+00, %6360 ], [ %6411, %6414 ]
  %6368 = phi i32 [ 0, %6360 ], [ %6415, %6414 ]
  %6369 = mul i32 %6368, 2
  %6370 = add i32 0, %6369
  %6371 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6370
  %6372 = load float, float* %6371, align 4
  %6373 = mul i32 %6368, 2
  %6374 = add i32 1, %6373
  %6375 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6374
  %6376 = load float, float* %6375, align 4
  %6377 = fmul fast float %6372, %6363
  %6378 = call float @dx.op.tertiary.f32(i32 46, float %6376, float %6364, float %6377)  ; FMad(a,b,c)
  %6379 = fmul fast float %6372, %6362
  %6380 = call float @dx.op.tertiary.f32(i32 46, float %6376, float %6363, float %6379)  ; FMad(a,b,c)
  %6381 = fmul fast float %6378, %6289
  %6382 = fmul fast float %6380, %6289
  %6383 = fadd fast float %6381, %5600
  %6384 = fadd fast float %6382, %5601
  %6385 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %52, float %6383, float %6384, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6386 = extractvalue %dx.types.ResRet.f32 %6385, 0
  %6387 = extractvalue %dx.types.ResRet.f32 %6385, 1
  %6388 = extractvalue %dx.types.ResRet.f32 %6385, 2
  %6389 = extractvalue %dx.types.ResRet.f32 %6385, 3
  %6390 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %6386, float* %6390, align 4
  %6391 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %6387, float* %6391, align 4
  %6392 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %6388, float* %6392, align 4
  %6393 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %6389, float* %6393, align 4
  %6394 = fsub fast float %6386, %6291
  %6395 = fcmp fast olt float %6394, 0.000000e+00
  %6396 = select i1 %6395, float 0.000000e+00, float 1.000000e+00
  %6397 = fadd fast float %6396, %6366
  %6398 = fmul fast float %6396, %6394
  %6399 = fadd fast float %6398, %6367
  br label %6400

; <label>:6400                                    ; preds = %6400, %6365
  %6401 = phi i32 [ 1, %6365 ], [ %6412, %6400 ]
  %6402 = phi float [ %6399, %6365 ], [ %6411, %6400 ]
  %6403 = phi float [ %6397, %6365 ], [ %6409, %6400 ]
  %6404 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %6401
  %6405 = load float, float* %6404, align 4, !tbaa !120, !noalias !110
  %6406 = fsub fast float %6405, %6291
  %6407 = fcmp fast olt float %6406, 0.000000e+00
  %6408 = select i1 %6407, float 0.000000e+00, float 1.000000e+00
  %6409 = fadd fast float %6408, %6403
  %6410 = fmul fast float %6408, %6406
  %6411 = fadd fast float %6410, %6402
  %6412 = add nuw nsw i32 %6401, 1
  %6413 = icmp eq i32 %6412, 4
  br i1 %6413, label %6414, label %6400, !llvm.loop !122

; <label>:6414                                    ; preds = %6400
  %6415 = add nuw nsw i32 %6368, 1
  %6416 = icmp eq i32 %6415, 8
  br i1 %6416, label %6417, label %6365, !llvm.loop !123

; <label>:6417                                    ; preds = %6414
  %6418 = fdiv fast float 1.000000e+00, %6409
  %6419 = fmul fast float %6418, %6411
  %6420 = fdiv fast float 1.000000e+00, %6291
  %6421 = fmul fast float %6419, %6420
  %6422 = call float @dx.op.unary.f32(i32 7, float %6421)  ; Saturate(value)
  %6423 = call float @dx.op.binary.f32(i32 35, float %6422, float 0.000000e+00)  ; FMax(a,b)
  %6424 = fmul fast float %6409, 3.125000e-02
  %6425 = call float @dx.op.unary.f32(i32 7, float %6424)  ; Saturate(value)
  %6426 = fmul fast float %6425, 2.000000e+00
  %6427 = fadd fast float %6426, -1.000000e+00
  %6428 = fcmp fast ogt float %6427, 0.000000e+00
  %6429 = fcmp fast olt float %6427, 0.000000e+00
  %6430 = zext i1 %6428 to i32
  %6431 = zext i1 %6429 to i32
  %6432 = sub nsw i32 %6430, %6431
  %6433 = sitofp i32 %6432 to float
  %6434 = fmul fast float %6433, %6427
  %6435 = fsub fast float 1.000000e+00, %6434
  %6436 = fmul fast float %6435, %6435
  %6437 = fmul fast float %6436, %6435
  %6438 = fsub fast float %6435, %6437
  %6439 = fmul fast float %6438, %6423
  %6440 = fsub fast float 1.000000e+00, %6437
  %6441 = fsub fast float %6440, %6439
  %6442 = fmul fast float %6433, 5.000000e-01
  %6443 = fmul fast float %6442, %6441
  %6444 = fsub fast float 5.000000e-01, %6443
  br label %6445

; <label>:6445                                    ; preds = %6417, %6293, %6278
  %6446 = phi float [ 1.000000e+00, %6278 ], [ %6359, %6293 ], [ %6444, %6417 ]
  %6447 = fcmp fast ogt float %5706, 0.000000e+00
  br i1 %6447, label %6448, label %6766, !dx.controlflow.hints !125

; <label>:6448                                    ; preds = %6445
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 0
  %6451 = fadd fast float %6450, %5590
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6452, 2
  %6454 = extractvalue %dx.types.CBufRet.f32 %6452, 3
  %6455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6455, 0
  %6457 = call float @dx.op.binary.f32(i32 35, float %6451, float 0.000000e+00)  ; FMax(a,b)
  %6458 = fadd fast float %6457, 0x3F10000000000000
  %6459 = fcmp fast oeq float %6456, 0.000000e+00
  br i1 %5593, label %6460, label %6613, !dx.controlflow.hints !126

; <label>:6460                                    ; preds = %6448
  br i1 %6459, label %6461, label %6528

; <label>:6461                                    ; preds = %6460
  %6462 = extractvalue %dx.types.CBufRet.f32 %6452, 1
  %6463 = extractvalue %dx.types.CBufRet.f32 %6452, 0
  %6464 = fmul fast float %6463, %5582
  %6465 = fmul fast float %6462, %5586
  %6466 = fadd fast float %6464, 5.000000e-01
  %6467 = call float @dx.op.unary.f32(i32 27, float %6466)  ; Round_ni(value)
  %6468 = fadd fast float %6465, 5.000000e-01
  %6469 = call float @dx.op.unary.f32(i32 27, float %6468)  ; Round_ni(value)
  %6470 = fsub fast float %6466, %6467
  %6471 = fsub fast float %6468, %6469
  %6472 = fadd fast float %6467, -5.000000e-01
  %6473 = fadd fast float %6469, -5.000000e-01
  %6474 = fmul fast float %6470, 2.000000e+00
  %6475 = fsub fast float 3.000000e+00, %6474
  %6476 = fadd fast float %6474, 1.000000e+00
  %6477 = fsub fast float 2.000000e+00, %6470
  %6478 = bitcast float %6475 to i32
  %6479 = sub nsw i32 2129859010, %6478
  %6480 = bitcast i32 %6479 to float
  %6481 = fmul fast float %6480, %6477
  %6482 = fadd fast float %6481, -1.000000e+00
  %6483 = bitcast float %6476 to i32
  %6484 = sub nsw i32 2129859010, %6483
  %6485 = bitcast i32 %6484 to float
  %6486 = fmul fast float %6485, %6470
  %6487 = fadd fast float %6486, 1.000000e+00
  %6488 = fmul fast float %6471, 2.000000e+00
  %6489 = fsub fast float 3.000000e+00, %6488
  %6490 = fadd fast float %6488, 1.000000e+00
  %6491 = fsub fast float 2.000000e+00, %6471
  %6492 = bitcast float %6489 to i32
  %6493 = sub nsw i32 2129859010, %6492
  %6494 = bitcast i32 %6493 to float
  %6495 = fmul fast float %6494, %6491
  %6496 = fadd fast float %6495, -1.000000e+00
  %6497 = bitcast float %6490 to i32
  %6498 = sub nsw i32 2129859010, %6497
  %6499 = bitcast i32 %6498 to float
  %6500 = fmul fast float %6499, %6471
  %6501 = fadd fast float %6500, 1.000000e+00
  %6502 = fadd fast float %6482, %6472
  %6503 = fmul fast float %6502, %6453
  %6504 = fadd fast float %6496, %6473
  %6505 = fmul fast float %6504, %6454
  %6506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %6503, float %6505, float undef, float undef, i32 0, i32 0, i32 undef, float %6458)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6507 = extractvalue %dx.types.ResRet.f32 %6506, 0
  %6508 = fmul fast float %6507, %6475
  %6509 = fadd fast float %6487, %6472
  %6510 = fmul fast float %6509, %6453
  %6511 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %6510, float %6505, float undef, float undef, i32 0, i32 0, i32 undef, float %6458)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6512 = extractvalue %dx.types.ResRet.f32 %6511, 0
  %6513 = fmul fast float %6512, %6476
  %6514 = fadd fast float %6501, %6473
  %6515 = fmul fast float %6514, %6454
  %6516 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %6503, float %6515, float undef, float undef, i32 0, i32 0, i32 undef, float %6458)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6517 = extractvalue %dx.types.ResRet.f32 %6516, 0
  %6518 = fmul fast float %6517, %6475
  %6519 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %6510, float %6515, float undef, float undef, i32 0, i32 0, i32 undef, float %6458)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6520 = extractvalue %dx.types.ResRet.f32 %6519, 0
  %6521 = fmul fast float %6520, %6476
  %6522 = fadd fast float %6521, %6518
  %6523 = fmul fast float %6522, %6490
  %6524 = fadd fast float %6513, %6508
  %6525 = fmul fast float %6524, %6489
  %6526 = fadd fast float %6525, %6523
  %6527 = fmul fast float %6526, 6.250000e-02
  br label %6766

; <label>:6528                                    ; preds = %6460
  %6529 = fmul fast float %284, 0x401921FB60000000
  %6530 = call float @dx.op.unary.f32(i32 13, float %6529)  ; Sin(value)
  %6531 = call float @dx.op.unary.f32(i32 12, float %6529)  ; Cos(value)
  %6532 = fsub fast float -0.000000e+00, %6530
  br label %6533

; <label>:6533                                    ; preds = %6582, %6528
  %6534 = phi float [ 0.000000e+00, %6528 ], [ %6577, %6582 ]
  %6535 = phi float [ 0.000000e+00, %6528 ], [ %6579, %6582 ]
  %6536 = phi i32 [ 0, %6528 ], [ %6583, %6582 ]
  %6537 = mul i32 %6536, 2
  %6538 = add i32 0, %6537
  %6539 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6538
  %6540 = load float, float* %6539, align 4
  %6541 = mul i32 %6536, 2
  %6542 = add i32 1, %6541
  %6543 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6542
  %6544 = load float, float* %6543, align 4
  %6545 = fmul fast float %6540, %6531
  %6546 = call float @dx.op.tertiary.f32(i32 46, float %6544, float %6532, float %6545)  ; FMad(a,b,c)
  %6547 = fmul fast float %6540, %6530
  %6548 = call float @dx.op.tertiary.f32(i32 46, float %6544, float %6531, float %6547)  ; FMad(a,b,c)
  %6549 = fmul fast float %6546, %6456
  %6550 = fmul fast float %6548, %6456
  %6551 = fadd fast float %6549, %5582
  %6552 = fadd fast float %6550, %5586
  %6553 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %52, float %6551, float %6552, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6554 = extractvalue %dx.types.ResRet.f32 %6553, 0
  %6555 = extractvalue %dx.types.ResRet.f32 %6553, 1
  %6556 = extractvalue %dx.types.ResRet.f32 %6553, 2
  %6557 = extractvalue %dx.types.ResRet.f32 %6553, 3
  %6558 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %6554, float* %6558, align 4
  %6559 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %6555, float* %6559, align 4
  %6560 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %6556, float* %6560, align 4
  %6561 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %6557, float* %6561, align 4
  %6562 = fsub fast float %6554, %6458
  %6563 = fcmp fast olt float %6562, 0.000000e+00
  %6564 = select i1 %6563, float 0.000000e+00, float 1.000000e+00
  %6565 = fadd fast float %6564, %6534
  %6566 = fmul fast float %6564, %6562
  %6567 = fadd fast float %6566, %6535
  br label %6568

; <label>:6568                                    ; preds = %6568, %6533
  %6569 = phi i32 [ 1, %6533 ], [ %6580, %6568 ]
  %6570 = phi float [ %6567, %6533 ], [ %6579, %6568 ]
  %6571 = phi float [ %6565, %6533 ], [ %6577, %6568 ]
  %6572 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %6569
  %6573 = load float, float* %6572, align 4, !tbaa !120, !noalias !110
  %6574 = fsub fast float %6573, %6458
  %6575 = fcmp fast olt float %6574, 0.000000e+00
  %6576 = select i1 %6575, float 0.000000e+00, float 1.000000e+00
  %6577 = fadd fast float %6576, %6571
  %6578 = fmul fast float %6576, %6574
  %6579 = fadd fast float %6578, %6570
  %6580 = add nuw nsw i32 %6569, 1
  %6581 = icmp eq i32 %6580, 4
  br i1 %6581, label %6582, label %6568, !llvm.loop !122

; <label>:6582                                    ; preds = %6568
  %6583 = add nuw nsw i32 %6536, 1
  %6584 = icmp eq i32 %6583, 8
  br i1 %6584, label %6585, label %6533, !llvm.loop !123

; <label>:6585                                    ; preds = %6582
  %6586 = fdiv fast float 1.000000e+00, %6577
  %6587 = fmul fast float %6586, %6579
  %6588 = fdiv fast float 1.000000e+00, %6458
  %6589 = fmul fast float %6587, %6588
  %6590 = call float @dx.op.unary.f32(i32 7, float %6589)  ; Saturate(value)
  %6591 = call float @dx.op.binary.f32(i32 35, float %6590, float 0.000000e+00)  ; FMax(a,b)
  %6592 = fmul fast float %6577, 3.125000e-02
  %6593 = call float @dx.op.unary.f32(i32 7, float %6592)  ; Saturate(value)
  %6594 = fmul fast float %6593, 2.000000e+00
  %6595 = fadd fast float %6594, -1.000000e+00
  %6596 = fcmp fast ogt float %6595, 0.000000e+00
  %6597 = fcmp fast olt float %6595, 0.000000e+00
  %6598 = zext i1 %6596 to i32
  %6599 = zext i1 %6597 to i32
  %6600 = sub nsw i32 %6598, %6599
  %6601 = sitofp i32 %6600 to float
  %6602 = fmul fast float %6601, %6595
  %6603 = fsub fast float 1.000000e+00, %6602
  %6604 = fmul fast float %6603, %6603
  %6605 = fmul fast float %6604, %6603
  %6606 = fsub fast float %6603, %6605
  %6607 = fmul fast float %6606, %6591
  %6608 = fsub fast float 1.000000e+00, %6605
  %6609 = fsub fast float %6608, %6607
  %6610 = fmul fast float %6601, 5.000000e-01
  %6611 = fmul fast float %6610, %6609
  %6612 = fsub fast float 5.000000e-01, %6611
  br label %6766

; <label>:6613                                    ; preds = %6448
  br i1 %6459, label %6614, label %6681

; <label>:6614                                    ; preds = %6613
  %6615 = extractvalue %dx.types.CBufRet.f32 %6452, 1
  %6616 = extractvalue %dx.types.CBufRet.f32 %6452, 0
  %6617 = fmul fast float %6616, %5582
  %6618 = fmul fast float %6615, %5586
  %6619 = fadd fast float %6617, 5.000000e-01
  %6620 = call float @dx.op.unary.f32(i32 27, float %6619)  ; Round_ni(value)
  %6621 = fadd fast float %6618, 5.000000e-01
  %6622 = call float @dx.op.unary.f32(i32 27, float %6621)  ; Round_ni(value)
  %6623 = fsub fast float %6619, %6620
  %6624 = fsub fast float %6621, %6622
  %6625 = fadd fast float %6620, -5.000000e-01
  %6626 = fadd fast float %6622, -5.000000e-01
  %6627 = fmul fast float %6623, 2.000000e+00
  %6628 = fsub fast float 3.000000e+00, %6627
  %6629 = fadd fast float %6627, 1.000000e+00
  %6630 = fsub fast float 2.000000e+00, %6623
  %6631 = bitcast float %6628 to i32
  %6632 = sub nsw i32 2129859010, %6631
  %6633 = bitcast i32 %6632 to float
  %6634 = fmul fast float %6633, %6630
  %6635 = fadd fast float %6634, -1.000000e+00
  %6636 = bitcast float %6629 to i32
  %6637 = sub nsw i32 2129859010, %6636
  %6638 = bitcast i32 %6637 to float
  %6639 = fmul fast float %6638, %6623
  %6640 = fadd fast float %6639, 1.000000e+00
  %6641 = fmul fast float %6624, 2.000000e+00
  %6642 = fsub fast float 3.000000e+00, %6641
  %6643 = fadd fast float %6641, 1.000000e+00
  %6644 = fsub fast float 2.000000e+00, %6624
  %6645 = bitcast float %6642 to i32
  %6646 = sub nsw i32 2129859010, %6645
  %6647 = bitcast i32 %6646 to float
  %6648 = fmul fast float %6647, %6644
  %6649 = fadd fast float %6648, -1.000000e+00
  %6650 = bitcast float %6643 to i32
  %6651 = sub nsw i32 2129859010, %6650
  %6652 = bitcast i32 %6651 to float
  %6653 = fmul fast float %6652, %6624
  %6654 = fadd fast float %6653, 1.000000e+00
  %6655 = fadd fast float %6635, %6625
  %6656 = fmul fast float %6655, %6453
  %6657 = fadd fast float %6649, %6626
  %6658 = fmul fast float %6657, %6454
  %6659 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %6656, float %6658, float undef, float undef, i32 0, i32 0, i32 undef, float %6458)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6660 = extractvalue %dx.types.ResRet.f32 %6659, 0
  %6661 = fmul fast float %6660, %6628
  %6662 = fadd fast float %6640, %6625
  %6663 = fmul fast float %6662, %6453
  %6664 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %6663, float %6658, float undef, float undef, i32 0, i32 0, i32 undef, float %6458)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 0
  %6666 = fmul fast float %6665, %6629
  %6667 = fadd fast float %6654, %6626
  %6668 = fmul fast float %6667, %6454
  %6669 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %6656, float %6668, float undef, float undef, i32 0, i32 0, i32 undef, float %6458)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  %6671 = fmul fast float %6670, %6628
  %6672 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %6663, float %6668, float undef, float undef, i32 0, i32 0, i32 undef, float %6458)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6673 = extractvalue %dx.types.ResRet.f32 %6672, 0
  %6674 = fmul fast float %6673, %6629
  %6675 = fadd fast float %6674, %6671
  %6676 = fmul fast float %6675, %6643
  %6677 = fadd fast float %6666, %6661
  %6678 = fmul fast float %6677, %6642
  %6679 = fadd fast float %6678, %6676
  %6680 = fmul fast float %6679, 6.250000e-02
  br label %6766

; <label>:6681                                    ; preds = %6613
  %6682 = fmul fast float %284, 0x401921FB60000000
  %6683 = call float @dx.op.unary.f32(i32 13, float %6682)  ; Sin(value)
  %6684 = call float @dx.op.unary.f32(i32 12, float %6682)  ; Cos(value)
  %6685 = fsub fast float -0.000000e+00, %6683
  br label %6686

; <label>:6686                                    ; preds = %6735, %6681
  %6687 = phi float [ 0.000000e+00, %6681 ], [ %6730, %6735 ]
  %6688 = phi float [ 0.000000e+00, %6681 ], [ %6732, %6735 ]
  %6689 = phi i32 [ 0, %6681 ], [ %6736, %6735 ]
  %6690 = mul i32 %6689, 2
  %6691 = add i32 0, %6690
  %6692 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6691
  %6693 = load float, float* %6692, align 4
  %6694 = mul i32 %6689, 2
  %6695 = add i32 1, %6694
  %6696 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6695
  %6697 = load float, float* %6696, align 4
  %6698 = fmul fast float %6693, %6684
  %6699 = call float @dx.op.tertiary.f32(i32 46, float %6697, float %6685, float %6698)  ; FMad(a,b,c)
  %6700 = fmul fast float %6693, %6683
  %6701 = call float @dx.op.tertiary.f32(i32 46, float %6697, float %6684, float %6700)  ; FMad(a,b,c)
  %6702 = fmul fast float %6699, %6456
  %6703 = fmul fast float %6701, %6456
  %6704 = fadd fast float %6702, %5582
  %6705 = fadd fast float %6703, %5586
  %6706 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %52, float %6704, float %6705, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6707 = extractvalue %dx.types.ResRet.f32 %6706, 0
  %6708 = extractvalue %dx.types.ResRet.f32 %6706, 1
  %6709 = extractvalue %dx.types.ResRet.f32 %6706, 2
  %6710 = extractvalue %dx.types.ResRet.f32 %6706, 3
  %6711 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %6707, float* %6711, align 4
  %6712 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %6708, float* %6712, align 4
  %6713 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %6709, float* %6713, align 4
  %6714 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %6710, float* %6714, align 4
  %6715 = fsub fast float %6707, %6458
  %6716 = fcmp fast olt float %6715, 0.000000e+00
  %6717 = select i1 %6716, float 0.000000e+00, float 1.000000e+00
  %6718 = fadd fast float %6717, %6687
  %6719 = fmul fast float %6717, %6715
  %6720 = fadd fast float %6719, %6688
  br label %6721

; <label>:6721                                    ; preds = %6721, %6686
  %6722 = phi i32 [ 1, %6686 ], [ %6733, %6721 ]
  %6723 = phi float [ %6720, %6686 ], [ %6732, %6721 ]
  %6724 = phi float [ %6718, %6686 ], [ %6730, %6721 ]
  %6725 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %6722
  %6726 = load float, float* %6725, align 4, !tbaa !120, !noalias !110
  %6727 = fsub fast float %6726, %6458
  %6728 = fcmp fast olt float %6727, 0.000000e+00
  %6729 = select i1 %6728, float 0.000000e+00, float 1.000000e+00
  %6730 = fadd fast float %6729, %6724
  %6731 = fmul fast float %6729, %6727
  %6732 = fadd fast float %6731, %6723
  %6733 = add nuw nsw i32 %6722, 1
  %6734 = icmp eq i32 %6733, 4
  br i1 %6734, label %6735, label %6721, !llvm.loop !122

; <label>:6735                                    ; preds = %6721
  %6736 = add nuw nsw i32 %6689, 1
  %6737 = icmp eq i32 %6736, 8
  br i1 %6737, label %6738, label %6686, !llvm.loop !123

; <label>:6738                                    ; preds = %6735
  %6739 = fdiv fast float 1.000000e+00, %6730
  %6740 = fmul fast float %6739, %6732
  %6741 = fdiv fast float 1.000000e+00, %6458
  %6742 = fmul fast float %6740, %6741
  %6743 = call float @dx.op.unary.f32(i32 7, float %6742)  ; Saturate(value)
  %6744 = call float @dx.op.binary.f32(i32 35, float %6743, float 0.000000e+00)  ; FMax(a,b)
  %6745 = fmul fast float %6730, 3.125000e-02
  %6746 = call float @dx.op.unary.f32(i32 7, float %6745)  ; Saturate(value)
  %6747 = fmul fast float %6746, 2.000000e+00
  %6748 = fadd fast float %6747, -1.000000e+00
  %6749 = fcmp fast ogt float %6748, 0.000000e+00
  %6750 = fcmp fast olt float %6748, 0.000000e+00
  %6751 = zext i1 %6749 to i32
  %6752 = zext i1 %6750 to i32
  %6753 = sub nsw i32 %6751, %6752
  %6754 = sitofp i32 %6753 to float
  %6755 = fmul fast float %6754, %6748
  %6756 = fsub fast float 1.000000e+00, %6755
  %6757 = fmul fast float %6756, %6756
  %6758 = fmul fast float %6757, %6756
  %6759 = fsub fast float %6756, %6758
  %6760 = fmul fast float %6759, %6744
  %6761 = fsub fast float 1.000000e+00, %6758
  %6762 = fsub fast float %6761, %6760
  %6763 = fmul fast float %6754, 5.000000e-01
  %6764 = fmul fast float %6763, %6762
  %6765 = fsub fast float 5.000000e-01, %6764
  br label %6766

; <label>:6766                                    ; preds = %6738, %6614, %6585, %6461, %6445
  %6767 = phi float [ 1.000000e+00, %6445 ], [ %6527, %6461 ], [ %6612, %6585 ], [ %6680, %6614 ], [ %6765, %6738 ]
  %6768 = fsub fast float %6279, %6112
  %6769 = fmul fast float %6768, %5679
  %6770 = fadd fast float %6769, %6112
  %6771 = fsub fast float %6446, %6770
  %6772 = fmul fast float %6771, %5678
  %6773 = fadd fast float %6772, %6770
  %6774 = fsub fast float %6767, %6773
  %6775 = fmul fast float %6774, %5706
  %6776 = fadd fast float %6775, %6773
  %6777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6778 = extractvalue %dx.types.CBufRet.f32 %6777, 2
  %6779 = fcmp fast ogt float %6778, 0.000000e+00
  br i1 %6779, label %6780, label %6820, !dx.controlflow.hints !127

; <label>:6780                                    ; preds = %6766
  %6781 = fcmp fast ugt float %6778, 0.000000e+00
  br i1 %6781, label %6782, label %6817

; <label>:6782                                    ; preds = %6780
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 0
  %6785 = extractvalue %dx.types.CBufRet.f32 %6783, 1
  %6786 = extractvalue %dx.types.CBufRet.f32 %6783, 2
  %6787 = extractvalue %dx.types.CBufRet.f32 %6783, 3
  %6788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6789 = extractvalue %dx.types.CBufRet.f32 %6788, 0
  %6790 = extractvalue %dx.types.CBufRet.f32 %6788, 1
  %6791 = extractvalue %dx.types.CBufRet.f32 %6788, 2
  %6792 = extractvalue %dx.types.CBufRet.f32 %6788, 3
  %6793 = extractvalue %dx.types.CBufRet.f32 %6777, 0
  %6794 = extractvalue %dx.types.CBufRet.f32 %6777, 1
  %6795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.CBufRet.f32 %6795, 1
  %6798 = extractvalue %dx.types.CBufRet.f32 %6795, 2
  %6799 = fadd fast float %6796, %5559
  %6800 = fadd fast float %6797, %5560
  %6801 = fadd fast float %6798, %5561
  %6802 = fmul fast float %6799, %6784
  %6803 = call float @dx.op.tertiary.f32(i32 46, float %6785, float %6800, float %6802)  ; FMad(a,b,c)
  %6804 = call float @dx.op.tertiary.f32(i32 46, float %6786, float %6801, float %6803)  ; FMad(a,b,c)
  %6805 = fadd fast float %6804, %6787
  %6806 = fmul fast float %6799, %6789
  %6807 = call float @dx.op.tertiary.f32(i32 46, float %6790, float %6800, float %6806)  ; FMad(a,b,c)
  %6808 = call float @dx.op.tertiary.f32(i32 46, float %6791, float %6801, float %6807)  ; FMad(a,b,c)
  %6809 = fadd fast float %6808, %6792
  %6810 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %48, float %6805, float %6809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6811 = extractvalue %dx.types.ResRet.f32 %6810, 0
  %6812 = fmul fast float %6811, %6794
  %6813 = fadd fast float %6812, %6793
  %6814 = call float @dx.op.unary.f32(i32 7, float %6813)  ; Saturate(value)
  %6815 = fmul fast float %6814, %6778
  %6816 = fsub fast float 1.000000e+00, %6815
  br label %6817

; <label>:6817                                    ; preds = %6782, %6780
  %6818 = phi float [ %6816, %6782 ], [ 1.000000e+00, %6780 ]
  %6819 = fmul fast float %6818, %6776
  br label %6820

; <label>:6820                                    ; preds = %6817, %6766, %5539
  %6821 = phi float [ 1.000000e+00, %5539 ], [ %6819, %6817 ], [ %6776, %6766 ]
  %6822 = call float @dx.op.binary.f32(i32 36, float %6821, float %6821)  ; FMin(a,b)
  %6823 = call float @dx.op.binary.f32(i32 36, float %6821, float %6822)  ; FMin(a,b)
  %6824 = fcmp fast ogt float %6823, 0.000000e+00
  br i1 %6824, label %6825, label %6990, !dx.controlflow.hints !128

; <label>:6825                                    ; preds = %6820
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6829 = extractvalue %dx.types.CBufRet.f32 %6826, 2
  %6830 = extractvalue %dx.types.CBufRet.f32 %6826, 3
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6834 = extractvalue %dx.types.CBufRet.f32 %6831, 2
  %6835 = extractvalue %dx.types.CBufRet.f32 %6831, 3
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6839 = extractvalue %dx.types.CBufRet.f32 %6836, 2
  %6840 = extractvalue %dx.types.CBufRet.f32 %6836, 3
  %6841 = fmul fast float %6827, %5559
  %6842 = call float @dx.op.tertiary.f32(i32 46, float %5560, float %6828, float %6841)  ; FMad(a,b,c)
  %6843 = call float @dx.op.tertiary.f32(i32 46, float %5561, float %6829, float %6842)  ; FMad(a,b,c)
  %6844 = fadd fast float %6843, %6830
  %6845 = fmul fast float %6832, %5559
  %6846 = call float @dx.op.tertiary.f32(i32 46, float %5560, float %6833, float %6845)  ; FMad(a,b,c)
  %6847 = call float @dx.op.tertiary.f32(i32 46, float %5561, float %6834, float %6846)  ; FMad(a,b,c)
  %6848 = fadd fast float %6847, %6835
  %6849 = fmul fast float %6837, %5559
  %6850 = call float @dx.op.tertiary.f32(i32 46, float %5560, float %6838, float %6849)  ; FMad(a,b,c)
  %6851 = call float @dx.op.tertiary.f32(i32 46, float %5561, float %6839, float %6850)  ; FMad(a,b,c)
  %6852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6853 = extractvalue %dx.types.CBufRet.f32 %6852, 0
  %6854 = extractvalue %dx.types.CBufRet.f32 %6852, 1
  %6855 = extractvalue %dx.types.CBufRet.f32 %6852, 3
  %6856 = fmul fast float %6855, %6844
  %6857 = fmul fast float %6855, %6848
  %6858 = fadd fast float %6856, %6853
  %6859 = fadd fast float %6857, %6854
  %6860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6860, 0
  %6862 = extractvalue %dx.types.CBufRet.f32 %6860, 1
  %6863 = fsub fast float %6858, %6861
  %6864 = fsub fast float %6859, %6862
  %6865 = fcmp fast olt float %6863, 0.000000e+00
  %6866 = fcmp fast olt float %6864, 0.000000e+00
  %6867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6868 = extractvalue %dx.types.CBufRet.f32 %6867, 0
  %6869 = extractvalue %dx.types.CBufRet.f32 %6867, 1
  %6870 = extractvalue %dx.types.CBufRet.f32 %6867, 2
  %6871 = extractvalue %dx.types.CBufRet.f32 %6867, 3
  %6872 = select i1 %6865, float %6868, float %6870
  %6873 = select i1 %6866, float %6869, float %6871
  %6874 = fmul fast float %6872, %6863
  %6875 = fmul fast float %6873, %6864
  %6876 = call float @dx.op.unary.f32(i32 6, float %6874)  ; FAbs(value)
  %6877 = call float @dx.op.unary.f32(i32 6, float %6875)  ; FAbs(value)
  %6878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.f32 %6878, 0
  %6880 = call float @dx.op.binary.f32(i32 35, float %6876, float %6877)  ; FMax(a,b)
  %6881 = fsub fast float %6879, %6880
  %6882 = call float @dx.op.unary.f32(i32 7, float %6881)  ; Saturate(value)
  %6883 = fcmp fast ogt float %6882, 0.000000e+00
  br i1 %6883, label %6884, label %6925, !dx.controlflow.hints !129

; <label>:6884                                    ; preds = %6825
  %6885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %51, float %6858, float %6859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6886 = extractvalue %dx.types.ResRet.f32 %6885, 1
  %6887 = fcmp fast ogt float %6886, 0.000000e+00
  br i1 %6887, label %6888, label %6920

; <label>:6888                                    ; preds = %6884
  %6889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %51, float %6858, float %6859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6890 = extractvalue %dx.types.ResRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.ResRet.f32 %6889, 1
  %6892 = extractvalue %dx.types.ResRet.f32 %6889, 2
  %6893 = extractvalue %dx.types.ResRet.f32 %6889, 3
  %6894 = fsub fast float 1.000000e+00, %6840
  %6895 = fsub fast float %6894, %6851
  %6896 = fmul fast float %6895, 0x400921FB60000000
  %6897 = fadd fast float %6896, 0x3FF921FB60000000
  %6898 = call float @dx.op.unary.f32(i32 13, float %6897)  ; Sin(value)
  %6899 = fadd fast float %6898, -1.000000e+00
  %6900 = fmul fast float %6899, 0x3FD45F3060000000
  %6901 = fmul fast float %6895, 0x401921FB60000000
  %6902 = fadd fast float %6901, 0x400921FB60000000
  %6903 = call float @dx.op.unary.f32(i32 13, float %6902)  ; Sin(value)
  %6904 = fadd fast float %6903, 0x3E7777A5C0000000
  %6905 = fmul fast float %6904, 0x3FC45F3060000000
  %6906 = fmul fast float %6895, 0x4022D97C80000000
  %6907 = fadd fast float %6906, 0x4012D97C80000000
  %6908 = call float @dx.op.unary.f32(i32 13, float %6907)  ; Sin(value)
  %6909 = fadd fast float %6908, 1.000000e+00
  %6910 = fmul fast float %6909, 0x3FBB2995E0000000
  %6911 = fmul fast float %6895, 0x402921FB60000000
  %6912 = fadd fast float %6911, 0x401921FB60000000
  %6913 = call float @dx.op.unary.f32(i32 13, float %6912)  ; Sin(value)
  %6914 = fadd fast float %6913, 0xBE8777A5C0000000
  %6915 = fmul fast float %6914, 0x3FB45F3060000000
  %6916 = call float @dx.op.dot4.f32(i32 56, float %6890, float %6891, float %6892, float %6893, float %6900, float %6905, float %6910, float %6915)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6917 = fmul fast float %6916, 0xBFF7154760000000
  %6918 = call float @dx.op.unary.f32(i32 21, float %6917)  ; Exp(value)
  %6919 = call float @dx.op.unary.f32(i32 7, float %6918)  ; Saturate(value)
  br label %6920

; <label>:6920                                    ; preds = %6888, %6884
  %6921 = phi float [ %6919, %6888 ], [ 1.000000e+00, %6884 ]
  %6922 = fadd fast float %6921, -1.000000e+00
  %6923 = fmul fast float %6922, %6882
  %6924 = fadd fast float %6923, 1.000000e+00
  br label %6925

; <label>:6925                                    ; preds = %6920, %6825
  %6926 = phi float [ %6924, %6920 ], [ 1.000000e+00, %6825 ]
  %6927 = fmul fast float %6926, %6821
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.CBufRet.f32 %6928, 1
  %6931 = extractvalue %dx.types.CBufRet.f32 %6928, 2
  %6932 = fadd fast float %6929, %201
  %6933 = fadd fast float %6930, %202
  %6934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6935 = extractvalue %dx.types.CBufRet.f32 %6934, 1
  %6936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6936, 0
  %6938 = extractvalue %dx.types.CBufRet.f32 %6936, 1
  %6939 = extractvalue %dx.types.CBufRet.f32 %6936, 2
  %6940 = fsub fast float -0.000000e+00, %6932
  %6941 = fsub fast float -0.000000e+00, %6933
  %6942 = fsub fast float %4779, %6931
  %6943 = fadd fast float %6942, %6935
  %6944 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6940, float %6941, float %6943)  ; Dot3(ax,ay,az,bx,by,bz)
  %6945 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6937, float %6938, float %6939)  ; Dot3(ax,ay,az,bx,by,bz)
  %6946 = fdiv fast float 1.000000e+00, %6945
  %6947 = fmul fast float %6946, %6944
  %6948 = fmul fast float %6937, %6947
  %6949 = fmul fast float %6938, %6947
  %6950 = fadd fast float %6948, %6932
  %6951 = fadd fast float %6949, %6933
  %6952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.f32 %6952, 0
  %6954 = extractvalue %dx.types.CBufRet.f32 %6952, 1
  %6955 = fsub fast float %6950, %6953
  %6956 = fsub fast float %6951, %6954
  %6957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6958 = extractvalue %dx.types.CBufRet.f32 %6957, 2
  %6959 = extractvalue %dx.types.CBufRet.f32 %6957, 3
  %6960 = fmul fast float %6955, %6958
  %6961 = fmul fast float %6956, %6959
  %6962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6963 = extractvalue %dx.types.CBufRet.i32 %6962, 3
  %6964 = icmp eq i32 %6963, 0
  br i1 %6964, label %6970, label %6965

; <label>:6965                                    ; preds = %6925
  %6966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6960, float %6961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6967 = extractvalue %dx.types.ResRet.f32 %6966, 0
  %6968 = extractvalue %dx.types.ResRet.f32 %6966, 1
  %6969 = extractvalue %dx.types.ResRet.f32 %6966, 2
  br label %6975

; <label>:6970                                    ; preds = %6925
  %6971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %51, float %6960, float %6961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6972 = extractvalue %dx.types.ResRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.ResRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.ResRet.f32 %6971, 2
  br label %6975

; <label>:6975                                    ; preds = %6970, %6965
  %6976 = phi float [ %6967, %6965 ], [ %6972, %6970 ]
  %6977 = phi float [ %6968, %6965 ], [ %6973, %6970 ]
  %6978 = phi float [ %6969, %6965 ], [ %6974, %6970 ]
  %6979 = extractvalue %dx.types.CBufRet.f32 %6934, 2
  %6980 = fmul fast float %6979, %6976
  %6981 = extractvalue %dx.types.CBufRet.f32 %6934, 0
  %6982 = fsub fast float %6947, %6981
  %6983 = fsub fast float %6982, %6980
  %6984 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6983)  ; FMax(a,b)
  %6985 = fmul fast float %6984, %6977
  %6986 = call float @dx.op.binary.f32(i32 36, float %6978, float %6985)  ; FMin(a,b)
  %6987 = fmul fast float %6986, 0xBFF7154760000000
  %6988 = call float @dx.op.unary.f32(i32 21, float %6987)  ; Exp(value)
  %6989 = fmul fast float %6927, %6988
  br label %6990

; <label>:6990                                    ; preds = %6975, %6820
  %6991 = phi float [ %6989, %6975 ], [ %6821, %6820 ]
  %6992 = call float @dx.op.binary.f32(i32 36, float %6991, float %6991)  ; FMin(a,b)
  %6993 = call float @dx.op.binary.f32(i32 36, float %6991, float %6992)  ; FMin(a,b)
  %6994 = fcmp fast ogt float %6993, 0.000000e+00
  br i1 %6994, label %6995, label %7174, !dx.controlflow.hints !130

; <label>:6995                                    ; preds = %6990
  %6996 = fmul fast float %6991, %5551
  %6997 = fmul fast float %6991, %5552
  %6998 = fmul fast float %6991, %5553
  %6999 = fsub fast float %203, %3956
  %7000 = fcmp fast ogt float %6999, 0.000000e+00
  %7001 = fmul fast float %5540, 5.120000e+02
  %7002 = fmul fast float %5541, 5.120000e+02
  %7003 = fmul fast float %5542, 5.120000e+02
  %7004 = fadd fast float %7003, %203
  %7005 = fsub fast float %3956, %7004
  %7006 = fmul fast float %7005, 2.000000e+00
  %7007 = fadd fast float %7006, %7004
  %7008 = select i1 %7000, float %7007, float %7004
  %7009 = fsub fast float %7008, %203
  %7010 = call float @dx.op.dot3.f32(i32 55, float %7001, float %7002, float %7009, float %7001, float %7002, float %7009)  ; Dot3(ax,ay,az,bx,by,bz)
  %7011 = call float @dx.op.unary.f32(i32 25, float %7010)  ; Rsqrt(value)
  %7012 = fmul fast float %7011, %7001
  %7013 = fmul fast float %7011, %7002
  %7014 = fmul fast float %7011, %7009
  %7015 = fsub fast float %3956, %203
  %7016 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7015)  ; Dot3(ax,ay,az,bx,by,bz)
  %7017 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7012, float %7013, float %7014)  ; Dot3(ax,ay,az,bx,by,bz)
  %7018 = fdiv fast float 1.000000e+00, %7017
  %7019 = fmul fast float %7018, %7016
  %7020 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6999, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7021 = fcmp fast ogt float %7020, 0.000000e+00
  %7022 = fcmp fast olt float %7020, 0.000000e+00
  %7023 = zext i1 %7021 to i32
  %7024 = zext i1 %7022 to i32
  %7025 = sub nsw i32 %7023, %7024
  %7026 = sitofp i32 %7025 to float
  %7027 = fsub fast float %7008, %3956
  %7028 = call float @dx.op.dot3.f32(i32 55, float %7001, float %7002, float %7027, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7029 = fcmp fast ogt float %7028, 0.000000e+00
  %7030 = fcmp fast olt float %7028, 0.000000e+00
  %7031 = zext i1 %7029 to i32
  %7032 = zext i1 %7030 to i32
  %7033 = sub nsw i32 %7031, %7032
  %7034 = sitofp i32 %7033 to float
  %7035 = fcmp fast une float %7026, %7034
  br i1 %7035, label %7036, label %7046

; <label>:7036                                    ; preds = %6995
  %7037 = fmul fast float %7019, %7014
  %7038 = fmul fast float %7019, %7013
  %7039 = fmul fast float %7019, %7012
  %7040 = fmul fast float %7039, %7039
  %7041 = fmul fast float %7038, %7038
  %7042 = fadd fast float %7040, %7041
  %7043 = fmul fast float %7037, %7037
  %7044 = fadd fast float %7042, %7043
  %7045 = call float @dx.op.unary.f32(i32 24, float %7044)  ; Sqrt(value)
  br label %7056

; <label>:7046                                    ; preds = %6995
  %7047 = icmp slt i32 %7025, 0
  br i1 %7047, label %7048, label %7056

; <label>:7048                                    ; preds = %7046
  %7049 = fsub fast float %203, %7008
  %7050 = fmul fast float %7001, %7001
  %7051 = fmul fast float %7002, %7002
  %7052 = fadd fast float %7050, %7051
  %7053 = fmul fast float %7049, %7049
  %7054 = fadd fast float %7052, %7053
  %7055 = call float @dx.op.unary.f32(i32 24, float %7054)  ; Sqrt(value)
  br label %7056

; <label>:7056                                    ; preds = %7048, %7046, %7036
  %7057 = phi float [ %7045, %7036 ], [ %7055, %7048 ], [ 0.000000e+00, %7046 ]
  %7058 = fsub fast float -0.000000e+00, %7057
  %7059 = select i1 %7000, float -0.000000e+00, float %7058
  %7060 = fmul fast float %3957, 0x3FF7154760000000
  %7061 = fmul fast float %7060, %7059
  %7062 = fmul fast float %3958, 0x3FF7154760000000
  %7063 = fmul fast float %7062, %7059
  %7064 = fmul fast float %3959, 0x3FF7154760000000
  %7065 = fmul fast float %7064, %7059
  %7066 = call float @dx.op.unary.f32(i32 21, float %7061)  ; Exp(value)
  %7067 = call float @dx.op.unary.f32(i32 21, float %7063)  ; Exp(value)
  %7068 = call float @dx.op.unary.f32(i32 21, float %7065)  ; Exp(value)
  %7069 = call float @dx.op.unary.f32(i32 7, float %7066)  ; Saturate(value)
  %7070 = call float @dx.op.unary.f32(i32 7, float %7067)  ; Saturate(value)
  %7071 = call float @dx.op.unary.f32(i32 7, float %7068)  ; Saturate(value)
  %7072 = fmul fast float %6996, %7069
  %7073 = fmul fast float %6997, %7070
  %7074 = fmul fast float %6998, %7071
  %7075 = fsub fast float %5540, %4782
  %7076 = fsub fast float %5541, %4783
  %7077 = fsub fast float %5542, %4784
  %7078 = call float @dx.op.dot3.f32(i32 55, float %7075, float %7076, float %7077, float %7075, float %7076, float %7077)  ; Dot3(ax,ay,az,bx,by,bz)
  %7079 = call float @dx.op.unary.f32(i32 25, float %7078)  ; Rsqrt(value)
  %7080 = fmul fast float %7079, %7075
  %7081 = fmul fast float %7079, %7076
  %7082 = fmul fast float %7079, %7077
  %7083 = call float @dx.op.dot3.f32(i32 55, float %5540, float %5541, float %5542, float %4739, float %4740, float %4741)  ; Dot3(ax,ay,az,bx,by,bz)
  %7084 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %7080, float %7081, float %7082)  ; Dot3(ax,ay,az,bx,by,bz)
  %7085 = call float @dx.op.unary.f32(i32 7, float %7083)  ; Saturate(value)
  %7086 = bitcast i32 %4814 to float
  %7087 = fmul fast float %7085, %7085
  %7088 = fmul fast float %7087, %7086
  %7089 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7090 = fmul fast float %7089, %7085
  %7091 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float %7080, float %7081, float %7082)  ; Dot3(ax,ay,az,bx,by,bz)
  %7092 = fmul fast float %7091, %7091
  %7093 = call float @dx.op.unary.f32(i32 6, float %7083)  ; FAbs(value)
  %7094 = fsub fast float 1.000000e+00, %4808
  %7095 = fmul fast float %4790, %4790
  %7096 = fmul fast float %7095, %7094
  %7097 = fadd fast float %7096, %4808
  %7098 = bitcast float %7097 to i32
  %7099 = ashr i32 %7098, 1
  %7100 = add nsw i32 %7099, 532487669
  %7101 = bitcast i32 %7100 to float
  %7102 = fadd fast float %7101, %4790
  %7103 = fmul fast float %4808, %7092
  %7104 = fsub fast float 1.000000e+00, %7092
  %7105 = fadd fast float %7104, %7103
  %7106 = fmul fast float %7093, %7093
  %7107 = fmul fast float %7106, %7094
  %7108 = fadd fast float %7107, %4808
  %7109 = bitcast float %7108 to i32
  %7110 = ashr i32 %7109, 1
  %7111 = add nsw i32 %7110, 532487669
  %7112 = bitcast i32 %7111 to float
  %7113 = fadd fast float %7112, %7093
  %7114 = fmul fast float %7105, %7105
  %7115 = fmul fast float %7114, %7102
  %7116 = fmul fast float %7115, %7113
  %7117 = fdiv fast float 0x3FF0A00000000000, %7116
  %7118 = fmul fast float %7117, %4808
  %7119 = call float @dx.op.unary.f32(i32 6, float %7084)  ; FAbs(value)
  %7120 = fsub fast float 1.000000e+00, %7119
  %7121 = bitcast float %7120 to i32
  %7122 = sitofp i32 %7121 to float
  %7123 = fmul fast float %7122, 5.000000e+00
  %7124 = fadd fast float %7123, 0xC1EFBF8940000000
  %7125 = fptosi float %7124 to i32
  %7126 = bitcast i32 %7125 to float
  %7127 = fsub fast float 1.000000e+00, %4736
  %7128 = fsub fast float 1.000000e+00, %4737
  %7129 = fsub fast float 1.000000e+00, %4788
  %7130 = fmul fast float %7126, %7127
  %7131 = fmul fast float %7126, %7128
  %7132 = fmul fast float %7126, %7129
  %7133 = fadd fast float %7130, %4736
  %7134 = fadd fast float %7131, %4737
  %7135 = fadd fast float %7132, %4788
  %7136 = fmul fast float %7083, 9.843750e-01
  %7137 = fadd fast float %7136, 7.812500e-03
  %7138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %7137, float %4920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7139 = extractvalue %dx.types.ResRet.f32 %7138, 2
  %7140 = extractvalue %dx.types.ResRet.f32 %7138, 3
  %7141 = fmul fast float %7139, %4736
  %7142 = fmul fast float %7139, %4737
  %7143 = fmul fast float %7139, %4788
  %7144 = fadd fast float %7141, %7140
  %7145 = fadd fast float %7142, %7140
  %7146 = fadd fast float %7143, %7140
  %7147 = call float @dx.op.binary.f32(i32 35, float %7145, float %7146)  ; FMax(a,b)
  %7148 = call float @dx.op.binary.f32(i32 35, float %7144, float %7147)  ; FMax(a,b)
  %7149 = fsub fast float 1.000000e+00, %7148
  %7150 = fmul fast float %7090, %7072
  %7151 = fmul fast float %7150, %7149
  %7152 = fmul fast float %7090, %7073
  %7153 = fmul fast float %7152, %7149
  %7154 = fmul fast float %7090, %7074
  %7155 = fmul fast float %7154, %7149
  %7156 = fmul fast float %7150, %7118
  %7157 = fmul fast float %7156, %7133
  %7158 = fmul fast float %7152, %7118
  %7159 = fmul fast float %7158, %7134
  %7160 = fmul fast float %7154, %7118
  %7161 = fmul fast float %7160, %7135
  %7162 = fadd fast float %7151, %5474
  %7163 = fmul fast float %7162, %1264
  %7164 = fadd fast float %7153, %5476
  %7165 = fmul fast float %7164, %1264
  %7166 = fadd fast float %7155, %5478
  %7167 = fmul fast float %7166, %1264
  %7168 = fadd fast float %7157, %5528
  %7169 = fmul fast float %7168, %1264
  %7170 = fadd fast float %7159, %5531
  %7171 = fmul fast float %7170, %1264
  %7172 = fadd fast float %7161, %5534
  %7173 = fmul fast float %7172, %1264
  br label %7174

; <label>:7174                                    ; preds = %7056, %6990, %5421
  %7175 = phi float [ %5529, %5421 ], [ %5529, %6990 ], [ %7169, %7056 ]
  %7176 = phi float [ %5532, %5421 ], [ %5532, %6990 ], [ %7171, %7056 ]
  %7177 = phi float [ %5535, %5421 ], [ %5535, %6990 ], [ %7173, %7056 ]
  %7178 = phi float [ %5524, %5421 ], [ %5524, %6990 ], [ %7163, %7056 ]
  %7179 = phi float [ %5525, %5421 ], [ %5525, %6990 ], [ %7165, %7056 ]
  %7180 = phi float [ %5526, %5421 ], [ %5526, %6990 ], [ %7167, %7056 ]
  %7181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7182 = extractvalue %dx.types.CBufRet.i32 %7181, 0
  %7183 = icmp eq i32 %7182, 0
  br i1 %7183, label %7778, label %7184

; <label>:7184                                    ; preds = %7174
  %7185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7186 = extractvalue %dx.types.CBufRet.f32 %7185, 2
  %7187 = extractvalue %dx.types.CBufRet.f32 %7185, 3
  %7188 = fmul fast float %7186, %114
  %7189 = fmul fast float %7187, %115
  %7190 = fptoui float %7188 to i32
  %7191 = fptoui float %7189 to i32
  %7192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7193 = extractvalue %dx.types.CBufRet.f32 %7192, 0
  %7194 = extractvalue %dx.types.CBufRet.f32 %7192, 2
  %7195 = extractvalue %dx.types.CBufRet.f32 %7192, 3
  %7196 = fadd fast float %101, -4.000000e+00
  %7197 = call float @dx.op.binary.f32(i32 35, float %7196, float 0.000000e+00)  ; FMax(a,b)
  %7198 = fadd fast float %7197, %7193
  %7199 = fmul fast float %7198, %7194
  %7200 = call float @dx.op.unary.f32(i32 23, float %7199)  ; Log(value)
  %7201 = fmul fast float %7200, %7195
  %7202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7203 = extractvalue %dx.types.CBufRet.f32 %7202, 2
  %7204 = fmul fast float %7201, %7203
  %7205 = call float @dx.op.unary.f32(i32 7, float %7204)  ; Saturate(value)
  %7206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7207 = extractvalue %dx.types.CBufRet.i32 %7206, 1
  %7208 = add i32 %7207, -1
  %7209 = uitofp i32 %7207 to float
  %7210 = fmul fast float %7209, %7205
  %7211 = fptoui float %7210 to i32
  %7212 = call i32 @dx.op.binary.i32(i32 40, i32 %7211, i32 %7208)  ; UMin(a,b)
  %7213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7214 = extractvalue %dx.types.CBufRet.i32 %7213, 2
  %7215 = extractvalue %dx.types.CBufRet.i32 %7213, 3
  %7216 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7191, i32 %7214, i32 %7190)  ; UMad(a,b,c)
  %7217 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7212, i32 %7215, i32 %7216)  ; UMad(a,b,c)
  %7218 = add nsw i32 %7182, -1
  %7219 = call i32 @dx.op.binary.i32(i32 37, i32 %7218, i32 0)  ; IMax(a,b)
  %7220 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %7221 = fptoui float %7220 to i32
  %7222 = lshr i32 %7221, 5
  %7223 = call i32 @dx.op.binary.i32(i32 40, i32 %7222, i32 8191)  ; UMin(a,b)
  %7224 = shl i32 %7223, 2
  %7225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7224, i32 undef)  ; BufferLoad(srv,index,wot)
  %7226 = extractvalue %dx.types.ResRet.i32 %7225, 0
  %7227 = lshr i32 %7226, 16
  %7228 = and i32 %7226, 65535
  %7229 = lshr i32 %7226, 21
  %7230 = lshr i32 %7228, 5
  %7231 = call i32 @dx.op.binary.i32(i32 40, i32 %7230, i32 %7219)  ; UMin(a,b)
  %7232 = icmp ugt i32 %7229, %7231
  br i1 %7232, label %7778, label %7233

; <label>:7233                                    ; preds = %7184
  br label %7234

; <label>:7234                                    ; preds = %7768, %7233
  %7235 = phi i32 [ %7775, %7768 ], [ %7229, %7233 ]
  %7236 = phi float [ %7769, %7768 ], [ %7175, %7233 ]
  %7237 = phi float [ %7770, %7768 ], [ %7176, %7233 ]
  %7238 = phi float [ %7771, %7768 ], [ %7177, %7233 ]
  %7239 = phi float [ %7772, %7768 ], [ %7178, %7233 ]
  %7240 = phi float [ %7773, %7768 ], [ %7179, %7233 ]
  %7241 = phi float [ %7774, %7768 ], [ %7180, %7233 ]
  %7242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7243 = extractvalue %dx.types.CBufRet.i32 %7242, 0
  %7244 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7217, i32 %7243, i32 %7235)  ; UMad(a,b,c)
  %7245 = shl i32 %7244, 2
  %7246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7245, i32 undef)  ; BufferLoad(srv,index,wot)
  %7247 = extractvalue %dx.types.ResRet.i32 %7246, 0
  %7248 = shl i32 %7235, 5
  %7249 = sub nsw i32 %7227, %7248
  %7250 = call i32 @dx.op.binary.i32(i32 37, i32 %7249, i32 0)  ; IMax(a,b)
  %7251 = call i32 @dx.op.binary.i32(i32 38, i32 %7250, i32 31)  ; IMin(a,b)
  %7252 = sub nsw i32 1, %7227
  %7253 = add nsw i32 %7252, %7228
  %7254 = call i32 @dx.op.binary.i32(i32 37, i32 %7253, i32 0)  ; IMax(a,b)
  %7255 = call i32 @dx.op.binary.i32(i32 38, i32 %7254, i32 32)  ; IMin(a,b)
  %7256 = and i32 %7255, 31
  %7257 = shl i32 -1, %7256
  %7258 = xor i32 %7257, -1
  %7259 = and i32 %7251, 31
  %7260 = shl i32 %7258, %7259
  %7261 = icmp eq i32 %7255, 32
  %7262 = select i1 %7261, i32 -1, i32 %7260
  %7263 = and i32 %7262, %7247
  %7264 = icmp eq i32 %7263, 0
  br i1 %7264, label %7768, label %7265

; <label>:7265                                    ; preds = %7234
  br label %7266

; <label>:7266                                    ; preds = %7400, %7265
  %7267 = phi i32 [ %7278, %7400 ], [ %7263, %7265 ]
  %7268 = phi float [ %7401, %7400 ], [ %7236, %7265 ]
  %7269 = phi float [ %7402, %7400 ], [ %7237, %7265 ]
  %7270 = phi float [ %7403, %7400 ], [ %7238, %7265 ]
  %7271 = phi float [ %7404, %7400 ], [ %7239, %7265 ]
  %7272 = phi float [ %7405, %7400 ], [ %7240, %7265 ]
  %7273 = phi float [ %7406, %7400 ], [ %7241, %7265 ]
  %7274 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7267)  ; FirstbitLo(value)
  %7275 = add i32 %7274, %7248
  %7276 = and i32 %7274, 31
  %7277 = shl i32 1, %7276
  %7278 = xor i32 %7277, %7267
  %7279 = mul i32 %7275, 112
  %7280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7279, i32 undef)  ; BufferLoad(srv,index,wot)
  %7281 = extractvalue %dx.types.ResRet.f32 %7280, 0
  %7282 = extractvalue %dx.types.ResRet.f32 %7280, 1
  %7283 = extractvalue %dx.types.ResRet.f32 %7280, 2
  %7284 = or i32 %7279, 12
  %7285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7284, i32 undef)  ; BufferLoad(srv,index,wot)
  %7286 = extractvalue %dx.types.ResRet.f32 %7285, 0
  %7287 = add i32 %7279, 16
  %7288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7287, i32 undef)  ; BufferLoad(srv,index,wot)
  %7289 = extractvalue %dx.types.ResRet.f32 %7288, 0
  %7290 = extractvalue %dx.types.ResRet.f32 %7288, 1
  %7291 = extractvalue %dx.types.ResRet.f32 %7288, 2
  %7292 = add i32 %7279, 28
  %7293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7292, i32 undef)  ; BufferLoad(srv,index,wot)
  %7294 = extractvalue %dx.types.ResRet.i32 %7293, 0
  %7295 = add i32 %7279, 44
  %7296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7295, i32 undef)  ; BufferLoad(srv,index,wot)
  %7297 = extractvalue %dx.types.ResRet.f32 %7296, 0
  %7298 = add i32 %7279, 48
  %7299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7298, i32 undef)  ; BufferLoad(srv,index,wot)
  %7300 = extractvalue %dx.types.ResRet.f32 %7299, 0
  %7301 = extractvalue %dx.types.ResRet.f32 %7299, 1
  %7302 = extractvalue %dx.types.ResRet.f32 %7299, 2
  %7303 = extractvalue %dx.types.ResRet.f32 %7299, 3
  %7304 = add i32 %7279, 64
  %7305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7304, i32 undef)  ; BufferLoad(srv,index,wot)
  %7306 = extractvalue %dx.types.ResRet.f32 %7305, 0
  %7307 = extractvalue %dx.types.ResRet.f32 %7305, 1
  %7308 = extractvalue %dx.types.ResRet.f32 %7305, 2
  %7309 = extractvalue %dx.types.ResRet.f32 %7305, 3
  %7310 = add i32 %7279, 80
  %7311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7310, i32 undef)  ; BufferLoad(srv,index,wot)
  %7312 = extractvalue %dx.types.ResRet.f32 %7311, 1
  %7313 = extractvalue %dx.types.ResRet.f32 %7311, 2
  %7314 = add i32 %7279, 92
  %7315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7314, i32 undef)  ; BufferLoad(srv,index,wot)
  %7316 = extractvalue %dx.types.ResRet.i32 %7315, 0
  %7317 = call float @dx.op.dot3.f32(i32 55, float %7281, float %7282, float %7283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7318 = select i1 %273, float %7312, float %7281
  %7319 = select i1 %273, float %7317, float %7282
  %7320 = select i1 %273, float %7313, float %7283
  %7321 = and i32 %7316, 65535
  %7322 = uitofp i32 %7321 to float
  %7323 = lshr i32 %7316, 16
  %7324 = uitofp i32 %7323 to float
  %7325 = and i32 %7294, 65535
  %7326 = and i32 %7294, 50331648
  %7327 = icmp eq i32 %7326, 33554432
  %7328 = fsub fast float %7300, %201
  %7329 = fsub fast float %7301, %202
  %7330 = fsub fast float %7302, %203
  %7331 = call float @dx.op.dot3.f32(i32 55, float %7328, float %7329, float %7330, float %7328, float %7329, float %7330)  ; Dot3(ax,ay,az,bx,by,bz)
  %7332 = call float @dx.op.unary.f32(i32 24, float %7331)  ; Sqrt(value)
  %7333 = fdiv fast float 1.000000e+00, %7332
  %7334 = fmul fast float %7333, %7328
  %7335 = fmul fast float %7333, %7329
  %7336 = fmul fast float %7333, %7330
  %7337 = fadd fast float %7332, %7286
  %7338 = fdiv fast float 1.000000e+00, %7337
  %7339 = fmul float %7297, %7338
  %7340 = fmul float %7339, %7339
  %7341 = call float @dx.op.unary.f32(i32 7, float %7340)  ; Saturate(value)
  br i1 %7327, label %7342, label %7363

; <label>:7342                                    ; preds = %7266
  %7343 = fmul fast float %7308, %7289
  %7344 = fmul fast float %7308, %7290
  %7345 = fmul fast float %7308, %7291
  %7346 = fadd fast float %7328, %7343
  %7347 = fadd fast float %7329, %7344
  %7348 = fadd fast float %7330, %7345
  %7349 = call float @dx.op.dot3.f32(i32 55, float %7346, float %7347, float %7348, float %7346, float %7347, float %7348)  ; Dot3(ax,ay,az,bx,by,bz)
  %7350 = call float @dx.op.unary.f32(i32 25, float %7349)  ; Rsqrt(value)
  %7351 = fmul fast float %7350, %7346
  %7352 = fmul fast float %7350, %7347
  %7353 = fmul fast float %7350, %7348
  %7354 = fsub fast float %201, %7300
  %7355 = fsub fast float %202, %7301
  %7356 = fsub fast float %203, %7302
  %7357 = fsub fast float -0.000000e+00, %7354
  %7358 = fsub fast float -0.000000e+00, %7355
  %7359 = fsub fast float -0.000000e+00, %7356
  %7360 = call float @dx.op.dot3.f32(i32 55, float %7357, float %7358, float %7359, float %7289, float %7290, float %7291)  ; Dot3(ax,ay,az,bx,by,bz)
  %7361 = fcmp fast ogt float %7360, 0.000000e+00
  %7362 = uitofp i1 %7361 to float
  br label %7363

; <label>:7363                                    ; preds = %7342, %7266
  %7364 = phi float [ %7362, %7342 ], [ 1.000000e+00, %7266 ]
  %7365 = phi float [ %7351, %7342 ], [ %7334, %7266 ]
  %7366 = phi float [ %7352, %7342 ], [ %7335, %7266 ]
  %7367 = phi float [ %7353, %7342 ], [ %7336, %7266 ]
  %7368 = call float @dx.op.dot3.f32(i32 55, float %7289, float %7290, float %7291, float %7365, float %7366, float %7367)  ; Dot3(ax,ay,az,bx,by,bz)
  %7369 = fmul fast float %7368, %7368
  %7370 = call float @dx.op.unary.f32(i32 7, float %7369)  ; Saturate(value)
  %7371 = fsub fast float 1.000000e+00, %7370
  %7372 = fmul fast float %7371, 5.000000e-01
  %7373 = fcmp fast ogt float %7368, 0.000000e+00
  %7374 = fsub fast float 1.000000e+00, %7372
  %7375 = select i1 %7373, float %7372, float %7374
  %7376 = fmul fast float %7375, %7324
  %7377 = fadd fast float %7376, %7322
  %7378 = fmul fast float %7377, 0x3EF0001000000000
  %7379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %51, float %7378, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7380 = extractvalue %dx.types.ResRet.f32 %7379, 0
  %7381 = fmul fast float %7368, %7306
  %7382 = fadd fast float %7381, %7307
  %7383 = call float @dx.op.unary.f32(i32 7, float %7382)  ; Saturate(value)
  %7384 = select i1 %7327, float 1.000000e+00, float %7383
  %7385 = select i1 %7327, float %7383, float 1.000000e+00
  %7386 = fmul fast float %7332, %7303
  %7387 = fsub fast float 1.000000e+00, %7386
  %7388 = fmul fast float %7387, %7309
  %7389 = call float @dx.op.unary.f32(i32 7, float %7388)  ; Saturate(value)
  %7390 = fmul fast float %7389, %7385
  %7391 = fmul fast float %7390, 2.000000e+00
  %7392 = fsub fast float 3.000000e+00, %7391
  %7393 = fmul fast float %7380, %7364
  %7394 = fmul fast float %7390, %7390
  %7395 = fmul fast float %7394, %7393
  %7396 = fmul fast float %7395, %7392
  %7397 = call float @dx.op.binary.f32(i32 36, float %7396, float %7396)  ; FMin(a,b)
  %7398 = call float @dx.op.binary.f32(i32 36, float %7396, float %7397)  ; FMin(a,b)
  %7399 = fcmp fast ogt float %7398, 0.000000e+00
  br i1 %7399, label %7408, label %7400, !dx.controlflow.hints !131

; <label>:7400                                    ; preds = %7621, %7554, %7363
  %7401 = phi float [ %7268, %7554 ], [ %7268, %7363 ], [ %7764, %7621 ]
  %7402 = phi float [ %7269, %7554 ], [ %7269, %7363 ], [ %7765, %7621 ]
  %7403 = phi float [ %7270, %7554 ], [ %7270, %7363 ], [ %7766, %7621 ]
  %7404 = phi float [ %7271, %7554 ], [ %7271, %7363 ], [ %7755, %7621 ]
  %7405 = phi float [ %7272, %7554 ], [ %7272, %7363 ], [ %7756, %7621 ]
  %7406 = phi float [ %7273, %7554 ], [ %7273, %7363 ], [ %7757, %7621 ]
  %7407 = icmp eq i32 %7267, %7277
  br i1 %7407, label %7767, label %7266

; <label>:7408                                    ; preds = %7363
  %7409 = icmp eq i32 %7325, 255
  br i1 %7409, label %7554, label %7410, !dx.controlflow.hints !132

; <label>:7410                                    ; preds = %7408
  %7411 = mul nuw nsw i32 %7325, 176
  %7412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7411, i32 undef)  ; BufferLoad(srv,index,wot)
  %7413 = extractvalue %dx.types.ResRet.f32 %7412, 0
  %7414 = extractvalue %dx.types.ResRet.f32 %7412, 1
  %7415 = extractvalue %dx.types.ResRet.f32 %7412, 2
  %7416 = extractvalue %dx.types.ResRet.f32 %7412, 3
  %7417 = add nuw nsw i32 %7411, 16
  %7418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7417, i32 undef)  ; BufferLoad(srv,index,wot)
  %7419 = extractvalue %dx.types.ResRet.f32 %7418, 0
  %7420 = extractvalue %dx.types.ResRet.f32 %7418, 1
  %7421 = add nuw nsw i32 %7411, 32
  %7422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7421, i32 undef)  ; BufferLoad(srv,index,wot)
  %7423 = extractvalue %dx.types.ResRet.f32 %7422, 0
  %7424 = extractvalue %dx.types.ResRet.f32 %7422, 1
  %7425 = extractvalue %dx.types.ResRet.f32 %7422, 2
  %7426 = add nuw nsw i32 %7411, 48
  %7427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7426, i32 undef)  ; BufferLoad(srv,index,wot)
  %7428 = extractvalue %dx.types.ResRet.f32 %7427, 0
  %7429 = extractvalue %dx.types.ResRet.f32 %7427, 1
  %7430 = extractvalue %dx.types.ResRet.f32 %7427, 2
  %7431 = extractvalue %dx.types.ResRet.f32 %7427, 3
  %7432 = add nuw nsw i32 %7411, 64
  %7433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7432, i32 undef)  ; BufferLoad(srv,index,wot)
  %7434 = extractvalue %dx.types.ResRet.f32 %7433, 0
  %7435 = extractvalue %dx.types.ResRet.f32 %7433, 1
  %7436 = extractvalue %dx.types.ResRet.f32 %7433, 2
  %7437 = extractvalue %dx.types.ResRet.f32 %7433, 3
  %7438 = add nuw nsw i32 %7411, 80
  %7439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7438, i32 undef)  ; BufferLoad(srv,index,wot)
  %7440 = extractvalue %dx.types.ResRet.f32 %7439, 0
  %7441 = extractvalue %dx.types.ResRet.f32 %7439, 1
  %7442 = extractvalue %dx.types.ResRet.f32 %7439, 2
  %7443 = extractvalue %dx.types.ResRet.f32 %7439, 3
  %7444 = add nuw nsw i32 %7411, 96
  %7445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7444, i32 undef)  ; BufferLoad(srv,index,wot)
  %7446 = extractvalue %dx.types.ResRet.f32 %7445, 0
  %7447 = extractvalue %dx.types.ResRet.f32 %7445, 1
  %7448 = extractvalue %dx.types.ResRet.f32 %7445, 2
  %7449 = extractvalue %dx.types.ResRet.f32 %7445, 3
  %7450 = bitcast float %7420 to i32
  %7451 = fmul fast float %7425, %121
  %7452 = fmul fast float %7425, %122
  %7453 = fmul fast float %7425, %123
  %7454 = fadd fast float %7451, %201
  %7455 = fadd fast float %7452, %202
  %7456 = fadd fast float %7453, %203
  %7457 = fmul fast float %7454, %7428
  %7458 = call float @dx.op.tertiary.f32(i32 46, float %7455, float %7434, float %7457)  ; FMad(a,b,c)
  %7459 = call float @dx.op.tertiary.f32(i32 46, float %7456, float %7440, float %7458)  ; FMad(a,b,c)
  %7460 = fadd fast float %7459, %7446
  %7461 = fmul fast float %7454, %7429
  %7462 = call float @dx.op.tertiary.f32(i32 46, float %7455, float %7435, float %7461)  ; FMad(a,b,c)
  %7463 = call float @dx.op.tertiary.f32(i32 46, float %7456, float %7441, float %7462)  ; FMad(a,b,c)
  %7464 = fadd fast float %7463, %7447
  %7465 = fmul fast float %7454, %7430
  %7466 = call float @dx.op.tertiary.f32(i32 46, float %7455, float %7436, float %7465)  ; FMad(a,b,c)
  %7467 = call float @dx.op.tertiary.f32(i32 46, float %7456, float %7442, float %7466)  ; FMad(a,b,c)
  %7468 = fadd fast float %7467, %7448
  %7469 = fmul fast float %7454, %7431
  %7470 = call float @dx.op.tertiary.f32(i32 46, float %7455, float %7437, float %7469)  ; FMad(a,b,c)
  %7471 = call float @dx.op.tertiary.f32(i32 46, float %7456, float %7443, float %7470)  ; FMad(a,b,c)
  %7472 = fadd fast float %7471, %7449
  %7473 = fdiv fast float %7460, %7472
  %7474 = fdiv fast float %7464, %7472
  %7475 = fdiv fast float %7468, %7472
  %7476 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7475)  ; FMax(a,b)
  %7477 = fmul fast float %284, 0x401921FB60000000
  %7478 = call float @dx.op.unary.f32(i32 13, float %7477)  ; Sin(value)
  %7479 = call float @dx.op.unary.f32(i32 12, float %7477)  ; Cos(value)
  %7480 = fmul fast float %7479, %7424
  %7481 = call float @dx.op.tertiary.f32(i32 46, float %7478, float %7424, float 0.000000e+00)  ; FMad(a,b,c)
  %7482 = fmul fast float %7424, %7478
  %7483 = fsub fast float -0.000000e+00, %7482
  %7484 = call float @dx.op.tertiary.f32(i32 46, float %7479, float %7424, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7485

; <label>:7485                                    ; preds = %7485, %7410
  %7486 = phi float [ 0.000000e+00, %7410 ], [ %7518, %7485 ]
  %7487 = phi float [ 0.000000e+00, %7410 ], [ %7520, %7485 ]
  %7488 = phi i32 [ 0, %7410 ], [ %7521, %7485 ]
  %7489 = mul i32 %7488, 2
  %7490 = add i32 0, %7489
  %7491 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7490
  %7492 = load float, float* %7491, align 4
  %7493 = mul i32 %7488, 2
  %7494 = add i32 1, %7493
  %7495 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7494
  %7496 = load float, float* %7495, align 4
  %7497 = fmul fast float %7480, %7492
  %7498 = call float @dx.op.tertiary.f32(i32 46, float %7496, float %7483, float %7497)  ; FMad(a,b,c)
  %7499 = fmul fast float %7492, %7481
  %7500 = call float @dx.op.tertiary.f32(i32 46, float %7496, float %7484, float %7499)  ; FMad(a,b,c)
  %7501 = fadd fast float %7498, %7473
  %7502 = fadd fast float %7500, %7474
  %7503 = fmul fast float %7501, %7419
  %7504 = fmul fast float %7502, %7419
  %7505 = call float @dx.op.binary.f32(i32 35, float %7503, float %7415)  ; FMax(a,b)
  %7506 = call float @dx.op.binary.f32(i32 35, float %7504, float %7415)  ; FMax(a,b)
  %7507 = call float @dx.op.binary.f32(i32 36, float %7505, float %7416)  ; FMin(a,b)
  %7508 = call float @dx.op.binary.f32(i32 36, float %7506, float %7416)  ; FMin(a,b)
  %7509 = fadd fast float %7507, %7413
  %7510 = fadd fast float %7508, %7414
  %7511 = uitofp i32 %7450 to float
  %7512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %52, float %7509, float %7510, float %7511, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7513 = extractvalue %dx.types.ResRet.f32 %7512, 0
  %7514 = fsub fast float %7513, %7476
  %7515 = fsub fast float %7514, %7423
  %7516 = fcmp fast ogt float %7515, 0.000000e+00
  %7517 = select i1 %7516, float 1.000000e+00, float 0.000000e+00
  %7518 = fadd fast float %7517, %7486
  %7519 = select i1 %7516, float %7515, float 0.000000e+00
  %7520 = fadd fast float %7519, %7487
  %7521 = add nuw nsw i32 %7488, 1
  %7522 = icmp eq i32 %7521, 8
  br i1 %7522, label %7523, label %7485

; <label>:7523                                    ; preds = %7485
  %7524 = fdiv fast float 1.000000e+00, %7518
  %7525 = fmul fast float %7524, %7520
  %7526 = fdiv fast float 1.000000e+00, %7476
  %7527 = fmul fast float %7525, %7526
  %7528 = call float @dx.op.unary.f32(i32 7, float %7527)  ; Saturate(value)
  %7529 = call float @dx.op.binary.f32(i32 35, float %7528, float 0.000000e+00)  ; FMax(a,b)
  %7530 = fmul fast float %7518, 1.250000e-01
  %7531 = call float @dx.op.unary.f32(i32 7, float %7530)  ; Saturate(value)
  %7532 = fmul fast float %7531, 2.000000e+00
  %7533 = fadd fast float %7532, -1.000000e+00
  %7534 = fcmp fast ogt float %7533, 0.000000e+00
  %7535 = fcmp fast olt float %7533, 0.000000e+00
  %7536 = zext i1 %7534 to i32
  %7537 = zext i1 %7535 to i32
  %7538 = sub nsw i32 %7536, %7537
  %7539 = sitofp i32 %7538 to float
  %7540 = fmul fast float %7539, %7533
  %7541 = fsub fast float 1.000000e+00, %7540
  %7542 = fmul fast float %7541, %7541
  %7543 = fmul fast float %7542, %7541
  %7544 = fsub fast float %7541, %7543
  %7545 = fmul fast float %7544, %7529
  %7546 = fsub fast float 1.000000e+00, %7543
  %7547 = fsub fast float %7546, %7545
  %7548 = fmul fast float %7539, 5.000000e-01
  %7549 = fmul fast float %7548, %7547
  %7550 = fsub fast float -5.000000e-01, %7549
  %7551 = fmul fast float %7550, %7384
  %7552 = fadd fast float %7551, 1.000000e+00
  %7553 = fmul fast float %7552, %7396
  br label %7554

; <label>:7554                                    ; preds = %7523, %7408
  %7555 = phi float [ %7553, %7523 ], [ %7396, %7408 ]
  %7556 = call float @dx.op.binary.f32(i32 36, float %7555, float %7555)  ; FMin(a,b)
  %7557 = call float @dx.op.binary.f32(i32 36, float %7555, float %7556)  ; FMin(a,b)
  %7558 = fcmp fast ogt float %7557, 0.000000e+00
  br i1 %7558, label %7559, label %7400, !dx.controlflow.hints !133

; <label>:7559                                    ; preds = %7554
  %7560 = fmul fast float %7555, %7318
  %7561 = fmul fast float %7555, %7319
  %7562 = fmul fast float %7555, %7320
  %7563 = fsub fast float %7302, %3956
  %7564 = fcmp fast ogt float %7563, 0.000000e+00
  %7565 = fsub fast float %203, %3956
  %7566 = fcmp fast ogt float %7565, 0.000000e+00
  %7567 = xor i1 %7566, %7564
  %7568 = fsub fast float %3956, %7302
  %7569 = fmul fast float %7568, 2.000000e+00
  %7570 = fadd fast float %7569, %7302
  %7571 = select i1 %7567, float %7302, float %7570
  %7572 = fsub fast float %7571, %203
  %7573 = call float @dx.op.dot3.f32(i32 55, float %7328, float %7329, float %7572, float %7328, float %7329, float %7572)  ; Dot3(ax,ay,az,bx,by,bz)
  %7574 = call float @dx.op.unary.f32(i32 25, float %7573)  ; Rsqrt(value)
  %7575 = fmul fast float %7574, %7328
  %7576 = fmul fast float %7574, %7329
  %7577 = fmul fast float %7574, %7572
  %7578 = fsub fast float %3956, %203
  %7579 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7578)  ; Dot3(ax,ay,az,bx,by,bz)
  %7580 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7575, float %7576, float %7577)  ; Dot3(ax,ay,az,bx,by,bz)
  %7581 = fdiv fast float 1.000000e+00, %7580
  %7582 = fmul fast float %7581, %7579
  %7583 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7565, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7584 = fcmp fast ogt float %7583, 0.000000e+00
  %7585 = fcmp fast olt float %7583, 0.000000e+00
  %7586 = zext i1 %7584 to i32
  %7587 = zext i1 %7585 to i32
  %7588 = sub nsw i32 %7586, %7587
  %7589 = sitofp i32 %7588 to float
  %7590 = fsub fast float %7571, %3956
  %7591 = call float @dx.op.dot3.f32(i32 55, float %7328, float %7329, float %7590, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7592 = fcmp fast ogt float %7591, 0.000000e+00
  %7593 = fcmp fast olt float %7591, 0.000000e+00
  %7594 = zext i1 %7592 to i32
  %7595 = zext i1 %7593 to i32
  %7596 = sub nsw i32 %7594, %7595
  %7597 = sitofp i32 %7596 to float
  %7598 = fcmp fast une float %7589, %7597
  br i1 %7598, label %7599, label %7609

; <label>:7599                                    ; preds = %7559
  %7600 = fmul fast float %7582, %7577
  %7601 = fmul fast float %7582, %7576
  %7602 = fmul fast float %7582, %7575
  %7603 = fmul fast float %7602, %7602
  %7604 = fmul fast float %7601, %7601
  %7605 = fadd fast float %7603, %7604
  %7606 = fmul fast float %7600, %7600
  %7607 = fadd fast float %7605, %7606
  %7608 = call float @dx.op.unary.f32(i32 24, float %7607)  ; Sqrt(value)
  br label %7621

; <label>:7609                                    ; preds = %7559
  %7610 = icmp slt i32 %7588, 0
  br i1 %7610, label %7611, label %7621

; <label>:7611                                    ; preds = %7609
  %7612 = fsub fast float %201, %7300
  %7613 = fsub fast float %202, %7301
  %7614 = fsub fast float %203, %7571
  %7615 = fmul fast float %7612, %7612
  %7616 = fmul fast float %7613, %7613
  %7617 = fadd fast float %7615, %7616
  %7618 = fmul fast float %7614, %7614
  %7619 = fadd fast float %7617, %7618
  %7620 = call float @dx.op.unary.f32(i32 24, float %7619)  ; Sqrt(value)
  br label %7621

; <label>:7621                                    ; preds = %7611, %7609, %7599
  %7622 = phi float [ %7608, %7599 ], [ %7620, %7611 ], [ 0.000000e+00, %7609 ]
  %7623 = and i1 %7566, %7564
  %7624 = fsub fast float -0.000000e+00, %7622
  %7625 = select i1 %7623, float -0.000000e+00, float %7624
  %7626 = fmul fast float %3957, 0x3FF7154760000000
  %7627 = fmul fast float %7626, %7625
  %7628 = fmul fast float %3958, 0x3FF7154760000000
  %7629 = fmul fast float %7628, %7625
  %7630 = fmul fast float %3959, 0x3FF7154760000000
  %7631 = fmul fast float %7630, %7625
  %7632 = call float @dx.op.unary.f32(i32 21, float %7627)  ; Exp(value)
  %7633 = call float @dx.op.unary.f32(i32 21, float %7629)  ; Exp(value)
  %7634 = call float @dx.op.unary.f32(i32 21, float %7631)  ; Exp(value)
  %7635 = call float @dx.op.unary.f32(i32 7, float %7632)  ; Saturate(value)
  %7636 = call float @dx.op.unary.f32(i32 7, float %7633)  ; Saturate(value)
  %7637 = call float @dx.op.unary.f32(i32 7, float %7634)  ; Saturate(value)
  %7638 = fmul fast float %7560, %7635
  %7639 = fmul fast float %7561, %7636
  %7640 = fmul fast float %7562, %7637
  %7641 = fsub fast float %7334, %4782
  %7642 = fsub fast float %7335, %4783
  %7643 = fsub fast float %7336, %4784
  %7644 = call float @dx.op.dot3.f32(i32 55, float %7641, float %7642, float %7643, float %7641, float %7642, float %7643)  ; Dot3(ax,ay,az,bx,by,bz)
  %7645 = call float @dx.op.unary.f32(i32 25, float %7644)  ; Rsqrt(value)
  %7646 = fmul fast float %7645, %7641
  %7647 = fmul fast float %7645, %7642
  %7648 = fmul fast float %7645, %7643
  %7649 = call float @dx.op.dot3.f32(i32 55, float %7334, float %7335, float %7336, float %4739, float %4740, float %4741)  ; Dot3(ax,ay,az,bx,by,bz)
  %7650 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %7646, float %7647, float %7648)  ; Dot3(ax,ay,az,bx,by,bz)
  %7651 = call float @dx.op.unary.f32(i32 7, float %7649)  ; Saturate(value)
  %7652 = fmul fast float %7651, %7341
  %7653 = bitcast i32 %4814 to float
  %7654 = fmul fast float %7651, %7651
  %7655 = fmul fast float %7654, %7653
  %7656 = call float @dx.op.unary.f32(i32 7, float %7655)  ; Saturate(value)
  %7657 = fmul fast float %7652, %7656
  %7658 = bitcast float %7331 to i32
  %7659 = ashr i32 %7658, 1
  %7660 = sub nsw i32 1597463007, %7659
  %7661 = bitcast i32 %7660 to float
  %7662 = fmul fast float %7661, %7328
  %7663 = fmul fast float %7661, %7329
  %7664 = fmul fast float %7661, %7330
  %7665 = fsub fast float %7662, %4782
  %7666 = fsub fast float %7663, %4783
  %7667 = fsub fast float %7664, %4784
  %7668 = call float @dx.op.dot3.f32(i32 55, float %7665, float %7666, float %7667, float %7665, float %7666, float %7667)  ; Dot3(ax,ay,az,bx,by,bz)
  %7669 = call float @dx.op.unary.f32(i32 25, float %7668)  ; Rsqrt(value)
  %7670 = fmul fast float %7665, %7669
  %7671 = fmul fast float %7666, %7669
  %7672 = fmul fast float %7667, %7669
  %7673 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float %7670, float %7671, float %7672)  ; Dot3(ax,ay,az,bx,by,bz)
  %7674 = fmul fast float %7673, %7673
  %7675 = call float @dx.op.unary.f32(i32 6, float %7649)  ; FAbs(value)
  %7676 = fsub fast float 1.000000e+00, %4808
  %7677 = fmul fast float %4790, %4790
  %7678 = fmul fast float %7677, %7676
  %7679 = fadd fast float %7678, %4808
  %7680 = bitcast float %7679 to i32
  %7681 = ashr i32 %7680, 1
  %7682 = add nsw i32 %7681, 532487669
  %7683 = bitcast i32 %7682 to float
  %7684 = fadd fast float %7683, %4790
  %7685 = fmul fast float %4808, %7674
  %7686 = fsub fast float 1.000000e+00, %7674
  %7687 = fadd fast float %7686, %7685
  %7688 = fmul fast float %7675, %7675
  %7689 = fmul fast float %7688, %7676
  %7690 = fadd fast float %7689, %4808
  %7691 = bitcast float %7690 to i32
  %7692 = ashr i32 %7691, 1
  %7693 = add nsw i32 %7692, 532487669
  %7694 = bitcast i32 %7693 to float
  %7695 = fadd fast float %7694, %7675
  %7696 = fmul fast float %7687, %7687
  %7697 = fmul fast float %7696, %7684
  %7698 = fmul fast float %7697, %7695
  %7699 = fdiv fast float 1.000000e+00, %7698
  %7700 = bitcast float %4808 to i32
  %7701 = sitofp i32 %7700 to float
  %7702 = fmul fast float %7701, 0x3FE7F73180000000
  %7703 = fadd fast float %7702, 0x41AFE27C40000000
  %7704 = fptosi float %7703 to i32
  %7705 = bitcast i32 %7704 to float
  %7706 = fmul fast float %7297, 0x3FD80E9D60000000
  %7707 = fmul fast float %7706, %7661
  %7708 = fadd fast float %7705, %7707
  %7709 = bitcast float %7708 to i32
  %7710 = sub nsw i32 2129859010, %7709
  %7711 = bitcast i32 %7710 to float
  %7712 = fmul fast float %4808, %7699
  %7713 = fmul fast float %7712, %7705
  %7714 = fmul fast float %7713, %7711
  %7715 = call float @dx.op.unary.f32(i32 6, float %7650)  ; FAbs(value)
  %7716 = fsub fast float 1.000000e+00, %7715
  %7717 = bitcast float %7716 to i32
  %7718 = sitofp i32 %7717 to float
  %7719 = fmul fast float %7718, 5.000000e+00
  %7720 = fadd fast float %7719, 0xC1EFBF8940000000
  %7721 = fptosi float %7720 to i32
  %7722 = bitcast i32 %7721 to float
  %7723 = fsub fast float 1.000000e+00, %4736
  %7724 = fsub fast float 1.000000e+00, %4737
  %7725 = fsub fast float 1.000000e+00, %4788
  %7726 = fmul fast float %7722, %7723
  %7727 = fmul fast float %7722, %7724
  %7728 = fmul fast float %7722, %7725
  %7729 = fadd fast float %7726, %4736
  %7730 = fadd fast float %7727, %4737
  %7731 = fadd fast float %7728, %4788
  %7732 = fmul fast float %7649, 9.843750e-01
  %7733 = fadd fast float %7732, 7.812500e-03
  %7734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %7733, float %4920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7735 = extractvalue %dx.types.ResRet.f32 %7734, 2
  %7736 = extractvalue %dx.types.ResRet.f32 %7734, 3
  %7737 = fmul fast float %7735, %4736
  %7738 = fmul fast float %7735, %4737
  %7739 = fmul fast float %7735, %4788
  %7740 = fadd fast float %7737, %7736
  %7741 = fadd fast float %7738, %7736
  %7742 = fadd fast float %7739, %7736
  %7743 = call float @dx.op.binary.f32(i32 35, float %7741, float %7742)  ; FMax(a,b)
  %7744 = call float @dx.op.binary.f32(i32 35, float %7740, float %7743)  ; FMax(a,b)
  %7745 = fsub fast float 1.000000e+00, %7744
  %7746 = fmul fast float %7638, %1264
  %7747 = fmul fast float %7746, %7657
  %7748 = fmul fast float %7747, %7745
  %7749 = fmul fast float %7639, %1264
  %7750 = fmul fast float %7749, %7657
  %7751 = fmul fast float %7750, %7745
  %7752 = fmul fast float %7640, %1264
  %7753 = fmul fast float %7752, %7657
  %7754 = fmul fast float %7753, %7745
  %7755 = fadd fast float %7748, %7271
  %7756 = fadd fast float %7751, %7272
  %7757 = fadd fast float %7754, %7273
  %7758 = fmul fast float %7747, %7729
  %7759 = fmul fast float %7758, %7714
  %7760 = fmul fast float %7750, %7730
  %7761 = fmul fast float %7760, %7714
  %7762 = fmul fast float %7753, %7731
  %7763 = fmul fast float %7762, %7714
  %7764 = fadd fast float %7759, %7268
  %7765 = fadd fast float %7761, %7269
  %7766 = fadd fast float %7763, %7270
  br label %7400

; <label>:7767                                    ; preds = %7400
  br label %7768

; <label>:7768                                    ; preds = %7767, %7234
  %7769 = phi float [ %7236, %7234 ], [ %7401, %7767 ]
  %7770 = phi float [ %7237, %7234 ], [ %7402, %7767 ]
  %7771 = phi float [ %7238, %7234 ], [ %7403, %7767 ]
  %7772 = phi float [ %7239, %7234 ], [ %7404, %7767 ]
  %7773 = phi float [ %7240, %7234 ], [ %7405, %7767 ]
  %7774 = phi float [ %7241, %7234 ], [ %7406, %7767 ]
  %7775 = add i32 %7235, 1
  %7776 = icmp ugt i32 %7775, %7231
  br i1 %7776, label %7777, label %7234

; <label>:7777                                    ; preds = %7768
  br label %7778

; <label>:7778                                    ; preds = %7777, %7184, %7174
  %7779 = phi float [ %7175, %7174 ], [ %7175, %7184 ], [ %7769, %7777 ]
  %7780 = phi float [ %7176, %7174 ], [ %7176, %7184 ], [ %7770, %7777 ]
  %7781 = phi float [ %7177, %7174 ], [ %7177, %7184 ], [ %7771, %7777 ]
  %7782 = phi float [ %7178, %7174 ], [ %7178, %7184 ], [ %7772, %7777 ]
  %7783 = phi float [ %7179, %7174 ], [ %7179, %7184 ], [ %7773, %7777 ]
  %7784 = phi float [ %7180, %7174 ], [ %7180, %7184 ], [ %7774, %7777 ]
  %7785 = fmul fast float %1264, %1264
  %7786 = fsub fast float 1.000000e+00, %7785
  %7787 = call float @dx.op.dot3.f32(i32 55, float %7786, float %7786, float %7786, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7788 = fsub fast float 1.000000e+00, %7787
  %7789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7790 = extractvalue %dx.types.CBufRet.f32 %7789, 0
  %7791 = fmul fast float %7790, %5507
  %7792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7793 = extractvalue %dx.types.CBufRet.f32 %7792, 3
  %7794 = fsub fast float 1.000000e+00, %3484
  %7795 = call float @dx.op.unary.f32(i32 7, float %7794)  ; Saturate(value)
  %7796 = fadd fast float %3505, %7784
  %7797 = fmul fast float %7796, %3484
  %7798 = fmul fast float %7795, %7793
  %7799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7800 = extractvalue %dx.types.CBufRet.f32 %7799, 3
  %7801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %7802 = extractvalue %dx.types.CBufRet.f32 %7801, 0
  %7803 = fmul fast float %7782, %4742
  %7804 = fmul fast float %7783, %4743
  %7805 = fmul fast float %7784, %4744
  %7806 = fmul fast float %7802, %7788
  %7807 = fmul fast float %7803, %7802
  %7808 = fmul fast float %7804, %7802
  %7809 = fmul fast float %7805, %7802
  %7810 = fmul fast float %7802, %7779
  %7811 = fmul fast float %7802, %7780
  %7812 = fmul fast float %7802, %7781
  %7813 = fcmp fast ogt float %101, %236
  %7814 = and i1 %7813, %3962
  %7815 = or i1 %3968, %7814
  %7816 = icmp eq i32 %3961, 2
  %7817 = fcmp fast ole float %101, %236
  %7818 = and i1 %7817, %7816
  %7819 = or i1 %7818, %7815
  br i1 %7814, label %7820, label %8077

; <label>:7820                                    ; preds = %7778
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 2
  %7823 = extractvalue %dx.types.CBufRet.f32 %7821, 3
  %7824 = fmul fast float %7822, %114
  %7825 = fmul fast float %7823, %115
  %7826 = call float @dx.op.unary.f32(i32 7, float %7824)  ; Saturate(value)
  %7827 = call float @dx.op.unary.f32(i32 7, float %7825)  ; Saturate(value)
  %7828 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %7826, float %7827, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7829 = extractvalue %dx.types.ResRet.f32 %7828, 0
  %7830 = extractvalue %dx.types.ResRet.f32 %7828, 1
  %7831 = extractvalue %dx.types.ResRet.f32 %7828, 2
  %7832 = extractvalue %dx.types.ResRet.f32 %7828, 3
  %7833 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %7826, float %7827, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7834 = extractvalue %dx.types.ResRet.f32 %7833, 0
  %7835 = extractvalue %dx.types.ResRet.f32 %7833, 1
  %7836 = extractvalue %dx.types.ResRet.f32 %7833, 2
  %7837 = extractvalue %dx.types.ResRet.f32 %7833, 3
  %7838 = call float @dx.op.binary.f32(i32 35, float %7830, float %7831)  ; FMax(a,b)
  %7839 = call float @dx.op.binary.f32(i32 35, float %7829, float %7838)  ; FMax(a,b)
  %7840 = call float @dx.op.binary.f32(i32 35, float %7839, float %7832)  ; FMax(a,b)
  %7841 = call float @dx.op.binary.f32(i32 36, float %7835, float %7836)  ; FMin(a,b)
  %7842 = call float @dx.op.binary.f32(i32 36, float %7834, float %7841)  ; FMin(a,b)
  %7843 = call float @dx.op.binary.f32(i32 36, float %7842, float %7837)  ; FMin(a,b)
  %7844 = fmul fast float %7840, 2.550000e+02
  %7845 = fadd fast float %7844, 0x3F70101020000000
  %7846 = fptoui float %7845 to i32
  %7847 = fmul fast float %7843, 2.550000e+02
  %7848 = fadd fast float %7847, 0x3F70101020000000
  %7849 = fptoui float %7848 to i32
  %7850 = icmp ult i32 %7846, %7849
  br i1 %7850, label %7851, label %8019

; <label>:7851                                    ; preds = %7820
  %7852 = fcmp fast ogt float %100, 9.843750e-01
  %7853 = fadd fast float %101, -4.000000e+00
  %7854 = select i1 %7852, float -4.000000e+00, float %7853
  %7855 = call float @dx.op.binary.f32(i32 35, float %7854, float 0.000000e+00)  ; FMax(a,b)
  %7856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7857 = extractvalue %dx.types.CBufRet.f32 %7856, 0
  %7858 = fadd fast float %7857, %7855
  %7859 = extractvalue %dx.types.CBufRet.f32 %7856, 2
  %7860 = fmul fast float %7858, %7859
  %7861 = call float @dx.op.unary.f32(i32 23, float %7860)  ; Log(value)
  %7862 = extractvalue %dx.types.CBufRet.f32 %7856, 3
  %7863 = fmul fast float %7862, %7861
  %7864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7865 = extractvalue %dx.types.CBufRet.f32 %7864, 2
  %7866 = fmul fast float %7863, %7865
  %7867 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7868 = uitofp i32 %7846 to float
  %7869 = uitofp i32 %7849 to float
  %7870 = fadd fast float %7868, 5.000000e-01
  %7871 = fadd fast float %7869, 5.000000e-01
  %7872 = fmul fast float %7865, %7870
  %7873 = fmul fast float %7865, %7871
  %7874 = fadd fast float %7872, 0x3F0FFB4800000000
  %7875 = fadd fast float %7873, 0xBF0FFB4800000000
  %7876 = call float @dx.op.binary.f32(i32 35, float %7867, float %7874)  ; FMax(a,b)
  %7877 = call float @dx.op.binary.f32(i32 36, float %7876, float %7875)  ; FMin(a,b)
  %7878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7879 = extractvalue %dx.types.CBufRet.f32 %7878, 1
  %7880 = extractvalue %dx.types.CBufRet.f32 %7878, 2
  %7881 = extractvalue %dx.types.CBufRet.f32 %7878, 0
  %7882 = fmul fast float %7879, %7877
  %7883 = fadd fast float %7881, %7882
  %7884 = fadd fast float %7881, %7880
  %7885 = fsub fast float %7879, %7880
  %7886 = fadd fast float %7885, %7881
  %7887 = call float @dx.op.binary.f32(i32 35, float %7883, float %7884)  ; FMax(a,b)
  %7888 = call float @dx.op.binary.f32(i32 36, float %7887, float %7886)  ; FMin(a,b)
  %7889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %49, float %7826, float %7827, float %7888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7890 = extractvalue %dx.types.ResRet.f32 %7889, 0
  %7891 = extractvalue %dx.types.ResRet.f32 %7889, 1
  %7892 = extractvalue %dx.types.ResRet.f32 %7889, 2
  %7893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7894 = extractvalue %dx.types.CBufRet.i32 %7893, 0
  %7895 = extractvalue %dx.types.CBufRet.i32 %7893, 1
  %7896 = uitofp i32 %7894 to float
  %7897 = uitofp i32 %7895 to float
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 0
  %7900 = extractvalue %dx.types.CBufRet.f32 %7898, 1
  %7901 = fmul fast float %7896, %7826
  %7902 = fmul fast float %7897, %7827
  %7903 = fadd fast float %7901, -5.000000e-01
  %7904 = fadd fast float %7902, -5.000000e-01
  %7905 = call float @dx.op.unary.f32(i32 22, float %7903)  ; Frc(value)
  %7906 = call float @dx.op.unary.f32(i32 22, float %7904)  ; Frc(value)
  %7907 = fmul fast float %7905, %7905
  %7908 = fmul fast float %7907, %7905
  %7909 = fsub fast float 3.000000e+00, %7905
  %7910 = fmul fast float %7907, %7909
  %7911 = fmul fast float %7905, 3.000000e+00
  %7912 = fmul fast float %7908, 3.000000e+00
  %7913 = fmul fast float %7907, 6.000000e+00
  %7914 = fsub fast float %7912, %7913
  %7915 = fadd fast float %7914, 4.000000e+00
  %7916 = fmul fast float %7915, 0x3FC5555560000000
  %7917 = fmul fast float %7908, -3.000000e+00
  %7918 = fadd fast float %7907, %7905
  %7919 = fmul fast float %7918, 3.000000e+00
  %7920 = fadd fast float %7917, 1.000000e+00
  %7921 = fadd fast float %7920, %7919
  %7922 = fmul fast float %7908, 0x3FC5555560000000
  %7923 = fmul fast float %7906, %7906
  %7924 = fmul fast float %7923, %7906
  %7925 = fsub fast float 3.000000e+00, %7906
  %7926 = fmul fast float %7923, %7925
  %7927 = fmul fast float %7906, 3.000000e+00
  %7928 = fmul fast float %7924, 3.000000e+00
  %7929 = fmul fast float %7923, 6.000000e+00
  %7930 = fsub fast float %7928, %7929
  %7931 = fadd fast float %7930, 4.000000e+00
  %7932 = fmul fast float %7931, 0x3FC5555560000000
  %7933 = fmul fast float %7924, -3.000000e+00
  %7934 = fadd fast float %7923, %7906
  %7935 = fmul fast float %7934, 3.000000e+00
  %7936 = fadd fast float %7933, 1.000000e+00
  %7937 = fadd fast float %7936, %7935
  %7938 = fmul fast float %7924, 0x3FC5555560000000
  %7939 = fadd fast float %7905, 1.000000e+00
  %7940 = fsub fast float 1.000000e+00, %7911
  %7941 = fadd fast float %7940, %7910
  %7942 = fadd fast float %7941, %7915
  %7943 = fmul fast float %7942, 0x3FC5555560000000
  %7944 = fdiv fast float %7916, %7943
  %7945 = fsub fast float %7939, %7944
  %7946 = fsub fast float 1.000000e+00, %7905
  %7947 = fadd fast float %7921, %7908
  %7948 = fmul fast float %7947, 0x3FC5555560000000
  %7949 = fdiv fast float %7922, %7948
  %7950 = fadd fast float %7946, %7949
  %7951 = fadd fast float %7906, 1.000000e+00
  %7952 = fsub fast float 1.000000e+00, %7927
  %7953 = fadd fast float %7952, %7926
  %7954 = fadd fast float %7953, %7931
  %7955 = fmul fast float %7954, 0x3FC5555560000000
  %7956 = fdiv fast float %7932, %7955
  %7957 = fsub fast float %7951, %7956
  %7958 = fsub fast float 1.000000e+00, %7906
  %7959 = fadd fast float %7937, %7924
  %7960 = fmul fast float %7959, 0x3FC5555560000000
  %7961 = fdiv fast float %7938, %7960
  %7962 = fadd fast float %7961, %7958
  %7963 = fmul fast float %7945, %7899
  %7964 = fsub fast float %7826, %7963
  %7965 = fmul fast float %7950, %7899
  %7966 = fadd fast float %7965, %7826
  %7967 = fmul fast float %7962, %7900
  %7968 = fadd fast float %7967, %7827
  %7969 = fmul fast float %7957, %7900
  %7970 = fsub fast float %7827, %7969
  %7971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %7964, float %7970, float %7888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7972 = extractvalue %dx.types.ResRet.f32 %7971, 0
  %7973 = extractvalue %dx.types.ResRet.f32 %7971, 1
  %7974 = extractvalue %dx.types.ResRet.f32 %7971, 2
  %7975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %7966, float %7970, float %7888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7976 = extractvalue %dx.types.ResRet.f32 %7975, 0
  %7977 = extractvalue %dx.types.ResRet.f32 %7975, 1
  %7978 = extractvalue %dx.types.ResRet.f32 %7975, 2
  %7979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %7964, float %7968, float %7888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7980 = extractvalue %dx.types.ResRet.f32 %7979, 0
  %7981 = extractvalue %dx.types.ResRet.f32 %7979, 1
  %7982 = extractvalue %dx.types.ResRet.f32 %7979, 2
  %7983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %7966, float %7968, float %7888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7984 = extractvalue %dx.types.ResRet.f32 %7983, 0
  %7985 = extractvalue %dx.types.ResRet.f32 %7983, 1
  %7986 = extractvalue %dx.types.ResRet.f32 %7983, 2
  %7987 = fsub fast float %7980, %7972
  %7988 = fsub fast float %7981, %7973
  %7989 = fsub fast float %7982, %7974
  %7990 = fmul fast float %7987, %7960
  %7991 = fmul fast float %7988, %7960
  %7992 = fmul fast float %7989, %7960
  %7993 = fadd fast float %7990, %7972
  %7994 = fadd fast float %7991, %7973
  %7995 = fadd fast float %7992, %7974
  %7996 = fsub fast float %7984, %7976
  %7997 = fsub fast float %7985, %7977
  %7998 = fsub fast float %7986, %7978
  %7999 = fmul fast float %7996, %7960
  %8000 = fmul fast float %7997, %7960
  %8001 = fmul fast float %7998, %7960
  %8002 = fsub fast float %7976, %7993
  %8003 = fadd fast float %8002, %7999
  %8004 = fsub fast float %7977, %7994
  %8005 = fadd fast float %8004, %8000
  %8006 = fsub fast float %7978, %7995
  %8007 = fadd fast float %8006, %8001
  %8008 = fmul fast float %8003, %7948
  %8009 = fmul fast float %8005, %7948
  %8010 = fmul fast float %8007, %7948
  %8011 = fadd fast float %8008, %7993
  %8012 = fadd fast float %8009, %7994
  %8013 = fadd fast float %8010, %7995
  %8014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8015 = extractvalue %dx.types.CBufRet.f32 %8014, 1
  %8016 = fmul fast float %8011, %8015
  %8017 = fmul fast float %8012, %8015
  %8018 = fmul fast float %8013, %8015
  br label %8019

; <label>:8019                                    ; preds = %7851, %7820
  %8020 = phi float [ %7890, %7851 ], [ 1.000000e+00, %7820 ]
  %8021 = phi float [ %7891, %7851 ], [ 1.000000e+00, %7820 ]
  %8022 = phi float [ %7892, %7851 ], [ 1.000000e+00, %7820 ]
  %8023 = phi float [ %8016, %7851 ], [ 0.000000e+00, %7820 ]
  %8024 = phi float [ %8017, %7851 ], [ 0.000000e+00, %7820 ]
  %8025 = phi float [ %8018, %7851 ], [ 0.000000e+00, %7820 ]
  %8026 = fmul fast float %8023, %7806
  %8027 = fmul fast float %8024, %7806
  %8028 = fmul fast float %8025, %7806
  %8029 = call float @dx.op.dot3.f32(i32 55, float %8020, float %8021, float %8022, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8030 = call float @dx.op.dot3.f32(i32 55, float %8026, float %8027, float %8028, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8031 = select i1 %273, float %8029, float %8020
  %8032 = select i1 %273, float %8029, float %8021
  %8033 = select i1 %273, float 1.000000e+00, float %8022
  %8034 = select i1 %273, float %8030, float %8026
  %8035 = select i1 %273, float 0.000000e+00, float %8027
  %8036 = select i1 %273, float 0.000000e+00, float %8028
  %8037 = fmul fast float %8031, %7807
  %8038 = fmul fast float %8032, %7808
  %8039 = fmul fast float %8033, %7809
  %8040 = fadd fast float %8037, %8034
  %8041 = fadd fast float %8038, %8035
  %8042 = fadd fast float %8036, %8039
  %8043 = fmul fast float %8031, %7810
  %8044 = fmul fast float %8032, %7811
  %8045 = fmul fast float %8033, %7812
  %8046 = fmul fast float %150, %7822
  %8047 = fmul fast float %152, %7823
  %8048 = fsub fast float 1.000000e+00, %8046
  %8049 = fsub fast float 1.000000e+00, %8047
  %8050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8051 = extractvalue %dx.types.CBufRet.f32 %8050, 0
  %8052 = extractvalue %dx.types.CBufRet.f32 %8050, 1
  %8053 = extractvalue %dx.types.CBufRet.f32 %8050, 2
  %8054 = fmul fast float %8048, %8051
  %8055 = fmul fast float %8048, %8052
  %8056 = fmul fast float %8048, %8053
  %8057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8058 = extractvalue %dx.types.CBufRet.f32 %8057, 0
  %8059 = extractvalue %dx.types.CBufRet.f32 %8057, 1
  %8060 = extractvalue %dx.types.CBufRet.f32 %8057, 2
  %8061 = fmul fast float %8049, %8058
  %8062 = fmul fast float %8049, %8059
  %8063 = fmul fast float %8049, %8060
  %8064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8065 = extractvalue %dx.types.CBufRet.f32 %8064, 0
  %8066 = extractvalue %dx.types.CBufRet.f32 %8064, 1
  %8067 = extractvalue %dx.types.CBufRet.f32 %8064, 2
  %8068 = fadd fast float %8061, %8065
  %8069 = fadd fast float %8068, %8054
  %8070 = fadd fast float %8062, %8066
  %8071 = fadd fast float %8070, %8055
  %8072 = fadd fast float %8063, %8067
  %8073 = fadd fast float %8072, %8056
  %8074 = fmul fast float %8069, %236
  %8075 = fmul fast float %8071, %236
  %8076 = fmul fast float %8073, %236
  br label %8077

; <label>:8077                                    ; preds = %8019, %7778
  %8078 = phi float [ %8074, %8019 ], [ %201, %7778 ]
  %8079 = phi float [ %8075, %8019 ], [ %202, %7778 ]
  %8080 = phi float [ %8076, %8019 ], [ %203, %7778 ]
  %8081 = phi float [ %236, %8019 ], [ %101, %7778 ]
  %8082 = phi float [ %8040, %8019 ], [ %7807, %7778 ]
  %8083 = phi float [ %8041, %8019 ], [ %7808, %7778 ]
  %8084 = phi float [ %8042, %8019 ], [ %7809, %7778 ]
  %8085 = phi float [ %8043, %8019 ], [ %7810, %7778 ]
  %8086 = phi float [ %8044, %8019 ], [ %7811, %7778 ]
  %8087 = phi float [ %8045, %8019 ], [ %7812, %7778 ]
  %8088 = phi float [ %8020, %8019 ], [ 1.000000e+00, %7778 ]
  br i1 %7819, label %9243, label %8089

; <label>:8089                                    ; preds = %8077
  %8090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8091 = extractvalue %dx.types.CBufRet.f32 %8090, 0
  %8092 = extractvalue %dx.types.CBufRet.f32 %8090, 1
  %8093 = extractvalue %dx.types.CBufRet.f32 %8090, 2
  %8094 = extractvalue %dx.types.CBufRet.f32 %8090, 3
  %8095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8096 = extractvalue %dx.types.CBufRet.f32 %8095, 0
  %8097 = extractvalue %dx.types.CBufRet.f32 %8095, 1
  %8098 = extractvalue %dx.types.CBufRet.f32 %8095, 2
  %8099 = extractvalue %dx.types.CBufRet.f32 %8095, 3
  %8100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8101 = extractvalue %dx.types.CBufRet.f32 %8100, 0
  %8102 = extractvalue %dx.types.CBufRet.f32 %8100, 1
  %8103 = extractvalue %dx.types.CBufRet.f32 %8100, 2
  %8104 = extractvalue %dx.types.CBufRet.f32 %8100, 3
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.CBufRet.f32 %8105, 1
  %8108 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8109 = extractvalue %dx.types.CBufRet.f32 %8105, 3
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 3
  %8112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8113 = extractvalue %dx.types.CBufRet.f32 %8112, 3
  %8114 = extractvalue %dx.types.CBufRet.f32 %8112, 0
  %8115 = extractvalue %dx.types.CBufRet.f32 %8112, 1
  %8116 = extractvalue %dx.types.CBufRet.f32 %8112, 2
  %8117 = fcmp fast olt float %8116, -5.000000e-01
  %8118 = call float @dx.op.dot3.f32(i32 55, float %8078, float %8079, float %8080, float %8078, float %8079, float %8080)  ; Dot3(ax,ay,az,bx,by,bz)
  %8119 = call float @dx.op.unary.f32(i32 25, float %8118)  ; Rsqrt(value)
  %8120 = fmul fast float %8119, %8118
  %8121 = fmul fast float %8119, %8078
  %8122 = fmul fast float %8119, %8079
  %8123 = fmul fast float %8119, %8080
  %8124 = fadd fast float %8120, %8094
  %8125 = call float @dx.op.dot3.f32(i32 55, float %8121, float %8122, float %8123, float %8091, float %8092, float %8093)  ; Dot3(ax,ay,az,bx,by,bz)
  %8126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8127 = extractvalue %dx.types.CBufRet.i32 %8126, 1
  %8128 = and i32 %8127, 1
  %8129 = icmp ne i32 %8128, 0
  %8130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8131 = extractvalue %dx.types.CBufRet.f32 %8130, 2
  %8132 = fcmp fast ogt float %8131, 0.000000e+00
  %8133 = and i1 %8129, %8132
  br i1 %8133, label %8134, label %8540, !dx.controlflow.hints !134

; <label>:8134                                    ; preds = %8089
  %8135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8136 = extractvalue %dx.types.CBufRet.f32 %8135, 3
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 2
  %8139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8139, 2
  %8141 = fsub fast float %8138, %8140
  %8142 = and i32 %8127, 2
  %8143 = extractvalue %dx.types.CBufRet.i32 %8126, 0
  %8144 = call i32 @dx.op.binary.i32(i32 40, i32 %8143, i32 3)  ; UMin(a,b)
  %8145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8146 = extractvalue %dx.types.CBufRet.f32 %8145, 0
  %8147 = extractvalue %dx.types.CBufRet.f32 %8145, 1
  %8148 = extractvalue %dx.types.CBufRet.f32 %8139, 0
  %8149 = extractvalue %dx.types.CBufRet.f32 %8139, 1
  %8150 = fsub fast float %8146, %8148
  %8151 = fsub fast float %8147, %8149
  %8152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8153 = extractvalue %dx.types.CBufRet.f32 %8152, 0
  %8154 = fcmp fast ogt float %8153, 0.000000e+00
  %8155 = fsub fast float -0.000000e+00, %8150
  %8156 = fsub fast float -0.000000e+00, %8151
  %8157 = call float @dx.op.dot2.f32(i32 54, float %8121, float %8122, float %8121, float %8122)  ; Dot2(ax,ay,bx,by)
  %8158 = call float @dx.op.dot2.f32(i32 54, float %8121, float %8122, float %8155, float %8156)  ; Dot2(ax,ay,bx,by)
  %8159 = fmul fast float %8158, 2.000000e+00
  %8160 = call float @dx.op.dot2.f32(i32 54, float %8155, float %8156, float %8155, float %8156)  ; Dot2(ax,ay,bx,by)
  %8161 = fmul fast float %8153, %8153
  %8162 = fsub fast float %8160, %8161
  %8163 = fmul fast float %8159, %8159
  %8164 = fmul fast float %8157, 4.000000e+00
  %8165 = fmul fast float %8164, %8162
  %8166 = fsub fast float %8163, %8165
  %8167 = fcmp fast ogt float %8166, 0.000000e+00
  br i1 %8167, label %8168, label %8183

; <label>:8168                                    ; preds = %8134
  %8169 = fcmp fast ogt float %8159, 0.000000e+00
  %8170 = call float @dx.op.unary.f32(i32 24, float %8166)  ; Sqrt(value)
  %8171 = fsub fast float -0.000000e+00, %8170
  %8172 = select i1 %8169, float %8170, float %8171
  %8173 = fadd fast float %8172, %8159
  %8174 = fmul float %8173, -5.000000e-01
  %8175 = fdiv fast float %8174, %8157
  %8176 = call float @dx.op.binary.f32(i32 35, float %8175, float 0.000000e+00)  ; FMax(a,b)
  %8177 = call float @dx.op.binary.f32(i32 36, float %8120, float %8176)  ; FMin(a,b)
  %8178 = fdiv fast float %8162, %8174
  %8179 = call float @dx.op.binary.f32(i32 35, float %8178, float 0.000000e+00)  ; FMax(a,b)
  %8180 = call float @dx.op.binary.f32(i32 36, float %8120, float %8179)  ; FMin(a,b)
  %8181 = call float @dx.op.binary.f32(i32 36, float %8177, float %8180)  ; FMin(a,b)
  %8182 = call float @dx.op.binary.f32(i32 35, float %8177, float %8180)  ; FMax(a,b)
  br label %8183

; <label>:8183                                    ; preds = %8168, %8134
  %8184 = phi float [ %8182, %8168 ], [ -1.000000e+00, %8134 ]
  %8185 = phi float [ %8181, %8168 ], [ -1.000000e+00, %8134 ]
  %8186 = phi i1 [ true, %8168 ], [ false, %8134 ]
  %8187 = and i1 %8154, %8186
  br i1 %8187, label %8188, label %8190

; <label>:8188                                    ; preds = %8183
  %8189 = fcmp fast oeq float %8185, %8184
  br i1 %8189, label %8493, label %8191

; <label>:8190                                    ; preds = %8183
  br i1 %8154, label %8493, label %8191

; <label>:8191                                    ; preds = %8190, %8188
  %8192 = phi float [ %8120, %8190 ], [ %8184, %8188 ]
  %8193 = phi float [ 0.000000e+00, %8190 ], [ %8185, %8188 ]
  %8194 = icmp ne i32 %8142, 0
  %8195 = fmul fast float %8192, %8123
  %8196 = fadd fast float %8195, %8136
  %8197 = fmul fast float %8196, %8192
  %8198 = select i1 %8194, float 0.000000e+00, float %8197
  %8199 = fcmp fast oeq float %8123, 0.000000e+00
  %8200 = fdiv fast float %8141, %8123
  %8201 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8200)  ; FMax(a,b)
  %8202 = select i1 %8199, float %8192, float %8201
  %8203 = call float @dx.op.binary.f32(i32 36, float %8192, float %8202)  ; FMin(a,b)
  %8204 = fcmp fast ogt float %8123, 0.000000e+00
  %8205 = fcmp fast olt float %8141, 0.000000e+00
  br i1 %8204, label %8206, label %8263

; <label>:8206                                    ; preds = %8191
  %8207 = icmp eq i32 %8142, 0
  br i1 %8205, label %8208, label %8252

; <label>:8208                                    ; preds = %8206
  %8209 = select i1 %8207, float %8192, float 0.000000e+00
  %8210 = fsub fast float -0.000000e+00, %8209
  %8211 = call float @dx.op.unary.f32(i32 6, float %8210)  ; FAbs(value)
  %8212 = fmul fast float %8209, %8123
  %8213 = fadd fast float %8212, %8136
  %8214 = fmul fast float %8211, %8213
  %8215 = fsub fast float %8198, %8214
  %8216 = fsub fast float %8192, %8211
  %8217 = select i1 %8207, float %8216, float 0.000000e+00
  %8218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8219 = extractvalue %dx.types.CBufRet.f32 %8218, 0
  %8220 = extractvalue %dx.types.CBufRet.f32 %8218, 1
  %8221 = extractvalue %dx.types.CBufRet.f32 %8218, 2
  %8222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8223 = extractvalue %dx.types.CBufRet.f32 %8222, 0
  %8224 = extractvalue %dx.types.CBufRet.f32 %8222, 1
  %8225 = extractvalue %dx.types.CBufRet.f32 %8222, 2
  %8226 = extractvalue %dx.types.CBufRet.f32 %8222, 3
  %8227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8228 = extractvalue %dx.types.CBufRet.f32 %8227, 3
  %8229 = call float @dx.op.binary.f32(i32 36, float %8215, float %8228)  ; FMin(a,b)
  %8230 = fmul fast float %8226, %8217
  %8231 = call float @dx.op.unary.f32(i32 7, float %8230)  ; Saturate(value)
  %8232 = fsub fast float %8223, %8219
  %8233 = fsub fast float %8224, %8220
  %8234 = fsub fast float %8225, %8221
  %8235 = fmul fast float %8231, %8232
  %8236 = fmul fast float %8231, %8233
  %8237 = fmul fast float %8231, %8234
  %8238 = fadd fast float %8235, %8219
  %8239 = fadd fast float %8236, %8220
  %8240 = fadd fast float %8237, %8221
  %8241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8242 = extractvalue %dx.types.CBufRet.f32 %8241, 0
  %8243 = extractvalue %dx.types.CBufRet.f32 %8241, 1
  %8244 = fadd fast float %8243, %8242
  %8245 = call float @dx.op.unary.f32(i32 7, float %8244)  ; Saturate(value)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8241, 2
  %8247 = extractvalue %dx.types.CBufRet.f32 %8241, 3
  %8248 = fadd fast float %8247, %8246
  %8249 = call float @dx.op.unary.f32(i32 7, float %8248)  ; Saturate(value)
  %8250 = fmul fast float %8245, %8229
  %8251 = fmul fast float %8250, %8249
  br label %8493

; <label>:8252                                    ; preds = %8206
  br i1 %8207, label %8253, label %8274

; <label>:8253                                    ; preds = %8252
  %8254 = call float @dx.op.binary.f32(i32 36, float %8203, float %8193)  ; FMin(a,b)
  %8255 = fsub fast float %8203, %8254
  %8256 = fsub fast float %8255, %8192
  %8257 = call float @dx.op.unary.f32(i32 6, float %8256)  ; FAbs(value)
  %8258 = fadd fast float %8255, %8192
  %8259 = fmul fast float %8258, %8123
  %8260 = fadd fast float %8259, %8136
  %8261 = fmul fast float %8260, %8257
  %8262 = fsub fast float %8198, %8261
  br label %8274

; <label>:8263                                    ; preds = %8191
  br i1 %8205, label %8264, label %8274

; <label>:8264                                    ; preds = %8263
  %8265 = call float @dx.op.binary.f32(i32 35, float %8193, float %8203)  ; FMax(a,b)
  %8266 = icmp eq i32 %8142, 0
  %8267 = select i1 %8266, float %8203, float 0.000000e+00
  %8268 = fsub fast float -0.000000e+00, %8267
  %8269 = call float @dx.op.unary.f32(i32 6, float %8268)  ; FAbs(value)
  %8270 = fmul fast float %8267, %8123
  %8271 = fadd fast float %8270, %8136
  %8272 = fmul fast float %8269, %8271
  %8273 = fsub fast float %8198, %8272
  br label %8274

; <label>:8274                                    ; preds = %8264, %8263, %8253, %8252
  %8275 = phi float [ %8193, %8252 ], [ %8193, %8253 ], [ %8265, %8264 ], [ %8193, %8263 ]
  %8276 = phi float [ 0.000000e+00, %8252 ], [ %8257, %8253 ], [ %8269, %8264 ], [ 0.000000e+00, %8263 ]
  %8277 = phi float [ %8198, %8252 ], [ %8262, %8253 ], [ %8273, %8264 ], [ %8198, %8263 ]
  %8278 = phi float [ %8203, %8252 ], [ %8203, %8253 ], [ %8192, %8264 ], [ %8192, %8263 ]
  %8279 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %8279, align 4, !tbaa !120, !noalias !135
  %8280 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %8280, align 4, !tbaa !120, !noalias !135
  %8281 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %8281, align 4, !tbaa !120, !noalias !135
  %8282 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %8282, align 4, !tbaa !120, !noalias !135
  %8283 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %8283, align 4, !tbaa !120, !noalias !135
  %8284 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %8284, align 4, !tbaa !120, !noalias !135
  %8285 = icmp sgt i32 %8144, 0
  br i1 %8285, label %8286, label %8347

; <label>:8286                                    ; preds = %8274
  br label %8287

; <label>:8287                                    ; preds = %8336, %8286
  %8288 = phi i32 [ %8337, %8336 ], [ 0, %8286 ]
  %8289 = phi i32 [ %8338, %8336 ], [ 0, %8286 ]
  %8290 = add nuw i32 %8289, 171
  %8291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %8290)  ; CBufferLoadLegacy(handle,regIndex)
  %8292 = extractvalue %dx.types.CBufRet.f32 %8291, 0
  %8293 = extractvalue %dx.types.CBufRet.f32 %8291, 1
  %8294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8295 = extractvalue %dx.types.CBufRet.f32 %8294, 0
  %8296 = extractvalue %dx.types.CBufRet.f32 %8294, 1
  %8297 = fsub fast float %8292, %8295
  %8298 = fsub fast float %8293, %8296
  %8299 = extractvalue %dx.types.CBufRet.f32 %8291, 2
  %8300 = fsub fast float -0.000000e+00, %8297
  %8301 = fsub fast float -0.000000e+00, %8298
  %8302 = call float @dx.op.dot2.f32(i32 54, float %8121, float %8122, float %8300, float %8301)  ; Dot2(ax,ay,bx,by)
  %8303 = fmul fast float %8302, 2.000000e+00
  %8304 = call float @dx.op.dot2.f32(i32 54, float %8300, float %8301, float %8300, float %8301)  ; Dot2(ax,ay,bx,by)
  %8305 = fmul fast float %8299, %8299
  %8306 = fsub fast float %8304, %8305
  %8307 = fmul fast float %8303, %8303
  %8308 = fmul fast float %8164, %8306
  %8309 = fsub fast float %8307, %8308
  %8310 = fcmp fast ogt float %8309, 0.000000e+00
  br i1 %8310, label %8311, label %8326

; <label>:8311                                    ; preds = %8287
  %8312 = fcmp fast ogt float %8303, 0.000000e+00
  %8313 = call float @dx.op.unary.f32(i32 24, float %8309)  ; Sqrt(value)
  %8314 = fsub fast float -0.000000e+00, %8313
  %8315 = select i1 %8312, float %8313, float %8314
  %8316 = fadd fast float %8315, %8303
  %8317 = fmul float %8316, -5.000000e-01
  %8318 = fdiv fast float %8317, %8157
  %8319 = call float @dx.op.binary.f32(i32 35, float %8318, float 0.000000e+00)  ; FMax(a,b)
  %8320 = call float @dx.op.binary.f32(i32 36, float %8192, float %8319)  ; FMin(a,b)
  %8321 = fdiv fast float %8306, %8317
  %8322 = call float @dx.op.binary.f32(i32 35, float %8321, float 0.000000e+00)  ; FMax(a,b)
  %8323 = call float @dx.op.binary.f32(i32 36, float %8192, float %8322)  ; FMin(a,b)
  %8324 = call float @dx.op.binary.f32(i32 36, float %8320, float %8323)  ; FMin(a,b)
  %8325 = call float @dx.op.binary.f32(i32 35, float %8320, float %8323)  ; FMax(a,b)
  br label %8326

; <label>:8326                                    ; preds = %8311, %8287
  %8327 = phi float [ %8325, %8311 ], [ -1.000000e+00, %8287 ]
  %8328 = phi float [ %8324, %8311 ], [ -1.000000e+00, %8287 ]
  %8329 = phi i1 [ true, %8311 ], [ false, %8287 ]
  br i1 %8329, label %8330, label %8336

; <label>:8330                                    ; preds = %8326
  %8331 = call float @dx.op.binary.f32(i32 35, float %8275, float %8328)  ; FMax(a,b)
  %8332 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8289
  store float %8331, float* %8332, align 4, !tbaa !120, !noalias !135
  %8333 = call float @dx.op.binary.f32(i32 35, float %8275, float %8327)  ; FMax(a,b)
  %8334 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8289
  store float %8333, float* %8334, align 4, !tbaa !120, !noalias !135
  %8335 = add nsw i32 %8288, 1
  br label %8336

; <label>:8336                                    ; preds = %8330, %8326
  %8337 = phi i32 [ %8335, %8330 ], [ %8288, %8326 ]
  %8338 = add nuw nsw i32 %8289, 1
  %8339 = icmp eq i32 %8338, %8144
  br i1 %8339, label %8340, label %8287

; <label>:8340                                    ; preds = %8336
  %8341 = load float, float* %8281, align 4, !tbaa !120, !alias.scope !151, !noalias !154
  %8342 = load float, float* %8280, align 4, !tbaa !120, !alias.scope !157, !noalias !158
  %8343 = load float, float* %8279, align 4, !tbaa !120, !alias.scope !159, !noalias !160
  %8344 = load float, float* %8284, align 4, !tbaa !120, !alias.scope !161, !noalias !164
  %8345 = load float, float* %8283, align 4, !tbaa !120, !alias.scope !167, !noalias !168
  %8346 = load float, float* %8282, align 4, !tbaa !120, !alias.scope !169, !noalias !170
  br label %8347

; <label>:8347                                    ; preds = %8340, %8274
  %8348 = phi float [ -1.000000e+00, %8274 ], [ %8346, %8340 ]
  %8349 = phi float [ -1.000000e+00, %8274 ], [ %8345, %8340 ]
  %8350 = phi float [ -1.000000e+00, %8274 ], [ %8344, %8340 ]
  %8351 = phi float [ -1.000000e+00, %8274 ], [ %8343, %8340 ]
  %8352 = phi float [ -1.000000e+00, %8274 ], [ %8342, %8340 ]
  %8353 = phi float [ -1.000000e+00, %8274 ], [ %8341, %8340 ]
  %8354 = phi i32 [ 0, %8274 ], [ %8337, %8340 ]
  %8355 = call float @dx.op.binary.f32(i32 36, float %8352, float %8353)  ; FMin(a,b)
  %8356 = call float @dx.op.binary.f32(i32 36, float %8351, float %8355)  ; FMin(a,b)
  %8357 = call float @dx.op.binary.f32(i32 35, float %8351, float %8352)  ; FMax(a,b)
  %8358 = call float @dx.op.binary.f32(i32 36, float %8357, float %8353)  ; FMin(a,b)
  %8359 = call float @dx.op.binary.f32(i32 36, float %8351, float %8352)  ; FMin(a,b)
  %8360 = call float @dx.op.binary.f32(i32 35, float %8359, float %8358)  ; FMax(a,b)
  %8361 = call float @dx.op.binary.f32(i32 35, float %8352, float %8353)  ; FMax(a,b)
  %8362 = call float @dx.op.binary.f32(i32 35, float %8351, float %8361)  ; FMax(a,b)
  store float %8356, float* %8279, align 4, !tbaa !120, !alias.scope !159, !noalias !160
  store float %8360, float* %8280, align 4, !tbaa !120, !alias.scope !157, !noalias !158
  store float %8362, float* %8281, align 4, !tbaa !120, !alias.scope !151, !noalias !154
  %8363 = call float @dx.op.binary.f32(i32 36, float %8349, float %8350)  ; FMin(a,b)
  %8364 = call float @dx.op.binary.f32(i32 36, float %8348, float %8363)  ; FMin(a,b)
  %8365 = call float @dx.op.binary.f32(i32 35, float %8348, float %8349)  ; FMax(a,b)
  %8366 = call float @dx.op.binary.f32(i32 36, float %8365, float %8350)  ; FMin(a,b)
  %8367 = call float @dx.op.binary.f32(i32 36, float %8348, float %8349)  ; FMin(a,b)
  %8368 = call float @dx.op.binary.f32(i32 35, float %8367, float %8366)  ; FMax(a,b)
  %8369 = call float @dx.op.binary.f32(i32 35, float %8349, float %8350)  ; FMax(a,b)
  %8370 = call float @dx.op.binary.f32(i32 35, float %8348, float %8369)  ; FMax(a,b)
  store float %8364, float* %8282, align 4, !tbaa !120, !alias.scope !169, !noalias !170
  store float %8368, float* %8283, align 4, !tbaa !120, !alias.scope !167, !noalias !168
  store float %8370, float* %8284, align 4, !tbaa !120, !alias.scope !161, !noalias !164
  %8371 = sub nsw i32 3, %8354
  %8372 = icmp sgt i32 %8371, 2
  br i1 %8372, label %8373, label %8411

; <label>:8373                                    ; preds = %8347
  %8374 = icmp eq i32 %8142, 0
  %8375 = fsub fast float %8192, %8276
  %8376 = select i1 %8374, float %8375, float %8276
  %8377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8378 = extractvalue %dx.types.CBufRet.f32 %8377, 0
  %8379 = extractvalue %dx.types.CBufRet.f32 %8377, 1
  %8380 = extractvalue %dx.types.CBufRet.f32 %8377, 2
  %8381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8382 = extractvalue %dx.types.CBufRet.f32 %8381, 0
  %8383 = extractvalue %dx.types.CBufRet.f32 %8381, 1
  %8384 = extractvalue %dx.types.CBufRet.f32 %8381, 2
  %8385 = extractvalue %dx.types.CBufRet.f32 %8381, 3
  %8386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8387 = extractvalue %dx.types.CBufRet.f32 %8386, 3
  %8388 = call float @dx.op.binary.f32(i32 36, float %8277, float %8387)  ; FMin(a,b)
  %8389 = fmul fast float %8385, %8376
  %8390 = call float @dx.op.unary.f32(i32 7, float %8389)  ; Saturate(value)
  %8391 = fsub fast float %8382, %8378
  %8392 = fsub fast float %8383, %8379
  %8393 = fsub fast float %8384, %8380
  %8394 = fmul fast float %8390, %8391
  %8395 = fmul fast float %8390, %8392
  %8396 = fmul fast float %8390, %8393
  %8397 = fadd fast float %8394, %8378
  %8398 = fadd fast float %8395, %8379
  %8399 = fadd fast float %8396, %8380
  %8400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8401 = extractvalue %dx.types.CBufRet.f32 %8400, 0
  %8402 = extractvalue %dx.types.CBufRet.f32 %8400, 1
  %8403 = fadd fast float %8402, %8401
  %8404 = call float @dx.op.unary.f32(i32 7, float %8403)  ; Saturate(value)
  %8405 = extractvalue %dx.types.CBufRet.f32 %8400, 2
  %8406 = extractvalue %dx.types.CBufRet.f32 %8400, 3
  %8407 = fadd fast float %8406, %8405
  %8408 = call float @dx.op.unary.f32(i32 7, float %8407)  ; Saturate(value)
  %8409 = fmul fast float %8404, %8388
  %8410 = fmul fast float %8409, %8408
  br label %8493

; <label>:8411                                    ; preds = %8347
  %8412 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8371
  %8413 = load float, float* %8412, align 4, !tbaa !120, !noalias !135
  %8414 = fcmp fast olt float %8413, %8278
  %8415 = icmp sgt i32 %8354, 0
  %8416 = and i1 %8415, %8414
  br i1 %8416, label %8417, label %8454

; <label>:8417                                    ; preds = %8411
  br label %8418

; <label>:8418                                    ; preds = %8447, %8417
  %8419 = phi float [ %8448, %8447 ], [ %8276, %8417 ]
  %8420 = phi float [ %8449, %8447 ], [ %8277, %8417 ]
  %8421 = phi float [ %8429, %8447 ], [ %8413, %8417 ]
  %8422 = phi i32 [ %8426, %8447 ], [ %8371, %8417 ]
  %8423 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8422
  %8424 = load float, float* %8423, align 4, !tbaa !120, !noalias !135
  %8425 = icmp slt i32 %8422, 2
  %8426 = add nsw i32 %8422, 1
  %8427 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8426
  %8428 = load float, float* %8427, align 4, !tbaa !120, !noalias !135
  %8429 = select i1 %8425, float %8428, float %8192
  %8430 = call float @dx.op.binary.f32(i32 36, float %8429, float %8424)  ; FMin(a,b)
  %8431 = call float @dx.op.binary.f32(i32 36, float %8278, float %8430)  ; FMin(a,b)
  %8432 = icmp eq i32 %8142, 0
  %8433 = fadd fast float %8431, %8421
  %8434 = fmul fast float %8433, %8123
  %8435 = fadd fast float %8434, %8136
  br i1 %8432, label %8441, label %8436

; <label>:8436                                    ; preds = %8418
  %8437 = fsub fast float %8431, %8421
  %8438 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8437)  ; FMax(a,b)
  %8439 = fmul fast float %8438, %8435
  %8440 = fadd fast float %8439, %8420
  br label %8447

; <label>:8441                                    ; preds = %8418
  %8442 = fsub fast float %8421, %8431
  %8443 = call float @dx.op.unary.f32(i32 6, float %8442)  ; FAbs(value)
  %8444 = fadd fast float %8443, %8419
  %8445 = fmul fast float %8443, %8435
  %8446 = fsub fast float %8420, %8445
  br label %8447

; <label>:8447                                    ; preds = %8441, %8436
  %8448 = phi float [ %8438, %8436 ], [ %8444, %8441 ]
  %8449 = phi float [ %8440, %8436 ], [ %8446, %8441 ]
  %8450 = fcmp fast olt float %8429, %8278
  %8451 = icmp slt i32 %8426, 3
  %8452 = and i1 %8451, %8450
  br i1 %8452, label %8418, label %8453

; <label>:8453                                    ; preds = %8447
  br label %8454

; <label>:8454                                    ; preds = %8453, %8411
  %8455 = phi float [ %8276, %8411 ], [ %8448, %8453 ]
  %8456 = phi float [ %8277, %8411 ], [ %8449, %8453 ]
  %8457 = fsub fast float %8192, %8455
  %8458 = select i1 %8194, float %8455, float %8457
  %8459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8460 = extractvalue %dx.types.CBufRet.f32 %8459, 0
  %8461 = extractvalue %dx.types.CBufRet.f32 %8459, 1
  %8462 = extractvalue %dx.types.CBufRet.f32 %8459, 2
  %8463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8464 = extractvalue %dx.types.CBufRet.f32 %8463, 0
  %8465 = extractvalue %dx.types.CBufRet.f32 %8463, 1
  %8466 = extractvalue %dx.types.CBufRet.f32 %8463, 2
  %8467 = extractvalue %dx.types.CBufRet.f32 %8463, 3
  %8468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8469 = extractvalue %dx.types.CBufRet.f32 %8468, 3
  %8470 = call float @dx.op.binary.f32(i32 36, float %8456, float %8469)  ; FMin(a,b)
  %8471 = fmul fast float %8467, %8458
  %8472 = call float @dx.op.unary.f32(i32 7, float %8471)  ; Saturate(value)
  %8473 = fsub fast float %8464, %8460
  %8474 = fsub fast float %8465, %8461
  %8475 = fsub fast float %8466, %8462
  %8476 = fmul fast float %8472, %8473
  %8477 = fmul fast float %8472, %8474
  %8478 = fmul fast float %8472, %8475
  %8479 = fadd fast float %8476, %8460
  %8480 = fadd fast float %8477, %8461
  %8481 = fadd fast float %8478, %8462
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 0
  %8484 = extractvalue %dx.types.CBufRet.f32 %8482, 1
  %8485 = fadd fast float %8484, %8483
  %8486 = call float @dx.op.unary.f32(i32 7, float %8485)  ; Saturate(value)
  %8487 = extractvalue %dx.types.CBufRet.f32 %8482, 2
  %8488 = extractvalue %dx.types.CBufRet.f32 %8482, 3
  %8489 = fadd fast float %8488, %8487
  %8490 = call float @dx.op.unary.f32(i32 7, float %8489)  ; Saturate(value)
  %8491 = fmul fast float %8486, %8470
  %8492 = fmul fast float %8491, %8490
  br label %8493

; <label>:8493                                    ; preds = %8454, %8373, %8208, %8190, %8188
  %8494 = phi float [ %8217, %8208 ], [ %8376, %8373 ], [ %8458, %8454 ], [ 0.000000e+00, %8188 ], [ 0.000000e+00, %8190 ]
  %8495 = phi float [ %8251, %8208 ], [ %8410, %8373 ], [ %8492, %8454 ], [ 0.000000e+00, %8188 ], [ 0.000000e+00, %8190 ]
  %8496 = phi float [ %8238, %8208 ], [ %8397, %8373 ], [ %8479, %8454 ], [ 0.000000e+00, %8188 ], [ 0.000000e+00, %8190 ]
  %8497 = phi float [ %8239, %8208 ], [ %8398, %8373 ], [ %8480, %8454 ], [ 0.000000e+00, %8188 ], [ 0.000000e+00, %8190 ]
  %8498 = phi float [ %8240, %8208 ], [ %8399, %8373 ], [ %8481, %8454 ], [ 0.000000e+00, %8188 ], [ 0.000000e+00, %8190 ]
  %8499 = fmul fast float %8131, %8495
  %8500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8501 = extractvalue %dx.types.CBufRet.f32 %8500, 2
  %8502 = fsub fast float %8138, %8501
  %8503 = fcmp fast olt float %8499, -2.000000e+01
  %8504 = call float @dx.op.unary.f32(i32 21, float %8499)  ; Exp(value)
  %8505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8506 = extractvalue %dx.types.CBufRet.f32 %8505, 2
  %8507 = extractvalue %dx.types.CBufRet.f32 %8505, 3
  %8508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8509 = extractvalue %dx.types.CBufRet.f32 %8508, 2
  %8510 = fmul fast float %8507, %8502
  %8511 = call float @dx.op.unary.f32(i32 7, float %8510)  ; Saturate(value)
  %8512 = fsub fast float 1.000000e+00, %8511
  %8513 = fmul fast float %8123, 5.000000e-01
  %8514 = fadd fast float %8513, 5.000000e-01
  %8515 = call float @dx.op.unary.f32(i32 7, float %8514)  ; Saturate(value)
  %8516 = fsub fast float 1.000000e+00, %8515
  %8517 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8512)  ; FMax(a,b)
  %8518 = fdiv fast float %8516, %8517
  %8519 = fsub fast float %8502, %8080
  %8520 = call float @dx.op.unary.f32(i32 6, float %8519)  ; FAbs(value)
  %8521 = fmul fast float %8520, %8506
  %8522 = call float @dx.op.unary.f32(i32 7, float %8518)  ; Saturate(value)
  %8523 = fsub fast float 1.000000e+00, %8521
  %8524 = fmul fast float %8523, %8522
  %8525 = fadd fast float %8524, %8521
  %8526 = fmul fast float %8509, %8502
  %8527 = call float @dx.op.unary.f32(i32 7, float %8526)  ; Saturate(value)
  %8528 = fsub fast float 1.000000e+00, %8525
  %8529 = fmul fast float %8528, %8527
  %8530 = fadd fast float %8529, %8525
  %8531 = call float @dx.op.unary.f32(i32 7, float %8530)  ; Saturate(value)
  %8532 = fadd fast float %8504, -1.000000e+00
  %8533 = select i1 %8503, float -1.000000e+00, float %8532
  %8534 = fmul fast float %8531, %8533
  %8535 = fadd fast float %8534, 1.000000e+00
  %8536 = fsub fast float -0.000000e+00, %8534
  %8537 = fmul fast float %8496, %8536
  %8538 = fmul fast float %8497, %8536
  %8539 = fmul fast float %8498, %8536
  br label %8540

; <label>:8540                                    ; preds = %8493, %8089
  %8541 = phi float [ %8494, %8493 ], [ 0.000000e+00, %8089 ]
  %8542 = phi float [ %8535, %8493 ], [ 1.000000e+00, %8089 ]
  %8543 = phi float [ %8537, %8493 ], [ 0.000000e+00, %8089 ]
  %8544 = phi float [ %8538, %8493 ], [ 0.000000e+00, %8089 ]
  %8545 = phi float [ %8539, %8493 ], [ 0.000000e+00, %8089 ]
  %8546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8547 = extractvalue %dx.types.CBufRet.f32 %8546, 1
  %8548 = fsub fast float 1.000000e+00, %8542
  %8549 = fmul fast float %8548, %8124
  %8550 = fmul fast float %8549, %8547
  %8551 = fsub fast float %8124, %8550
  br i1 %8117, label %8552, label %8581, !dx.controlflow.hints !171

; <label>:8552                                    ; preds = %8540
  %8553 = fmul fast float %8125, %8114
  %8554 = fadd fast float %8553, %8115
  %8555 = call float @dx.op.unary.f32(i32 7, float %8554)  ; Saturate(value)
  %8556 = fmul fast float %8096, %8551
  %8557 = fsub fast float -0.000000e+00, %8556
  %8558 = fmul fast float %8097, %8551
  %8559 = fsub fast float -0.000000e+00, %8558
  %8560 = call float @dx.op.unary.f32(i32 21, float %8557)  ; Exp(value)
  %8561 = call float @dx.op.unary.f32(i32 21, float %8559)  ; Exp(value)
  %8562 = call float @dx.op.binary.f32(i32 35, float %8104, float %8560)  ; FMax(a,b)
  %8563 = call float @dx.op.binary.f32(i32 35, float %8104, float %8561)  ; FMax(a,b)
  %8564 = fsub fast float %8563, %8562
  %8565 = fmul fast float %8564, %8555
  %8566 = fadd fast float %8565, %8562
  %8567 = call float @dx.op.unary.f32(i32 7, float %8566)  ; Saturate(value)
  %8568 = fsub fast float %8101, %8106
  %8569 = fsub fast float %8102, %8107
  %8570 = fsub fast float %8103, %8108
  %8571 = fmul fast float %8555, %8568
  %8572 = fmul fast float %8555, %8569
  %8573 = fmul fast float %8555, %8570
  %8574 = fadd fast float %8571, %8106
  %8575 = fadd fast float %8572, %8107
  %8576 = fadd fast float %8573, %8108
  %8577 = fsub fast float 1.000000e+00, %8567
  %8578 = fmul fast float %8577, %8574
  %8579 = fmul fast float %8577, %8575
  %8580 = fmul fast float %8577, %8576
  br label %8640

; <label>:8581                                    ; preds = %8540
  %8582 = fmul fast float %8551, %8113
  %8583 = call float @dx.op.unary.f32(i32 7, float %8582)  ; Saturate(value)
  %8584 = fsub fast float 2.000000e+00, %8583
  %8585 = fmul fast float %8583, 9.921875e-01
  %8586 = fmul fast float %8585, %8584
  %8587 = fadd fast float %8586, 3.906250e-03
  %8588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %51, float %8587, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8589 = extractvalue %dx.types.ResRet.f32 %8588, 0
  %8590 = fsub fast float %8583, %8589
  %8591 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8590)  ; FMax(a,b)
  %8592 = fmul fast float %8099, %8080
  %8593 = call float @dx.op.unary.f32(i32 6, float %8592)  ; FAbs(value)
  %8594 = fcmp fast ogt float %8593, 0x3EB0C6F7A0000000
  br i1 %8594, label %8595, label %8601, !dx.controlflow.hints !172

; <label>:8595                                    ; preds = %8581
  %8596 = fmul fast float %8592, 0xBFF7154760000000
  %8597 = call float @dx.op.unary.f32(i32 21, float %8596)  ; Exp(value)
  %8598 = fsub fast float 1.000000e+00, %8597
  %8599 = fdiv fast float %8598, %8592
  %8600 = fmul fast float %8599, %8109
  br label %8601

; <label>:8601                                    ; preds = %8595, %8581
  %8602 = phi float [ %8600, %8595 ], [ %8109, %8581 ]
  %8603 = fadd fast float %8602, %8111
  %8604 = fmul fast float %8603, %8591
  %8605 = fmul fast float %8096, %8604
  %8606 = fsub fast float -0.000000e+00, %8605
  %8607 = fmul fast float %8097, %8604
  %8608 = fsub fast float -0.000000e+00, %8607
  %8609 = fmul fast float %8098, %8604
  %8610 = fsub fast float -0.000000e+00, %8609
  %8611 = call float @dx.op.unary.f32(i32 21, float %8606)  ; Exp(value)
  %8612 = call float @dx.op.unary.f32(i32 21, float %8608)  ; Exp(value)
  %8613 = call float @dx.op.unary.f32(i32 21, float %8610)  ; Exp(value)
  %8614 = fmul fast float %8125, %8125
  %8615 = fadd fast float %8614, 1.000000e+00
  %8616 = fmul fast float %8615, 0x3FAE8EC8A0000000
  %8617 = fmul fast float %8616, %8106
  %8618 = fmul fast float %8616, %8107
  %8619 = fmul fast float %8616, %8108
  %8620 = fmul fast float %8125, %8104
  %8621 = fsub fast float 1.000000e+00, %8620
  %8622 = fmul fast float %8104, %8104
  %8623 = fsub fast float 1.000000e+00, %8622
  %8624 = fmul fast float %8623, 0x3FB45F3060000000
  %8625 = fmul fast float %8621, %8621
  %8626 = fdiv fast float 1.000000e+00, %8625
  %8627 = fmul fast float %8624, %8626
  %8628 = fmul fast float %8627, %8101
  %8629 = fmul fast float %8627, %8102
  %8630 = fmul fast float %8627, %8103
  %8631 = fadd fast float %8628, %8617
  %8632 = fadd fast float %8629, %8618
  %8633 = fadd fast float %8630, %8619
  %8634 = fsub fast float 1.000000e+00, %8611
  %8635 = fsub fast float 1.000000e+00, %8612
  %8636 = fsub fast float 1.000000e+00, %8613
  %8637 = fmul fast float %8631, %8634
  %8638 = fmul fast float %8632, %8635
  %8639 = fmul fast float %8633, %8636
  br label %8640

; <label>:8640                                    ; preds = %8601, %8552
  %8641 = phi float [ %8578, %8552 ], [ %8637, %8601 ]
  %8642 = phi float [ %8579, %8552 ], [ %8638, %8601 ]
  %8643 = phi float [ %8580, %8552 ], [ %8639, %8601 ]
  %8644 = phi float [ %8567, %8552 ], [ %8611, %8601 ]
  %8645 = phi float [ %8567, %8552 ], [ %8612, %8601 ]
  %8646 = phi float [ %8567, %8552 ], [ %8613, %8601 ]
  br i1 %8133, label %8647, label %8845, !dx.controlflow.hints !173

; <label>:8647                                    ; preds = %8640
  %8648 = extractvalue %dx.types.CBufRet.f32 %8546, 0
  %8649 = fmul fast float %8648, %8548
  %8650 = fsub fast float %8543, %8641
  %8651 = fsub fast float %8544, %8642
  %8652 = fsub fast float %8545, %8643
  %8653 = fmul fast float %8649, %8650
  %8654 = fmul fast float %8649, %8651
  %8655 = fmul fast float %8649, %8652
  %8656 = fadd fast float %8653, %8641
  %8657 = fadd fast float %8654, %8642
  %8658 = fadd fast float %8655, %8643
  %8659 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8644)  ; FMax(a,b)
  %8660 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8645)  ; FMax(a,b)
  %8661 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8646)  ; FMax(a,b)
  %8662 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8542)  ; FMax(a,b)
  %8663 = call float @dx.op.binary.f32(i32 35, float %8541, float %8551)  ; FMax(a,b)
  %8664 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8663)  ; FMax(a,b)
  %8665 = fdiv fast float %8541, %8664
  %8666 = call float @dx.op.unary.f32(i32 7, float %8665)  ; Saturate(value)
  %8667 = fdiv fast float %8551, %8664
  %8668 = call float @dx.op.unary.f32(i32 7, float %8667)  ; Saturate(value)
  %8669 = fcmp fast une float %8662, 1.000000e+00
  br i1 %8669, label %8670, label %8683, !dx.controlflow.hints !174

; <label>:8670                                    ; preds = %8647
  %8671 = call float @dx.op.unary.f32(i32 23, float %8662)  ; Log(value)
  %8672 = fmul fast float %8671, 0x3FE62E4300000000
  %8673 = fmul fast float %8543, %8672
  %8674 = fsub fast float -0.000000e+00, %8673
  %8675 = fmul fast float %8544, %8672
  %8676 = fsub fast float -0.000000e+00, %8675
  %8677 = fmul fast float %8545, %8672
  %8678 = fsub fast float -0.000000e+00, %8677
  %8679 = fsub fast float 1.000000e+00, %8662
  %8680 = fdiv fast float %8674, %8679
  %8681 = fdiv fast float %8676, %8679
  %8682 = fdiv fast float %8678, %8679
  br label %8683

; <label>:8683                                    ; preds = %8670, %8647
  %8684 = phi float [ %8680, %8670 ], [ %8543, %8647 ]
  %8685 = phi float [ %8681, %8670 ], [ %8544, %8647 ]
  %8686 = phi float [ %8682, %8670 ], [ %8545, %8647 ]
  %8687 = phi float [ %8672, %8670 ], [ 0.000000e+00, %8647 ]
  %8688 = fcmp fast une float %8659, 1.000000e+00
  br i1 %8688, label %8689, label %8696, !dx.controlflow.hints !175

; <label>:8689                                    ; preds = %8683
  %8690 = call float @dx.op.unary.f32(i32 23, float %8659)  ; Log(value)
  %8691 = fmul fast float %8690, 0x3FE62E4300000000
  %8692 = fmul fast float %8656, %8691
  %8693 = fsub fast float -0.000000e+00, %8692
  %8694 = fsub fast float 1.000000e+00, %8659
  %8695 = fdiv fast float %8693, %8694
  br label %8696

; <label>:8696                                    ; preds = %8689, %8683
  %8697 = phi float [ %8695, %8689 ], [ %8656, %8683 ]
  %8698 = phi float [ %8691, %8689 ], [ 0.000000e+00, %8683 ]
  %8699 = fcmp fast une float %8660, 1.000000e+00
  br i1 %8699, label %8700, label %8707, !dx.controlflow.hints !175

; <label>:8700                                    ; preds = %8696
  %8701 = call float @dx.op.unary.f32(i32 23, float %8660)  ; Log(value)
  %8702 = fmul fast float %8701, 0x3FE62E4300000000
  %8703 = fmul fast float %8657, %8702
  %8704 = fsub fast float -0.000000e+00, %8703
  %8705 = fsub fast float 1.000000e+00, %8660
  %8706 = fdiv fast float %8704, %8705
  br label %8707

; <label>:8707                                    ; preds = %8700, %8696
  %8708 = phi float [ %8706, %8700 ], [ %8657, %8696 ]
  %8709 = phi float [ %8702, %8700 ], [ 0.000000e+00, %8696 ]
  %8710 = fcmp fast une float %8661, 1.000000e+00
  br i1 %8710, label %8711, label %8718, !dx.controlflow.hints !175

; <label>:8711                                    ; preds = %8707
  %8712 = call float @dx.op.unary.f32(i32 23, float %8661)  ; Log(value)
  %8713 = fmul fast float %8712, 0x3FE62E4300000000
  %8714 = fmul fast float %8658, %8713
  %8715 = fsub fast float -0.000000e+00, %8714
  %8716 = fsub fast float 1.000000e+00, %8661
  %8717 = fdiv fast float %8715, %8716
  br label %8718

; <label>:8718                                    ; preds = %8711, %8707
  %8719 = phi float [ %8717, %8711 ], [ %8658, %8707 ]
  %8720 = phi float [ %8713, %8711 ], [ 0.000000e+00, %8707 ]
  %8721 = fmul fast float %8684, %8668
  %8722 = fmul fast float %8685, %8668
  %8723 = fmul fast float %8686, %8668
  %8724 = fmul fast float %8687, %8668
  %8725 = fmul fast float %8697, %8666
  %8726 = fmul fast float %8708, %8666
  %8727 = fmul fast float %8719, %8666
  %8728 = fmul fast float %8698, %8666
  %8729 = fmul fast float %8709, %8666
  %8730 = fmul fast float %8720, %8666
  %8731 = fadd fast float %8725, %8721
  %8732 = fadd fast float %8726, %8722
  %8733 = fadd fast float %8727, %8723
  %8734 = fadd fast float %8728, %8724
  %8735 = fadd fast float %8729, %8724
  %8736 = fadd fast float %8730, %8724
  %8737 = fcmp fast une float %8734, 0.000000e+00
  br i1 %8737, label %8738, label %8745, !dx.controlflow.hints !176

; <label>:8738                                    ; preds = %8718
  %8739 = fmul fast float %8734, 0x3FF7154760000000
  %8740 = call float @dx.op.unary.f32(i32 21, float %8739)  ; Exp(value)
  %8741 = fsub fast float 1.000000e+00, %8740
  %8742 = fmul fast float %8731, %8741
  %8743 = fsub fast float -0.000000e+00, %8742
  %8744 = fdiv fast float %8743, %8734
  br label %8745

; <label>:8745                                    ; preds = %8738, %8718
  %8746 = phi float [ %8740, %8738 ], [ 1.000000e+00, %8718 ]
  %8747 = phi float [ %8744, %8738 ], [ %8731, %8718 ]
  %8748 = fcmp fast une float %8735, 0.000000e+00
  br i1 %8748, label %8749, label %8756, !dx.controlflow.hints !176

; <label>:8749                                    ; preds = %8745
  %8750 = fmul fast float %8735, 0x3FF7154760000000
  %8751 = call float @dx.op.unary.f32(i32 21, float %8750)  ; Exp(value)
  %8752 = fsub fast float 1.000000e+00, %8751
  %8753 = fmul fast float %8732, %8752
  %8754 = fsub fast float -0.000000e+00, %8753
  %8755 = fdiv fast float %8754, %8735
  br label %8756

; <label>:8756                                    ; preds = %8749, %8745
  %8757 = phi float [ %8751, %8749 ], [ 1.000000e+00, %8745 ]
  %8758 = phi float [ %8755, %8749 ], [ %8732, %8745 ]
  %8759 = fcmp fast une float %8736, 0.000000e+00
  br i1 %8759, label %8760, label %8767, !dx.controlflow.hints !176

; <label>:8760                                    ; preds = %8756
  %8761 = fmul fast float %8736, 0x3FF7154760000000
  %8762 = call float @dx.op.unary.f32(i32 21, float %8761)  ; Exp(value)
  %8763 = fsub fast float 1.000000e+00, %8762
  %8764 = fmul fast float %8733, %8763
  %8765 = fsub fast float -0.000000e+00, %8764
  %8766 = fdiv fast float %8765, %8736
  br label %8767

; <label>:8767                                    ; preds = %8760, %8756
  %8768 = phi float [ %8762, %8760 ], [ 1.000000e+00, %8756 ]
  %8769 = phi float [ %8766, %8760 ], [ %8733, %8756 ]
  %8770 = fcmp fast ogt float %8666, %8668
  br i1 %8770, label %8771, label %8791

; <label>:8771                                    ; preds = %8767
  %8772 = fsub fast float 1.000000e+00, %8668
  %8773 = fmul fast float %8684, %8772
  %8774 = fmul fast float %8685, %8772
  %8775 = fmul fast float %8686, %8772
  %8776 = fmul fast float %8687, %8772
  %8777 = fcmp fast une float %8776, 0.000000e+00
  br i1 %8777, label %8778, label %8829, !dx.controlflow.hints !177

; <label>:8778                                    ; preds = %8771
  %8779 = fmul fast float %8776, 0x3FF7154760000000
  %8780 = call float @dx.op.unary.f32(i32 21, float %8779)  ; Exp(value)
  %8781 = fsub fast float 1.000000e+00, %8780
  %8782 = fmul fast float %8773, %8781
  %8783 = fsub fast float -0.000000e+00, %8782
  %8784 = fmul fast float %8774, %8781
  %8785 = fsub fast float -0.000000e+00, %8784
  %8786 = fmul fast float %8775, %8781
  %8787 = fsub fast float -0.000000e+00, %8786
  %8788 = fdiv fast float %8783, %8776
  %8789 = fdiv fast float %8785, %8776
  %8790 = fdiv fast float %8787, %8776
  br label %8829

; <label>:8791                                    ; preds = %8767
  %8792 = fsub fast float 1.000000e+00, %8666
  %8793 = fmul fast float %8697, %8792
  %8794 = fmul fast float %8708, %8792
  %8795 = fmul fast float %8719, %8792
  %8796 = fmul fast float %8698, %8792
  %8797 = fmul fast float %8709, %8792
  %8798 = fmul fast float %8720, %8792
  %8799 = fcmp fast une float %8796, 0.000000e+00
  br i1 %8799, label %8800, label %8807, !dx.controlflow.hints !176

; <label>:8800                                    ; preds = %8791
  %8801 = fmul fast float %8796, 0x3FF7154760000000
  %8802 = call float @dx.op.unary.f32(i32 21, float %8801)  ; Exp(value)
  %8803 = fsub fast float 1.000000e+00, %8802
  %8804 = fmul fast float %8793, %8803
  %8805 = fsub fast float -0.000000e+00, %8804
  %8806 = fdiv fast float %8805, %8796
  br label %8807

; <label>:8807                                    ; preds = %8800, %8791
  %8808 = phi float [ %8806, %8800 ], [ %8793, %8791 ]
  %8809 = phi float [ %8802, %8800 ], [ 1.000000e+00, %8791 ]
  %8810 = fcmp fast une float %8797, 0.000000e+00
  br i1 %8810, label %8811, label %8818, !dx.controlflow.hints !176

; <label>:8811                                    ; preds = %8807
  %8812 = fmul fast float %8797, 0x3FF7154760000000
  %8813 = call float @dx.op.unary.f32(i32 21, float %8812)  ; Exp(value)
  %8814 = fsub fast float 1.000000e+00, %8813
  %8815 = fmul fast float %8794, %8814
  %8816 = fsub fast float -0.000000e+00, %8815
  %8817 = fdiv fast float %8816, %8797
  br label %8818

; <label>:8818                                    ; preds = %8811, %8807
  %8819 = phi float [ %8817, %8811 ], [ %8794, %8807 ]
  %8820 = phi float [ %8813, %8811 ], [ 1.000000e+00, %8807 ]
  %8821 = fcmp fast une float %8798, 0.000000e+00
  br i1 %8821, label %8822, label %8829, !dx.controlflow.hints !176

; <label>:8822                                    ; preds = %8818
  %8823 = fmul fast float %8798, 0x3FF7154760000000
  %8824 = call float @dx.op.unary.f32(i32 21, float %8823)  ; Exp(value)
  %8825 = fsub fast float 1.000000e+00, %8824
  %8826 = fmul fast float %8795, %8825
  %8827 = fsub fast float -0.000000e+00, %8826
  %8828 = fdiv fast float %8827, %8798
  br label %8829

; <label>:8829                                    ; preds = %8822, %8818, %8778, %8771
  %8830 = phi float [ %8828, %8822 ], [ %8790, %8778 ], [ %8775, %8771 ], [ %8795, %8818 ]
  %8831 = phi float [ %8819, %8822 ], [ %8789, %8778 ], [ %8774, %8771 ], [ %8819, %8818 ]
  %8832 = phi float [ %8808, %8822 ], [ %8788, %8778 ], [ %8773, %8771 ], [ %8808, %8818 ]
  %8833 = phi float [ %8824, %8822 ], [ %8780, %8778 ], [ 1.000000e+00, %8771 ], [ 1.000000e+00, %8818 ]
  %8834 = phi float [ %8820, %8822 ], [ %8780, %8778 ], [ 1.000000e+00, %8771 ], [ %8820, %8818 ]
  %8835 = phi float [ %8809, %8822 ], [ %8780, %8778 ], [ 1.000000e+00, %8771 ], [ %8809, %8818 ]
  %8836 = fmul fast float %8835, %8747
  %8837 = fmul fast float %8834, %8758
  %8838 = fmul fast float %8833, %8769
  %8839 = fadd fast float %8836, %8832
  %8840 = fadd fast float %8837, %8831
  %8841 = fadd fast float %8838, %8830
  %8842 = fmul fast float %8835, %8746
  %8843 = fmul fast float %8834, %8757
  %8844 = fmul fast float %8833, %8768
  br label %8845

; <label>:8845                                    ; preds = %8829, %8640
  %8846 = phi float [ %8844, %8829 ], [ %8646, %8640 ]
  %8847 = phi float [ %8843, %8829 ], [ %8645, %8640 ]
  %8848 = phi float [ %8842, %8829 ], [ %8644, %8640 ]
  %8849 = phi float [ %8841, %8829 ], [ %8643, %8640 ]
  %8850 = phi float [ %8840, %8829 ], [ %8642, %8640 ]
  %8851 = phi float [ %8839, %8829 ], [ %8641, %8640 ]
  %8852 = fmul fast float %8851, %7806
  %8853 = fmul fast float %8850, %7806
  %8854 = fmul fast float %8849, %7806
  %8855 = fmul fast float %8848, %8088
  %8856 = call float @dx.op.dot3.f32(i32 55, float %8848, float %8847, float %8846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8857 = call float @dx.op.dot3.f32(i32 55, float %8852, float %8853, float %8854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8858 = select i1 %273, float %8856, float %8848
  %8859 = select i1 %273, float %8856, float %8847
  %8860 = select i1 %273, float 1.000000e+00, float %8846
  %8861 = select i1 %273, float %8857, float %8852
  %8862 = select i1 %273, float 0.000000e+00, float %8853
  %8863 = select i1 %273, float 0.000000e+00, float %8854
  %8864 = fmul fast float %8858, %8082
  %8865 = fmul fast float %8859, %8083
  %8866 = fmul fast float %8860, %8084
  %8867 = fadd fast float %8864, %8861
  %8868 = fadd fast float %8865, %8862
  %8869 = fadd fast float %8863, %8866
  %8870 = fmul fast float %8858, %8085
  %8871 = fmul fast float %8859, %8086
  %8872 = fmul fast float %8860, %8087
  %8873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8874 = extractvalue %dx.types.CBufRet.i32 %8873, 0
  %8875 = icmp eq i32 %8874, 0
  br i1 %8875, label %9243, label %8876, !dx.controlflow.hints !178

; <label>:8876                                    ; preds = %8845
  %8877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8878 = extractvalue %dx.types.CBufRet.f32 %8877, 2
  %8879 = extractvalue %dx.types.CBufRet.f32 %8877, 3
  %8880 = fmul fast float %8878, %114
  %8881 = fmul fast float %8879, %115
  %8882 = fmul fast float %8880, 2.000000e+00
  %8883 = fmul fast float %8881, 2.000000e+00
  %8884 = fsub fast float 1.000000e+00, %8882
  %8885 = fsub fast float 1.000000e+00, %8883
  %8886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8887 = extractvalue %dx.types.CBufRet.f32 %8886, 0
  %8888 = extractvalue %dx.types.CBufRet.f32 %8886, 1
  %8889 = extractvalue %dx.types.CBufRet.f32 %8886, 2
  %8890 = fmul fast float %8884, %8887
  %8891 = fmul fast float %8884, %8888
  %8892 = fmul fast float %8884, %8889
  %8893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8894 = extractvalue %dx.types.CBufRet.f32 %8893, 0
  %8895 = extractvalue %dx.types.CBufRet.f32 %8893, 1
  %8896 = extractvalue %dx.types.CBufRet.f32 %8893, 2
  %8897 = fmul fast float %8885, %8894
  %8898 = fmul fast float %8885, %8895
  %8899 = fmul fast float %8885, %8896
  %8900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8901 = extractvalue %dx.types.CBufRet.f32 %8900, 0
  %8902 = extractvalue %dx.types.CBufRet.f32 %8900, 1
  %8903 = extractvalue %dx.types.CBufRet.f32 %8900, 2
  %8904 = fadd fast float %8897, %8901
  %8905 = fadd fast float %8904, %8890
  %8906 = fadd fast float %8898, %8902
  %8907 = fadd fast float %8906, %8891
  %8908 = fadd fast float %8899, %8903
  %8909 = fadd fast float %8908, %8892
  %8910 = fmul fast float %8905, %8081
  %8911 = fmul fast float %8907, %8081
  %8912 = fmul fast float %8909, %8081
  %8913 = fmul fast float %8910, %8910
  %8914 = fmul fast float %8911, %8911
  %8915 = fadd fast float %8913, %8914
  %8916 = fmul fast float %8912, %8912
  %8917 = fadd fast float %8915, %8916
  %8918 = call float @dx.op.unary.f32(i32 24, float %8917)  ; Sqrt(value)
  %8919 = extractvalue %dx.types.CBufRet.f32 %7799, 0
  %8920 = fsub fast float %8918, %8919
  %8921 = extractvalue %dx.types.CBufRet.f32 %7799, 2
  %8922 = fmul fast float %8920, %8921
  %8923 = call float @dx.op.unary.f32(i32 7, float %8922)  ; Saturate(value)
  %8924 = fadd fast float %8923, -5.000000e-01
  %8925 = fmul fast float %8924, 2.000000e+00
  %8926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8927 = extractvalue %dx.types.CBufRet.f32 %8926, 2
  %8928 = call float @dx.op.binary.f32(i32 36, float %8927, float %8925)  ; FMin(a,b)
  %8929 = fsub fast float -0.000000e+00, %8927
  %8930 = fcmp fast ogt float %8928, %8929
  br i1 %8930, label %8931, label %9243, !dx.controlflow.hints !179

; <label>:8931                                    ; preds = %8876
  %8932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8933 = extractvalue %dx.types.CBufRet.f32 %8932, 3
  %8934 = fcmp fast ogt float %8933, 0.000000e+00
  br i1 %8934, label %8935, label %9010, !dx.controlflow.hints !180

; <label>:8935                                    ; preds = %8931
  %8936 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %8937 = extractvalue %dx.types.Dimensions %8936, 0
  %8938 = sitofp i32 %8937 to float
  %8939 = extractvalue %dx.types.Dimensions %8936, 1
  %8940 = sitofp i32 %8939 to float
  %8941 = fmul fast float %8880, %8938
  %8942 = fmul fast float %8881, %8940
  %8943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8944 = extractvalue %dx.types.CBufRet.f32 %8943, 1
  %8945 = fsub fast float -0.000000e+00, %8944
  %8946 = fptoui float %8945 to i32
  %8947 = fptoui float %8941 to i32
  %8948 = fptoui float %8942 to i32
  %8949 = and i32 %8946, 31
  %8950 = lshr i32 %8947, %8949
  %8951 = lshr i32 %8948, %8949
  %8952 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %8946, i32 %8950, i32 %8951, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8953 = extractvalue %dx.types.ResRet.f32 %8952, 0
  %8954 = fcmp fast olt float %8953, -1.000000e+00
  %8955 = fcmp fast ogt float %8953, -1.000000e+00
  %8956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8957 = extractvalue %dx.types.CBufRet.f32 %8956, 1
  %8958 = select i1 %8955, float %8957, float 1.000000e+00
  %8959 = fadd fast float %8953, 1.000000e+00
  %8960 = fmul fast float %8958, %8959
  %8961 = call float @dx.op.unary.f32(i32 6, float %8960)  ; FAbs(value)
  %8962 = extractvalue %dx.types.CBufRet.f32 %8956, 3
  %8963 = fcmp fast oge float %8961, %8962
  %8964 = select i1 %8963, float 0x4197782600000000, float %8961
  %8965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.f32 %8965, 0
  %8967 = extractvalue %dx.types.CBufRet.f32 %8965, 1
  %8968 = extractvalue %dx.types.CBufRet.f32 %8965, 2
  %8969 = select i1 %8954, float %8966, float %8887
  %8970 = select i1 %8954, float %8967, float %8888
  %8971 = select i1 %8954, float %8968, float %8889
  %8972 = fmul fast float %8969, %8884
  %8973 = fmul fast float %8970, %8884
  %8974 = fmul fast float %8971, %8884
  %8975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8976 = extractvalue %dx.types.CBufRet.f32 %8975, 0
  %8977 = extractvalue %dx.types.CBufRet.f32 %8975, 1
  %8978 = extractvalue %dx.types.CBufRet.f32 %8975, 2
  %8979 = select i1 %8954, float %8976, float %8894
  %8980 = select i1 %8954, float %8977, float %8895
  %8981 = select i1 %8954, float %8978, float %8896
  %8982 = fmul fast float %8979, %8885
  %8983 = fmul fast float %8980, %8885
  %8984 = fmul fast float %8981, %8885
  %8985 = fadd fast float %8982, %8972
  %8986 = fadd fast float %8983, %8973
  %8987 = fadd fast float %8984, %8974
  %8988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8989 = extractvalue %dx.types.CBufRet.f32 %8988, 0
  %8990 = extractvalue %dx.types.CBufRet.f32 %8988, 1
  %8991 = extractvalue %dx.types.CBufRet.f32 %8988, 2
  %8992 = select i1 %8954, float %8989, float %8901
  %8993 = select i1 %8954, float %8990, float %8902
  %8994 = select i1 %8954, float %8991, float %8903
  %8995 = fadd fast float %8985, %8992
  %8996 = fadd fast float %8986, %8993
  %8997 = fadd fast float %8987, %8994
  %8998 = fmul fast float %8995, %8964
  %8999 = fmul fast float %8996, %8964
  %9000 = fmul fast float %8997, %8964
  %9001 = fmul fast float %8998, %8998
  %9002 = fmul fast float %8999, %8999
  %9003 = fadd fast float %9001, %9002
  %9004 = fmul fast float %9000, %9000
  %9005 = fadd fast float %9003, %9004
  %9006 = call float @dx.op.unary.f32(i32 24, float %9005)  ; Sqrt(value)
  %9007 = fsub fast float %9006, %8919
  %9008 = fmul fast float %9007, %8921
  %9009 = call float @dx.op.unary.f32(i32 7, float %9008)  ; Saturate(value)
  br label %9010

; <label>:9010                                    ; preds = %8935, %8931
  %9011 = phi float [ %9009, %8935 ], [ 1.000000e+00, %8931 ]
  %9012 = fmul fast float %8928, 5.000000e-01
  %9013 = fadd fast float %9012, 5.000000e-01
  %9014 = call float @dx.op.unary.f32(i32 22, float %9013)  ; Frc(value)
  %9015 = call float @dx.op.unary.f32(i32 27, float %9014)  ; Round_ni(value)
  %9016 = call float @dx.op.unary.f32(i32 22, float %9014)  ; Frc(value)
  %9017 = fmul fast float %9016, 2.000000e+00
  %9018 = fadd fast float %9017, -1.000000e+00
  %9019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %51, float %8880, float %8881, float %9015, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9020 = extractvalue %dx.types.ResRet.f32 %9019, 0
  %9021 = extractvalue %dx.types.ResRet.f32 %9019, 1
  %9022 = extractvalue %dx.types.ResRet.f32 %9019, 2
  %9023 = extractvalue %dx.types.ResRet.f32 %9019, 3
  %9024 = fadd fast float %9020, -5.000000e-01
  %9025 = fadd fast float %9022, -5.000000e-01
  %9026 = fmul fast float %9024, 0xBFD5555560000000
  %9027 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9025, float %9026)  ; FMad(a,b,c)
  %9028 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9021, float 0.000000e+00)  ; FMad(a,b,c)
  %9029 = fadd fast float %9028, %9023
  %9030 = fmul fast float %9024, -7.500000e-01
  %9031 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9025, float %9030)  ; FMad(a,b,c)
  %9032 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9021, float 0.000000e+00)  ; FMad(a,b,c)
  %9033 = fadd fast float %9032, %9023
  %9034 = call float @dx.op.binary.f32(i32 35, float %9027, float -1.000000e+00)  ; FMax(a,b)
  %9035 = call float @dx.op.binary.f32(i32 35, float %9029, float -1.000000e+00)  ; FMax(a,b)
  %9036 = call float @dx.op.binary.f32(i32 35, float %9031, float -1.000000e+00)  ; FMax(a,b)
  %9037 = call float @dx.op.binary.f32(i32 35, float %9033, float -1.000000e+00)  ; FMax(a,b)
  %9038 = call float @dx.op.binary.f32(i32 36, float %9034, float 1.000000e+00)  ; FMin(a,b)
  %9039 = call float @dx.op.binary.f32(i32 36, float %9035, float 1.000000e+00)  ; FMin(a,b)
  %9040 = call float @dx.op.binary.f32(i32 36, float %9036, float 1.000000e+00)  ; FMin(a,b)
  %9041 = call float @dx.op.binary.f32(i32 36, float %9037, float 1.000000e+00)  ; FMin(a,b)
  %9042 = fcmp fast olt float %9038, 0x3FEFFF8020000000
  br i1 %9042, label %9043, label %9158, !dx.controlflow.hints !181

; <label>:9043                                    ; preds = %9010
  %9044 = extractvalue %dx.types.CBufRet.f32 %8926, 3
  %9045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9046 = extractvalue %dx.types.CBufRet.f32 %9045, 0
  %9047 = extractvalue %dx.types.CBufRet.f32 %9045, 1
  %9048 = extractvalue %dx.types.CBufRet.f32 %9045, 2
  %9049 = extractvalue %dx.types.CBufRet.f32 %9045, 3
  %9050 = fsub fast float %9046, %9038
  %9051 = fsub fast float %9047, %9039
  %9052 = fsub fast float %9048, %9040
  %9053 = fsub fast float %9049, %9041
  %9054 = fmul fast float %9050, %9044
  %9055 = fmul fast float %9051, %9044
  %9056 = fmul fast float %9052, %9044
  %9057 = fmul fast float %9053, %9044
  %9058 = fadd fast float %9054, %9038
  %9059 = fadd fast float %9055, %9039
  %9060 = fsub fast float -0.000000e+00, %9059
  %9061 = fadd fast float %9056, %9040
  %9062 = fadd fast float %9057, %9041
  %9063 = fmul fast float %9058, %9058
  %9064 = fsub fast float %9059, %9063
  %9065 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9064)  ; FMax(a,b)
  %9066 = fdiv fast float 1.000000e+00, %9065
  %9067 = fmul fast float %9059, %9058
  %9068 = fsub fast float %9061, %9067
  %9069 = fsub fast float %9018, %9058
  %9070 = fmul fast float %9018, %9018
  %9071 = fsub fast float %9070, %9059
  %9072 = fmul fast float %9069, %9066
  %9073 = fmul fast float %9072, %9068
  %9074 = fsub fast float %9071, %9073
  %9075 = fmul fast float %9059, %9059
  %9076 = fsub fast float %9062, %9075
  %9077 = fmul fast float %9068, %9068
  %9078 = fmul fast float %9077, %9066
  %9079 = fsub fast float %9076, %9078
  %9080 = fdiv fast float %9074, %9079
  %9081 = fmul fast float %9068, %9080
  %9082 = fsub fast float %9069, %9081
  %9083 = fmul fast float %9082, %9066
  %9084 = fmul fast float %9083, %9058
  %9085 = fsub fast float 1.000000e+00, %9084
  %9086 = fmul fast float %9059, %9080
  %9087 = fsub fast float %9085, %9086
  %9088 = fmul fast float %9083, %9083
  %9089 = fmul fast float %9080, 4.000000e+00
  %9090 = fmul fast float %9089, %9087
  %9091 = fsub fast float %9088, %9090
  %9092 = call float @dx.op.unary.f32(i32 24, float %9091)  ; Sqrt(value)
  %9093 = fcmp fast oge float %9083, 0.000000e+00
  %9094 = fsub fast float -0.000000e+00, %9092
  %9095 = select i1 %9093, float %9094, float %9092
  %9096 = fsub fast float %9095, %9083
  %9097 = fdiv fast float %9096, %9080
  %9098 = fdiv fast float %9087, %9096
  %9099 = fmul fast float %9097, 5.000000e-01
  %9100 = fmul fast float %9098, 2.000000e+00
  %9101 = select i1 %9093, float %9099, float %9100
  %9102 = select i1 %9093, float %9100, float %9099
  %9103 = call float @dx.op.binary.f32(i32 35, float %9101, float %9102)  ; FMax(a,b)
  %9104 = call float @dx.op.binary.f32(i32 36, float %9101, float %9102)  ; FMin(a,b)
  %9105 = fcmp fast ogt float %9018, %9104
  br i1 %9105, label %9106, label %9116

; <label>:9106                                    ; preds = %9043
  %9107 = fsub fast float %9018, %9104
  %9108 = fsub fast float %9103, %9104
  %9109 = fmul fast float %9107, %9108
  %9110 = fmul fast float %9103, %9018
  %9111 = fadd fast float %9103, %9018
  %9112 = fmul fast float %9111, %9058
  %9113 = fadd fast float %9110, %9059
  %9114 = fsub fast float %9113, %9112
  %9115 = fdiv fast float %9114, %9109
  br label %9116

; <label>:9116                                    ; preds = %9106, %9043
  %9117 = phi float [ %9115, %9106 ], [ 0.000000e+00, %9043 ]
  %9118 = fcmp fast ogt float %9018, %9103
  %9119 = fsub fast float %9018, %9103
  br i1 %9118, label %9120, label %9130

; <label>:9120                                    ; preds = %9116
  %9121 = fsub fast float %9103, %9104
  %9122 = fmul fast float %9121, %9119
  %9123 = fmul fast float %9104, %9018
  %9124 = fadd fast float %9104, %9018
  %9125 = fmul fast float %9124, %9058
  %9126 = fsub fast float %9060, %9123
  %9127 = fadd fast float %9126, %9125
  %9128 = fdiv fast float %9127, %9122
  %9129 = fadd fast float %9128, %9117
  br label %9130

; <label>:9130                                    ; preds = %9120, %9116
  %9131 = phi float [ %9129, %9120 ], [ %9117, %9116 ]
  %9132 = fsub fast float %9018, %9104
  %9133 = fmul fast float %9132, %9119
  %9134 = fmul fast float %9104, %9103
  %9135 = fadd fast float %9104, %9103
  %9136 = fmul fast float %9135, %9058
  %9137 = fadd fast float %9134, %9059
  %9138 = fsub fast float %9137, %9136
  %9139 = fdiv fast float %9138, %9133
  %9140 = call float @dx.op.unary.f32(i32 7, float %9131)  ; Saturate(value)
  %9141 = fcmp fast oeq float %7800, 0.000000e+00
  %9142 = extractvalue %dx.types.CBufRet.f32 %8926, 0
  %9143 = fcmp fast oeq float %9142, 0.000000e+00
  %9144 = or i1 %9141, %9143
  %9145 = fmul fast float %9142, 2.000000e+00
  %9146 = fadd fast float %8927, %8928
  %9147 = fdiv fast float %9146, %9145
  %9148 = call float @dx.op.unary.f32(i32 7, float %9147)  ; Saturate(value)
  %9149 = fmul fast float %9148, 2.000000e+00
  %9150 = fsub fast float 3.000000e+00, %9149
  %9151 = fmul fast float %9148, %9148
  %9152 = fmul fast float %9151, %9150
  %9153 = select i1 %9144, float 1.000000e+00, float %9152
  %9154 = fmul fast float %9139, %7800
  %9155 = fadd fast float %9140, %9154
  %9156 = call float @dx.op.unary.f32(i32 7, float %9155)  ; Saturate(value)
  %9157 = fmul fast float %9153, %9156
  br label %9158

; <label>:9158                                    ; preds = %9130, %9010
  %9159 = phi float [ %9157, %9130 ], [ 0.000000e+00, %9010 ]
  %9160 = fsub fast float 1.000000e+00, %9159
  %9161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %51, float %8880, float %8881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9162 = extractvalue %dx.types.ResRet.f32 %9161, 0
  %9163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9164 = extractvalue %dx.types.CBufRet.i32 %9163, 2
  %9165 = icmp eq i32 %9164, 0
  br i1 %9165, label %9171, label %9166

; <label>:9166                                    ; preds = %9158
  %9167 = call float @dx.op.unary.f32(i32 7, float %9159)  ; Saturate(value)
  %9168 = fadd fast float %9162, -1.000000e+00
  %9169 = fmul fast float %9167, %9168
  %9170 = fadd fast float %9169, 1.000000e+00
  br label %9171

; <label>:9171                                    ; preds = %9166, %9158
  %9172 = phi float [ %9170, %9166 ], [ %9160, %9158 ]
  br i1 %8934, label %9173, label %9191

; <label>:9173                                    ; preds = %9171
  %9174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9175 = extractvalue %dx.types.CBufRet.f32 %9174, 1
  %9176 = fsub fast float %9011, %9175
  %9177 = call float @dx.op.unary.f32(i32 7, float %9176)  ; Saturate(value)
  %9178 = fsub fast float %9011, %8933
  %9179 = call float @dx.op.unary.f32(i32 7, float %9178)  ; Saturate(value)
  %9180 = fsub fast float %9177, %9179
  %9181 = fsub fast float %9013, %9179
  %9182 = fdiv fast float %9181, %9180
  %9183 = call float @dx.op.unary.f32(i32 7, float %9182)  ; Saturate(value)
  %9184 = fmul fast float %9183, 2.000000e+00
  %9185 = fsub fast float 3.000000e+00, %9184
  %9186 = fsub fast float %9162, %9172
  %9187 = fmul fast float %9183, %9183
  %9188 = fmul fast float %9187, %9186
  %9189 = fmul fast float %9188, %9185
  %9190 = fadd fast float %9189, %9172
  br label %9191

; <label>:9191                                    ; preds = %9173, %9171
  %9192 = phi float [ %9190, %9173 ], [ %9172, %9171 ]
  %9193 = call float @dx.op.binary.f32(i32 35, float %9162, float %9192)  ; FMax(a,b)
  %9194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9195 = extractvalue %dx.types.CBufRet.i32 %9194, 2
  %9196 = and i32 %9195, 1
  %9197 = icmp eq i32 %9196, 0
  %9198 = fcmp fast une float %9193, 1.000000e+00
  %9199 = and i1 %9198, %9197
  br i1 %9199, label %9200, label %9219

; <label>:9200                                    ; preds = %9191
  %9201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %51, float %8880, float %8881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9202 = extractvalue %dx.types.ResRet.f32 %9201, 0
  %9203 = extractvalue %dx.types.ResRet.f32 %9201, 1
  %9204 = extractvalue %dx.types.ResRet.f32 %9201, 2
  %9205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9206 = extractvalue %dx.types.CBufRet.f32 %9205, 1
  %9207 = fmul fast float %9206, %9202
  %9208 = fmul fast float %9206, %9203
  %9209 = fmul fast float %9206, %9204
  %9210 = fcmp fast ogt float %9162, 0x3FEFFF2E40000000
  %9211 = fsub fast float 1.000000e+00, %9193
  %9212 = fsub fast float 1.000000e+00, %9162
  %9213 = fdiv fast float %9211, %9212
  %9214 = call float @dx.op.unary.f32(i32 7, float %9213)  ; Saturate(value)
  %9215 = select i1 %9210, float 0.000000e+00, float %9214
  %9216 = fmul fast float %9207, %9215
  %9217 = fmul fast float %9208, %9215
  %9218 = fmul fast float %9209, %9215
  br label %9219

; <label>:9219                                    ; preds = %9200, %9191
  %9220 = phi float [ 0.000000e+00, %9191 ], [ %9216, %9200 ]
  %9221 = phi float [ 0.000000e+00, %9191 ], [ %9217, %9200 ]
  %9222 = phi float [ 0.000000e+00, %9191 ], [ %9218, %9200 ]
  %9223 = fmul fast float %9220, %7806
  %9224 = fmul fast float %9221, %7806
  %9225 = fmul fast float %9222, %7806
  %9226 = fmul fast float %9193, %8855
  %9227 = call float @dx.op.dot3.f32(i32 55, float %9193, float %9193, float %9193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9228 = call float @dx.op.dot3.f32(i32 55, float %9223, float %9224, float %9225, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9229 = select i1 %273, float %9227, float %9193
  %9230 = select i1 %273, float 1.000000e+00, float %9193
  %9231 = select i1 %273, float %9228, float %9223
  %9232 = select i1 %273, float 0.000000e+00, float %9224
  %9233 = select i1 %273, float 0.000000e+00, float %9225
  %9234 = fmul fast float %9229, %8867
  %9235 = fmul fast float %9229, %8868
  %9236 = fmul fast float %9230, %8869
  %9237 = fadd fast float %9234, %9231
  %9238 = fadd fast float %9235, %9232
  %9239 = fadd fast float %9233, %9236
  %9240 = fmul fast float %9229, %8870
  %9241 = fmul fast float %9229, %8871
  %9242 = fmul fast float %9230, %8872
  br label %9243

; <label>:9243                                    ; preds = %9219, %8876, %8845, %8077
  %9244 = phi float [ %8082, %8077 ], [ %8867, %8845 ], [ %9237, %9219 ], [ %8867, %8876 ]
  %9245 = phi float [ %8083, %8077 ], [ %8868, %8845 ], [ %9238, %9219 ], [ %8868, %8876 ]
  %9246 = phi float [ %8084, %8077 ], [ %8869, %8845 ], [ %9239, %9219 ], [ %8869, %8876 ]
  %9247 = phi float [ %8085, %8077 ], [ %8870, %8845 ], [ %9240, %9219 ], [ %8870, %8876 ]
  %9248 = phi float [ %8086, %8077 ], [ %8871, %8845 ], [ %9241, %9219 ], [ %8871, %8876 ]
  %9249 = phi float [ %8087, %8077 ], [ %8872, %8845 ], [ %9242, %9219 ], [ %8872, %8876 ]
  %9250 = phi float [ %8088, %8077 ], [ %8855, %8845 ], [ %9226, %9219 ], [ %8855, %8876 ]
  %9251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9252 = extractvalue %dx.types.CBufRet.f32 %9251, 2
  %9253 = extractvalue %dx.types.CBufRet.f32 %9251, 3
  %9254 = fmul fast float %9252, %114
  %9255 = fmul fast float %9253, %115
  %9256 = call float @dx.op.unary.f32(i32 7, float %9254)  ; Saturate(value)
  %9257 = call float @dx.op.unary.f32(i32 7, float %9255)  ; Saturate(value)
  %9258 = select i1 %7819, i32 2, i32 0
  %9259 = or i32 %9258, 1
  %9260 = uitofp i32 %9259 to float
  %9261 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %9256, float %9257, float %9260, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9262 = extractvalue %dx.types.ResRet.f32 %9261, 0
  %9263 = extractvalue %dx.types.ResRet.f32 %9261, 1
  %9264 = extractvalue %dx.types.ResRet.f32 %9261, 2
  %9265 = extractvalue %dx.types.ResRet.f32 %9261, 3
  %9266 = add nuw nsw i32 %9258, 2
  %9267 = uitofp i32 %9266 to float
  %9268 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %9256, float %9257, float %9267, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9269 = extractvalue %dx.types.ResRet.f32 %9268, 0
  %9270 = extractvalue %dx.types.ResRet.f32 %9268, 1
  %9271 = extractvalue %dx.types.ResRet.f32 %9268, 2
  %9272 = extractvalue %dx.types.ResRet.f32 %9268, 3
  %9273 = call float @dx.op.binary.f32(i32 35, float %9263, float %9264)  ; FMax(a,b)
  %9274 = call float @dx.op.binary.f32(i32 35, float %9262, float %9273)  ; FMax(a,b)
  %9275 = call float @dx.op.binary.f32(i32 35, float %9274, float %9265)  ; FMax(a,b)
  %9276 = call float @dx.op.binary.f32(i32 36, float %9270, float %9271)  ; FMin(a,b)
  %9277 = call float @dx.op.binary.f32(i32 36, float %9269, float %9276)  ; FMin(a,b)
  %9278 = call float @dx.op.binary.f32(i32 36, float %9277, float %9272)  ; FMin(a,b)
  %9279 = fmul fast float %9275, 2.550000e+02
  %9280 = fadd fast float %9279, 0x3F70101020000000
  %9281 = fptoui float %9280 to i32
  %9282 = fmul fast float %9278, 2.550000e+02
  %9283 = fadd fast float %9282, 0x3F70101020000000
  %9284 = fptoui float %9283 to i32
  %9285 = icmp ult i32 %9281, %9284
  br i1 %9285, label %9286, label %9455

; <label>:9286                                    ; preds = %9243
  %9287 = fcmp fast ogt float %100, 9.843750e-01
  %9288 = fadd fast float %8081, -4.000000e+00
  %9289 = select i1 %9287, float -4.000000e+00, float %9288
  %9290 = call float @dx.op.binary.f32(i32 35, float %9289, float 0.000000e+00)  ; FMax(a,b)
  %9291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9292 = extractvalue %dx.types.CBufRet.f32 %9291, 0
  %9293 = fadd fast float %9292, %9290
  %9294 = extractvalue %dx.types.CBufRet.f32 %9291, 2
  %9295 = fmul fast float %9293, %9294
  %9296 = call float @dx.op.unary.f32(i32 23, float %9295)  ; Log(value)
  %9297 = extractvalue %dx.types.CBufRet.f32 %9291, 3
  %9298 = fmul fast float %9297, %9296
  %9299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9300 = extractvalue %dx.types.CBufRet.f32 %9299, 2
  %9301 = fmul fast float %9298, %9300
  %9302 = call float @dx.op.unary.f32(i32 7, float %9301)  ; Saturate(value)
  %9303 = uitofp i32 %9281 to float
  %9304 = uitofp i32 %9284 to float
  %9305 = fadd fast float %9303, 5.000000e-01
  %9306 = fadd fast float %9304, 5.000000e-01
  %9307 = fmul fast float %9300, %9305
  %9308 = fmul fast float %9300, %9306
  %9309 = fadd fast float %9307, 0x3F0FFB4800000000
  %9310 = fadd fast float %9308, 0xBF0FFB4800000000
  %9311 = call float @dx.op.binary.f32(i32 35, float %9302, float %9309)  ; FMax(a,b)
  %9312 = call float @dx.op.binary.f32(i32 36, float %9311, float %9310)  ; FMin(a,b)
  %9313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.f32 %9313, 1
  %9315 = extractvalue %dx.types.CBufRet.f32 %9313, 2
  %9316 = extractvalue %dx.types.CBufRet.f32 %9313, 0
  %9317 = select i1 %7819, float %9316, float 0.000000e+00
  %9318 = fmul fast float %9314, %9312
  %9319 = fadd fast float %9317, %9318
  %9320 = fadd fast float %9317, %9315
  %9321 = fsub fast float %9314, %9315
  %9322 = fadd fast float %9321, %9317
  %9323 = call float @dx.op.binary.f32(i32 35, float %9319, float %9320)  ; FMax(a,b)
  %9324 = call float @dx.op.binary.f32(i32 36, float %9323, float %9322)  ; FMin(a,b)
  %9325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %49, float %9256, float %9257, float %9324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9326 = extractvalue %dx.types.ResRet.f32 %9325, 0
  %9327 = extractvalue %dx.types.ResRet.f32 %9325, 1
  %9328 = extractvalue %dx.types.ResRet.f32 %9325, 2
  %9329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9330 = extractvalue %dx.types.CBufRet.i32 %9329, 0
  %9331 = extractvalue %dx.types.CBufRet.i32 %9329, 1
  %9332 = uitofp i32 %9330 to float
  %9333 = uitofp i32 %9331 to float
  %9334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9335 = extractvalue %dx.types.CBufRet.f32 %9334, 0
  %9336 = extractvalue %dx.types.CBufRet.f32 %9334, 1
  %9337 = fmul fast float %9332, %9256
  %9338 = fmul fast float %9333, %9257
  %9339 = fadd fast float %9337, -5.000000e-01
  %9340 = fadd fast float %9338, -5.000000e-01
  %9341 = call float @dx.op.unary.f32(i32 22, float %9339)  ; Frc(value)
  %9342 = call float @dx.op.unary.f32(i32 22, float %9340)  ; Frc(value)
  %9343 = fmul fast float %9341, %9341
  %9344 = fmul fast float %9343, %9341
  %9345 = fsub fast float 3.000000e+00, %9341
  %9346 = fmul fast float %9343, %9345
  %9347 = fmul fast float %9341, 3.000000e+00
  %9348 = fmul fast float %9344, 3.000000e+00
  %9349 = fmul fast float %9343, 6.000000e+00
  %9350 = fsub fast float %9348, %9349
  %9351 = fadd fast float %9350, 4.000000e+00
  %9352 = fmul fast float %9351, 0x3FC5555560000000
  %9353 = fmul fast float %9344, -3.000000e+00
  %9354 = fadd fast float %9343, %9341
  %9355 = fmul fast float %9354, 3.000000e+00
  %9356 = fadd fast float %9353, 1.000000e+00
  %9357 = fadd fast float %9356, %9355
  %9358 = fmul fast float %9344, 0x3FC5555560000000
  %9359 = fmul fast float %9342, %9342
  %9360 = fmul fast float %9359, %9342
  %9361 = fsub fast float 3.000000e+00, %9342
  %9362 = fmul fast float %9359, %9361
  %9363 = fmul fast float %9342, 3.000000e+00
  %9364 = fmul fast float %9360, 3.000000e+00
  %9365 = fmul fast float %9359, 6.000000e+00
  %9366 = fsub fast float %9364, %9365
  %9367 = fadd fast float %9366, 4.000000e+00
  %9368 = fmul fast float %9367, 0x3FC5555560000000
  %9369 = fmul fast float %9360, -3.000000e+00
  %9370 = fadd fast float %9359, %9342
  %9371 = fmul fast float %9370, 3.000000e+00
  %9372 = fadd fast float %9369, 1.000000e+00
  %9373 = fadd fast float %9372, %9371
  %9374 = fmul fast float %9360, 0x3FC5555560000000
  %9375 = fadd fast float %9341, 1.000000e+00
  %9376 = fsub fast float 1.000000e+00, %9347
  %9377 = fadd fast float %9376, %9346
  %9378 = fadd fast float %9377, %9351
  %9379 = fmul fast float %9378, 0x3FC5555560000000
  %9380 = fdiv fast float %9352, %9379
  %9381 = fsub fast float %9375, %9380
  %9382 = fsub fast float 1.000000e+00, %9341
  %9383 = fadd fast float %9357, %9344
  %9384 = fmul fast float %9383, 0x3FC5555560000000
  %9385 = fdiv fast float %9358, %9384
  %9386 = fadd fast float %9382, %9385
  %9387 = fadd fast float %9342, 1.000000e+00
  %9388 = fsub fast float 1.000000e+00, %9363
  %9389 = fadd fast float %9388, %9362
  %9390 = fadd fast float %9389, %9367
  %9391 = fmul fast float %9390, 0x3FC5555560000000
  %9392 = fdiv fast float %9368, %9391
  %9393 = fsub fast float %9387, %9392
  %9394 = fsub fast float 1.000000e+00, %9342
  %9395 = fadd fast float %9373, %9360
  %9396 = fmul fast float %9395, 0x3FC5555560000000
  %9397 = fdiv fast float %9374, %9396
  %9398 = fadd fast float %9397, %9394
  %9399 = fmul fast float %9381, %9335
  %9400 = fsub fast float %9256, %9399
  %9401 = fmul fast float %9386, %9335
  %9402 = fadd fast float %9401, %9256
  %9403 = fmul fast float %9398, %9336
  %9404 = fadd fast float %9403, %9257
  %9405 = fmul fast float %9393, %9336
  %9406 = fsub fast float %9257, %9405
  %9407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9400, float %9406, float %9324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9408 = extractvalue %dx.types.ResRet.f32 %9407, 0
  %9409 = extractvalue %dx.types.ResRet.f32 %9407, 1
  %9410 = extractvalue %dx.types.ResRet.f32 %9407, 2
  %9411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9402, float %9406, float %9324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9412 = extractvalue %dx.types.ResRet.f32 %9411, 0
  %9413 = extractvalue %dx.types.ResRet.f32 %9411, 1
  %9414 = extractvalue %dx.types.ResRet.f32 %9411, 2
  %9415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9400, float %9404, float %9324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9416 = extractvalue %dx.types.ResRet.f32 %9415, 0
  %9417 = extractvalue %dx.types.ResRet.f32 %9415, 1
  %9418 = extractvalue %dx.types.ResRet.f32 %9415, 2
  %9419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9402, float %9404, float %9324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9420 = extractvalue %dx.types.ResRet.f32 %9419, 0
  %9421 = extractvalue %dx.types.ResRet.f32 %9419, 1
  %9422 = extractvalue %dx.types.ResRet.f32 %9419, 2
  %9423 = fsub fast float %9416, %9408
  %9424 = fsub fast float %9417, %9409
  %9425 = fsub fast float %9418, %9410
  %9426 = fmul fast float %9423, %9396
  %9427 = fmul fast float %9424, %9396
  %9428 = fmul fast float %9425, %9396
  %9429 = fadd fast float %9426, %9408
  %9430 = fadd fast float %9427, %9409
  %9431 = fadd fast float %9428, %9410
  %9432 = fsub fast float %9420, %9412
  %9433 = fsub fast float %9421, %9413
  %9434 = fsub fast float %9422, %9414
  %9435 = fmul fast float %9432, %9396
  %9436 = fmul fast float %9433, %9396
  %9437 = fmul fast float %9434, %9396
  %9438 = fsub fast float %9412, %9429
  %9439 = fadd fast float %9438, %9435
  %9440 = fsub fast float %9413, %9430
  %9441 = fadd fast float %9440, %9436
  %9442 = fsub fast float %9414, %9431
  %9443 = fadd fast float %9442, %9437
  %9444 = fmul fast float %9439, %9384
  %9445 = fmul fast float %9441, %9384
  %9446 = fmul fast float %9443, %9384
  %9447 = fadd fast float %9444, %9429
  %9448 = fadd fast float %9445, %9430
  %9449 = fadd fast float %9446, %9431
  %9450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9451 = extractvalue %dx.types.CBufRet.f32 %9450, 1
  %9452 = fmul fast float %9447, %9451
  %9453 = fmul fast float %9448, %9451
  %9454 = fmul fast float %9449, %9451
  br label %9455

; <label>:9455                                    ; preds = %9286, %9243
  %9456 = phi float [ %9326, %9286 ], [ 1.000000e+00, %9243 ]
  %9457 = phi float [ %9327, %9286 ], [ 1.000000e+00, %9243 ]
  %9458 = phi float [ %9328, %9286 ], [ 1.000000e+00, %9243 ]
  %9459 = phi float [ %9452, %9286 ], [ 0.000000e+00, %9243 ]
  %9460 = phi float [ %9453, %9286 ], [ 0.000000e+00, %9243 ]
  %9461 = phi float [ %9454, %9286 ], [ 0.000000e+00, %9243 ]
  %9462 = fmul fast float %9459, %7806
  %9463 = fmul fast float %9460, %7806
  %9464 = fmul fast float %9461, %7806
  %9465 = fmul fast float %9456, %9250
  %9466 = call float @dx.op.dot3.f32(i32 55, float %9456, float %9457, float %9458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9467 = call float @dx.op.dot3.f32(i32 55, float %9462, float %9463, float %9464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9468 = select i1 %273, float %9466, float %9456
  %9469 = select i1 %273, float %9466, float %9457
  %9470 = select i1 %273, float 1.000000e+00, float %9458
  %9471 = select i1 %273, float %9467, float %9462
  %9472 = select i1 %273, float 0.000000e+00, float %9463
  %9473 = select i1 %273, float 0.000000e+00, float %9464
  %9474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9475 = extractvalue %dx.types.CBufRet.i32 %9474, 3
  %9476 = and i32 %9475, 3
  %9477 = icmp ne i32 %9476, 0
  %9478 = and i32 %9475, 4
  %9479 = icmp ne i32 %9478, 0
  %9480 = and i1 %9477, %9479
  %9481 = and i1 %273, %9480
  br i1 %9481, label %9482, label %9488

; <label>:9482                                    ; preds = %9455
  %9483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9484 = extractvalue %dx.types.CBufRet.f32 %9483, 1
  %9485 = fadd fast float %9465, -1.000000e+00
  %9486 = fmul fast float %9484, %9485
  %9487 = fadd fast float %9486, 1.000000e+00
  br label %9488

; <label>:9488                                    ; preds = %9482, %9455
  %9489 = phi float [ %9487, %9482 ], [ %9465, %9455 ]
  %9490 = fadd fast float %9247, %9244
  %9491 = fmul fast float %9468, %9490
  %9492 = fadd fast float %9491, %9471
  %9493 = fadd fast float %9248, %9245
  %9494 = fmul fast float %9469, %9493
  %9495 = fadd fast float %9494, %9472
  %9496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9497 = extractvalue %dx.types.CBufRet.f32 %9496, 0
  br i1 %273, label %9498, label %9521

; <label>:9498                                    ; preds = %9488
  %9499 = fadd fast float %9492, %9495
  %9500 = fmul fast float %9497, %9499
  %9501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9502 = extractvalue %dx.types.CBufRet.f32 %9501, 3
  %9503 = extractvalue %dx.types.CBufRet.f32 %7792, 1
  %9504 = fsub fast float %7797, %7791
  %9505 = fadd fast float %9504, %7798
  %9506 = fsub fast float %9505, %9503
  %9507 = extractvalue %dx.types.CBufRet.f32 %7792, 2
  %9508 = fmul fast float %9506, %9507
  %9509 = call float @dx.op.unary.f32(i32 7, float %9508)  ; Saturate(value)
  %9510 = fsub fast float %9509, %9502
  %9511 = fmul fast float %9510, %9489
  %9512 = fadd fast float %9511, %9502
  %9513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9514 = extractvalue %dx.types.CBufRet.f32 %9513, 0
  %9515 = fsub fast float %9512, %9514
  %9516 = fmul fast float %9515, 1.000000e+01
  %9517 = call float @dx.op.unary.f32(i32 7, float %9516)  ; Saturate(value)
  %9518 = fmul fast float %9517, %7806
  %9519 = fsub fast float %7806, %9518
  %9520 = fmul fast float %9519, %9512
  br label %9545

; <label>:9521                                    ; preds = %9488
  %9522 = fadd fast float %9249, %9246
  %9523 = fmul fast float %9470, %9522
  %9524 = fadd fast float %9523, %9473
  %9525 = fmul fast float %9497, %9492
  %9526 = fmul fast float %9497, %9495
  %9527 = fmul fast float %9497, %9524
  %9528 = call float @dx.op.binary.f32(i32 35, float %9526, float %9527)  ; FMax(a,b)
  %9529 = call float @dx.op.binary.f32(i32 35, float %9525, float %9528)  ; FMax(a,b)
  %9530 = call float @dx.op.binary.f32(i32 35, float %9529, float %7806)  ; FMax(a,b)
  %9531 = fcmp fast ugt float %9530, 0x3F10000000000000
  br i1 %9531, label %9533, label %9532

; <label>:9532                                    ; preds = %9521
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9533

; <label>:9533                                    ; preds = %9532, %9521
  %9534 = add i32 %57, 356
  %9535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %9534, i32 undef)  ; BufferLoad(srv,index,wot)
  %9536 = extractvalue %dx.types.ResRet.i32 %9535, 0
  %9537 = and i32 %9536, 32
  %9538 = icmp eq i32 %9537, 0
  br i1 %9538, label %9545, label %9539

; <label>:9539                                    ; preds = %9533
  %9540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9541 = extractvalue %dx.types.CBufRet.f32 %9540, 0
  %9542 = fmul fast float %9541, 0x3FE99999A0000000
  %9543 = fadd fast float %9541, %9525
  %9544 = fadd fast float %9542, %9527
  br label %9545

; <label>:9545                                    ; preds = %9539, %9533, %9498
  %9546 = phi float [ %9500, %9498 ], [ %9543, %9539 ], [ %9525, %9533 ]
  %9547 = phi float [ %9520, %9498 ], [ %9526, %9539 ], [ %9526, %9533 ]
  %9548 = phi float [ %9519, %9498 ], [ %9544, %9539 ], [ %9527, %9533 ]
  %9549 = phi float [ %9519, %9498 ], [ %7806, %9539 ], [ %7806, %9533 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9550 = call float @dx.op.binary.f32(i32 36, float %9546, float 3.225500e+04)  ; FMin(a,b)
  %9551 = call float @dx.op.binary.f32(i32 36, float %9547, float 3.225500e+04)  ; FMin(a,b)
  %9552 = call float @dx.op.binary.f32(i32 36, float %9548, float 3.225500e+04)  ; FMin(a,b)
  %9553 = call float @dx.op.binary.f32(i32 36, float %9549, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9551)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9552)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9553)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!70}
!dx.entryPoints = !{!71}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !59, !62}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
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
!59 = !{!60, !61}
!60 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!61 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!62 = !{!63, !64, !65, !66, !67, !68, !69}
!63 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!64 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!65 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!66 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!67 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!68 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!69 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!70 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!71 = !{void ()* @ps_main, !"ps_main", !72, !4, !97}
!72 = !{!73, !95, null}
!73 = !{!74, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !90, !91, !92, !93, !94}
!74 = !{i32 0, !"SV_Position", i8 9, i8 3, !75, i8 4, i32 1, i8 4, i32 0, i8 0, !76}
!75 = !{i32 0}
!76 = !{i32 3, i32 15}
!77 = !{i32 1, !"COLOR", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 1, i8 0, !76}
!78 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 2, i8 0, !79}
!79 = !{i32 3, i32 3}
!80 = !{i32 3, !"NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 3, i8 0, !81}
!81 = !{i32 3, i32 7}
!82 = !{i32 4, !"TANGENT", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 4, i8 0, !76}
!83 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 5, i8 0, !81}
!84 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 6, i8 0, !76}
!85 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !75, i8 2, i32 1, i8 1, i32 3, i8 3, !86}
!86 = !{i32 3, i32 1}
!87 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 7, i8 0, !81}
!88 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 8, i8 0, !76}
!89 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 2, i32 9, i8 0, !79}
!90 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 10, i8 0, !76}
!91 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 11, i8 0, !76}
!92 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !75, i8 1, i32 1, i8 2, i32 12, i8 0, !79}
!93 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !75, i8 1, i32 1, i8 4, i32 13, i8 0, !86}
!94 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !75, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!95 = !{!96}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
!97 = !{i32 0, i64 16}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = !{!107, !107, i64 0}
!107 = !{!"int", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !{!111, !113, !115, !117}
!111 = distinct !{!111, !112, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!112 = distinct !{!112, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!113 = distinct !{!113, !114, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!114 = distinct !{!114, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!115 = distinct !{!115, !116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!116 = distinct !{!116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!117 = distinct !{!117, !118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!118 = distinct !{!118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = !{!121, !121, i64 0}
!121 = !{!"float", !108, i64 0}
!122 = distinct !{!122, !100}
!123 = distinct !{!123, !100}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = !{!136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!136 = distinct !{!136, !137, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!137 = distinct !{!137, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!138 = distinct !{!138, !139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!139 = distinct !{!139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!140 = distinct !{!140, !139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!141 = distinct !{!141, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!142 = distinct !{!142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!143 = distinct !{!143, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!144 = distinct !{!144, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!145 = distinct !{!145, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!146 = distinct !{!146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!147 = distinct !{!147, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!148 = distinct !{!148, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!149 = distinct !{!149, !150, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!150 = distinct !{!150, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"\01?sort@@YAXAIAM00@Z: %c"}
!153 = distinct !{!153, !"\01?sort@@YAXAIAM00@Z"}
!154 = !{!155, !156, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!155 = distinct !{!155, !153, !"\01?sort@@YAXAIAM00@Z: %a"}
!156 = distinct !{!156, !153, !"\01?sort@@YAXAIAM00@Z: %b"}
!157 = !{!156}
!158 = !{!155, !152, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!159 = !{!155}
!160 = !{!156, !152, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!161 = !{!162}
!162 = distinct !{!162, !163, !"\01?sort@@YAXAIAM00@Z: %c"}
!163 = distinct !{!163, !"\01?sort@@YAXAIAM00@Z"}
!164 = !{!165, !166, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!165 = distinct !{!165, !163, !"\01?sort@@YAXAIAM00@Z: %a"}
!166 = distinct !{!166, !163, !"\01?sort@@YAXAIAM00@Z: %b"}
!167 = !{!166}
!168 = !{!165, !162, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!169 = !{!165}
!170 = !{!166, !162, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 2}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}

