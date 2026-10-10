;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         8     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        9     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy         10     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       11     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyzw
; ENTITY_IDS               0   xy         13     NONE    uint   xy  
; SV_IsFrontFace           0     z        13    FFACE    uint     z 
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: fcb0990bfbc5407752e1646e78beb85f
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; ENTITY_IDS               0        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56 }
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
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = icmp ne i32 %57, 0
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = alloca [12 x float], align 4
  %109 = alloca [12 x float], align 4
  %110 = alloca [4 x float], align 4
  %111 = alloca [4 x float], align 4
  %112 = alloca [4 x float], align 4
  %113 = alloca [4 x float], align 4
  %114 = alloca [3 x float], align 4
  %115 = alloca [3 x float], align 4
  %116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = fmul fast float %119, %104
  %121 = fmul fast float %119, %105
  %122 = select i1 %58, float 1.000000e+00, float -1.000000e+00
  %123 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %124 = bitcast float %123 to i32
  %125 = ashr i32 %124, 1
  %126 = sub nsw i32 1597250115, %125
  %127 = bitcast i32 %126 to float
  %128 = fmul fast float %95, %122
  %129 = fmul fast float %128, %127
  %130 = fmul fast float %96, %122
  %131 = fmul fast float %130, %127
  %132 = fmul fast float %97, %122
  %133 = fmul fast float %132, %127
  %134 = fmul fast float %96, %93
  %135 = fmul fast float %97, %92
  %136 = fsub fast float %134, %135
  %137 = fmul fast float %97, %91
  %138 = fmul fast float %95, %93
  %139 = fsub fast float %137, %138
  %140 = fmul fast float %95, %92
  %141 = fmul fast float %96, %91
  %142 = fsub fast float %140, %141
  %143 = fmul fast float %136, %94
  %144 = fmul fast float %139, %94
  %145 = fmul fast float %142, %94
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = fcmp fast une float %147, 0.000000e+00
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %152 = fmul fast float %120, 2.000000e+00
  %153 = fmul fast float %152, %150
  %154 = fmul fast float %121, 2.000000e+00
  %155 = fmul fast float %154, %151
  %156 = fsub fast float 1.000000e+00, %153
  %157 = fsub fast float 1.000000e+00, %155
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = select i1 %148, float %159, float %163
  %167 = select i1 %148, float %160, float %164
  %168 = select i1 %148, float %161, float %165
  %169 = fmul fast float %166, %156
  %170 = fmul fast float %167, %156
  %171 = fmul fast float %168, %156
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = select i1 %148, float %173, float %177
  %181 = select i1 %148, float %174, float %178
  %182 = select i1 %148, float %175, float %179
  %183 = fmul fast float %180, %157
  %184 = fmul fast float %181, %157
  %185 = fmul fast float %182, %157
  %186 = fadd fast float %183, %169
  %187 = fadd fast float %184, %170
  %188 = fadd fast float %185, %171
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %192 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 1
  %196 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %197 = select i1 %148, float %190, float %194
  %198 = select i1 %148, float %191, float %195
  %199 = select i1 %148, float %192, float %196
  %200 = fadd fast float %186, %197
  %201 = fadd fast float %187, %198
  %202 = fadd fast float %188, %199
  %203 = fmul fast float %200, %107
  %204 = fmul fast float %201, %107
  %205 = fmul fast float %202, %107
  %206 = shl i32 %60, 5
  %207 = add i32 %206, 4194304
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = extractvalue %dx.types.ResRet.i32 %208, 1
  %211 = extractvalue %dx.types.ResRet.i32 %208, 2
  %212 = extractvalue %dx.types.ResRet.i32 %208, 3
  %213 = add i32 %206, 4194320
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = extractvalue %dx.types.ResRet.i32 %214, 1
  %217 = bitcast i32 %215 to float
  %218 = bitcast i32 %216 to float
  %219 = fmul fast float %120, 5.000000e-01
  %220 = fmul fast float %121, 5.000000e-01
  %221 = fptosi float %219 to i32
  %222 = fptosi float %220 to i32
  %223 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = lshr i32 %224, 18
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F4C00EBA0000000
  %228 = call float @dx.op.unary.f32(i32 21, float %227)  ; Exp(value)
  %229 = fadd fast float %228, -1.000000e+00
  %230 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %231 = extractvalue %dx.types.Dimensions %230, 0
  %232 = sitofp i32 %231 to float
  %233 = extractvalue %dx.types.Dimensions %230, 1
  %234 = sitofp i32 %233 to float
  %235 = fcmp fast oge float %219, %232
  %236 = fcmp fast oge float %220, %234
  %237 = or i1 %235, %236
  %238 = select i1 %237, float 0x4197782600000000, float %229
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %242 = fmul fast float %240, %120
  %243 = fmul fast float %241, %121
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 114688
  %247 = icmp ne i32 %246, 0
  %248 = select i1 %247, float %242, float 0.000000e+00
  %249 = select i1 %247, float %243, float 0.000000e+00
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %52, float %248, float %249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = fmul fast float %251, 2.550000e+02
  %253 = fptoui float %252 to i32
  %254 = select i1 %247, i32 %253, i32 0
  %255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.i32 %255, 3
  %257 = and i32 %256, 3
  %258 = icmp ne i32 %257, 0
  %259 = and i32 %256, 4
  %260 = icmp ne i32 %259, 0
  %261 = and i1 %258, %260
  br i1 %261, label %262, label %271

; <label>:262                                     ; preds = %0
  %263 = fmul fast float %151, %121
  %264 = fmul fast float %150, %120
  %265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %51, float %264, float %263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = fsub fast float 1.000000e+00, %266
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 0
  %270 = fcmp fast olt float %267, %269
  br label %274

; <label>:271                                     ; preds = %0
  %272 = icmp eq i32 %259, 0
  %273 = and i1 %258, %272
  br label %274

; <label>:274                                     ; preds = %271, %262
  %275 = phi i1 [ %270, %262 ], [ %273, %271 ]
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 2
  %278 = fmul fast float %277, 0x3FE3C6EF40000000
  %279 = frem fast float %120, 2.560000e+02
  %280 = frem fast float %121, 2.560000e+02
  %281 = fptoui float %279 to i32
  %282 = fptoui float %280 to i32
  %283 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %281, i32 %282, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = fadd fast float %284, %278
  %286 = call float @dx.op.unary.f32(i32 22, float %285)  ; Frc(value)
  %287 = add i32 %59, 156
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = shl i32 %289, 4
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %289, 7
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %289, 22
  %297 = shl nuw nsw i32 %296, 5
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = add i32 %59, 216
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %301, 8
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = lshr i32 %301, 16
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = add i32 %59, 36
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = add i32 %59, 288
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = fmul fast float %324, 0x3F50624DE0000000
  %328 = fmul fast float %326, 0x3F50624DE0000000
  %329 = mul i32 %61, 100
  %330 = add i32 %329, 28
  %331 = add i32 %329, 40
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = add i32 %59, 172
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = shl i32 %336, 4
  %338 = and i32 %337, 32752
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %336, 7
  %341 = and i32 %340, 32752
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %336, 22
  %344 = shl nuw nsw i32 %343, 5
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %59, 232
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = lshr i32 %348, 8
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = lshr i32 %348, 16
  %357 = and i32 %356, 255
  %358 = uitofp i32 %357 to float
  %359 = fmul fast float %358, 0x3F70101020000000
  %360 = add i32 %59, 52
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %59, 304
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %369, 16
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = shl i32 %375, 4
  %377 = and i32 %376, 32752
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %375, 7
  %380 = and i32 %379, 32752
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %375, 22
  %383 = shl nuw nsw i32 %382, 5
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = and i32 %333, 1
  %386 = icmp ne i32 %385, 0
  %387 = select i1 %386, float %378, float %339
  %388 = select i1 %386, float %381, float %342
  %389 = select i1 %386, float %384, float %345
  %390 = add i32 %329, 44
  %391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = fmul fast float %392, %387
  %394 = fmul fast float %392, %388
  %395 = fmul fast float %392, %389
  %396 = add i32 %329, 48
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = shl i32 %398, 4
  %400 = and i32 %399, 32752
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %398, 7
  %403 = and i32 %402, 32752
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %398, 22
  %406 = shl nuw nsw i32 %405, 5
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = and i32 %333, 8
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %401, float %351
  %411 = select i1 %409, float %404, float %355
  %412 = select i1 %409, float %407, float %359
  %413 = add i32 %329, 52
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 65535
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = lshr i32 %415, 16
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = and i32 %333, 2
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %417, float %364
  %423 = select i1 %421, float %419, float %366
  %424 = add i32 %329, 56
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 65535
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %426, 16
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = and i32 %333, 4
  %432 = icmp ne i32 %431, 0
  %433 = select i1 %432, float %428, float %371
  %434 = fmul float %433, 0x3F50624DE0000000
  %435 = select i1 %432, float %430, float %373
  %436 = fmul float %435, 0x3F50624DE0000000
  %437 = add i32 %329, 60
  %438 = add i32 %329, 32
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = add i32 %59, 188
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = shl i32 %443, 4
  %445 = and i32 %444, 32752
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = lshr i32 %443, 7
  %448 = and i32 %447, 32752
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = lshr i32 %443, 22
  %451 = shl nuw nsw i32 %450, 5
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = add i32 %59, 248
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 255
  %457 = uitofp i32 %456 to float
  %458 = fmul fast float %457, 0x3F70101020000000
  %459 = lshr i32 %455, 8
  %460 = and i32 %459, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, 0x3F70101020000000
  %463 = lshr i32 %455, 16
  %464 = and i32 %463, 255
  %465 = uitofp i32 %464 to float
  %466 = fmul fast float %465, 0x3F70101020000000
  %467 = add i32 %59, 68
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 65535
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = lshr i32 %469, 16
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = add i32 %59, 320
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 65535
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = lshr i32 %476, 16
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = shl i32 %482, 4
  %484 = and i32 %483, 32752
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = lshr i32 %482, 7
  %487 = and i32 %486, 32752
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = lshr i32 %482, 22
  %490 = shl nuw nsw i32 %489, 5
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = and i32 %440, 1
  %493 = icmp ne i32 %492, 0
  %494 = select i1 %493, float %485, float %446
  %495 = select i1 %493, float %488, float %449
  %496 = select i1 %493, float %491, float %452
  %497 = add i32 %329, 64
  %498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = fmul fast float %499, %494
  %501 = fmul fast float %499, %495
  %502 = fmul fast float %499, %496
  %503 = add i32 %329, 68
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = shl i32 %505, 4
  %507 = and i32 %506, 32752
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = lshr i32 %505, 7
  %510 = and i32 %509, 32752
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = lshr i32 %505, 22
  %513 = shl nuw nsw i32 %512, 5
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = and i32 %440, 8
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %508, float %458
  %518 = select i1 %516, float %511, float %462
  %519 = select i1 %516, float %514, float %466
  %520 = add i32 %329, 72
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = and i32 %522, 65535
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = lshr i32 %522, 16
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = and i32 %440, 2
  %528 = icmp ne i32 %527, 0
  %529 = select i1 %528, float %524, float %471
  %530 = select i1 %528, float %526, float %473
  %531 = add i32 %329, 76
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = and i32 %533, 65535
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = lshr i32 %533, 16
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = and i32 %440, 4
  %539 = icmp ne i32 %538, 0
  %540 = select i1 %539, float %535, float %478
  %541 = fmul float %540, 0x3F50624DE0000000
  %542 = select i1 %539, float %537, float %480
  %543 = fmul float %542, 0x3F50624DE0000000
  %544 = add i32 %329, 80
  %545 = add i32 %329, 36
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = add i32 %59, 204
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = shl i32 %550, 4
  %552 = and i32 %551, 32752
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = lshr i32 %550, 7
  %555 = and i32 %554, 32752
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %550, 22
  %558 = shl nuw nsw i32 %557, 5
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = add i32 %59, 264
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 255
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = lshr i32 %562, 8
  %567 = and i32 %566, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = lshr i32 %562, 16
  %571 = and i32 %570, 255
  %572 = uitofp i32 %571 to float
  %573 = fmul fast float %572, 0x3F70101020000000
  %574 = add i32 %59, 84
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = and i32 %576, 65535
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = lshr i32 %576, 16
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = add i32 %59, 336
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = and i32 %583, 65535
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = lshr i32 %583, 16
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = shl i32 %589, 4
  %591 = and i32 %590, 32752
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %589, 7
  %594 = and i32 %593, 32752
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %589, 22
  %597 = shl nuw nsw i32 %596, 5
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = and i32 %547, 1
  %600 = icmp ne i32 %599, 0
  %601 = select i1 %600, float %592, float %553
  %602 = select i1 %600, float %595, float %556
  %603 = select i1 %600, float %598, float %559
  %604 = add i32 %329, 84
  %605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = fmul fast float %606, %601
  %608 = fmul fast float %606, %602
  %609 = fmul fast float %606, %603
  %610 = add i32 %329, 88
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = shl i32 %612, 4
  %614 = and i32 %613, 32752
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = lshr i32 %612, 7
  %617 = and i32 %616, 32752
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = lshr i32 %612, 22
  %620 = shl nuw nsw i32 %619, 5
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = and i32 %547, 8
  %623 = icmp ne i32 %622, 0
  %624 = select i1 %623, float %615, float %565
  %625 = select i1 %623, float %618, float %569
  %626 = select i1 %623, float %621, float %573
  %627 = add i32 %329, 92
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = and i32 %629, 65535
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = lshr i32 %629, 16
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = and i32 %547, 2
  %635 = icmp ne i32 %634, 0
  %636 = select i1 %635, float %631, float %578
  %637 = select i1 %635, float %633, float %580
  %638 = add i32 %329, 96
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 65535
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = lshr i32 %640, 16
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = and i32 %547, 4
  %646 = icmp ne i32 %645, 0
  %647 = select i1 %646, float %642, float %585
  %648 = fmul float %647, 0x3F50624DE0000000
  %649 = select i1 %646, float %644, float %587
  %650 = fmul float %649, 0x3F50624DE0000000
  %651 = add i32 %59, 348
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 32
  %655 = icmp eq i32 %654, 0
  %656 = and i32 %653, 64
  %657 = icmp eq i32 %656, 0
  %658 = and i32 %653, 128
  %659 = icmp eq i32 %658, 0
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = and i32 %661, 2
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %679, label %664

; <label>:664                                     ; preds = %274
  %665 = add i32 %59, 604
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = add i32 %667, 0
  %669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %668, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %670 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %669, %dx.types.Handle %117, float %98, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = extractvalue %dx.types.ResRet.f32 %670, 1
  %673 = extractvalue %dx.types.ResRet.f32 %670, 2
  %674 = extractvalue %dx.types.ResRet.f32 %670, 3
  %675 = fmul fast float %674, %100
  %676 = fmul fast float %671, %101
  %677 = fmul fast float %672, %102
  %678 = fmul fast float %673, %103
  br label %679

; <label>:679                                     ; preds = %664, %274
  %680 = phi float [ %103, %274 ], [ %678, %664 ]
  %681 = phi float [ %102, %274 ], [ %677, %664 ]
  %682 = phi float [ %101, %274 ], [ %676, %664 ]
  %683 = phi float [ %100, %274 ], [ %675, %664 ]
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 2
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %707, label %688

; <label>:688                                     ; preds = %679
  %689 = add i32 %59, 44
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 1
  %693 = icmp ne i32 %692, 0
  %694 = select i1 %693, float %682, float 1.000000e+00
  %695 = add i32 %59, 60
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 1
  %699 = icmp ne i32 %698, 0
  %700 = select i1 %699, float %681, float 1.000000e+00
  %701 = add i32 %59, 76
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 1
  %705 = icmp ne i32 %704, 0
  %706 = select i1 %705, float %680, float 1.000000e+00
  br label %707

; <label>:707                                     ; preds = %688, %679
  %708 = phi float [ %680, %679 ], [ %706, %688 ]
  %709 = phi float [ %681, %679 ], [ %700, %688 ]
  %710 = phi float [ %682, %679 ], [ %694, %688 ]
  %711 = lshr i32 %685, 20
  %712 = and i32 %711, 3
  %713 = add nuw nsw i32 %712, 1
  %714 = add i32 %59, 24
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = add i32 %59, 28
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = or i32 %719, %716
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %1256, label %722

; <label>:722                                     ; preds = %707
  %723 = and i32 %716, 262144
  %724 = icmp ne i32 %723, 0
  %725 = select i1 %724, float %66, float 1.000000e+00
  %726 = select i1 %724, float %67, float 0.000000e+00
  %727 = select i1 %724, float %68, float 0.000000e+00
  %728 = select i1 %724, float %69, float 1.000000e+00
  %729 = select i1 %724, float %70, float %98
  %730 = select i1 %724, float %71, float %99
  %731 = add i32 %59, 284
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = lshr i32 %733, 16
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = fmul fast float %735, 0x3F50624DE0000000
  %737 = add i32 %59, 88
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = lshr i32 %739, 16
  %741 = and i32 %740, 255
  %742 = lshr i32 %739, 24
  %743 = add i32 %59, 292
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = and i32 %745, 65535
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = lshr i32 %745, 16
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = add i32 %59, 32
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = lshr i32 %752, 22
  %754 = shl nuw nsw i32 %753, 5
  %755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %754)  ; LegacyF16ToF32(value)
  %756 = shl i32 %752, 4
  %757 = and i32 %756, 32752
  %758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %757)  ; LegacyF16ToF32(value)
  %759 = lshr i32 %752, 7
  %760 = and i32 %759, 32752
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 3
  %764 = fmul fast float %763, 1.000000e+03
  %765 = fmul fast float %327, %764
  %766 = call float @dx.op.unary.f32(i32 22, float %765)  ; Frc(value)
  %767 = fadd fast float %766, %317
  %768 = fmul fast float %328, %764
  %769 = call float @dx.op.unary.f32(i32 22, float %768)  ; Frc(value)
  %770 = fadd fast float %769, %319
  %771 = fmul fast float %736, %764
  %772 = call float @dx.op.unary.f32(i32 22, float %771)  ; Frc(value)
  %773 = fmul fast float %772, 0x401921FB60000000
  %774 = fadd fast float %773, %755
  %775 = call float @dx.op.unary.f32(i32 13, float %774)  ; Sin(value)
  %776 = call float @dx.op.unary.f32(i32 12, float %774)  ; Cos(value)
  %777 = fsub fast float -0.000000e+00, %775
  %778 = fadd fast float %729, -5.000000e-01
  %779 = fadd fast float %730, -5.000000e-01
  %780 = fmul fast float %747, %778
  %781 = fmul fast float %749, %779
  %782 = fadd fast float %780, 5.000000e-01
  %783 = fadd fast float %781, 5.000000e-01
  %784 = fmul fast float %758, %782
  %785 = fmul fast float %761, %783
  %786 = fmul fast float %776, %784
  %787 = call float @dx.op.tertiary.f32(i32 46, float %777, float %785, float %786)  ; FMad(a,b,c)
  %788 = fmul fast float %775, %784
  %789 = call float @dx.op.tertiary.f32(i32 46, float %776, float %785, float %788)  ; FMad(a,b,c)
  %790 = fadd fast float %767, %787
  %791 = fadd fast float %770, %789
  %792 = icmp ugt i32 %741, 1
  %793 = icmp ugt i32 %739, 33554431
  %794 = or i1 %793, %792
  br i1 %794, label %795, label %820

; <label>:795                                     ; preds = %722
  %796 = add i32 %59, 228
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = lshr i32 %798, 16
  %800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %799)  ; LegacyF16ToF32(value)
  %801 = fmul fast float %763, %800
  %802 = call float @dx.op.unary.f32(i32 22, float %801)  ; Frc(value)
  %803 = mul nuw nsw i32 %741, %742
  %804 = uitofp i32 %803 to float
  %805 = fmul fast float %802, %804
  %806 = call float @dx.op.unary.f32(i32 27, float %805)  ; Round_ni(value)
  %807 = fptoui float %806 to i32
  %808 = urem i32 %807, %741
  %809 = udiv i32 %807, %742
  %810 = call float @dx.op.unary.f32(i32 22, float %790)  ; Frc(value)
  %811 = call float @dx.op.unary.f32(i32 22, float %791)  ; Frc(value)
  %812 = uitofp i32 %808 to float
  %813 = uitofp i32 %809 to float
  %814 = fadd fast float %810, %812
  %815 = fadd fast float %811, %813
  %816 = uitofp i32 %741 to float
  %817 = uitofp i32 %742 to float
  %818 = fdiv fast float %814, %816
  %819 = fdiv fast float %815, %817
  br label %820

; <label>:820                                     ; preds = %795, %722
  %821 = phi float [ %818, %795 ], [ %790, %722 ]
  %822 = phi float [ %819, %795 ], [ %791, %722 ]
  %823 = and i32 %716, 256
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %871, label %825

; <label>:825                                     ; preds = %820
  %826 = add i32 %59, 552
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = add i32 %828, 0
  %830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %829, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %830, %dx.types.Handle %117, float %821, float %822, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = add i32 %59, 100
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = shl i32 %835, 4
  %837 = and i32 %836, 32752
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = lshr i32 %835, 7
  %840 = and i32 %839, 32752
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = fsub fast float 1.000000e+00, %683
  %843 = call float @dx.op.binary.f32(i32 35, float %842, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %844 = bitcast float %683 to i32
  %845 = sitofp i32 %844 to float
  %846 = fadd fast float %845, 0xC1CFBF8940000000
  %847 = fmul fast float %841, %846
  %848 = fadd fast float %847, 0x41CFBF8940000000
  %849 = fptosi float %848 to i32
  %850 = bitcast i32 %849 to float
  %851 = bitcast float %843 to i32
  %852 = sitofp i32 %851 to float
  %853 = fadd fast float %852, 0xC1CFBF8940000000
  %854 = fmul fast float %853, %841
  %855 = fadd fast float %854, 0x41CFBF8940000000
  %856 = fptosi float %855 to i32
  %857 = bitcast i32 %856 to float
  %858 = fmul fast float %850, %838
  %859 = fmul fast float %857, %838
  %860 = fsub fast float %843, %858
  %861 = fadd fast float %859, %843
  %862 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %863 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  %864 = fsub fast float %832, %862
  %865 = fsub fast float %863, %862
  %866 = bitcast float %865 to i32
  %867 = sub nsw i32 2129859010, %866
  %868 = bitcast i32 %867 to float
  %869 = fmul fast float %868, %864
  %870 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  br label %871

; <label>:871                                     ; preds = %825, %820
  %872 = phi float [ %870, %825 ], [ %683, %820 ]
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = and i32 %874, 128
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %893, label %877

; <label>:877                                     ; preds = %871
  %878 = add i32 %59, 536
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = add i32 %880, 0
  %882 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %881, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %883 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %882, %dx.types.Handle %117, float %821, float %822, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %884 = extractvalue %dx.types.ResRet.f32 %883, 0
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = and i32 %886, 524288
  %888 = icmp ne i32 %887, 0
  %889 = fcmp fast ogt float %884, 0x3FE0101020000000
  %890 = select i1 %889, float 1.000000e+00, float 0.000000e+00
  %891 = select i1 %888, float %890, float %884
  %892 = fmul fast float %891, %872
  br label %893

; <label>:893                                     ; preds = %877, %871
  %894 = phi float [ %892, %877 ], [ %872, %871 ]
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = and i32 %896, 16
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %1097, label %899

; <label>:899                                     ; preds = %893
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %59, 488
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = add i32 %904, 0
  %906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %907 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %906, %dx.types.Handle %116, float %821, float %822, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  %909 = extractvalue %dx.types.ResRet.f32 %907, 1
  %910 = extractvalue %dx.types.ResRet.f32 %907, 2
  %911 = extractvalue %dx.types.ResRet.f32 %907, 3
  %912 = and i32 %901, 255
  %913 = uitofp i32 %912 to float
  %914 = lshr i32 %901, 8
  %915 = and i32 %914, 255
  %916 = uitofp i32 %915 to float
  %917 = fmul fast float %911, %913
  %918 = fadd fast float %917, %916
  %919 = fmul fast float %918, 0x3F70101000000000
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = and i32 %921, 512
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %932, label %924

; <label>:924                                     ; preds = %899
  %925 = add i32 %59, 572
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = add i32 %927, 0
  %929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %930 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %929, %dx.types.Handle %117, float %821, float %822, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  br label %932

; <label>:932                                     ; preds = %924, %899
  %933 = phi float [ %931, %924 ], [ 1.000000e+00, %899 ]
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = and i32 %935, 33554432
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %1044, label %938

; <label>:938                                     ; preds = %932
  %939 = add i32 %59, 224
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = and i32 %941, 65535
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = lshr i32 %941, 16
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = add i32 %59, 228
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = and i32 %948, 65535
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = lshr i32 %952, 24
  %954 = uitofp i32 %953 to float
  %955 = fmul fast float %954, 0x3F70101020000000
  %956 = and i32 %952, 255
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = lshr i32 %952, 8
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F70101020000000
  %963 = lshr i32 %952, 16
  %964 = and i32 %963, 255
  %965 = uitofp i32 %964 to float
  %966 = fmul fast float %965, 0x3F70101020000000
  %967 = add i32 %59, 220
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = lshr i32 %969, 24
  %971 = uitofp i32 %970 to float
  %972 = fmul fast float %971, 0x3F70101020000000
  %973 = and i32 %969, 255
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %974, 0x3F70101020000000
  %976 = lshr i32 %969, 8
  %977 = and i32 %976, 255
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F70101020000000
  %980 = lshr i32 %969, 16
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %982, 0x3F70101020000000
  %984 = bitcast float %908 to i32
  %985 = ashr i32 %984, 1
  %986 = sub nsw i32 1597463174, %985
  %987 = bitcast i32 %986 to float
  %988 = fmul fast float %908, 5.000000e-01
  %989 = fmul fast float %987, %987
  %990 = fmul fast float %989, %988
  %991 = fsub fast float 1.500000e+00, %990
  %992 = fmul fast float %987, %908
  %993 = fmul fast float %992, %991
  %994 = bitcast float %909 to i32
  %995 = ashr i32 %994, 1
  %996 = sub nsw i32 1597463174, %995
  %997 = bitcast i32 %996 to float
  %998 = fmul fast float %909, 5.000000e-01
  %999 = fmul fast float %997, %997
  %1000 = fmul fast float %999, %998
  %1001 = fsub fast float 1.500000e+00, %1000
  %1002 = fmul fast float %997, %909
  %1003 = fmul fast float %1002, %1001
  %1004 = bitcast float %910 to i32
  %1005 = ashr i32 %1004, 1
  %1006 = sub nsw i32 1597463174, %1005
  %1007 = bitcast i32 %1006 to float
  %1008 = fmul fast float %910, 5.000000e-01
  %1009 = fmul fast float %1007, %1007
  %1010 = fmul fast float %1009, %1008
  %1011 = fsub fast float 1.500000e+00, %1010
  %1012 = fmul fast float %1007, %910
  %1013 = fmul fast float %1012, %1011
  %1014 = fsub fast float %993, %975
  %1015 = fsub fast float %1003, %979
  %1016 = fsub fast float %1013, %983
  %1017 = fmul fast float %1014, %943
  %1018 = fmul fast float %1015, %945
  %1019 = fmul fast float %1016, %950
  %1020 = fadd fast float %1017, %958
  %1021 = fadd fast float %1018, %962
  %1022 = fadd fast float %1019, %966
  %1023 = call float @dx.op.unary.f32(i32 7, float %1020)  ; Saturate(value)
  %1024 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  %1025 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  %1026 = fmul fast float %1023, %1023
  %1027 = fmul fast float %1024, %1024
  %1028 = fmul fast float %1025, %1025
  %1029 = fsub fast float %1026, %908
  %1030 = fsub fast float %1027, %909
  %1031 = fsub fast float %1028, %910
  %1032 = fmul fast float %1029, %933
  %1033 = fmul fast float %1030, %933
  %1034 = fmul fast float %1031, %933
  %1035 = fadd fast float %1032, %908
  %1036 = fadd fast float %1033, %909
  %1037 = fadd fast float %1034, %910
  %1038 = fadd fast float %955, %919
  %1039 = fsub fast float %1038, %972
  %1040 = call float @dx.op.unary.f32(i32 7, float %1039)  ; Saturate(value)
  %1041 = fsub fast float %1040, %919
  %1042 = fmul fast float %1041, %933
  %1043 = fadd fast float %1042, %919
  br label %1097

; <label>:1044                                    ; preds = %932
  %1045 = and i32 %935, 134217728
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1081, label %1047

; <label>:1047                                    ; preds = %1044
  %1048 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1049 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %1050 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %1051 = fadd fast float %1048, -5.000000e-01
  %1052 = fadd fast float %1049, -5.000000e-01
  %1053 = fadd fast float %1050, -5.000000e-01
  %1054 = fmul fast float %1051, %933
  %1055 = fmul fast float %1052, %933
  %1056 = fmul fast float %1053, %933
  %1057 = fadd fast float %1054, 5.000000e-01
  %1058 = fadd fast float %1055, 5.000000e-01
  %1059 = fadd fast float %1056, 5.000000e-01
  %1060 = call float @dx.op.unary.f32(i32 24, float %908)  ; Sqrt(value)
  %1061 = call float @dx.op.unary.f32(i32 24, float %909)  ; Sqrt(value)
  %1062 = call float @dx.op.unary.f32(i32 24, float %910)  ; Sqrt(value)
  %1063 = fmul fast float %1057, 2.000000e+00
  %1064 = fsub fast float 1.000000e+00, %1063
  %1065 = fmul fast float %1064, %1060
  %1066 = fadd fast float %1065, %1063
  %1067 = fmul fast float %1066, %1060
  %1068 = fmul fast float %1058, 2.000000e+00
  %1069 = fsub fast float 1.000000e+00, %1068
  %1070 = fmul fast float %1069, %1061
  %1071 = fadd fast float %1070, %1068
  %1072 = fmul fast float %1071, %1061
  %1073 = fmul fast float %1059, 2.000000e+00
  %1074 = fsub fast float 1.000000e+00, %1073
  %1075 = fmul fast float %1074, %1062
  %1076 = fadd fast float %1075, %1073
  %1077 = fmul fast float %1076, %1062
  %1078 = fmul fast float %1067, %1067
  %1079 = fmul fast float %1072, %1072
  %1080 = fmul fast float %1077, %1077
  br label %1097

; <label>:1081                                    ; preds = %1044
  %1082 = fmul fast float %304, %304
  %1083 = fmul fast float %308, %308
  %1084 = fmul fast float %312, %312
  %1085 = fadd fast float %1082, -1.000000e+00
  %1086 = fadd fast float %1083, -1.000000e+00
  %1087 = fadd fast float %1084, -1.000000e+00
  %1088 = fmul fast float %933, %1085
  %1089 = fmul fast float %933, %1086
  %1090 = fmul fast float %933, %1087
  %1091 = fadd fast float %1088, 1.000000e+00
  %1092 = fadd fast float %1089, 1.000000e+00
  %1093 = fadd fast float %1090, 1.000000e+00
  %1094 = fmul fast float %1091, %908
  %1095 = fmul fast float %1092, %909
  %1096 = fmul fast float %1093, %910
  br label %1097

; <label>:1097                                    ; preds = %1081, %1047, %938, %893
  %1098 = phi float [ %1043, %938 ], [ %919, %1047 ], [ %919, %1081 ], [ 0x3FA23C0BE0000000, %893 ]
  %1099 = phi float [ %1035, %938 ], [ %1078, %1047 ], [ %1094, %1081 ], [ 1.000000e+00, %893 ]
  %1100 = phi float [ %1036, %938 ], [ %1079, %1047 ], [ %1095, %1081 ], [ 1.000000e+00, %893 ]
  %1101 = phi float [ %1037, %938 ], [ %1080, %1047 ], [ %1096, %1081 ], [ 1.000000e+00, %893 ]
  %1102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.i32 %1102, 1
  %1104 = and i32 %1103, 1
  %1105 = icmp ne i32 %1104, 0
  %1106 = add i32 %59, 356
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 32
  %1110 = icmp ne i32 %1109, 0
  %1111 = and i1 %1105, %1110
  %1112 = select i1 %1111, float 1.000000e+00, float %1099
  %1113 = select i1 %1111, float 0x3FD3333340000000, float %1100
  %1114 = select i1 %1111, float 0x3FD3333340000000, float %1101
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = and i32 %1116, 32
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1191, label %1119

; <label>:1119                                    ; preds = %1097
  %1120 = add i32 %59, 92
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %59, 504
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = add i32 %1125, 0
  %1127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1126, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1128 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1127, %dx.types.Handle %116, float %821, float %822, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1132 = extractvalue %dx.types.ResRet.f32 %1128, 3
  %1133 = and i32 %1122, 255
  %1134 = uitofp i32 %1133 to float
  %1135 = lshr i32 %1122, 8
  %1136 = and i32 %1135, 255
  %1137 = uitofp i32 %1136 to float
  %1138 = lshr i32 %1122, 16
  %1139 = and i32 %1138, 255
  %1140 = uitofp i32 %1139 to float
  %1141 = fmul fast float %1140, 0x3F70101000000000
  %1142 = fmul fast float %1129, %1134
  %1143 = fadd fast float %1142, %1137
  %1144 = fmul fast float %1143, 0x3F70101000000000
  %1145 = fadd fast float %1130, -5.000000e-01
  %1146 = fadd fast float %1132, -5.000000e-01
  %1147 = fmul fast float %1145, %1141
  %1148 = fmul fast float %1146, %1141
  %1149 = fadd fast float %1147, 5.000000e-01
  %1150 = fadd fast float %1148, 5.000000e-01
  %1151 = fmul fast float %1149, 2.000000e+00
  %1152 = fadd fast float %1151, -1.000000e+00
  %1153 = fmul fast float %1150, 2.000000e+00
  %1154 = fadd fast float %1153, -1.000000e+00
  %1155 = fadd fast float %1152, %1154
  %1156 = fmul fast float %1155, 5.000000e-01
  %1157 = fsub fast float %1152, %1154
  %1158 = fmul fast float %1157, 5.000000e-01
  %1159 = call float @dx.op.unary.f32(i32 6, float %1156)  ; FAbs(value)
  %1160 = fsub fast float 1.000000e+00, %1159
  %1161 = call float @dx.op.unary.f32(i32 6, float %1158)  ; FAbs(value)
  %1162 = fsub fast float %1160, %1161
  %1163 = call float @dx.op.dot3.f32(i32 55, float %1156, float %1158, float %1162, float %1156, float %1158, float %1162)  ; Dot3(ax,ay,az,bx,by,bz)
  %1164 = call float @dx.op.unary.f32(i32 25, float %1163)  ; Rsqrt(value)
  %1165 = fmul fast float %1156, %1164
  %1166 = fmul fast float %1158, %1164
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 67108864
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1187, label %1171

; <label>:1171                                    ; preds = %1119
  %1172 = add i32 %59, 280
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 65535
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 65535
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = lshr i32 %1174, 16
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = fsub fast float %1144, %1182
  %1184 = fmul fast float %1183, %1176
  %1185 = fadd fast float %1184, %1180
  %1186 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  br label %1187

; <label>:1187                                    ; preds = %1171, %1119
  %1188 = phi float [ %1186, %1171 ], [ %1144, %1119 ]
  %1189 = call float @dx.op.dot2.f32(i32 54, float %1165, float %1166, float %725, float %726)  ; Dot2(ax,ay,bx,by)
  %1190 = call float @dx.op.dot2.f32(i32 54, float %1165, float %1166, float %727, float %728)  ; Dot2(ax,ay,bx,by)
  br label %1191

; <label>:1191                                    ; preds = %1187, %1097
  %1192 = phi float [ %1188, %1187 ], [ 0x3FD6666660000000, %1097 ]
  %1193 = phi float [ %1189, %1187 ], [ 0.000000e+00, %1097 ]
  %1194 = phi float [ %1190, %1187 ], [ 0.000000e+00, %1097 ]
  %1195 = phi float [ %1131, %1187 ], [ 1.000000e+00, %1097 ]
  %1196 = add i32 %59, 160
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = lshr i32 %1198, 22
  %1200 = shl nuw nsw i32 %1199, 5
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = and i32 %1203, 64
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1239, label %1206

; <label>:1206                                    ; preds = %1191
  %1207 = add i32 %59, 520
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1207, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = add i32 %1209, 0
  %1211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1210, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 131072
  %1215 = icmp eq i32 %1214, 0
  %1216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1211, %dx.types.Handle %116, float %821, float %822, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = fmul fast float %1217, %292
  %1221 = fmul fast float %1218, %295
  %1222 = fmul fast float %1219, %298
  br i1 %1215, label %1229, label %1223

; <label>:1223                                    ; preds = %1206
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1226 = fmul fast float %1225, %1220
  %1227 = fmul fast float %1225, %1221
  %1228 = fmul fast float %1225, %1222
  br label %1229

; <label>:1229                                    ; preds = %1223, %1206
  %1230 = phi float [ %1226, %1223 ], [ %1220, %1206 ]
  %1231 = phi float [ %1227, %1223 ], [ %1221, %1206 ]
  %1232 = phi float [ %1228, %1223 ], [ %1222, %1206 ]
  %1233 = fmul fast float %1230, %1201
  %1234 = select i1 %275, float %1233, float %1230
  %1235 = call float @dx.op.dot3.f32(i32 55, float %1234, float %1231, float %1232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1236 = select i1 %275, float 0.000000e+00, float %1230
  %1237 = select i1 %275, float %1235, float %1231
  %1238 = select i1 %275, float 0.000000e+00, float %1232
  br label %1239

; <label>:1239                                    ; preds = %1229, %1191
  %1240 = phi float [ %1236, %1229 ], [ 0.000000e+00, %1191 ]
  %1241 = phi float [ %1237, %1229 ], [ 0.000000e+00, %1191 ]
  %1242 = phi float [ %1238, %1229 ], [ 0.000000e+00, %1191 ]
  %1243 = add i32 %59, 96
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = and i32 %1245, 255
  %1247 = uitofp i32 %1246 to float
  %1248 = lshr i32 %1245, 8
  %1249 = and i32 %1248, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = call float @dx.op.dot3.f32(i32 55, float %1112, float %1113, float %1114, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1252 = fmul fast float %1250, %1251
  %1253 = fadd fast float %1252, %1247
  %1254 = fmul fast float %1253, 0x3F70101020000000
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  br label %1256

; <label>:1256                                    ; preds = %1239, %707
  %1257 = phi float [ 0.000000e+00, %707 ], [ %1193, %1239 ]
  %1258 = phi float [ 0.000000e+00, %707 ], [ %1194, %1239 ]
  %1259 = phi float [ 0.000000e+00, %707 ], [ %1112, %1239 ]
  %1260 = phi float [ 0.000000e+00, %707 ], [ %1113, %1239 ]
  %1261 = phi float [ 0.000000e+00, %707 ], [ %1114, %1239 ]
  %1262 = phi float [ 0.000000e+00, %707 ], [ %1240, %1239 ]
  %1263 = phi float [ 0.000000e+00, %707 ], [ %1241, %1239 ]
  %1264 = phi float [ 0.000000e+00, %707 ], [ %1242, %1239 ]
  %1265 = phi float [ 0.000000e+00, %707 ], [ %1098, %1239 ]
  %1266 = phi float [ 0.000000e+00, %707 ], [ %894, %1239 ]
  %1267 = phi float [ 0.000000e+00, %707 ], [ %1192, %1239 ]
  %1268 = phi float [ 0.000000e+00, %707 ], [ %1195, %1239 ]
  %1269 = phi float [ 0.000000e+00, %707 ], [ %1255, %1239 ]
  br i1 %655, label %1996, label %1270

; <label>:1270                                    ; preds = %1256
  %1271 = icmp ult i32 %713, 2
  %1272 = add i32 %59, 40
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = add i32 %59, 44
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = or i32 %1277, %1274
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1996, label %1280

; <label>:1280                                    ; preds = %1270
  %1281 = and i32 %1274, 262144
  %1282 = icmp ne i32 %1281, 0
  %1283 = select i1 %1282, float %66, float 1.000000e+00
  %1284 = select i1 %1282, float %67, float 0.000000e+00
  %1285 = select i1 %1282, float %68, float 0.000000e+00
  %1286 = select i1 %1282, float %69, float 1.000000e+00
  %1287 = select i1 %1282, float %70, float %98
  %1288 = select i1 %1282, float %71, float %99
  %1289 = add i32 %59, 300
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = lshr i32 %1291, 16
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = fmul fast float %1293, 0x3F50624DE0000000
  %1295 = add i32 %59, 104
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = lshr i32 %1297, 16
  %1299 = and i32 %1298, 255
  %1300 = lshr i32 %1297, 24
  %1301 = add i32 %59, 308
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = and i32 %1303, 65535
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = lshr i32 %1303, 16
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = add i32 %59, 48
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = lshr i32 %1310, 22
  %1312 = shl nuw nsw i32 %1311, 5
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = shl i32 %1310, 4
  %1315 = and i32 %1314, 32752
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = lshr i32 %1310, 7
  %1318 = and i32 %1317, 32752
  %1319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1318)  ; LegacyF16ToF32(value)
  %1320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1320, 3
  %1322 = fmul fast float %1321, 1.000000e+03
  %1323 = fmul fast float %1322, %434
  %1324 = call float @dx.op.unary.f32(i32 22, float %1323)  ; Frc(value)
  %1325 = fadd fast float %1324, %422
  %1326 = fmul fast float %1322, %436
  %1327 = call float @dx.op.unary.f32(i32 22, float %1326)  ; Frc(value)
  %1328 = fadd fast float %1327, %423
  %1329 = fmul fast float %1294, %1322
  %1330 = call float @dx.op.unary.f32(i32 22, float %1329)  ; Frc(value)
  %1331 = fmul fast float %1330, 0x401921FB60000000
  %1332 = fadd fast float %1331, %1313
  %1333 = call float @dx.op.unary.f32(i32 13, float %1332)  ; Sin(value)
  %1334 = call float @dx.op.unary.f32(i32 12, float %1332)  ; Cos(value)
  %1335 = fsub fast float -0.000000e+00, %1333
  %1336 = fadd fast float %1287, -5.000000e-01
  %1337 = fadd fast float %1288, -5.000000e-01
  %1338 = fmul fast float %1305, %1336
  %1339 = fmul fast float %1307, %1337
  %1340 = fadd fast float %1338, 5.000000e-01
  %1341 = fadd fast float %1339, 5.000000e-01
  %1342 = fmul fast float %1316, %1340
  %1343 = fmul fast float %1319, %1341
  %1344 = fmul fast float %1334, %1342
  %1345 = call float @dx.op.tertiary.f32(i32 46, float %1335, float %1343, float %1344)  ; FMad(a,b,c)
  %1346 = fmul fast float %1333, %1342
  %1347 = call float @dx.op.tertiary.f32(i32 46, float %1334, float %1343, float %1346)  ; FMad(a,b,c)
  %1348 = fadd fast float %1325, %1345
  %1349 = fadd fast float %1328, %1347
  %1350 = icmp ugt i32 %1299, 1
  %1351 = icmp ugt i32 %1297, 33554431
  %1352 = or i1 %1351, %1350
  br i1 %1352, label %1353, label %1378

; <label>:1353                                    ; preds = %1280
  %1354 = add i32 %59, 244
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = lshr i32 %1356, 16
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = fmul fast float %1321, %1358
  %1360 = call float @dx.op.unary.f32(i32 22, float %1359)  ; Frc(value)
  %1361 = mul nuw nsw i32 %1299, %1300
  %1362 = uitofp i32 %1361 to float
  %1363 = fmul fast float %1360, %1362
  %1364 = call float @dx.op.unary.f32(i32 27, float %1363)  ; Round_ni(value)
  %1365 = fptoui float %1364 to i32
  %1366 = urem i32 %1365, %1299
  %1367 = udiv i32 %1365, %1300
  %1368 = call float @dx.op.unary.f32(i32 22, float %1348)  ; Frc(value)
  %1369 = call float @dx.op.unary.f32(i32 22, float %1349)  ; Frc(value)
  %1370 = uitofp i32 %1366 to float
  %1371 = uitofp i32 %1367 to float
  %1372 = fadd fast float %1368, %1370
  %1373 = fadd fast float %1369, %1371
  %1374 = uitofp i32 %1299 to float
  %1375 = uitofp i32 %1300 to float
  %1376 = fdiv fast float %1372, %1374
  %1377 = fdiv fast float %1373, %1375
  br label %1378

; <label>:1378                                    ; preds = %1353, %1280
  %1379 = phi float [ %1376, %1353 ], [ %1348, %1280 ]
  %1380 = phi float [ %1377, %1353 ], [ %1349, %1280 ]
  %1381 = and i32 %1274, 256
  %1382 = icmp eq i32 %1381, 0
  br i1 %1382, label %1429, label %1383

; <label>:1383                                    ; preds = %1378
  %1384 = add i32 %59, 556
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = add i32 %1386, 0
  %1388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1388, %dx.types.Handle %117, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = add i32 %59, 116
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = shl i32 %1393, 4
  %1395 = and i32 %1394, 32752
  %1396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1395)  ; LegacyF16ToF32(value)
  %1397 = lshr i32 %1393, 7
  %1398 = and i32 %1397, 32752
  %1399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1398)  ; LegacyF16ToF32(value)
  %1400 = fsub fast float 1.000000e+00, %710
  %1401 = call float @dx.op.binary.f32(i32 35, float %1400, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1402 = bitcast float %710 to i32
  %1403 = sitofp i32 %1402 to float
  %1404 = fadd fast float %1403, 0xC1CFBF8940000000
  %1405 = fmul fast float %1399, %1404
  %1406 = fadd fast float %1405, 0x41CFBF8940000000
  %1407 = fptosi float %1406 to i32
  %1408 = bitcast i32 %1407 to float
  %1409 = bitcast float %1401 to i32
  %1410 = sitofp i32 %1409 to float
  %1411 = fadd fast float %1410, 0xC1CFBF8940000000
  %1412 = fmul fast float %1411, %1399
  %1413 = fadd fast float %1412, 0x41CFBF8940000000
  %1414 = fptosi float %1413 to i32
  %1415 = bitcast i32 %1414 to float
  %1416 = fmul fast float %1408, %1396
  %1417 = fmul fast float %1415, %1396
  %1418 = fsub fast float %1401, %1416
  %1419 = fadd fast float %1417, %1401
  %1420 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1421 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1422 = fsub fast float %1390, %1420
  %1423 = fsub fast float %1421, %1420
  %1424 = bitcast float %1423 to i32
  %1425 = sub nsw i32 2129859010, %1424
  %1426 = bitcast i32 %1425 to float
  %1427 = fmul fast float %1426, %1422
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  br label %1429

; <label>:1429                                    ; preds = %1383, %1378
  %1430 = phi float [ %1428, %1383 ], [ %710, %1378 ]
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = and i32 %1432, 128
  %1434 = icmp eq i32 %1433, 0
  br i1 %1434, label %1451, label %1435

; <label>:1435                                    ; preds = %1429
  %1436 = add i32 %59, 540
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = add i32 %1438, 0
  %1440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1440, %dx.types.Handle %117, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = and i32 %1444, 524288
  %1446 = icmp ne i32 %1445, 0
  %1447 = fcmp fast ogt float %1442, 0x3FE0101020000000
  %1448 = select i1 %1447, float 1.000000e+00, float 0.000000e+00
  %1449 = select i1 %1446, float %1448, float %1442
  %1450 = fmul fast float %1449, %1430
  br label %1451

; <label>:1451                                    ; preds = %1435, %1429
  %1452 = phi float [ %1450, %1435 ], [ %1430, %1429 ]
  %1453 = fcmp fast ult float %1452, 0x3F70101020000000
  br i1 %1453, label %1996, label %1454

; <label>:1454                                    ; preds = %1451
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 16
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1657, label %1459

; <label>:1459                                    ; preds = %1454
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = add i32 %59, 492
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %1464, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1466, %dx.types.Handle %116, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.ResRet.f32 %1467, 1
  %1470 = extractvalue %dx.types.ResRet.f32 %1467, 2
  %1471 = extractvalue %dx.types.ResRet.f32 %1467, 3
  %1472 = and i32 %1461, 255
  %1473 = uitofp i32 %1472 to float
  %1474 = lshr i32 %1461, 8
  %1475 = and i32 %1474, 255
  %1476 = uitofp i32 %1475 to float
  %1477 = fmul fast float %1471, %1473
  %1478 = fadd fast float %1477, %1476
  %1479 = fmul fast float %1478, 0x3F70101000000000
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = and i32 %1481, 512
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1492, label %1484

; <label>:1484                                    ; preds = %1459
  %1485 = add i32 %59, 576
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = add i32 %1487, 0
  %1489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1489, %dx.types.Handle %117, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 0
  br label %1492

; <label>:1492                                    ; preds = %1484, %1459
  %1493 = phi float [ %1491, %1484 ], [ 1.000000e+00, %1459 ]
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 33554432
  %1497 = icmp eq i32 %1496, 0
  br i1 %1497, label %1604, label %1498

; <label>:1498                                    ; preds = %1492
  %1499 = add i32 %59, 240
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1499, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = and i32 %1501, 65535
  %1503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1502)  ; LegacyF16ToF32(value)
  %1504 = lshr i32 %1501, 16
  %1505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1504)  ; LegacyF16ToF32(value)
  %1506 = add i32 %59, 244
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = and i32 %1508, 65535
  %1510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1509)  ; LegacyF16ToF32(value)
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = lshr i32 %1512, 24
  %1514 = uitofp i32 %1513 to float
  %1515 = fmul fast float %1514, 0x3F70101020000000
  %1516 = and i32 %1512, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = lshr i32 %1512, 8
  %1520 = and i32 %1519, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = lshr i32 %1512, 16
  %1524 = and i32 %1523, 255
  %1525 = uitofp i32 %1524 to float
  %1526 = fmul fast float %1525, 0x3F70101020000000
  %1527 = add i32 %59, 236
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = lshr i32 %1529, 24
  %1531 = uitofp i32 %1530 to float
  %1532 = fmul fast float %1531, 0x3F70101020000000
  %1533 = and i32 %1529, 255
  %1534 = uitofp i32 %1533 to float
  %1535 = fmul fast float %1534, 0x3F70101020000000
  %1536 = lshr i32 %1529, 8
  %1537 = and i32 %1536, 255
  %1538 = uitofp i32 %1537 to float
  %1539 = fmul fast float %1538, 0x3F70101020000000
  %1540 = lshr i32 %1529, 16
  %1541 = and i32 %1540, 255
  %1542 = uitofp i32 %1541 to float
  %1543 = fmul fast float %1542, 0x3F70101020000000
  %1544 = bitcast float %1468 to i32
  %1545 = ashr i32 %1544, 1
  %1546 = sub nsw i32 1597463174, %1545
  %1547 = bitcast i32 %1546 to float
  %1548 = fmul fast float %1468, 5.000000e-01
  %1549 = fmul fast float %1547, %1547
  %1550 = fmul fast float %1549, %1548
  %1551 = fsub fast float 1.500000e+00, %1550
  %1552 = fmul fast float %1547, %1468
  %1553 = fmul fast float %1552, %1551
  %1554 = bitcast float %1469 to i32
  %1555 = ashr i32 %1554, 1
  %1556 = sub nsw i32 1597463174, %1555
  %1557 = bitcast i32 %1556 to float
  %1558 = fmul fast float %1469, 5.000000e-01
  %1559 = fmul fast float %1557, %1557
  %1560 = fmul fast float %1559, %1558
  %1561 = fsub fast float 1.500000e+00, %1560
  %1562 = fmul fast float %1557, %1469
  %1563 = fmul fast float %1562, %1561
  %1564 = bitcast float %1470 to i32
  %1565 = ashr i32 %1564, 1
  %1566 = sub nsw i32 1597463174, %1565
  %1567 = bitcast i32 %1566 to float
  %1568 = fmul fast float %1470, 5.000000e-01
  %1569 = fmul fast float %1567, %1567
  %1570 = fmul fast float %1569, %1568
  %1571 = fsub fast float 1.500000e+00, %1570
  %1572 = fmul fast float %1567, %1470
  %1573 = fmul fast float %1572, %1571
  %1574 = fsub fast float %1553, %1535
  %1575 = fsub fast float %1563, %1539
  %1576 = fsub fast float %1573, %1543
  %1577 = fmul fast float %1574, %1503
  %1578 = fmul fast float %1575, %1505
  %1579 = fmul fast float %1576, %1510
  %1580 = fadd fast float %1577, %1518
  %1581 = fadd fast float %1578, %1522
  %1582 = fadd fast float %1579, %1526
  %1583 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1584 = call float @dx.op.unary.f32(i32 7, float %1581)  ; Saturate(value)
  %1585 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1586 = fmul fast float %1583, %1583
  %1587 = fmul fast float %1584, %1584
  %1588 = fmul fast float %1585, %1585
  %1589 = fsub fast float %1586, %1468
  %1590 = fsub fast float %1587, %1469
  %1591 = fsub fast float %1588, %1470
  %1592 = fmul fast float %1589, %1493
  %1593 = fmul fast float %1590, %1493
  %1594 = fmul fast float %1591, %1493
  %1595 = fadd fast float %1592, %1468
  %1596 = fadd fast float %1593, %1469
  %1597 = fadd fast float %1594, %1470
  %1598 = fadd fast float %1515, %1479
  %1599 = fsub fast float %1598, %1532
  %1600 = call float @dx.op.unary.f32(i32 7, float %1599)  ; Saturate(value)
  %1601 = fsub fast float %1600, %1479
  %1602 = fmul fast float %1601, %1493
  %1603 = fadd fast float %1602, %1479
  br label %1657

; <label>:1604                                    ; preds = %1492
  %1605 = and i32 %1495, 134217728
  %1606 = icmp eq i32 %1605, 0
  br i1 %1606, label %1641, label %1607

; <label>:1607                                    ; preds = %1604
  %1608 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %1609 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %1610 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %1611 = fadd fast float %1608, -5.000000e-01
  %1612 = fadd fast float %1609, -5.000000e-01
  %1613 = fadd fast float %1610, -5.000000e-01
  %1614 = fmul fast float %1611, %1493
  %1615 = fmul fast float %1612, %1493
  %1616 = fmul fast float %1613, %1493
  %1617 = fadd fast float %1614, 5.000000e-01
  %1618 = fadd fast float %1615, 5.000000e-01
  %1619 = fadd fast float %1616, 5.000000e-01
  %1620 = call float @dx.op.unary.f32(i32 24, float %1468)  ; Sqrt(value)
  %1621 = call float @dx.op.unary.f32(i32 24, float %1469)  ; Sqrt(value)
  %1622 = call float @dx.op.unary.f32(i32 24, float %1470)  ; Sqrt(value)
  %1623 = fmul fast float %1617, 2.000000e+00
  %1624 = fsub fast float 1.000000e+00, %1623
  %1625 = fmul fast float %1624, %1620
  %1626 = fadd fast float %1625, %1623
  %1627 = fmul fast float %1626, %1620
  %1628 = fmul fast float %1618, 2.000000e+00
  %1629 = fsub fast float 1.000000e+00, %1628
  %1630 = fmul fast float %1629, %1621
  %1631 = fadd fast float %1630, %1628
  %1632 = fmul fast float %1631, %1621
  %1633 = fmul fast float %1619, 2.000000e+00
  %1634 = fsub fast float 1.000000e+00, %1633
  %1635 = fmul fast float %1634, %1622
  %1636 = fadd fast float %1635, %1633
  %1637 = fmul fast float %1636, %1622
  %1638 = fmul fast float %1627, %1627
  %1639 = fmul fast float %1632, %1632
  %1640 = fmul fast float %1637, %1637
  br label %1657

; <label>:1641                                    ; preds = %1604
  %1642 = fmul fast float %410, %410
  %1643 = fmul fast float %411, %411
  %1644 = fmul fast float %412, %412
  %1645 = fadd fast float %1642, -1.000000e+00
  %1646 = fadd fast float %1643, -1.000000e+00
  %1647 = fadd fast float %1644, -1.000000e+00
  %1648 = fmul fast float %1493, %1645
  %1649 = fmul fast float %1493, %1646
  %1650 = fmul fast float %1493, %1647
  %1651 = fadd fast float %1648, 1.000000e+00
  %1652 = fadd fast float %1649, 1.000000e+00
  %1653 = fadd fast float %1650, 1.000000e+00
  %1654 = fmul fast float %1651, %1468
  %1655 = fmul fast float %1652, %1469
  %1656 = fmul fast float %1653, %1470
  br label %1657

; <label>:1657                                    ; preds = %1641, %1607, %1498, %1454
  %1658 = phi float [ %1603, %1498 ], [ %1479, %1607 ], [ %1479, %1641 ], [ 0x3FA23C0BE0000000, %1454 ]
  %1659 = phi float [ %1595, %1498 ], [ %1638, %1607 ], [ %1654, %1641 ], [ 1.000000e+00, %1454 ]
  %1660 = phi float [ %1596, %1498 ], [ %1639, %1607 ], [ %1655, %1641 ], [ 1.000000e+00, %1454 ]
  %1661 = phi float [ %1597, %1498 ], [ %1640, %1607 ], [ %1656, %1641 ], [ 1.000000e+00, %1454 ]
  %1662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.i32 %1662, 1
  %1664 = and i32 %1663, 1
  %1665 = icmp ne i32 %1664, 0
  %1666 = add i32 %59, 356
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = and i32 %1668, 32
  %1670 = icmp ne i32 %1669, 0
  %1671 = and i1 %1665, %1670
  %1672 = select i1 %1671, float 1.000000e+00, float %1659
  %1673 = select i1 %1671, float 0x3FD3333340000000, float %1660
  %1674 = select i1 %1671, float 0x3FD3333340000000, float %1661
  %1675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1676 = extractvalue %dx.types.ResRet.i32 %1675, 0
  %1677 = and i32 %1676, 32
  %1678 = icmp eq i32 %1677, 0
  br i1 %1678, label %1751, label %1679

; <label>:1679                                    ; preds = %1657
  %1680 = add i32 %59, 108
  %1681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1680, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.i32 %1681, 0
  %1683 = add i32 %59, 508
  %1684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1683, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.i32 %1684, 0
  %1686 = add i32 %1685, 0
  %1687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1687, %dx.types.Handle %116, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1689 = extractvalue %dx.types.ResRet.f32 %1688, 0
  %1690 = extractvalue %dx.types.ResRet.f32 %1688, 1
  %1691 = extractvalue %dx.types.ResRet.f32 %1688, 2
  %1692 = extractvalue %dx.types.ResRet.f32 %1688, 3
  %1693 = and i32 %1682, 255
  %1694 = uitofp i32 %1693 to float
  %1695 = lshr i32 %1682, 8
  %1696 = and i32 %1695, 255
  %1697 = uitofp i32 %1696 to float
  %1698 = lshr i32 %1682, 16
  %1699 = and i32 %1698, 255
  %1700 = uitofp i32 %1699 to float
  %1701 = fmul fast float %1700, 0x3F70101000000000
  %1702 = fmul fast float %1689, %1694
  %1703 = fadd fast float %1702, %1697
  %1704 = fmul fast float %1703, 0x3F70101000000000
  %1705 = fadd fast float %1690, -5.000000e-01
  %1706 = fadd fast float %1692, -5.000000e-01
  %1707 = fmul fast float %1705, %1701
  %1708 = fmul fast float %1706, %1701
  %1709 = fadd fast float %1707, 5.000000e-01
  %1710 = fadd fast float %1708, 5.000000e-01
  %1711 = fmul fast float %1709, 2.000000e+00
  %1712 = fadd fast float %1711, -1.000000e+00
  %1713 = fmul fast float %1710, 2.000000e+00
  %1714 = fadd fast float %1713, -1.000000e+00
  %1715 = fadd fast float %1712, %1714
  %1716 = fmul fast float %1715, 5.000000e-01
  %1717 = fsub fast float %1712, %1714
  %1718 = fmul fast float %1717, 5.000000e-01
  %1719 = call float @dx.op.unary.f32(i32 6, float %1716)  ; FAbs(value)
  %1720 = fsub fast float 1.000000e+00, %1719
  %1721 = call float @dx.op.unary.f32(i32 6, float %1718)  ; FAbs(value)
  %1722 = fsub fast float %1720, %1721
  %1723 = call float @dx.op.dot3.f32(i32 55, float %1716, float %1718, float %1722, float %1716, float %1718, float %1722)  ; Dot3(ax,ay,az,bx,by,bz)
  %1724 = call float @dx.op.unary.f32(i32 25, float %1723)  ; Rsqrt(value)
  %1725 = fmul fast float %1716, %1724
  %1726 = fmul fast float %1718, %1724
  %1727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.i32 %1727, 0
  %1729 = and i32 %1728, 67108864
  %1730 = icmp eq i32 %1729, 0
  br i1 %1730, label %1747, label %1731

; <label>:1731                                    ; preds = %1679
  %1732 = add i32 %59, 296
  %1733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = and i32 %1734, 65535
  %1736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1735)  ; LegacyF16ToF32(value)
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = and i32 %1738, 65535
  %1740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1739)  ; LegacyF16ToF32(value)
  %1741 = lshr i32 %1734, 16
  %1742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1741)  ; LegacyF16ToF32(value)
  %1743 = fsub fast float %1704, %1742
  %1744 = fmul fast float %1743, %1736
  %1745 = fadd fast float %1744, %1740
  %1746 = call float @dx.op.unary.f32(i32 7, float %1745)  ; Saturate(value)
  br label %1747

; <label>:1747                                    ; preds = %1731, %1679
  %1748 = phi float [ %1746, %1731 ], [ %1704, %1679 ]
  %1749 = call float @dx.op.dot2.f32(i32 54, float %1725, float %1726, float %1283, float %1284)  ; Dot2(ax,ay,bx,by)
  %1750 = call float @dx.op.dot2.f32(i32 54, float %1725, float %1726, float %1285, float %1286)  ; Dot2(ax,ay,bx,by)
  br label %1751

; <label>:1751                                    ; preds = %1747, %1657
  %1752 = phi float [ %1748, %1747 ], [ 0x3FD6666660000000, %1657 ]
  %1753 = phi float [ %1749, %1747 ], [ 0.000000e+00, %1657 ]
  %1754 = phi float [ %1750, %1747 ], [ 0.000000e+00, %1657 ]
  %1755 = phi float [ %1691, %1747 ], [ 1.000000e+00, %1657 ]
  %1756 = add i32 %59, 176
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = lshr i32 %1758, 22
  %1760 = shl nuw nsw i32 %1759, 5
  %1761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1760)  ; LegacyF16ToF32(value)
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = and i32 %1763, 64
  %1765 = icmp eq i32 %1764, 0
  br i1 %1765, label %1799, label %1766

; <label>:1766                                    ; preds = %1751
  %1767 = add i32 %59, 524
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = add i32 %1769, 0
  %1771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1770, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.i32 %1772, 0
  %1774 = and i32 %1773, 131072
  %1775 = icmp eq i32 %1774, 0
  %1776 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1771, %dx.types.Handle %116, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1777 = extractvalue %dx.types.ResRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.ResRet.f32 %1776, 1
  %1779 = extractvalue %dx.types.ResRet.f32 %1776, 2
  %1780 = fmul fast float %393, %1777
  %1781 = fmul fast float %394, %1778
  %1782 = fmul fast float %395, %1779
  br i1 %1775, label %1789, label %1783

; <label>:1783                                    ; preds = %1766
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 0
  %1786 = fmul fast float %1785, %1780
  %1787 = fmul fast float %1785, %1781
  %1788 = fmul fast float %1785, %1782
  br label %1789

; <label>:1789                                    ; preds = %1783, %1766
  %1790 = phi float [ %1786, %1783 ], [ %1780, %1766 ]
  %1791 = phi float [ %1787, %1783 ], [ %1781, %1766 ]
  %1792 = phi float [ %1788, %1783 ], [ %1782, %1766 ]
  %1793 = fmul fast float %1790, %1761
  %1794 = select i1 %275, float %1793, float %1790
  %1795 = call float @dx.op.dot3.f32(i32 55, float %1794, float %1791, float %1792, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1796 = select i1 %275, float 0.000000e+00, float %1790
  %1797 = select i1 %275, float %1795, float %1791
  %1798 = select i1 %275, float 0.000000e+00, float %1792
  br label %1799

; <label>:1799                                    ; preds = %1789, %1751
  %1800 = phi float [ %1796, %1789 ], [ 0.000000e+00, %1751 ]
  %1801 = phi float [ %1797, %1789 ], [ 0.000000e+00, %1751 ]
  %1802 = phi float [ %1798, %1789 ], [ 0.000000e+00, %1751 ]
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = add i32 %59, 112
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = and i32 %1807, 255
  %1809 = uitofp i32 %1808 to float
  %1810 = lshr i32 %1807, 8
  %1811 = and i32 %1810, 255
  %1812 = uitofp i32 %1811 to float
  %1813 = call float @dx.op.dot3.f32(i32 55, float %1672, float %1673, float %1674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1814 = fmul fast float %1812, %1813
  %1815 = fadd fast float %1814, %1809
  %1816 = fmul fast float %1815, 0x3F70101020000000
  %1817 = call float @dx.op.unary.f32(i32 7, float %1816)  ; Saturate(value)
  br i1 %1271, label %1818, label %1826

; <label>:1818                                    ; preds = %1799
  %1819 = fsub fast float 1.000000e+00, %1452
  %1820 = fmul fast float %1819, %1259
  %1821 = fmul fast float %1819, %1260
  %1822 = fmul fast float %1819, %1261
  %1823 = fmul fast float %1819, %1262
  %1824 = fmul fast float %1819, %1263
  %1825 = fmul fast float %1819, %1264
  br label %1826

; <label>:1826                                    ; preds = %1818, %1799
  %1827 = phi float [ %1820, %1818 ], [ %1259, %1799 ]
  %1828 = phi float [ %1821, %1818 ], [ %1260, %1799 ]
  %1829 = phi float [ %1822, %1818 ], [ %1261, %1799 ]
  %1830 = phi float [ %1823, %1818 ], [ %1262, %1799 ]
  %1831 = phi float [ %1824, %1818 ], [ %1263, %1799 ]
  %1832 = phi float [ %1825, %1818 ], [ %1264, %1799 ]
  %1833 = and i32 %1804, 3
  %1834 = icmp eq i32 %1833, 3
  br i1 %1834, label %1913, label %1835

; <label>:1835                                    ; preds = %1826
  %1836 = and i32 %1804, 16
  %1837 = icmp ne i32 %1836, 0
  %1838 = select i1 %1837, float %1452, float 0.000000e+00
  %1839 = icmp eq i32 %1833, 0
  br i1 %1839, label %1840, label %1868

; <label>:1840                                    ; preds = %1835
  %1841 = and i32 %1804, 64
  %1842 = icmp ne i32 %1841, 0
  %1843 = select i1 %1842, float %1452, float 0.000000e+00
  %1844 = fsub fast float %1672, %1827
  %1845 = fsub fast float %1673, %1828
  %1846 = fsub fast float %1674, %1829
  %1847 = fmul fast float %1838, %1844
  %1848 = fmul fast float %1838, %1845
  %1849 = fmul fast float %1838, %1846
  %1850 = fadd fast float %1847, %1827
  %1851 = fadd fast float %1848, %1828
  %1852 = fadd fast float %1849, %1829
  %1853 = fsub fast float %1658, %1265
  %1854 = fmul fast float %1838, %1853
  %1855 = fadd fast float %1854, %1265
  %1856 = fsub fast float %1800, %1830
  %1857 = fsub fast float %1801, %1831
  %1858 = fsub fast float %1802, %1832
  %1859 = fmul fast float %1843, %1856
  %1860 = fmul fast float %1843, %1857
  %1861 = fmul fast float %1843, %1858
  %1862 = fadd fast float %1859, %1830
  %1863 = fadd fast float %1860, %1831
  %1864 = fadd fast float %1861, %1832
  %1865 = fsub fast float %1817, %1269
  %1866 = fmul fast float %1838, %1865
  %1867 = fadd fast float %1866, %1269
  br label %1913

; <label>:1868                                    ; preds = %1835
  %1869 = icmp eq i32 %1833, 1
  br i1 %1869, label %1870, label %1883

; <label>:1870                                    ; preds = %1868
  %1871 = fadd fast float %1672, -1.000000e+00
  %1872 = fadd fast float %1673, -1.000000e+00
  %1873 = fadd fast float %1674, -1.000000e+00
  %1874 = fmul fast float %1838, %1871
  %1875 = fmul fast float %1838, %1872
  %1876 = fmul fast float %1838, %1873
  %1877 = fadd fast float %1874, 1.000000e+00
  %1878 = fadd fast float %1875, 1.000000e+00
  %1879 = fadd fast float %1876, 1.000000e+00
  %1880 = fmul fast float %1877, %1827
  %1881 = fmul fast float %1878, %1828
  %1882 = fmul fast float %1879, %1829
  br label %1913

; <label>:1883                                    ; preds = %1868
  %1884 = icmp eq i32 %1833, 2
  br i1 %1884, label %1885, label %1913

; <label>:1885                                    ; preds = %1883
  %1886 = call float @dx.op.unary.f32(i32 24, float %1672)  ; Sqrt(value)
  %1887 = call float @dx.op.unary.f32(i32 24, float %1673)  ; Sqrt(value)
  %1888 = call float @dx.op.unary.f32(i32 24, float %1674)  ; Sqrt(value)
  %1889 = fadd fast float %1886, -5.000000e-01
  %1890 = fadd fast float %1887, -5.000000e-01
  %1891 = fadd fast float %1888, -5.000000e-01
  %1892 = fmul fast float %1889, %1838
  %1893 = fmul fast float %1890, %1838
  %1894 = fmul fast float %1891, %1838
  %1895 = fadd fast float %1892, 5.000000e-01
  %1896 = fadd fast float %1893, 5.000000e-01
  %1897 = fadd fast float %1894, 5.000000e-01
  %1898 = fmul fast float %1895, 2.000000e+00
  %1899 = fsub fast float 1.000000e+00, %1898
  %1900 = fmul fast float %1899, %1827
  %1901 = fadd fast float %1900, %1898
  %1902 = fmul fast float %1901, %1827
  %1903 = fmul fast float %1896, 2.000000e+00
  %1904 = fsub fast float 1.000000e+00, %1903
  %1905 = fmul fast float %1904, %1828
  %1906 = fadd fast float %1905, %1903
  %1907 = fmul fast float %1906, %1828
  %1908 = fmul fast float %1897, 2.000000e+00
  %1909 = fsub fast float 1.000000e+00, %1908
  %1910 = fmul fast float %1909, %1829
  %1911 = fadd fast float %1910, %1908
  %1912 = fmul fast float %1911, %1829
  br label %1913

; <label>:1913                                    ; preds = %1885, %1883, %1870, %1840, %1826
  %1914 = phi float [ %1827, %1826 ], [ %1902, %1885 ], [ %1827, %1883 ], [ %1880, %1870 ], [ %1850, %1840 ]
  %1915 = phi float [ %1828, %1826 ], [ %1907, %1885 ], [ %1828, %1883 ], [ %1881, %1870 ], [ %1851, %1840 ]
  %1916 = phi float [ %1829, %1826 ], [ %1912, %1885 ], [ %1829, %1883 ], [ %1882, %1870 ], [ %1852, %1840 ]
  %1917 = phi float [ %1830, %1826 ], [ %1830, %1885 ], [ %1830, %1883 ], [ %1830, %1870 ], [ %1862, %1840 ]
  %1918 = phi float [ %1831, %1826 ], [ %1831, %1885 ], [ %1831, %1883 ], [ %1831, %1870 ], [ %1863, %1840 ]
  %1919 = phi float [ %1832, %1826 ], [ %1832, %1885 ], [ %1832, %1883 ], [ %1832, %1870 ], [ %1864, %1840 ]
  %1920 = phi float [ %1265, %1826 ], [ %1265, %1885 ], [ %1265, %1883 ], [ %1265, %1870 ], [ %1855, %1840 ]
  %1921 = phi float [ %1269, %1826 ], [ %1269, %1885 ], [ %1269, %1883 ], [ %1269, %1870 ], [ %1867, %1840 ]
  %1922 = and i32 %1804, 12
  %1923 = icmp eq i32 %1922, 12
  br i1 %1923, label %1996, label %1924

; <label>:1924                                    ; preds = %1913
  %1925 = and i32 %1804, 2097184
  %1926 = icmp eq i32 %1925, 2097184
  %1927 = select i1 %1926, float %1452, float 0.000000e+00
  %1928 = and i32 %1804, 4194336
  %1929 = icmp eq i32 %1928, 4194336
  %1930 = select i1 %1929, float %1452, float 0.000000e+00
  %1931 = and i32 %1804, 8388640
  %1932 = icmp eq i32 %1931, 8388640
  %1933 = select i1 %1932, float %1452, float 0.000000e+00
  %1934 = icmp eq i32 %1922, 0
  br i1 %1934, label %1935, label %1948

; <label>:1935                                    ; preds = %1924
  %1936 = fsub fast float %1753, %1257
  %1937 = fsub fast float %1754, %1258
  %1938 = fmul fast float %1927, %1936
  %1939 = fmul fast float %1927, %1937
  %1940 = fadd fast float %1938, %1257
  %1941 = fadd fast float %1939, %1258
  %1942 = fsub fast float %1755, %1268
  %1943 = fmul fast float %1930, %1942
  %1944 = fadd fast float %1943, %1268
  %1945 = fsub fast float %1752, %1267
  %1946 = fmul fast float %1933, %1945
  %1947 = fadd fast float %1946, %1267
  br label %1996

; <label>:1948                                    ; preds = %1924
  %1949 = icmp eq i32 %1922, 4
  br i1 %1949, label %1950, label %1982

; <label>:1950                                    ; preds = %1948
  %1951 = fmul fast float %1927, %1753
  %1952 = fmul fast float %1927, %1754
  %1953 = fadd fast float %1951, %1257
  %1954 = fadd fast float %1952, %1258
  %1955 = call float @dx.op.binary.f32(i32 36, float %1268, float %1755)  ; FMin(a,b)
  %1956 = fsub fast float %1955, %1268
  %1957 = fmul fast float %1956, %1930
  %1958 = fadd fast float %1957, %1268
  %1959 = fadd fast float %1752, %1267
  %1960 = fmul fast float %1959, 0x3FF337FAE0000000
  %1961 = fmul fast float %1267, %1267
  %1962 = fmul fast float %1752, %1752
  %1963 = fadd fast float %1962, %1961
  %1964 = fmul fast float %1963, 0x3FE5152B00000000
  %1965 = fmul fast float %1267, 0xBFCC1F85E0000000
  %1966 = fmul fast float %1965, %1752
  %1967 = fadd fast float %1966, 0xBFE1363700000000
  %1968 = fadd fast float %1967, %1960
  %1969 = fsub fast float %1968, %1964
  %1970 = fmul fast float %1959, 0x3FBA6F0D00000000
  %1971 = fmul fast float %1963, 0x3FD0432880000000
  %1972 = fmul fast float %1267, 0xBFEF110800000000
  %1973 = fmul fast float %1972, %1752
  %1974 = fadd fast float %1973, 1.000000e+00
  %1975 = fsub fast float %1974, %1970
  %1976 = fadd fast float %1975, %1971
  %1977 = fdiv fast float %1969, %1976
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1979 = fsub fast float %1978, %1267
  %1980 = fmul fast float %1979, %1933
  %1981 = fadd fast float %1980, %1267
  br label %1996

; <label>:1982                                    ; preds = %1948
  %1983 = icmp eq i32 %1922, 8
  br i1 %1983, label %1984, label %1996

; <label>:1984                                    ; preds = %1982
  %1985 = fmul fast float %1927, %1753
  %1986 = fmul fast float %1927, %1754
  %1987 = fadd fast float %1985, %1257
  %1988 = fadd fast float %1986, %1258
  %1989 = call float @dx.op.binary.f32(i32 36, float %1268, float %1755)  ; FMin(a,b)
  %1990 = fsub fast float %1989, %1268
  %1991 = fmul fast float %1990, %1930
  %1992 = fadd fast float %1991, %1268
  %1993 = fsub fast float %1752, %1267
  %1994 = fmul fast float %1933, %1993
  %1995 = fadd fast float %1994, %1267
  br label %1996

; <label>:1996                                    ; preds = %1984, %1982, %1950, %1935, %1913, %1451, %1270, %1256
  %1997 = phi float [ %1257, %1913 ], [ %1257, %1451 ], [ %1257, %1256 ], [ %1987, %1984 ], [ %1257, %1982 ], [ %1953, %1950 ], [ %1940, %1935 ], [ %1257, %1270 ]
  %1998 = phi float [ %1258, %1913 ], [ %1258, %1451 ], [ %1258, %1256 ], [ %1988, %1984 ], [ %1258, %1982 ], [ %1954, %1950 ], [ %1941, %1935 ], [ %1258, %1270 ]
  %1999 = phi float [ %1914, %1913 ], [ %1259, %1451 ], [ %1259, %1256 ], [ %1914, %1984 ], [ %1914, %1982 ], [ %1914, %1950 ], [ %1914, %1935 ], [ %1259, %1270 ]
  %2000 = phi float [ %1915, %1913 ], [ %1260, %1451 ], [ %1260, %1256 ], [ %1915, %1984 ], [ %1915, %1982 ], [ %1915, %1950 ], [ %1915, %1935 ], [ %1260, %1270 ]
  %2001 = phi float [ %1916, %1913 ], [ %1261, %1451 ], [ %1261, %1256 ], [ %1916, %1984 ], [ %1916, %1982 ], [ %1916, %1950 ], [ %1916, %1935 ], [ %1261, %1270 ]
  %2002 = phi float [ %1917, %1913 ], [ %1262, %1451 ], [ %1262, %1256 ], [ %1917, %1984 ], [ %1917, %1982 ], [ %1917, %1950 ], [ %1917, %1935 ], [ %1262, %1270 ]
  %2003 = phi float [ %1918, %1913 ], [ %1263, %1451 ], [ %1263, %1256 ], [ %1918, %1984 ], [ %1918, %1982 ], [ %1918, %1950 ], [ %1918, %1935 ], [ %1263, %1270 ]
  %2004 = phi float [ %1919, %1913 ], [ %1264, %1451 ], [ %1264, %1256 ], [ %1919, %1984 ], [ %1919, %1982 ], [ %1919, %1950 ], [ %1919, %1935 ], [ %1264, %1270 ]
  %2005 = phi float [ %1920, %1913 ], [ %1265, %1451 ], [ %1265, %1256 ], [ %1920, %1984 ], [ %1920, %1982 ], [ %1920, %1950 ], [ %1920, %1935 ], [ %1265, %1270 ]
  %2006 = phi float [ %1267, %1913 ], [ %1267, %1451 ], [ %1267, %1256 ], [ %1995, %1984 ], [ %1267, %1982 ], [ %1981, %1950 ], [ %1947, %1935 ], [ %1267, %1270 ]
  %2007 = phi float [ %1268, %1913 ], [ %1268, %1451 ], [ %1268, %1256 ], [ %1992, %1984 ], [ %1268, %1982 ], [ %1958, %1950 ], [ %1944, %1935 ], [ %1268, %1270 ]
  %2008 = phi float [ %1921, %1913 ], [ %1269, %1451 ], [ %1269, %1256 ], [ %1921, %1984 ], [ %1921, %1982 ], [ %1921, %1950 ], [ %1921, %1935 ], [ %1269, %1270 ]
  br i1 %657, label %2735, label %2009

; <label>:2009                                    ; preds = %1996
  %2010 = icmp ult i32 %713, 3
  %2011 = add i32 %59, 56
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = add i32 %59, 60
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2014, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = or i32 %2016, %2013
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2735, label %2019

; <label>:2019                                    ; preds = %2009
  %2020 = and i32 %2013, 262144
  %2021 = icmp ne i32 %2020, 0
  %2022 = select i1 %2021, float %66, float 1.000000e+00
  %2023 = select i1 %2021, float %67, float 0.000000e+00
  %2024 = select i1 %2021, float %68, float 0.000000e+00
  %2025 = select i1 %2021, float %69, float 1.000000e+00
  %2026 = select i1 %2021, float %70, float %98
  %2027 = select i1 %2021, float %71, float %99
  %2028 = add i32 %59, 316
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = lshr i32 %2030, 16
  %2032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2031)  ; LegacyF16ToF32(value)
  %2033 = fmul fast float %2032, 0x3F50624DE0000000
  %2034 = add i32 %59, 120
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = lshr i32 %2036, 16
  %2038 = and i32 %2037, 255
  %2039 = lshr i32 %2036, 24
  %2040 = add i32 %59, 324
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = and i32 %2042, 65535
  %2044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2043)  ; LegacyF16ToF32(value)
  %2045 = lshr i32 %2042, 16
  %2046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2045)  ; LegacyF16ToF32(value)
  %2047 = add i32 %59, 64
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = lshr i32 %2049, 22
  %2051 = shl nuw nsw i32 %2050, 5
  %2052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2051)  ; LegacyF16ToF32(value)
  %2053 = shl i32 %2049, 4
  %2054 = and i32 %2053, 32752
  %2055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2054)  ; LegacyF16ToF32(value)
  %2056 = lshr i32 %2049, 7
  %2057 = and i32 %2056, 32752
  %2058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2057)  ; LegacyF16ToF32(value)
  %2059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.f32 %2059, 3
  %2061 = fmul fast float %2060, 1.000000e+03
  %2062 = fmul fast float %2061, %541
  %2063 = call float @dx.op.unary.f32(i32 22, float %2062)  ; Frc(value)
  %2064 = fadd fast float %2063, %529
  %2065 = fmul fast float %2061, %543
  %2066 = call float @dx.op.unary.f32(i32 22, float %2065)  ; Frc(value)
  %2067 = fadd fast float %2066, %530
  %2068 = fmul fast float %2033, %2061
  %2069 = call float @dx.op.unary.f32(i32 22, float %2068)  ; Frc(value)
  %2070 = fmul fast float %2069, 0x401921FB60000000
  %2071 = fadd fast float %2070, %2052
  %2072 = call float @dx.op.unary.f32(i32 13, float %2071)  ; Sin(value)
  %2073 = call float @dx.op.unary.f32(i32 12, float %2071)  ; Cos(value)
  %2074 = fsub fast float -0.000000e+00, %2072
  %2075 = fadd fast float %2026, -5.000000e-01
  %2076 = fadd fast float %2027, -5.000000e-01
  %2077 = fmul fast float %2044, %2075
  %2078 = fmul fast float %2046, %2076
  %2079 = fadd fast float %2077, 5.000000e-01
  %2080 = fadd fast float %2078, 5.000000e-01
  %2081 = fmul fast float %2055, %2079
  %2082 = fmul fast float %2058, %2080
  %2083 = fmul fast float %2073, %2081
  %2084 = call float @dx.op.tertiary.f32(i32 46, float %2074, float %2082, float %2083)  ; FMad(a,b,c)
  %2085 = fmul fast float %2072, %2081
  %2086 = call float @dx.op.tertiary.f32(i32 46, float %2073, float %2082, float %2085)  ; FMad(a,b,c)
  %2087 = fadd fast float %2064, %2084
  %2088 = fadd fast float %2067, %2086
  %2089 = icmp ugt i32 %2038, 1
  %2090 = icmp ugt i32 %2036, 33554431
  %2091 = or i1 %2090, %2089
  br i1 %2091, label %2092, label %2117

; <label>:2092                                    ; preds = %2019
  %2093 = add i32 %59, 260
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = lshr i32 %2095, 16
  %2097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2096)  ; LegacyF16ToF32(value)
  %2098 = fmul fast float %2060, %2097
  %2099 = call float @dx.op.unary.f32(i32 22, float %2098)  ; Frc(value)
  %2100 = mul nuw nsw i32 %2038, %2039
  %2101 = uitofp i32 %2100 to float
  %2102 = fmul fast float %2099, %2101
  %2103 = call float @dx.op.unary.f32(i32 27, float %2102)  ; Round_ni(value)
  %2104 = fptoui float %2103 to i32
  %2105 = urem i32 %2104, %2038
  %2106 = udiv i32 %2104, %2039
  %2107 = call float @dx.op.unary.f32(i32 22, float %2087)  ; Frc(value)
  %2108 = call float @dx.op.unary.f32(i32 22, float %2088)  ; Frc(value)
  %2109 = uitofp i32 %2105 to float
  %2110 = uitofp i32 %2106 to float
  %2111 = fadd fast float %2107, %2109
  %2112 = fadd fast float %2108, %2110
  %2113 = uitofp i32 %2038 to float
  %2114 = uitofp i32 %2039 to float
  %2115 = fdiv fast float %2111, %2113
  %2116 = fdiv fast float %2112, %2114
  br label %2117

; <label>:2117                                    ; preds = %2092, %2019
  %2118 = phi float [ %2115, %2092 ], [ %2087, %2019 ]
  %2119 = phi float [ %2116, %2092 ], [ %2088, %2019 ]
  %2120 = and i32 %2013, 256
  %2121 = icmp eq i32 %2120, 0
  br i1 %2121, label %2168, label %2122

; <label>:2122                                    ; preds = %2117
  %2123 = add i32 %59, 560
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = add i32 %2125, 0
  %2127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2126, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2128 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2127, %dx.types.Handle %117, float %2118, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2129 = extractvalue %dx.types.ResRet.f32 %2128, 0
  %2130 = add i32 %59, 132
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = shl i32 %2132, 4
  %2134 = and i32 %2133, 32752
  %2135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2134)  ; LegacyF16ToF32(value)
  %2136 = lshr i32 %2132, 7
  %2137 = and i32 %2136, 32752
  %2138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2137)  ; LegacyF16ToF32(value)
  %2139 = fsub fast float 1.000000e+00, %709
  %2140 = call float @dx.op.binary.f32(i32 35, float %2139, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2141 = bitcast float %709 to i32
  %2142 = sitofp i32 %2141 to float
  %2143 = fadd fast float %2142, 0xC1CFBF8940000000
  %2144 = fmul fast float %2138, %2143
  %2145 = fadd fast float %2144, 0x41CFBF8940000000
  %2146 = fptosi float %2145 to i32
  %2147 = bitcast i32 %2146 to float
  %2148 = bitcast float %2140 to i32
  %2149 = sitofp i32 %2148 to float
  %2150 = fadd fast float %2149, 0xC1CFBF8940000000
  %2151 = fmul fast float %2150, %2138
  %2152 = fadd fast float %2151, 0x41CFBF8940000000
  %2153 = fptosi float %2152 to i32
  %2154 = bitcast i32 %2153 to float
  %2155 = fmul fast float %2147, %2135
  %2156 = fmul fast float %2154, %2135
  %2157 = fsub fast float %2140, %2155
  %2158 = fadd fast float %2156, %2140
  %2159 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2160 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  %2161 = fsub fast float %2129, %2159
  %2162 = fsub fast float %2160, %2159
  %2163 = bitcast float %2162 to i32
  %2164 = sub nsw i32 2129859010, %2163
  %2165 = bitcast i32 %2164 to float
  %2166 = fmul fast float %2165, %2161
  %2167 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  br label %2168

; <label>:2168                                    ; preds = %2122, %2117
  %2169 = phi float [ %2167, %2122 ], [ %709, %2117 ]
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = and i32 %2171, 128
  %2173 = icmp eq i32 %2172, 0
  br i1 %2173, label %2190, label %2174

; <label>:2174                                    ; preds = %2168
  %2175 = add i32 %59, 544
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2175, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = add i32 %2177, 0
  %2179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2178, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2179, %dx.types.Handle %117, float %2118, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2181 = extractvalue %dx.types.ResRet.f32 %2180, 0
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = and i32 %2183, 524288
  %2185 = icmp ne i32 %2184, 0
  %2186 = fcmp fast ogt float %2181, 0x3FE0101020000000
  %2187 = select i1 %2186, float 1.000000e+00, float 0.000000e+00
  %2188 = select i1 %2185, float %2187, float %2181
  %2189 = fmul fast float %2188, %2169
  br label %2190

; <label>:2190                                    ; preds = %2174, %2168
  %2191 = phi float [ %2189, %2174 ], [ %2169, %2168 ]
  %2192 = fcmp fast ult float %2191, 0x3F70101020000000
  br i1 %2192, label %2735, label %2193

; <label>:2193                                    ; preds = %2190
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = and i32 %2195, 16
  %2197 = icmp eq i32 %2196, 0
  br i1 %2197, label %2396, label %2198

; <label>:2198                                    ; preds = %2193
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = add i32 %59, 496
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = add i32 %2203, 0
  %2205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2205, %dx.types.Handle %116, float %2118, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.ResRet.f32 %2206, 1
  %2209 = extractvalue %dx.types.ResRet.f32 %2206, 2
  %2210 = extractvalue %dx.types.ResRet.f32 %2206, 3
  %2211 = and i32 %2200, 255
  %2212 = uitofp i32 %2211 to float
  %2213 = lshr i32 %2200, 8
  %2214 = and i32 %2213, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = fmul fast float %2210, %2212
  %2217 = fadd fast float %2216, %2215
  %2218 = fmul fast float %2217, 0x3F70101000000000
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = and i32 %2220, 512
  %2222 = icmp eq i32 %2221, 0
  br i1 %2222, label %2231, label %2223

; <label>:2223                                    ; preds = %2198
  %2224 = add i32 %59, 580
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = add i32 %2226, 0
  %2228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2228, %dx.types.Handle %117, float %2118, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2230 = extractvalue %dx.types.ResRet.f32 %2229, 0
  br label %2231

; <label>:2231                                    ; preds = %2223, %2198
  %2232 = phi float [ %2230, %2223 ], [ 1.000000e+00, %2198 ]
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = and i32 %2234, 33554432
  %2236 = icmp eq i32 %2235, 0
  br i1 %2236, label %2343, label %2237

; <label>:2237                                    ; preds = %2231
  %2238 = add i32 %59, 256
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2238, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = and i32 %2240, 65535
  %2242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2241)  ; LegacyF16ToF32(value)
  %2243 = lshr i32 %2240, 16
  %2244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2243)  ; LegacyF16ToF32(value)
  %2245 = add i32 %59, 260
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2245, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = and i32 %2247, 65535
  %2249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2248)  ; LegacyF16ToF32(value)
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = lshr i32 %2251, 24
  %2253 = uitofp i32 %2252 to float
  %2254 = fmul fast float %2253, 0x3F70101020000000
  %2255 = and i32 %2251, 255
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2256, 0x3F70101020000000
  %2258 = lshr i32 %2251, 8
  %2259 = and i32 %2258, 255
  %2260 = uitofp i32 %2259 to float
  %2261 = fmul fast float %2260, 0x3F70101020000000
  %2262 = lshr i32 %2251, 16
  %2263 = and i32 %2262, 255
  %2264 = uitofp i32 %2263 to float
  %2265 = fmul fast float %2264, 0x3F70101020000000
  %2266 = add i32 %59, 252
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = lshr i32 %2268, 24
  %2270 = uitofp i32 %2269 to float
  %2271 = fmul fast float %2270, 0x3F70101020000000
  %2272 = and i32 %2268, 255
  %2273 = uitofp i32 %2272 to float
  %2274 = fmul fast float %2273, 0x3F70101020000000
  %2275 = lshr i32 %2268, 8
  %2276 = and i32 %2275, 255
  %2277 = uitofp i32 %2276 to float
  %2278 = fmul fast float %2277, 0x3F70101020000000
  %2279 = lshr i32 %2268, 16
  %2280 = and i32 %2279, 255
  %2281 = uitofp i32 %2280 to float
  %2282 = fmul fast float %2281, 0x3F70101020000000
  %2283 = bitcast float %2207 to i32
  %2284 = ashr i32 %2283, 1
  %2285 = sub nsw i32 1597463174, %2284
  %2286 = bitcast i32 %2285 to float
  %2287 = fmul fast float %2207, 5.000000e-01
  %2288 = fmul fast float %2286, %2286
  %2289 = fmul fast float %2288, %2287
  %2290 = fsub fast float 1.500000e+00, %2289
  %2291 = fmul fast float %2286, %2207
  %2292 = fmul fast float %2291, %2290
  %2293 = bitcast float %2208 to i32
  %2294 = ashr i32 %2293, 1
  %2295 = sub nsw i32 1597463174, %2294
  %2296 = bitcast i32 %2295 to float
  %2297 = fmul fast float %2208, 5.000000e-01
  %2298 = fmul fast float %2296, %2296
  %2299 = fmul fast float %2298, %2297
  %2300 = fsub fast float 1.500000e+00, %2299
  %2301 = fmul fast float %2296, %2208
  %2302 = fmul fast float %2301, %2300
  %2303 = bitcast float %2209 to i32
  %2304 = ashr i32 %2303, 1
  %2305 = sub nsw i32 1597463174, %2304
  %2306 = bitcast i32 %2305 to float
  %2307 = fmul fast float %2209, 5.000000e-01
  %2308 = fmul fast float %2306, %2306
  %2309 = fmul fast float %2308, %2307
  %2310 = fsub fast float 1.500000e+00, %2309
  %2311 = fmul fast float %2306, %2209
  %2312 = fmul fast float %2311, %2310
  %2313 = fsub fast float %2292, %2274
  %2314 = fsub fast float %2302, %2278
  %2315 = fsub fast float %2312, %2282
  %2316 = fmul fast float %2313, %2242
  %2317 = fmul fast float %2314, %2244
  %2318 = fmul fast float %2315, %2249
  %2319 = fadd fast float %2316, %2257
  %2320 = fadd fast float %2317, %2261
  %2321 = fadd fast float %2318, %2265
  %2322 = call float @dx.op.unary.f32(i32 7, float %2319)  ; Saturate(value)
  %2323 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  %2324 = call float @dx.op.unary.f32(i32 7, float %2321)  ; Saturate(value)
  %2325 = fmul fast float %2322, %2322
  %2326 = fmul fast float %2323, %2323
  %2327 = fmul fast float %2324, %2324
  %2328 = fsub fast float %2325, %2207
  %2329 = fsub fast float %2326, %2208
  %2330 = fsub fast float %2327, %2209
  %2331 = fmul fast float %2328, %2232
  %2332 = fmul fast float %2329, %2232
  %2333 = fmul fast float %2330, %2232
  %2334 = fadd fast float %2331, %2207
  %2335 = fadd fast float %2332, %2208
  %2336 = fadd fast float %2333, %2209
  %2337 = fadd fast float %2254, %2218
  %2338 = fsub fast float %2337, %2271
  %2339 = call float @dx.op.unary.f32(i32 7, float %2338)  ; Saturate(value)
  %2340 = fsub fast float %2339, %2218
  %2341 = fmul fast float %2340, %2232
  %2342 = fadd fast float %2341, %2218
  br label %2396

; <label>:2343                                    ; preds = %2231
  %2344 = and i32 %2234, 134217728
  %2345 = icmp eq i32 %2344, 0
  br i1 %2345, label %2380, label %2346

; <label>:2346                                    ; preds = %2343
  %2347 = call float @dx.op.unary.f32(i32 24, float %517)  ; Sqrt(value)
  %2348 = call float @dx.op.unary.f32(i32 24, float %518)  ; Sqrt(value)
  %2349 = call float @dx.op.unary.f32(i32 24, float %519)  ; Sqrt(value)
  %2350 = fadd fast float %2347, -5.000000e-01
  %2351 = fadd fast float %2348, -5.000000e-01
  %2352 = fadd fast float %2349, -5.000000e-01
  %2353 = fmul fast float %2350, %2232
  %2354 = fmul fast float %2351, %2232
  %2355 = fmul fast float %2352, %2232
  %2356 = fadd fast float %2353, 5.000000e-01
  %2357 = fadd fast float %2354, 5.000000e-01
  %2358 = fadd fast float %2355, 5.000000e-01
  %2359 = call float @dx.op.unary.f32(i32 24, float %2207)  ; Sqrt(value)
  %2360 = call float @dx.op.unary.f32(i32 24, float %2208)  ; Sqrt(value)
  %2361 = call float @dx.op.unary.f32(i32 24, float %2209)  ; Sqrt(value)
  %2362 = fmul fast float %2356, 2.000000e+00
  %2363 = fsub fast float 1.000000e+00, %2362
  %2364 = fmul fast float %2363, %2359
  %2365 = fadd fast float %2364, %2362
  %2366 = fmul fast float %2365, %2359
  %2367 = fmul fast float %2357, 2.000000e+00
  %2368 = fsub fast float 1.000000e+00, %2367
  %2369 = fmul fast float %2368, %2360
  %2370 = fadd fast float %2369, %2367
  %2371 = fmul fast float %2370, %2360
  %2372 = fmul fast float %2358, 2.000000e+00
  %2373 = fsub fast float 1.000000e+00, %2372
  %2374 = fmul fast float %2373, %2361
  %2375 = fadd fast float %2374, %2372
  %2376 = fmul fast float %2375, %2361
  %2377 = fmul fast float %2366, %2366
  %2378 = fmul fast float %2371, %2371
  %2379 = fmul fast float %2376, %2376
  br label %2396

; <label>:2380                                    ; preds = %2343
  %2381 = fmul fast float %517, %517
  %2382 = fmul fast float %518, %518
  %2383 = fmul fast float %519, %519
  %2384 = fadd fast float %2381, -1.000000e+00
  %2385 = fadd fast float %2382, -1.000000e+00
  %2386 = fadd fast float %2383, -1.000000e+00
  %2387 = fmul fast float %2232, %2384
  %2388 = fmul fast float %2232, %2385
  %2389 = fmul fast float %2232, %2386
  %2390 = fadd fast float %2387, 1.000000e+00
  %2391 = fadd fast float %2388, 1.000000e+00
  %2392 = fadd fast float %2389, 1.000000e+00
  %2393 = fmul fast float %2390, %2207
  %2394 = fmul fast float %2391, %2208
  %2395 = fmul fast float %2392, %2209
  br label %2396

; <label>:2396                                    ; preds = %2380, %2346, %2237, %2193
  %2397 = phi float [ %2342, %2237 ], [ %2218, %2346 ], [ %2218, %2380 ], [ 0x3FA23C0BE0000000, %2193 ]
  %2398 = phi float [ %2334, %2237 ], [ %2377, %2346 ], [ %2393, %2380 ], [ 1.000000e+00, %2193 ]
  %2399 = phi float [ %2335, %2237 ], [ %2378, %2346 ], [ %2394, %2380 ], [ 1.000000e+00, %2193 ]
  %2400 = phi float [ %2336, %2237 ], [ %2379, %2346 ], [ %2395, %2380 ], [ 1.000000e+00, %2193 ]
  %2401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2402 = extractvalue %dx.types.CBufRet.i32 %2401, 1
  %2403 = and i32 %2402, 1
  %2404 = icmp ne i32 %2403, 0
  %2405 = add i32 %59, 356
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 32
  %2409 = icmp ne i32 %2408, 0
  %2410 = and i1 %2404, %2409
  %2411 = select i1 %2410, float 1.000000e+00, float %2398
  %2412 = select i1 %2410, float 0x3FD3333340000000, float %2399
  %2413 = select i1 %2410, float 0x3FD3333340000000, float %2400
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = and i32 %2415, 32
  %2417 = icmp eq i32 %2416, 0
  br i1 %2417, label %2490, label %2418

; <label>:2418                                    ; preds = %2396
  %2419 = add i32 %59, 124
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = add i32 %59, 512
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2422, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = add i32 %2424, 0
  %2426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2427 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2426, %dx.types.Handle %116, float %2118, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2428 = extractvalue %dx.types.ResRet.f32 %2427, 0
  %2429 = extractvalue %dx.types.ResRet.f32 %2427, 1
  %2430 = extractvalue %dx.types.ResRet.f32 %2427, 2
  %2431 = extractvalue %dx.types.ResRet.f32 %2427, 3
  %2432 = and i32 %2421, 255
  %2433 = uitofp i32 %2432 to float
  %2434 = lshr i32 %2421, 8
  %2435 = and i32 %2434, 255
  %2436 = uitofp i32 %2435 to float
  %2437 = lshr i32 %2421, 16
  %2438 = and i32 %2437, 255
  %2439 = uitofp i32 %2438 to float
  %2440 = fmul fast float %2439, 0x3F70101000000000
  %2441 = fmul fast float %2428, %2433
  %2442 = fadd fast float %2441, %2436
  %2443 = fmul fast float %2442, 0x3F70101000000000
  %2444 = fadd fast float %2429, -5.000000e-01
  %2445 = fadd fast float %2431, -5.000000e-01
  %2446 = fmul fast float %2444, %2440
  %2447 = fmul fast float %2445, %2440
  %2448 = fadd fast float %2446, 5.000000e-01
  %2449 = fadd fast float %2447, 5.000000e-01
  %2450 = fmul fast float %2448, 2.000000e+00
  %2451 = fadd fast float %2450, -1.000000e+00
  %2452 = fmul fast float %2449, 2.000000e+00
  %2453 = fadd fast float %2452, -1.000000e+00
  %2454 = fadd fast float %2451, %2453
  %2455 = fmul fast float %2454, 5.000000e-01
  %2456 = fsub fast float %2451, %2453
  %2457 = fmul fast float %2456, 5.000000e-01
  %2458 = call float @dx.op.unary.f32(i32 6, float %2455)  ; FAbs(value)
  %2459 = fsub fast float 1.000000e+00, %2458
  %2460 = call float @dx.op.unary.f32(i32 6, float %2457)  ; FAbs(value)
  %2461 = fsub fast float %2459, %2460
  %2462 = call float @dx.op.dot3.f32(i32 55, float %2455, float %2457, float %2461, float %2455, float %2457, float %2461)  ; Dot3(ax,ay,az,bx,by,bz)
  %2463 = call float @dx.op.unary.f32(i32 25, float %2462)  ; Rsqrt(value)
  %2464 = fmul fast float %2455, %2463
  %2465 = fmul fast float %2457, %2463
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = and i32 %2467, 67108864
  %2469 = icmp eq i32 %2468, 0
  br i1 %2469, label %2486, label %2470

; <label>:2470                                    ; preds = %2418
  %2471 = add i32 %59, 312
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2471, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = and i32 %2473, 65535
  %2475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2474)  ; LegacyF16ToF32(value)
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = and i32 %2477, 65535
  %2479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2478)  ; LegacyF16ToF32(value)
  %2480 = lshr i32 %2473, 16
  %2481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2480)  ; LegacyF16ToF32(value)
  %2482 = fsub fast float %2443, %2481
  %2483 = fmul fast float %2482, %2475
  %2484 = fadd fast float %2483, %2479
  %2485 = call float @dx.op.unary.f32(i32 7, float %2484)  ; Saturate(value)
  br label %2486

; <label>:2486                                    ; preds = %2470, %2418
  %2487 = phi float [ %2485, %2470 ], [ %2443, %2418 ]
  %2488 = call float @dx.op.dot2.f32(i32 54, float %2464, float %2465, float %2022, float %2023)  ; Dot2(ax,ay,bx,by)
  %2489 = call float @dx.op.dot2.f32(i32 54, float %2464, float %2465, float %2024, float %2025)  ; Dot2(ax,ay,bx,by)
  br label %2490

; <label>:2490                                    ; preds = %2486, %2396
  %2491 = phi float [ %2487, %2486 ], [ 0x3FD6666660000000, %2396 ]
  %2492 = phi float [ %2488, %2486 ], [ 0.000000e+00, %2396 ]
  %2493 = phi float [ %2489, %2486 ], [ 0.000000e+00, %2396 ]
  %2494 = phi float [ %2430, %2486 ], [ 1.000000e+00, %2396 ]
  %2495 = add i32 %59, 192
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = lshr i32 %2497, 22
  %2499 = shl nuw nsw i32 %2498, 5
  %2500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2499)  ; LegacyF16ToF32(value)
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = and i32 %2502, 64
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2538, label %2505

; <label>:2505                                    ; preds = %2490
  %2506 = add i32 %59, 528
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = add i32 %2508, 0
  %2510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %2512, 131072
  %2514 = icmp eq i32 %2513, 0
  %2515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2510, %dx.types.Handle %116, float %2118, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2516 = extractvalue %dx.types.ResRet.f32 %2515, 0
  %2517 = extractvalue %dx.types.ResRet.f32 %2515, 1
  %2518 = extractvalue %dx.types.ResRet.f32 %2515, 2
  %2519 = fmul fast float %500, %2516
  %2520 = fmul fast float %501, %2517
  %2521 = fmul fast float %502, %2518
  br i1 %2514, label %2528, label %2522

; <label>:2522                                    ; preds = %2505
  %2523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2524 = extractvalue %dx.types.CBufRet.f32 %2523, 0
  %2525 = fmul fast float %2524, %2519
  %2526 = fmul fast float %2524, %2520
  %2527 = fmul fast float %2524, %2521
  br label %2528

; <label>:2528                                    ; preds = %2522, %2505
  %2529 = phi float [ %2525, %2522 ], [ %2519, %2505 ]
  %2530 = phi float [ %2526, %2522 ], [ %2520, %2505 ]
  %2531 = phi float [ %2527, %2522 ], [ %2521, %2505 ]
  %2532 = fmul fast float %2529, %2500
  %2533 = select i1 %275, float %2532, float %2529
  %2534 = call float @dx.op.dot3.f32(i32 55, float %2533, float %2530, float %2531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2535 = select i1 %275, float 0.000000e+00, float %2529
  %2536 = select i1 %275, float %2534, float %2530
  %2537 = select i1 %275, float 0.000000e+00, float %2531
  br label %2538

; <label>:2538                                    ; preds = %2528, %2490
  %2539 = phi float [ %2535, %2528 ], [ 0.000000e+00, %2490 ]
  %2540 = phi float [ %2536, %2528 ], [ 0.000000e+00, %2490 ]
  %2541 = phi float [ %2537, %2528 ], [ 0.000000e+00, %2490 ]
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = add i32 %59, 128
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = and i32 %2546, 255
  %2548 = uitofp i32 %2547 to float
  %2549 = lshr i32 %2546, 8
  %2550 = and i32 %2549, 255
  %2551 = uitofp i32 %2550 to float
  %2552 = call float @dx.op.dot3.f32(i32 55, float %2411, float %2412, float %2413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2553 = fmul fast float %2551, %2552
  %2554 = fadd fast float %2553, %2548
  %2555 = fmul fast float %2554, 0x3F70101020000000
  %2556 = call float @dx.op.unary.f32(i32 7, float %2555)  ; Saturate(value)
  br i1 %2010, label %2557, label %2565

; <label>:2557                                    ; preds = %2538
  %2558 = fsub fast float 1.000000e+00, %2191
  %2559 = fmul fast float %2558, %1999
  %2560 = fmul fast float %2558, %2000
  %2561 = fmul fast float %2558, %2001
  %2562 = fmul fast float %2558, %2002
  %2563 = fmul fast float %2558, %2003
  %2564 = fmul fast float %2558, %2004
  br label %2565

; <label>:2565                                    ; preds = %2557, %2538
  %2566 = phi float [ %2559, %2557 ], [ %1999, %2538 ]
  %2567 = phi float [ %2560, %2557 ], [ %2000, %2538 ]
  %2568 = phi float [ %2561, %2557 ], [ %2001, %2538 ]
  %2569 = phi float [ %2562, %2557 ], [ %2002, %2538 ]
  %2570 = phi float [ %2563, %2557 ], [ %2003, %2538 ]
  %2571 = phi float [ %2564, %2557 ], [ %2004, %2538 ]
  %2572 = and i32 %2543, 3
  %2573 = icmp eq i32 %2572, 3
  br i1 %2573, label %2652, label %2574

; <label>:2574                                    ; preds = %2565
  %2575 = and i32 %2543, 16
  %2576 = icmp ne i32 %2575, 0
  %2577 = select i1 %2576, float %2191, float 0.000000e+00
  %2578 = icmp eq i32 %2572, 0
  br i1 %2578, label %2579, label %2607

; <label>:2579                                    ; preds = %2574
  %2580 = and i32 %2543, 64
  %2581 = icmp ne i32 %2580, 0
  %2582 = select i1 %2581, float %2191, float 0.000000e+00
  %2583 = fsub fast float %2411, %2566
  %2584 = fsub fast float %2412, %2567
  %2585 = fsub fast float %2413, %2568
  %2586 = fmul fast float %2577, %2583
  %2587 = fmul fast float %2577, %2584
  %2588 = fmul fast float %2577, %2585
  %2589 = fadd fast float %2586, %2566
  %2590 = fadd fast float %2587, %2567
  %2591 = fadd fast float %2588, %2568
  %2592 = fsub fast float %2397, %2005
  %2593 = fmul fast float %2577, %2592
  %2594 = fadd fast float %2593, %2005
  %2595 = fsub fast float %2539, %2569
  %2596 = fsub fast float %2540, %2570
  %2597 = fsub fast float %2541, %2571
  %2598 = fmul fast float %2582, %2595
  %2599 = fmul fast float %2582, %2596
  %2600 = fmul fast float %2582, %2597
  %2601 = fadd fast float %2598, %2569
  %2602 = fadd fast float %2599, %2570
  %2603 = fadd fast float %2600, %2571
  %2604 = fsub fast float %2556, %2008
  %2605 = fmul fast float %2577, %2604
  %2606 = fadd fast float %2605, %2008
  br label %2652

; <label>:2607                                    ; preds = %2574
  %2608 = icmp eq i32 %2572, 1
  br i1 %2608, label %2609, label %2622

; <label>:2609                                    ; preds = %2607
  %2610 = fadd fast float %2411, -1.000000e+00
  %2611 = fadd fast float %2412, -1.000000e+00
  %2612 = fadd fast float %2413, -1.000000e+00
  %2613 = fmul fast float %2577, %2610
  %2614 = fmul fast float %2577, %2611
  %2615 = fmul fast float %2577, %2612
  %2616 = fadd fast float %2613, 1.000000e+00
  %2617 = fadd fast float %2614, 1.000000e+00
  %2618 = fadd fast float %2615, 1.000000e+00
  %2619 = fmul fast float %2616, %2566
  %2620 = fmul fast float %2617, %2567
  %2621 = fmul fast float %2618, %2568
  br label %2652

; <label>:2622                                    ; preds = %2607
  %2623 = icmp eq i32 %2572, 2
  br i1 %2623, label %2624, label %2652

; <label>:2624                                    ; preds = %2622
  %2625 = call float @dx.op.unary.f32(i32 24, float %2411)  ; Sqrt(value)
  %2626 = call float @dx.op.unary.f32(i32 24, float %2412)  ; Sqrt(value)
  %2627 = call float @dx.op.unary.f32(i32 24, float %2413)  ; Sqrt(value)
  %2628 = fadd fast float %2625, -5.000000e-01
  %2629 = fadd fast float %2626, -5.000000e-01
  %2630 = fadd fast float %2627, -5.000000e-01
  %2631 = fmul fast float %2628, %2577
  %2632 = fmul fast float %2629, %2577
  %2633 = fmul fast float %2630, %2577
  %2634 = fadd fast float %2631, 5.000000e-01
  %2635 = fadd fast float %2632, 5.000000e-01
  %2636 = fadd fast float %2633, 5.000000e-01
  %2637 = fmul fast float %2634, 2.000000e+00
  %2638 = fsub fast float 1.000000e+00, %2637
  %2639 = fmul fast float %2638, %2566
  %2640 = fadd fast float %2639, %2637
  %2641 = fmul fast float %2640, %2566
  %2642 = fmul fast float %2635, 2.000000e+00
  %2643 = fsub fast float 1.000000e+00, %2642
  %2644 = fmul fast float %2643, %2567
  %2645 = fadd fast float %2644, %2642
  %2646 = fmul fast float %2645, %2567
  %2647 = fmul fast float %2636, 2.000000e+00
  %2648 = fsub fast float 1.000000e+00, %2647
  %2649 = fmul fast float %2648, %2568
  %2650 = fadd fast float %2649, %2647
  %2651 = fmul fast float %2650, %2568
  br label %2652

; <label>:2652                                    ; preds = %2624, %2622, %2609, %2579, %2565
  %2653 = phi float [ %2566, %2565 ], [ %2641, %2624 ], [ %2566, %2622 ], [ %2619, %2609 ], [ %2589, %2579 ]
  %2654 = phi float [ %2567, %2565 ], [ %2646, %2624 ], [ %2567, %2622 ], [ %2620, %2609 ], [ %2590, %2579 ]
  %2655 = phi float [ %2568, %2565 ], [ %2651, %2624 ], [ %2568, %2622 ], [ %2621, %2609 ], [ %2591, %2579 ]
  %2656 = phi float [ %2569, %2565 ], [ %2569, %2624 ], [ %2569, %2622 ], [ %2569, %2609 ], [ %2601, %2579 ]
  %2657 = phi float [ %2570, %2565 ], [ %2570, %2624 ], [ %2570, %2622 ], [ %2570, %2609 ], [ %2602, %2579 ]
  %2658 = phi float [ %2571, %2565 ], [ %2571, %2624 ], [ %2571, %2622 ], [ %2571, %2609 ], [ %2603, %2579 ]
  %2659 = phi float [ %2005, %2565 ], [ %2005, %2624 ], [ %2005, %2622 ], [ %2005, %2609 ], [ %2594, %2579 ]
  %2660 = phi float [ %2008, %2565 ], [ %2008, %2624 ], [ %2008, %2622 ], [ %2008, %2609 ], [ %2606, %2579 ]
  %2661 = and i32 %2543, 12
  %2662 = icmp eq i32 %2661, 12
  br i1 %2662, label %2735, label %2663

; <label>:2663                                    ; preds = %2652
  %2664 = and i32 %2543, 2097184
  %2665 = icmp eq i32 %2664, 2097184
  %2666 = select i1 %2665, float %2191, float 0.000000e+00
  %2667 = and i32 %2543, 4194336
  %2668 = icmp eq i32 %2667, 4194336
  %2669 = select i1 %2668, float %2191, float 0.000000e+00
  %2670 = and i32 %2543, 8388640
  %2671 = icmp eq i32 %2670, 8388640
  %2672 = select i1 %2671, float %2191, float 0.000000e+00
  %2673 = icmp eq i32 %2661, 0
  br i1 %2673, label %2674, label %2687

; <label>:2674                                    ; preds = %2663
  %2675 = fsub fast float %2492, %1997
  %2676 = fsub fast float %2493, %1998
  %2677 = fmul fast float %2666, %2675
  %2678 = fmul fast float %2666, %2676
  %2679 = fadd fast float %2677, %1997
  %2680 = fadd fast float %2678, %1998
  %2681 = fsub fast float %2494, %2007
  %2682 = fmul fast float %2669, %2681
  %2683 = fadd fast float %2682, %2007
  %2684 = fsub fast float %2491, %2006
  %2685 = fmul fast float %2672, %2684
  %2686 = fadd fast float %2685, %2006
  br label %2735

; <label>:2687                                    ; preds = %2663
  %2688 = icmp eq i32 %2661, 4
  br i1 %2688, label %2689, label %2721

; <label>:2689                                    ; preds = %2687
  %2690 = fmul fast float %2666, %2492
  %2691 = fmul fast float %2666, %2493
  %2692 = fadd fast float %2690, %1997
  %2693 = fadd fast float %2691, %1998
  %2694 = call float @dx.op.binary.f32(i32 36, float %2007, float %2494)  ; FMin(a,b)
  %2695 = fsub fast float %2694, %2007
  %2696 = fmul fast float %2695, %2669
  %2697 = fadd fast float %2696, %2007
  %2698 = fadd fast float %2491, %2006
  %2699 = fmul fast float %2698, 0x3FF337FAE0000000
  %2700 = fmul fast float %2006, %2006
  %2701 = fmul fast float %2491, %2491
  %2702 = fadd fast float %2701, %2700
  %2703 = fmul fast float %2702, 0x3FE5152B00000000
  %2704 = fmul fast float %2006, 0xBFCC1F85E0000000
  %2705 = fmul fast float %2704, %2491
  %2706 = fadd fast float %2705, 0xBFE1363700000000
  %2707 = fadd fast float %2706, %2699
  %2708 = fsub fast float %2707, %2703
  %2709 = fmul fast float %2698, 0x3FBA6F0D00000000
  %2710 = fmul fast float %2702, 0x3FD0432880000000
  %2711 = fmul fast float %2006, 0xBFEF110800000000
  %2712 = fmul fast float %2711, %2491
  %2713 = fadd fast float %2712, 1.000000e+00
  %2714 = fsub fast float %2713, %2709
  %2715 = fadd fast float %2714, %2710
  %2716 = fdiv fast float %2708, %2715
  %2717 = call float @dx.op.unary.f32(i32 7, float %2716)  ; Saturate(value)
  %2718 = fsub fast float %2717, %2006
  %2719 = fmul fast float %2718, %2672
  %2720 = fadd fast float %2719, %2006
  br label %2735

; <label>:2721                                    ; preds = %2687
  %2722 = icmp eq i32 %2661, 8
  br i1 %2722, label %2723, label %2735

; <label>:2723                                    ; preds = %2721
  %2724 = fmul fast float %2666, %2492
  %2725 = fmul fast float %2666, %2493
  %2726 = fadd fast float %2724, %1997
  %2727 = fadd fast float %2725, %1998
  %2728 = call float @dx.op.binary.f32(i32 36, float %2007, float %2494)  ; FMin(a,b)
  %2729 = fsub fast float %2728, %2007
  %2730 = fmul fast float %2729, %2669
  %2731 = fadd fast float %2730, %2007
  %2732 = fsub fast float %2491, %2006
  %2733 = fmul fast float %2672, %2732
  %2734 = fadd fast float %2733, %2006
  br label %2735

; <label>:2735                                    ; preds = %2723, %2721, %2689, %2674, %2652, %2190, %2009, %1996
  %2736 = phi float [ %1997, %2652 ], [ %1997, %2190 ], [ %1997, %1996 ], [ %2726, %2723 ], [ %1997, %2721 ], [ %2692, %2689 ], [ %2679, %2674 ], [ %1997, %2009 ]
  %2737 = phi float [ %1998, %2652 ], [ %1998, %2190 ], [ %1998, %1996 ], [ %2727, %2723 ], [ %1998, %2721 ], [ %2693, %2689 ], [ %2680, %2674 ], [ %1998, %2009 ]
  %2738 = phi float [ %2653, %2652 ], [ %1999, %2190 ], [ %1999, %1996 ], [ %2653, %2723 ], [ %2653, %2721 ], [ %2653, %2689 ], [ %2653, %2674 ], [ %1999, %2009 ]
  %2739 = phi float [ %2654, %2652 ], [ %2000, %2190 ], [ %2000, %1996 ], [ %2654, %2723 ], [ %2654, %2721 ], [ %2654, %2689 ], [ %2654, %2674 ], [ %2000, %2009 ]
  %2740 = phi float [ %2655, %2652 ], [ %2001, %2190 ], [ %2001, %1996 ], [ %2655, %2723 ], [ %2655, %2721 ], [ %2655, %2689 ], [ %2655, %2674 ], [ %2001, %2009 ]
  %2741 = phi float [ %2656, %2652 ], [ %2002, %2190 ], [ %2002, %1996 ], [ %2656, %2723 ], [ %2656, %2721 ], [ %2656, %2689 ], [ %2656, %2674 ], [ %2002, %2009 ]
  %2742 = phi float [ %2657, %2652 ], [ %2003, %2190 ], [ %2003, %1996 ], [ %2657, %2723 ], [ %2657, %2721 ], [ %2657, %2689 ], [ %2657, %2674 ], [ %2003, %2009 ]
  %2743 = phi float [ %2658, %2652 ], [ %2004, %2190 ], [ %2004, %1996 ], [ %2658, %2723 ], [ %2658, %2721 ], [ %2658, %2689 ], [ %2658, %2674 ], [ %2004, %2009 ]
  %2744 = phi float [ %2659, %2652 ], [ %2005, %2190 ], [ %2005, %1996 ], [ %2659, %2723 ], [ %2659, %2721 ], [ %2659, %2689 ], [ %2659, %2674 ], [ %2005, %2009 ]
  %2745 = phi float [ %2006, %2652 ], [ %2006, %2190 ], [ %2006, %1996 ], [ %2734, %2723 ], [ %2006, %2721 ], [ %2720, %2689 ], [ %2686, %2674 ], [ %2006, %2009 ]
  %2746 = phi float [ %2007, %2652 ], [ %2007, %2190 ], [ %2007, %1996 ], [ %2731, %2723 ], [ %2007, %2721 ], [ %2697, %2689 ], [ %2683, %2674 ], [ %2007, %2009 ]
  %2747 = phi float [ %2660, %2652 ], [ %2008, %2190 ], [ %2008, %1996 ], [ %2660, %2723 ], [ %2660, %2721 ], [ %2660, %2689 ], [ %2660, %2674 ], [ %2008, %2009 ]
  br i1 %659, label %3474, label %2748

; <label>:2748                                    ; preds = %2735
  %2749 = icmp ult i32 %713, 4
  %2750 = add i32 %59, 72
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = add i32 %59, 76
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = or i32 %2755, %2752
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %3474, label %2758

; <label>:2758                                    ; preds = %2748
  %2759 = and i32 %2752, 262144
  %2760 = icmp ne i32 %2759, 0
  %2761 = select i1 %2760, float %66, float 1.000000e+00
  %2762 = select i1 %2760, float %67, float 0.000000e+00
  %2763 = select i1 %2760, float %68, float 0.000000e+00
  %2764 = select i1 %2760, float %69, float 1.000000e+00
  %2765 = select i1 %2760, float %70, float %98
  %2766 = select i1 %2760, float %71, float %99
  %2767 = add i32 %59, 332
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.i32 %2768, 0
  %2770 = lshr i32 %2769, 16
  %2771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2770)  ; LegacyF16ToF32(value)
  %2772 = fmul fast float %2771, 0x3F50624DE0000000
  %2773 = add i32 %59, 136
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = lshr i32 %2775, 16
  %2777 = and i32 %2776, 255
  %2778 = lshr i32 %2775, 24
  %2779 = add i32 %59, 340
  %2780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2779, i32 undef)  ; BufferLoad(srv,index,wot)
  %2781 = extractvalue %dx.types.ResRet.i32 %2780, 0
  %2782 = and i32 %2781, 65535
  %2783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2782)  ; LegacyF16ToF32(value)
  %2784 = lshr i32 %2781, 16
  %2785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2784)  ; LegacyF16ToF32(value)
  %2786 = add i32 %59, 80
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = lshr i32 %2788, 22
  %2790 = shl nuw nsw i32 %2789, 5
  %2791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2790)  ; LegacyF16ToF32(value)
  %2792 = shl i32 %2788, 4
  %2793 = and i32 %2792, 32752
  %2794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2793)  ; LegacyF16ToF32(value)
  %2795 = lshr i32 %2788, 7
  %2796 = and i32 %2795, 32752
  %2797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2796)  ; LegacyF16ToF32(value)
  %2798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2799 = extractvalue %dx.types.CBufRet.f32 %2798, 3
  %2800 = fmul fast float %2799, 1.000000e+03
  %2801 = fmul fast float %2800, %648
  %2802 = call float @dx.op.unary.f32(i32 22, float %2801)  ; Frc(value)
  %2803 = fadd fast float %2802, %636
  %2804 = fmul fast float %2800, %650
  %2805 = call float @dx.op.unary.f32(i32 22, float %2804)  ; Frc(value)
  %2806 = fadd fast float %2805, %637
  %2807 = fmul fast float %2772, %2800
  %2808 = call float @dx.op.unary.f32(i32 22, float %2807)  ; Frc(value)
  %2809 = fmul fast float %2808, 0x401921FB60000000
  %2810 = fadd fast float %2809, %2791
  %2811 = call float @dx.op.unary.f32(i32 13, float %2810)  ; Sin(value)
  %2812 = call float @dx.op.unary.f32(i32 12, float %2810)  ; Cos(value)
  %2813 = fsub fast float -0.000000e+00, %2811
  %2814 = fadd fast float %2765, -5.000000e-01
  %2815 = fadd fast float %2766, -5.000000e-01
  %2816 = fmul fast float %2783, %2814
  %2817 = fmul fast float %2785, %2815
  %2818 = fadd fast float %2816, 5.000000e-01
  %2819 = fadd fast float %2817, 5.000000e-01
  %2820 = fmul fast float %2794, %2818
  %2821 = fmul fast float %2797, %2819
  %2822 = fmul fast float %2812, %2820
  %2823 = call float @dx.op.tertiary.f32(i32 46, float %2813, float %2821, float %2822)  ; FMad(a,b,c)
  %2824 = fmul fast float %2811, %2820
  %2825 = call float @dx.op.tertiary.f32(i32 46, float %2812, float %2821, float %2824)  ; FMad(a,b,c)
  %2826 = fadd fast float %2803, %2823
  %2827 = fadd fast float %2806, %2825
  %2828 = icmp ugt i32 %2777, 1
  %2829 = icmp ugt i32 %2775, 33554431
  %2830 = or i1 %2829, %2828
  br i1 %2830, label %2831, label %2856

; <label>:2831                                    ; preds = %2758
  %2832 = add i32 %59, 276
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = lshr i32 %2834, 16
  %2836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2835)  ; LegacyF16ToF32(value)
  %2837 = fmul fast float %2799, %2836
  %2838 = call float @dx.op.unary.f32(i32 22, float %2837)  ; Frc(value)
  %2839 = mul nuw nsw i32 %2777, %2778
  %2840 = uitofp i32 %2839 to float
  %2841 = fmul fast float %2838, %2840
  %2842 = call float @dx.op.unary.f32(i32 27, float %2841)  ; Round_ni(value)
  %2843 = fptoui float %2842 to i32
  %2844 = urem i32 %2843, %2777
  %2845 = udiv i32 %2843, %2778
  %2846 = call float @dx.op.unary.f32(i32 22, float %2826)  ; Frc(value)
  %2847 = call float @dx.op.unary.f32(i32 22, float %2827)  ; Frc(value)
  %2848 = uitofp i32 %2844 to float
  %2849 = uitofp i32 %2845 to float
  %2850 = fadd fast float %2846, %2848
  %2851 = fadd fast float %2847, %2849
  %2852 = uitofp i32 %2777 to float
  %2853 = uitofp i32 %2778 to float
  %2854 = fdiv fast float %2850, %2852
  %2855 = fdiv fast float %2851, %2853
  br label %2856

; <label>:2856                                    ; preds = %2831, %2758
  %2857 = phi float [ %2854, %2831 ], [ %2826, %2758 ]
  %2858 = phi float [ %2855, %2831 ], [ %2827, %2758 ]
  %2859 = and i32 %2752, 256
  %2860 = icmp eq i32 %2859, 0
  br i1 %2860, label %2907, label %2861

; <label>:2861                                    ; preds = %2856
  %2862 = add i32 %59, 564
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2862, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = add i32 %2864, 0
  %2866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2867 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2866, %dx.types.Handle %117, float %2857, float %2858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2868 = extractvalue %dx.types.ResRet.f32 %2867, 0
  %2869 = add i32 %59, 148
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = shl i32 %2871, 4
  %2873 = and i32 %2872, 32752
  %2874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2873)  ; LegacyF16ToF32(value)
  %2875 = lshr i32 %2871, 7
  %2876 = and i32 %2875, 32752
  %2877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2876)  ; LegacyF16ToF32(value)
  %2878 = fsub fast float 1.000000e+00, %708
  %2879 = call float @dx.op.binary.f32(i32 35, float %2878, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2880 = bitcast float %708 to i32
  %2881 = sitofp i32 %2880 to float
  %2882 = fadd fast float %2881, 0xC1CFBF8940000000
  %2883 = fmul fast float %2877, %2882
  %2884 = fadd fast float %2883, 0x41CFBF8940000000
  %2885 = fptosi float %2884 to i32
  %2886 = bitcast i32 %2885 to float
  %2887 = bitcast float %2879 to i32
  %2888 = sitofp i32 %2887 to float
  %2889 = fadd fast float %2888, 0xC1CFBF8940000000
  %2890 = fmul fast float %2889, %2877
  %2891 = fadd fast float %2890, 0x41CFBF8940000000
  %2892 = fptosi float %2891 to i32
  %2893 = bitcast i32 %2892 to float
  %2894 = fmul fast float %2886, %2874
  %2895 = fmul fast float %2893, %2874
  %2896 = fsub fast float %2879, %2894
  %2897 = fadd fast float %2895, %2879
  %2898 = call float @dx.op.unary.f32(i32 7, float %2896)  ; Saturate(value)
  %2899 = call float @dx.op.unary.f32(i32 7, float %2897)  ; Saturate(value)
  %2900 = fsub fast float %2868, %2898
  %2901 = fsub fast float %2899, %2898
  %2902 = bitcast float %2901 to i32
  %2903 = sub nsw i32 2129859010, %2902
  %2904 = bitcast i32 %2903 to float
  %2905 = fmul fast float %2904, %2900
  %2906 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  br label %2907

; <label>:2907                                    ; preds = %2861, %2856
  %2908 = phi float [ %2906, %2861 ], [ %708, %2856 ]
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = and i32 %2910, 128
  %2912 = icmp eq i32 %2911, 0
  br i1 %2912, label %2929, label %2913

; <label>:2913                                    ; preds = %2907
  %2914 = add i32 %59, 548
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = add i32 %2916, 0
  %2918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2917, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2919 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2918, %dx.types.Handle %117, float %2857, float %2858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2920 = extractvalue %dx.types.ResRet.f32 %2919, 0
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = and i32 %2922, 524288
  %2924 = icmp ne i32 %2923, 0
  %2925 = fcmp fast ogt float %2920, 0x3FE0101020000000
  %2926 = select i1 %2925, float 1.000000e+00, float 0.000000e+00
  %2927 = select i1 %2924, float %2926, float %2920
  %2928 = fmul fast float %2927, %2908
  br label %2929

; <label>:2929                                    ; preds = %2913, %2907
  %2930 = phi float [ %2928, %2913 ], [ %2908, %2907 ]
  %2931 = fcmp fast ult float %2930, 0x3F70101020000000
  br i1 %2931, label %3474, label %2932

; <label>:2932                                    ; preds = %2929
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 16
  %2936 = icmp eq i32 %2935, 0
  br i1 %2936, label %3135, label %2937

; <label>:2937                                    ; preds = %2932
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = add i32 %59, 500
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = add i32 %2942, 0
  %2944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2943, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2945 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2944, %dx.types.Handle %116, float %2857, float %2858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2946 = extractvalue %dx.types.ResRet.f32 %2945, 0
  %2947 = extractvalue %dx.types.ResRet.f32 %2945, 1
  %2948 = extractvalue %dx.types.ResRet.f32 %2945, 2
  %2949 = extractvalue %dx.types.ResRet.f32 %2945, 3
  %2950 = and i32 %2939, 255
  %2951 = uitofp i32 %2950 to float
  %2952 = lshr i32 %2939, 8
  %2953 = and i32 %2952, 255
  %2954 = uitofp i32 %2953 to float
  %2955 = fmul fast float %2949, %2951
  %2956 = fadd fast float %2955, %2954
  %2957 = fmul fast float %2956, 0x3F70101000000000
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = and i32 %2959, 512
  %2961 = icmp eq i32 %2960, 0
  br i1 %2961, label %2970, label %2962

; <label>:2962                                    ; preds = %2937
  %2963 = add i32 %59, 584
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = add i32 %2965, 0
  %2967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2966, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2968 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2967, %dx.types.Handle %117, float %2857, float %2858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  br label %2970

; <label>:2970                                    ; preds = %2962, %2937
  %2971 = phi float [ %2969, %2962 ], [ 1.000000e+00, %2937 ]
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = and i32 %2973, 33554432
  %2975 = icmp eq i32 %2974, 0
  br i1 %2975, label %3082, label %2976

; <label>:2976                                    ; preds = %2970
  %2977 = add i32 %59, 272
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = and i32 %2979, 65535
  %2981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2980)  ; LegacyF16ToF32(value)
  %2982 = lshr i32 %2979, 16
  %2983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2982)  ; LegacyF16ToF32(value)
  %2984 = add i32 %59, 276
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = and i32 %2986, 65535
  %2988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2987)  ; LegacyF16ToF32(value)
  %2989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.i32 %2989, 0
  %2991 = lshr i32 %2990, 24
  %2992 = uitofp i32 %2991 to float
  %2993 = fmul fast float %2992, 0x3F70101020000000
  %2994 = and i32 %2990, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = lshr i32 %2990, 8
  %2998 = and i32 %2997, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = lshr i32 %2990, 16
  %3002 = and i32 %3001, 255
  %3003 = uitofp i32 %3002 to float
  %3004 = fmul fast float %3003, 0x3F70101020000000
  %3005 = add i32 %59, 268
  %3006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3005, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.i32 %3006, 0
  %3008 = lshr i32 %3007, 24
  %3009 = uitofp i32 %3008 to float
  %3010 = fmul fast float %3009, 0x3F70101020000000
  %3011 = and i32 %3007, 255
  %3012 = uitofp i32 %3011 to float
  %3013 = fmul fast float %3012, 0x3F70101020000000
  %3014 = lshr i32 %3007, 8
  %3015 = and i32 %3014, 255
  %3016 = uitofp i32 %3015 to float
  %3017 = fmul fast float %3016, 0x3F70101020000000
  %3018 = lshr i32 %3007, 16
  %3019 = and i32 %3018, 255
  %3020 = uitofp i32 %3019 to float
  %3021 = fmul fast float %3020, 0x3F70101020000000
  %3022 = bitcast float %2946 to i32
  %3023 = ashr i32 %3022, 1
  %3024 = sub nsw i32 1597463174, %3023
  %3025 = bitcast i32 %3024 to float
  %3026 = fmul fast float %2946, 5.000000e-01
  %3027 = fmul fast float %3025, %3025
  %3028 = fmul fast float %3027, %3026
  %3029 = fsub fast float 1.500000e+00, %3028
  %3030 = fmul fast float %3025, %2946
  %3031 = fmul fast float %3030, %3029
  %3032 = bitcast float %2947 to i32
  %3033 = ashr i32 %3032, 1
  %3034 = sub nsw i32 1597463174, %3033
  %3035 = bitcast i32 %3034 to float
  %3036 = fmul fast float %2947, 5.000000e-01
  %3037 = fmul fast float %3035, %3035
  %3038 = fmul fast float %3037, %3036
  %3039 = fsub fast float 1.500000e+00, %3038
  %3040 = fmul fast float %3035, %2947
  %3041 = fmul fast float %3040, %3039
  %3042 = bitcast float %2948 to i32
  %3043 = ashr i32 %3042, 1
  %3044 = sub nsw i32 1597463174, %3043
  %3045 = bitcast i32 %3044 to float
  %3046 = fmul fast float %2948, 5.000000e-01
  %3047 = fmul fast float %3045, %3045
  %3048 = fmul fast float %3047, %3046
  %3049 = fsub fast float 1.500000e+00, %3048
  %3050 = fmul fast float %3045, %2948
  %3051 = fmul fast float %3050, %3049
  %3052 = fsub fast float %3031, %3013
  %3053 = fsub fast float %3041, %3017
  %3054 = fsub fast float %3051, %3021
  %3055 = fmul fast float %3052, %2981
  %3056 = fmul fast float %3053, %2983
  %3057 = fmul fast float %3054, %2988
  %3058 = fadd fast float %3055, %2996
  %3059 = fadd fast float %3056, %3000
  %3060 = fadd fast float %3057, %3004
  %3061 = call float @dx.op.unary.f32(i32 7, float %3058)  ; Saturate(value)
  %3062 = call float @dx.op.unary.f32(i32 7, float %3059)  ; Saturate(value)
  %3063 = call float @dx.op.unary.f32(i32 7, float %3060)  ; Saturate(value)
  %3064 = fmul fast float %3061, %3061
  %3065 = fmul fast float %3062, %3062
  %3066 = fmul fast float %3063, %3063
  %3067 = fsub fast float %3064, %2946
  %3068 = fsub fast float %3065, %2947
  %3069 = fsub fast float %3066, %2948
  %3070 = fmul fast float %3067, %2971
  %3071 = fmul fast float %3068, %2971
  %3072 = fmul fast float %3069, %2971
  %3073 = fadd fast float %3070, %2946
  %3074 = fadd fast float %3071, %2947
  %3075 = fadd fast float %3072, %2948
  %3076 = fadd fast float %2993, %2957
  %3077 = fsub fast float %3076, %3010
  %3078 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  %3079 = fsub fast float %3078, %2957
  %3080 = fmul fast float %3079, %2971
  %3081 = fadd fast float %3080, %2957
  br label %3135

; <label>:3082                                    ; preds = %2970
  %3083 = and i32 %2973, 134217728
  %3084 = icmp eq i32 %3083, 0
  br i1 %3084, label %3119, label %3085

; <label>:3085                                    ; preds = %3082
  %3086 = call float @dx.op.unary.f32(i32 24, float %624)  ; Sqrt(value)
  %3087 = call float @dx.op.unary.f32(i32 24, float %625)  ; Sqrt(value)
  %3088 = call float @dx.op.unary.f32(i32 24, float %626)  ; Sqrt(value)
  %3089 = fadd fast float %3086, -5.000000e-01
  %3090 = fadd fast float %3087, -5.000000e-01
  %3091 = fadd fast float %3088, -5.000000e-01
  %3092 = fmul fast float %3089, %2971
  %3093 = fmul fast float %3090, %2971
  %3094 = fmul fast float %3091, %2971
  %3095 = fadd fast float %3092, 5.000000e-01
  %3096 = fadd fast float %3093, 5.000000e-01
  %3097 = fadd fast float %3094, 5.000000e-01
  %3098 = call float @dx.op.unary.f32(i32 24, float %2946)  ; Sqrt(value)
  %3099 = call float @dx.op.unary.f32(i32 24, float %2947)  ; Sqrt(value)
  %3100 = call float @dx.op.unary.f32(i32 24, float %2948)  ; Sqrt(value)
  %3101 = fmul fast float %3095, 2.000000e+00
  %3102 = fsub fast float 1.000000e+00, %3101
  %3103 = fmul fast float %3102, %3098
  %3104 = fadd fast float %3103, %3101
  %3105 = fmul fast float %3104, %3098
  %3106 = fmul fast float %3096, 2.000000e+00
  %3107 = fsub fast float 1.000000e+00, %3106
  %3108 = fmul fast float %3107, %3099
  %3109 = fadd fast float %3108, %3106
  %3110 = fmul fast float %3109, %3099
  %3111 = fmul fast float %3097, 2.000000e+00
  %3112 = fsub fast float 1.000000e+00, %3111
  %3113 = fmul fast float %3112, %3100
  %3114 = fadd fast float %3113, %3111
  %3115 = fmul fast float %3114, %3100
  %3116 = fmul fast float %3105, %3105
  %3117 = fmul fast float %3110, %3110
  %3118 = fmul fast float %3115, %3115
  br label %3135

; <label>:3119                                    ; preds = %3082
  %3120 = fmul fast float %624, %624
  %3121 = fmul fast float %625, %625
  %3122 = fmul fast float %626, %626
  %3123 = fadd fast float %3120, -1.000000e+00
  %3124 = fadd fast float %3121, -1.000000e+00
  %3125 = fadd fast float %3122, -1.000000e+00
  %3126 = fmul fast float %2971, %3123
  %3127 = fmul fast float %2971, %3124
  %3128 = fmul fast float %2971, %3125
  %3129 = fadd fast float %3126, 1.000000e+00
  %3130 = fadd fast float %3127, 1.000000e+00
  %3131 = fadd fast float %3128, 1.000000e+00
  %3132 = fmul fast float %3129, %2946
  %3133 = fmul fast float %3130, %2947
  %3134 = fmul fast float %3131, %2948
  br label %3135

; <label>:3135                                    ; preds = %3119, %3085, %2976, %2932
  %3136 = phi float [ %3081, %2976 ], [ %2957, %3085 ], [ %2957, %3119 ], [ 0x3FA23C0BE0000000, %2932 ]
  %3137 = phi float [ %3073, %2976 ], [ %3116, %3085 ], [ %3132, %3119 ], [ 1.000000e+00, %2932 ]
  %3138 = phi float [ %3074, %2976 ], [ %3117, %3085 ], [ %3133, %3119 ], [ 1.000000e+00, %2932 ]
  %3139 = phi float [ %3075, %2976 ], [ %3118, %3085 ], [ %3134, %3119 ], [ 1.000000e+00, %2932 ]
  %3140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.i32 %3140, 1
  %3142 = and i32 %3141, 1
  %3143 = icmp ne i32 %3142, 0
  %3144 = add i32 %59, 356
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3144, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, 32
  %3148 = icmp ne i32 %3147, 0
  %3149 = and i1 %3143, %3148
  %3150 = select i1 %3149, float 1.000000e+00, float %3137
  %3151 = select i1 %3149, float 0x3FD3333340000000, float %3138
  %3152 = select i1 %3149, float 0x3FD3333340000000, float %3139
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 32
  %3156 = icmp eq i32 %3155, 0
  br i1 %3156, label %3229, label %3157

; <label>:3157                                    ; preds = %3135
  %3158 = add i32 %59, 140
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3158, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = add i32 %59, 516
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = add i32 %3163, 0
  %3165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3166 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3165, %dx.types.Handle %116, float %2857, float %2858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3167 = extractvalue %dx.types.ResRet.f32 %3166, 0
  %3168 = extractvalue %dx.types.ResRet.f32 %3166, 1
  %3169 = extractvalue %dx.types.ResRet.f32 %3166, 2
  %3170 = extractvalue %dx.types.ResRet.f32 %3166, 3
  %3171 = and i32 %3160, 255
  %3172 = uitofp i32 %3171 to float
  %3173 = lshr i32 %3160, 8
  %3174 = and i32 %3173, 255
  %3175 = uitofp i32 %3174 to float
  %3176 = lshr i32 %3160, 16
  %3177 = and i32 %3176, 255
  %3178 = uitofp i32 %3177 to float
  %3179 = fmul fast float %3178, 0x3F70101000000000
  %3180 = fmul fast float %3167, %3172
  %3181 = fadd fast float %3180, %3175
  %3182 = fmul fast float %3181, 0x3F70101000000000
  %3183 = fadd fast float %3168, -5.000000e-01
  %3184 = fadd fast float %3170, -5.000000e-01
  %3185 = fmul fast float %3183, %3179
  %3186 = fmul fast float %3184, %3179
  %3187 = fadd fast float %3185, 5.000000e-01
  %3188 = fadd fast float %3186, 5.000000e-01
  %3189 = fmul fast float %3187, 2.000000e+00
  %3190 = fadd fast float %3189, -1.000000e+00
  %3191 = fmul fast float %3188, 2.000000e+00
  %3192 = fadd fast float %3191, -1.000000e+00
  %3193 = fadd fast float %3190, %3192
  %3194 = fmul fast float %3193, 5.000000e-01
  %3195 = fsub fast float %3190, %3192
  %3196 = fmul fast float %3195, 5.000000e-01
  %3197 = call float @dx.op.unary.f32(i32 6, float %3194)  ; FAbs(value)
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = call float @dx.op.unary.f32(i32 6, float %3196)  ; FAbs(value)
  %3200 = fsub fast float %3198, %3199
  %3201 = call float @dx.op.dot3.f32(i32 55, float %3194, float %3196, float %3200, float %3194, float %3196, float %3200)  ; Dot3(ax,ay,az,bx,by,bz)
  %3202 = call float @dx.op.unary.f32(i32 25, float %3201)  ; Rsqrt(value)
  %3203 = fmul fast float %3194, %3202
  %3204 = fmul fast float %3196, %3202
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 67108864
  %3208 = icmp eq i32 %3207, 0
  br i1 %3208, label %3225, label %3209

; <label>:3209                                    ; preds = %3157
  %3210 = add i32 %59, 328
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, 65535
  %3214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3213)  ; LegacyF16ToF32(value)
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = and i32 %3216, 65535
  %3218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3217)  ; LegacyF16ToF32(value)
  %3219 = lshr i32 %3212, 16
  %3220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3219)  ; LegacyF16ToF32(value)
  %3221 = fsub fast float %3182, %3220
  %3222 = fmul fast float %3221, %3214
  %3223 = fadd fast float %3222, %3218
  %3224 = call float @dx.op.unary.f32(i32 7, float %3223)  ; Saturate(value)
  br label %3225

; <label>:3225                                    ; preds = %3209, %3157
  %3226 = phi float [ %3224, %3209 ], [ %3182, %3157 ]
  %3227 = call float @dx.op.dot2.f32(i32 54, float %3203, float %3204, float %2761, float %2762)  ; Dot2(ax,ay,bx,by)
  %3228 = call float @dx.op.dot2.f32(i32 54, float %3203, float %3204, float %2763, float %2764)  ; Dot2(ax,ay,bx,by)
  br label %3229

; <label>:3229                                    ; preds = %3225, %3135
  %3230 = phi float [ %3226, %3225 ], [ 0x3FD6666660000000, %3135 ]
  %3231 = phi float [ %3227, %3225 ], [ 0.000000e+00, %3135 ]
  %3232 = phi float [ %3228, %3225 ], [ 0.000000e+00, %3135 ]
  %3233 = phi float [ %3169, %3225 ], [ 1.000000e+00, %3135 ]
  %3234 = add i32 %59, 208
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = lshr i32 %3236, 22
  %3238 = shl nuw nsw i32 %3237, 5
  %3239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3238)  ; LegacyF16ToF32(value)
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = and i32 %3241, 64
  %3243 = icmp eq i32 %3242, 0
  br i1 %3243, label %3277, label %3244

; <label>:3244                                    ; preds = %3229
  %3245 = add i32 %59, 532
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3245, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = add i32 %3247, 0
  %3249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3248, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = and i32 %3251, 131072
  %3253 = icmp eq i32 %3252, 0
  %3254 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3249, %dx.types.Handle %116, float %2857, float %2858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3255 = extractvalue %dx.types.ResRet.f32 %3254, 0
  %3256 = extractvalue %dx.types.ResRet.f32 %3254, 1
  %3257 = extractvalue %dx.types.ResRet.f32 %3254, 2
  %3258 = fmul fast float %607, %3255
  %3259 = fmul fast float %608, %3256
  %3260 = fmul fast float %609, %3257
  br i1 %3253, label %3267, label %3261

; <label>:3261                                    ; preds = %3244
  %3262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3263 = extractvalue %dx.types.CBufRet.f32 %3262, 0
  %3264 = fmul fast float %3263, %3258
  %3265 = fmul fast float %3263, %3259
  %3266 = fmul fast float %3263, %3260
  br label %3267

; <label>:3267                                    ; preds = %3261, %3244
  %3268 = phi float [ %3264, %3261 ], [ %3258, %3244 ]
  %3269 = phi float [ %3265, %3261 ], [ %3259, %3244 ]
  %3270 = phi float [ %3266, %3261 ], [ %3260, %3244 ]
  %3271 = fmul fast float %3268, %3239
  %3272 = select i1 %275, float %3271, float %3268
  %3273 = call float @dx.op.dot3.f32(i32 55, float %3272, float %3269, float %3270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3274 = select i1 %275, float 0.000000e+00, float %3268
  %3275 = select i1 %275, float %3273, float %3269
  %3276 = select i1 %275, float 0.000000e+00, float %3270
  br label %3277

; <label>:3277                                    ; preds = %3267, %3229
  %3278 = phi float [ %3274, %3267 ], [ 0.000000e+00, %3229 ]
  %3279 = phi float [ %3275, %3267 ], [ 0.000000e+00, %3229 ]
  %3280 = phi float [ %3276, %3267 ], [ 0.000000e+00, %3229 ]
  %3281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.i32 %3281, 0
  %3283 = add i32 %59, 144
  %3284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.i32 %3284, 0
  %3286 = and i32 %3285, 255
  %3287 = uitofp i32 %3286 to float
  %3288 = lshr i32 %3285, 8
  %3289 = and i32 %3288, 255
  %3290 = uitofp i32 %3289 to float
  %3291 = call float @dx.op.dot3.f32(i32 55, float %3150, float %3151, float %3152, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3292 = fmul fast float %3290, %3291
  %3293 = fadd fast float %3292, %3287
  %3294 = fmul fast float %3293, 0x3F70101020000000
  %3295 = call float @dx.op.unary.f32(i32 7, float %3294)  ; Saturate(value)
  br i1 %2749, label %3296, label %3304

; <label>:3296                                    ; preds = %3277
  %3297 = fsub fast float 1.000000e+00, %2930
  %3298 = fmul fast float %3297, %2738
  %3299 = fmul fast float %3297, %2739
  %3300 = fmul fast float %3297, %2740
  %3301 = fmul fast float %3297, %2741
  %3302 = fmul fast float %3297, %2742
  %3303 = fmul fast float %3297, %2743
  br label %3304

; <label>:3304                                    ; preds = %3296, %3277
  %3305 = phi float [ %3298, %3296 ], [ %2738, %3277 ]
  %3306 = phi float [ %3299, %3296 ], [ %2739, %3277 ]
  %3307 = phi float [ %3300, %3296 ], [ %2740, %3277 ]
  %3308 = phi float [ %3301, %3296 ], [ %2741, %3277 ]
  %3309 = phi float [ %3302, %3296 ], [ %2742, %3277 ]
  %3310 = phi float [ %3303, %3296 ], [ %2743, %3277 ]
  %3311 = and i32 %3282, 3
  %3312 = icmp eq i32 %3311, 3
  br i1 %3312, label %3391, label %3313

; <label>:3313                                    ; preds = %3304
  %3314 = and i32 %3282, 16
  %3315 = icmp ne i32 %3314, 0
  %3316 = select i1 %3315, float %2930, float 0.000000e+00
  %3317 = icmp eq i32 %3311, 0
  br i1 %3317, label %3318, label %3346

; <label>:3318                                    ; preds = %3313
  %3319 = and i32 %3282, 64
  %3320 = icmp ne i32 %3319, 0
  %3321 = select i1 %3320, float %2930, float 0.000000e+00
  %3322 = fsub fast float %3150, %3305
  %3323 = fsub fast float %3151, %3306
  %3324 = fsub fast float %3152, %3307
  %3325 = fmul fast float %3316, %3322
  %3326 = fmul fast float %3316, %3323
  %3327 = fmul fast float %3316, %3324
  %3328 = fadd fast float %3325, %3305
  %3329 = fadd fast float %3326, %3306
  %3330 = fadd fast float %3327, %3307
  %3331 = fsub fast float %3136, %2744
  %3332 = fmul fast float %3316, %3331
  %3333 = fadd fast float %3332, %2744
  %3334 = fsub fast float %3278, %3308
  %3335 = fsub fast float %3279, %3309
  %3336 = fsub fast float %3280, %3310
  %3337 = fmul fast float %3321, %3334
  %3338 = fmul fast float %3321, %3335
  %3339 = fmul fast float %3321, %3336
  %3340 = fadd fast float %3337, %3308
  %3341 = fadd fast float %3338, %3309
  %3342 = fadd fast float %3339, %3310
  %3343 = fsub fast float %3295, %2747
  %3344 = fmul fast float %3316, %3343
  %3345 = fadd fast float %3344, %2747
  br label %3391

; <label>:3346                                    ; preds = %3313
  %3347 = icmp eq i32 %3311, 1
  br i1 %3347, label %3348, label %3361

; <label>:3348                                    ; preds = %3346
  %3349 = fadd fast float %3150, -1.000000e+00
  %3350 = fadd fast float %3151, -1.000000e+00
  %3351 = fadd fast float %3152, -1.000000e+00
  %3352 = fmul fast float %3316, %3349
  %3353 = fmul fast float %3316, %3350
  %3354 = fmul fast float %3316, %3351
  %3355 = fadd fast float %3352, 1.000000e+00
  %3356 = fadd fast float %3353, 1.000000e+00
  %3357 = fadd fast float %3354, 1.000000e+00
  %3358 = fmul fast float %3355, %3305
  %3359 = fmul fast float %3356, %3306
  %3360 = fmul fast float %3357, %3307
  br label %3391

; <label>:3361                                    ; preds = %3346
  %3362 = icmp eq i32 %3311, 2
  br i1 %3362, label %3363, label %3391

; <label>:3363                                    ; preds = %3361
  %3364 = call float @dx.op.unary.f32(i32 24, float %3150)  ; Sqrt(value)
  %3365 = call float @dx.op.unary.f32(i32 24, float %3151)  ; Sqrt(value)
  %3366 = call float @dx.op.unary.f32(i32 24, float %3152)  ; Sqrt(value)
  %3367 = fadd fast float %3364, -5.000000e-01
  %3368 = fadd fast float %3365, -5.000000e-01
  %3369 = fadd fast float %3366, -5.000000e-01
  %3370 = fmul fast float %3367, %3316
  %3371 = fmul fast float %3368, %3316
  %3372 = fmul fast float %3369, %3316
  %3373 = fadd fast float %3370, 5.000000e-01
  %3374 = fadd fast float %3371, 5.000000e-01
  %3375 = fadd fast float %3372, 5.000000e-01
  %3376 = fmul fast float %3373, 2.000000e+00
  %3377 = fsub fast float 1.000000e+00, %3376
  %3378 = fmul fast float %3377, %3305
  %3379 = fadd fast float %3378, %3376
  %3380 = fmul fast float %3379, %3305
  %3381 = fmul fast float %3374, 2.000000e+00
  %3382 = fsub fast float 1.000000e+00, %3381
  %3383 = fmul fast float %3382, %3306
  %3384 = fadd fast float %3383, %3381
  %3385 = fmul fast float %3384, %3306
  %3386 = fmul fast float %3375, 2.000000e+00
  %3387 = fsub fast float 1.000000e+00, %3386
  %3388 = fmul fast float %3387, %3307
  %3389 = fadd fast float %3388, %3386
  %3390 = fmul fast float %3389, %3307
  br label %3391

; <label>:3391                                    ; preds = %3363, %3361, %3348, %3318, %3304
  %3392 = phi float [ %3305, %3304 ], [ %3380, %3363 ], [ %3305, %3361 ], [ %3358, %3348 ], [ %3328, %3318 ]
  %3393 = phi float [ %3306, %3304 ], [ %3385, %3363 ], [ %3306, %3361 ], [ %3359, %3348 ], [ %3329, %3318 ]
  %3394 = phi float [ %3307, %3304 ], [ %3390, %3363 ], [ %3307, %3361 ], [ %3360, %3348 ], [ %3330, %3318 ]
  %3395 = phi float [ %3308, %3304 ], [ %3308, %3363 ], [ %3308, %3361 ], [ %3308, %3348 ], [ %3340, %3318 ]
  %3396 = phi float [ %3309, %3304 ], [ %3309, %3363 ], [ %3309, %3361 ], [ %3309, %3348 ], [ %3341, %3318 ]
  %3397 = phi float [ %3310, %3304 ], [ %3310, %3363 ], [ %3310, %3361 ], [ %3310, %3348 ], [ %3342, %3318 ]
  %3398 = phi float [ %2744, %3304 ], [ %2744, %3363 ], [ %2744, %3361 ], [ %2744, %3348 ], [ %3333, %3318 ]
  %3399 = phi float [ %2747, %3304 ], [ %2747, %3363 ], [ %2747, %3361 ], [ %2747, %3348 ], [ %3345, %3318 ]
  %3400 = and i32 %3282, 12
  %3401 = icmp eq i32 %3400, 12
  br i1 %3401, label %3474, label %3402

; <label>:3402                                    ; preds = %3391
  %3403 = and i32 %3282, 2097184
  %3404 = icmp eq i32 %3403, 2097184
  %3405 = select i1 %3404, float %2930, float 0.000000e+00
  %3406 = and i32 %3282, 4194336
  %3407 = icmp eq i32 %3406, 4194336
  %3408 = select i1 %3407, float %2930, float 0.000000e+00
  %3409 = and i32 %3282, 8388640
  %3410 = icmp eq i32 %3409, 8388640
  %3411 = select i1 %3410, float %2930, float 0.000000e+00
  %3412 = icmp eq i32 %3400, 0
  br i1 %3412, label %3413, label %3426

; <label>:3413                                    ; preds = %3402
  %3414 = fsub fast float %3231, %2736
  %3415 = fsub fast float %3232, %2737
  %3416 = fmul fast float %3405, %3414
  %3417 = fmul fast float %3405, %3415
  %3418 = fadd fast float %3416, %2736
  %3419 = fadd fast float %3417, %2737
  %3420 = fsub fast float %3233, %2746
  %3421 = fmul fast float %3408, %3420
  %3422 = fadd fast float %3421, %2746
  %3423 = fsub fast float %3230, %2745
  %3424 = fmul fast float %3411, %3423
  %3425 = fadd fast float %3424, %2745
  br label %3474

; <label>:3426                                    ; preds = %3402
  %3427 = icmp eq i32 %3400, 4
  br i1 %3427, label %3428, label %3460

; <label>:3428                                    ; preds = %3426
  %3429 = fmul fast float %3405, %3231
  %3430 = fmul fast float %3405, %3232
  %3431 = fadd fast float %3429, %2736
  %3432 = fadd fast float %3430, %2737
  %3433 = call float @dx.op.binary.f32(i32 36, float %2746, float %3233)  ; FMin(a,b)
  %3434 = fsub fast float %3433, %2746
  %3435 = fmul fast float %3434, %3408
  %3436 = fadd fast float %3435, %2746
  %3437 = fadd fast float %3230, %2745
  %3438 = fmul fast float %3437, 0x3FF337FAE0000000
  %3439 = fmul fast float %2745, %2745
  %3440 = fmul fast float %3230, %3230
  %3441 = fadd fast float %3440, %3439
  %3442 = fmul fast float %3441, 0x3FE5152B00000000
  %3443 = fmul fast float %2745, 0xBFCC1F85E0000000
  %3444 = fmul fast float %3443, %3230
  %3445 = fadd fast float %3444, 0xBFE1363700000000
  %3446 = fadd fast float %3445, %3438
  %3447 = fsub fast float %3446, %3442
  %3448 = fmul fast float %3437, 0x3FBA6F0D00000000
  %3449 = fmul fast float %3441, 0x3FD0432880000000
  %3450 = fmul fast float %2745, 0xBFEF110800000000
  %3451 = fmul fast float %3450, %3230
  %3452 = fadd fast float %3451, 1.000000e+00
  %3453 = fsub fast float %3452, %3448
  %3454 = fadd fast float %3453, %3449
  %3455 = fdiv fast float %3447, %3454
  %3456 = call float @dx.op.unary.f32(i32 7, float %3455)  ; Saturate(value)
  %3457 = fsub fast float %3456, %2745
  %3458 = fmul fast float %3457, %3411
  %3459 = fadd fast float %3458, %2745
  br label %3474

; <label>:3460                                    ; preds = %3426
  %3461 = icmp eq i32 %3400, 8
  br i1 %3461, label %3462, label %3474

; <label>:3462                                    ; preds = %3460
  %3463 = fmul fast float %3405, %3231
  %3464 = fmul fast float %3405, %3232
  %3465 = fadd fast float %3463, %2736
  %3466 = fadd fast float %3464, %2737
  %3467 = call float @dx.op.binary.f32(i32 36, float %2746, float %3233)  ; FMin(a,b)
  %3468 = fsub fast float %3467, %2746
  %3469 = fmul fast float %3468, %3408
  %3470 = fadd fast float %3469, %2746
  %3471 = fsub fast float %3230, %2745
  %3472 = fmul fast float %3411, %3471
  %3473 = fadd fast float %3472, %2745
  br label %3474

; <label>:3474                                    ; preds = %3462, %3460, %3428, %3413, %3391, %2929, %2748, %2735
  %3475 = phi float [ %2736, %3391 ], [ %2736, %2929 ], [ %2736, %2735 ], [ %2736, %2748 ], [ %3418, %3413 ], [ %3431, %3428 ], [ %2736, %3460 ], [ %3465, %3462 ]
  %3476 = phi float [ %2737, %3391 ], [ %2737, %2929 ], [ %2737, %2735 ], [ %2737, %2748 ], [ %3419, %3413 ], [ %3432, %3428 ], [ %2737, %3460 ], [ %3466, %3462 ]
  %3477 = phi float [ %3392, %3391 ], [ %2738, %2929 ], [ %2738, %2735 ], [ %2738, %2748 ], [ %3392, %3413 ], [ %3392, %3428 ], [ %3392, %3460 ], [ %3392, %3462 ]
  %3478 = phi float [ %3393, %3391 ], [ %2739, %2929 ], [ %2739, %2735 ], [ %2739, %2748 ], [ %3393, %3413 ], [ %3393, %3428 ], [ %3393, %3460 ], [ %3393, %3462 ]
  %3479 = phi float [ %3394, %3391 ], [ %2740, %2929 ], [ %2740, %2735 ], [ %2740, %2748 ], [ %3394, %3413 ], [ %3394, %3428 ], [ %3394, %3460 ], [ %3394, %3462 ]
  %3480 = phi float [ %3395, %3391 ], [ %2741, %2929 ], [ %2741, %2735 ], [ %2741, %2748 ], [ %3395, %3413 ], [ %3395, %3428 ], [ %3395, %3460 ], [ %3395, %3462 ]
  %3481 = phi float [ %3396, %3391 ], [ %2742, %2929 ], [ %2742, %2735 ], [ %2742, %2748 ], [ %3396, %3413 ], [ %3396, %3428 ], [ %3396, %3460 ], [ %3396, %3462 ]
  %3482 = phi float [ %3397, %3391 ], [ %2743, %2929 ], [ %2743, %2735 ], [ %2743, %2748 ], [ %3397, %3413 ], [ %3397, %3428 ], [ %3397, %3460 ], [ %3397, %3462 ]
  %3483 = phi float [ %3398, %3391 ], [ %2744, %2929 ], [ %2744, %2735 ], [ %2744, %2748 ], [ %3398, %3413 ], [ %3398, %3428 ], [ %3398, %3460 ], [ %3398, %3462 ]
  %3484 = phi float [ %2745, %3391 ], [ %2745, %2929 ], [ %2745, %2735 ], [ %2745, %2748 ], [ %3425, %3413 ], [ %3459, %3428 ], [ %2745, %3460 ], [ %3473, %3462 ]
  %3485 = phi float [ %2746, %3391 ], [ %2746, %2929 ], [ %2746, %2735 ], [ %2746, %2748 ], [ %3422, %3413 ], [ %3436, %3428 ], [ %2746, %3460 ], [ %3470, %3462 ]
  %3486 = phi float [ %3399, %3391 ], [ %2747, %2929 ], [ %2747, %2735 ], [ %2747, %2748 ], [ %3399, %3413 ], [ %3399, %3428 ], [ %3399, %3460 ], [ %3399, %3462 ]
  %3487 = add i32 %59, 440
  %3488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.i32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.i32 %3488, 1
  %3491 = bitcast i32 %3489 to float
  %3492 = bitcast i32 %3490 to float
  %3493 = fcmp fast oge float %3491, 0.000000e+00
  %3494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.f32 %3494, 0
  %3496 = select i1 %3493, float %3491, float %3495
  %3497 = fadd fast float %3496, %217
  %3498 = fmul fast float %3492, %218
  %3499 = add i32 %59, 568
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = add i32 %3501, 0
  %3503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3503, %dx.types.Handle %117, float %98, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = fmul fast float %3498, %3505
  %3507 = fadd fast float %3497, %3506
  %3508 = and i32 %209, 65535
  %3509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3508)  ; LegacyF16ToF32(value)
  %3510 = lshr i32 %209, 16
  %3511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3510)  ; LegacyF16ToF32(value)
  %3512 = and i32 %210, 65535
  %3513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3512)  ; LegacyF16ToF32(value)
  %3514 = fmul fast float %3509, %3477
  %3515 = fmul fast float %3511, %3478
  %3516 = fmul fast float %3513, %3479
  %3517 = shl i32 %211, 4
  %3518 = and i32 %3517, 32752
  %3519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3518)  ; LegacyF16ToF32(value)
  %3520 = lshr i32 %211, 7
  %3521 = and i32 %3520, 32752
  %3522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3521)  ; LegacyF16ToF32(value)
  %3523 = lshr i32 %211, 22
  %3524 = shl nuw nsw i32 %3523, 5
  %3525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3524)  ; LegacyF16ToF32(value)
  %3526 = and i32 %212, 65535
  %3527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3526)  ; LegacyF16ToF32(value)
  %3528 = fmul fast float %3519, %3480
  %3529 = fmul fast float %3528, %3527
  %3530 = fmul fast float %3522, %3481
  %3531 = fmul fast float %3530, %3527
  %3532 = fmul fast float %3525, %3482
  %3533 = fmul fast float %3532, %3527
  %3534 = call float @dx.op.dot2.f32(i32 54, float %3475, float %3476, float %3475, float %3476)  ; Dot2(ax,ay,bx,by)
  %3535 = fmul fast float %3534, 0x3FE3333340000000
  %3536 = fsub fast float 1.000000e+00, %3535
  %3537 = call float @dx.op.dot3.f32(i32 55, float %3475, float %3476, float %3536, float %3475, float %3476, float %3536)  ; Dot3(ax,ay,az,bx,by,bz)
  %3538 = call float @dx.op.unary.f32(i32 25, float %3537)  ; Rsqrt(value)
  %3539 = fmul fast float %3538, %3475
  %3540 = fmul fast float %3538, %3476
  %3541 = fmul fast float %3536, %3538
  %3542 = fmul fast float %3541, %129
  %3543 = fmul fast float %3541, %131
  %3544 = fmul fast float %3541, %133
  %3545 = fmul fast float %3539, %91
  %3546 = fmul fast float %3539, %92
  %3547 = fmul fast float %3539, %93
  %3548 = fadd fast float %3542, %3545
  %3549 = fadd fast float %3543, %3546
  %3550 = fadd fast float %3544, %3547
  %3551 = fmul fast float %143, %3540
  %3552 = fmul fast float %144, %3540
  %3553 = fmul fast float %145, %3540
  %3554 = fadd fast float %3548, %3551
  %3555 = fadd fast float %3549, %3552
  %3556 = fadd fast float %3550, %3553
  %3557 = call float @dx.op.dot3.f32(i32 55, float %3554, float %3555, float %3556, float %3554, float %3555, float %3556)  ; Dot3(ax,ay,az,bx,by,bz)
  %3558 = call float @dx.op.unary.f32(i32 25, float %3557)  ; Rsqrt(value)
  %3559 = fmul fast float %3554, %3558
  %3560 = fmul fast float %3555, %3558
  %3561 = fmul fast float %3556, %3558
  %3562 = fadd fast float %3483, 0xBFB99999A0000000
  %3563 = call float @dx.op.unary.f32(i32 7, float %3562)  ; Saturate(value)
  %3564 = fmul fast float %3563, 0x3FF1C71C80000000
  %3565 = call float @dx.op.binary.f32(i32 36, float %3483, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3566 = fsub fast float 1.000000e+00, %3564
  %3567 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3568 = fmul fast float %3567, %3514
  %3569 = fmul fast float %3567, %3515
  %3570 = fmul fast float %3567, %3516
  %3571 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  %3572 = call float @dx.op.unary.f32(i32 7, float %3569)  ; Saturate(value)
  %3573 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3574 = fmul fast float %3564, %3514
  %3575 = fmul fast float %3564, %3515
  %3576 = fmul fast float %3564, %3516
  %3577 = fadd fast float %3574, %3565
  %3578 = fadd fast float %3575, %3565
  %3579 = fadd fast float %3576, %3565
  %3580 = call float @dx.op.unary.f32(i32 7, float %3577)  ; Saturate(value)
  %3581 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3582 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  %3583 = call float @dx.op.unary.f32(i32 7, float %3484)  ; Saturate(value)
  %3584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.i32 %3584, 3
  %3586 = and i32 %3585, 8
  %3587 = icmp ne i32 %3586, 0
  %3588 = call float @dx.op.binary.f32(i32 35, float %3571, float %3514)  ; FMax(a,b)
  %3589 = call float @dx.op.binary.f32(i32 35, float %3572, float %3514)  ; FMax(a,b)
  %3590 = call float @dx.op.binary.f32(i32 35, float %3573, float %3514)  ; FMax(a,b)
  %3591 = call float @dx.op.dot3.f32(i32 55, float %3571, float %3572, float %3573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3592 = select i1 %275, float %3514, float %3571
  %3593 = select i1 %275, float %3591, float %3572
  %3594 = select i1 %275, float 1.000000e+00, float %3573
  %3595 = select i1 %3587, float %3588, float %3592
  %3596 = select i1 %3587, float %3589, float %3593
  %3597 = select i1 %3587, float %3590, float %3594
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.CBufRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.CBufRet.f32 %3598, 2
  %3602 = fadd fast float %3599, %203
  %3603 = fadd fast float %3600, %204
  %3604 = fadd fast float %3601, %205
  %3605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3606 = extractvalue %dx.types.CBufRet.f32 %3605, 0
  %3607 = extractvalue %dx.types.CBufRet.f32 %3605, 1
  %3608 = fsub fast float %3602, %3606
  %3609 = fsub fast float %3603, %3607
  %3610 = fmul fast float %3608, %3608
  %3611 = fmul fast float %3609, %3609
  %3612 = fadd fast float %3610, %3611
  %3613 = call float @dx.op.unary.f32(i32 24, float %3612)  ; Sqrt(value)
  %3614 = extractvalue %dx.types.CBufRet.f32 %3605, 2
  %3615 = fcmp fast olt float %3613, %3614
  br i1 %3615, label %3616, label %3683

; <label>:3616                                    ; preds = %3474
  %3617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3618 = extractvalue %dx.types.CBufRet.f32 %3617, 0
  %3619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3620 = extractvalue %dx.types.CBufRet.f32 %3619, 0
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.CBufRet.f32 %3617, 1
  %3624 = extractvalue %dx.types.CBufRet.f32 %3619, 1
  %3625 = extractvalue %dx.types.CBufRet.f32 %3621, 1
  %3626 = extractvalue %dx.types.CBufRet.f32 %3617, 3
  %3627 = extractvalue %dx.types.CBufRet.f32 %3619, 3
  %3628 = extractvalue %dx.types.CBufRet.f32 %3621, 3
  %3629 = fadd fast float %3626, %3602
  %3630 = fadd fast float %3627, %3603
  %3631 = fadd fast float %3628, %3604
  %3632 = fmul fast float %3629, %3618
  %3633 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3620, float %3632)  ; FMad(a,b,c)
  %3634 = call float @dx.op.tertiary.f32(i32 46, float %3631, float %3622, float %3633)  ; FMad(a,b,c)
  %3635 = fmul fast float %3629, %3623
  %3636 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3624, float %3635)  ; FMad(a,b,c)
  %3637 = call float @dx.op.tertiary.f32(i32 46, float %3631, float %3625, float %3636)  ; FMad(a,b,c)
  %3638 = fsub fast float %3634, %3626
  %3639 = fsub fast float %3637, %3627
  %3640 = fsub fast float %3638, %3606
  %3641 = fadd fast float %3640, %3614
  %3642 = fsub fast float %3639, %3607
  %3643 = fadd fast float %3642, %3614
  %3644 = extractvalue %dx.types.CBufRet.f32 %3605, 3
  %3645 = fmul fast float %3641, %3644
  %3646 = fmul fast float %3643, %3644
  %3647 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3648 = call float @dx.op.unary.f32(i32 7, float %3646)  ; Saturate(value)
  %3649 = fsub fast float 1.000000e+00, %3647
  %3650 = fsub fast float 1.000000e+00, %3648
  %3651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %3649, float %3650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3652 = extractvalue %dx.types.ResRet.f32 %3651, 0
  %3653 = fcmp fast ugt float %3652, 0.000000e+00
  br i1 %3653, label %3654, label %3957

; <label>:3654                                    ; preds = %3616
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 2
  %3657 = fmul fast float %3656, %3652
  %3658 = extractvalue %dx.types.CBufRet.f32 %3655, 3
  %3659 = fadd fast float %3658, %3657
  %3660 = extractvalue %dx.types.CBufRet.f32 %3621, 2
  %3661 = fadd fast float %3659, %3628
  %3662 = fmul fast float %3634, %3622
  %3663 = call float @dx.op.tertiary.f32(i32 46, float %3637, float %3625, float %3662)  ; FMad(a,b,c)
  %3664 = call float @dx.op.tertiary.f32(i32 46, float %3661, float %3660, float %3663)  ; FMad(a,b,c)
  %3665 = fsub fast float %3664, %3628
  %3666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3667 = extractvalue %dx.types.CBufRet.f32 %3666, 2
  %3668 = fsub fast float %3665, %3667
  %3669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %51, float %3649, float %3650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.ResRet.f32 %3669, 2
  %3673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %51, float %3649, float %3650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3674 = extractvalue %dx.types.ResRet.f32 %3673, 0
  %3675 = extractvalue %dx.types.ResRet.f32 %3673, 1
  %3676 = extractvalue %dx.types.ResRet.f32 %3673, 2
  %3677 = fadd fast float %3674, %3670
  %3678 = fmul fast float %3677, 0x3F847AE140000000
  %3679 = fadd fast float %3675, %3671
  %3680 = fmul fast float %3679, 0x3F847AE140000000
  %3681 = fadd fast float %3676, %3672
  %3682 = fmul fast float %3681, 0x3F847AE140000000
  br label %3957

; <label>:3683                                    ; preds = %3474
  %3684 = and i32 %254, 1
  %3685 = icmp eq i32 %3684, 0
  br i1 %3685, label %3957, label %3686

; <label>:3686                                    ; preds = %3683
  %3687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3688 = extractvalue %dx.types.CBufRet.f32 %3687, 0
  %3689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.f32 %3689, 0
  %3691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3692 = extractvalue %dx.types.CBufRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.CBufRet.f32 %3687, 1
  %3694 = extractvalue %dx.types.CBufRet.f32 %3689, 1
  %3695 = extractvalue %dx.types.CBufRet.f32 %3691, 1
  %3696 = extractvalue %dx.types.CBufRet.f32 %3687, 3
  %3697 = extractvalue %dx.types.CBufRet.f32 %3689, 3
  %3698 = extractvalue %dx.types.CBufRet.f32 %3691, 3
  %3699 = fadd fast float %3696, %3602
  %3700 = fadd fast float %3697, %3603
  %3701 = fadd fast float %3698, %3604
  %3702 = fmul fast float %3699, %3688
  %3703 = call float @dx.op.tertiary.f32(i32 46, float %3700, float %3690, float %3702)  ; FMad(a,b,c)
  %3704 = call float @dx.op.tertiary.f32(i32 46, float %3701, float %3692, float %3703)  ; FMad(a,b,c)
  %3705 = fmul fast float %3699, %3693
  %3706 = call float @dx.op.tertiary.f32(i32 46, float %3700, float %3694, float %3705)  ; FMad(a,b,c)
  %3707 = call float @dx.op.tertiary.f32(i32 46, float %3701, float %3695, float %3706)  ; FMad(a,b,c)
  %3708 = fsub fast float %3704, %3696
  %3709 = fsub fast float %3707, %3697
  %3710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3711 = extractvalue %dx.types.CBufRet.f32 %3710, 0
  %3712 = extractvalue %dx.types.CBufRet.f32 %3710, 1
  %3713 = extractvalue %dx.types.CBufRet.f32 %3710, 2
  %3714 = extractvalue %dx.types.CBufRet.f32 %3710, 3
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 3
  %3717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3718 = extractvalue %dx.types.CBufRet.i32 %3717, 0
  %3719 = extractvalue %dx.types.CBufRet.i32 %3717, 1
  %3720 = udiv i32 %3719, %3718
  %3721 = fsub fast float %3708, %3711
  %3722 = fsub fast float %3709, %3712
  %3723 = call float @dx.op.binary.f32(i32 35, float %3721, float 0.000000e+00)  ; FMax(a,b)
  %3724 = call float @dx.op.binary.f32(i32 35, float %3722, float 0.000000e+00)  ; FMax(a,b)
  %3725 = call float @dx.op.binary.f32(i32 36, float %3723, float %3713)  ; FMin(a,b)
  %3726 = call float @dx.op.binary.f32(i32 36, float %3724, float %3714)  ; FMin(a,b)
  %3727 = add i32 %3718, -1
  %3728 = add i32 %3720, -1
  %3729 = fmul fast float %3725, %3716
  %3730 = fmul fast float %3726, %3716
  %3731 = fptoui float %3729 to i32
  %3732 = fptoui float %3730 to i32
  %3733 = call i32 @dx.op.binary.i32(i32 40, i32 %3731, i32 %3727)  ; UMin(a,b)
  %3734 = call i32 @dx.op.binary.i32(i32 40, i32 %3732, i32 %3728)  ; UMin(a,b)
  %3735 = mul i32 %3734, %3718
  %3736 = add i32 %3735, %3733
  %3737 = shl i32 %3736, 2
  %3738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.i32 %3738, 0
  %3740 = icmp eq i32 %3739, -1
  br i1 %3740, label %3957, label %3741

; <label>:3741                                    ; preds = %3686
  %3742 = mul i32 %3739, 148
  %3743 = add i32 %3742, 4
  %3744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 0
  %3746 = add i32 %3742, 8
  %3747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.f32 %3747, 0
  %3749 = add i32 %3742, 36
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = add i32 %3742, 60
  %3753 = add i32 %3742, 92
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = add i32 %3742, 116
  %3757 = fsub fast float %3708, %3745
  %3758 = fsub fast float %3709, %3748
  %3759 = fmul fast float %3716, %3757
  %3760 = fmul fast float %3716, %3758
  %3761 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3762 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3763 = fsub fast float 1.000000e+00, %3762
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 2
  %3766 = call float @dx.op.unary.f32(i32 83, float %3761)  ; DerivCoarseX(value)
  %3767 = call float @dx.op.unary.f32(i32 83, float %3763)  ; DerivCoarseX(value)
  %3768 = call float @dx.op.unary.f32(i32 84, float %3761)  ; DerivCoarseY(value)
  %3769 = call float @dx.op.unary.f32(i32 84, float %3763)  ; DerivCoarseY(value)
  %3770 = fmul fast float %3766, %3765
  %3771 = fmul fast float %3767, %3765
  %3772 = fmul fast float %3768, %3765
  %3773 = fmul fast float %3769, %3765
  %3774 = call float @dx.op.dot2.f32(i32 54, float %3772, float %3773, float %3772, float %3773)  ; Dot2(ax,ay,bx,by)
  %3775 = call float @dx.op.dot2.f32(i32 54, float %3770, float %3771, float %3770, float %3771)  ; Dot2(ax,ay,bx,by)
  %3776 = call float @dx.op.binary.f32(i32 35, float %3775, float %3774)  ; FMax(a,b)
  %3777 = call float @dx.op.unary.f32(i32 23, float %3776)  ; Log(value)
  %3778 = fmul fast float %3777, 5.000000e-01
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 1
  %3781 = fadd fast float %3780, %3778
  %3782 = call float @dx.op.binary.f32(i32 35, float %3781, float 0.000000e+00)  ; FMax(a,b)
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 3
  %3785 = fadd fast float %3784, %3782
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 3
  %3788 = fadd fast float %3785, %3787
  %3789 = add i32 %3755, 0
  %3790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3789, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3791 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3790, i32 0)  ; GetDimensions(handle,mipLevel)
  %3792 = extractvalue %dx.types.Dimensions %3791, 0
  %3793 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3792)  ; FirstbitLo(value)
  %3794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.i32 %3794, 1
  %3796 = sub nsw i32 %3795, %3793
  %3797 = sitofp i32 %3796 to float
  %3798 = fsub fast float %3788, %3797
  %3799 = call float @dx.op.binary.f32(i32 35, float %3798, float 0.000000e+00)  ; FMax(a,b)
  %3800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3790, %dx.types.Handle %49, float %3761, float %3763, float %3751, float undef, i32 0, i32 0, i32 undef, float %3799)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  %3802 = fcmp ule float %3801, 0x3FE0101020000000
  %3803 = extractvalue %dx.types.CBufRet.i32 %3794, 0
  %3804 = and i32 %3803, 128
  %3805 = icmp ne i32 %3804, 0
  %3806 = and i1 %3802, %3805
  br i1 %3806, label %3957, label %3807

; <label>:3807                                    ; preds = %3741
  %3808 = add i32 %3742, 20
  %3809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = add i32 %3742, 24
  %3812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.f32 %3812, 0
  %3814 = add i32 %3742, 40
  %3815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 0
  %3817 = add i32 %3742, 96
  %3818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.i32 %3818, 0
  %3820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.f32 %3820, 2
  %3822 = fmul fast float %3821, %3761
  %3823 = fmul fast float %3821, %3763
  %3824 = extractvalue %dx.types.CBufRet.f32 %3820, 3
  %3825 = fadd fast float %3822, %3824
  %3826 = fadd fast float %3823, %3824
  %3827 = add i32 %3819, 0
  %3828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3827, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3829 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3828, i32 0)  ; GetDimensions(handle,mipLevel)
  %3830 = extractvalue %dx.types.Dimensions %3829, 0
  %3831 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3830)  ; FirstbitLo(value)
  %3832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.i32 %3832, 1
  %3834 = sub nsw i32 %3833, %3831
  %3835 = sitofp i32 %3834 to float
  %3836 = fsub fast float %3785, %3835
  %3837 = call float @dx.op.binary.f32(i32 35, float %3836, float 0.000000e+00)  ; FMax(a,b)
  %3838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3828, %dx.types.Handle %49, float %3825, float %3826, float %3816, float undef, i32 0, i32 0, i32 undef, float %3837)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3840 = fmul fast float %3839, %3810
  %3841 = fadd fast float %3840, %3813
  %3842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3843 = extractvalue %dx.types.CBufRet.f32 %3842, 0
  %3844 = extractvalue %dx.types.CBufRet.f32 %3842, 1
  %3845 = extractvalue %dx.types.CBufRet.f32 %3842, 2
  %3846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.f32 %3846, 3
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 3
  %3850 = extractvalue %dx.types.CBufRet.f32 %3842, 3
  %3851 = fadd fast float %3847, %3708
  %3852 = fadd fast float %3849, %3709
  %3853 = fadd fast float %3841, %3850
  %3854 = fmul fast float %3851, %3843
  %3855 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3844, float %3854)  ; FMad(a,b,c)
  %3856 = call float @dx.op.tertiary.f32(i32 46, float %3853, float %3845, float %3855)  ; FMad(a,b,c)
  %3857 = fsub fast float %3856, %3850
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 2
  %3860 = fsub fast float %3857, %3859
  %3861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.i32 %3861, 0
  %3863 = call i32 @dx.op.binary.i32(i32 40, i32 %3739, i32 %3862)  ; UMin(a,b)
  %3864 = mul i32 %3863, 36
  %3865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3866 = extractvalue %dx.types.ResRet.i32 %3865, 0
  %3867 = add i32 %3864, 4
  %3868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3869 = extractvalue %dx.types.CBufRet.f32 %3868, 0
  %3870 = fmul fast float %3869, %3761
  %3871 = fmul fast float %3869, %3763
  %3872 = extractvalue %dx.types.CBufRet.f32 %3868, 1
  %3873 = fadd fast float %3870, %3872
  %3874 = fadd fast float %3871, %3872
  %3875 = icmp eq i32 %3866, 0
  br i1 %3875, label %3944, label %3876

; <label>:3876                                    ; preds = %3807
  br label %3877

; <label>:3877                                    ; preds = %3934, %3876
  %3878 = phi float [ %3935, %3934 ], [ 0.000000e+00, %3876 ]
  %3879 = phi float [ %3936, %3934 ], [ 0.000000e+00, %3876 ]
  %3880 = phi float [ %3937, %3934 ], [ 0.000000e+00, %3876 ]
  %3881 = phi float [ %3938, %3934 ], [ 0.000000e+00, %3876 ]
  %3882 = phi float [ %3939, %3934 ], [ 0.000000e+00, %3876 ]
  %3883 = phi float [ %3940, %3934 ], [ 0.000000e+00, %3876 ]
  %3884 = phi i32 [ %3941, %3934 ], [ 0, %3876 ]
  %3885 = shl i32 %3884, 2
  %3886 = add i32 %3752, %3885
  %3887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3886, i32 undef)  ; BufferLoad(srv,index,wot)
  %3888 = extractvalue %dx.types.ResRet.f32 %3887, 0
  %3889 = add i32 %3756, %3885
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = add i32 %3891, 0
  %3893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3892, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3894 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3893, i32 0)  ; GetDimensions(handle,mipLevel)
  %3895 = extractvalue %dx.types.Dimensions %3894, 0
  %3896 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3895)  ; FirstbitLo(value)
  %3897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.i32 %3897, 1
  %3899 = sub nsw i32 %3898, %3896
  %3900 = sitofp i32 %3899 to float
  %3901 = fsub fast float %3785, %3900
  %3902 = call float @dx.op.binary.f32(i32 35, float %3901, float 0.000000e+00)  ; FMax(a,b)
  %3903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3893, %dx.types.Handle %49, float %3873, float %3874, float %3888, float undef, i32 0, i32 0, i32 undef, float %3902)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %3905 = fcmp fast ogt float %3904, 0.000000e+00
  br i1 %3905, label %3906, label %3934

; <label>:3906                                    ; preds = %3877
  %3907 = add i32 %3867, %3885
  %3908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.i32 %3908, 0
  %3910 = and i32 %3909, 32767
  %3911 = mul nuw nsw i32 %3910, 928
  %3912 = add nuw nsw i32 %3911, 48
  %3913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.f32 %3913, 0
  %3915 = extractvalue %dx.types.ResRet.f32 %3913, 1
  %3916 = extractvalue %dx.types.ResRet.f32 %3913, 2
  %3917 = add nuw nsw i32 %3911, 60
  %3918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.ResRet.f32 %3918, 1
  %3921 = extractvalue %dx.types.ResRet.f32 %3918, 2
  %3922 = fmul fast float %3914, %3904
  %3923 = fmul fast float %3915, %3904
  %3924 = fmul fast float %3916, %3904
  %3925 = fadd fast float %3922, %3878
  %3926 = fadd fast float %3923, %3879
  %3927 = fadd fast float %3924, %3880
  %3928 = fmul fast float %3919, %3904
  %3929 = fmul fast float %3920, %3904
  %3930 = fmul fast float %3921, %3904
  %3931 = fadd fast float %3928, %3881
  %3932 = fadd fast float %3929, %3882
  %3933 = fadd fast float %3930, %3883
  br label %3934

; <label>:3934                                    ; preds = %3906, %3877
  %3935 = phi float [ %3925, %3906 ], [ %3878, %3877 ]
  %3936 = phi float [ %3926, %3906 ], [ %3879, %3877 ]
  %3937 = phi float [ %3927, %3906 ], [ %3880, %3877 ]
  %3938 = phi float [ %3931, %3906 ], [ %3881, %3877 ]
  %3939 = phi float [ %3932, %3906 ], [ %3882, %3877 ]
  %3940 = phi float [ %3933, %3906 ], [ %3883, %3877 ]
  %3941 = add nuw i32 %3884, 1
  %3942 = icmp eq i32 %3941, %3866
  br i1 %3942, label %3943, label %3877

; <label>:3943                                    ; preds = %3934
  br label %3944

; <label>:3944                                    ; preds = %3943, %3807
  %3945 = phi float [ 0.000000e+00, %3807 ], [ %3935, %3943 ]
  %3946 = phi float [ 0.000000e+00, %3807 ], [ %3936, %3943 ]
  %3947 = phi float [ 0.000000e+00, %3807 ], [ %3937, %3943 ]
  %3948 = phi float [ 0.000000e+00, %3807 ], [ %3938, %3943 ]
  %3949 = phi float [ 0.000000e+00, %3807 ], [ %3939, %3943 ]
  %3950 = phi float [ 0.000000e+00, %3807 ], [ %3940, %3943 ]
  %3951 = fadd fast float %3948, %3945
  %3952 = fmul fast float %3951, 0x3F847AE140000000
  %3953 = fadd fast float %3949, %3946
  %3954 = fmul fast float %3953, 0x3F847AE140000000
  %3955 = fadd fast float %3950, %3947
  %3956 = fmul fast float %3955, 0x3F847AE140000000
  br label %3957

; <label>:3957                                    ; preds = %3944, %3741, %3686, %3683, %3654, %3616
  %3958 = phi float [ %3668, %3654 ], [ -1.310720e+05, %3616 ], [ %3860, %3944 ], [ -1.310720e+05, %3686 ], [ -1.310720e+05, %3741 ], [ -1.310720e+05, %3683 ]
  %3959 = phi float [ %3678, %3654 ], [ 0.000000e+00, %3616 ], [ %3952, %3944 ], [ 0.000000e+00, %3686 ], [ 0.000000e+00, %3741 ], [ 0.000000e+00, %3683 ]
  %3960 = phi float [ %3680, %3654 ], [ 0.000000e+00, %3616 ], [ %3954, %3944 ], [ 0.000000e+00, %3686 ], [ 0.000000e+00, %3741 ], [ 0.000000e+00, %3683 ]
  %3961 = phi float [ %3682, %3654 ], [ 0.000000e+00, %3616 ], [ %3956, %3944 ], [ 0.000000e+00, %3686 ], [ 0.000000e+00, %3741 ], [ 0.000000e+00, %3683 ]
  %3962 = phi i1 [ true, %3654 ], [ false, %3616 ], [ true, %3944 ], [ false, %3686 ], [ false, %3741 ], [ false, %3683 ]
  %3963 = and i32 %254, 3
  %3964 = icmp eq i32 %3963, 1
  %3965 = select i1 %3964, float 1.000000e+00, float 0.000000e+00
  %3966 = fsub fast float %3958, %205
  %3967 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  %3968 = select i1 %3962, float %3967, float 1.000000e+00
  %3969 = fmul fast float %3968, %3965
  %3970 = icmp eq i32 %3963, 3
  %3971 = select i1 %3970, float 1.000000e+00, float %3969
  %3972 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3971)  ; FMax(a,b)
  %3973 = fcmp fast olt float %3971, 1.000000e+00
  %3974 = fcmp uge float %76, 0.000000e+00
  %3975 = and i1 %3974, %3973
  br i1 %3975, label %3976, label %3986

; <label>:3976                                    ; preds = %3957
  %3977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %49, float %76, float %77, float %78, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3978 = extractvalue %dx.types.ResRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.ResRet.f32 %3977, 1
  %3980 = extractvalue %dx.types.ResRet.f32 %3977, 2
  %3981 = fadd fast float %3978, %3972
  %3982 = fcmp ule float %75, 0.000000e+00
  %3983 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = select i1 %3982, float %3983, float 1.000000e+00
  %3985 = fmul fast float %3984, %3980
  br label %3986

; <label>:3986                                    ; preds = %3976, %3957
  %3987 = phi float [ %3981, %3976 ], [ %3972, %3957 ]
  %3988 = phi float [ %3979, %3976 ], [ 0.000000e+00, %3957 ]
  %3989 = phi float [ %3985, %3976 ], [ 0.000000e+00, %3957 ]
  %3990 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3991 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3992 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3993 = fcmp fast une float %3991, 0.000000e+00
  %3994 = fcmp fast une float %3992, 0.000000e+00
  %3995 = or i1 %3993, %3994
  br i1 %3995, label %3996, label %4555

; <label>:3996                                    ; preds = %3986
  br i1 %3993, label %3997, label %4270

; <label>:3997                                    ; preds = %3996
  %3998 = call float @dx.op.unary.f32(i32 23, float %3485)  ; Log(value)
  %3999 = fmul fast float %3998, 4.000000e+00
  %4000 = call float @dx.op.unary.f32(i32 21, float %3999)  ; Exp(value)
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4003 = fmul fast float %4002, %62
  %4004 = fmul fast float %4002, %63
  %4005 = fmul fast float %4002, %64
  %4006 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4007 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4008 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4009 = call float @dx.op.unary.f32(i32 23, float %4006)  ; Log(value)
  %4010 = call float @dx.op.unary.f32(i32 23, float %4007)  ; Log(value)
  %4011 = call float @dx.op.unary.f32(i32 23, float %4008)  ; Log(value)
  %4012 = fmul fast float %4009, 4.000000e+00
  %4013 = fmul fast float %4010, 4.000000e+00
  %4014 = fmul fast float %4011, 4.000000e+00
  %4015 = call float @dx.op.unary.f32(i32 21, float %4012)  ; Exp(value)
  %4016 = call float @dx.op.unary.f32(i32 21, float %4013)  ; Exp(value)
  %4017 = call float @dx.op.unary.f32(i32 21, float %4014)  ; Exp(value)
  %4018 = fadd fast float %4016, %4015
  %4019 = fadd fast float %4018, %4017
  %4020 = fdiv fast float 1.000000e+00, %4019
  %4021 = fmul fast float %4020, %4015
  %4022 = fcmp fast ogt float %72, 0.000000e+00
  %4023 = fcmp fast ogt float %73, 0.000000e+00
  %4024 = fcmp fast ogt float %74, 0.000000e+00
  %4025 = fcmp fast olt float %72, 0.000000e+00
  %4026 = fcmp fast olt float %73, 0.000000e+00
  %4027 = fcmp fast olt float %74, 0.000000e+00
  %4028 = zext i1 %4022 to i32
  %4029 = zext i1 %4023 to i32
  %4030 = zext i1 %4024 to i32
  %4031 = zext i1 %4025 to i32
  %4032 = zext i1 %4026 to i32
  %4033 = zext i1 %4027 to i32
  %4034 = sub nsw i32 %4028, %4031
  %4035 = sub nsw i32 %4029, %4032
  %4036 = sub nsw i32 %4030, %4033
  %4037 = call float @dx.op.unary.f32(i32 83, float %4003)  ; DerivCoarseX(value)
  %4038 = call float @dx.op.unary.f32(i32 83, float %4004)  ; DerivCoarseX(value)
  %4039 = call float @dx.op.unary.f32(i32 83, float %4005)  ; DerivCoarseX(value)
  %4040 = call float @dx.op.unary.f32(i32 84, float %4003)  ; DerivCoarseY(value)
  %4041 = call float @dx.op.unary.f32(i32 84, float %4004)  ; DerivCoarseY(value)
  %4042 = call float @dx.op.unary.f32(i32 84, float %4005)  ; DerivCoarseY(value)
  %4043 = fcmp fast ole float %286, %4021
  %4044 = fmul fast float %4020, %4018
  %4045 = fcmp fast ole float %286, %4044
  %4046 = select i1 %4045, float %4005, float %4003
  %4047 = select i1 %4045, float %4003, float %4004
  %4048 = select i1 %4043, float %4004, float %4046
  %4049 = select i1 %4043, float %4005, float %4047
  %4050 = select i1 %4045, float %4039, float %4037
  %4051 = select i1 %4045, float %4037, float %4038
  %4052 = select i1 %4043, float %4038, float %4050
  %4053 = select i1 %4043, float %4039, float %4051
  %4054 = select i1 %4045, float %4042, float %4040
  %4055 = select i1 %4045, float %4040, float %4041
  %4056 = select i1 %4043, float %4041, float %4054
  %4057 = select i1 %4043, float %4042, float %4055
  %4058 = call float @dx.op.unary.f32(i32 27, float %4048)  ; Round_ni(value)
  %4059 = call float @dx.op.unary.f32(i32 27, float %4049)  ; Round_ni(value)
  %4060 = fptosi float %4058 to i32
  %4061 = fptosi float %4059 to i32
  %4062 = xor i32 %4061, %4060
  %4063 = sitofp i32 %4062 to float
  %4064 = fptosi float %4063 to i32
  %4065 = sitofp i32 %4064 to float
  %4066 = fmul fast float %4065, 0x3FE3C6EF40000000
  %4067 = frem fast float %4058, 2.560000e+02
  %4068 = frem fast float %4059, 2.560000e+02
  %4069 = fptoui float %4067 to i32
  %4070 = fptoui float %4068 to i32
  %4071 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %4069, i32 %4070, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.ResRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.ResRet.f32 %4071, 2
  %4075 = fadd fast float %4072, %4066
  %4076 = fadd fast float %4073, %4066
  %4077 = fadd fast float %4074, %4066
  %4078 = call float @dx.op.unary.f32(i32 22, float %4075)  ; Frc(value)
  %4079 = call float @dx.op.unary.f32(i32 22, float %4076)  ; Frc(value)
  %4080 = call float @dx.op.unary.f32(i32 22, float %4077)  ; Frc(value)
  %4081 = fmul fast float %4080, 0x401921FB60000000
  %4082 = call float @dx.op.unary.f32(i32 13, float %4081)  ; Sin(value)
  %4083 = call float @dx.op.unary.f32(i32 12, float %4081)  ; Cos(value)
  %4084 = fsub fast float -0.000000e+00, %4083
  %4085 = fmul fast float %4083, %4048
  %4086 = call float @dx.op.tertiary.f32(i32 46, float %4082, float %4049, float %4085)  ; FMad(a,b,c)
  %4087 = fmul fast float %4082, %4048
  %4088 = call float @dx.op.tertiary.f32(i32 46, float %4084, float %4049, float %4087)  ; FMad(a,b,c)
  %4089 = fadd fast float %4086, %4078
  %4090 = fadd fast float %4088, %4079
  %4091 = extractvalue %dx.types.CBufRet.f32 %4001, 3
  %4092 = bitcast float %4091 to i32
  %4093 = icmp eq i32 %4092, 0
  br i1 %4093, label %4132, label %4094

; <label>:4094                                    ; preds = %3997
  %4095 = add i32 %4092, 0
  %4096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4097 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4096, %dx.types.Handle %117, float %4089, float %4090, float undef, float undef, i32 0, i32 0, i32 undef, float %4052, float %4053, float undef, float %4056, float %4057, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4098 = extractvalue %dx.types.ResRet.f32 %4097, 0
  %4099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.f32 %4099, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4099, 2
  %4102 = fsub fast float 1.000000e+00, %3991
  %4103 = call float @dx.op.binary.f32(i32 35, float %4102, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4104 = bitcast float %3991 to i32
  %4105 = sitofp i32 %4104 to float
  %4106 = fadd fast float %4105, 0xC1CFBF8940000000
  %4107 = fmul fast float %4101, %4106
  %4108 = fadd fast float %4107, 0x41CFBF8940000000
  %4109 = fptosi float %4108 to i32
  %4110 = bitcast i32 %4109 to float
  %4111 = bitcast float %4103 to i32
  %4112 = sitofp i32 %4111 to float
  %4113 = fadd fast float %4112, 0xC1CFBF8940000000
  %4114 = fmul fast float %4113, %4101
  %4115 = fadd fast float %4114, 0x41CFBF8940000000
  %4116 = fptosi float %4115 to i32
  %4117 = bitcast i32 %4116 to float
  %4118 = fmul fast float %4110, %4100
  %4119 = fmul fast float %4117, %4100
  %4120 = fsub fast float %4103, %4118
  %4121 = fadd fast float %4119, %4103
  %4122 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4123 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4124 = fsub fast float %4098, %4122
  %4125 = fsub fast float %4123, %4122
  %4126 = bitcast float %4125 to i32
  %4127 = sub nsw i32 2129859010, %4126
  %4128 = bitcast i32 %4127 to float
  %4129 = fmul fast float %4128, %4124
  %4130 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4131 = fcmp fast olt float %4130, 0x3F70101020000000
  br i1 %4131, label %4270, label %4132

; <label>:4132                                    ; preds = %4094, %3997
  %4133 = phi float [ %4130, %4094 ], [ %3991, %3997 ]
  %4134 = fmul fast float %4133, %4000
  %4135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.i32 %4135, 1
  %4137 = extractvalue %dx.types.CBufRet.i32 %4135, 0
  %4138 = add i32 %4137, 0
  %4139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4140 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4139, %dx.types.Handle %116, float %4089, float %4090, float undef, float undef, i32 0, i32 0, i32 undef, float %4052, float %4053, float undef, float %4056, float %4057, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.ResRet.f32 %4140, 1
  %4143 = extractvalue %dx.types.ResRet.f32 %4140, 2
  %4144 = extractvalue %dx.types.ResRet.f32 %4140, 3
  %4145 = and i32 %4136, 255
  %4146 = uitofp i32 %4145 to float
  %4147 = lshr i32 %4136, 8
  %4148 = and i32 %4147, 255
  %4149 = uitofp i32 %4148 to float
  %4150 = fmul fast float %4144, %4146
  %4151 = fadd fast float %4150, %4149
  %4152 = fmul fast float %4151, 0x3F70101000000000
  %4153 = fadd fast float %4152, 0xBFB99999A0000000
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = fmul fast float %4154, 0x3FF1C71C80000000
  %4156 = call float @dx.op.binary.f32(i32 36, float %4152, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4157 = fsub fast float 1.000000e+00, %4155
  %4158 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4159 = fmul fast float %4158, %4141
  %4160 = fmul fast float %4158, %4142
  %4161 = fmul fast float %4158, %4143
  %4162 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4163 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4164 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4165 = fmul fast float %4155, %4141
  %4166 = fmul fast float %4155, %4142
  %4167 = fmul fast float %4155, %4143
  %4168 = fadd fast float %4165, %4156
  %4169 = fadd fast float %4166, %4156
  %4170 = fadd fast float %4167, %4156
  %4171 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4172 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4173 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.i32 %4174, 3
  %4176 = extractvalue %dx.types.CBufRet.i32 %4174, 2
  %4177 = add i32 %4176, 0
  %4178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4178, %dx.types.Handle %116, float %4089, float %4090, float undef, float undef, i32 0, i32 0, i32 undef, float %4052, float %4053, float undef, float %4056, float %4057, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  %4183 = extractvalue %dx.types.ResRet.f32 %4179, 3
  %4184 = and i32 %4175, 255
  %4185 = uitofp i32 %4184 to float
  %4186 = lshr i32 %4175, 8
  %4187 = and i32 %4186, 255
  %4188 = uitofp i32 %4187 to float
  %4189 = lshr i32 %4175, 16
  %4190 = and i32 %4189, 255
  %4191 = uitofp i32 %4190 to float
  %4192 = fmul fast float %4191, 0x3F70101000000000
  %4193 = fmul fast float %4180, %4185
  %4194 = fadd fast float %4193, %4188
  %4195 = fmul fast float %4194, 0x3F70101000000000
  %4196 = fadd fast float %4181, -5.000000e-01
  %4197 = fadd fast float %4183, -5.000000e-01
  %4198 = fmul fast float %4196, %4192
  %4199 = fmul fast float %4197, %4192
  %4200 = fadd fast float %4198, 5.000000e-01
  %4201 = fadd fast float %4199, 5.000000e-01
  %4202 = fmul fast float %4200, 2.000000e+00
  %4203 = fadd fast float %4202, -1.000000e+00
  %4204 = fmul fast float %4201, 2.000000e+00
  %4205 = fadd fast float %4204, -1.000000e+00
  %4206 = fadd fast float %4203, %4205
  %4207 = fmul fast float %4206, 5.000000e-01
  %4208 = fsub fast float %4203, %4205
  %4209 = fmul fast float %4208, 5.000000e-01
  %4210 = call float @dx.op.unary.f32(i32 6, float %4207)  ; FAbs(value)
  %4211 = fsub fast float 1.000000e+00, %4210
  %4212 = call float @dx.op.unary.f32(i32 6, float %4209)  ; FAbs(value)
  %4213 = fsub fast float %4211, %4212
  %4214 = call float @dx.op.dot3.f32(i32 55, float %4207, float %4209, float %4213, float %4207, float %4209, float %4213)  ; Dot3(ax,ay,az,bx,by,bz)
  %4215 = call float @dx.op.unary.f32(i32 25, float %4214)  ; Rsqrt(value)
  %4216 = fmul fast float %4207, %4215
  %4217 = fmul fast float %4209, %4215
  %4218 = select i1 %4045, i32 %4035, i32 %4036
  %4219 = select i1 %4043, i32 %4034, i32 %4218
  %4220 = sitofp i32 %4219 to float
  %4221 = fmul fast float %4213, %4220
  %4222 = fmul fast float %4221, %4215
  %4223 = select i1 %4045, float %4222, float %4217
  %4224 = select i1 %4045, float %4217, float %4222
  %4225 = select i1 %4043, float %4222, float %4216
  %4226 = select i1 %4043, float %4217, float %4223
  %4227 = select i1 %4043, float %4216, float %4224
  %4228 = fsub fast float %4162, %3595
  %4229 = fsub fast float %4163, %3596
  %4230 = fsub fast float %4164, %3597
  %4231 = fmul fast float %4228, %4134
  %4232 = fmul fast float %4229, %4134
  %4233 = fmul fast float %4230, %4134
  %4234 = fadd fast float %4231, %3595
  %4235 = fadd fast float %4232, %3596
  %4236 = fadd fast float %4233, %3597
  %4237 = fsub fast float %4171, %3580
  %4238 = fsub fast float %4172, %3581
  %4239 = fsub fast float %4173, %3582
  %4240 = fmul fast float %4237, %4134
  %4241 = fmul fast float %4238, %4134
  %4242 = fmul fast float %4239, %4134
  %4243 = fadd fast float %4240, %3580
  %4244 = fadd fast float %4241, %3581
  %4245 = fadd fast float %4242, %3582
  %4246 = fadd fast float %4225, %3559
  %4247 = fadd fast float %4226, %3560
  %4248 = fadd fast float %4227, %3561
  %4249 = call float @dx.op.dot3.f32(i32 55, float %4246, float %4247, float %4248, float %4246, float %4247, float %4248)  ; Dot3(ax,ay,az,bx,by,bz)
  %4250 = call float @dx.op.unary.f32(i32 25, float %4249)  ; Rsqrt(value)
  %4251 = fmul fast float %4246, %4250
  %4252 = fmul fast float %4247, %4250
  %4253 = fmul fast float %4248, %4250
  %4254 = fsub fast float %4251, %3559
  %4255 = fsub fast float %4252, %3560
  %4256 = fsub fast float %4253, %3561
  %4257 = fmul fast float %4254, %4134
  %4258 = fmul fast float %4255, %4134
  %4259 = fmul fast float %4256, %4134
  %4260 = fadd fast float %4257, %3559
  %4261 = fadd fast float %4258, %3560
  %4262 = fadd fast float %4259, %3561
  %4263 = call float @dx.op.binary.f32(i32 36, float %3485, float %4182)  ; FMin(a,b)
  %4264 = fsub fast float %4263, %3485
  %4265 = fmul fast float %4264, %4134
  %4266 = fadd fast float %4265, %3485
  %4267 = fsub fast float %4195, %3583
  %4268 = fmul fast float %4267, %4134
  %4269 = fadd fast float %4268, %3583
  br label %4270

; <label>:4270                                    ; preds = %4132, %4094, %3996
  %4271 = phi float [ %4243, %4132 ], [ %3580, %4094 ], [ %3580, %3996 ]
  %4272 = phi float [ %4244, %4132 ], [ %3581, %4094 ], [ %3581, %3996 ]
  %4273 = phi float [ %4245, %4132 ], [ %3582, %4094 ], [ %3582, %3996 ]
  %4274 = phi float [ %4260, %4132 ], [ %3559, %4094 ], [ %3559, %3996 ]
  %4275 = phi float [ %4261, %4132 ], [ %3560, %4094 ], [ %3560, %3996 ]
  %4276 = phi float [ %4262, %4132 ], [ %3561, %4094 ], [ %3561, %3996 ]
  %4277 = phi float [ %4234, %4132 ], [ %3595, %4094 ], [ %3595, %3996 ]
  %4278 = phi float [ %4235, %4132 ], [ %3596, %4094 ], [ %3596, %3996 ]
  %4279 = phi float [ %4236, %4132 ], [ %3597, %4094 ], [ %3597, %3996 ]
  %4280 = phi float [ %4269, %4132 ], [ %3583, %4094 ], [ %3583, %3996 ]
  %4281 = phi float [ %4266, %4132 ], [ %3485, %4094 ], [ %3485, %3996 ]
  br i1 %3994, label %4282, label %4555

; <label>:4282                                    ; preds = %4270
  %4283 = call float @dx.op.unary.f32(i32 23, float %4281)  ; Log(value)
  %4284 = fmul fast float %4283, 4.000000e+00
  %4285 = call float @dx.op.unary.f32(i32 21, float %4284)  ; Exp(value)
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 0
  %4288 = fmul fast float %4287, %62
  %4289 = fmul fast float %4287, %63
  %4290 = fmul fast float %4287, %64
  %4291 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4292 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4293 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4294 = call float @dx.op.unary.f32(i32 23, float %4291)  ; Log(value)
  %4295 = call float @dx.op.unary.f32(i32 23, float %4292)  ; Log(value)
  %4296 = call float @dx.op.unary.f32(i32 23, float %4293)  ; Log(value)
  %4297 = fmul fast float %4294, 4.000000e+00
  %4298 = fmul fast float %4295, 4.000000e+00
  %4299 = fmul fast float %4296, 4.000000e+00
  %4300 = call float @dx.op.unary.f32(i32 21, float %4297)  ; Exp(value)
  %4301 = call float @dx.op.unary.f32(i32 21, float %4298)  ; Exp(value)
  %4302 = call float @dx.op.unary.f32(i32 21, float %4299)  ; Exp(value)
  %4303 = fadd fast float %4301, %4300
  %4304 = fadd fast float %4303, %4302
  %4305 = fdiv fast float 1.000000e+00, %4304
  %4306 = fmul fast float %4305, %4300
  %4307 = fcmp fast ogt float %72, 0.000000e+00
  %4308 = fcmp fast ogt float %73, 0.000000e+00
  %4309 = fcmp fast ogt float %74, 0.000000e+00
  %4310 = fcmp fast olt float %72, 0.000000e+00
  %4311 = fcmp fast olt float %73, 0.000000e+00
  %4312 = fcmp fast olt float %74, 0.000000e+00
  %4313 = zext i1 %4307 to i32
  %4314 = zext i1 %4308 to i32
  %4315 = zext i1 %4309 to i32
  %4316 = zext i1 %4310 to i32
  %4317 = zext i1 %4311 to i32
  %4318 = zext i1 %4312 to i32
  %4319 = sub nsw i32 %4313, %4316
  %4320 = sub nsw i32 %4314, %4317
  %4321 = sub nsw i32 %4315, %4318
  %4322 = call float @dx.op.unary.f32(i32 83, float %4288)  ; DerivCoarseX(value)
  %4323 = call float @dx.op.unary.f32(i32 83, float %4289)  ; DerivCoarseX(value)
  %4324 = call float @dx.op.unary.f32(i32 83, float %4290)  ; DerivCoarseX(value)
  %4325 = call float @dx.op.unary.f32(i32 84, float %4288)  ; DerivCoarseY(value)
  %4326 = call float @dx.op.unary.f32(i32 84, float %4289)  ; DerivCoarseY(value)
  %4327 = call float @dx.op.unary.f32(i32 84, float %4290)  ; DerivCoarseY(value)
  %4328 = fcmp fast ole float %286, %4306
  %4329 = fmul fast float %4305, %4303
  %4330 = fcmp fast ole float %286, %4329
  %4331 = select i1 %4330, float %4290, float %4288
  %4332 = select i1 %4330, float %4288, float %4289
  %4333 = select i1 %4328, float %4289, float %4331
  %4334 = select i1 %4328, float %4290, float %4332
  %4335 = select i1 %4330, float %4324, float %4322
  %4336 = select i1 %4330, float %4322, float %4323
  %4337 = select i1 %4328, float %4323, float %4335
  %4338 = select i1 %4328, float %4324, float %4336
  %4339 = select i1 %4330, float %4327, float %4325
  %4340 = select i1 %4330, float %4325, float %4326
  %4341 = select i1 %4328, float %4326, float %4339
  %4342 = select i1 %4328, float %4327, float %4340
  %4343 = call float @dx.op.unary.f32(i32 27, float %4333)  ; Round_ni(value)
  %4344 = call float @dx.op.unary.f32(i32 27, float %4334)  ; Round_ni(value)
  %4345 = fptosi float %4343 to i32
  %4346 = fptosi float %4344 to i32
  %4347 = xor i32 %4346, %4345
  %4348 = sitofp i32 %4347 to float
  %4349 = fptosi float %4348 to i32
  %4350 = sitofp i32 %4349 to float
  %4351 = fmul fast float %4350, 0x3FE3C6EF40000000
  %4352 = frem fast float %4343, 2.560000e+02
  %4353 = frem fast float %4344, 2.560000e+02
  %4354 = fptoui float %4352 to i32
  %4355 = fptoui float %4353 to i32
  %4356 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %4354, i32 %4355, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = extractvalue %dx.types.ResRet.f32 %4356, 1
  %4359 = extractvalue %dx.types.ResRet.f32 %4356, 2
  %4360 = fadd fast float %4357, %4351
  %4361 = fadd fast float %4358, %4351
  %4362 = fadd fast float %4359, %4351
  %4363 = call float @dx.op.unary.f32(i32 22, float %4360)  ; Frc(value)
  %4364 = call float @dx.op.unary.f32(i32 22, float %4361)  ; Frc(value)
  %4365 = call float @dx.op.unary.f32(i32 22, float %4362)  ; Frc(value)
  %4366 = fmul fast float %4365, 0x401921FB60000000
  %4367 = call float @dx.op.unary.f32(i32 13, float %4366)  ; Sin(value)
  %4368 = call float @dx.op.unary.f32(i32 12, float %4366)  ; Cos(value)
  %4369 = fsub fast float -0.000000e+00, %4368
  %4370 = fmul fast float %4368, %4333
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %4367, float %4334, float %4370)  ; FMad(a,b,c)
  %4372 = fmul fast float %4367, %4333
  %4373 = call float @dx.op.tertiary.f32(i32 46, float %4369, float %4334, float %4372)  ; FMad(a,b,c)
  %4374 = fadd fast float %4371, %4363
  %4375 = fadd fast float %4373, %4364
  %4376 = extractvalue %dx.types.CBufRet.f32 %4286, 3
  %4377 = bitcast float %4376 to i32
  %4378 = icmp eq i32 %4377, 0
  br i1 %4378, label %4417, label %4379

; <label>:4379                                    ; preds = %4282
  %4380 = add i32 %4377, 0
  %4381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4380, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4382 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4381, %dx.types.Handle %117, float %4374, float %4375, float undef, float undef, i32 0, i32 0, i32 undef, float %4337, float %4338, float undef, float %4341, float %4342, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4383 = extractvalue %dx.types.ResRet.f32 %4382, 0
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 1
  %4386 = extractvalue %dx.types.CBufRet.f32 %4384, 2
  %4387 = fsub fast float 1.000000e+00, %3992
  %4388 = call float @dx.op.binary.f32(i32 35, float %4387, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4389 = bitcast float %3992 to i32
  %4390 = sitofp i32 %4389 to float
  %4391 = fadd fast float %4390, 0xC1CFBF8940000000
  %4392 = fmul fast float %4386, %4391
  %4393 = fadd fast float %4392, 0x41CFBF8940000000
  %4394 = fptosi float %4393 to i32
  %4395 = bitcast i32 %4394 to float
  %4396 = bitcast float %4388 to i32
  %4397 = sitofp i32 %4396 to float
  %4398 = fadd fast float %4397, 0xC1CFBF8940000000
  %4399 = fmul fast float %4398, %4386
  %4400 = fadd fast float %4399, 0x41CFBF8940000000
  %4401 = fptosi float %4400 to i32
  %4402 = bitcast i32 %4401 to float
  %4403 = fmul fast float %4395, %4385
  %4404 = fmul fast float %4402, %4385
  %4405 = fsub fast float %4388, %4403
  %4406 = fadd fast float %4404, %4388
  %4407 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4408 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4409 = fsub fast float %4383, %4407
  %4410 = fsub fast float %4408, %4407
  %4411 = bitcast float %4410 to i32
  %4412 = sub nsw i32 2129859010, %4411
  %4413 = bitcast i32 %4412 to float
  %4414 = fmul fast float %4413, %4409
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4416 = fcmp fast olt float %4415, 0x3F70101020000000
  br i1 %4416, label %4555, label %4417

; <label>:4417                                    ; preds = %4379, %4282
  %4418 = phi float [ %4415, %4379 ], [ %3992, %4282 ]
  %4419 = fmul fast float %4418, %4285
  %4420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.i32 %4420, 1
  %4422 = extractvalue %dx.types.CBufRet.i32 %4420, 0
  %4423 = add i32 %4422, 0
  %4424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4425 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4424, %dx.types.Handle %116, float %4374, float %4375, float undef, float undef, i32 0, i32 0, i32 undef, float %4337, float %4338, float undef, float %4341, float %4342, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4426 = extractvalue %dx.types.ResRet.f32 %4425, 0
  %4427 = extractvalue %dx.types.ResRet.f32 %4425, 1
  %4428 = extractvalue %dx.types.ResRet.f32 %4425, 2
  %4429 = extractvalue %dx.types.ResRet.f32 %4425, 3
  %4430 = and i32 %4421, 255
  %4431 = uitofp i32 %4430 to float
  %4432 = lshr i32 %4421, 8
  %4433 = and i32 %4432, 255
  %4434 = uitofp i32 %4433 to float
  %4435 = fmul fast float %4429, %4431
  %4436 = fadd fast float %4435, %4434
  %4437 = fmul fast float %4436, 0x3F70101000000000
  %4438 = fadd fast float %4437, 0xBFB99999A0000000
  %4439 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4440 = fmul fast float %4439, 0x3FF1C71C80000000
  %4441 = call float @dx.op.binary.f32(i32 36, float %4437, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4442 = fsub fast float 1.000000e+00, %4440
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = fmul fast float %4443, %4426
  %4445 = fmul fast float %4443, %4427
  %4446 = fmul fast float %4443, %4428
  %4447 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4448 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4449 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4450 = fmul fast float %4440, %4426
  %4451 = fmul fast float %4440, %4427
  %4452 = fmul fast float %4440, %4428
  %4453 = fadd fast float %4450, %4441
  %4454 = fadd fast float %4451, %4441
  %4455 = fadd fast float %4452, %4441
  %4456 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.i32 %4459, 3
  %4461 = extractvalue %dx.types.CBufRet.i32 %4459, 2
  %4462 = add i32 %4461, 0
  %4463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4462, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4464 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4463, %dx.types.Handle %116, float %4374, float %4375, float undef, float undef, i32 0, i32 0, i32 undef, float %4337, float %4338, float undef, float %4341, float %4342, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4465 = extractvalue %dx.types.ResRet.f32 %4464, 0
  %4466 = extractvalue %dx.types.ResRet.f32 %4464, 1
  %4467 = extractvalue %dx.types.ResRet.f32 %4464, 2
  %4468 = extractvalue %dx.types.ResRet.f32 %4464, 3
  %4469 = and i32 %4460, 255
  %4470 = uitofp i32 %4469 to float
  %4471 = lshr i32 %4460, 8
  %4472 = and i32 %4471, 255
  %4473 = uitofp i32 %4472 to float
  %4474 = lshr i32 %4460, 16
  %4475 = and i32 %4474, 255
  %4476 = uitofp i32 %4475 to float
  %4477 = fmul fast float %4476, 0x3F70101000000000
  %4478 = fmul fast float %4465, %4470
  %4479 = fadd fast float %4478, %4473
  %4480 = fmul fast float %4479, 0x3F70101000000000
  %4481 = fadd fast float %4466, -5.000000e-01
  %4482 = fadd fast float %4468, -5.000000e-01
  %4483 = fmul fast float %4481, %4477
  %4484 = fmul fast float %4482, %4477
  %4485 = fadd fast float %4483, 5.000000e-01
  %4486 = fadd fast float %4484, 5.000000e-01
  %4487 = fmul fast float %4485, 2.000000e+00
  %4488 = fadd fast float %4487, -1.000000e+00
  %4489 = fmul fast float %4486, 2.000000e+00
  %4490 = fadd fast float %4489, -1.000000e+00
  %4491 = fadd fast float %4488, %4490
  %4492 = fmul fast float %4491, 5.000000e-01
  %4493 = fsub fast float %4488, %4490
  %4494 = fmul fast float %4493, 5.000000e-01
  %4495 = call float @dx.op.unary.f32(i32 6, float %4492)  ; FAbs(value)
  %4496 = fsub fast float 1.000000e+00, %4495
  %4497 = call float @dx.op.unary.f32(i32 6, float %4494)  ; FAbs(value)
  %4498 = fsub fast float %4496, %4497
  %4499 = call float @dx.op.dot3.f32(i32 55, float %4492, float %4494, float %4498, float %4492, float %4494, float %4498)  ; Dot3(ax,ay,az,bx,by,bz)
  %4500 = call float @dx.op.unary.f32(i32 25, float %4499)  ; Rsqrt(value)
  %4501 = fmul fast float %4492, %4500
  %4502 = fmul fast float %4494, %4500
  %4503 = select i1 %4330, i32 %4320, i32 %4321
  %4504 = select i1 %4328, i32 %4319, i32 %4503
  %4505 = sitofp i32 %4504 to float
  %4506 = fmul fast float %4498, %4505
  %4507 = fmul fast float %4506, %4500
  %4508 = select i1 %4330, float %4507, float %4502
  %4509 = select i1 %4330, float %4502, float %4507
  %4510 = select i1 %4328, float %4507, float %4501
  %4511 = select i1 %4328, float %4502, float %4508
  %4512 = select i1 %4328, float %4501, float %4509
  %4513 = fsub fast float %4447, %4277
  %4514 = fsub fast float %4448, %4278
  %4515 = fsub fast float %4449, %4279
  %4516 = fmul fast float %4513, %4419
  %4517 = fmul fast float %4514, %4419
  %4518 = fmul fast float %4515, %4419
  %4519 = fadd fast float %4516, %4277
  %4520 = fadd fast float %4517, %4278
  %4521 = fadd fast float %4518, %4279
  %4522 = fsub fast float %4456, %4271
  %4523 = fsub fast float %4457, %4272
  %4524 = fsub fast float %4458, %4273
  %4525 = fmul fast float %4522, %4419
  %4526 = fmul fast float %4523, %4419
  %4527 = fmul fast float %4524, %4419
  %4528 = fadd fast float %4525, %4271
  %4529 = fadd fast float %4526, %4272
  %4530 = fadd fast float %4527, %4273
  %4531 = fadd fast float %4510, %4274
  %4532 = fadd fast float %4511, %4275
  %4533 = fadd fast float %4512, %4276
  %4534 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %4535 = call float @dx.op.unary.f32(i32 25, float %4534)  ; Rsqrt(value)
  %4536 = fmul fast float %4531, %4535
  %4537 = fmul fast float %4532, %4535
  %4538 = fmul fast float %4533, %4535
  %4539 = fsub fast float %4536, %4274
  %4540 = fsub fast float %4537, %4275
  %4541 = fsub fast float %4538, %4276
  %4542 = fmul fast float %4539, %4419
  %4543 = fmul fast float %4540, %4419
  %4544 = fmul fast float %4541, %4419
  %4545 = fadd fast float %4542, %4274
  %4546 = fadd fast float %4543, %4275
  %4547 = fadd fast float %4544, %4276
  %4548 = call float @dx.op.binary.f32(i32 36, float %4281, float %4467)  ; FMin(a,b)
  %4549 = fsub fast float %4548, %4281
  %4550 = fmul fast float %4549, %4419
  %4551 = fadd fast float %4550, %4281
  %4552 = fsub fast float %4480, %4280
  %4553 = fmul fast float %4552, %4419
  %4554 = fadd fast float %4553, %4280
  br label %4555

; <label>:4555                                    ; preds = %4417, %4379, %4270, %3986
  %4556 = phi float [ %4528, %4417 ], [ %4271, %4379 ], [ %4271, %4270 ], [ %3580, %3986 ]
  %4557 = phi float [ %4529, %4417 ], [ %4272, %4379 ], [ %4272, %4270 ], [ %3581, %3986 ]
  %4558 = phi float [ %4530, %4417 ], [ %4273, %4379 ], [ %4273, %4270 ], [ %3582, %3986 ]
  %4559 = phi float [ %4545, %4417 ], [ %4274, %4379 ], [ %4274, %4270 ], [ %3559, %3986 ]
  %4560 = phi float [ %4546, %4417 ], [ %4275, %4379 ], [ %4275, %4270 ], [ %3560, %3986 ]
  %4561 = phi float [ %4547, %4417 ], [ %4276, %4379 ], [ %4276, %4270 ], [ %3561, %3986 ]
  %4562 = phi float [ %4519, %4417 ], [ %4277, %4379 ], [ %4277, %4270 ], [ %3595, %3986 ]
  %4563 = phi float [ %4520, %4417 ], [ %4278, %4379 ], [ %4278, %4270 ], [ %3596, %3986 ]
  %4564 = phi float [ %4521, %4417 ], [ %4279, %4379 ], [ %4279, %4270 ], [ %3597, %3986 ]
  %4565 = phi float [ %4554, %4417 ], [ %4280, %4379 ], [ %4280, %4270 ], [ %3583, %3986 ]
  %4566 = phi float [ %4551, %4417 ], [ %4281, %4379 ], [ %4281, %4270 ], [ %3485, %3986 ]
  %4567 = fcmp fast une float %3990, 0.000000e+00
  br i1 %4567, label %4568, label %4737

; <label>:4568                                    ; preds = %4555
  %4569 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %4570 = call float @dx.op.unary.f32(i32 25, float %4569)  ; Rsqrt(value)
  %4571 = fmul fast float %203, %4570
  %4572 = fsub fast float -0.000000e+00, %4571
  %4573 = fmul fast float %204, %4570
  %4574 = fsub fast float -0.000000e+00, %4573
  %4575 = fmul fast float %205, %4570
  %4576 = fsub fast float -0.000000e+00, %4575
  %4577 = call float @dx.op.dot3.f32(i32 55, float %4572, float %4574, float %4576, float %129, float %131, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = fmul fast float %3990, 2.500000e+00
  %4579 = call float @dx.op.unary.f32(i32 7, float %4578)  ; Saturate(value)
  %4580 = fmul fast float %3990, 0x4013FFFFE0000000
  %4581 = fadd fast float %4580, 0xBFFFFFFFE0000000
  %4582 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4583 = fmul fast float %3990, 0x4004000020000000
  %4584 = fadd fast float %4583, 0xBFF8000040000000
  %4585 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4586 = fmul fast float %3562, 1.000000e+01
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = fmul fast float %4587, 2.000000e+00
  %4589 = fsub fast float 3.000000e+00, %4588
  %4590 = fmul fast float %4587, %4587
  %4591 = fmul fast float %4590, %4589
  %4592 = fsub fast float 1.000000e+00, %4591
  %4593 = fsub fast float 0x3FE3333340000000, %4565
  %4594 = fmul fast float %4593, 0x400AAAAAA0000000
  %4595 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4596 = fmul fast float %4592, %4595
  %4597 = fmul fast float %4562, 0x3FEA2B8620000000
  %4598 = fmul fast float %4563, 0x3FEA2B8620000000
  %4599 = fmul fast float %4564, 0x3FEA2B8620000000
  %4600 = fadd fast float %4597, 0x3FC81DFBA0000000
  %4601 = fmul fast float %4600, %4562
  %4602 = fadd fast float %4601, 0x3F910E6020000000
  %4603 = fadd fast float %4598, 0x3FC81DFBA0000000
  %4604 = fmul fast float %4603, %4563
  %4605 = fadd fast float %4604, 0x3F910E6020000000
  %4606 = fadd fast float %4599, 0x3FC81DFBA0000000
  %4607 = fmul fast float %4606, %4564
  %4608 = fadd fast float %4607, 0x3F910E6020000000
  %4609 = call float @dx.op.unary.f32(i32 7, float %4602)  ; Saturate(value)
  %4610 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4611 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4612 = fsub fast float %4609, %4562
  %4613 = fsub fast float %4610, %4563
  %4614 = fsub fast float %4611, %4564
  %4615 = fmul fast float %4612, %4579
  %4616 = fmul fast float %4615, %4596
  %4617 = fmul fast float %4613, %4579
  %4618 = fmul fast float %4617, %4596
  %4619 = fmul fast float %4614, %4579
  %4620 = fmul fast float %4619, %4596
  %4621 = fadd fast float %4616, %4562
  %4622 = fadd fast float %4618, %4563
  %4623 = fadd fast float %4620, %4564
  %4624 = fmul fast float %4566, %4566
  %4625 = fmul fast float %4624, %4624
  %4626 = fadd fast float %4582, 1.000000e+00
  %4627 = fsub fast float %4626, %4596
  %4628 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4629 = call float @dx.op.dot3.f32(i32 55, float %129, float %131, float %133, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = fsub fast float 1.000000e+00, %4625
  %4632 = call float @dx.op.binary.f32(i32 36, float %4628, float %4631)  ; FMin(a,b)
  %4633 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4634 = call float @dx.op.binary.f32(i32 35, float %4632, float %4633)  ; FMax(a,b)
  %4635 = fadd fast float %4630, 0xBFE4CCCCC0000000
  %4636 = fmul fast float %4635, 0x4006DB6DA0000000
  %4637 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4638 = fmul fast float %4637, 2.000000e+00
  %4639 = fsub fast float 3.000000e+00, %4638
  %4640 = bitcast float %4556 to i32
  %4641 = ashr i32 %4640, 1
  %4642 = add nsw i32 %4641, 532487669
  %4643 = bitcast i32 %4642 to float
  %4644 = fsub fast float 1.000000e+00, %4643
  %4645 = bitcast float %4644 to i32
  %4646 = sub nsw i32 2129859010, %4645
  %4647 = bitcast i32 %4646 to float
  %4648 = fmul fast float %4647, 2.000000e+00
  %4649 = bitcast float %4557 to i32
  %4650 = ashr i32 %4649, 1
  %4651 = add nsw i32 %4650, 532487669
  %4652 = bitcast i32 %4651 to float
  %4653 = fsub fast float 1.000000e+00, %4652
  %4654 = bitcast float %4653 to i32
  %4655 = sub nsw i32 2129859010, %4654
  %4656 = bitcast i32 %4655 to float
  %4657 = fmul fast float %4656, 2.000000e+00
  %4658 = bitcast float %4558 to i32
  %4659 = ashr i32 %4658, 1
  %4660 = add nsw i32 %4659, 532487669
  %4661 = bitcast i32 %4660 to float
  %4662 = fsub fast float 1.000000e+00, %4661
  %4663 = bitcast float %4662 to i32
  %4664 = sub nsw i32 2129859010, %4663
  %4665 = bitcast i32 %4664 to float
  %4666 = fmul fast float %4665, 2.000000e+00
  %4667 = fsub fast float 0x4002A9FBE0000000, %4648
  %4668 = fadd fast float %4648, 0x3FD54FDF00000000
  %4669 = bitcast float %4668 to i32
  %4670 = sub nsw i32 2129859010, %4669
  %4671 = bitcast i32 %4670 to float
  %4672 = fmul fast float %4671, %4667
  %4673 = fmul fast float %4672, %4672
  %4674 = fsub fast float 0x4002A9FBE0000000, %4657
  %4675 = fadd fast float %4657, 0x3FD54FDF00000000
  %4676 = bitcast float %4675 to i32
  %4677 = sub nsw i32 2129859010, %4676
  %4678 = bitcast i32 %4677 to float
  %4679 = fmul fast float %4678, %4674
  %4680 = fmul fast float %4679, %4679
  %4681 = fsub fast float 0x4002A9FBE0000000, %4666
  %4682 = fadd fast float %4666, 0x3FD54FDF00000000
  %4683 = bitcast float %4682 to i32
  %4684 = sub nsw i32 2129859010, %4683
  %4685 = bitcast i32 %4684 to float
  %4686 = fmul fast float %4685, %4681
  %4687 = fmul fast float %4686, %4686
  %4688 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4673)  ; FMax(a,b)
  %4689 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4680)  ; FMax(a,b)
  %4690 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4687)  ; FMax(a,b)
  %4691 = fsub fast float 1.000000e+00, %4577
  %4692 = fadd fast float %4691, %4592
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fsub fast float 1.000000e+00, %3971
  %4695 = fmul fast float %4634, %4694
  %4696 = fmul fast float %4637, %4637
  %4697 = fmul fast float %4696, %4695
  %4698 = fmul fast float %4697, %4639
  %4699 = fmul fast float %4694, 0xBFE99999A0000000
  %4700 = fmul fast float %4699, %4579
  %4701 = fmul fast float %4700, %4596
  %4702 = fadd fast float %4701, 1.000000e+00
  %4703 = fadd fast float %4565, -1.000000e+00
  %4704 = fmul fast float %4702, %4703
  %4705 = fadd fast float %4704, 1.000000e+00
  %4706 = fsub fast float %4688, %4556
  %4707 = fsub fast float %4689, %4557
  %4708 = fsub fast float %4690, %4558
  %4709 = fmul fast float %4698, %4706
  %4710 = fmul fast float %4698, %4707
  %4711 = fmul fast float %4698, %4708
  %4712 = fadd fast float %4709, %4556
  %4713 = fadd fast float %4710, %4557
  %4714 = fadd fast float %4711, %4558
  %4715 = fsub fast float %129, %4559
  %4716 = fsub fast float %131, %4560
  %4717 = fsub fast float %133, %4561
  %4718 = fmul fast float %4698, %4715
  %4719 = fmul fast float %4698, %4716
  %4720 = fmul fast float %4698, %4717
  %4721 = fadd fast float %4718, %4559
  %4722 = fadd fast float %4719, %4560
  %4723 = fadd fast float %4720, %4561
  %4724 = fmul fast float %4698, %4693
  %4725 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4726 = fsub fast float 1.000000e+00, %4725
  %4727 = fmul fast float %4724, %4726
  %4728 = fadd fast float %4727, %4725
  %4729 = fsub fast float 1.000000e+00, %4566
  %4730 = fmul fast float %4698, %4729
  %4731 = fadd fast float %4730, %4566
  %4732 = call float @dx.op.dot3.f32(i32 55, float %4721, float %4722, float %4723, float %4721, float %4722, float %4723)  ; Dot3(ax,ay,az,bx,by,bz)
  %4733 = call float @dx.op.unary.f32(i32 25, float %4732)  ; Rsqrt(value)
  %4734 = fmul fast float %4721, %4733
  %4735 = fmul fast float %4722, %4733
  %4736 = fmul fast float %4723, %4733
  br label %4737

; <label>:4737                                    ; preds = %4568, %4555
  %4738 = phi float [ %4712, %4568 ], [ %4556, %4555 ]
  %4739 = phi float [ %4713, %4568 ], [ %4557, %4555 ]
  %4740 = phi float [ %4714, %4568 ], [ %4558, %4555 ]
  %4741 = phi float [ %4734, %4568 ], [ %4559, %4555 ]
  %4742 = phi float [ %4735, %4568 ], [ %4560, %4555 ]
  %4743 = phi float [ %4736, %4568 ], [ %4561, %4555 ]
  %4744 = phi float [ %4621, %4568 ], [ %4562, %4555 ]
  %4745 = phi float [ %4622, %4568 ], [ %4563, %4555 ]
  %4746 = phi float [ %4623, %4568 ], [ %4564, %4555 ]
  %4747 = phi float [ %4728, %4568 ], [ %4565, %4555 ]
  %4748 = phi float [ %4731, %4568 ], [ %4566, %4555 ]
  %4749 = icmp eq i32 %61, 0
  br i1 %4749, label %4780, label %4750

; <label>:4750                                    ; preds = %4737
  %4751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.f32 %4751, 2
  %4753 = extractvalue %dx.types.CBufRet.f32 %4751, 3
  %4754 = fmul fast float %4752, %120
  %4755 = fmul fast float %4753, %121
  %4756 = fmul fast float %4754, 1.024000e+03
  %4757 = fmul fast float %4755, 1.024000e+03
  %4758 = fadd fast float %4756, -5.120000e+02
  %4759 = fadd fast float %4757, -5.120000e+02
  %4760 = fmul fast float %4754, 0x4081BEDF00000000
  %4761 = fadd fast float %4760, 0xC071BEDF00000000
  %4762 = call float @dx.op.unary.f32(i32 22, float %4761)  ; Frc(value)
  %4763 = fmul fast float %4758, %4762
  %4764 = fadd fast float %4763, %4759
  %4765 = fmul fast float %4755, 0x4073BEBE20000000
  %4766 = fadd fast float %4765, 0xC063BEBE20000000
  %4767 = call float @dx.op.unary.f32(i32 22, float %4766)  ; Frc(value)
  %4768 = fmul fast float %4759, %4767
  %4769 = fadd fast float %4768, %4758
  %4770 = fmul fast float %4764, %4769
  %4771 = call float @dx.op.unary.f32(i32 22, float %4770)  ; Frc(value)
  %4772 = add i32 %329, 12
  %4773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %4772, i32 undef)  ; BufferLoad(srv,index,wot)
  %4774 = extractvalue %dx.types.ResRet.i32 %4773, 0
  %4775 = and i32 %4774, 255
  %4776 = uitofp i32 %4775 to float
  %4777 = fmul fast float %4776, 0x3F70101020000000
  %4778 = fcmp fast olt float %4771, %4777
  br i1 %4778, label %4779, label %4780

; <label>:4779                                    ; preds = %4750
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4780

; <label>:4780                                    ; preds = %4779, %4750, %4737
  %4781 = fsub fast float -0.000000e+00, %205
  %4782 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = call float @dx.op.unary.f32(i32 25, float %4782)  ; Rsqrt(value)
  %4784 = fmul fast float %4783, %203
  %4785 = fmul fast float %4783, %204
  %4786 = fmul fast float %4783, %205
  %4787 = fsub fast float -0.000000e+00, %4784
  %4788 = fsub fast float -0.000000e+00, %4785
  %4789 = fsub fast float -0.000000e+00, %4786
  %4790 = select i1 %275, float 0.000000e+00, float %4740
  %4791 = call float @dx.op.dot3.f32(i32 55, float %4741, float %4742, float %4743, float %4787, float %4788, float %4789)  ; Dot3(ax,ay,az,bx,by,bz)
  %4792 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4784, float %4785, float %4786, float %4741, float %4742, float %4743)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = fmul fast float %4793, 2.000000e+00
  %4795 = fmul fast float %4794, %4741
  %4796 = fmul fast float %4794, %4742
  %4797 = fmul fast float %4794, %4743
  %4798 = fsub fast float %4784, %4795
  %4799 = fsub fast float %4785, %4796
  %4800 = fsub fast float %4786, %4797
  %4801 = call float @dx.op.binary.f32(i32 36, float %4748, float 1.000000e+00)  ; FMin(a,b)
  %4802 = fsub fast float 1.000000e+00, %4801
  %4803 = bitcast float %4802 to i32
  %4804 = ashr i32 %4803, 1
  %4805 = add nsw i32 %4804, 532487669
  %4806 = bitcast i32 %4805 to float
  %4807 = fsub fast float 1.000000e+00, %4747
  %4808 = call float @dx.op.binary.f32(i32 35, float %4807, float 0x3F847AE140000000)  ; FMax(a,b)
  %4809 = fmul fast float %4808, %4808
  %4810 = fmul fast float %4809, %4809
  %4811 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %4806, float %4810, float %4811, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = fsub fast float 1.000000e+00, %4748
  %4815 = bitcast float %4814 to i32
  %4816 = sub nsw i32 2129859010, %4815
  %4817 = call float @dx.op.dot3.f32(i32 55, float %87, float %83, float %79, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4818 = fmul fast float %4817, 0x3FD20DD760000000
  %4819 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %87)  ; FMax(a,b)
  %4820 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %4821 = fcmp fast oeq float %4820, 0.000000e+00
  %4822 = fcmp fast oeq float %4819, 0.000000e+00
  %4823 = or i1 %4822, %4821
  br i1 %4823, label %4853, label %4824

; <label>:4824                                    ; preds = %4780
  %4825 = fsub fast float -0.000000e+00, %90
  %4826 = fsub fast float -0.000000e+00, %88
  %4827 = call float @dx.op.unary.f32(i32 24, float %4820)  ; Sqrt(value)
  %4828 = fdiv fast float %4827, %4819
  %4829 = fcmp fast ogt float %4828, 0x3FFB6F8900000000
  %4830 = select i1 %4829, float 0x3FFB6F8900000000, float %4828
  %4831 = fmul fast float %4830, 0x3FE8A23460000000
  %4832 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4833 = call float @dx.op.binary.f32(i32 35, float %4830, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4834 = fmul fast float %4832, %4819
  %4835 = fmul fast float %4833, 0x3FF279A740000000
  %4836 = fadd fast float %4835, -1.000000e+00
  %4837 = call float @dx.op.dot3.f32(i32 55, float %4825, float %4826, float %89, float %4825, float %4826, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4838 = call float @dx.op.unary.f32(i32 25, float %4837)  ; Rsqrt(value)
  %4839 = fmul fast float %4838, %4825
  %4840 = fmul fast float %4838, %4826
  %4841 = fmul fast float %4838, %89
  %4842 = fmul fast float %4836, %4836
  %4843 = fsub fast float 1.000000e+00, %4842
  %4844 = fmul fast float %4833, 0x40005F8BE0000000
  %4845 = fsub fast float 0x400C5BF8A0000000, %4844
  %4846 = fdiv fast float %4834, %4845
  %4847 = fmul fast float %4846, 0x3FEE31C3C0000000
  %4848 = fmul fast float %4847, %4843
  %4849 = fmul fast float %4833, 0x3FDACB7480000000
  %4850 = fadd fast float %4849, 0xBFD7347680000000
  %4851 = fmul fast float %4850, %4846
  %4852 = fmul fast float %4851, %4843
  br label %4853

; <label>:4853                                    ; preds = %4824, %4780
  %4854 = phi float [ %4839, %4824 ], [ 0.000000e+00, %4780 ]
  %4855 = phi float [ %4840, %4824 ], [ 0.000000e+00, %4780 ]
  %4856 = phi float [ %4841, %4824 ], [ 0.000000e+00, %4780 ]
  %4857 = phi float [ %4848, %4824 ], [ 0.000000e+00, %4780 ]
  %4858 = phi float [ %4852, %4824 ], [ 0.000000e+00, %4780 ]
  %4859 = call float @dx.op.dot3.f32(i32 55, float %4854, float %4855, float %4856, float %4741, float %4742, float %4743)  ; Dot3(ax,ay,az,bx,by,bz)
  %4860 = fmul fast float %4859, %4859
  %4861 = fmul fast float %4860, 0x3FEE471020000000
  %4862 = fadd fast float %4861, 0xBFD42F6020000000
  %4863 = fmul fast float %4819, 0x3FD20DD760000000
  %4864 = fmul fast float %4862, %4858
  %4865 = fmul fast float %4857, 0x3FDF454380000000
  %4866 = fmul fast float %4865, %4859
  %4867 = fadd fast float %4866, %4863
  %4868 = fadd fast float %4867, %4864
  %4869 = call float @dx.op.dot3.f32(i32 55, float %4854, float %4855, float %4856, float %4798, float %4799, float %4800)  ; Dot3(ax,ay,az,bx,by,bz)
  %4870 = fmul fast float %4869, 0x3FDF454380000000
  %4871 = fmul fast float %4869, %4869
  %4872 = fmul fast float %4871, 0x3FEE471020000000
  %4873 = fadd fast float %4872, 0xBFD42F6020000000
  %4874 = call float @dx.op.dot3.f32(i32 55, float %4819, float %4857, float %4858, float 0x3FD20DD760000000, float %4870, float %4873)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %83)  ; FMax(a,b)
  %4876 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4877 = fcmp fast oeq float %4876, 0.000000e+00
  %4878 = fcmp fast oeq float %4875, 0.000000e+00
  %4879 = or i1 %4878, %4877
  br i1 %4879, label %4909, label %4880

; <label>:4880                                    ; preds = %4853
  %4881 = fsub fast float -0.000000e+00, %86
  %4882 = fsub fast float -0.000000e+00, %84
  %4883 = call float @dx.op.unary.f32(i32 24, float %4876)  ; Sqrt(value)
  %4884 = fdiv fast float %4883, %4875
  %4885 = fcmp fast ogt float %4884, 0x3FFB6F8900000000
  %4886 = select i1 %4885, float 0x3FFB6F8900000000, float %4884
  %4887 = fmul fast float %4886, 0x3FE8A23460000000
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = call float @dx.op.binary.f32(i32 35, float %4886, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4890 = fmul fast float %4888, %4875
  %4891 = fmul fast float %4889, 0x3FF279A740000000
  %4892 = fadd fast float %4891, -1.000000e+00
  %4893 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %85, float %4881, float %4882, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4894 = call float @dx.op.unary.f32(i32 25, float %4893)  ; Rsqrt(value)
  %4895 = fmul fast float %4894, %4881
  %4896 = fmul fast float %4894, %4882
  %4897 = fmul fast float %4894, %85
  %4898 = fmul fast float %4892, %4892
  %4899 = fsub fast float 1.000000e+00, %4898
  %4900 = fmul fast float %4889, 0x40005F8BE0000000
  %4901 = fsub fast float 0x400C5BF8A0000000, %4900
  %4902 = fdiv fast float %4890, %4901
  %4903 = fmul fast float %4902, 0x3FEE31C3C0000000
  %4904 = fmul fast float %4903, %4899
  %4905 = fmul fast float %4889, 0x3FDACB7480000000
  %4906 = fadd fast float %4905, 0xBFD7347680000000
  %4907 = fmul fast float %4906, %4902
  %4908 = fmul fast float %4907, %4899
  br label %4909

; <label>:4909                                    ; preds = %4880, %4853
  %4910 = phi float [ %4895, %4880 ], [ 0.000000e+00, %4853 ]
  %4911 = phi float [ %4896, %4880 ], [ 0.000000e+00, %4853 ]
  %4912 = phi float [ %4897, %4880 ], [ 0.000000e+00, %4853 ]
  %4913 = phi float [ %4904, %4880 ], [ 0.000000e+00, %4853 ]
  %4914 = phi float [ %4908, %4880 ], [ 0.000000e+00, %4853 ]
  %4915 = call float @dx.op.dot3.f32(i32 55, float %4910, float %4911, float %4912, float %4741, float %4742, float %4743)  ; Dot3(ax,ay,az,bx,by,bz)
  %4916 = fmul fast float %4915, %4915
  %4917 = fmul fast float %4916, 0x3FEE471020000000
  %4918 = fadd fast float %4917, 0xBFD42F6020000000
  %4919 = fmul fast float %4875, 0x3FD20DD760000000
  %4920 = fmul fast float %4918, %4914
  %4921 = fmul fast float %4913, 0x3FDF454380000000
  %4922 = fmul fast float %4921, %4915
  %4923 = fadd fast float %4922, %4919
  %4924 = fadd fast float %4923, %4920
  %4925 = call float @dx.op.dot3.f32(i32 55, float %4910, float %4911, float %4912, float %4798, float %4799, float %4800)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = fmul fast float %4925, 0x3FDF454380000000
  %4927 = fmul fast float %4925, %4925
  %4928 = fmul fast float %4927, 0x3FEE471020000000
  %4929 = fadd fast float %4928, 0xBFD42F6020000000
  %4930 = call float @dx.op.dot3.f32(i32 55, float %4875, float %4913, float %4914, float 0x3FD20DD760000000, float %4926, float %4929)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %4932 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = fcmp fast oeq float %4932, 0.000000e+00
  %4934 = fcmp fast oeq float %4931, 0.000000e+00
  %4935 = or i1 %4934, %4933
  br i1 %4935, label %4965, label %4936

; <label>:4936                                    ; preds = %4909
  %4937 = fsub fast float -0.000000e+00, %82
  %4938 = fsub fast float -0.000000e+00, %80
  %4939 = call float @dx.op.unary.f32(i32 24, float %4932)  ; Sqrt(value)
  %4940 = fdiv fast float %4939, %4931
  %4941 = fcmp fast ogt float %4940, 0x3FFB6F8900000000
  %4942 = select i1 %4941, float 0x3FFB6F8900000000, float %4940
  %4943 = fmul fast float %4942, 0x3FE8A23460000000
  %4944 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4945 = call float @dx.op.binary.f32(i32 35, float %4942, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4946 = fmul fast float %4944, %4931
  %4947 = fmul fast float %4945, 0x3FF279A740000000
  %4948 = fadd fast float %4947, -1.000000e+00
  %4949 = call float @dx.op.dot3.f32(i32 55, float %4937, float %4938, float %81, float %4937, float %4938, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4950 = call float @dx.op.unary.f32(i32 25, float %4949)  ; Rsqrt(value)
  %4951 = fmul fast float %4950, %4937
  %4952 = fmul fast float %4950, %4938
  %4953 = fmul fast float %4950, %81
  %4954 = fmul fast float %4948, %4948
  %4955 = fsub fast float 1.000000e+00, %4954
  %4956 = fmul fast float %4945, 0x40005F8BE0000000
  %4957 = fsub fast float 0x400C5BF8A0000000, %4956
  %4958 = fdiv fast float %4946, %4957
  %4959 = fmul fast float %4958, 0x3FEE31C3C0000000
  %4960 = fmul fast float %4959, %4955
  %4961 = fmul fast float %4945, 0x3FDACB7480000000
  %4962 = fadd fast float %4961, 0xBFD7347680000000
  %4963 = fmul fast float %4962, %4958
  %4964 = fmul fast float %4963, %4955
  br label %4965

; <label>:4965                                    ; preds = %4936, %4909
  %4966 = phi float [ %4951, %4936 ], [ 0.000000e+00, %4909 ]
  %4967 = phi float [ %4952, %4936 ], [ 0.000000e+00, %4909 ]
  %4968 = phi float [ %4953, %4936 ], [ 0.000000e+00, %4909 ]
  %4969 = phi float [ %4960, %4936 ], [ 0.000000e+00, %4909 ]
  %4970 = phi float [ %4964, %4936 ], [ 0.000000e+00, %4909 ]
  %4971 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4967, float %4968, float %4741, float %4742, float %4743)  ; Dot3(ax,ay,az,bx,by,bz)
  %4972 = fmul fast float %4971, %4971
  %4973 = fmul fast float %4972, 0x3FEE471020000000
  %4974 = fadd fast float %4973, 0xBFD42F6020000000
  %4975 = fmul fast float %4931, 0x3FD20DD760000000
  %4976 = fmul fast float %4974, %4970
  %4977 = fmul fast float %4969, 0x3FDF454380000000
  %4978 = fmul fast float %4977, %4971
  %4979 = fadd fast float %4978, %4975
  %4980 = fadd fast float %4979, %4976
  %4981 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4967, float %4968, float %4798, float %4799, float %4800)  ; Dot3(ax,ay,az,bx,by,bz)
  %4982 = fmul fast float %4981, 0x3FDF454380000000
  %4983 = fmul fast float %4981, %4981
  %4984 = fmul fast float %4983, 0x3FEE471020000000
  %4985 = fadd fast float %4984, 0xBFD42F6020000000
  %4986 = call float @dx.op.dot3.f32(i32 55, float %4931, float %4969, float %4970, float 0x3FD20DD760000000, float %4982, float %4985)  ; Dot3(ax,ay,az,bx,by,bz)
  %4987 = call float @dx.op.binary.f32(i32 35, float %4868, float 0.000000e+00)  ; FMax(a,b)
  %4988 = call float @dx.op.binary.f32(i32 35, float %4924, float 0.000000e+00)  ; FMax(a,b)
  %4989 = call float @dx.op.binary.f32(i32 35, float %4980, float 0.000000e+00)  ; FMax(a,b)
  %4990 = call float @dx.op.binary.f32(i32 35, float %4874, float 0.000000e+00)  ; FMax(a,b)
  %4991 = call float @dx.op.binary.f32(i32 35, float %4930, float 0.000000e+00)  ; FMax(a,b)
  %4992 = call float @dx.op.binary.f32(i32 35, float %4986, float 0.000000e+00)  ; FMax(a,b)
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 0
  %4995 = call float @dx.op.binary.f32(i32 36, float %4744, float %4994)  ; FMin(a,b)
  %4996 = fmul fast float %4995, %4802
  %4997 = fsub fast float 1.000000e+00, %4996
  %4998 = bitcast float %4997 to i32
  %4999 = sub nsw i32 2129859010, %4998
  %5000 = bitcast i32 %4999 to float
  %5001 = call float @dx.op.binary.f32(i32 36, float %4745, float %4994)  ; FMin(a,b)
  %5002 = fmul fast float %5001, %4802
  %5003 = fsub fast float 1.000000e+00, %5002
  %5004 = bitcast float %5003 to i32
  %5005 = sub nsw i32 2129859010, %5004
  %5006 = bitcast i32 %5005 to float
  %5007 = call float @dx.op.binary.f32(i32 36, float %4746, float %4994)  ; FMin(a,b)
  %5008 = fmul fast float %5007, %4802
  %5009 = fsub fast float 1.000000e+00, %5008
  %5010 = bitcast float %5009 to i32
  %5011 = sub nsw i32 2129859010, %5010
  %5012 = bitcast i32 %5011 to float
  %5013 = fmul fast float %4987, %4801
  %5014 = fmul fast float %5013, %5000
  %5015 = fmul fast float %4988, %4801
  %5016 = fmul fast float %5015, %5006
  %5017 = fmul fast float %4989, %4801
  %5018 = fmul fast float %5017, %5012
  %5019 = call float @dx.op.binary.f32(i32 36, float %4738, float %4994)  ; FMin(a,b)
  %5020 = fmul fast float %5019, %4802
  %5021 = fsub fast float 1.000000e+00, %5020
  %5022 = bitcast float %5021 to i32
  %5023 = sub nsw i32 2129859010, %5022
  %5024 = bitcast i32 %5023 to float
  %5025 = call float @dx.op.binary.f32(i32 36, float %4739, float %4994)  ; FMin(a,b)
  %5026 = fmul fast float %5025, %4802
  %5027 = fsub fast float 1.000000e+00, %5026
  %5028 = bitcast float %5027 to i32
  %5029 = sub nsw i32 2129859010, %5028
  %5030 = bitcast i32 %5029 to float
  %5031 = call float @dx.op.binary.f32(i32 36, float %4790, float %4994)  ; FMin(a,b)
  %5032 = fmul fast float %5031, %4802
  %5033 = fsub fast float 1.000000e+00, %5032
  %5034 = bitcast float %5033 to i32
  %5035 = sub nsw i32 2129859010, %5034
  %5036 = bitcast i32 %5035 to float
  %5037 = fmul fast float %4990, %4801
  %5038 = fmul fast float %5037, %5024
  %5039 = fmul fast float %4991, %4801
  %5040 = fmul fast float %5039, %5030
  %5041 = fmul fast float %4992, %4801
  %5042 = fmul fast float %5041, %5036
  %5043 = call float @dx.op.dot3.f32(i32 55, float %5014, float %5016, float %5018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = select i1 %275, float 0.000000e+00, float %5014
  %5045 = select i1 %275, float %5043, float %5016
  %5046 = select i1 %275, float 0.000000e+00, float %5018
  %5047 = call float @dx.op.dot3.f32(i32 55, float %5038, float %5040, float %5042, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5048 = select i1 %275, float 0.000000e+00, float %5038
  %5049 = select i1 %275, float %5047, float %5040
  %5050 = select i1 %275, float 0.000000e+00, float %5042
  %5051 = fmul fast float %4817, 0x4071A18460000000
  %5052 = fadd fast float %5051, 0x3F0FFB4800000000
  %5053 = call float @dx.op.unary.f32(i32 23, float %5052)  ; Log(value)
  %5054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %5055 = extractvalue %dx.types.ResRet.i32 %5054, 0
  %5056 = and i32 %5055, 8388608
  %5057 = icmp eq i32 %5056, 0
  br i1 %5057, label %5058, label %5098

; <label>:5058                                    ; preds = %4965
  %5059 = fadd fast float %5053, 0x4006B851E0000000
  %5060 = add i32 %329, 12
  %5061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5060, i32 undef)  ; BufferLoad(srv,index,wot)
  %5062 = extractvalue %dx.types.ResRet.i32 %5061, 0
  %5063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.f32 %5063, 3
  %5065 = lshr i32 %5062, 16
  %5066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5065)  ; LegacyF16ToF32(value)
  %5067 = extractvalue %dx.types.CBufRet.f32 %5063, 1
  %5068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.f32 %5068, 1
  %5070 = fsub fast float %107, %5069
  %5071 = extractvalue %dx.types.CBufRet.f32 %5068, 2
  %5072 = fmul fast float %5070, %5071
  %5073 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5074 = fsub fast float %5067, %5059
  %5075 = fcmp fast ogt float %5074, 0.000000e+00
  %5076 = fcmp fast olt float %5074, 0.000000e+00
  %5077 = zext i1 %5075 to i32
  %5078 = zext i1 %5076 to i32
  %5079 = sub nsw i32 %5077, %5078
  %5080 = sitofp i32 %5079 to float
  %5081 = call float @dx.op.unary.f32(i32 6, float %5074)  ; FAbs(value)
  %5082 = fsub fast float -0.000000e+00, %5066
  %5083 = fsub fast float %5082, %5064
  %5084 = fadd fast float %5083, %5081
  %5085 = call float @dx.op.binary.f32(i32 35, float %5084, float 0.000000e+00)  ; FMax(a,b)
  %5086 = fmul fast float %5080, %5085
  %5087 = fadd fast float %5053, %5086
  %5088 = call float @dx.op.unary.f32(i32 21, float %5087)  ; Exp(value)
  %5089 = fmul fast float %5088, 0x3F50624DE0000000
  %5090 = fcmp fast oeq float %4818, 0.000000e+00
  %5091 = fdiv fast float 0x400C5BF880000000, %4817
  %5092 = fmul fast float %5089, %5091
  %5093 = select i1 %5090, float 1.000000e+00, float %5092
  %5094 = call float @dx.op.binary.f32(i32 35, float %5093, float 1.000000e+00)  ; FMax(a,b)
  %5095 = fadd fast float %5094, -1.000000e+00
  %5096 = fmul fast float %5095, %5073
  %5097 = fadd fast float %5096, 1.000000e+00
  br label %5098

; <label>:5098                                    ; preds = %5058, %4965
  %5099 = phi float [ %5097, %5058 ], [ 1.000000e+00, %4965 ]
  %5100 = call float @dx.op.unary.f32(i32 6, float %5099)  ; FAbs(value)
  %5101 = fmul fast float %5100, %5044
  %5102 = fmul fast float %5100, %5045
  %5103 = fmul fast float %5100, %5046
  %5104 = fmul fast float %4792, 9.843750e-01
  %5105 = fmul fast float %4747, 9.843750e-01
  %5106 = fadd fast float %5104, 7.812500e-03
  %5107 = fadd fast float %5105, 7.812500e-03
  %5108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %5106, float %5107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5109 = extractvalue %dx.types.ResRet.f32 %5108, 2
  %5110 = extractvalue %dx.types.ResRet.f32 %5108, 3
  %5111 = fmul fast float %5109, %4738
  %5112 = fmul fast float %5109, %4739
  %5113 = fmul fast float %5109, %4790
  %5114 = fadd fast float %5111, %5110
  %5115 = fadd fast float %5112, %5110
  %5116 = fadd fast float %5113, %5110
  %5117 = call float @dx.op.binary.f32(i32 35, float %5115, float %5116)  ; FMax(a,b)
  %5118 = call float @dx.op.binary.f32(i32 35, float %5114, float %5117)  ; FMax(a,b)
  %5119 = fsub fast float 1.000000e+00, %5118
  %5120 = fmul fast float %5118, %4747
  %5121 = fadd fast float %5120, %4747
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.f32 %5122, 2
  %5124 = extractvalue %dx.types.CBufRet.f32 %5122, 3
  %5125 = fmul fast float %5121, %5123
  %5126 = fadd fast float %5125, %5124
  %5127 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5128 = fsub fast float 1.000000e+00, %4813
  %5129 = fadd fast float %5128, %5127
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fcmp fast olt float %5130, 1.000000e+00
  br i1 %5131, label %5132, label %5608

; <label>:5132                                    ; preds = %5098
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 2
  %5135 = extractvalue %dx.types.CBufRet.f32 %5133, 3
  %5136 = fmul fast float %5134, %120
  %5137 = fmul fast float %5135, %121
  %5138 = fptoui float %5136 to i32
  %5139 = fptoui float %5137 to i32
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5143 = extractvalue %dx.types.CBufRet.f32 %5140, 3
  %5144 = fadd fast float %107, -4.000000e+00
  %5145 = call float @dx.op.binary.f32(i32 35, float %5144, float 0.000000e+00)  ; FMax(a,b)
  %5146 = fadd fast float %5145, %5141
  %5147 = fmul fast float %5146, %5142
  %5148 = call float @dx.op.unary.f32(i32 23, float %5147)  ; Log(value)
  %5149 = fmul fast float %5148, %5143
  %5150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.f32 %5150, 2
  %5152 = fmul fast float %5149, %5151
  %5153 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5155 = extractvalue %dx.types.CBufRet.i32 %5154, 1
  %5156 = add i32 %5155, -1
  %5157 = uitofp i32 %5155 to float
  %5158 = fmul fast float %5157, %5153
  %5159 = fptoui float %5158 to i32
  %5160 = call i32 @dx.op.binary.i32(i32 40, i32 %5159, i32 %5156)  ; UMin(a,b)
  %5161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.i32 %5161, 2
  %5163 = extractvalue %dx.types.CBufRet.i32 %5161, 3
  %5164 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5139, i32 %5162, i32 %5138)  ; UMad(a,b,c)
  %5165 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5160, i32 %5163, i32 %5164)  ; UMad(a,b,c)
  %5166 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %5167 = fptoui float %5166 to i32
  %5168 = lshr i32 %5167, 5
  %5169 = call i32 @dx.op.binary.i32(i32 40, i32 %5168, i32 8191)  ; UMin(a,b)
  %5170 = fsub fast float %3958, %205
  %5171 = call float @dx.op.unary.f32(i32 7, float %5170)  ; Saturate(value)
  %5172 = fcmp fast ogt float %5171, 0.000000e+00
  %5173 = fcmp fast ogt float %4800, 0.000000e+00
  %5174 = and i1 %5173, %5172
  br i1 %5174, label %5175, label %5204

; <label>:5175                                    ; preds = %5132
  %5176 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4799, float %4800, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = call float @dx.op.binary.f32(i32 35, float %5176, float -1.000000e+00)  ; FMax(a,b)
  %5178 = call float @dx.op.binary.f32(i32 36, float %5177, float 1.000000e+00)  ; FMin(a,b)
  %5179 = fmul fast float %5178, %5178
  %5180 = fsub fast float 1.000000e+00, %5179
  %5181 = fmul fast float %5180, 0x3FFC6E2300000000
  %5182 = fsub fast float 1.000000e+00, %5181
  %5183 = fcmp fast ogt float %5182, 0.000000e+00
  %5184 = call float @dx.op.unary.f32(i32 24, float %5182)  ; Sqrt(value)
  %5185 = fsub fast float 1.000000e+00, %5184
  %5186 = call float @dx.op.unary.f32(i32 23, float %5185)  ; Log(value)
  %5187 = fmul fast float %5186, 5.000000e+00
  %5188 = call float @dx.op.unary.f32(i32 21, float %5187)  ; Exp(value)
  %5189 = fmul fast float %5188, 0x3FEF591A60000000
  %5190 = fadd fast float %5189, 0x3F94DCB540000000
  %5191 = select i1 %5183, float %5190, float 1.000000e+00
  %5192 = fcmp fast oge float %5191, 1.000000e+00
  %5193 = fmul fast float %5176, 2.000000e+00
  %5194 = fadd fast float %5193, %4800
  %5195 = select i1 %5192, float %5194, float %4800
  %5196 = fsub fast float %5195, %4800
  %5197 = fmul fast float %5196, %5171
  %5198 = fadd fast float %5197, %4800
  %5199 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4799, float %5198, float %4798, float %4799, float %5198)  ; Dot3(ax,ay,az,bx,by,bz)
  %5200 = call float @dx.op.unary.f32(i32 25, float %5199)  ; Rsqrt(value)
  %5201 = fmul fast float %5200, %4798
  %5202 = fmul fast float %5200, %4799
  %5203 = fmul fast float %5198, %5200
  br label %5204

; <label>:5204                                    ; preds = %5175, %5132
  %5205 = phi float [ %5201, %5175 ], [ %4798, %5132 ]
  %5206 = phi float [ %5202, %5175 ], [ %4799, %5132 ]
  %5207 = phi float [ %5203, %5175 ], [ %4800, %5132 ]
  %5208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.i32 %5208, 2
  %5210 = add nsw i32 %5209, -1
  %5211 = call i32 @dx.op.binary.i32(i32 37, i32 %5210, i32 0)  ; IMax(a,b)
  %5212 = shl i32 %5169, 2
  %5213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %5212, i32 undef)  ; BufferLoad(srv,index,wot)
  %5214 = extractvalue %dx.types.ResRet.i32 %5213, 0
  %5215 = lshr i32 %5214, 16
  %5216 = and i32 %5214, 65535
  %5217 = lshr i32 %5214, 21
  %5218 = lshr i32 %5216, 5
  %5219 = call i32 @dx.op.binary.i32(i32 40, i32 %5218, i32 %5211)  ; UMin(a,b)
  %5220 = icmp ugt i32 %5217, %5219
  br i1 %5220, label %5584, label %5221

; <label>:5221                                    ; preds = %5204
  br label %5222

; <label>:5222                                    ; preds = %5576, %5221
  %5223 = phi float [ %5577, %5576 ], [ 0.000000e+00, %5221 ]
  %5224 = phi float [ %5578, %5576 ], [ 0.000000e+00, %5221 ]
  %5225 = phi float [ %5579, %5576 ], [ 0.000000e+00, %5221 ]
  %5226 = phi float [ %5580, %5576 ], [ 1.000000e+00, %5221 ]
  %5227 = phi i32 [ %5581, %5576 ], [ %5217, %5221 ]
  %5228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5229 = extractvalue %dx.types.CBufRet.i32 %5228, 2
  %5230 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5165, i32 %5229, i32 %5227)  ; UMad(a,b,c)
  %5231 = shl i32 %5230, 2
  %5232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %5231, i32 undef)  ; BufferLoad(srv,index,wot)
  %5233 = extractvalue %dx.types.ResRet.i32 %5232, 0
  %5234 = shl i32 %5227, 5
  %5235 = sub nsw i32 %5215, %5234
  %5236 = call i32 @dx.op.binary.i32(i32 37, i32 %5235, i32 0)  ; IMax(a,b)
  %5237 = call i32 @dx.op.binary.i32(i32 38, i32 %5236, i32 31)  ; IMin(a,b)
  %5238 = sub nsw i32 1, %5215
  %5239 = add nsw i32 %5238, %5216
  %5240 = call i32 @dx.op.binary.i32(i32 37, i32 %5239, i32 0)  ; IMax(a,b)
  %5241 = call i32 @dx.op.binary.i32(i32 38, i32 %5240, i32 32)  ; IMin(a,b)
  %5242 = and i32 %5241, 31
  %5243 = shl i32 -1, %5242
  %5244 = xor i32 %5243, -1
  %5245 = and i32 %5237, 31
  %5246 = shl i32 %5244, %5245
  %5247 = icmp eq i32 %5241, 32
  %5248 = select i1 %5247, i32 -1, i32 %5246
  %5249 = and i32 %5248, %5233
  %5250 = icmp eq i32 %5249, 0
  br i1 %5250, label %5576, label %5251

; <label>:5251                                    ; preds = %5222
  br label %5252

; <label>:5252                                    ; preds = %5359, %5251
  %5253 = phi float [ %5360, %5359 ], [ %5223, %5251 ]
  %5254 = phi float [ %5361, %5359 ], [ %5224, %5251 ]
  %5255 = phi float [ %5362, %5359 ], [ %5225, %5251 ]
  %5256 = phi float [ %5363, %5359 ], [ %5226, %5251 ]
  %5257 = phi i32 [ %5262, %5359 ], [ %5249, %5251 ]
  %5258 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5257)  ; FirstbitLo(value)
  %5259 = add i32 %5258, %5234
  %5260 = and i32 %5258, 31
  %5261 = shl i32 1, %5260
  %5262 = xor i32 %5261, %5257
  %5263 = mul i32 %5259, 72
  %5264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5263, i32 undef)  ; BufferLoad(srv,index,wot)
  %5265 = extractvalue %dx.types.ResRet.f32 %5264, 0
  %5266 = extractvalue %dx.types.ResRet.f32 %5264, 1
  %5267 = extractvalue %dx.types.ResRet.f32 %5264, 2
  %5268 = add i32 %5263, 12
  %5269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %5268, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.i32 %5269, 0
  %5271 = add i32 %5263, 16
  %5272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5271, i32 undef)  ; BufferLoad(srv,index,wot)
  %5273 = extractvalue %dx.types.ResRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.ResRet.f32 %5272, 1
  %5275 = extractvalue %dx.types.ResRet.f32 %5272, 2
  %5276 = add i32 %5263, 28
  %5277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5276, i32 undef)  ; BufferLoad(srv,index,wot)
  %5278 = extractvalue %dx.types.ResRet.f32 %5277, 0
  %5279 = add i32 %5263, 32
  %5280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5279, i32 undef)  ; BufferLoad(srv,index,wot)
  %5281 = extractvalue %dx.types.ResRet.f32 %5280, 0
  %5282 = extractvalue %dx.types.ResRet.f32 %5280, 1
  %5283 = extractvalue %dx.types.ResRet.f32 %5280, 2
  %5284 = extractvalue %dx.types.ResRet.f32 %5280, 3
  %5285 = add i32 %5263, 48
  %5286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5285, i32 undef)  ; BufferLoad(srv,index,wot)
  %5287 = extractvalue %dx.types.ResRet.f32 %5286, 0
  %5288 = extractvalue %dx.types.ResRet.f32 %5286, 1
  %5289 = add i32 %5263, 56
  %5290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5289, i32 undef)  ; BufferLoad(srv,index,wot)
  %5291 = extractvalue %dx.types.ResRet.f32 %5290, 0
  %5292 = extractvalue %dx.types.ResRet.f32 %5290, 1
  %5293 = add i32 %5263, 64
  %5294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5293, i32 undef)  ; BufferLoad(srv,index,wot)
  %5295 = extractvalue %dx.types.ResRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.ResRet.f32 %5294, 1
  %5297 = mul i32 %5259, 60
  %5298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5297, i32 undef)  ; BufferLoad(srv,index,wot)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.ResRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.ResRet.f32 %5298, 2
  %5302 = add i32 %5297, 12
  %5303 = add i32 %5297, 48
  %5304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5303, i32 undef)  ; BufferLoad(srv,index,wot)
  %5305 = extractvalue %dx.types.ResRet.f32 %5304, 0
  %5306 = extractvalue %dx.types.ResRet.f32 %5304, 1
  %5307 = extractvalue %dx.types.ResRet.f32 %5304, 2
  %5308 = and i32 %5270, 32767
  %5309 = bitcast float %5265 to i32
  %5310 = icmp eq i32 %5309, -1
  %5311 = bitcast float %5266 to i32
  %5312 = and i32 %5270, 32768
  %5313 = icmp ne i32 %5312, 0
  %5314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5315 = extractvalue %dx.types.CBufRet.f32 %5314, 0
  %5316 = extractvalue %dx.types.CBufRet.f32 %5314, 1
  %5317 = extractvalue %dx.types.CBufRet.f32 %5314, 2
  %5318 = fsub fast float %5299, %5315
  %5319 = fsub fast float %5300, %5316
  %5320 = fsub fast float %5301, %5317
  %5321 = fsub fast float %203, %5318
  %5322 = fsub fast float %204, %5319
  %5323 = fsub fast float %205, %5320
  %5324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5302, i32 undef)  ; BufferLoad(srv,index,wot)
  %5325 = extractvalue %dx.types.ResRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.ResRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.ResRet.f32 %5324, 2
  %5328 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %5325, float %5326, float %5327)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = add i32 %5297, 24
  %5330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5329, i32 undef)  ; BufferLoad(srv,index,wot)
  %5331 = extractvalue %dx.types.ResRet.f32 %5330, 0
  %5332 = extractvalue %dx.types.ResRet.f32 %5330, 1
  %5333 = extractvalue %dx.types.ResRet.f32 %5330, 2
  %5334 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %5331, float %5332, float %5333)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = add i32 %5297, 36
  %5336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5335, i32 undef)  ; BufferLoad(srv,index,wot)
  %5337 = extractvalue %dx.types.ResRet.f32 %5336, 0
  %5338 = extractvalue %dx.types.ResRet.f32 %5336, 1
  %5339 = extractvalue %dx.types.ResRet.f32 %5336, 2
  %5340 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %5337, float %5338, float %5339)  ; Dot3(ax,ay,az,bx,by,bz)
  %5341 = call float @dx.op.unary.f32(i32 6, float %5328)  ; FAbs(value)
  %5342 = call float @dx.op.unary.f32(i32 6, float %5334)  ; FAbs(value)
  %5343 = call float @dx.op.unary.f32(i32 6, float %5340)  ; FAbs(value)
  %5344 = fsub fast float %5305, %5341
  %5345 = fsub fast float %5306, %5342
  %5346 = fsub fast float %5307, %5343
  %5347 = fmul fast float %5344, %5273
  %5348 = fmul fast float %5345, %5274
  %5349 = fmul fast float %5346, %5275
  %5350 = call float @dx.op.binary.f32(i32 36, float %5348, float %5349)  ; FMin(a,b)
  %5351 = call float @dx.op.binary.f32(i32 36, float %5347, float %5350)  ; FMin(a,b)
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = call float @dx.op.binary.f32(i32 36, float %5256, float %5352)  ; FMin(a,b)
  %5354 = uitofp i1 %5313 to float
  %5355 = fadd fast float %5171, 1.000000e+00
  %5356 = fsub fast float %5355, %5354
  %5357 = fmul fast float %5353, %5356
  %5358 = fcmp fast ogt float %5357, 0.000000e+00
  br i1 %5358, label %5365, label %5359

; <label>:5359                                    ; preds = %5507, %5252
  %5360 = phi float [ %5571, %5507 ], [ %5253, %5252 ]
  %5361 = phi float [ %5572, %5507 ], [ %5254, %5252 ]
  %5362 = phi float [ %5573, %5507 ], [ %5255, %5252 ]
  %5363 = phi float [ %5574, %5507 ], [ %5256, %5252 ]
  %5364 = icmp eq i32 %5257, %5261
  br i1 %5364, label %5575, label %5252

; <label>:5365                                    ; preds = %5252
  br i1 %5310, label %5423, label %5366

; <label>:5366                                    ; preds = %5365
  %5367 = fsub fast float -0.000000e+00, %5325
  %5368 = fsub fast float -0.000000e+00, %5326
  %5369 = fsub fast float -0.000000e+00, %5327
  %5370 = call float @dx.op.dot3.f32(i32 55, float %5205, float %5206, float %5207, float %5367, float %5368, float %5369)  ; Dot3(ax,ay,az,bx,by,bz)
  %5371 = fsub fast float -0.000000e+00, %5370
  %5372 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %5367, float %5368, float %5369)  ; Dot3(ax,ay,az,bx,by,bz)
  %5373 = fadd fast float %5372, %5288
  %5374 = fadd fast float %5287, %5372
  %5375 = fsub fast float -0.000000e+00, %5374
  %5376 = fcmp ogt float %5370, -0.000000e+00
  %5377 = select i1 %5376, float %5375, float %5373
  %5378 = call float @dx.op.unary.f32(i32 6, float %5371)  ; FAbs(value)
  %5379 = fdiv fast float 1.000000e+00, %5378
  %5380 = fmul fast float %5377, %5379
  %5381 = call float @dx.op.binary.f32(i32 35, float %5380, float 0.000000e+00)  ; FMax(a,b)
  %5382 = fsub fast float -0.000000e+00, %5331
  %5383 = fsub fast float -0.000000e+00, %5332
  %5384 = fsub fast float -0.000000e+00, %5333
  %5385 = call float @dx.op.dot3.f32(i32 55, float %5205, float %5206, float %5207, float %5382, float %5383, float %5384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5386 = fsub fast float -0.000000e+00, %5385
  %5387 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %5382, float %5383, float %5384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = fadd fast float %5387, %5292
  %5389 = fadd fast float %5291, %5387
  %5390 = fsub fast float -0.000000e+00, %5389
  %5391 = fcmp ogt float %5385, -0.000000e+00
  %5392 = select i1 %5391, float %5390, float %5388
  %5393 = call float @dx.op.unary.f32(i32 6, float %5386)  ; FAbs(value)
  %5394 = fdiv fast float 1.000000e+00, %5393
  %5395 = fmul fast float %5392, %5394
  %5396 = call float @dx.op.binary.f32(i32 35, float %5395, float 0.000000e+00)  ; FMax(a,b)
  %5397 = fsub fast float -0.000000e+00, %5337
  %5398 = fsub fast float -0.000000e+00, %5338
  %5399 = fsub fast float -0.000000e+00, %5339
  %5400 = call float @dx.op.dot3.f32(i32 55, float %5205, float %5206, float %5207, float %5397, float %5398, float %5399)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = fsub fast float -0.000000e+00, %5400
  %5402 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %5397, float %5398, float %5399)  ; Dot3(ax,ay,az,bx,by,bz)
  %5403 = fadd fast float %5402, %5296
  %5404 = fadd fast float %5295, %5402
  %5405 = fsub fast float -0.000000e+00, %5404
  %5406 = fcmp ogt float %5400, -0.000000e+00
  %5407 = select i1 %5406, float %5405, float %5403
  %5408 = call float @dx.op.unary.f32(i32 6, float %5401)  ; FAbs(value)
  %5409 = fdiv fast float 1.000000e+00, %5408
  %5410 = fmul fast float %5407, %5409
  %5411 = call float @dx.op.binary.f32(i32 35, float %5410, float 0.000000e+00)  ; FMax(a,b)
  %5412 = call float @dx.op.binary.f32(i32 36, float %5396, float %5411)  ; FMin(a,b)
  %5413 = call float @dx.op.binary.f32(i32 36, float %5381, float %5412)  ; FMin(a,b)
  %5414 = fmul fast float %5413, %5205
  %5415 = fmul fast float %5413, %5206
  %5416 = fmul fast float %5413, %5207
  %5417 = fadd fast float %5414, %203
  %5418 = fadd fast float %5415, %204
  %5419 = fadd fast float %5416, %205
  %5420 = fsub fast float %5417, %5265
  %5421 = fsub fast float %5418, %5266
  %5422 = fsub fast float %5419, %5267
  br label %5430

; <label>:5423                                    ; preds = %5365
  %5424 = fmul fast float %5205, 8.096000e+03
  %5425 = fmul fast float %5206, 8.096000e+03
  %5426 = fmul fast float %5207, 8.096000e+03
  %5427 = fadd fast float %5424, %203
  %5428 = fadd fast float %5425, %204
  %5429 = fadd fast float %5426, %205
  br label %5430

; <label>:5430                                    ; preds = %5423, %5366
  %5431 = phi float [ %5205, %5423 ], [ %5420, %5366 ]
  %5432 = phi float [ %5206, %5423 ], [ %5421, %5366 ]
  %5433 = phi float [ %5207, %5423 ], [ %5422, %5366 ]
  %5434 = phi float [ %5427, %5423 ], [ %5417, %5366 ]
  %5435 = phi float [ %5428, %5423 ], [ %5418, %5366 ]
  %5436 = phi float [ %5429, %5423 ], [ %5419, %5366 ]
  %5437 = fcmp fast olt float %5284, 1.000000e+00
  br i1 %5437, label %5438, label %5469, !dx.controlflow.hints !99

; <label>:5438                                    ; preds = %5430
  %5439 = fmul fast float %5433, %5282
  %5440 = fmul fast float %5432, %5283
  %5441 = fsub fast float %5439, %5440
  %5442 = fmul fast float %5431, %5283
  %5443 = fmul fast float %5433, %5281
  %5444 = fsub fast float %5442, %5443
  %5445 = fmul fast float %5432, %5281
  %5446 = fmul fast float %5431, %5282
  %5447 = fsub fast float %5445, %5446
  %5448 = fmul fast float %5441, 2.000000e+00
  %5449 = fmul fast float %5444, 2.000000e+00
  %5450 = fmul fast float %5447, 2.000000e+00
  %5451 = fmul fast float %5448, %5284
  %5452 = fmul fast float %5449, %5284
  %5453 = fmul fast float %5450, %5284
  %5454 = fmul fast float %5450, %5282
  %5455 = fmul fast float %5449, %5283
  %5456 = fmul fast float %5448, %5283
  %5457 = fmul fast float %5450, %5281
  %5458 = fmul fast float %5449, %5281
  %5459 = fmul fast float %5448, %5282
  %5460 = fadd fast float %5454, %5431
  %5461 = fadd fast float %5460, %5451
  %5462 = fsub fast float %5461, %5455
  %5463 = fsub fast float %5432, %5457
  %5464 = fadd fast float %5463, %5452
  %5465 = fadd fast float %5464, %5456
  %5466 = fadd fast float %5453, %5433
  %5467 = fsub fast float %5466, %5459
  %5468 = fadd fast float %5467, %5458
  br label %5469

; <label>:5469                                    ; preds = %5438, %5430
  %5470 = phi float [ %5462, %5438 ], [ %5431, %5430 ]
  %5471 = phi float [ %5465, %5438 ], [ %5432, %5430 ]
  %5472 = phi float [ %5468, %5438 ], [ %5433, %5430 ]
  br i1 %5310, label %5504, label %5473

; <label>:5473                                    ; preds = %5469
  %5474 = fmul fast float %4747, 0x400187C840000000
  %5475 = fadd fast float %5474, 0xC00EFC2120000000
  %5476 = fmul fast float %5475, %4747
  %5477 = fadd fast float %5476, 0x3FE5D16340000000
  %5478 = fmul fast float %5477, %4747
  %5479 = fadd fast float %5478, 1.000000e+00
  %5480 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5481 = fsub fast float %5434, %203
  %5482 = fsub fast float %5435, %204
  %5483 = fsub fast float %5436, %205
  %5484 = fsub fast float %5434, %5265
  %5485 = fsub fast float %5435, %5266
  %5486 = fsub fast float %5436, %5267
  %5487 = call float @dx.op.dot3.f32(i32 55, float %5481, float %5482, float %5483, float %5481, float %5482, float %5483)  ; Dot3(ax,ay,az,bx,by,bz)
  %5488 = call float @dx.op.dot3.f32(i32 55, float %5484, float %5485, float %5486, float %5484, float %5485, float %5486)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = fadd fast float %5488, 0x3EE4F8B580000000
  %5490 = fdiv fast float %5487, %5489
  %5491 = bitcast float %5490 to i32
  %5492 = ashr i32 %5491, 1
  %5493 = add nsw i32 %5492, 532487669
  %5494 = bitcast i32 %5493 to float
  %5495 = fmul fast float %5494, %5480
  %5496 = call float @dx.op.unary.f32(i32 7, float %5495)  ; Saturate(value)
  %5497 = fmul fast float %5496, 0x4009981AE0000000
  %5498 = fsub fast float 0x40111BBD80000000, %5497
  %5499 = fmul fast float %5498, %5496
  %5500 = fadd fast float %5499, 0xC0009F6020000000
  %5501 = fmul fast float %5500, %5496
  %5502 = fadd fast float %5501, 1.000000e+00
  %5503 = call float @dx.op.unary.f32(i32 7, float %5502)  ; Saturate(value)
  br label %5507

; <label>:5504                                    ; preds = %5469
  %5505 = icmp ne i32 %5311, -1
  %5506 = zext i1 %5505 to i32
  br label %5507

; <label>:5507                                    ; preds = %5504, %5473
  %5508 = phi float [ %4747, %5504 ], [ %5503, %5473 ]
  %5509 = phi i32 [ %5506, %5504 ], [ 0, %5473 ]
  %5510 = fmul float %5508, 5.000000e+00
  %5511 = fsub float 5.000000e+00, %5510
  %5512 = icmp ne i32 %5509, 0
  %5513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5514 = extractvalue %dx.types.CBufRet.f32 %5513, 3
  %5515 = fadd fast float %5514, %5511
  %5516 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5515)  ; FMax(a,b)
  %5517 = call float @dx.op.unary.f32(i32 6, float %5470)  ; FAbs(value)
  %5518 = call float @dx.op.unary.f32(i32 6, float %5471)  ; FAbs(value)
  %5519 = fadd fast float %5518, %5517
  %5520 = call float @dx.op.unary.f32(i32 6, float %5472)  ; FAbs(value)
  %5521 = fadd fast float %5519, %5520
  %5522 = fcmp fast oeq float %5521, 0.000000e+00
  %5523 = fdiv fast float 1.000000e+00, %5521
  %5524 = select i1 %5522, float 1.000000e+00, float %5523
  %5525 = fmul fast float %5524, %5470
  %5526 = fmul fast float %5524, %5471
  %5527 = call float @dx.op.unary.f32(i32 6, float %5526)  ; FAbs(value)
  %5528 = call float @dx.op.unary.f32(i32 6, float %5525)  ; FAbs(value)
  %5529 = fsub fast float 1.000000e+00, %5527
  %5530 = fsub fast float 1.000000e+00, %5528
  %5531 = fcmp fast oge float %5525, 0.000000e+00
  %5532 = fcmp fast oge float %5526, 0.000000e+00
  %5533 = select i1 %5531, float 1.000000e+00, float -1.000000e+00
  %5534 = select i1 %5532, float 1.000000e+00, float -1.000000e+00
  %5535 = fcmp fast ole float %5472, 0.000000e+00
  %5536 = fmul fast float %5533, %5529
  %5537 = fmul fast float %5534, %5530
  %5538 = select i1 %5535, float %5536, float %5525
  %5539 = select i1 %5535, float %5537, float %5526
  %5540 = fmul fast float %5538, 5.000000e-01
  %5541 = fmul fast float %5539, 5.000000e-01
  %5542 = fadd fast float %5540, 5.000000e-01
  %5543 = fadd fast float %5541, 5.000000e-01
  %5544 = uitofp i32 %5308 to float
  %5545 = call float @dx.op.binary.f32(i32 36, float %5516, float 3.000000e+00)  ; FMin(a,b)
  %5546 = fadd fast float %5545, 2.000000e+00
  %5547 = call float @dx.op.unary.f32(i32 21, float %5546)  ; Exp(value)
  %5548 = extractvalue %dx.types.CBufRet.f32 %5513, 1
  %5549 = fmul fast float %5548, %5547
  %5550 = fmul fast float %5549, 2.000000e+00
  %5551 = fsub fast float 1.000000e+00, %5550
  %5552 = fmul fast float %5542, %5551
  %5553 = fmul fast float %5543, %5551
  %5554 = fadd fast float %5552, %5549
  %5555 = fadd fast float %5553, %5549
  %5556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %49, float %5554, float %5555, float %5544, float undef, i32 0, i32 0, i32 undef, float %5516)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5557 = extractvalue %dx.types.ResRet.f32 %5556, 0
  %5558 = extractvalue %dx.types.ResRet.f32 %5556, 1
  %5559 = extractvalue %dx.types.ResRet.f32 %5556, 2
  %5560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5561 = extractvalue %dx.types.CBufRet.f32 %5560, 3
  %5562 = fmul fast float %5561, %5278
  %5563 = call float @dx.op.binary.f32(i32 36, float %4818, float %5562)  ; FMin(a,b)
  %5564 = select i1 %5512, float %5563, float %5562
  %5565 = fmul fast float %5557, %5357
  %5566 = fmul fast float %5565, %5564
  %5567 = fmul fast float %5558, %5357
  %5568 = fmul fast float %5567, %5564
  %5569 = fmul fast float %5559, %5357
  %5570 = fmul fast float %5569, %5564
  %5571 = fadd fast float %5566, %5253
  %5572 = fadd fast float %5568, %5254
  %5573 = fadd fast float %5570, %5255
  %5574 = fsub fast float %5256, %5357
  br label %5359

; <label>:5575                                    ; preds = %5359
  br label %5576

; <label>:5576                                    ; preds = %5575, %5222
  %5577 = phi float [ %5223, %5222 ], [ %5360, %5575 ]
  %5578 = phi float [ %5224, %5222 ], [ %5361, %5575 ]
  %5579 = phi float [ %5225, %5222 ], [ %5362, %5575 ]
  %5580 = phi float [ %5226, %5222 ], [ %5363, %5575 ]
  %5581 = add i32 %5227, 1
  %5582 = icmp ugt i32 %5581, %5219
  br i1 %5582, label %5583, label %5222, !llvm.loop !100

; <label>:5583                                    ; preds = %5576
  br label %5584

; <label>:5584                                    ; preds = %5583, %5204
  %5585 = phi float [ 0.000000e+00, %5204 ], [ %5577, %5583 ]
  %5586 = phi float [ 0.000000e+00, %5204 ], [ %5578, %5583 ]
  %5587 = phi float [ 0.000000e+00, %5204 ], [ %5579, %5583 ]
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5585, float %5586, float %5587, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = select i1 %275, float 0.000000e+00, float %5585
  %5590 = select i1 %275, float %5588, float %5586
  %5591 = select i1 %275, float 0.000000e+00, float %5587
  %5592 = fcmp fast olt float %5130, 0.000000e+00
  %5593 = call float @dx.op.unary.f32(i32 6, float %5130)  ; FAbs(value)
  %5594 = fmul fast float %5593, %5048
  %5595 = fmul fast float %5593, %5049
  %5596 = fmul fast float %5593, %5050
  %5597 = select i1 %5592, float %5048, float %5594
  %5598 = select i1 %5592, float %5049, float %5595
  %5599 = select i1 %5592, float %5050, float %5596
  %5600 = fsub fast float 1.000000e+00, %5593
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = fmul fast float %5601, %5589
  %5603 = fmul fast float %5601, %5590
  %5604 = fmul fast float %5601, %5591
  %5605 = fadd fast float %5597, %5602
  %5606 = fadd fast float %5598, %5603
  %5607 = fadd fast float %5599, %5604
  br label %5608

; <label>:5608                                    ; preds = %5584, %5098
  %5609 = phi float [ %5605, %5584 ], [ %5048, %5098 ]
  %5610 = phi float [ %5606, %5584 ], [ %5049, %5098 ]
  %5611 = phi float [ %5607, %5584 ], [ %5050, %5098 ]
  %5612 = fmul fast float %203, %203
  %5613 = fmul fast float %204, %204
  %5614 = fadd fast float %5613, %5612
  %5615 = fmul fast float %205, %205
  %5616 = fadd fast float %5614, %5615
  %5617 = call float @dx.op.unary.f32(i32 24, float %5616)  ; Sqrt(value)
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 1
  %5620 = fsub fast float %5617, %5619
  %5621 = extractvalue %dx.types.CBufRet.f32 %5618, 2
  %5622 = fmul fast float %5620, %5621
  %5623 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5624 = extractvalue %dx.types.CBufRet.f32 %5618, 0
  %5625 = extractvalue %dx.types.CBufRet.f32 %5618, 3
  %5626 = and i32 %5055, 4194304
  %5627 = icmp ne i32 %5626, 0
  %5628 = icmp ne i32 %5056, 0
  %5629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.f32 %5629, 0
  %5631 = extractvalue %dx.types.CBufRet.f32 %5629, 1
  %5632 = extractvalue %dx.types.CBufRet.f32 %5629, 2
  %5633 = extractvalue %dx.types.CBufRet.f32 %5629, 3
  %5634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5635 = extractvalue %dx.types.CBufRet.f32 %5634, 0
  %5636 = extractvalue %dx.types.CBufRet.f32 %5634, 1
  %5637 = extractvalue %dx.types.CBufRet.f32 %5634, 2
  %5638 = extractvalue %dx.types.CBufRet.f32 %5634, 3
  %5639 = select i1 %5627, float %5630, float %5635
  %5640 = select i1 %5627, float %5631, float %5636
  %5641 = select i1 %5627, float %5632, float %5637
  %5642 = select i1 %5627, float %5633, float %5638
  %5643 = select i1 %5628, float 0.000000e+00, float %5642
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 0
  %5646 = extractvalue %dx.types.CBufRet.f32 %5644, 1
  %5647 = select i1 %5627, float %5645, float %5646
  %5648 = select i1 %5628, float 0.000000e+00, float %5647
  %5649 = extractvalue %dx.types.CBufRet.f32 %5644, 2
  %5650 = extractvalue %dx.types.CBufRet.f32 %5644, 3
  %5651 = select i1 %5627, float %5649, float %5650
  %5652 = select i1 %5628, float 0.000000e+00, float %5651
  %5653 = fmul fast float %5623, %65
  %5654 = fmul fast float %5653, %5625
  %5655 = fmul fast float %5654, %5652
  %5656 = fadd fast float %5655, 1.000000e+00
  %5657 = fmul fast float %5119, %5101
  %5658 = fmul fast float %5657, %5656
  %5659 = fmul fast float %5119, %5102
  %5660 = fmul fast float %5659, %5656
  %5661 = fmul fast float %5119, %5103
  %5662 = fmul fast float %5661, %5656
  %5663 = call float @dx.op.dot3.f32(i32 55, float %4744, float %4745, float %4746, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5664 = fcmp fast ogt float %5663, 0x3E7FF19E20000000
  %5665 = fdiv fast float 1.000000e+00, %5663
  %5666 = select i1 %5664, float %5665, float 0.000000e+00
  %5667 = fmul fast float %5666, %4744
  %5668 = fmul fast float %5666, %4745
  %5669 = fmul fast float %5666, %4746
  %5670 = fadd fast float %5667, -1.000000e+00
  %5671 = fadd fast float %5668, -1.000000e+00
  %5672 = fadd fast float %5669, -1.000000e+00
  %5673 = fmul fast float %5670, 5.000000e-01
  %5674 = fmul fast float %5671, 5.000000e-01
  %5675 = fmul fast float %5672, 5.000000e-01
  %5676 = fadd fast float %5673, 1.000000e+00
  %5677 = fadd fast float %5674, 1.000000e+00
  %5678 = fadd fast float %5675, 1.000000e+00
  %5679 = fsub fast float %5639, %5676
  %5680 = fsub fast float %5640, %5677
  %5681 = fsub fast float %5641, %5678
  %5682 = fmul fast float %5679, %5643
  %5683 = fmul fast float %5680, %5643
  %5684 = fmul fast float %5681, %5643
  %5685 = fadd fast float %5682, %5676
  %5686 = fadd fast float %5683, %5677
  %5687 = fadd fast float %5684, %5678
  %5688 = fmul fast float %5609, %5114
  %5689 = fmul fast float %5610, %5115
  %5690 = fmul fast float %5611, %5116
  %5691 = fsub fast float 1.000000e+00, %4792
  %5692 = bitcast float %5691 to i32
  %5693 = sitofp i32 %5692 to float
  %5694 = fmul fast float %5693, 5.000000e+00
  %5695 = fadd fast float %5694, 0xC1EFBF8940000000
  %5696 = fptosi float %5695 to i32
  %5697 = bitcast i32 %5696 to float
  %5698 = fmul fast float %5697, %65
  %5699 = fmul fast float %5698, %5623
  %5700 = fmul fast float %5699, %5624
  %5701 = fmul fast float %5700, %5648
  %5702 = fmul fast float %5657, %5701
  %5703 = fmul fast float %5702, %5685
  %5704 = fmul fast float %5659, %5701
  %5705 = fmul fast float %5704, %5686
  %5706 = fmul fast float %5661, %5701
  %5707 = fmul fast float %5706, %5687
  %5708 = fmul fast float %5658, %1266
  %5709 = fmul fast float %5660, %1266
  %5710 = fmul fast float %5662, %1266
  %5711 = fadd fast float %5688, %3529
  %5712 = fadd fast float %5711, %5703
  %5713 = fmul fast float %5712, %1266
  %5714 = fadd fast float %5689, %3531
  %5715 = fadd fast float %5714, %5705
  %5716 = fmul fast float %5715, %1266
  %5717 = fadd fast float %5690, %3533
  %5718 = fadd fast float %5717, %5707
  %5719 = fmul fast float %5718, %1266
  %5720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.f32 %5720, 3
  %5722 = fcmp fast oeq float %5721, 0.000000e+00
  br i1 %5722, label %7358, label %5723

; <label>:5723                                    ; preds = %5608
  %5724 = extractvalue %dx.types.CBufRet.f32 %5720, 0
  %5725 = extractvalue %dx.types.CBufRet.f32 %5720, 1
  %5726 = extractvalue %dx.types.CBufRet.f32 %5720, 2
  %5727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5727, 0
  %5729 = extractvalue %dx.types.CBufRet.f32 %5727, 1
  %5730 = extractvalue %dx.types.CBufRet.f32 %5727, 2
  %5731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5732 = extractvalue %dx.types.CBufRet.f32 %5731, 0
  %5733 = extractvalue %dx.types.CBufRet.f32 %5731, 1
  %5734 = call float @dx.op.dot3.f32(i32 55, float %5728, float %5729, float %5730, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = select i1 %275, float %5732, float %5728
  %5736 = select i1 %275, float %5734, float %5729
  %5737 = select i1 %275, float %5733, float %5730
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 2
  %5740 = fmul fast float %5739, %129
  %5741 = fmul fast float %5739, %131
  %5742 = fmul fast float %5739, %133
  %5743 = fadd fast float %5740, %203
  %5744 = fadd fast float %5741, %204
  %5745 = fadd fast float %5742, %205
  %5746 = fcmp fast olt float %5721, 0.000000e+00
  br i1 %5746, label %7004, label %5747

; <label>:5747                                    ; preds = %5723
  %5748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.f32 %5748, 0
  %5750 = extractvalue %dx.types.CBufRet.f32 %5748, 1
  %5751 = extractvalue %dx.types.CBufRet.f32 %5748, 2
  %5752 = extractvalue %dx.types.CBufRet.f32 %5748, 3
  %5753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.f32 %5753, 0
  %5755 = extractvalue %dx.types.CBufRet.f32 %5753, 1
  %5756 = extractvalue %dx.types.CBufRet.f32 %5753, 2
  %5757 = extractvalue %dx.types.CBufRet.f32 %5753, 3
  %5758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5758, 0
  %5760 = extractvalue %dx.types.CBufRet.f32 %5758, 1
  %5761 = extractvalue %dx.types.CBufRet.f32 %5758, 2
  %5762 = extractvalue %dx.types.CBufRet.f32 %5758, 3
  %5763 = fmul fast float %5749, %5743
  %5764 = call float @dx.op.tertiary.f32(i32 46, float %5744, float %5750, float %5763)  ; FMad(a,b,c)
  %5765 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5751, float %5764)  ; FMad(a,b,c)
  %5766 = fadd fast float %5765, %5752
  %5767 = fmul fast float %5754, %5743
  %5768 = call float @dx.op.tertiary.f32(i32 46, float %5744, float %5755, float %5767)  ; FMad(a,b,c)
  %5769 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5756, float %5768)  ; FMad(a,b,c)
  %5770 = fadd fast float %5769, %5757
  %5771 = fmul fast float %5759, %5743
  %5772 = call float @dx.op.tertiary.f32(i32 46, float %5744, float %5760, float %5771)  ; FMad(a,b,c)
  %5773 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5761, float %5772)  ; FMad(a,b,c)
  %5774 = fadd fast float %5773, %5762
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5777 = fcmp fast une float %5776, 0.000000e+00
  %5778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.f32 %5778, 0
  %5780 = extractvalue %dx.types.CBufRet.f32 %5778, 1
  %5781 = extractvalue %dx.types.CBufRet.f32 %5778, 3
  %5782 = fmul fast float %5781, %5766
  %5783 = fmul fast float %5781, %5770
  %5784 = fadd fast float %5782, %5779
  %5785 = fadd fast float %5783, %5780
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5788 = extractvalue %dx.types.CBufRet.f32 %5786, 1
  %5789 = extractvalue %dx.types.CBufRet.f32 %5786, 3
  %5790 = fmul fast float %5789, %5766
  %5791 = fmul fast float %5789, %5770
  %5792 = fadd fast float %5790, %5787
  %5793 = fadd fast float %5791, %5788
  %5794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5795 = extractvalue %dx.types.CBufRet.f32 %5794, 1
  %5796 = fsub fast float %5795, %5774
  %5797 = extractvalue %dx.types.CBufRet.f32 %5794, 2
  %5798 = fmul fast float %5796, %5797
  %5799 = fsub fast float 1.000000e+00, %5798
  %5800 = call float @dx.op.unary.f32(i32 7, float %5799)  ; Saturate(value)
  br i1 %5777, label %5861, label %5801

; <label>:5801                                    ; preds = %5747
  %5802 = extractvalue %dx.types.CBufRet.f32 %5786, 2
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 2
  %5805 = fadd fast float %5804, %5802
  %5806 = fcmp fast ogt float %5805, 0.000000e+00
  br i1 %5806, label %5807, label %5831

; <label>:5807                                    ; preds = %5801
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.CBufRet.f32 %5808, 1
  %5811 = fsub fast float %5792, %5809
  %5812 = fsub fast float %5793, %5810
  %5813 = fcmp fast olt float %5811, 0.000000e+00
  %5814 = fcmp fast olt float %5812, 0.000000e+00
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5818 = extractvalue %dx.types.CBufRet.f32 %5815, 2
  %5819 = extractvalue %dx.types.CBufRet.f32 %5815, 3
  %5820 = select i1 %5813, float %5816, float %5818
  %5821 = select i1 %5814, float %5817, float %5819
  %5822 = fmul fast float %5820, %5811
  %5823 = fmul fast float %5821, %5812
  %5824 = call float @dx.op.unary.f32(i32 6, float %5822)  ; FAbs(value)
  %5825 = call float @dx.op.unary.f32(i32 6, float %5823)  ; FAbs(value)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5738, 0
  %5827 = call float @dx.op.binary.f32(i32 35, float %5824, float %5825)  ; FMax(a,b)
  %5828 = fsub fast float %5826, %5827
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5830 = fmul fast float %5829, %5800
  br label %5831

; <label>:5831                                    ; preds = %5807, %5801
  %5832 = phi float [ %5830, %5807 ], [ 0.000000e+00, %5801 ]
  %5833 = extractvalue %dx.types.CBufRet.f32 %5778, 2
  %5834 = extractvalue %dx.types.CBufRet.f32 %5803, 1
  %5835 = fadd fast float %5834, %5833
  %5836 = fcmp fast ogt float %5835, 0.000000e+00
  br i1 %5836, label %5837, label %5861

; <label>:5837                                    ; preds = %5831
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 0
  %5840 = extractvalue %dx.types.CBufRet.f32 %5838, 1
  %5841 = fsub fast float %5784, %5839
  %5842 = fsub fast float %5785, %5840
  %5843 = fcmp fast olt float %5841, 0.000000e+00
  %5844 = fcmp fast olt float %5842, 0.000000e+00
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 0
  %5847 = extractvalue %dx.types.CBufRet.f32 %5845, 1
  %5848 = extractvalue %dx.types.CBufRet.f32 %5845, 2
  %5849 = extractvalue %dx.types.CBufRet.f32 %5845, 3
  %5850 = select i1 %5843, float %5846, float %5848
  %5851 = select i1 %5844, float %5847, float %5849
  %5852 = fmul fast float %5850, %5841
  %5853 = fmul fast float %5851, %5842
  %5854 = call float @dx.op.unary.f32(i32 6, float %5852)  ; FAbs(value)
  %5855 = call float @dx.op.unary.f32(i32 6, float %5853)  ; FAbs(value)
  %5856 = extractvalue %dx.types.CBufRet.f32 %5738, 0
  %5857 = call float @dx.op.binary.f32(i32 35, float %5854, float %5855)  ; FMax(a,b)
  %5858 = fsub fast float %5856, %5857
  %5859 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  %5860 = fmul fast float %5859, %5800
  br label %5861

; <label>:5861                                    ; preds = %5837, %5831, %5747
  %5862 = phi float [ 0.000000e+00, %5747 ], [ %5860, %5837 ], [ 0.000000e+00, %5831 ]
  %5863 = phi float [ 0.000000e+00, %5747 ], [ %5832, %5837 ], [ %5832, %5831 ]
  %5864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5865 = extractvalue %dx.types.CBufRet.f32 %5864, 1
  %5866 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5867, 0
  %5869 = extractvalue %dx.types.CBufRet.f32 %5867, 1
  %5870 = fsub fast float %5766, %5868
  %5871 = fsub fast float %5770, %5869
  %5872 = fcmp fast olt float %5870, 0.000000e+00
  %5873 = fcmp fast olt float %5871, 0.000000e+00
  %5874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5875 = extractvalue %dx.types.CBufRet.f32 %5874, 0
  %5876 = extractvalue %dx.types.CBufRet.f32 %5874, 1
  %5877 = extractvalue %dx.types.CBufRet.f32 %5874, 2
  %5878 = extractvalue %dx.types.CBufRet.f32 %5874, 3
  %5879 = select i1 %5872, float %5875, float %5877
  %5880 = select i1 %5873, float %5876, float %5878
  %5881 = fmul fast float %5879, %5870
  %5882 = fmul fast float %5880, %5871
  %5883 = call float @dx.op.unary.f32(i32 6, float %5881)  ; FAbs(value)
  %5884 = call float @dx.op.unary.f32(i32 6, float %5882)  ; FAbs(value)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5738, 0
  %5886 = call float @dx.op.binary.f32(i32 35, float %5883, float %5884)  ; FMax(a,b)
  %5887 = fsub fast float %5885, %5886
  %5888 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5889 = call float @dx.op.binary.f32(i32 36, float %5888, float %5866)  ; FMin(a,b)
  %5890 = fmul fast float %5889, %5800
  %5891 = fsub fast float %5862, %5890
  %5892 = fsub fast float %5863, %5862
  %5893 = fsub fast float %5892, %5890
  %5894 = call float @dx.op.binary.f32(i32 35, float %5862, float %5863)  ; FMax(a,b)
  %5895 = call float @dx.op.binary.f32(i32 35, float %5890, float %5894)  ; FMax(a,b)
  %5896 = fcmp fast olt float %5895, 1.000000e+00
  br i1 %5896, label %5897, label %6295, !dx.controlflow.hints !102

; <label>:5897                                    ; preds = %5861
  %5898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5899 = extractvalue %dx.types.CBufRet.f32 %5898, 0
  %5900 = fcmp fast une float %5899, 0.000000e+00
  br i1 %5900, label %5901, label %6295, !dx.controlflow.hints !103

; <label>:5901                                    ; preds = %5897
  %5902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.CBufRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.CBufRet.f32 %5902, 2
  %5906 = extractvalue %dx.types.CBufRet.f32 %5902, 3
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5911 = extractvalue %dx.types.CBufRet.f32 %5907, 3
  %5912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5912, 0
  %5914 = extractvalue %dx.types.CBufRet.f32 %5912, 1
  %5915 = extractvalue %dx.types.CBufRet.f32 %5912, 2
  %5916 = extractvalue %dx.types.CBufRet.f32 %5912, 3
  %5917 = fmul fast float %5903, %5743
  %5918 = call float @dx.op.tertiary.f32(i32 46, float %5744, float %5904, float %5917)  ; FMad(a,b,c)
  %5919 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5905, float %5918)  ; FMad(a,b,c)
  %5920 = fadd fast float %5919, %5906
  %5921 = fmul fast float %5908, %5743
  %5922 = call float @dx.op.tertiary.f32(i32 46, float %5744, float %5909, float %5921)  ; FMad(a,b,c)
  %5923 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5910, float %5922)  ; FMad(a,b,c)
  %5924 = fadd fast float %5923, %5911
  %5925 = fmul fast float %5913, %5743
  %5926 = call float @dx.op.tertiary.f32(i32 46, float %5744, float %5914, float %5925)  ; FMad(a,b,c)
  %5927 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5915, float %5926)  ; FMad(a,b,c)
  %5928 = fadd fast float %5927, %5916
  %5929 = fcmp fast oge float %5920, 1.000000e+00
  %5930 = fcmp fast oge float %5924, 1.000000e+00
  %5931 = or i1 %5929, %5930
  %5932 = fcmp fast olt float %5920, 0.000000e+00
  %5933 = fcmp fast olt float %5924, 0.000000e+00
  %5934 = or i1 %5932, %5933
  %5935 = or i1 %5931, %5934
  br i1 %5935, label %6295, label %5936, !dx.controlflow.hints !104

; <label>:5936                                    ; preds = %5901
  %5937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5938 = extractvalue %dx.types.CBufRet.f32 %5937, 0
  %5939 = extractvalue %dx.types.CBufRet.f32 %5937, 1
  %5940 = extractvalue %dx.types.CBufRet.f32 %5937, 2
  %5941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.i32 %5941, 2
  %5943 = uitofp i32 %5942 to float
  %5944 = extractvalue %dx.types.CBufRet.i32 %5941, 3
  %5945 = uitofp i32 %5944 to float
  %5946 = extractvalue %dx.types.CBufRet.f32 %5937, 3
  %5947 = fmul fast float %5946, 2.000000e+00
  %5948 = fsub fast float %5920, %5938
  %5949 = fsub fast float %5924, %5939
  %5950 = fmul fast float %5947, %5948
  %5951 = fmul fast float %5947, %5949
  %5952 = fdiv fast float 1.000000e+00, %5726
  %5953 = fmul fast float %5951, %5952
  %5954 = call float @dx.op.unary.f32(i32 6, float %5953)  ; FAbs(value)
  %5955 = fmul fast float %5940, %5745
  %5956 = fmul fast float %5955, %5947
  %5957 = call float @dx.op.unary.f32(i32 6, float %5956)  ; FAbs(value)
  %5958 = call float @dx.op.unary.f32(i32 6, float %5950)  ; FAbs(value)
  %5959 = call float @dx.op.binary.f32(i32 35, float %5957, float %5954)  ; FMax(a,b)
  %5960 = call float @dx.op.binary.f32(i32 35, float %5958, float %5959)  ; FMax(a,b)
  %5961 = fmul fast float %5960, 2.000000e+00
  %5962 = call float @dx.op.unary.f32(i32 23, float %5961)  ; Log(value)
  %5963 = call float @dx.op.binary.f32(i32 35, float %5962, float %5943)  ; FMax(a,b)
  %5964 = call float @dx.op.unary.f32(i32 22, float %5963)  ; Frc(value)
  %5965 = fadd fast float %5964, 0xBFEA666660000000
  %5966 = fmul fast float %5965, 8.000000e+00
  %5967 = call float @dx.op.unary.f32(i32 7, float %5966)  ; Saturate(value)
  %5968 = call float @dx.op.unary.f32(i32 27, float %5963)  ; Round_ni(value)
  %5969 = fadd fast float %5968, %5967
  %5970 = call float @dx.op.binary.f32(i32 36, float %5969, float %5945)  ; FMin(a,b)
  %5971 = call float @dx.op.unary.f32(i32 27, float %5970)  ; Round_ni(value)
  %5972 = fsub fast float -0.000000e+00, %5971
  %5973 = call float @dx.op.unary.f32(i32 21, float %5972)  ; Exp(value)
  %5974 = fmul fast float %5973, %5947
  %5975 = fmul fast float %5974, %5920
  %5976 = fmul fast float %5974, %5924
  %5977 = fmul fast float %5975, 2.500000e-01
  %5978 = fmul fast float %5976, 2.500000e-01
  %5979 = fadd fast float %5977, 5.000000e-01
  %5980 = fadd fast float %5978, 5.000000e-01
  %5981 = fsub fast float %5945, %5943
  %5982 = fptoui float %5981 to i32
  %5983 = add i32 %5982, 320
  %5984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %5983)  ; CBufferLoadLegacy(handle,regIndex)
  %5985 = extractvalue %dx.types.CBufRet.f32 %5984, 0
  %5986 = extractvalue %dx.types.CBufRet.f32 %5984, 1
  %5987 = fcmp fast une float %5970, %5945
  %5988 = fsub fast float %5920, %5985
  %5989 = fsub fast float %5924, %5986
  %5990 = call float @dx.op.unary.f32(i32 6, float %5988)  ; FAbs(value)
  %5991 = call float @dx.op.unary.f32(i32 6, float %5989)  ; FAbs(value)
  %5992 = fmul fast float %5990, %5974
  %5993 = fmul fast float %5991, %5974
  %5994 = fcmp fast olt float %5992, 1.000000e+00
  %5995 = fcmp fast olt float %5993, 1.000000e+00
  %5996 = and i1 %5994, %5995
  %5997 = or i1 %5987, %5996
  br i1 %5997, label %5998, label %6295, !dx.controlflow.hints !105

; <label>:5998                                    ; preds = %5936
  %5999 = fmul fast float %5976, 5.000000e-01
  %6000 = fmul fast float %5975, 5.000000e-01
  %6001 = fadd fast float %5999, 5.000000e-01
  %6002 = fadd fast float %6000, 5.000000e-01
  %6003 = sitofp i32 %5942 to float
  %6004 = fsub fast float %5970, %6003
  %6005 = call float @dx.op.unary.f32(i32 27, float %6004)  ; Round_ni(value)
  %6006 = call float @dx.op.unary.f32(i32 22, float %5970)  ; Frc(value)
  %6007 = call float @dx.op.unary.f32(i32 22, float %6002)  ; Frc(value)
  %6008 = call float @dx.op.unary.f32(i32 22, float %6001)  ; Frc(value)
  %6009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %6007, float %6008, float %6005, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6010 = extractvalue %dx.types.ResRet.f32 %6009, 0
  %6011 = extractvalue %dx.types.ResRet.f32 %6009, 1
  %6012 = extractvalue %dx.types.ResRet.f32 %6009, 2
  %6013 = extractvalue %dx.types.ResRet.f32 %6009, 3
  %6014 = fcmp fast ogt float %6006, 0.000000e+00
  br i1 %6014, label %6015, label %6036, !dx.controlflow.hints !106

; <label>:6015                                    ; preds = %5998
  %6016 = fadd fast float %6005, 1.000000e+00
  %6017 = call float @dx.op.unary.f32(i32 22, float %5979)  ; Frc(value)
  %6018 = call float @dx.op.unary.f32(i32 22, float %5980)  ; Frc(value)
  %6019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %6017, float %6018, float %6016, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6020 = extractvalue %dx.types.ResRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.ResRet.f32 %6019, 1
  %6022 = extractvalue %dx.types.ResRet.f32 %6019, 2
  %6023 = extractvalue %dx.types.ResRet.f32 %6019, 3
  %6024 = fsub fast float %6020, %6010
  %6025 = fsub fast float %6021, %6011
  %6026 = fsub fast float %6022, %6012
  %6027 = fsub fast float %6023, %6013
  %6028 = fmul fast float %6024, %6006
  %6029 = fmul fast float %6025, %6006
  %6030 = fmul fast float %6026, %6006
  %6031 = fmul fast float %6027, %6006
  %6032 = fadd fast float %6028, %6010
  %6033 = fadd fast float %6029, %6011
  %6034 = fadd fast float %6030, %6012
  %6035 = fadd fast float %6031, %6013
  br label %6036

; <label>:6036                                    ; preds = %6015, %5998
  %6037 = phi float [ %6032, %6015 ], [ %6010, %5998 ]
  %6038 = phi float [ %6033, %6015 ], [ %6011, %5998 ]
  %6039 = phi float [ %6034, %6015 ], [ %6012, %5998 ]
  %6040 = phi float [ %6035, %6015 ], [ %6013, %5998 ]
  %6041 = fadd fast float %6037, -5.000000e-01
  %6042 = fadd fast float %6039, -5.000000e-01
  %6043 = fmul fast float %6041, 0xBFD5555560000000
  %6044 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6042, float %6043)  ; FMad(a,b,c)
  %6045 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6038, float 0.000000e+00)  ; FMad(a,b,c)
  %6046 = fadd fast float %6045, %6040
  %6047 = fmul fast float %6041, -7.500000e-01
  %6048 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6042, float %6047)  ; FMad(a,b,c)
  %6049 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6038, float 0.000000e+00)  ; FMad(a,b,c)
  %6050 = fadd fast float %6049, %6040
  %6051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6052 = extractvalue %dx.types.CBufRet.f32 %6051, 0
  %6053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6054 = extractvalue %dx.types.CBufRet.f32 %6053, 0
  %6055 = extractvalue %dx.types.CBufRet.f32 %6053, 1
  %6056 = extractvalue %dx.types.CBufRet.f32 %6053, 2
  %6057 = extractvalue %dx.types.CBufRet.f32 %6053, 3
  %6058 = fsub fast float %6054, %6044
  %6059 = fsub fast float %6055, %6046
  %6060 = fsub fast float %6056, %6048
  %6061 = fsub fast float %6057, %6050
  %6062 = fmul fast float %6058, %6052
  %6063 = fmul fast float %6059, %6052
  %6064 = fmul fast float %6060, %6052
  %6065 = fmul fast float %6061, %6052
  %6066 = fadd fast float %6062, %6044
  %6067 = fadd fast float %6063, %6046
  %6068 = fadd fast float %6064, %6048
  %6069 = fadd fast float %6065, %6050
  %6070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6071 = extractvalue %dx.types.ResRet.i32 %6070, 0
  %6072 = and i32 %6071, 536870911
  %6073 = uitofp i32 %6072 to float
  %6074 = fmul fast float %6073, %5920
  %6075 = fmul fast float %6073, %5924
  %6076 = fptoui float %6074 to i32
  %6077 = fptoui float %6075 to i32
  %6078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6079 = extractvalue %dx.types.ResRet.i32 %6078, 0
  %6080 = and i32 %6079, 31
  %6081 = lshr i32 %6076, %6080
  %6082 = lshr i32 %6077, %6080
  %6083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6084 = extractvalue %dx.types.ResRet.i32 %6083, 0
  %6085 = and i32 %6084, 31
  %6086 = shl i32 1, %6085
  %6087 = call i32 @dx.op.binary.i32(i32 40, i32 %6086, i32 4)  ; UMin(a,b)
  %6088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6089 = extractvalue %dx.types.ResRet.i32 %6088, 0
  %6090 = extractvalue %dx.types.ResRet.i32 %6088, 1
  %6091 = icmp eq i32 %6087, 0
  br i1 %6091, label %6133, label %6092

; <label>:6092                                    ; preds = %6036
  br label %6093

; <label>:6093                                    ; preds = %6121, %6092
  %6094 = phi i32 [ %6124, %6121 ], [ 0, %6092 ]
  %6095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6096 = extractvalue %dx.types.ResRet.i32 %6095, 0
  %6097 = lshr i32 %6096, 16
  %6098 = and i32 %6097, 31
  %6099 = shl i32 %6082, %6098
  %6100 = add i32 %6099, %6081
  %6101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6102 = extractvalue %dx.types.ResRet.i32 %6101, 0
  %6103 = and i32 %6102, 31
  %6104 = shl i32 %6100, %6103
  %6105 = add i32 %6104, %6094
  %6106 = shl i32 %6105, 2
  %6107 = add i32 %6106, 32
  %6108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6107, i32 undef)  ; BufferLoad(srv,index,wot)
  %6109 = extractvalue %dx.types.ResRet.i32 %6108, 0
  %6110 = icmp slt i32 %6109, 0
  %6111 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6094
  %6112 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6094
  %6113 = bitcast float* %6111 to i32*
  %6114 = bitcast float* %6112 to i32*
  br i1 %6110, label %6115, label %6121

; <label>:6115                                    ; preds = %6093
  %6116 = and i32 %6109, 1073741823
  %6117 = add nuw nsw i32 %6116, 20
  %6118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6117, i32 undef)  ; BufferLoad(srv,index,wot)
  %6119 = extractvalue %dx.types.ResRet.i32 %6118, 0
  %6120 = extractvalue %dx.types.ResRet.i32 %6118, 1
  br label %6121

; <label>:6121                                    ; preds = %6115, %6093
  %6122 = phi i32 [ %6119, %6115 ], [ %6089, %6093 ]
  %6123 = phi i32 [ %6120, %6115 ], [ %6090, %6093 ]
  store i32 %6122, i32* %6113, align 4
  store i32 %6123, i32* %6114, align 4
  %6124 = add nuw i32 %6094, 1
  %6125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6126 = extractvalue %dx.types.CBufRet.i32 %6125, 2
  %6127 = icmp eq i32 %6126, 0
  %6128 = icmp ugt i32 %6109, -1073741825
  %6129 = and i1 %6128, %6127
  %6130 = icmp ult i32 %6124, %6087
  %6131 = and i1 %6129, %6130
  br i1 %6131, label %6093, label %6132

; <label>:6132                                    ; preds = %6121
  br label %6133

; <label>:6133                                    ; preds = %6132, %6036
  %6134 = phi i32 [ 0, %6036 ], [ %6124, %6132 ]
  %6135 = extractvalue %dx.types.CBufRet.f32 %5898, 2
  %6136 = fptoui float %6135 to i32
  %6137 = icmp eq i32 %6136, 0
  br i1 %6137, label %6189, label %6138

; <label>:6138                                    ; preds = %6133
  br label %6139

; <label>:6139                                    ; preds = %6184, %6138
  %6140 = phi i32 [ %6185, %6184 ], [ %6134, %6138 ]
  %6141 = phi i32 [ %6186, %6184 ], [ 0, %6138 ]
  %6142 = lshr i32 %6141, 2
  %6143 = and i32 %6141, 3
  %6144 = add nuw nsw i32 %6142, 83
  %6145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 %6144)  ; CBufferLoadLegacy(handle,regIndex)
  %6146 = extractvalue %dx.types.CBufRet.i32 %6145, 0
  %6147 = extractvalue %dx.types.CBufRet.i32 %6145, 1
  %6148 = extractvalue %dx.types.CBufRet.i32 %6145, 2
  %6149 = extractvalue %dx.types.CBufRet.i32 %6145, 3
  %6150 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %6146, i32* %6150, align 4
  %6151 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %6147, i32* %6151, align 4
  %6152 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %6148, i32* %6152, align 4
  %6153 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %6149, i32* %6153, align 4
  %6154 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 %6143
  %6155 = load i32, i32* %6154, align 4, !tbaa !107, !noalias !111
  %6156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6157 = extractvalue %dx.types.ResRet.i32 %6156, 0
  %6158 = lshr i32 %6157, 16
  %6159 = and i32 %6158, 31
  %6160 = shl i32 %6082, %6159
  %6161 = add i32 %6160, %6081
  %6162 = shl i32 %6161, 2
  %6163 = add i32 %6162, %6155
  %6164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6163, i32 undef)  ; BufferLoad(srv,index,wot)
  %6165 = extractvalue %dx.types.ResRet.i32 %6164, 0
  %6166 = icmp eq i32 %6165, 0
  br i1 %6166, label %6184, label %6167

; <label>:6167                                    ; preds = %6139
  %6168 = icmp slt i32 %6165, 0
  %6169 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6140
  %6170 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6140
  %6171 = bitcast float* %6169 to i32*
  %6172 = bitcast float* %6170 to i32*
  br i1 %6168, label %6173, label %6180

; <label>:6173                                    ; preds = %6167
  %6174 = and i32 %6165, 1073741823
  %6175 = add i32 %6155, 20
  %6176 = add i32 %6175, %6174
  %6177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6176, i32 undef)  ; BufferLoad(srv,index,wot)
  %6178 = extractvalue %dx.types.ResRet.i32 %6177, 0
  %6179 = extractvalue %dx.types.ResRet.i32 %6177, 1
  br label %6180

; <label>:6180                                    ; preds = %6173, %6167
  %6181 = phi i32 [ %6178, %6173 ], [ %6089, %6167 ]
  %6182 = phi i32 [ %6179, %6173 ], [ %6090, %6167 ]
  store i32 %6181, i32* %6171, align 4
  store i32 %6182, i32* %6172, align 4
  %6183 = add i32 %6140, 1
  br label %6184

; <label>:6184                                    ; preds = %6180, %6139
  %6185 = phi i32 [ %6140, %6139 ], [ %6183, %6180 ]
  %6186 = add nuw i32 %6141, 1
  %6187 = icmp eq i32 %6186, %6136
  br i1 %6187, label %6188, label %6139

; <label>:6188                                    ; preds = %6184
  br label %6189

; <label>:6189                                    ; preds = %6188, %6133
  %6190 = phi i32 [ %6134, %6133 ], [ %6185, %6188 ]
  %6191 = icmp eq i32 %6190, 1
  %6192 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  %6193 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 0
  br i1 %6191, label %6194, label %6197

; <label>:6194                                    ; preds = %6189
  %6195 = load float, float* %6192, align 4
  %6196 = load float, float* %6193, align 4
  br label %6224

; <label>:6197                                    ; preds = %6189
  %6198 = load float, float* %6192, align 4
  %6199 = load float, float* %6193, align 4
  %6200 = fdiv fast float 1.000000e+00, %6199
  %6201 = fsub fast float %6198, %6200
  %6202 = icmp ugt i32 %6190, 1
  br i1 %6202, label %6203, label %6219

; <label>:6203                                    ; preds = %6197
  br label %6204

; <label>:6204                                    ; preds = %6204, %6203
  %6205 = phi float [ %6214, %6204 ], [ %6201, %6203 ]
  %6206 = phi float [ %6215, %6204 ], [ %6198, %6203 ]
  %6207 = phi i32 [ %6216, %6204 ], [ 1, %6203 ]
  %6208 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6207
  %6209 = load float, float* %6208, align 4
  %6210 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6207
  %6211 = load float, float* %6210, align 4
  %6212 = fdiv fast float 1.000000e+00, %6211
  %6213 = fsub fast float %6209, %6212
  %6214 = call float @dx.op.binary.f32(i32 36, float %6205, float %6213)  ; FMin(a,b)
  %6215 = call float @dx.op.binary.f32(i32 35, float %6206, float %6209)  ; FMax(a,b)
  %6216 = add nuw i32 %6207, 1
  %6217 = icmp eq i32 %6216, %6190
  br i1 %6217, label %6218, label %6204

; <label>:6218                                    ; preds = %6204
  br label %6219

; <label>:6219                                    ; preds = %6218, %6197
  %6220 = phi float [ %6201, %6197 ], [ %6214, %6218 ]
  %6221 = phi float [ %6198, %6197 ], [ %6215, %6218 ]
  %6222 = fsub fast float %6221, %6220
  %6223 = fdiv fast float 1.000000e+00, %6222
  br label %6224

; <label>:6224                                    ; preds = %6219, %6194
  %6225 = phi float [ %6195, %6194 ], [ %6221, %6219 ]
  %6226 = phi float [ %6196, %6194 ], [ %6223, %6219 ]
  %6227 = fadd fast float %5928, %6225
  %6228 = fmul fast float %6227, %6226
  %6229 = call float @dx.op.unary.f32(i32 7, float %6228)  ; Saturate(value)
  %6230 = fmul fast float %6229, 2.000000e+00
  %6231 = fsub fast float 1.000000e+00, %6230
  %6232 = fmul fast float %6066, %6066
  %6233 = fsub fast float %6067, %6232
  %6234 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6233)  ; FMax(a,b)
  %6235 = fdiv fast float 1.000000e+00, %6234
  %6236 = fmul fast float %6067, %6066
  %6237 = fsub fast float %6068, %6236
  %6238 = fsub fast float %6231, %6066
  %6239 = fmul fast float %6231, %6231
  %6240 = fsub fast float %6239, %6067
  %6241 = fmul fast float %6235, %6237
  %6242 = fmul fast float %6241, %6238
  %6243 = fsub fast float %6240, %6242
  %6244 = fmul fast float %6067, %6067
  %6245 = fsub fast float %6069, %6244
  %6246 = fmul fast float %6237, %6237
  %6247 = fmul fast float %6246, %6235
  %6248 = fsub fast float %6245, %6247
  %6249 = fdiv fast float %6243, %6248
  %6250 = fmul fast float %6249, %6237
  %6251 = fsub fast float %6238, %6250
  %6252 = fmul fast float %6251, %6235
  %6253 = fmul fast float %6252, %6066
  %6254 = fsub fast float 1.000000e+00, %6253
  %6255 = fmul fast float %6249, %6067
  %6256 = fsub fast float %6254, %6255
  %6257 = fmul fast float %6252, %6252
  %6258 = fmul fast float %6249, 4.000000e+00
  %6259 = fmul fast float %6258, %6256
  %6260 = fsub fast float %6257, %6259
  %6261 = call float @dx.op.unary.f32(i32 24, float %6260)  ; Sqrt(value)
  %6262 = fcmp fast oge float %6252, 0.000000e+00
  %6263 = fsub fast float -0.000000e+00, %6261
  %6264 = select i1 %6262, float %6263, float %6261
  %6265 = fsub fast float %6264, %6252
  %6266 = fdiv fast float %6265, %6249
  %6267 = fdiv fast float %6256, %6265
  %6268 = fmul fast float %6266, 5.000000e-01
  %6269 = fmul fast float %6267, 2.000000e+00
  %6270 = select i1 %6262, float %6268, float %6269
  %6271 = select i1 %6262, float %6269, float %6268
  %6272 = call float @dx.op.binary.f32(i32 35, float %6270, float %6271)  ; FMax(a,b)
  %6273 = call float @dx.op.binary.f32(i32 36, float %6270, float %6271)  ; FMin(a,b)
  %6274 = fcmp fast ogt float %6231, %6272
  %6275 = fsub fast float %6231, %6273
  %6276 = fsub fast float %6231, %6272
  %6277 = fsub fast float %6272, %6273
  %6278 = select i1 %6274, float %6276, float %6277
  %6279 = fmul float %6275, %6278
  %6280 = select i1 %6274, float %6273, float %6231
  %6281 = fcmp fast ogt float %6231, %6273
  %6282 = fmul fast float %6280, %6272
  %6283 = fadd fast float %6280, %6272
  %6284 = fmul fast float %6283, %6066
  %6285 = fadd fast float %6282, %6067
  %6286 = fsub fast float %6285, %6284
  %6287 = fdiv fast float %6286, %6279
  %6288 = select i1 %6281, float %6287, float 0.000000e+00
  %6289 = fsub fast float 1.000000e+00, %6288
  %6290 = select i1 %6274, float %6289, float %6288
  %6291 = call float @dx.op.unary.f32(i32 7, float %6290)  ; Saturate(value)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6051, 3
  %6293 = fmul fast float %6292, %6291
  %6294 = fsub fast float 1.000000e+00, %6293
  br label %6295

; <label>:6295                                    ; preds = %6224, %5936, %5901, %5897, %5861
  %6296 = phi float [ 1.000000e+00, %5861 ], [ %6294, %6224 ], [ 1.000000e+00, %5901 ], [ 1.000000e+00, %5936 ], [ 1.000000e+00, %5897 ]
  %6297 = fcmp fast ogt float %5893, 0.000000e+00
  br i1 %6297, label %6298, label %6462, !dx.controlflow.hints !120

; <label>:6298                                    ; preds = %6295
  %6299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6300 = extractvalue %dx.types.CBufRet.f32 %6299, 2
  %6301 = fadd fast float %6300, %5774
  %6302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6302, 2
  %6304 = extractvalue %dx.types.CBufRet.f32 %6302, 3
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 2
  %6307 = call float @dx.op.binary.f32(i32 35, float %6301, float 0.000000e+00)  ; FMax(a,b)
  %6308 = fadd fast float %6307, 0x3F10000000000000
  %6309 = fcmp fast oeq float %6306, 0.000000e+00
  br i1 %6309, label %6310, label %6377

; <label>:6310                                    ; preds = %6298
  %6311 = extractvalue %dx.types.CBufRet.f32 %6302, 1
  %6312 = extractvalue %dx.types.CBufRet.f32 %6302, 0
  %6313 = fmul fast float %6312, %5792
  %6314 = fmul fast float %6311, %5793
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
  %6355 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %6352, float %6354, float undef, float undef, i32 0, i32 0, i32 undef, float %6308)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6356 = extractvalue %dx.types.ResRet.f32 %6355, 0
  %6357 = fmul fast float %6356, %6324
  %6358 = fadd fast float %6336, %6321
  %6359 = fmul fast float %6358, %6303
  %6360 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %6359, float %6354, float undef, float undef, i32 0, i32 0, i32 undef, float %6308)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6361 = extractvalue %dx.types.ResRet.f32 %6360, 0
  %6362 = fmul fast float %6361, %6325
  %6363 = fadd fast float %6350, %6322
  %6364 = fmul fast float %6363, %6304
  %6365 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %6352, float %6364, float undef, float undef, i32 0, i32 0, i32 undef, float %6308)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6366 = extractvalue %dx.types.ResRet.f32 %6365, 0
  %6367 = fmul fast float %6366, %6324
  %6368 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %6359, float %6364, float undef, float undef, i32 0, i32 0, i32 undef, float %6308)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
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
  %6378 = fmul fast float %286, 0x401921FB60000000
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
  %6400 = fadd fast float %6398, %5792
  %6401 = fadd fast float %6399, %5793
  %6402 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %52, float %6400, float %6401, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6403 = extractvalue %dx.types.ResRet.f32 %6402, 0
  %6404 = extractvalue %dx.types.ResRet.f32 %6402, 1
  %6405 = extractvalue %dx.types.ResRet.f32 %6402, 2
  %6406 = extractvalue %dx.types.ResRet.f32 %6402, 3
  %6407 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 0
  store float %6403, float* %6407, align 4
  %6408 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 1
  store float %6404, float* %6408, align 4
  %6409 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 2
  store float %6405, float* %6409, align 4
  %6410 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 3
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
  %6421 = getelementptr [4 x float], [4 x float]* %113, i32 0, i32 %6418
  %6422 = load float, float* %6421, align 4, !tbaa !121, !noalias !111
  %6423 = fsub fast float %6422, %6308
  %6424 = fcmp fast olt float %6423, 0.000000e+00
  %6425 = select i1 %6424, float 0.000000e+00, float 1.000000e+00
  %6426 = fadd fast float %6425, %6420
  %6427 = fmul fast float %6425, %6423
  %6428 = fadd fast float %6427, %6419
  %6429 = add nuw nsw i32 %6418, 1
  %6430 = icmp eq i32 %6429, 4
  br i1 %6430, label %6431, label %6417, !llvm.loop !123

; <label>:6431                                    ; preds = %6417
  %6432 = add nuw nsw i32 %6385, 1
  %6433 = icmp eq i32 %6432, 8
  br i1 %6433, label %6434, label %6382, !llvm.loop !124

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
  %6464 = fcmp fast ogt float %5891, 0.000000e+00
  br i1 %6464, label %6465, label %6629, !dx.controlflow.hints !125

; <label>:6465                                    ; preds = %6462
  %6466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6466, 1
  %6468 = fadd fast float %6467, %5774
  %6469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6470 = extractvalue %dx.types.CBufRet.f32 %6469, 2
  %6471 = extractvalue %dx.types.CBufRet.f32 %6469, 3
  %6472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6473 = extractvalue %dx.types.CBufRet.f32 %6472, 1
  %6474 = call float @dx.op.binary.f32(i32 35, float %6468, float 0.000000e+00)  ; FMax(a,b)
  %6475 = fadd fast float %6474, 0x3F10000000000000
  %6476 = fcmp fast oeq float %6473, 0.000000e+00
  br i1 %6476, label %6477, label %6544

; <label>:6477                                    ; preds = %6465
  %6478 = extractvalue %dx.types.CBufRet.f32 %6469, 1
  %6479 = extractvalue %dx.types.CBufRet.f32 %6469, 0
  %6480 = fmul fast float %6479, %5784
  %6481 = fmul fast float %6478, %5785
  %6482 = fadd fast float %6480, 5.000000e-01
  %6483 = call float @dx.op.unary.f32(i32 27, float %6482)  ; Round_ni(value)
  %6484 = fadd fast float %6481, 5.000000e-01
  %6485 = call float @dx.op.unary.f32(i32 27, float %6484)  ; Round_ni(value)
  %6486 = fsub fast float %6482, %6483
  %6487 = fsub fast float %6484, %6485
  %6488 = fadd fast float %6483, -5.000000e-01
  %6489 = fadd fast float %6485, -5.000000e-01
  %6490 = fmul fast float %6486, 2.000000e+00
  %6491 = fsub fast float 3.000000e+00, %6490
  %6492 = fadd fast float %6490, 1.000000e+00
  %6493 = fsub fast float 2.000000e+00, %6486
  %6494 = bitcast float %6491 to i32
  %6495 = sub nsw i32 2129859010, %6494
  %6496 = bitcast i32 %6495 to float
  %6497 = fmul fast float %6496, %6493
  %6498 = fadd fast float %6497, -1.000000e+00
  %6499 = bitcast float %6492 to i32
  %6500 = sub nsw i32 2129859010, %6499
  %6501 = bitcast i32 %6500 to float
  %6502 = fmul fast float %6501, %6486
  %6503 = fadd fast float %6502, 1.000000e+00
  %6504 = fmul fast float %6487, 2.000000e+00
  %6505 = fsub fast float 3.000000e+00, %6504
  %6506 = fadd fast float %6504, 1.000000e+00
  %6507 = fsub fast float 2.000000e+00, %6487
  %6508 = bitcast float %6505 to i32
  %6509 = sub nsw i32 2129859010, %6508
  %6510 = bitcast i32 %6509 to float
  %6511 = fmul fast float %6510, %6507
  %6512 = fadd fast float %6511, -1.000000e+00
  %6513 = bitcast float %6506 to i32
  %6514 = sub nsw i32 2129859010, %6513
  %6515 = bitcast i32 %6514 to float
  %6516 = fmul fast float %6515, %6487
  %6517 = fadd fast float %6516, 1.000000e+00
  %6518 = fadd fast float %6498, %6488
  %6519 = fmul fast float %6518, %6470
  %6520 = fadd fast float %6512, %6489
  %6521 = fmul fast float %6520, %6471
  %6522 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %6519, float %6521, float undef, float undef, i32 0, i32 0, i32 undef, float %6475)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6523 = extractvalue %dx.types.ResRet.f32 %6522, 0
  %6524 = fmul fast float %6523, %6491
  %6525 = fadd fast float %6503, %6488
  %6526 = fmul fast float %6525, %6470
  %6527 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %6526, float %6521, float undef, float undef, i32 0, i32 0, i32 undef, float %6475)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6528 = extractvalue %dx.types.ResRet.f32 %6527, 0
  %6529 = fmul fast float %6528, %6492
  %6530 = fadd fast float %6517, %6489
  %6531 = fmul fast float %6530, %6471
  %6532 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %6519, float %6531, float undef, float undef, i32 0, i32 0, i32 undef, float %6475)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6533 = extractvalue %dx.types.ResRet.f32 %6532, 0
  %6534 = fmul fast float %6533, %6491
  %6535 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %6526, float %6531, float undef, float undef, i32 0, i32 0, i32 undef, float %6475)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6536 = extractvalue %dx.types.ResRet.f32 %6535, 0
  %6537 = fmul fast float %6536, %6492
  %6538 = fadd fast float %6537, %6534
  %6539 = fmul fast float %6538, %6506
  %6540 = fadd fast float %6529, %6524
  %6541 = fmul fast float %6540, %6505
  %6542 = fadd fast float %6541, %6539
  %6543 = fmul fast float %6542, 6.250000e-02
  br label %6629

; <label>:6544                                    ; preds = %6465
  %6545 = fmul fast float %286, 0x401921FB60000000
  %6546 = call float @dx.op.unary.f32(i32 13, float %6545)  ; Sin(value)
  %6547 = call float @dx.op.unary.f32(i32 12, float %6545)  ; Cos(value)
  %6548 = fsub fast float -0.000000e+00, %6546
  br label %6549

; <label>:6549                                    ; preds = %6598, %6544
  %6550 = phi float [ 0.000000e+00, %6544 ], [ %6593, %6598 ]
  %6551 = phi float [ 0.000000e+00, %6544 ], [ %6595, %6598 ]
  %6552 = phi i32 [ 0, %6544 ], [ %6599, %6598 ]
  %6553 = mul i32 %6552, 2
  %6554 = add i32 0, %6553
  %6555 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6554
  %6556 = load float, float* %6555, align 4
  %6557 = mul i32 %6552, 2
  %6558 = add i32 1, %6557
  %6559 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6558
  %6560 = load float, float* %6559, align 4
  %6561 = fmul fast float %6556, %6547
  %6562 = call float @dx.op.tertiary.f32(i32 46, float %6560, float %6548, float %6561)  ; FMad(a,b,c)
  %6563 = fmul fast float %6556, %6546
  %6564 = call float @dx.op.tertiary.f32(i32 46, float %6560, float %6547, float %6563)  ; FMad(a,b,c)
  %6565 = fmul fast float %6562, %6473
  %6566 = fmul fast float %6564, %6473
  %6567 = fadd fast float %6565, %5784
  %6568 = fadd fast float %6566, %5785
  %6569 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %52, float %6567, float %6568, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6570 = extractvalue %dx.types.ResRet.f32 %6569, 0
  %6571 = extractvalue %dx.types.ResRet.f32 %6569, 1
  %6572 = extractvalue %dx.types.ResRet.f32 %6569, 2
  %6573 = extractvalue %dx.types.ResRet.f32 %6569, 3
  %6574 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 0
  store float %6570, float* %6574, align 4
  %6575 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 1
  store float %6571, float* %6575, align 4
  %6576 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 2
  store float %6572, float* %6576, align 4
  %6577 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 3
  store float %6573, float* %6577, align 4
  %6578 = fsub fast float %6570, %6475
  %6579 = fcmp fast olt float %6578, 0.000000e+00
  %6580 = select i1 %6579, float 0.000000e+00, float 1.000000e+00
  %6581 = fadd fast float %6580, %6550
  %6582 = fmul fast float %6580, %6578
  %6583 = fadd fast float %6582, %6551
  br label %6584

; <label>:6584                                    ; preds = %6584, %6549
  %6585 = phi i32 [ 1, %6549 ], [ %6596, %6584 ]
  %6586 = phi float [ %6583, %6549 ], [ %6595, %6584 ]
  %6587 = phi float [ %6581, %6549 ], [ %6593, %6584 ]
  %6588 = getelementptr [4 x float], [4 x float]* %112, i32 0, i32 %6585
  %6589 = load float, float* %6588, align 4, !tbaa !121, !noalias !111
  %6590 = fsub fast float %6589, %6475
  %6591 = fcmp fast olt float %6590, 0.000000e+00
  %6592 = select i1 %6591, float 0.000000e+00, float 1.000000e+00
  %6593 = fadd fast float %6592, %6587
  %6594 = fmul fast float %6592, %6590
  %6595 = fadd fast float %6594, %6586
  %6596 = add nuw nsw i32 %6585, 1
  %6597 = icmp eq i32 %6596, 4
  br i1 %6597, label %6598, label %6584, !llvm.loop !123

; <label>:6598                                    ; preds = %6584
  %6599 = add nuw nsw i32 %6552, 1
  %6600 = icmp eq i32 %6599, 8
  br i1 %6600, label %6601, label %6549, !llvm.loop !124

; <label>:6601                                    ; preds = %6598
  %6602 = fdiv fast float 1.000000e+00, %6593
  %6603 = fmul fast float %6602, %6595
  %6604 = fdiv fast float 1.000000e+00, %6475
  %6605 = fmul fast float %6603, %6604
  %6606 = call float @dx.op.unary.f32(i32 7, float %6605)  ; Saturate(value)
  %6607 = call float @dx.op.binary.f32(i32 35, float %6606, float 0.000000e+00)  ; FMax(a,b)
  %6608 = fmul fast float %6593, 3.125000e-02
  %6609 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  %6610 = fmul fast float %6609, 2.000000e+00
  %6611 = fadd fast float %6610, -1.000000e+00
  %6612 = fcmp fast ogt float %6611, 0.000000e+00
  %6613 = fcmp fast olt float %6611, 0.000000e+00
  %6614 = zext i1 %6612 to i32
  %6615 = zext i1 %6613 to i32
  %6616 = sub nsw i32 %6614, %6615
  %6617 = sitofp i32 %6616 to float
  %6618 = fmul fast float %6617, %6611
  %6619 = fsub fast float 1.000000e+00, %6618
  %6620 = fmul fast float %6619, %6619
  %6621 = fmul fast float %6620, %6619
  %6622 = fsub fast float %6619, %6621
  %6623 = fmul fast float %6622, %6607
  %6624 = fsub fast float 1.000000e+00, %6621
  %6625 = fsub fast float %6624, %6623
  %6626 = fmul fast float %6617, 5.000000e-01
  %6627 = fmul fast float %6626, %6625
  %6628 = fsub fast float 5.000000e-01, %6627
  br label %6629

; <label>:6629                                    ; preds = %6601, %6477, %6462
  %6630 = phi float [ 1.000000e+00, %6462 ], [ %6543, %6477 ], [ %6628, %6601 ]
  %6631 = fcmp fast ogt float %5890, 0.000000e+00
  br i1 %6631, label %6632, label %6950, !dx.controlflow.hints !126

; <label>:6632                                    ; preds = %6629
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 0
  %6635 = fadd fast float %6634, %5774
  %6636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6637 = extractvalue %dx.types.CBufRet.f32 %6636, 2
  %6638 = extractvalue %dx.types.CBufRet.f32 %6636, 3
  %6639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6640 = extractvalue %dx.types.CBufRet.f32 %6639, 0
  %6641 = call float @dx.op.binary.f32(i32 35, float %6635, float 0.000000e+00)  ; FMax(a,b)
  %6642 = fadd fast float %6641, 0x3F10000000000000
  %6643 = fcmp fast oeq float %6640, 0.000000e+00
  br i1 %5777, label %6644, label %6797, !dx.controlflow.hints !127

; <label>:6644                                    ; preds = %6632
  br i1 %6643, label %6645, label %6712

; <label>:6645                                    ; preds = %6644
  %6646 = extractvalue %dx.types.CBufRet.f32 %6636, 1
  %6647 = extractvalue %dx.types.CBufRet.f32 %6636, 0
  %6648 = fmul fast float %6647, %5766
  %6649 = fmul fast float %6646, %5770
  %6650 = fadd fast float %6648, 5.000000e-01
  %6651 = call float @dx.op.unary.f32(i32 27, float %6650)  ; Round_ni(value)
  %6652 = fadd fast float %6649, 5.000000e-01
  %6653 = call float @dx.op.unary.f32(i32 27, float %6652)  ; Round_ni(value)
  %6654 = fsub fast float %6650, %6651
  %6655 = fsub fast float %6652, %6653
  %6656 = fadd fast float %6651, -5.000000e-01
  %6657 = fadd fast float %6653, -5.000000e-01
  %6658 = fmul fast float %6654, 2.000000e+00
  %6659 = fsub fast float 3.000000e+00, %6658
  %6660 = fadd fast float %6658, 1.000000e+00
  %6661 = fsub fast float 2.000000e+00, %6654
  %6662 = bitcast float %6659 to i32
  %6663 = sub nsw i32 2129859010, %6662
  %6664 = bitcast i32 %6663 to float
  %6665 = fmul fast float %6664, %6661
  %6666 = fadd fast float %6665, -1.000000e+00
  %6667 = bitcast float %6660 to i32
  %6668 = sub nsw i32 2129859010, %6667
  %6669 = bitcast i32 %6668 to float
  %6670 = fmul fast float %6669, %6654
  %6671 = fadd fast float %6670, 1.000000e+00
  %6672 = fmul fast float %6655, 2.000000e+00
  %6673 = fsub fast float 3.000000e+00, %6672
  %6674 = fadd fast float %6672, 1.000000e+00
  %6675 = fsub fast float 2.000000e+00, %6655
  %6676 = bitcast float %6673 to i32
  %6677 = sub nsw i32 2129859010, %6676
  %6678 = bitcast i32 %6677 to float
  %6679 = fmul fast float %6678, %6675
  %6680 = fadd fast float %6679, -1.000000e+00
  %6681 = bitcast float %6674 to i32
  %6682 = sub nsw i32 2129859010, %6681
  %6683 = bitcast i32 %6682 to float
  %6684 = fmul fast float %6683, %6655
  %6685 = fadd fast float %6684, 1.000000e+00
  %6686 = fadd fast float %6666, %6656
  %6687 = fmul fast float %6686, %6637
  %6688 = fadd fast float %6680, %6657
  %6689 = fmul fast float %6688, %6638
  %6690 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %6687, float %6689, float undef, float undef, i32 0, i32 0, i32 undef, float %6642)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6691 = extractvalue %dx.types.ResRet.f32 %6690, 0
  %6692 = fmul fast float %6691, %6659
  %6693 = fadd fast float %6671, %6656
  %6694 = fmul fast float %6693, %6637
  %6695 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %6694, float %6689, float undef, float undef, i32 0, i32 0, i32 undef, float %6642)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6696 = extractvalue %dx.types.ResRet.f32 %6695, 0
  %6697 = fmul fast float %6696, %6660
  %6698 = fadd fast float %6685, %6657
  %6699 = fmul fast float %6698, %6638
  %6700 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %6687, float %6699, float undef, float undef, i32 0, i32 0, i32 undef, float %6642)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6701 = extractvalue %dx.types.ResRet.f32 %6700, 0
  %6702 = fmul fast float %6701, %6659
  %6703 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %6694, float %6699, float undef, float undef, i32 0, i32 0, i32 undef, float %6642)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6704 = extractvalue %dx.types.ResRet.f32 %6703, 0
  %6705 = fmul fast float %6704, %6660
  %6706 = fadd fast float %6705, %6702
  %6707 = fmul fast float %6706, %6674
  %6708 = fadd fast float %6697, %6692
  %6709 = fmul fast float %6708, %6673
  %6710 = fadd fast float %6709, %6707
  %6711 = fmul fast float %6710, 6.250000e-02
  br label %6950

; <label>:6712                                    ; preds = %6644
  %6713 = fmul fast float %286, 0x401921FB60000000
  %6714 = call float @dx.op.unary.f32(i32 13, float %6713)  ; Sin(value)
  %6715 = call float @dx.op.unary.f32(i32 12, float %6713)  ; Cos(value)
  %6716 = fsub fast float -0.000000e+00, %6714
  br label %6717

; <label>:6717                                    ; preds = %6766, %6712
  %6718 = phi float [ 0.000000e+00, %6712 ], [ %6761, %6766 ]
  %6719 = phi float [ 0.000000e+00, %6712 ], [ %6763, %6766 ]
  %6720 = phi i32 [ 0, %6712 ], [ %6767, %6766 ]
  %6721 = mul i32 %6720, 2
  %6722 = add i32 0, %6721
  %6723 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6722
  %6724 = load float, float* %6723, align 4
  %6725 = mul i32 %6720, 2
  %6726 = add i32 1, %6725
  %6727 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6726
  %6728 = load float, float* %6727, align 4
  %6729 = fmul fast float %6724, %6715
  %6730 = call float @dx.op.tertiary.f32(i32 46, float %6728, float %6716, float %6729)  ; FMad(a,b,c)
  %6731 = fmul fast float %6724, %6714
  %6732 = call float @dx.op.tertiary.f32(i32 46, float %6728, float %6715, float %6731)  ; FMad(a,b,c)
  %6733 = fmul fast float %6730, %6640
  %6734 = fmul fast float %6732, %6640
  %6735 = fadd fast float %6733, %5766
  %6736 = fadd fast float %6734, %5770
  %6737 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %52, float %6735, float %6736, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6738 = extractvalue %dx.types.ResRet.f32 %6737, 0
  %6739 = extractvalue %dx.types.ResRet.f32 %6737, 1
  %6740 = extractvalue %dx.types.ResRet.f32 %6737, 2
  %6741 = extractvalue %dx.types.ResRet.f32 %6737, 3
  %6742 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %6738, float* %6742, align 4
  %6743 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %6739, float* %6743, align 4
  %6744 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %6740, float* %6744, align 4
  %6745 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %6741, float* %6745, align 4
  %6746 = fsub fast float %6738, %6642
  %6747 = fcmp fast olt float %6746, 0.000000e+00
  %6748 = select i1 %6747, float 0.000000e+00, float 1.000000e+00
  %6749 = fadd fast float %6748, %6718
  %6750 = fmul fast float %6748, %6746
  %6751 = fadd fast float %6750, %6719
  br label %6752

; <label>:6752                                    ; preds = %6752, %6717
  %6753 = phi i32 [ 1, %6717 ], [ %6764, %6752 ]
  %6754 = phi float [ %6751, %6717 ], [ %6763, %6752 ]
  %6755 = phi float [ %6749, %6717 ], [ %6761, %6752 ]
  %6756 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %6753
  %6757 = load float, float* %6756, align 4, !tbaa !121, !noalias !111
  %6758 = fsub fast float %6757, %6642
  %6759 = fcmp fast olt float %6758, 0.000000e+00
  %6760 = select i1 %6759, float 0.000000e+00, float 1.000000e+00
  %6761 = fadd fast float %6760, %6755
  %6762 = fmul fast float %6760, %6758
  %6763 = fadd fast float %6762, %6754
  %6764 = add nuw nsw i32 %6753, 1
  %6765 = icmp eq i32 %6764, 4
  br i1 %6765, label %6766, label %6752, !llvm.loop !123

; <label>:6766                                    ; preds = %6752
  %6767 = add nuw nsw i32 %6720, 1
  %6768 = icmp eq i32 %6767, 8
  br i1 %6768, label %6769, label %6717, !llvm.loop !124

; <label>:6769                                    ; preds = %6766
  %6770 = fdiv fast float 1.000000e+00, %6761
  %6771 = fmul fast float %6770, %6763
  %6772 = fdiv fast float 1.000000e+00, %6642
  %6773 = fmul fast float %6771, %6772
  %6774 = call float @dx.op.unary.f32(i32 7, float %6773)  ; Saturate(value)
  %6775 = call float @dx.op.binary.f32(i32 35, float %6774, float 0.000000e+00)  ; FMax(a,b)
  %6776 = fmul fast float %6761, 3.125000e-02
  %6777 = call float @dx.op.unary.f32(i32 7, float %6776)  ; Saturate(value)
  %6778 = fmul fast float %6777, 2.000000e+00
  %6779 = fadd fast float %6778, -1.000000e+00
  %6780 = fcmp fast ogt float %6779, 0.000000e+00
  %6781 = fcmp fast olt float %6779, 0.000000e+00
  %6782 = zext i1 %6780 to i32
  %6783 = zext i1 %6781 to i32
  %6784 = sub nsw i32 %6782, %6783
  %6785 = sitofp i32 %6784 to float
  %6786 = fmul fast float %6785, %6779
  %6787 = fsub fast float 1.000000e+00, %6786
  %6788 = fmul fast float %6787, %6787
  %6789 = fmul fast float %6788, %6787
  %6790 = fsub fast float %6787, %6789
  %6791 = fmul fast float %6790, %6775
  %6792 = fsub fast float 1.000000e+00, %6789
  %6793 = fsub fast float %6792, %6791
  %6794 = fmul fast float %6785, 5.000000e-01
  %6795 = fmul fast float %6794, %6793
  %6796 = fsub fast float 5.000000e-01, %6795
  br label %6950

; <label>:6797                                    ; preds = %6632
  br i1 %6643, label %6798, label %6865

; <label>:6798                                    ; preds = %6797
  %6799 = extractvalue %dx.types.CBufRet.f32 %6636, 1
  %6800 = extractvalue %dx.types.CBufRet.f32 %6636, 0
  %6801 = fmul fast float %6800, %5766
  %6802 = fmul fast float %6799, %5770
  %6803 = fadd fast float %6801, 5.000000e-01
  %6804 = call float @dx.op.unary.f32(i32 27, float %6803)  ; Round_ni(value)
  %6805 = fadd fast float %6802, 5.000000e-01
  %6806 = call float @dx.op.unary.f32(i32 27, float %6805)  ; Round_ni(value)
  %6807 = fsub fast float %6803, %6804
  %6808 = fsub fast float %6805, %6806
  %6809 = fadd fast float %6804, -5.000000e-01
  %6810 = fadd fast float %6806, -5.000000e-01
  %6811 = fmul fast float %6807, 2.000000e+00
  %6812 = fsub fast float 3.000000e+00, %6811
  %6813 = fadd fast float %6811, 1.000000e+00
  %6814 = fsub fast float 2.000000e+00, %6807
  %6815 = bitcast float %6812 to i32
  %6816 = sub nsw i32 2129859010, %6815
  %6817 = bitcast i32 %6816 to float
  %6818 = fmul fast float %6817, %6814
  %6819 = fadd fast float %6818, -1.000000e+00
  %6820 = bitcast float %6813 to i32
  %6821 = sub nsw i32 2129859010, %6820
  %6822 = bitcast i32 %6821 to float
  %6823 = fmul fast float %6822, %6807
  %6824 = fadd fast float %6823, 1.000000e+00
  %6825 = fmul fast float %6808, 2.000000e+00
  %6826 = fsub fast float 3.000000e+00, %6825
  %6827 = fadd fast float %6825, 1.000000e+00
  %6828 = fsub fast float 2.000000e+00, %6808
  %6829 = bitcast float %6826 to i32
  %6830 = sub nsw i32 2129859010, %6829
  %6831 = bitcast i32 %6830 to float
  %6832 = fmul fast float %6831, %6828
  %6833 = fadd fast float %6832, -1.000000e+00
  %6834 = bitcast float %6827 to i32
  %6835 = sub nsw i32 2129859010, %6834
  %6836 = bitcast i32 %6835 to float
  %6837 = fmul fast float %6836, %6808
  %6838 = fadd fast float %6837, 1.000000e+00
  %6839 = fadd fast float %6819, %6809
  %6840 = fmul fast float %6839, %6637
  %6841 = fadd fast float %6833, %6810
  %6842 = fmul fast float %6841, %6638
  %6843 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %6840, float %6842, float undef, float undef, i32 0, i32 0, i32 undef, float %6642)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6844 = extractvalue %dx.types.ResRet.f32 %6843, 0
  %6845 = fmul fast float %6844, %6812
  %6846 = fadd fast float %6824, %6809
  %6847 = fmul fast float %6846, %6637
  %6848 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %6847, float %6842, float undef, float undef, i32 0, i32 0, i32 undef, float %6642)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6849 = extractvalue %dx.types.ResRet.f32 %6848, 0
  %6850 = fmul fast float %6849, %6813
  %6851 = fadd fast float %6838, %6810
  %6852 = fmul fast float %6851, %6638
  %6853 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %6840, float %6852, float undef, float undef, i32 0, i32 0, i32 undef, float %6642)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6854 = extractvalue %dx.types.ResRet.f32 %6853, 0
  %6855 = fmul fast float %6854, %6812
  %6856 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %6847, float %6852, float undef, float undef, i32 0, i32 0, i32 undef, float %6642)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6857 = extractvalue %dx.types.ResRet.f32 %6856, 0
  %6858 = fmul fast float %6857, %6813
  %6859 = fadd fast float %6858, %6855
  %6860 = fmul fast float %6859, %6827
  %6861 = fadd fast float %6850, %6845
  %6862 = fmul fast float %6861, %6826
  %6863 = fadd fast float %6862, %6860
  %6864 = fmul fast float %6863, 6.250000e-02
  br label %6950

; <label>:6865                                    ; preds = %6797
  %6866 = fmul fast float %286, 0x401921FB60000000
  %6867 = call float @dx.op.unary.f32(i32 13, float %6866)  ; Sin(value)
  %6868 = call float @dx.op.unary.f32(i32 12, float %6866)  ; Cos(value)
  %6869 = fsub fast float -0.000000e+00, %6867
  br label %6870

; <label>:6870                                    ; preds = %6919, %6865
  %6871 = phi float [ 0.000000e+00, %6865 ], [ %6914, %6919 ]
  %6872 = phi float [ 0.000000e+00, %6865 ], [ %6916, %6919 ]
  %6873 = phi i32 [ 0, %6865 ], [ %6920, %6919 ]
  %6874 = mul i32 %6873, 2
  %6875 = add i32 0, %6874
  %6876 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6875
  %6877 = load float, float* %6876, align 4
  %6878 = mul i32 %6873, 2
  %6879 = add i32 1, %6878
  %6880 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6879
  %6881 = load float, float* %6880, align 4
  %6882 = fmul fast float %6877, %6868
  %6883 = call float @dx.op.tertiary.f32(i32 46, float %6881, float %6869, float %6882)  ; FMad(a,b,c)
  %6884 = fmul fast float %6877, %6867
  %6885 = call float @dx.op.tertiary.f32(i32 46, float %6881, float %6868, float %6884)  ; FMad(a,b,c)
  %6886 = fmul fast float %6883, %6640
  %6887 = fmul fast float %6885, %6640
  %6888 = fadd fast float %6886, %5766
  %6889 = fadd fast float %6887, %5770
  %6890 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %52, float %6888, float %6889, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6891 = extractvalue %dx.types.ResRet.f32 %6890, 0
  %6892 = extractvalue %dx.types.ResRet.f32 %6890, 1
  %6893 = extractvalue %dx.types.ResRet.f32 %6890, 2
  %6894 = extractvalue %dx.types.ResRet.f32 %6890, 3
  %6895 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 0
  store float %6891, float* %6895, align 4
  %6896 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 1
  store float %6892, float* %6896, align 4
  %6897 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 2
  store float %6893, float* %6897, align 4
  %6898 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 3
  store float %6894, float* %6898, align 4
  %6899 = fsub fast float %6891, %6642
  %6900 = fcmp fast olt float %6899, 0.000000e+00
  %6901 = select i1 %6900, float 0.000000e+00, float 1.000000e+00
  %6902 = fadd fast float %6901, %6871
  %6903 = fmul fast float %6901, %6899
  %6904 = fadd fast float %6903, %6872
  br label %6905

; <label>:6905                                    ; preds = %6905, %6870
  %6906 = phi i32 [ 1, %6870 ], [ %6917, %6905 ]
  %6907 = phi float [ %6904, %6870 ], [ %6916, %6905 ]
  %6908 = phi float [ %6902, %6870 ], [ %6914, %6905 ]
  %6909 = getelementptr [4 x float], [4 x float]* %110, i32 0, i32 %6906
  %6910 = load float, float* %6909, align 4, !tbaa !121, !noalias !111
  %6911 = fsub fast float %6910, %6642
  %6912 = fcmp fast olt float %6911, 0.000000e+00
  %6913 = select i1 %6912, float 0.000000e+00, float 1.000000e+00
  %6914 = fadd fast float %6913, %6908
  %6915 = fmul fast float %6913, %6911
  %6916 = fadd fast float %6915, %6907
  %6917 = add nuw nsw i32 %6906, 1
  %6918 = icmp eq i32 %6917, 4
  br i1 %6918, label %6919, label %6905, !llvm.loop !123

; <label>:6919                                    ; preds = %6905
  %6920 = add nuw nsw i32 %6873, 1
  %6921 = icmp eq i32 %6920, 8
  br i1 %6921, label %6922, label %6870, !llvm.loop !124

; <label>:6922                                    ; preds = %6919
  %6923 = fdiv fast float 1.000000e+00, %6914
  %6924 = fmul fast float %6923, %6916
  %6925 = fdiv fast float 1.000000e+00, %6642
  %6926 = fmul fast float %6924, %6925
  %6927 = call float @dx.op.unary.f32(i32 7, float %6926)  ; Saturate(value)
  %6928 = call float @dx.op.binary.f32(i32 35, float %6927, float 0.000000e+00)  ; FMax(a,b)
  %6929 = fmul fast float %6914, 3.125000e-02
  %6930 = call float @dx.op.unary.f32(i32 7, float %6929)  ; Saturate(value)
  %6931 = fmul fast float %6930, 2.000000e+00
  %6932 = fadd fast float %6931, -1.000000e+00
  %6933 = fcmp fast ogt float %6932, 0.000000e+00
  %6934 = fcmp fast olt float %6932, 0.000000e+00
  %6935 = zext i1 %6933 to i32
  %6936 = zext i1 %6934 to i32
  %6937 = sub nsw i32 %6935, %6936
  %6938 = sitofp i32 %6937 to float
  %6939 = fmul fast float %6938, %6932
  %6940 = fsub fast float 1.000000e+00, %6939
  %6941 = fmul fast float %6940, %6940
  %6942 = fmul fast float %6941, %6940
  %6943 = fsub fast float %6940, %6942
  %6944 = fmul fast float %6943, %6928
  %6945 = fsub fast float 1.000000e+00, %6942
  %6946 = fsub fast float %6945, %6944
  %6947 = fmul fast float %6938, 5.000000e-01
  %6948 = fmul fast float %6947, %6946
  %6949 = fsub fast float 5.000000e-01, %6948
  br label %6950

; <label>:6950                                    ; preds = %6922, %6798, %6769, %6645, %6629
  %6951 = phi float [ 1.000000e+00, %6629 ], [ %6711, %6645 ], [ %6796, %6769 ], [ %6864, %6798 ], [ %6949, %6922 ]
  %6952 = fsub fast float %6463, %6296
  %6953 = fmul fast float %6952, %5863
  %6954 = fadd fast float %6953, %6296
  %6955 = fsub fast float %6630, %6954
  %6956 = fmul fast float %6955, %5862
  %6957 = fadd fast float %6956, %6954
  %6958 = fsub fast float %6951, %6957
  %6959 = fmul fast float %6958, %5890
  %6960 = fadd fast float %6959, %6957
  %6961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6962 = extractvalue %dx.types.CBufRet.f32 %6961, 2
  %6963 = fcmp fast ogt float %6962, 0.000000e+00
  br i1 %6963, label %6964, label %7004, !dx.controlflow.hints !128

; <label>:6964                                    ; preds = %6950
  %6965 = fcmp fast ugt float %6962, 0.000000e+00
  br i1 %6965, label %6966, label %7001

; <label>:6966                                    ; preds = %6964
  %6967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6968 = extractvalue %dx.types.CBufRet.f32 %6967, 0
  %6969 = extractvalue %dx.types.CBufRet.f32 %6967, 1
  %6970 = extractvalue %dx.types.CBufRet.f32 %6967, 2
  %6971 = extractvalue %dx.types.CBufRet.f32 %6967, 3
  %6972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.f32 %6972, 0
  %6974 = extractvalue %dx.types.CBufRet.f32 %6972, 1
  %6975 = extractvalue %dx.types.CBufRet.f32 %6972, 2
  %6976 = extractvalue %dx.types.CBufRet.f32 %6972, 3
  %6977 = extractvalue %dx.types.CBufRet.f32 %6961, 0
  %6978 = extractvalue %dx.types.CBufRet.f32 %6961, 1
  %6979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6980 = extractvalue %dx.types.CBufRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.CBufRet.f32 %6979, 1
  %6982 = extractvalue %dx.types.CBufRet.f32 %6979, 2
  %6983 = fadd fast float %6980, %5743
  %6984 = fadd fast float %6981, %5744
  %6985 = fadd fast float %6982, %5745
  %6986 = fmul fast float %6983, %6968
  %6987 = call float @dx.op.tertiary.f32(i32 46, float %6969, float %6984, float %6986)  ; FMad(a,b,c)
  %6988 = call float @dx.op.tertiary.f32(i32 46, float %6970, float %6985, float %6987)  ; FMad(a,b,c)
  %6989 = fadd fast float %6988, %6971
  %6990 = fmul fast float %6983, %6973
  %6991 = call float @dx.op.tertiary.f32(i32 46, float %6974, float %6984, float %6990)  ; FMad(a,b,c)
  %6992 = call float @dx.op.tertiary.f32(i32 46, float %6975, float %6985, float %6991)  ; FMad(a,b,c)
  %6993 = fadd fast float %6992, %6976
  %6994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %48, float %6989, float %6993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6995 = extractvalue %dx.types.ResRet.f32 %6994, 0
  %6996 = fmul fast float %6995, %6978
  %6997 = fadd fast float %6996, %6977
  %6998 = call float @dx.op.unary.f32(i32 7, float %6997)  ; Saturate(value)
  %6999 = fmul fast float %6998, %6962
  %7000 = fsub fast float 1.000000e+00, %6999
  br label %7001

; <label>:7001                                    ; preds = %6966, %6964
  %7002 = phi float [ %7000, %6966 ], [ 1.000000e+00, %6964 ]
  %7003 = fmul fast float %7002, %6960
  br label %7004

; <label>:7004                                    ; preds = %7001, %6950, %5723
  %7005 = phi float [ 1.000000e+00, %5723 ], [ %7003, %7001 ], [ %6960, %6950 ]
  %7006 = call float @dx.op.binary.f32(i32 36, float %7005, float %7005)  ; FMin(a,b)
  %7007 = call float @dx.op.binary.f32(i32 36, float %7005, float %7006)  ; FMin(a,b)
  %7008 = fcmp fast ogt float %7007, 0.000000e+00
  br i1 %7008, label %7009, label %7174, !dx.controlflow.hints !129

; <label>:7009                                    ; preds = %7004
  %7010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7011 = extractvalue %dx.types.CBufRet.f32 %7010, 0
  %7012 = extractvalue %dx.types.CBufRet.f32 %7010, 1
  %7013 = extractvalue %dx.types.CBufRet.f32 %7010, 2
  %7014 = extractvalue %dx.types.CBufRet.f32 %7010, 3
  %7015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7016 = extractvalue %dx.types.CBufRet.f32 %7015, 0
  %7017 = extractvalue %dx.types.CBufRet.f32 %7015, 1
  %7018 = extractvalue %dx.types.CBufRet.f32 %7015, 2
  %7019 = extractvalue %dx.types.CBufRet.f32 %7015, 3
  %7020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7021 = extractvalue %dx.types.CBufRet.f32 %7020, 0
  %7022 = extractvalue %dx.types.CBufRet.f32 %7020, 1
  %7023 = extractvalue %dx.types.CBufRet.f32 %7020, 2
  %7024 = extractvalue %dx.types.CBufRet.f32 %7020, 3
  %7025 = fmul fast float %7011, %5743
  %7026 = call float @dx.op.tertiary.f32(i32 46, float %5744, float %7012, float %7025)  ; FMad(a,b,c)
  %7027 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %7013, float %7026)  ; FMad(a,b,c)
  %7028 = fadd fast float %7027, %7014
  %7029 = fmul fast float %7016, %5743
  %7030 = call float @dx.op.tertiary.f32(i32 46, float %5744, float %7017, float %7029)  ; FMad(a,b,c)
  %7031 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %7018, float %7030)  ; FMad(a,b,c)
  %7032 = fadd fast float %7031, %7019
  %7033 = fmul fast float %7021, %5743
  %7034 = call float @dx.op.tertiary.f32(i32 46, float %5744, float %7022, float %7033)  ; FMad(a,b,c)
  %7035 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %7023, float %7034)  ; FMad(a,b,c)
  %7036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7037 = extractvalue %dx.types.CBufRet.f32 %7036, 0
  %7038 = extractvalue %dx.types.CBufRet.f32 %7036, 1
  %7039 = extractvalue %dx.types.CBufRet.f32 %7036, 3
  %7040 = fmul fast float %7039, %7028
  %7041 = fmul fast float %7039, %7032
  %7042 = fadd fast float %7040, %7037
  %7043 = fadd fast float %7041, %7038
  %7044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7044, 0
  %7046 = extractvalue %dx.types.CBufRet.f32 %7044, 1
  %7047 = fsub fast float %7042, %7045
  %7048 = fsub fast float %7043, %7046
  %7049 = fcmp fast olt float %7047, 0.000000e+00
  %7050 = fcmp fast olt float %7048, 0.000000e+00
  %7051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.f32 %7051, 0
  %7053 = extractvalue %dx.types.CBufRet.f32 %7051, 1
  %7054 = extractvalue %dx.types.CBufRet.f32 %7051, 2
  %7055 = extractvalue %dx.types.CBufRet.f32 %7051, 3
  %7056 = select i1 %7049, float %7052, float %7054
  %7057 = select i1 %7050, float %7053, float %7055
  %7058 = fmul fast float %7056, %7047
  %7059 = fmul fast float %7057, %7048
  %7060 = call float @dx.op.unary.f32(i32 6, float %7058)  ; FAbs(value)
  %7061 = call float @dx.op.unary.f32(i32 6, float %7059)  ; FAbs(value)
  %7062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7063 = extractvalue %dx.types.CBufRet.f32 %7062, 0
  %7064 = call float @dx.op.binary.f32(i32 35, float %7060, float %7061)  ; FMax(a,b)
  %7065 = fsub fast float %7063, %7064
  %7066 = call float @dx.op.unary.f32(i32 7, float %7065)  ; Saturate(value)
  %7067 = fcmp fast ogt float %7066, 0.000000e+00
  br i1 %7067, label %7068, label %7109, !dx.controlflow.hints !130

; <label>:7068                                    ; preds = %7009
  %7069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %51, float %7042, float %7043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7070 = extractvalue %dx.types.ResRet.f32 %7069, 1
  %7071 = fcmp fast ogt float %7070, 0.000000e+00
  br i1 %7071, label %7072, label %7104

; <label>:7072                                    ; preds = %7068
  %7073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %51, float %7042, float %7043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7074 = extractvalue %dx.types.ResRet.f32 %7073, 0
  %7075 = extractvalue %dx.types.ResRet.f32 %7073, 1
  %7076 = extractvalue %dx.types.ResRet.f32 %7073, 2
  %7077 = extractvalue %dx.types.ResRet.f32 %7073, 3
  %7078 = fsub fast float 1.000000e+00, %7024
  %7079 = fsub fast float %7078, %7035
  %7080 = fmul fast float %7079, 0x400921FB60000000
  %7081 = fadd fast float %7080, 0x3FF921FB60000000
  %7082 = call float @dx.op.unary.f32(i32 13, float %7081)  ; Sin(value)
  %7083 = fadd fast float %7082, -1.000000e+00
  %7084 = fmul fast float %7083, 0x3FD45F3060000000
  %7085 = fmul fast float %7079, 0x401921FB60000000
  %7086 = fadd fast float %7085, 0x400921FB60000000
  %7087 = call float @dx.op.unary.f32(i32 13, float %7086)  ; Sin(value)
  %7088 = fadd fast float %7087, 0x3E7777A5C0000000
  %7089 = fmul fast float %7088, 0x3FC45F3060000000
  %7090 = fmul fast float %7079, 0x4022D97C80000000
  %7091 = fadd fast float %7090, 0x4012D97C80000000
  %7092 = call float @dx.op.unary.f32(i32 13, float %7091)  ; Sin(value)
  %7093 = fadd fast float %7092, 1.000000e+00
  %7094 = fmul fast float %7093, 0x3FBB2995E0000000
  %7095 = fmul fast float %7079, 0x402921FB60000000
  %7096 = fadd fast float %7095, 0x401921FB60000000
  %7097 = call float @dx.op.unary.f32(i32 13, float %7096)  ; Sin(value)
  %7098 = fadd fast float %7097, 0xBE8777A5C0000000
  %7099 = fmul fast float %7098, 0x3FB45F3060000000
  %7100 = call float @dx.op.dot4.f32(i32 56, float %7074, float %7075, float %7076, float %7077, float %7084, float %7089, float %7094, float %7099)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7101 = fmul fast float %7100, 0xBFF7154760000000
  %7102 = call float @dx.op.unary.f32(i32 21, float %7101)  ; Exp(value)
  %7103 = call float @dx.op.unary.f32(i32 7, float %7102)  ; Saturate(value)
  br label %7104

; <label>:7104                                    ; preds = %7072, %7068
  %7105 = phi float [ %7103, %7072 ], [ 1.000000e+00, %7068 ]
  %7106 = fadd fast float %7105, -1.000000e+00
  %7107 = fmul fast float %7106, %7066
  %7108 = fadd fast float %7107, 1.000000e+00
  br label %7109

; <label>:7109                                    ; preds = %7104, %7009
  %7110 = phi float [ %7108, %7104 ], [ 1.000000e+00, %7009 ]
  %7111 = fmul fast float %7110, %7005
  %7112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7113 = extractvalue %dx.types.CBufRet.f32 %7112, 0
  %7114 = extractvalue %dx.types.CBufRet.f32 %7112, 1
  %7115 = extractvalue %dx.types.CBufRet.f32 %7112, 2
  %7116 = fadd fast float %7113, %203
  %7117 = fadd fast float %7114, %204
  %7118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.f32 %7118, 1
  %7120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7121 = extractvalue %dx.types.CBufRet.f32 %7120, 0
  %7122 = extractvalue %dx.types.CBufRet.f32 %7120, 1
  %7123 = extractvalue %dx.types.CBufRet.f32 %7120, 2
  %7124 = fsub fast float -0.000000e+00, %7116
  %7125 = fsub fast float -0.000000e+00, %7117
  %7126 = fsub fast float %4781, %7115
  %7127 = fadd fast float %7126, %7119
  %7128 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7124, float %7125, float %7127)  ; Dot3(ax,ay,az,bx,by,bz)
  %7129 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7121, float %7122, float %7123)  ; Dot3(ax,ay,az,bx,by,bz)
  %7130 = fdiv fast float 1.000000e+00, %7129
  %7131 = fmul fast float %7130, %7128
  %7132 = fmul fast float %7121, %7131
  %7133 = fmul fast float %7122, %7131
  %7134 = fadd fast float %7132, %7116
  %7135 = fadd fast float %7133, %7117
  %7136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7137 = extractvalue %dx.types.CBufRet.f32 %7136, 0
  %7138 = extractvalue %dx.types.CBufRet.f32 %7136, 1
  %7139 = fsub fast float %7134, %7137
  %7140 = fsub fast float %7135, %7138
  %7141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7141, 2
  %7143 = extractvalue %dx.types.CBufRet.f32 %7141, 3
  %7144 = fmul fast float %7139, %7142
  %7145 = fmul fast float %7140, %7143
  %7146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.i32 %7146, 3
  %7148 = icmp eq i32 %7147, 0
  br i1 %7148, label %7154, label %7149

; <label>:7149                                    ; preds = %7109
  %7150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %7144, float %7145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7151 = extractvalue %dx.types.ResRet.f32 %7150, 0
  %7152 = extractvalue %dx.types.ResRet.f32 %7150, 1
  %7153 = extractvalue %dx.types.ResRet.f32 %7150, 2
  br label %7159

; <label>:7154                                    ; preds = %7109
  %7155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %51, float %7144, float %7145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7156 = extractvalue %dx.types.ResRet.f32 %7155, 0
  %7157 = extractvalue %dx.types.ResRet.f32 %7155, 1
  %7158 = extractvalue %dx.types.ResRet.f32 %7155, 2
  br label %7159

; <label>:7159                                    ; preds = %7154, %7149
  %7160 = phi float [ %7151, %7149 ], [ %7156, %7154 ]
  %7161 = phi float [ %7152, %7149 ], [ %7157, %7154 ]
  %7162 = phi float [ %7153, %7149 ], [ %7158, %7154 ]
  %7163 = extractvalue %dx.types.CBufRet.f32 %7118, 2
  %7164 = fmul fast float %7163, %7160
  %7165 = extractvalue %dx.types.CBufRet.f32 %7118, 0
  %7166 = fsub fast float %7131, %7165
  %7167 = fsub fast float %7166, %7164
  %7168 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7167)  ; FMax(a,b)
  %7169 = fmul fast float %7168, %7161
  %7170 = call float @dx.op.binary.f32(i32 36, float %7162, float %7169)  ; FMin(a,b)
  %7171 = fmul fast float %7170, 0xBFF7154760000000
  %7172 = call float @dx.op.unary.f32(i32 21, float %7171)  ; Exp(value)
  %7173 = fmul fast float %7111, %7172
  br label %7174

; <label>:7174                                    ; preds = %7159, %7004
  %7175 = phi float [ %7173, %7159 ], [ %7005, %7004 ]
  %7176 = call float @dx.op.binary.f32(i32 36, float %7175, float %7175)  ; FMin(a,b)
  %7177 = call float @dx.op.binary.f32(i32 36, float %7175, float %7176)  ; FMin(a,b)
  %7178 = fcmp fast ogt float %7177, 0.000000e+00
  br i1 %7178, label %7179, label %7358, !dx.controlflow.hints !131

; <label>:7179                                    ; preds = %7174
  %7180 = fmul fast float %7175, %5735
  %7181 = fmul fast float %7175, %5736
  %7182 = fmul fast float %7175, %5737
  %7183 = fsub fast float %205, %3958
  %7184 = fcmp fast ogt float %7183, 0.000000e+00
  %7185 = fmul fast float %5724, 5.120000e+02
  %7186 = fmul fast float %5725, 5.120000e+02
  %7187 = fmul fast float %5726, 5.120000e+02
  %7188 = fadd fast float %7187, %205
  %7189 = fsub fast float %3958, %7188
  %7190 = fmul fast float %7189, 2.000000e+00
  %7191 = fadd fast float %7190, %7188
  %7192 = select i1 %7184, float %7191, float %7188
  %7193 = fsub fast float %7192, %205
  %7194 = call float @dx.op.dot3.f32(i32 55, float %7185, float %7186, float %7193, float %7185, float %7186, float %7193)  ; Dot3(ax,ay,az,bx,by,bz)
  %7195 = call float @dx.op.unary.f32(i32 25, float %7194)  ; Rsqrt(value)
  %7196 = fmul fast float %7195, %7185
  %7197 = fmul fast float %7195, %7186
  %7198 = fmul fast float %7195, %7193
  %7199 = fsub fast float %3958, %205
  %7200 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7199)  ; Dot3(ax,ay,az,bx,by,bz)
  %7201 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7196, float %7197, float %7198)  ; Dot3(ax,ay,az,bx,by,bz)
  %7202 = fdiv fast float 1.000000e+00, %7201
  %7203 = fmul fast float %7202, %7200
  %7204 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7183, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7205 = fcmp fast ogt float %7204, 0.000000e+00
  %7206 = fcmp fast olt float %7204, 0.000000e+00
  %7207 = zext i1 %7205 to i32
  %7208 = zext i1 %7206 to i32
  %7209 = sub nsw i32 %7207, %7208
  %7210 = sitofp i32 %7209 to float
  %7211 = fsub fast float %7192, %3958
  %7212 = call float @dx.op.dot3.f32(i32 55, float %7185, float %7186, float %7211, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7213 = fcmp fast ogt float %7212, 0.000000e+00
  %7214 = fcmp fast olt float %7212, 0.000000e+00
  %7215 = zext i1 %7213 to i32
  %7216 = zext i1 %7214 to i32
  %7217 = sub nsw i32 %7215, %7216
  %7218 = sitofp i32 %7217 to float
  %7219 = fcmp fast une float %7210, %7218
  br i1 %7219, label %7220, label %7230

; <label>:7220                                    ; preds = %7179
  %7221 = fmul fast float %7203, %7198
  %7222 = fmul fast float %7203, %7197
  %7223 = fmul fast float %7203, %7196
  %7224 = fmul fast float %7223, %7223
  %7225 = fmul fast float %7222, %7222
  %7226 = fadd fast float %7224, %7225
  %7227 = fmul fast float %7221, %7221
  %7228 = fadd fast float %7226, %7227
  %7229 = call float @dx.op.unary.f32(i32 24, float %7228)  ; Sqrt(value)
  br label %7240

; <label>:7230                                    ; preds = %7179
  %7231 = icmp slt i32 %7209, 0
  br i1 %7231, label %7232, label %7240

; <label>:7232                                    ; preds = %7230
  %7233 = fsub fast float %205, %7192
  %7234 = fmul fast float %7185, %7185
  %7235 = fmul fast float %7186, %7186
  %7236 = fadd fast float %7234, %7235
  %7237 = fmul fast float %7233, %7233
  %7238 = fadd fast float %7236, %7237
  %7239 = call float @dx.op.unary.f32(i32 24, float %7238)  ; Sqrt(value)
  br label %7240

; <label>:7240                                    ; preds = %7232, %7230, %7220
  %7241 = phi float [ %7229, %7220 ], [ %7239, %7232 ], [ 0.000000e+00, %7230 ]
  %7242 = fsub fast float -0.000000e+00, %7241
  %7243 = select i1 %7184, float -0.000000e+00, float %7242
  %7244 = fmul fast float %3959, 0x3FF7154760000000
  %7245 = fmul fast float %7244, %7243
  %7246 = fmul fast float %3960, 0x3FF7154760000000
  %7247 = fmul fast float %7246, %7243
  %7248 = fmul fast float %3961, 0x3FF7154760000000
  %7249 = fmul fast float %7248, %7243
  %7250 = call float @dx.op.unary.f32(i32 21, float %7245)  ; Exp(value)
  %7251 = call float @dx.op.unary.f32(i32 21, float %7247)  ; Exp(value)
  %7252 = call float @dx.op.unary.f32(i32 21, float %7249)  ; Exp(value)
  %7253 = call float @dx.op.unary.f32(i32 7, float %7250)  ; Saturate(value)
  %7254 = call float @dx.op.unary.f32(i32 7, float %7251)  ; Saturate(value)
  %7255 = call float @dx.op.unary.f32(i32 7, float %7252)  ; Saturate(value)
  %7256 = fmul fast float %7180, %7253
  %7257 = fmul fast float %7181, %7254
  %7258 = fmul fast float %7182, %7255
  %7259 = fsub fast float %5724, %4784
  %7260 = fsub fast float %5725, %4785
  %7261 = fsub fast float %5726, %4786
  %7262 = call float @dx.op.dot3.f32(i32 55, float %7259, float %7260, float %7261, float %7259, float %7260, float %7261)  ; Dot3(ax,ay,az,bx,by,bz)
  %7263 = call float @dx.op.unary.f32(i32 25, float %7262)  ; Rsqrt(value)
  %7264 = fmul fast float %7263, %7259
  %7265 = fmul fast float %7263, %7260
  %7266 = fmul fast float %7263, %7261
  %7267 = call float @dx.op.dot3.f32(i32 55, float %5724, float %5725, float %5726, float %4741, float %4742, float %4743)  ; Dot3(ax,ay,az,bx,by,bz)
  %7268 = call float @dx.op.dot3.f32(i32 55, float %4787, float %4788, float %4789, float %7264, float %7265, float %7266)  ; Dot3(ax,ay,az,bx,by,bz)
  %7269 = call float @dx.op.unary.f32(i32 7, float %7267)  ; Saturate(value)
  %7270 = bitcast i32 %4816 to float
  %7271 = fmul fast float %7269, %7269
  %7272 = fmul fast float %7271, %7270
  %7273 = call float @dx.op.unary.f32(i32 7, float %7272)  ; Saturate(value)
  %7274 = fmul fast float %7273, %7269
  %7275 = call float @dx.op.dot3.f32(i32 55, float %4741, float %4742, float %4743, float %7264, float %7265, float %7266)  ; Dot3(ax,ay,az,bx,by,bz)
  %7276 = fmul fast float %7275, %7275
  %7277 = call float @dx.op.unary.f32(i32 6, float %7267)  ; FAbs(value)
  %7278 = fsub fast float 1.000000e+00, %4810
  %7279 = fmul fast float %4792, %4792
  %7280 = fmul fast float %7279, %7278
  %7281 = fadd fast float %7280, %4810
  %7282 = bitcast float %7281 to i32
  %7283 = ashr i32 %7282, 1
  %7284 = add nsw i32 %7283, 532487669
  %7285 = bitcast i32 %7284 to float
  %7286 = fadd fast float %7285, %4792
  %7287 = fmul fast float %4810, %7276
  %7288 = fsub fast float 1.000000e+00, %7276
  %7289 = fadd fast float %7288, %7287
  %7290 = fmul fast float %7277, %7277
  %7291 = fmul fast float %7290, %7278
  %7292 = fadd fast float %7291, %4810
  %7293 = bitcast float %7292 to i32
  %7294 = ashr i32 %7293, 1
  %7295 = add nsw i32 %7294, 532487669
  %7296 = bitcast i32 %7295 to float
  %7297 = fadd fast float %7296, %7277
  %7298 = fmul fast float %7289, %7289
  %7299 = fmul fast float %7298, %7286
  %7300 = fmul fast float %7299, %7297
  %7301 = fdiv fast float 0x3FF0A00000000000, %7300
  %7302 = fmul fast float %7301, %4810
  %7303 = call float @dx.op.unary.f32(i32 6, float %7268)  ; FAbs(value)
  %7304 = fsub fast float 1.000000e+00, %7303
  %7305 = bitcast float %7304 to i32
  %7306 = sitofp i32 %7305 to float
  %7307 = fmul fast float %7306, 5.000000e+00
  %7308 = fadd fast float %7307, 0xC1EFBF8940000000
  %7309 = fptosi float %7308 to i32
  %7310 = bitcast i32 %7309 to float
  %7311 = fsub fast float 1.000000e+00, %4738
  %7312 = fsub fast float 1.000000e+00, %4739
  %7313 = fsub fast float 1.000000e+00, %4790
  %7314 = fmul fast float %7310, %7311
  %7315 = fmul fast float %7310, %7312
  %7316 = fmul fast float %7310, %7313
  %7317 = fadd fast float %7314, %4738
  %7318 = fadd fast float %7315, %4739
  %7319 = fadd fast float %7316, %4790
  %7320 = fmul fast float %7267, 9.843750e-01
  %7321 = fadd fast float %7320, 7.812500e-03
  %7322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %7321, float %5107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7323 = extractvalue %dx.types.ResRet.f32 %7322, 2
  %7324 = extractvalue %dx.types.ResRet.f32 %7322, 3
  %7325 = fmul fast float %7323, %4738
  %7326 = fmul fast float %7323, %4739
  %7327 = fmul fast float %7323, %4790
  %7328 = fadd fast float %7325, %7324
  %7329 = fadd fast float %7326, %7324
  %7330 = fadd fast float %7327, %7324
  %7331 = call float @dx.op.binary.f32(i32 35, float %7329, float %7330)  ; FMax(a,b)
  %7332 = call float @dx.op.binary.f32(i32 35, float %7328, float %7331)  ; FMax(a,b)
  %7333 = fsub fast float 1.000000e+00, %7332
  %7334 = fmul fast float %7274, %7256
  %7335 = fmul fast float %7334, %7333
  %7336 = fmul fast float %7274, %7257
  %7337 = fmul fast float %7336, %7333
  %7338 = fmul fast float %7274, %7258
  %7339 = fmul fast float %7338, %7333
  %7340 = fmul fast float %7334, %7302
  %7341 = fmul fast float %7340, %7317
  %7342 = fmul fast float %7336, %7302
  %7343 = fmul fast float %7342, %7318
  %7344 = fmul fast float %7338, %7302
  %7345 = fmul fast float %7344, %7319
  %7346 = fadd fast float %7335, %5658
  %7347 = fmul fast float %7346, %1266
  %7348 = fadd fast float %7337, %5660
  %7349 = fmul fast float %7348, %1266
  %7350 = fadd fast float %7339, %5662
  %7351 = fmul fast float %7350, %1266
  %7352 = fadd fast float %7341, %5712
  %7353 = fmul fast float %7352, %1266
  %7354 = fadd fast float %7343, %5715
  %7355 = fmul fast float %7354, %1266
  %7356 = fadd fast float %7345, %5718
  %7357 = fmul fast float %7356, %1266
  br label %7358

; <label>:7358                                    ; preds = %7240, %7174, %5608
  %7359 = phi float [ %5713, %5608 ], [ %5713, %7174 ], [ %7353, %7240 ]
  %7360 = phi float [ %5716, %5608 ], [ %5716, %7174 ], [ %7355, %7240 ]
  %7361 = phi float [ %5719, %5608 ], [ %5719, %7174 ], [ %7357, %7240 ]
  %7362 = phi float [ %5708, %5608 ], [ %5708, %7174 ], [ %7347, %7240 ]
  %7363 = phi float [ %5709, %5608 ], [ %5709, %7174 ], [ %7349, %7240 ]
  %7364 = phi float [ %5710, %5608 ], [ %5710, %7174 ], [ %7351, %7240 ]
  %7365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.i32 %7365, 0
  %7367 = icmp eq i32 %7366, 0
  br i1 %7367, label %7962, label %7368

; <label>:7368                                    ; preds = %7358
  %7369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7370 = extractvalue %dx.types.CBufRet.f32 %7369, 2
  %7371 = extractvalue %dx.types.CBufRet.f32 %7369, 3
  %7372 = fmul fast float %7370, %120
  %7373 = fmul fast float %7371, %121
  %7374 = fptoui float %7372 to i32
  %7375 = fptoui float %7373 to i32
  %7376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7377 = extractvalue %dx.types.CBufRet.f32 %7376, 0
  %7378 = extractvalue %dx.types.CBufRet.f32 %7376, 2
  %7379 = extractvalue %dx.types.CBufRet.f32 %7376, 3
  %7380 = fadd fast float %107, -4.000000e+00
  %7381 = call float @dx.op.binary.f32(i32 35, float %7380, float 0.000000e+00)  ; FMax(a,b)
  %7382 = fadd fast float %7381, %7377
  %7383 = fmul fast float %7382, %7378
  %7384 = call float @dx.op.unary.f32(i32 23, float %7383)  ; Log(value)
  %7385 = fmul fast float %7384, %7379
  %7386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7387 = extractvalue %dx.types.CBufRet.f32 %7386, 2
  %7388 = fmul fast float %7385, %7387
  %7389 = call float @dx.op.unary.f32(i32 7, float %7388)  ; Saturate(value)
  %7390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7391 = extractvalue %dx.types.CBufRet.i32 %7390, 1
  %7392 = add i32 %7391, -1
  %7393 = uitofp i32 %7391 to float
  %7394 = fmul fast float %7393, %7389
  %7395 = fptoui float %7394 to i32
  %7396 = call i32 @dx.op.binary.i32(i32 40, i32 %7395, i32 %7392)  ; UMin(a,b)
  %7397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7398 = extractvalue %dx.types.CBufRet.i32 %7397, 2
  %7399 = extractvalue %dx.types.CBufRet.i32 %7397, 3
  %7400 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7375, i32 %7398, i32 %7374)  ; UMad(a,b,c)
  %7401 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7396, i32 %7399, i32 %7400)  ; UMad(a,b,c)
  %7402 = add nsw i32 %7366, -1
  %7403 = call i32 @dx.op.binary.i32(i32 37, i32 %7402, i32 0)  ; IMax(a,b)
  %7404 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %7405 = fptoui float %7404 to i32
  %7406 = lshr i32 %7405, 5
  %7407 = call i32 @dx.op.binary.i32(i32 40, i32 %7406, i32 8191)  ; UMin(a,b)
  %7408 = shl i32 %7407, 2
  %7409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7408, i32 undef)  ; BufferLoad(srv,index,wot)
  %7410 = extractvalue %dx.types.ResRet.i32 %7409, 0
  %7411 = lshr i32 %7410, 16
  %7412 = and i32 %7410, 65535
  %7413 = lshr i32 %7410, 21
  %7414 = lshr i32 %7412, 5
  %7415 = call i32 @dx.op.binary.i32(i32 40, i32 %7414, i32 %7403)  ; UMin(a,b)
  %7416 = icmp ugt i32 %7413, %7415
  br i1 %7416, label %7962, label %7417

; <label>:7417                                    ; preds = %7368
  br label %7418

; <label>:7418                                    ; preds = %7952, %7417
  %7419 = phi i32 [ %7959, %7952 ], [ %7413, %7417 ]
  %7420 = phi float [ %7953, %7952 ], [ %7359, %7417 ]
  %7421 = phi float [ %7954, %7952 ], [ %7360, %7417 ]
  %7422 = phi float [ %7955, %7952 ], [ %7361, %7417 ]
  %7423 = phi float [ %7956, %7952 ], [ %7362, %7417 ]
  %7424 = phi float [ %7957, %7952 ], [ %7363, %7417 ]
  %7425 = phi float [ %7958, %7952 ], [ %7364, %7417 ]
  %7426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7427 = extractvalue %dx.types.CBufRet.i32 %7426, 0
  %7428 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7401, i32 %7427, i32 %7419)  ; UMad(a,b,c)
  %7429 = shl i32 %7428, 2
  %7430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7429, i32 undef)  ; BufferLoad(srv,index,wot)
  %7431 = extractvalue %dx.types.ResRet.i32 %7430, 0
  %7432 = shl i32 %7419, 5
  %7433 = sub nsw i32 %7411, %7432
  %7434 = call i32 @dx.op.binary.i32(i32 37, i32 %7433, i32 0)  ; IMax(a,b)
  %7435 = call i32 @dx.op.binary.i32(i32 38, i32 %7434, i32 31)  ; IMin(a,b)
  %7436 = sub nsw i32 1, %7411
  %7437 = add nsw i32 %7436, %7412
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
  br i1 %7448, label %7952, label %7449

; <label>:7449                                    ; preds = %7418
  br label %7450

; <label>:7450                                    ; preds = %7584, %7449
  %7451 = phi i32 [ %7462, %7584 ], [ %7447, %7449 ]
  %7452 = phi float [ %7585, %7584 ], [ %7420, %7449 ]
  %7453 = phi float [ %7586, %7584 ], [ %7421, %7449 ]
  %7454 = phi float [ %7587, %7584 ], [ %7422, %7449 ]
  %7455 = phi float [ %7588, %7584 ], [ %7423, %7449 ]
  %7456 = phi float [ %7589, %7584 ], [ %7424, %7449 ]
  %7457 = phi float [ %7590, %7584 ], [ %7425, %7449 ]
  %7458 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7451)  ; FirstbitLo(value)
  %7459 = add i32 %7458, %7432
  %7460 = and i32 %7458, 31
  %7461 = shl i32 1, %7460
  %7462 = xor i32 %7461, %7451
  %7463 = mul i32 %7459, 112
  %7464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7463, i32 undef)  ; BufferLoad(srv,index,wot)
  %7465 = extractvalue %dx.types.ResRet.f32 %7464, 0
  %7466 = extractvalue %dx.types.ResRet.f32 %7464, 1
  %7467 = extractvalue %dx.types.ResRet.f32 %7464, 2
  %7468 = or i32 %7463, 12
  %7469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7468, i32 undef)  ; BufferLoad(srv,index,wot)
  %7470 = extractvalue %dx.types.ResRet.f32 %7469, 0
  %7471 = add i32 %7463, 16
  %7472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7471, i32 undef)  ; BufferLoad(srv,index,wot)
  %7473 = extractvalue %dx.types.ResRet.f32 %7472, 0
  %7474 = extractvalue %dx.types.ResRet.f32 %7472, 1
  %7475 = extractvalue %dx.types.ResRet.f32 %7472, 2
  %7476 = add i32 %7463, 28
  %7477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7476, i32 undef)  ; BufferLoad(srv,index,wot)
  %7478 = extractvalue %dx.types.ResRet.i32 %7477, 0
  %7479 = add i32 %7463, 44
  %7480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7479, i32 undef)  ; BufferLoad(srv,index,wot)
  %7481 = extractvalue %dx.types.ResRet.f32 %7480, 0
  %7482 = add i32 %7463, 48
  %7483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7482, i32 undef)  ; BufferLoad(srv,index,wot)
  %7484 = extractvalue %dx.types.ResRet.f32 %7483, 0
  %7485 = extractvalue %dx.types.ResRet.f32 %7483, 1
  %7486 = extractvalue %dx.types.ResRet.f32 %7483, 2
  %7487 = extractvalue %dx.types.ResRet.f32 %7483, 3
  %7488 = add i32 %7463, 64
  %7489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7488, i32 undef)  ; BufferLoad(srv,index,wot)
  %7490 = extractvalue %dx.types.ResRet.f32 %7489, 0
  %7491 = extractvalue %dx.types.ResRet.f32 %7489, 1
  %7492 = extractvalue %dx.types.ResRet.f32 %7489, 2
  %7493 = extractvalue %dx.types.ResRet.f32 %7489, 3
  %7494 = add i32 %7463, 80
  %7495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7494, i32 undef)  ; BufferLoad(srv,index,wot)
  %7496 = extractvalue %dx.types.ResRet.f32 %7495, 1
  %7497 = extractvalue %dx.types.ResRet.f32 %7495, 2
  %7498 = add i32 %7463, 92
  %7499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7498, i32 undef)  ; BufferLoad(srv,index,wot)
  %7500 = extractvalue %dx.types.ResRet.i32 %7499, 0
  %7501 = call float @dx.op.dot3.f32(i32 55, float %7465, float %7466, float %7467, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7502 = select i1 %275, float %7496, float %7465
  %7503 = select i1 %275, float %7501, float %7466
  %7504 = select i1 %275, float %7497, float %7467
  %7505 = and i32 %7500, 65535
  %7506 = uitofp i32 %7505 to float
  %7507 = lshr i32 %7500, 16
  %7508 = uitofp i32 %7507 to float
  %7509 = and i32 %7478, 65535
  %7510 = and i32 %7478, 50331648
  %7511 = icmp eq i32 %7510, 33554432
  %7512 = fsub fast float %7484, %203
  %7513 = fsub fast float %7485, %204
  %7514 = fsub fast float %7486, %205
  %7515 = call float @dx.op.dot3.f32(i32 55, float %7512, float %7513, float %7514, float %7512, float %7513, float %7514)  ; Dot3(ax,ay,az,bx,by,bz)
  %7516 = call float @dx.op.unary.f32(i32 24, float %7515)  ; Sqrt(value)
  %7517 = fdiv fast float 1.000000e+00, %7516
  %7518 = fmul fast float %7517, %7512
  %7519 = fmul fast float %7517, %7513
  %7520 = fmul fast float %7517, %7514
  %7521 = fadd fast float %7516, %7470
  %7522 = fdiv fast float 1.000000e+00, %7521
  %7523 = fmul float %7481, %7522
  %7524 = fmul float %7523, %7523
  %7525 = call float @dx.op.unary.f32(i32 7, float %7524)  ; Saturate(value)
  br i1 %7511, label %7526, label %7547

; <label>:7526                                    ; preds = %7450
  %7527 = fmul fast float %7492, %7473
  %7528 = fmul fast float %7492, %7474
  %7529 = fmul fast float %7492, %7475
  %7530 = fadd fast float %7512, %7527
  %7531 = fadd fast float %7513, %7528
  %7532 = fadd fast float %7514, %7529
  %7533 = call float @dx.op.dot3.f32(i32 55, float %7530, float %7531, float %7532, float %7530, float %7531, float %7532)  ; Dot3(ax,ay,az,bx,by,bz)
  %7534 = call float @dx.op.unary.f32(i32 25, float %7533)  ; Rsqrt(value)
  %7535 = fmul fast float %7534, %7530
  %7536 = fmul fast float %7534, %7531
  %7537 = fmul fast float %7534, %7532
  %7538 = fsub fast float %203, %7484
  %7539 = fsub fast float %204, %7485
  %7540 = fsub fast float %205, %7486
  %7541 = fsub fast float -0.000000e+00, %7538
  %7542 = fsub fast float -0.000000e+00, %7539
  %7543 = fsub fast float -0.000000e+00, %7540
  %7544 = call float @dx.op.dot3.f32(i32 55, float %7541, float %7542, float %7543, float %7473, float %7474, float %7475)  ; Dot3(ax,ay,az,bx,by,bz)
  %7545 = fcmp fast ogt float %7544, 0.000000e+00
  %7546 = uitofp i1 %7545 to float
  br label %7547

; <label>:7547                                    ; preds = %7526, %7450
  %7548 = phi float [ %7546, %7526 ], [ 1.000000e+00, %7450 ]
  %7549 = phi float [ %7535, %7526 ], [ %7518, %7450 ]
  %7550 = phi float [ %7536, %7526 ], [ %7519, %7450 ]
  %7551 = phi float [ %7537, %7526 ], [ %7520, %7450 ]
  %7552 = call float @dx.op.dot3.f32(i32 55, float %7473, float %7474, float %7475, float %7549, float %7550, float %7551)  ; Dot3(ax,ay,az,bx,by,bz)
  %7553 = fmul fast float %7552, %7552
  %7554 = call float @dx.op.unary.f32(i32 7, float %7553)  ; Saturate(value)
  %7555 = fsub fast float 1.000000e+00, %7554
  %7556 = fmul fast float %7555, 5.000000e-01
  %7557 = fcmp fast ogt float %7552, 0.000000e+00
  %7558 = fsub fast float 1.000000e+00, %7556
  %7559 = select i1 %7557, float %7556, float %7558
  %7560 = fmul fast float %7559, %7508
  %7561 = fadd fast float %7560, %7506
  %7562 = fmul fast float %7561, 0x3EF0001000000000
  %7563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %51, float %7562, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7564 = extractvalue %dx.types.ResRet.f32 %7563, 0
  %7565 = fmul fast float %7552, %7490
  %7566 = fadd fast float %7565, %7491
  %7567 = call float @dx.op.unary.f32(i32 7, float %7566)  ; Saturate(value)
  %7568 = select i1 %7511, float 1.000000e+00, float %7567
  %7569 = select i1 %7511, float %7567, float 1.000000e+00
  %7570 = fmul fast float %7516, %7487
  %7571 = fsub fast float 1.000000e+00, %7570
  %7572 = fmul fast float %7571, %7493
  %7573 = call float @dx.op.unary.f32(i32 7, float %7572)  ; Saturate(value)
  %7574 = fmul fast float %7573, %7569
  %7575 = fmul fast float %7574, 2.000000e+00
  %7576 = fsub fast float 3.000000e+00, %7575
  %7577 = fmul fast float %7564, %7548
  %7578 = fmul fast float %7574, %7574
  %7579 = fmul fast float %7578, %7577
  %7580 = fmul fast float %7579, %7576
  %7581 = call float @dx.op.binary.f32(i32 36, float %7580, float %7580)  ; FMin(a,b)
  %7582 = call float @dx.op.binary.f32(i32 36, float %7580, float %7581)  ; FMin(a,b)
  %7583 = fcmp fast ogt float %7582, 0.000000e+00
  br i1 %7583, label %7592, label %7584, !dx.controlflow.hints !132

; <label>:7584                                    ; preds = %7805, %7738, %7547
  %7585 = phi float [ %7452, %7738 ], [ %7452, %7547 ], [ %7948, %7805 ]
  %7586 = phi float [ %7453, %7738 ], [ %7453, %7547 ], [ %7949, %7805 ]
  %7587 = phi float [ %7454, %7738 ], [ %7454, %7547 ], [ %7950, %7805 ]
  %7588 = phi float [ %7455, %7738 ], [ %7455, %7547 ], [ %7939, %7805 ]
  %7589 = phi float [ %7456, %7738 ], [ %7456, %7547 ], [ %7940, %7805 ]
  %7590 = phi float [ %7457, %7738 ], [ %7457, %7547 ], [ %7941, %7805 ]
  %7591 = icmp eq i32 %7451, %7461
  br i1 %7591, label %7951, label %7450

; <label>:7592                                    ; preds = %7547
  %7593 = icmp eq i32 %7509, 255
  br i1 %7593, label %7738, label %7594, !dx.controlflow.hints !133

; <label>:7594                                    ; preds = %7592
  %7595 = mul nuw nsw i32 %7509, 176
  %7596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7595, i32 undef)  ; BufferLoad(srv,index,wot)
  %7597 = extractvalue %dx.types.ResRet.f32 %7596, 0
  %7598 = extractvalue %dx.types.ResRet.f32 %7596, 1
  %7599 = extractvalue %dx.types.ResRet.f32 %7596, 2
  %7600 = extractvalue %dx.types.ResRet.f32 %7596, 3
  %7601 = add nuw nsw i32 %7595, 16
  %7602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7601, i32 undef)  ; BufferLoad(srv,index,wot)
  %7603 = extractvalue %dx.types.ResRet.f32 %7602, 0
  %7604 = extractvalue %dx.types.ResRet.f32 %7602, 1
  %7605 = add nuw nsw i32 %7595, 32
  %7606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7605, i32 undef)  ; BufferLoad(srv,index,wot)
  %7607 = extractvalue %dx.types.ResRet.f32 %7606, 0
  %7608 = extractvalue %dx.types.ResRet.f32 %7606, 1
  %7609 = extractvalue %dx.types.ResRet.f32 %7606, 2
  %7610 = add nuw nsw i32 %7595, 48
  %7611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7610, i32 undef)  ; BufferLoad(srv,index,wot)
  %7612 = extractvalue %dx.types.ResRet.f32 %7611, 0
  %7613 = extractvalue %dx.types.ResRet.f32 %7611, 1
  %7614 = extractvalue %dx.types.ResRet.f32 %7611, 2
  %7615 = extractvalue %dx.types.ResRet.f32 %7611, 3
  %7616 = add nuw nsw i32 %7595, 64
  %7617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7616, i32 undef)  ; BufferLoad(srv,index,wot)
  %7618 = extractvalue %dx.types.ResRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.ResRet.f32 %7617, 1
  %7620 = extractvalue %dx.types.ResRet.f32 %7617, 2
  %7621 = extractvalue %dx.types.ResRet.f32 %7617, 3
  %7622 = add nuw nsw i32 %7595, 80
  %7623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7622, i32 undef)  ; BufferLoad(srv,index,wot)
  %7624 = extractvalue %dx.types.ResRet.f32 %7623, 0
  %7625 = extractvalue %dx.types.ResRet.f32 %7623, 1
  %7626 = extractvalue %dx.types.ResRet.f32 %7623, 2
  %7627 = extractvalue %dx.types.ResRet.f32 %7623, 3
  %7628 = add nuw nsw i32 %7595, 96
  %7629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7628, i32 undef)  ; BufferLoad(srv,index,wot)
  %7630 = extractvalue %dx.types.ResRet.f32 %7629, 0
  %7631 = extractvalue %dx.types.ResRet.f32 %7629, 1
  %7632 = extractvalue %dx.types.ResRet.f32 %7629, 2
  %7633 = extractvalue %dx.types.ResRet.f32 %7629, 3
  %7634 = bitcast float %7604 to i32
  %7635 = fmul fast float %7609, %129
  %7636 = fmul fast float %7609, %131
  %7637 = fmul fast float %7609, %133
  %7638 = fadd fast float %7635, %203
  %7639 = fadd fast float %7636, %204
  %7640 = fadd fast float %7637, %205
  %7641 = fmul fast float %7638, %7612
  %7642 = call float @dx.op.tertiary.f32(i32 46, float %7639, float %7618, float %7641)  ; FMad(a,b,c)
  %7643 = call float @dx.op.tertiary.f32(i32 46, float %7640, float %7624, float %7642)  ; FMad(a,b,c)
  %7644 = fadd fast float %7643, %7630
  %7645 = fmul fast float %7638, %7613
  %7646 = call float @dx.op.tertiary.f32(i32 46, float %7639, float %7619, float %7645)  ; FMad(a,b,c)
  %7647 = call float @dx.op.tertiary.f32(i32 46, float %7640, float %7625, float %7646)  ; FMad(a,b,c)
  %7648 = fadd fast float %7647, %7631
  %7649 = fmul fast float %7638, %7614
  %7650 = call float @dx.op.tertiary.f32(i32 46, float %7639, float %7620, float %7649)  ; FMad(a,b,c)
  %7651 = call float @dx.op.tertiary.f32(i32 46, float %7640, float %7626, float %7650)  ; FMad(a,b,c)
  %7652 = fadd fast float %7651, %7632
  %7653 = fmul fast float %7638, %7615
  %7654 = call float @dx.op.tertiary.f32(i32 46, float %7639, float %7621, float %7653)  ; FMad(a,b,c)
  %7655 = call float @dx.op.tertiary.f32(i32 46, float %7640, float %7627, float %7654)  ; FMad(a,b,c)
  %7656 = fadd fast float %7655, %7633
  %7657 = fdiv fast float %7644, %7656
  %7658 = fdiv fast float %7648, %7656
  %7659 = fdiv fast float %7652, %7656
  %7660 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7659)  ; FMax(a,b)
  %7661 = fmul fast float %286, 0x401921FB60000000
  %7662 = call float @dx.op.unary.f32(i32 13, float %7661)  ; Sin(value)
  %7663 = call float @dx.op.unary.f32(i32 12, float %7661)  ; Cos(value)
  %7664 = fmul fast float %7663, %7608
  %7665 = call float @dx.op.tertiary.f32(i32 46, float %7662, float %7608, float 0.000000e+00)  ; FMad(a,b,c)
  %7666 = fmul fast float %7608, %7662
  %7667 = fsub fast float -0.000000e+00, %7666
  %7668 = call float @dx.op.tertiary.f32(i32 46, float %7663, float %7608, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7669

; <label>:7669                                    ; preds = %7669, %7594
  %7670 = phi float [ 0.000000e+00, %7594 ], [ %7702, %7669 ]
  %7671 = phi float [ 0.000000e+00, %7594 ], [ %7704, %7669 ]
  %7672 = phi i32 [ 0, %7594 ], [ %7705, %7669 ]
  %7673 = mul i32 %7672, 2
  %7674 = add i32 0, %7673
  %7675 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7674
  %7676 = load float, float* %7675, align 4
  %7677 = mul i32 %7672, 2
  %7678 = add i32 1, %7677
  %7679 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7678
  %7680 = load float, float* %7679, align 4
  %7681 = fmul fast float %7664, %7676
  %7682 = call float @dx.op.tertiary.f32(i32 46, float %7680, float %7667, float %7681)  ; FMad(a,b,c)
  %7683 = fmul fast float %7676, %7665
  %7684 = call float @dx.op.tertiary.f32(i32 46, float %7680, float %7668, float %7683)  ; FMad(a,b,c)
  %7685 = fadd fast float %7682, %7657
  %7686 = fadd fast float %7684, %7658
  %7687 = fmul fast float %7685, %7603
  %7688 = fmul fast float %7686, %7603
  %7689 = call float @dx.op.binary.f32(i32 35, float %7687, float %7599)  ; FMax(a,b)
  %7690 = call float @dx.op.binary.f32(i32 35, float %7688, float %7599)  ; FMax(a,b)
  %7691 = call float @dx.op.binary.f32(i32 36, float %7689, float %7600)  ; FMin(a,b)
  %7692 = call float @dx.op.binary.f32(i32 36, float %7690, float %7600)  ; FMin(a,b)
  %7693 = fadd fast float %7691, %7597
  %7694 = fadd fast float %7692, %7598
  %7695 = uitofp i32 %7634 to float
  %7696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %52, float %7693, float %7694, float %7695, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7697 = extractvalue %dx.types.ResRet.f32 %7696, 0
  %7698 = fsub fast float %7697, %7660
  %7699 = fsub fast float %7698, %7607
  %7700 = fcmp fast ogt float %7699, 0.000000e+00
  %7701 = select i1 %7700, float 1.000000e+00, float 0.000000e+00
  %7702 = fadd fast float %7701, %7670
  %7703 = select i1 %7700, float %7699, float 0.000000e+00
  %7704 = fadd fast float %7703, %7671
  %7705 = add nuw nsw i32 %7672, 1
  %7706 = icmp eq i32 %7705, 8
  br i1 %7706, label %7707, label %7669

; <label>:7707                                    ; preds = %7669
  %7708 = fdiv fast float 1.000000e+00, %7702
  %7709 = fmul fast float %7708, %7704
  %7710 = fdiv fast float 1.000000e+00, %7660
  %7711 = fmul fast float %7709, %7710
  %7712 = call float @dx.op.unary.f32(i32 7, float %7711)  ; Saturate(value)
  %7713 = call float @dx.op.binary.f32(i32 35, float %7712, float 0.000000e+00)  ; FMax(a,b)
  %7714 = fmul fast float %7702, 1.250000e-01
  %7715 = call float @dx.op.unary.f32(i32 7, float %7714)  ; Saturate(value)
  %7716 = fmul fast float %7715, 2.000000e+00
  %7717 = fadd fast float %7716, -1.000000e+00
  %7718 = fcmp fast ogt float %7717, 0.000000e+00
  %7719 = fcmp fast olt float %7717, 0.000000e+00
  %7720 = zext i1 %7718 to i32
  %7721 = zext i1 %7719 to i32
  %7722 = sub nsw i32 %7720, %7721
  %7723 = sitofp i32 %7722 to float
  %7724 = fmul fast float %7723, %7717
  %7725 = fsub fast float 1.000000e+00, %7724
  %7726 = fmul fast float %7725, %7725
  %7727 = fmul fast float %7726, %7725
  %7728 = fsub fast float %7725, %7727
  %7729 = fmul fast float %7728, %7713
  %7730 = fsub fast float 1.000000e+00, %7727
  %7731 = fsub fast float %7730, %7729
  %7732 = fmul fast float %7723, 5.000000e-01
  %7733 = fmul fast float %7732, %7731
  %7734 = fsub fast float -5.000000e-01, %7733
  %7735 = fmul fast float %7734, %7568
  %7736 = fadd fast float %7735, 1.000000e+00
  %7737 = fmul fast float %7736, %7580
  br label %7738

; <label>:7738                                    ; preds = %7707, %7592
  %7739 = phi float [ %7737, %7707 ], [ %7580, %7592 ]
  %7740 = call float @dx.op.binary.f32(i32 36, float %7739, float %7739)  ; FMin(a,b)
  %7741 = call float @dx.op.binary.f32(i32 36, float %7739, float %7740)  ; FMin(a,b)
  %7742 = fcmp fast ogt float %7741, 0.000000e+00
  br i1 %7742, label %7743, label %7584, !dx.controlflow.hints !134

; <label>:7743                                    ; preds = %7738
  %7744 = fmul fast float %7739, %7502
  %7745 = fmul fast float %7739, %7503
  %7746 = fmul fast float %7739, %7504
  %7747 = fsub fast float %7486, %3958
  %7748 = fcmp fast ogt float %7747, 0.000000e+00
  %7749 = fsub fast float %205, %3958
  %7750 = fcmp fast ogt float %7749, 0.000000e+00
  %7751 = xor i1 %7750, %7748
  %7752 = fsub fast float %3958, %7486
  %7753 = fmul fast float %7752, 2.000000e+00
  %7754 = fadd fast float %7753, %7486
  %7755 = select i1 %7751, float %7486, float %7754
  %7756 = fsub fast float %7755, %205
  %7757 = call float @dx.op.dot3.f32(i32 55, float %7512, float %7513, float %7756, float %7512, float %7513, float %7756)  ; Dot3(ax,ay,az,bx,by,bz)
  %7758 = call float @dx.op.unary.f32(i32 25, float %7757)  ; Rsqrt(value)
  %7759 = fmul fast float %7758, %7512
  %7760 = fmul fast float %7758, %7513
  %7761 = fmul fast float %7758, %7756
  %7762 = fsub fast float %3958, %205
  %7763 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7762)  ; Dot3(ax,ay,az,bx,by,bz)
  %7764 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7759, float %7760, float %7761)  ; Dot3(ax,ay,az,bx,by,bz)
  %7765 = fdiv fast float 1.000000e+00, %7764
  %7766 = fmul fast float %7765, %7763
  %7767 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7749, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7768 = fcmp fast ogt float %7767, 0.000000e+00
  %7769 = fcmp fast olt float %7767, 0.000000e+00
  %7770 = zext i1 %7768 to i32
  %7771 = zext i1 %7769 to i32
  %7772 = sub nsw i32 %7770, %7771
  %7773 = sitofp i32 %7772 to float
  %7774 = fsub fast float %7755, %3958
  %7775 = call float @dx.op.dot3.f32(i32 55, float %7512, float %7513, float %7774, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7776 = fcmp fast ogt float %7775, 0.000000e+00
  %7777 = fcmp fast olt float %7775, 0.000000e+00
  %7778 = zext i1 %7776 to i32
  %7779 = zext i1 %7777 to i32
  %7780 = sub nsw i32 %7778, %7779
  %7781 = sitofp i32 %7780 to float
  %7782 = fcmp fast une float %7773, %7781
  br i1 %7782, label %7783, label %7793

; <label>:7783                                    ; preds = %7743
  %7784 = fmul fast float %7766, %7761
  %7785 = fmul fast float %7766, %7760
  %7786 = fmul fast float %7766, %7759
  %7787 = fmul fast float %7786, %7786
  %7788 = fmul fast float %7785, %7785
  %7789 = fadd fast float %7787, %7788
  %7790 = fmul fast float %7784, %7784
  %7791 = fadd fast float %7789, %7790
  %7792 = call float @dx.op.unary.f32(i32 24, float %7791)  ; Sqrt(value)
  br label %7805

; <label>:7793                                    ; preds = %7743
  %7794 = icmp slt i32 %7772, 0
  br i1 %7794, label %7795, label %7805

; <label>:7795                                    ; preds = %7793
  %7796 = fsub fast float %203, %7484
  %7797 = fsub fast float %204, %7485
  %7798 = fsub fast float %205, %7755
  %7799 = fmul fast float %7796, %7796
  %7800 = fmul fast float %7797, %7797
  %7801 = fadd fast float %7799, %7800
  %7802 = fmul fast float %7798, %7798
  %7803 = fadd fast float %7801, %7802
  %7804 = call float @dx.op.unary.f32(i32 24, float %7803)  ; Sqrt(value)
  br label %7805

; <label>:7805                                    ; preds = %7795, %7793, %7783
  %7806 = phi float [ %7792, %7783 ], [ %7804, %7795 ], [ 0.000000e+00, %7793 ]
  %7807 = and i1 %7750, %7748
  %7808 = fsub fast float -0.000000e+00, %7806
  %7809 = select i1 %7807, float -0.000000e+00, float %7808
  %7810 = fmul fast float %3959, 0x3FF7154760000000
  %7811 = fmul fast float %7810, %7809
  %7812 = fmul fast float %3960, 0x3FF7154760000000
  %7813 = fmul fast float %7812, %7809
  %7814 = fmul fast float %3961, 0x3FF7154760000000
  %7815 = fmul fast float %7814, %7809
  %7816 = call float @dx.op.unary.f32(i32 21, float %7811)  ; Exp(value)
  %7817 = call float @dx.op.unary.f32(i32 21, float %7813)  ; Exp(value)
  %7818 = call float @dx.op.unary.f32(i32 21, float %7815)  ; Exp(value)
  %7819 = call float @dx.op.unary.f32(i32 7, float %7816)  ; Saturate(value)
  %7820 = call float @dx.op.unary.f32(i32 7, float %7817)  ; Saturate(value)
  %7821 = call float @dx.op.unary.f32(i32 7, float %7818)  ; Saturate(value)
  %7822 = fmul fast float %7744, %7819
  %7823 = fmul fast float %7745, %7820
  %7824 = fmul fast float %7746, %7821
  %7825 = fsub fast float %7518, %4784
  %7826 = fsub fast float %7519, %4785
  %7827 = fsub fast float %7520, %4786
  %7828 = call float @dx.op.dot3.f32(i32 55, float %7825, float %7826, float %7827, float %7825, float %7826, float %7827)  ; Dot3(ax,ay,az,bx,by,bz)
  %7829 = call float @dx.op.unary.f32(i32 25, float %7828)  ; Rsqrt(value)
  %7830 = fmul fast float %7829, %7825
  %7831 = fmul fast float %7829, %7826
  %7832 = fmul fast float %7829, %7827
  %7833 = call float @dx.op.dot3.f32(i32 55, float %7518, float %7519, float %7520, float %4741, float %4742, float %4743)  ; Dot3(ax,ay,az,bx,by,bz)
  %7834 = call float @dx.op.dot3.f32(i32 55, float %4787, float %4788, float %4789, float %7830, float %7831, float %7832)  ; Dot3(ax,ay,az,bx,by,bz)
  %7835 = call float @dx.op.unary.f32(i32 7, float %7833)  ; Saturate(value)
  %7836 = fmul fast float %7835, %7525
  %7837 = bitcast i32 %4816 to float
  %7838 = fmul fast float %7835, %7835
  %7839 = fmul fast float %7838, %7837
  %7840 = call float @dx.op.unary.f32(i32 7, float %7839)  ; Saturate(value)
  %7841 = fmul fast float %7836, %7840
  %7842 = bitcast float %7515 to i32
  %7843 = ashr i32 %7842, 1
  %7844 = sub nsw i32 1597463007, %7843
  %7845 = bitcast i32 %7844 to float
  %7846 = fmul fast float %7845, %7512
  %7847 = fmul fast float %7845, %7513
  %7848 = fmul fast float %7845, %7514
  %7849 = fsub fast float %7846, %4784
  %7850 = fsub fast float %7847, %4785
  %7851 = fsub fast float %7848, %4786
  %7852 = call float @dx.op.dot3.f32(i32 55, float %7849, float %7850, float %7851, float %7849, float %7850, float %7851)  ; Dot3(ax,ay,az,bx,by,bz)
  %7853 = call float @dx.op.unary.f32(i32 25, float %7852)  ; Rsqrt(value)
  %7854 = fmul fast float %7849, %7853
  %7855 = fmul fast float %7850, %7853
  %7856 = fmul fast float %7851, %7853
  %7857 = call float @dx.op.dot3.f32(i32 55, float %4741, float %4742, float %4743, float %7854, float %7855, float %7856)  ; Dot3(ax,ay,az,bx,by,bz)
  %7858 = fmul fast float %7857, %7857
  %7859 = call float @dx.op.unary.f32(i32 6, float %7833)  ; FAbs(value)
  %7860 = fsub fast float 1.000000e+00, %4810
  %7861 = fmul fast float %4792, %4792
  %7862 = fmul fast float %7861, %7860
  %7863 = fadd fast float %7862, %4810
  %7864 = bitcast float %7863 to i32
  %7865 = ashr i32 %7864, 1
  %7866 = add nsw i32 %7865, 532487669
  %7867 = bitcast i32 %7866 to float
  %7868 = fadd fast float %7867, %4792
  %7869 = fmul fast float %4810, %7858
  %7870 = fsub fast float 1.000000e+00, %7858
  %7871 = fadd fast float %7870, %7869
  %7872 = fmul fast float %7859, %7859
  %7873 = fmul fast float %7872, %7860
  %7874 = fadd fast float %7873, %4810
  %7875 = bitcast float %7874 to i32
  %7876 = ashr i32 %7875, 1
  %7877 = add nsw i32 %7876, 532487669
  %7878 = bitcast i32 %7877 to float
  %7879 = fadd fast float %7878, %7859
  %7880 = fmul fast float %7871, %7871
  %7881 = fmul fast float %7880, %7868
  %7882 = fmul fast float %7881, %7879
  %7883 = fdiv fast float 1.000000e+00, %7882
  %7884 = bitcast float %4810 to i32
  %7885 = sitofp i32 %7884 to float
  %7886 = fmul fast float %7885, 0x3FE7F73180000000
  %7887 = fadd fast float %7886, 0x41AFE27C40000000
  %7888 = fptosi float %7887 to i32
  %7889 = bitcast i32 %7888 to float
  %7890 = fmul fast float %7481, 0x3FD80E9D60000000
  %7891 = fmul fast float %7890, %7845
  %7892 = fadd fast float %7889, %7891
  %7893 = bitcast float %7892 to i32
  %7894 = sub nsw i32 2129859010, %7893
  %7895 = bitcast i32 %7894 to float
  %7896 = fmul fast float %4810, %7883
  %7897 = fmul fast float %7896, %7889
  %7898 = fmul fast float %7897, %7895
  %7899 = call float @dx.op.unary.f32(i32 6, float %7834)  ; FAbs(value)
  %7900 = fsub fast float 1.000000e+00, %7899
  %7901 = bitcast float %7900 to i32
  %7902 = sitofp i32 %7901 to float
  %7903 = fmul fast float %7902, 5.000000e+00
  %7904 = fadd fast float %7903, 0xC1EFBF8940000000
  %7905 = fptosi float %7904 to i32
  %7906 = bitcast i32 %7905 to float
  %7907 = fsub fast float 1.000000e+00, %4738
  %7908 = fsub fast float 1.000000e+00, %4739
  %7909 = fsub fast float 1.000000e+00, %4790
  %7910 = fmul fast float %7906, %7907
  %7911 = fmul fast float %7906, %7908
  %7912 = fmul fast float %7906, %7909
  %7913 = fadd fast float %7910, %4738
  %7914 = fadd fast float %7911, %4739
  %7915 = fadd fast float %7912, %4790
  %7916 = fmul fast float %7833, 9.843750e-01
  %7917 = fadd fast float %7916, 7.812500e-03
  %7918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %7917, float %5107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7919 = extractvalue %dx.types.ResRet.f32 %7918, 2
  %7920 = extractvalue %dx.types.ResRet.f32 %7918, 3
  %7921 = fmul fast float %7919, %4738
  %7922 = fmul fast float %7919, %4739
  %7923 = fmul fast float %7919, %4790
  %7924 = fadd fast float %7921, %7920
  %7925 = fadd fast float %7922, %7920
  %7926 = fadd fast float %7923, %7920
  %7927 = call float @dx.op.binary.f32(i32 35, float %7925, float %7926)  ; FMax(a,b)
  %7928 = call float @dx.op.binary.f32(i32 35, float %7924, float %7927)  ; FMax(a,b)
  %7929 = fsub fast float 1.000000e+00, %7928
  %7930 = fmul fast float %7822, %1266
  %7931 = fmul fast float %7930, %7841
  %7932 = fmul fast float %7931, %7929
  %7933 = fmul fast float %7823, %1266
  %7934 = fmul fast float %7933, %7841
  %7935 = fmul fast float %7934, %7929
  %7936 = fmul fast float %7824, %1266
  %7937 = fmul fast float %7936, %7841
  %7938 = fmul fast float %7937, %7929
  %7939 = fadd fast float %7932, %7455
  %7940 = fadd fast float %7935, %7456
  %7941 = fadd fast float %7938, %7457
  %7942 = fmul fast float %7931, %7913
  %7943 = fmul fast float %7942, %7898
  %7944 = fmul fast float %7934, %7914
  %7945 = fmul fast float %7944, %7898
  %7946 = fmul fast float %7937, %7915
  %7947 = fmul fast float %7946, %7898
  %7948 = fadd fast float %7943, %7452
  %7949 = fadd fast float %7945, %7453
  %7950 = fadd fast float %7947, %7454
  br label %7584

; <label>:7951                                    ; preds = %7584
  br label %7952

; <label>:7952                                    ; preds = %7951, %7418
  %7953 = phi float [ %7420, %7418 ], [ %7585, %7951 ]
  %7954 = phi float [ %7421, %7418 ], [ %7586, %7951 ]
  %7955 = phi float [ %7422, %7418 ], [ %7587, %7951 ]
  %7956 = phi float [ %7423, %7418 ], [ %7588, %7951 ]
  %7957 = phi float [ %7424, %7418 ], [ %7589, %7951 ]
  %7958 = phi float [ %7425, %7418 ], [ %7590, %7951 ]
  %7959 = add i32 %7419, 1
  %7960 = icmp ugt i32 %7959, %7415
  br i1 %7960, label %7961, label %7418

; <label>:7961                                    ; preds = %7952
  br label %7962

; <label>:7962                                    ; preds = %7961, %7368, %7358
  %7963 = phi float [ %7359, %7358 ], [ %7359, %7368 ], [ %7953, %7961 ]
  %7964 = phi float [ %7360, %7358 ], [ %7360, %7368 ], [ %7954, %7961 ]
  %7965 = phi float [ %7361, %7358 ], [ %7361, %7368 ], [ %7955, %7961 ]
  %7966 = phi float [ %7362, %7358 ], [ %7362, %7368 ], [ %7956, %7961 ]
  %7967 = phi float [ %7363, %7358 ], [ %7363, %7368 ], [ %7957, %7961 ]
  %7968 = phi float [ %7364, %7358 ], [ %7364, %7368 ], [ %7958, %7961 ]
  %7969 = fmul fast float %1266, %1266
  %7970 = fsub fast float 1.000000e+00, %7969
  %7971 = call float @dx.op.dot3.f32(i32 55, float %7970, float %7970, float %7970, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7972 = fsub fast float 1.000000e+00, %7971
  %7973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7974 = extractvalue %dx.types.CBufRet.f32 %7973, 0
  %7975 = fmul fast float %7974, %5691
  %7976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7977 = extractvalue %dx.types.CBufRet.f32 %7976, 3
  %7978 = fsub fast float 1.000000e+00, %3486
  %7979 = call float @dx.op.unary.f32(i32 7, float %7978)  ; Saturate(value)
  %7980 = fadd fast float %3507, %7968
  %7981 = fmul fast float %7980, %3486
  %7982 = fmul fast float %7979, %7977
  %7983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7984 = extractvalue %dx.types.CBufRet.f32 %7983, 3
  %7985 = fmul fast float %7966, %4744
  %7986 = fmul fast float %7967, %4745
  %7987 = fmul fast float %7968, %4746
  %7988 = fcmp fast ogt float %107, %238
  %7989 = and i1 %7988, %3964
  %7990 = or i1 %3970, %7989
  %7991 = icmp eq i32 %3963, 2
  %7992 = fcmp fast ole float %107, %238
  %7993 = and i1 %7992, %7991
  %7994 = or i1 %7993, %7990
  br i1 %7989, label %7995, label %8252

; <label>:7995                                    ; preds = %7962
  %7996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7997 = extractvalue %dx.types.CBufRet.f32 %7996, 2
  %7998 = extractvalue %dx.types.CBufRet.f32 %7996, 3
  %7999 = fmul fast float %7997, %120
  %8000 = fmul fast float %7998, %121
  %8001 = call float @dx.op.unary.f32(i32 7, float %7999)  ; Saturate(value)
  %8002 = call float @dx.op.unary.f32(i32 7, float %8000)  ; Saturate(value)
  %8003 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %8001, float %8002, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8004 = extractvalue %dx.types.ResRet.f32 %8003, 0
  %8005 = extractvalue %dx.types.ResRet.f32 %8003, 1
  %8006 = extractvalue %dx.types.ResRet.f32 %8003, 2
  %8007 = extractvalue %dx.types.ResRet.f32 %8003, 3
  %8008 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %8001, float %8002, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8009 = extractvalue %dx.types.ResRet.f32 %8008, 0
  %8010 = extractvalue %dx.types.ResRet.f32 %8008, 1
  %8011 = extractvalue %dx.types.ResRet.f32 %8008, 2
  %8012 = extractvalue %dx.types.ResRet.f32 %8008, 3
  %8013 = call float @dx.op.binary.f32(i32 35, float %8005, float %8006)  ; FMax(a,b)
  %8014 = call float @dx.op.binary.f32(i32 35, float %8004, float %8013)  ; FMax(a,b)
  %8015 = call float @dx.op.binary.f32(i32 35, float %8014, float %8007)  ; FMax(a,b)
  %8016 = call float @dx.op.binary.f32(i32 36, float %8010, float %8011)  ; FMin(a,b)
  %8017 = call float @dx.op.binary.f32(i32 36, float %8009, float %8016)  ; FMin(a,b)
  %8018 = call float @dx.op.binary.f32(i32 36, float %8017, float %8012)  ; FMin(a,b)
  %8019 = fmul fast float %8015, 2.550000e+02
  %8020 = fadd fast float %8019, 0x3F70101020000000
  %8021 = fptoui float %8020 to i32
  %8022 = fmul fast float %8018, 2.550000e+02
  %8023 = fadd fast float %8022, 0x3F70101020000000
  %8024 = fptoui float %8023 to i32
  %8025 = icmp ult i32 %8021, %8024
  br i1 %8025, label %8026, label %8194

; <label>:8026                                    ; preds = %7995
  %8027 = fcmp fast ogt float %106, 9.843750e-01
  %8028 = fadd fast float %107, -4.000000e+00
  %8029 = select i1 %8027, float -4.000000e+00, float %8028
  %8030 = call float @dx.op.binary.f32(i32 35, float %8029, float 0.000000e+00)  ; FMax(a,b)
  %8031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8032 = extractvalue %dx.types.CBufRet.f32 %8031, 0
  %8033 = fadd fast float %8032, %8030
  %8034 = extractvalue %dx.types.CBufRet.f32 %8031, 2
  %8035 = fmul fast float %8033, %8034
  %8036 = call float @dx.op.unary.f32(i32 23, float %8035)  ; Log(value)
  %8037 = extractvalue %dx.types.CBufRet.f32 %8031, 3
  %8038 = fmul fast float %8037, %8036
  %8039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8040 = extractvalue %dx.types.CBufRet.f32 %8039, 2
  %8041 = fmul fast float %8038, %8040
  %8042 = call float @dx.op.unary.f32(i32 7, float %8041)  ; Saturate(value)
  %8043 = uitofp i32 %8021 to float
  %8044 = uitofp i32 %8024 to float
  %8045 = fadd fast float %8043, 5.000000e-01
  %8046 = fadd fast float %8044, 5.000000e-01
  %8047 = fmul fast float %8040, %8045
  %8048 = fmul fast float %8040, %8046
  %8049 = fadd fast float %8047, 0x3F0FFB4800000000
  %8050 = fadd fast float %8048, 0xBF0FFB4800000000
  %8051 = call float @dx.op.binary.f32(i32 35, float %8042, float %8049)  ; FMax(a,b)
  %8052 = call float @dx.op.binary.f32(i32 36, float %8051, float %8050)  ; FMin(a,b)
  %8053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8054 = extractvalue %dx.types.CBufRet.f32 %8053, 1
  %8055 = extractvalue %dx.types.CBufRet.f32 %8053, 2
  %8056 = extractvalue %dx.types.CBufRet.f32 %8053, 0
  %8057 = fmul fast float %8054, %8052
  %8058 = fadd fast float %8056, %8057
  %8059 = fadd fast float %8056, %8055
  %8060 = fsub fast float %8054, %8055
  %8061 = fadd fast float %8060, %8056
  %8062 = call float @dx.op.binary.f32(i32 35, float %8058, float %8059)  ; FMax(a,b)
  %8063 = call float @dx.op.binary.f32(i32 36, float %8062, float %8061)  ; FMin(a,b)
  %8064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %49, float %8001, float %8002, float %8063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8065 = extractvalue %dx.types.ResRet.f32 %8064, 0
  %8066 = extractvalue %dx.types.ResRet.f32 %8064, 1
  %8067 = extractvalue %dx.types.ResRet.f32 %8064, 2
  %8068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8069 = extractvalue %dx.types.CBufRet.i32 %8068, 0
  %8070 = extractvalue %dx.types.CBufRet.i32 %8068, 1
  %8071 = uitofp i32 %8069 to float
  %8072 = uitofp i32 %8070 to float
  %8073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8074 = extractvalue %dx.types.CBufRet.f32 %8073, 0
  %8075 = extractvalue %dx.types.CBufRet.f32 %8073, 1
  %8076 = fmul fast float %8071, %8001
  %8077 = fmul fast float %8072, %8002
  %8078 = fadd fast float %8076, -5.000000e-01
  %8079 = fadd fast float %8077, -5.000000e-01
  %8080 = call float @dx.op.unary.f32(i32 22, float %8078)  ; Frc(value)
  %8081 = call float @dx.op.unary.f32(i32 22, float %8079)  ; Frc(value)
  %8082 = fmul fast float %8080, %8080
  %8083 = fmul fast float %8082, %8080
  %8084 = fsub fast float 3.000000e+00, %8080
  %8085 = fmul fast float %8082, %8084
  %8086 = fmul fast float %8080, 3.000000e+00
  %8087 = fmul fast float %8083, 3.000000e+00
  %8088 = fmul fast float %8082, 6.000000e+00
  %8089 = fsub fast float %8087, %8088
  %8090 = fadd fast float %8089, 4.000000e+00
  %8091 = fmul fast float %8090, 0x3FC5555560000000
  %8092 = fmul fast float %8083, -3.000000e+00
  %8093 = fadd fast float %8082, %8080
  %8094 = fmul fast float %8093, 3.000000e+00
  %8095 = fadd fast float %8092, 1.000000e+00
  %8096 = fadd fast float %8095, %8094
  %8097 = fmul fast float %8083, 0x3FC5555560000000
  %8098 = fmul fast float %8081, %8081
  %8099 = fmul fast float %8098, %8081
  %8100 = fsub fast float 3.000000e+00, %8081
  %8101 = fmul fast float %8098, %8100
  %8102 = fmul fast float %8081, 3.000000e+00
  %8103 = fmul fast float %8099, 3.000000e+00
  %8104 = fmul fast float %8098, 6.000000e+00
  %8105 = fsub fast float %8103, %8104
  %8106 = fadd fast float %8105, 4.000000e+00
  %8107 = fmul fast float %8106, 0x3FC5555560000000
  %8108 = fmul fast float %8099, -3.000000e+00
  %8109 = fadd fast float %8098, %8081
  %8110 = fmul fast float %8109, 3.000000e+00
  %8111 = fadd fast float %8108, 1.000000e+00
  %8112 = fadd fast float %8111, %8110
  %8113 = fmul fast float %8099, 0x3FC5555560000000
  %8114 = fadd fast float %8080, 1.000000e+00
  %8115 = fsub fast float 1.000000e+00, %8086
  %8116 = fadd fast float %8115, %8085
  %8117 = fadd fast float %8116, %8090
  %8118 = fmul fast float %8117, 0x3FC5555560000000
  %8119 = fdiv fast float %8091, %8118
  %8120 = fsub fast float %8114, %8119
  %8121 = fsub fast float 1.000000e+00, %8080
  %8122 = fadd fast float %8096, %8083
  %8123 = fmul fast float %8122, 0x3FC5555560000000
  %8124 = fdiv fast float %8097, %8123
  %8125 = fadd fast float %8121, %8124
  %8126 = fadd fast float %8081, 1.000000e+00
  %8127 = fsub fast float 1.000000e+00, %8102
  %8128 = fadd fast float %8127, %8101
  %8129 = fadd fast float %8128, %8106
  %8130 = fmul fast float %8129, 0x3FC5555560000000
  %8131 = fdiv fast float %8107, %8130
  %8132 = fsub fast float %8126, %8131
  %8133 = fsub fast float 1.000000e+00, %8081
  %8134 = fadd fast float %8112, %8099
  %8135 = fmul fast float %8134, 0x3FC5555560000000
  %8136 = fdiv fast float %8113, %8135
  %8137 = fadd fast float %8136, %8133
  %8138 = fmul fast float %8120, %8074
  %8139 = fsub fast float %8001, %8138
  %8140 = fmul fast float %8125, %8074
  %8141 = fadd fast float %8140, %8001
  %8142 = fmul fast float %8137, %8075
  %8143 = fadd fast float %8142, %8002
  %8144 = fmul fast float %8132, %8075
  %8145 = fsub fast float %8002, %8144
  %8146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %8139, float %8145, float %8063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8147 = extractvalue %dx.types.ResRet.f32 %8146, 0
  %8148 = extractvalue %dx.types.ResRet.f32 %8146, 1
  %8149 = extractvalue %dx.types.ResRet.f32 %8146, 2
  %8150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %8141, float %8145, float %8063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8151 = extractvalue %dx.types.ResRet.f32 %8150, 0
  %8152 = extractvalue %dx.types.ResRet.f32 %8150, 1
  %8153 = extractvalue %dx.types.ResRet.f32 %8150, 2
  %8154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %8139, float %8143, float %8063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8155 = extractvalue %dx.types.ResRet.f32 %8154, 0
  %8156 = extractvalue %dx.types.ResRet.f32 %8154, 1
  %8157 = extractvalue %dx.types.ResRet.f32 %8154, 2
  %8158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %8141, float %8143, float %8063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8159 = extractvalue %dx.types.ResRet.f32 %8158, 0
  %8160 = extractvalue %dx.types.ResRet.f32 %8158, 1
  %8161 = extractvalue %dx.types.ResRet.f32 %8158, 2
  %8162 = fsub fast float %8155, %8147
  %8163 = fsub fast float %8156, %8148
  %8164 = fsub fast float %8157, %8149
  %8165 = fmul fast float %8162, %8135
  %8166 = fmul fast float %8163, %8135
  %8167 = fmul fast float %8164, %8135
  %8168 = fadd fast float %8165, %8147
  %8169 = fadd fast float %8166, %8148
  %8170 = fadd fast float %8167, %8149
  %8171 = fsub fast float %8159, %8151
  %8172 = fsub fast float %8160, %8152
  %8173 = fsub fast float %8161, %8153
  %8174 = fmul fast float %8171, %8135
  %8175 = fmul fast float %8172, %8135
  %8176 = fmul fast float %8173, %8135
  %8177 = fsub fast float %8151, %8168
  %8178 = fadd fast float %8177, %8174
  %8179 = fsub fast float %8152, %8169
  %8180 = fadd fast float %8179, %8175
  %8181 = fsub fast float %8153, %8170
  %8182 = fadd fast float %8181, %8176
  %8183 = fmul fast float %8178, %8123
  %8184 = fmul fast float %8180, %8123
  %8185 = fmul fast float %8182, %8123
  %8186 = fadd fast float %8183, %8168
  %8187 = fadd fast float %8184, %8169
  %8188 = fadd fast float %8185, %8170
  %8189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8190 = extractvalue %dx.types.CBufRet.f32 %8189, 1
  %8191 = fmul fast float %8186, %8190
  %8192 = fmul fast float %8187, %8190
  %8193 = fmul fast float %8188, %8190
  br label %8194

; <label>:8194                                    ; preds = %8026, %7995
  %8195 = phi float [ %8065, %8026 ], [ 1.000000e+00, %7995 ]
  %8196 = phi float [ %8066, %8026 ], [ 1.000000e+00, %7995 ]
  %8197 = phi float [ %8067, %8026 ], [ 1.000000e+00, %7995 ]
  %8198 = phi float [ %8191, %8026 ], [ 0.000000e+00, %7995 ]
  %8199 = phi float [ %8192, %8026 ], [ 0.000000e+00, %7995 ]
  %8200 = phi float [ %8193, %8026 ], [ 0.000000e+00, %7995 ]
  %8201 = fmul fast float %8198, %7972
  %8202 = fmul fast float %8199, %7972
  %8203 = fmul fast float %8200, %7972
  %8204 = call float @dx.op.dot3.f32(i32 55, float %8195, float %8196, float %8197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8205 = call float @dx.op.dot3.f32(i32 55, float %8201, float %8202, float %8203, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8206 = select i1 %275, float %8204, float %8195
  %8207 = select i1 %275, float %8204, float %8196
  %8208 = select i1 %275, float 1.000000e+00, float %8197
  %8209 = select i1 %275, float %8205, float %8201
  %8210 = select i1 %275, float 0.000000e+00, float %8202
  %8211 = select i1 %275, float 0.000000e+00, float %8203
  %8212 = fmul fast float %8206, %7985
  %8213 = fmul fast float %8207, %7986
  %8214 = fmul fast float %8208, %7987
  %8215 = fadd fast float %8212, %8209
  %8216 = fadd fast float %8213, %8210
  %8217 = fadd fast float %8211, %8214
  %8218 = fmul fast float %8206, %7963
  %8219 = fmul fast float %8207, %7964
  %8220 = fmul fast float %8208, %7965
  %8221 = fmul fast float %152, %7997
  %8222 = fmul fast float %154, %7998
  %8223 = fsub fast float 1.000000e+00, %8221
  %8224 = fsub fast float 1.000000e+00, %8222
  %8225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8226 = extractvalue %dx.types.CBufRet.f32 %8225, 0
  %8227 = extractvalue %dx.types.CBufRet.f32 %8225, 1
  %8228 = extractvalue %dx.types.CBufRet.f32 %8225, 2
  %8229 = fmul fast float %8223, %8226
  %8230 = fmul fast float %8223, %8227
  %8231 = fmul fast float %8223, %8228
  %8232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8233 = extractvalue %dx.types.CBufRet.f32 %8232, 0
  %8234 = extractvalue %dx.types.CBufRet.f32 %8232, 1
  %8235 = extractvalue %dx.types.CBufRet.f32 %8232, 2
  %8236 = fmul fast float %8224, %8233
  %8237 = fmul fast float %8224, %8234
  %8238 = fmul fast float %8224, %8235
  %8239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.f32 %8239, 0
  %8241 = extractvalue %dx.types.CBufRet.f32 %8239, 1
  %8242 = extractvalue %dx.types.CBufRet.f32 %8239, 2
  %8243 = fadd fast float %8236, %8240
  %8244 = fadd fast float %8243, %8229
  %8245 = fadd fast float %8237, %8241
  %8246 = fadd fast float %8245, %8230
  %8247 = fadd fast float %8238, %8242
  %8248 = fadd fast float %8247, %8231
  %8249 = fmul fast float %8244, %238
  %8250 = fmul fast float %8246, %238
  %8251 = fmul fast float %8248, %238
  br label %8252

; <label>:8252                                    ; preds = %8194, %7962
  %8253 = phi float [ %8249, %8194 ], [ %203, %7962 ]
  %8254 = phi float [ %8250, %8194 ], [ %204, %7962 ]
  %8255 = phi float [ %8251, %8194 ], [ %205, %7962 ]
  %8256 = phi float [ %238, %8194 ], [ %107, %7962 ]
  %8257 = phi float [ %8215, %8194 ], [ %7985, %7962 ]
  %8258 = phi float [ %8216, %8194 ], [ %7986, %7962 ]
  %8259 = phi float [ %8217, %8194 ], [ %7987, %7962 ]
  %8260 = phi float [ %8218, %8194 ], [ %7963, %7962 ]
  %8261 = phi float [ %8219, %8194 ], [ %7964, %7962 ]
  %8262 = phi float [ %8220, %8194 ], [ %7965, %7962 ]
  %8263 = phi float [ %8195, %8194 ], [ 1.000000e+00, %7962 ]
  br i1 %7994, label %9418, label %8264

; <label>:8264                                    ; preds = %8252
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 0
  %8267 = extractvalue %dx.types.CBufRet.f32 %8265, 1
  %8268 = extractvalue %dx.types.CBufRet.f32 %8265, 2
  %8269 = extractvalue %dx.types.CBufRet.f32 %8265, 3
  %8270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.f32 %8270, 0
  %8272 = extractvalue %dx.types.CBufRet.f32 %8270, 1
  %8273 = extractvalue %dx.types.CBufRet.f32 %8270, 2
  %8274 = extractvalue %dx.types.CBufRet.f32 %8270, 3
  %8275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8276 = extractvalue %dx.types.CBufRet.f32 %8275, 0
  %8277 = extractvalue %dx.types.CBufRet.f32 %8275, 1
  %8278 = extractvalue %dx.types.CBufRet.f32 %8275, 2
  %8279 = extractvalue %dx.types.CBufRet.f32 %8275, 3
  %8280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8281 = extractvalue %dx.types.CBufRet.f32 %8280, 0
  %8282 = extractvalue %dx.types.CBufRet.f32 %8280, 1
  %8283 = extractvalue %dx.types.CBufRet.f32 %8280, 2
  %8284 = extractvalue %dx.types.CBufRet.f32 %8280, 3
  %8285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8286 = extractvalue %dx.types.CBufRet.f32 %8285, 3
  %8287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8287, 3
  %8289 = extractvalue %dx.types.CBufRet.f32 %8287, 0
  %8290 = extractvalue %dx.types.CBufRet.f32 %8287, 1
  %8291 = extractvalue %dx.types.CBufRet.f32 %8287, 2
  %8292 = fcmp fast olt float %8291, -5.000000e-01
  %8293 = call float @dx.op.dot3.f32(i32 55, float %8253, float %8254, float %8255, float %8253, float %8254, float %8255)  ; Dot3(ax,ay,az,bx,by,bz)
  %8294 = call float @dx.op.unary.f32(i32 25, float %8293)  ; Rsqrt(value)
  %8295 = fmul fast float %8294, %8293
  %8296 = fmul fast float %8294, %8253
  %8297 = fmul fast float %8294, %8254
  %8298 = fmul fast float %8294, %8255
  %8299 = fadd fast float %8295, %8269
  %8300 = call float @dx.op.dot3.f32(i32 55, float %8296, float %8297, float %8298, float %8266, float %8267, float %8268)  ; Dot3(ax,ay,az,bx,by,bz)
  %8301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8302 = extractvalue %dx.types.CBufRet.i32 %8301, 1
  %8303 = and i32 %8302, 1
  %8304 = icmp ne i32 %8303, 0
  %8305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8306 = extractvalue %dx.types.CBufRet.f32 %8305, 2
  %8307 = fcmp fast ogt float %8306, 0.000000e+00
  %8308 = and i1 %8304, %8307
  br i1 %8308, label %8309, label %8715, !dx.controlflow.hints !135

; <label>:8309                                    ; preds = %8264
  %8310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8311 = extractvalue %dx.types.CBufRet.f32 %8310, 3
  %8312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8313 = extractvalue %dx.types.CBufRet.f32 %8312, 2
  %8314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8315 = extractvalue %dx.types.CBufRet.f32 %8314, 2
  %8316 = fsub fast float %8313, %8315
  %8317 = and i32 %8302, 2
  %8318 = extractvalue %dx.types.CBufRet.i32 %8301, 0
  %8319 = call i32 @dx.op.binary.i32(i32 40, i32 %8318, i32 3)  ; UMin(a,b)
  %8320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8321 = extractvalue %dx.types.CBufRet.f32 %8320, 0
  %8322 = extractvalue %dx.types.CBufRet.f32 %8320, 1
  %8323 = extractvalue %dx.types.CBufRet.f32 %8314, 0
  %8324 = extractvalue %dx.types.CBufRet.f32 %8314, 1
  %8325 = fsub fast float %8321, %8323
  %8326 = fsub fast float %8322, %8324
  %8327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8328 = extractvalue %dx.types.CBufRet.f32 %8327, 0
  %8329 = fcmp fast ogt float %8328, 0.000000e+00
  %8330 = fsub fast float -0.000000e+00, %8325
  %8331 = fsub fast float -0.000000e+00, %8326
  %8332 = call float @dx.op.dot2.f32(i32 54, float %8296, float %8297, float %8296, float %8297)  ; Dot2(ax,ay,bx,by)
  %8333 = call float @dx.op.dot2.f32(i32 54, float %8296, float %8297, float %8330, float %8331)  ; Dot2(ax,ay,bx,by)
  %8334 = fmul fast float %8333, 2.000000e+00
  %8335 = call float @dx.op.dot2.f32(i32 54, float %8330, float %8331, float %8330, float %8331)  ; Dot2(ax,ay,bx,by)
  %8336 = fmul fast float %8328, %8328
  %8337 = fsub fast float %8335, %8336
  %8338 = fmul fast float %8334, %8334
  %8339 = fmul fast float %8332, 4.000000e+00
  %8340 = fmul fast float %8339, %8337
  %8341 = fsub fast float %8338, %8340
  %8342 = fcmp fast ogt float %8341, 0.000000e+00
  br i1 %8342, label %8343, label %8358

; <label>:8343                                    ; preds = %8309
  %8344 = fcmp fast ogt float %8334, 0.000000e+00
  %8345 = call float @dx.op.unary.f32(i32 24, float %8341)  ; Sqrt(value)
  %8346 = fsub fast float -0.000000e+00, %8345
  %8347 = select i1 %8344, float %8345, float %8346
  %8348 = fadd fast float %8347, %8334
  %8349 = fmul float %8348, -5.000000e-01
  %8350 = fdiv fast float %8349, %8332
  %8351 = call float @dx.op.binary.f32(i32 35, float %8350, float 0.000000e+00)  ; FMax(a,b)
  %8352 = call float @dx.op.binary.f32(i32 36, float %8295, float %8351)  ; FMin(a,b)
  %8353 = fdiv fast float %8337, %8349
  %8354 = call float @dx.op.binary.f32(i32 35, float %8353, float 0.000000e+00)  ; FMax(a,b)
  %8355 = call float @dx.op.binary.f32(i32 36, float %8295, float %8354)  ; FMin(a,b)
  %8356 = call float @dx.op.binary.f32(i32 36, float %8352, float %8355)  ; FMin(a,b)
  %8357 = call float @dx.op.binary.f32(i32 35, float %8352, float %8355)  ; FMax(a,b)
  br label %8358

; <label>:8358                                    ; preds = %8343, %8309
  %8359 = phi float [ %8357, %8343 ], [ -1.000000e+00, %8309 ]
  %8360 = phi float [ %8356, %8343 ], [ -1.000000e+00, %8309 ]
  %8361 = phi i1 [ true, %8343 ], [ false, %8309 ]
  %8362 = and i1 %8329, %8361
  br i1 %8362, label %8363, label %8365

; <label>:8363                                    ; preds = %8358
  %8364 = fcmp fast oeq float %8360, %8359
  br i1 %8364, label %8668, label %8366

; <label>:8365                                    ; preds = %8358
  br i1 %8329, label %8668, label %8366

; <label>:8366                                    ; preds = %8365, %8363
  %8367 = phi float [ %8295, %8365 ], [ %8359, %8363 ]
  %8368 = phi float [ 0.000000e+00, %8365 ], [ %8360, %8363 ]
  %8369 = icmp ne i32 %8317, 0
  %8370 = fmul fast float %8367, %8298
  %8371 = fadd fast float %8370, %8311
  %8372 = fmul fast float %8371, %8367
  %8373 = select i1 %8369, float 0.000000e+00, float %8372
  %8374 = fcmp fast oeq float %8298, 0.000000e+00
  %8375 = fdiv fast float %8316, %8298
  %8376 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8375)  ; FMax(a,b)
  %8377 = select i1 %8374, float %8367, float %8376
  %8378 = call float @dx.op.binary.f32(i32 36, float %8367, float %8377)  ; FMin(a,b)
  %8379 = fcmp fast ogt float %8298, 0.000000e+00
  %8380 = fcmp fast olt float %8316, 0.000000e+00
  br i1 %8379, label %8381, label %8438

; <label>:8381                                    ; preds = %8366
  %8382 = icmp eq i32 %8317, 0
  br i1 %8380, label %8383, label %8427

; <label>:8383                                    ; preds = %8381
  %8384 = select i1 %8382, float %8367, float 0.000000e+00
  %8385 = fsub fast float -0.000000e+00, %8384
  %8386 = call float @dx.op.unary.f32(i32 6, float %8385)  ; FAbs(value)
  %8387 = fmul fast float %8384, %8298
  %8388 = fadd fast float %8387, %8311
  %8389 = fmul fast float %8386, %8388
  %8390 = fsub fast float %8373, %8389
  %8391 = fsub fast float %8367, %8386
  %8392 = select i1 %8382, float %8391, float 0.000000e+00
  %8393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8394 = extractvalue %dx.types.CBufRet.f32 %8393, 0
  %8395 = extractvalue %dx.types.CBufRet.f32 %8393, 1
  %8396 = extractvalue %dx.types.CBufRet.f32 %8393, 2
  %8397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8398 = extractvalue %dx.types.CBufRet.f32 %8397, 0
  %8399 = extractvalue %dx.types.CBufRet.f32 %8397, 1
  %8400 = extractvalue %dx.types.CBufRet.f32 %8397, 2
  %8401 = extractvalue %dx.types.CBufRet.f32 %8397, 3
  %8402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8402, 3
  %8404 = call float @dx.op.binary.f32(i32 36, float %8390, float %8403)  ; FMin(a,b)
  %8405 = fmul fast float %8401, %8392
  %8406 = call float @dx.op.unary.f32(i32 7, float %8405)  ; Saturate(value)
  %8407 = fsub fast float %8398, %8394
  %8408 = fsub fast float %8399, %8395
  %8409 = fsub fast float %8400, %8396
  %8410 = fmul fast float %8406, %8407
  %8411 = fmul fast float %8406, %8408
  %8412 = fmul fast float %8406, %8409
  %8413 = fadd fast float %8410, %8394
  %8414 = fadd fast float %8411, %8395
  %8415 = fadd fast float %8412, %8396
  %8416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8417 = extractvalue %dx.types.CBufRet.f32 %8416, 0
  %8418 = extractvalue %dx.types.CBufRet.f32 %8416, 1
  %8419 = fadd fast float %8418, %8417
  %8420 = call float @dx.op.unary.f32(i32 7, float %8419)  ; Saturate(value)
  %8421 = extractvalue %dx.types.CBufRet.f32 %8416, 2
  %8422 = extractvalue %dx.types.CBufRet.f32 %8416, 3
  %8423 = fadd fast float %8422, %8421
  %8424 = call float @dx.op.unary.f32(i32 7, float %8423)  ; Saturate(value)
  %8425 = fmul fast float %8420, %8404
  %8426 = fmul fast float %8425, %8424
  br label %8668

; <label>:8427                                    ; preds = %8381
  br i1 %8382, label %8428, label %8449

; <label>:8428                                    ; preds = %8427
  %8429 = call float @dx.op.binary.f32(i32 36, float %8378, float %8368)  ; FMin(a,b)
  %8430 = fsub fast float %8378, %8429
  %8431 = fsub fast float %8430, %8367
  %8432 = call float @dx.op.unary.f32(i32 6, float %8431)  ; FAbs(value)
  %8433 = fadd fast float %8430, %8367
  %8434 = fmul fast float %8433, %8298
  %8435 = fadd fast float %8434, %8311
  %8436 = fmul fast float %8435, %8432
  %8437 = fsub fast float %8373, %8436
  br label %8449

; <label>:8438                                    ; preds = %8366
  br i1 %8380, label %8439, label %8449

; <label>:8439                                    ; preds = %8438
  %8440 = call float @dx.op.binary.f32(i32 35, float %8368, float %8378)  ; FMax(a,b)
  %8441 = icmp eq i32 %8317, 0
  %8442 = select i1 %8441, float %8378, float 0.000000e+00
  %8443 = fsub fast float -0.000000e+00, %8442
  %8444 = call float @dx.op.unary.f32(i32 6, float %8443)  ; FAbs(value)
  %8445 = fmul fast float %8442, %8298
  %8446 = fadd fast float %8445, %8311
  %8447 = fmul fast float %8444, %8446
  %8448 = fsub fast float %8373, %8447
  br label %8449

; <label>:8449                                    ; preds = %8439, %8438, %8428, %8427
  %8450 = phi float [ %8368, %8427 ], [ %8368, %8428 ], [ %8440, %8439 ], [ %8368, %8438 ]
  %8451 = phi float [ 0.000000e+00, %8427 ], [ %8432, %8428 ], [ %8444, %8439 ], [ 0.000000e+00, %8438 ]
  %8452 = phi float [ %8373, %8427 ], [ %8437, %8428 ], [ %8448, %8439 ], [ %8373, %8438 ]
  %8453 = phi float [ %8378, %8427 ], [ %8378, %8428 ], [ %8367, %8439 ], [ %8367, %8438 ]
  %8454 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 0
  store float -1.000000e+00, float* %8454, align 4, !tbaa !121, !noalias !136
  %8455 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 1
  store float -1.000000e+00, float* %8455, align 4, !tbaa !121, !noalias !136
  %8456 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 2
  store float -1.000000e+00, float* %8456, align 4, !tbaa !121, !noalias !136
  %8457 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 0
  store float -1.000000e+00, float* %8457, align 4, !tbaa !121, !noalias !136
  %8458 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 1
  store float -1.000000e+00, float* %8458, align 4, !tbaa !121, !noalias !136
  %8459 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 2
  store float -1.000000e+00, float* %8459, align 4, !tbaa !121, !noalias !136
  %8460 = icmp sgt i32 %8319, 0
  br i1 %8460, label %8461, label %8522

; <label>:8461                                    ; preds = %8449
  br label %8462

; <label>:8462                                    ; preds = %8511, %8461
  %8463 = phi i32 [ %8512, %8511 ], [ 0, %8461 ]
  %8464 = phi i32 [ %8513, %8511 ], [ 0, %8461 ]
  %8465 = add nuw i32 %8464, 171
  %8466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %8465)  ; CBufferLoadLegacy(handle,regIndex)
  %8467 = extractvalue %dx.types.CBufRet.f32 %8466, 0
  %8468 = extractvalue %dx.types.CBufRet.f32 %8466, 1
  %8469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8470 = extractvalue %dx.types.CBufRet.f32 %8469, 0
  %8471 = extractvalue %dx.types.CBufRet.f32 %8469, 1
  %8472 = fsub fast float %8467, %8470
  %8473 = fsub fast float %8468, %8471
  %8474 = extractvalue %dx.types.CBufRet.f32 %8466, 2
  %8475 = fsub fast float -0.000000e+00, %8472
  %8476 = fsub fast float -0.000000e+00, %8473
  %8477 = call float @dx.op.dot2.f32(i32 54, float %8296, float %8297, float %8475, float %8476)  ; Dot2(ax,ay,bx,by)
  %8478 = fmul fast float %8477, 2.000000e+00
  %8479 = call float @dx.op.dot2.f32(i32 54, float %8475, float %8476, float %8475, float %8476)  ; Dot2(ax,ay,bx,by)
  %8480 = fmul fast float %8474, %8474
  %8481 = fsub fast float %8479, %8480
  %8482 = fmul fast float %8478, %8478
  %8483 = fmul fast float %8339, %8481
  %8484 = fsub fast float %8482, %8483
  %8485 = fcmp fast ogt float %8484, 0.000000e+00
  br i1 %8485, label %8486, label %8501

; <label>:8486                                    ; preds = %8462
  %8487 = fcmp fast ogt float %8478, 0.000000e+00
  %8488 = call float @dx.op.unary.f32(i32 24, float %8484)  ; Sqrt(value)
  %8489 = fsub fast float -0.000000e+00, %8488
  %8490 = select i1 %8487, float %8488, float %8489
  %8491 = fadd fast float %8490, %8478
  %8492 = fmul float %8491, -5.000000e-01
  %8493 = fdiv fast float %8492, %8332
  %8494 = call float @dx.op.binary.f32(i32 35, float %8493, float 0.000000e+00)  ; FMax(a,b)
  %8495 = call float @dx.op.binary.f32(i32 36, float %8367, float %8494)  ; FMin(a,b)
  %8496 = fdiv fast float %8481, %8492
  %8497 = call float @dx.op.binary.f32(i32 35, float %8496, float 0.000000e+00)  ; FMax(a,b)
  %8498 = call float @dx.op.binary.f32(i32 36, float %8367, float %8497)  ; FMin(a,b)
  %8499 = call float @dx.op.binary.f32(i32 36, float %8495, float %8498)  ; FMin(a,b)
  %8500 = call float @dx.op.binary.f32(i32 35, float %8495, float %8498)  ; FMax(a,b)
  br label %8501

; <label>:8501                                    ; preds = %8486, %8462
  %8502 = phi float [ %8500, %8486 ], [ -1.000000e+00, %8462 ]
  %8503 = phi float [ %8499, %8486 ], [ -1.000000e+00, %8462 ]
  %8504 = phi i1 [ true, %8486 ], [ false, %8462 ]
  br i1 %8504, label %8505, label %8511

; <label>:8505                                    ; preds = %8501
  %8506 = call float @dx.op.binary.f32(i32 35, float %8450, float %8503)  ; FMax(a,b)
  %8507 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %8464
  store float %8506, float* %8507, align 4, !tbaa !121, !noalias !136
  %8508 = call float @dx.op.binary.f32(i32 35, float %8450, float %8502)  ; FMax(a,b)
  %8509 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8464
  store float %8508, float* %8509, align 4, !tbaa !121, !noalias !136
  %8510 = add nsw i32 %8463, 1
  br label %8511

; <label>:8511                                    ; preds = %8505, %8501
  %8512 = phi i32 [ %8510, %8505 ], [ %8463, %8501 ]
  %8513 = add nuw nsw i32 %8464, 1
  %8514 = icmp eq i32 %8513, %8319
  br i1 %8514, label %8515, label %8462

; <label>:8515                                    ; preds = %8511
  %8516 = load float, float* %8456, align 4, !tbaa !121, !alias.scope !152, !noalias !155
  %8517 = load float, float* %8455, align 4, !tbaa !121, !alias.scope !158, !noalias !159
  %8518 = load float, float* %8454, align 4, !tbaa !121, !alias.scope !160, !noalias !161
  %8519 = load float, float* %8459, align 4, !tbaa !121, !alias.scope !162, !noalias !165
  %8520 = load float, float* %8458, align 4, !tbaa !121, !alias.scope !168, !noalias !169
  %8521 = load float, float* %8457, align 4, !tbaa !121, !alias.scope !170, !noalias !171
  br label %8522

; <label>:8522                                    ; preds = %8515, %8449
  %8523 = phi float [ -1.000000e+00, %8449 ], [ %8521, %8515 ]
  %8524 = phi float [ -1.000000e+00, %8449 ], [ %8520, %8515 ]
  %8525 = phi float [ -1.000000e+00, %8449 ], [ %8519, %8515 ]
  %8526 = phi float [ -1.000000e+00, %8449 ], [ %8518, %8515 ]
  %8527 = phi float [ -1.000000e+00, %8449 ], [ %8517, %8515 ]
  %8528 = phi float [ -1.000000e+00, %8449 ], [ %8516, %8515 ]
  %8529 = phi i32 [ 0, %8449 ], [ %8512, %8515 ]
  %8530 = call float @dx.op.binary.f32(i32 36, float %8527, float %8528)  ; FMin(a,b)
  %8531 = call float @dx.op.binary.f32(i32 36, float %8526, float %8530)  ; FMin(a,b)
  %8532 = call float @dx.op.binary.f32(i32 35, float %8526, float %8527)  ; FMax(a,b)
  %8533 = call float @dx.op.binary.f32(i32 36, float %8532, float %8528)  ; FMin(a,b)
  %8534 = call float @dx.op.binary.f32(i32 36, float %8526, float %8527)  ; FMin(a,b)
  %8535 = call float @dx.op.binary.f32(i32 35, float %8534, float %8533)  ; FMax(a,b)
  %8536 = call float @dx.op.binary.f32(i32 35, float %8527, float %8528)  ; FMax(a,b)
  %8537 = call float @dx.op.binary.f32(i32 35, float %8526, float %8536)  ; FMax(a,b)
  store float %8531, float* %8454, align 4, !tbaa !121, !alias.scope !160, !noalias !161
  store float %8535, float* %8455, align 4, !tbaa !121, !alias.scope !158, !noalias !159
  store float %8537, float* %8456, align 4, !tbaa !121, !alias.scope !152, !noalias !155
  %8538 = call float @dx.op.binary.f32(i32 36, float %8524, float %8525)  ; FMin(a,b)
  %8539 = call float @dx.op.binary.f32(i32 36, float %8523, float %8538)  ; FMin(a,b)
  %8540 = call float @dx.op.binary.f32(i32 35, float %8523, float %8524)  ; FMax(a,b)
  %8541 = call float @dx.op.binary.f32(i32 36, float %8540, float %8525)  ; FMin(a,b)
  %8542 = call float @dx.op.binary.f32(i32 36, float %8523, float %8524)  ; FMin(a,b)
  %8543 = call float @dx.op.binary.f32(i32 35, float %8542, float %8541)  ; FMax(a,b)
  %8544 = call float @dx.op.binary.f32(i32 35, float %8524, float %8525)  ; FMax(a,b)
  %8545 = call float @dx.op.binary.f32(i32 35, float %8523, float %8544)  ; FMax(a,b)
  store float %8539, float* %8457, align 4, !tbaa !121, !alias.scope !170, !noalias !171
  store float %8543, float* %8458, align 4, !tbaa !121, !alias.scope !168, !noalias !169
  store float %8545, float* %8459, align 4, !tbaa !121, !alias.scope !162, !noalias !165
  %8546 = sub nsw i32 3, %8529
  %8547 = icmp sgt i32 %8546, 2
  br i1 %8547, label %8548, label %8586

; <label>:8548                                    ; preds = %8522
  %8549 = icmp eq i32 %8317, 0
  %8550 = fsub fast float %8367, %8451
  %8551 = select i1 %8549, float %8550, float %8451
  %8552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8553 = extractvalue %dx.types.CBufRet.f32 %8552, 0
  %8554 = extractvalue %dx.types.CBufRet.f32 %8552, 1
  %8555 = extractvalue %dx.types.CBufRet.f32 %8552, 2
  %8556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8557 = extractvalue %dx.types.CBufRet.f32 %8556, 0
  %8558 = extractvalue %dx.types.CBufRet.f32 %8556, 1
  %8559 = extractvalue %dx.types.CBufRet.f32 %8556, 2
  %8560 = extractvalue %dx.types.CBufRet.f32 %8556, 3
  %8561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8562 = extractvalue %dx.types.CBufRet.f32 %8561, 3
  %8563 = call float @dx.op.binary.f32(i32 36, float %8452, float %8562)  ; FMin(a,b)
  %8564 = fmul fast float %8560, %8551
  %8565 = call float @dx.op.unary.f32(i32 7, float %8564)  ; Saturate(value)
  %8566 = fsub fast float %8557, %8553
  %8567 = fsub fast float %8558, %8554
  %8568 = fsub fast float %8559, %8555
  %8569 = fmul fast float %8565, %8566
  %8570 = fmul fast float %8565, %8567
  %8571 = fmul fast float %8565, %8568
  %8572 = fadd fast float %8569, %8553
  %8573 = fadd fast float %8570, %8554
  %8574 = fadd fast float %8571, %8555
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 0
  %8577 = extractvalue %dx.types.CBufRet.f32 %8575, 1
  %8578 = fadd fast float %8577, %8576
  %8579 = call float @dx.op.unary.f32(i32 7, float %8578)  ; Saturate(value)
  %8580 = extractvalue %dx.types.CBufRet.f32 %8575, 2
  %8581 = extractvalue %dx.types.CBufRet.f32 %8575, 3
  %8582 = fadd fast float %8581, %8580
  %8583 = call float @dx.op.unary.f32(i32 7, float %8582)  ; Saturate(value)
  %8584 = fmul fast float %8579, %8563
  %8585 = fmul fast float %8584, %8583
  br label %8668

; <label>:8586                                    ; preds = %8522
  %8587 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %8546
  %8588 = load float, float* %8587, align 4, !tbaa !121, !noalias !136
  %8589 = fcmp fast olt float %8588, %8453
  %8590 = icmp sgt i32 %8529, 0
  %8591 = and i1 %8590, %8589
  br i1 %8591, label %8592, label %8629

; <label>:8592                                    ; preds = %8586
  br label %8593

; <label>:8593                                    ; preds = %8622, %8592
  %8594 = phi float [ %8623, %8622 ], [ %8451, %8592 ]
  %8595 = phi float [ %8624, %8622 ], [ %8452, %8592 ]
  %8596 = phi float [ %8604, %8622 ], [ %8588, %8592 ]
  %8597 = phi i32 [ %8601, %8622 ], [ %8546, %8592 ]
  %8598 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8597
  %8599 = load float, float* %8598, align 4, !tbaa !121, !noalias !136
  %8600 = icmp slt i32 %8597, 2
  %8601 = add nsw i32 %8597, 1
  %8602 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %8601
  %8603 = load float, float* %8602, align 4, !tbaa !121, !noalias !136
  %8604 = select i1 %8600, float %8603, float %8367
  %8605 = call float @dx.op.binary.f32(i32 36, float %8604, float %8599)  ; FMin(a,b)
  %8606 = call float @dx.op.binary.f32(i32 36, float %8453, float %8605)  ; FMin(a,b)
  %8607 = icmp eq i32 %8317, 0
  %8608 = fadd fast float %8606, %8596
  %8609 = fmul fast float %8608, %8298
  %8610 = fadd fast float %8609, %8311
  br i1 %8607, label %8616, label %8611

; <label>:8611                                    ; preds = %8593
  %8612 = fsub fast float %8606, %8596
  %8613 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8612)  ; FMax(a,b)
  %8614 = fmul fast float %8613, %8610
  %8615 = fadd fast float %8614, %8595
  br label %8622

; <label>:8616                                    ; preds = %8593
  %8617 = fsub fast float %8596, %8606
  %8618 = call float @dx.op.unary.f32(i32 6, float %8617)  ; FAbs(value)
  %8619 = fadd fast float %8618, %8594
  %8620 = fmul fast float %8618, %8610
  %8621 = fsub fast float %8595, %8620
  br label %8622

; <label>:8622                                    ; preds = %8616, %8611
  %8623 = phi float [ %8613, %8611 ], [ %8619, %8616 ]
  %8624 = phi float [ %8615, %8611 ], [ %8621, %8616 ]
  %8625 = fcmp fast olt float %8604, %8453
  %8626 = icmp slt i32 %8601, 3
  %8627 = and i1 %8626, %8625
  br i1 %8627, label %8593, label %8628

; <label>:8628                                    ; preds = %8622
  br label %8629

; <label>:8629                                    ; preds = %8628, %8586
  %8630 = phi float [ %8451, %8586 ], [ %8623, %8628 ]
  %8631 = phi float [ %8452, %8586 ], [ %8624, %8628 ]
  %8632 = fsub fast float %8367, %8630
  %8633 = select i1 %8369, float %8630, float %8632
  %8634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8635 = extractvalue %dx.types.CBufRet.f32 %8634, 0
  %8636 = extractvalue %dx.types.CBufRet.f32 %8634, 1
  %8637 = extractvalue %dx.types.CBufRet.f32 %8634, 2
  %8638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.f32 %8638, 0
  %8640 = extractvalue %dx.types.CBufRet.f32 %8638, 1
  %8641 = extractvalue %dx.types.CBufRet.f32 %8638, 2
  %8642 = extractvalue %dx.types.CBufRet.f32 %8638, 3
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 3
  %8645 = call float @dx.op.binary.f32(i32 36, float %8631, float %8644)  ; FMin(a,b)
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
  %8657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br label %8668

; <label>:8668                                    ; preds = %8629, %8548, %8383, %8365, %8363
  %8669 = phi float [ %8392, %8383 ], [ %8551, %8548 ], [ %8633, %8629 ], [ 0.000000e+00, %8363 ], [ 0.000000e+00, %8365 ]
  %8670 = phi float [ %8426, %8383 ], [ %8585, %8548 ], [ %8667, %8629 ], [ 0.000000e+00, %8363 ], [ 0.000000e+00, %8365 ]
  %8671 = phi float [ %8413, %8383 ], [ %8572, %8548 ], [ %8654, %8629 ], [ 0.000000e+00, %8363 ], [ 0.000000e+00, %8365 ]
  %8672 = phi float [ %8414, %8383 ], [ %8573, %8548 ], [ %8655, %8629 ], [ 0.000000e+00, %8363 ], [ 0.000000e+00, %8365 ]
  %8673 = phi float [ %8415, %8383 ], [ %8574, %8548 ], [ %8656, %8629 ], [ 0.000000e+00, %8363 ], [ 0.000000e+00, %8365 ]
  %8674 = fmul fast float %8306, %8670
  %8675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8676 = extractvalue %dx.types.CBufRet.f32 %8675, 2
  %8677 = fsub fast float %8313, %8676
  %8678 = fcmp fast olt float %8674, -2.000000e+01
  %8679 = call float @dx.op.unary.f32(i32 21, float %8674)  ; Exp(value)
  %8680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8681 = extractvalue %dx.types.CBufRet.f32 %8680, 2
  %8682 = extractvalue %dx.types.CBufRet.f32 %8680, 3
  %8683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8684 = extractvalue %dx.types.CBufRet.f32 %8683, 2
  %8685 = fmul fast float %8682, %8677
  %8686 = call float @dx.op.unary.f32(i32 7, float %8685)  ; Saturate(value)
  %8687 = fsub fast float 1.000000e+00, %8686
  %8688 = fmul fast float %8298, 5.000000e-01
  %8689 = fadd fast float %8688, 5.000000e-01
  %8690 = call float @dx.op.unary.f32(i32 7, float %8689)  ; Saturate(value)
  %8691 = fsub fast float 1.000000e+00, %8690
  %8692 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8687)  ; FMax(a,b)
  %8693 = fdiv fast float %8691, %8692
  %8694 = fsub fast float %8677, %8255
  %8695 = call float @dx.op.unary.f32(i32 6, float %8694)  ; FAbs(value)
  %8696 = fmul fast float %8695, %8681
  %8697 = call float @dx.op.unary.f32(i32 7, float %8693)  ; Saturate(value)
  %8698 = fsub fast float 1.000000e+00, %8696
  %8699 = fmul fast float %8698, %8697
  %8700 = fadd fast float %8699, %8696
  %8701 = fmul fast float %8684, %8677
  %8702 = call float @dx.op.unary.f32(i32 7, float %8701)  ; Saturate(value)
  %8703 = fsub fast float 1.000000e+00, %8700
  %8704 = fmul fast float %8703, %8702
  %8705 = fadd fast float %8704, %8700
  %8706 = call float @dx.op.unary.f32(i32 7, float %8705)  ; Saturate(value)
  %8707 = fadd fast float %8679, -1.000000e+00
  %8708 = select i1 %8678, float -1.000000e+00, float %8707
  %8709 = fmul fast float %8706, %8708
  %8710 = fadd fast float %8709, 1.000000e+00
  %8711 = fsub fast float -0.000000e+00, %8709
  %8712 = fmul fast float %8671, %8711
  %8713 = fmul fast float %8672, %8711
  %8714 = fmul fast float %8673, %8711
  br label %8715

; <label>:8715                                    ; preds = %8668, %8264
  %8716 = phi float [ %8669, %8668 ], [ 0.000000e+00, %8264 ]
  %8717 = phi float [ %8710, %8668 ], [ 1.000000e+00, %8264 ]
  %8718 = phi float [ %8712, %8668 ], [ 0.000000e+00, %8264 ]
  %8719 = phi float [ %8713, %8668 ], [ 0.000000e+00, %8264 ]
  %8720 = phi float [ %8714, %8668 ], [ 0.000000e+00, %8264 ]
  %8721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8722 = extractvalue %dx.types.CBufRet.f32 %8721, 1
  %8723 = fsub fast float 1.000000e+00, %8717
  %8724 = fmul fast float %8723, %8299
  %8725 = fmul fast float %8724, %8722
  %8726 = fsub fast float %8299, %8725
  br i1 %8292, label %8727, label %8756, !dx.controlflow.hints !172

; <label>:8727                                    ; preds = %8715
  %8728 = fmul fast float %8300, %8289
  %8729 = fadd fast float %8728, %8290
  %8730 = call float @dx.op.unary.f32(i32 7, float %8729)  ; Saturate(value)
  %8731 = fmul fast float %8271, %8726
  %8732 = fsub fast float -0.000000e+00, %8731
  %8733 = fmul fast float %8272, %8726
  %8734 = fsub fast float -0.000000e+00, %8733
  %8735 = call float @dx.op.unary.f32(i32 21, float %8732)  ; Exp(value)
  %8736 = call float @dx.op.unary.f32(i32 21, float %8734)  ; Exp(value)
  %8737 = call float @dx.op.binary.f32(i32 35, float %8279, float %8735)  ; FMax(a,b)
  %8738 = call float @dx.op.binary.f32(i32 35, float %8279, float %8736)  ; FMax(a,b)
  %8739 = fsub fast float %8738, %8737
  %8740 = fmul fast float %8739, %8730
  %8741 = fadd fast float %8740, %8737
  %8742 = call float @dx.op.unary.f32(i32 7, float %8741)  ; Saturate(value)
  %8743 = fsub fast float %8276, %8281
  %8744 = fsub fast float %8277, %8282
  %8745 = fsub fast float %8278, %8283
  %8746 = fmul fast float %8730, %8743
  %8747 = fmul fast float %8730, %8744
  %8748 = fmul fast float %8730, %8745
  %8749 = fadd fast float %8746, %8281
  %8750 = fadd fast float %8747, %8282
  %8751 = fadd fast float %8748, %8283
  %8752 = fsub fast float 1.000000e+00, %8742
  %8753 = fmul fast float %8752, %8749
  %8754 = fmul fast float %8752, %8750
  %8755 = fmul fast float %8752, %8751
  br label %8815

; <label>:8756                                    ; preds = %8715
  %8757 = fmul fast float %8726, %8288
  %8758 = call float @dx.op.unary.f32(i32 7, float %8757)  ; Saturate(value)
  %8759 = fsub fast float 2.000000e+00, %8758
  %8760 = fmul fast float %8758, 9.921875e-01
  %8761 = fmul fast float %8760, %8759
  %8762 = fadd fast float %8761, 3.906250e-03
  %8763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %51, float %8762, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8764 = extractvalue %dx.types.ResRet.f32 %8763, 0
  %8765 = fsub fast float %8758, %8764
  %8766 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8765)  ; FMax(a,b)
  %8767 = fmul fast float %8274, %8255
  %8768 = call float @dx.op.unary.f32(i32 6, float %8767)  ; FAbs(value)
  %8769 = fcmp fast ogt float %8768, 0x3EB0C6F7A0000000
  br i1 %8769, label %8770, label %8776, !dx.controlflow.hints !173

; <label>:8770                                    ; preds = %8756
  %8771 = fmul fast float %8767, 0xBFF7154760000000
  %8772 = call float @dx.op.unary.f32(i32 21, float %8771)  ; Exp(value)
  %8773 = fsub fast float 1.000000e+00, %8772
  %8774 = fdiv fast float %8773, %8767
  %8775 = fmul fast float %8774, %8284
  br label %8776

; <label>:8776                                    ; preds = %8770, %8756
  %8777 = phi float [ %8775, %8770 ], [ %8284, %8756 ]
  %8778 = fadd fast float %8777, %8286
  %8779 = fmul fast float %8778, %8766
  %8780 = fmul fast float %8271, %8779
  %8781 = fsub fast float -0.000000e+00, %8780
  %8782 = fmul fast float %8272, %8779
  %8783 = fsub fast float -0.000000e+00, %8782
  %8784 = fmul fast float %8273, %8779
  %8785 = fsub fast float -0.000000e+00, %8784
  %8786 = call float @dx.op.unary.f32(i32 21, float %8781)  ; Exp(value)
  %8787 = call float @dx.op.unary.f32(i32 21, float %8783)  ; Exp(value)
  %8788 = call float @dx.op.unary.f32(i32 21, float %8785)  ; Exp(value)
  %8789 = fmul fast float %8300, %8300
  %8790 = fadd fast float %8789, 1.000000e+00
  %8791 = fmul fast float %8790, 0x3FAE8EC8A0000000
  %8792 = fmul fast float %8791, %8281
  %8793 = fmul fast float %8791, %8282
  %8794 = fmul fast float %8791, %8283
  %8795 = fmul fast float %8300, %8279
  %8796 = fsub fast float 1.000000e+00, %8795
  %8797 = fmul fast float %8279, %8279
  %8798 = fsub fast float 1.000000e+00, %8797
  %8799 = fmul fast float %8798, 0x3FB45F3060000000
  %8800 = fmul fast float %8796, %8796
  %8801 = fdiv fast float 1.000000e+00, %8800
  %8802 = fmul fast float %8799, %8801
  %8803 = fmul fast float %8802, %8276
  %8804 = fmul fast float %8802, %8277
  %8805 = fmul fast float %8802, %8278
  %8806 = fadd fast float %8803, %8792
  %8807 = fadd fast float %8804, %8793
  %8808 = fadd fast float %8805, %8794
  %8809 = fsub fast float 1.000000e+00, %8786
  %8810 = fsub fast float 1.000000e+00, %8787
  %8811 = fsub fast float 1.000000e+00, %8788
  %8812 = fmul fast float %8806, %8809
  %8813 = fmul fast float %8807, %8810
  %8814 = fmul fast float %8808, %8811
  br label %8815

; <label>:8815                                    ; preds = %8776, %8727
  %8816 = phi float [ %8753, %8727 ], [ %8812, %8776 ]
  %8817 = phi float [ %8754, %8727 ], [ %8813, %8776 ]
  %8818 = phi float [ %8755, %8727 ], [ %8814, %8776 ]
  %8819 = phi float [ %8742, %8727 ], [ %8786, %8776 ]
  %8820 = phi float [ %8742, %8727 ], [ %8787, %8776 ]
  %8821 = phi float [ %8742, %8727 ], [ %8788, %8776 ]
  br i1 %8308, label %8822, label %9020, !dx.controlflow.hints !174

; <label>:8822                                    ; preds = %8815
  %8823 = extractvalue %dx.types.CBufRet.f32 %8721, 0
  %8824 = fmul fast float %8823, %8723
  %8825 = fsub fast float %8718, %8816
  %8826 = fsub fast float %8719, %8817
  %8827 = fsub fast float %8720, %8818
  %8828 = fmul fast float %8824, %8825
  %8829 = fmul fast float %8824, %8826
  %8830 = fmul fast float %8824, %8827
  %8831 = fadd fast float %8828, %8816
  %8832 = fadd fast float %8829, %8817
  %8833 = fadd fast float %8830, %8818
  %8834 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8819)  ; FMax(a,b)
  %8835 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8820)  ; FMax(a,b)
  %8836 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8821)  ; FMax(a,b)
  %8837 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8717)  ; FMax(a,b)
  %8838 = call float @dx.op.binary.f32(i32 35, float %8716, float %8726)  ; FMax(a,b)
  %8839 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8838)  ; FMax(a,b)
  %8840 = fdiv fast float %8716, %8839
  %8841 = call float @dx.op.unary.f32(i32 7, float %8840)  ; Saturate(value)
  %8842 = fdiv fast float %8726, %8839
  %8843 = call float @dx.op.unary.f32(i32 7, float %8842)  ; Saturate(value)
  %8844 = fcmp fast une float %8837, 1.000000e+00
  br i1 %8844, label %8845, label %8858, !dx.controlflow.hints !175

; <label>:8845                                    ; preds = %8822
  %8846 = call float @dx.op.unary.f32(i32 23, float %8837)  ; Log(value)
  %8847 = fmul fast float %8846, 0x3FE62E4300000000
  %8848 = fmul fast float %8718, %8847
  %8849 = fsub fast float -0.000000e+00, %8848
  %8850 = fmul fast float %8719, %8847
  %8851 = fsub fast float -0.000000e+00, %8850
  %8852 = fmul fast float %8720, %8847
  %8853 = fsub fast float -0.000000e+00, %8852
  %8854 = fsub fast float 1.000000e+00, %8837
  %8855 = fdiv fast float %8849, %8854
  %8856 = fdiv fast float %8851, %8854
  %8857 = fdiv fast float %8853, %8854
  br label %8858

; <label>:8858                                    ; preds = %8845, %8822
  %8859 = phi float [ %8855, %8845 ], [ %8718, %8822 ]
  %8860 = phi float [ %8856, %8845 ], [ %8719, %8822 ]
  %8861 = phi float [ %8857, %8845 ], [ %8720, %8822 ]
  %8862 = phi float [ %8847, %8845 ], [ 0.000000e+00, %8822 ]
  %8863 = fcmp fast une float %8834, 1.000000e+00
  br i1 %8863, label %8864, label %8871, !dx.controlflow.hints !176

; <label>:8864                                    ; preds = %8858
  %8865 = call float @dx.op.unary.f32(i32 23, float %8834)  ; Log(value)
  %8866 = fmul fast float %8865, 0x3FE62E4300000000
  %8867 = fmul fast float %8831, %8866
  %8868 = fsub fast float -0.000000e+00, %8867
  %8869 = fsub fast float 1.000000e+00, %8834
  %8870 = fdiv fast float %8868, %8869
  br label %8871

; <label>:8871                                    ; preds = %8864, %8858
  %8872 = phi float [ %8870, %8864 ], [ %8831, %8858 ]
  %8873 = phi float [ %8866, %8864 ], [ 0.000000e+00, %8858 ]
  %8874 = fcmp fast une float %8835, 1.000000e+00
  br i1 %8874, label %8875, label %8882, !dx.controlflow.hints !176

; <label>:8875                                    ; preds = %8871
  %8876 = call float @dx.op.unary.f32(i32 23, float %8835)  ; Log(value)
  %8877 = fmul fast float %8876, 0x3FE62E4300000000
  %8878 = fmul fast float %8832, %8877
  %8879 = fsub fast float -0.000000e+00, %8878
  %8880 = fsub fast float 1.000000e+00, %8835
  %8881 = fdiv fast float %8879, %8880
  br label %8882

; <label>:8882                                    ; preds = %8875, %8871
  %8883 = phi float [ %8881, %8875 ], [ %8832, %8871 ]
  %8884 = phi float [ %8877, %8875 ], [ 0.000000e+00, %8871 ]
  %8885 = fcmp fast une float %8836, 1.000000e+00
  br i1 %8885, label %8886, label %8893, !dx.controlflow.hints !176

; <label>:8886                                    ; preds = %8882
  %8887 = call float @dx.op.unary.f32(i32 23, float %8836)  ; Log(value)
  %8888 = fmul fast float %8887, 0x3FE62E4300000000
  %8889 = fmul fast float %8833, %8888
  %8890 = fsub fast float -0.000000e+00, %8889
  %8891 = fsub fast float 1.000000e+00, %8836
  %8892 = fdiv fast float %8890, %8891
  br label %8893

; <label>:8893                                    ; preds = %8886, %8882
  %8894 = phi float [ %8892, %8886 ], [ %8833, %8882 ]
  %8895 = phi float [ %8888, %8886 ], [ 0.000000e+00, %8882 ]
  %8896 = fmul fast float %8859, %8843
  %8897 = fmul fast float %8860, %8843
  %8898 = fmul fast float %8861, %8843
  %8899 = fmul fast float %8862, %8843
  %8900 = fmul fast float %8872, %8841
  %8901 = fmul fast float %8883, %8841
  %8902 = fmul fast float %8894, %8841
  %8903 = fmul fast float %8873, %8841
  %8904 = fmul fast float %8884, %8841
  %8905 = fmul fast float %8895, %8841
  %8906 = fadd fast float %8900, %8896
  %8907 = fadd fast float %8901, %8897
  %8908 = fadd fast float %8902, %8898
  %8909 = fadd fast float %8903, %8899
  %8910 = fadd fast float %8904, %8899
  %8911 = fadd fast float %8905, %8899
  %8912 = fcmp fast une float %8909, 0.000000e+00
  br i1 %8912, label %8913, label %8920, !dx.controlflow.hints !177

; <label>:8913                                    ; preds = %8893
  %8914 = fmul fast float %8909, 0x3FF7154760000000
  %8915 = call float @dx.op.unary.f32(i32 21, float %8914)  ; Exp(value)
  %8916 = fsub fast float 1.000000e+00, %8915
  %8917 = fmul fast float %8906, %8916
  %8918 = fsub fast float -0.000000e+00, %8917
  %8919 = fdiv fast float %8918, %8909
  br label %8920

; <label>:8920                                    ; preds = %8913, %8893
  %8921 = phi float [ %8915, %8913 ], [ 1.000000e+00, %8893 ]
  %8922 = phi float [ %8919, %8913 ], [ %8906, %8893 ]
  %8923 = fcmp fast une float %8910, 0.000000e+00
  br i1 %8923, label %8924, label %8931, !dx.controlflow.hints !177

; <label>:8924                                    ; preds = %8920
  %8925 = fmul fast float %8910, 0x3FF7154760000000
  %8926 = call float @dx.op.unary.f32(i32 21, float %8925)  ; Exp(value)
  %8927 = fsub fast float 1.000000e+00, %8926
  %8928 = fmul fast float %8907, %8927
  %8929 = fsub fast float -0.000000e+00, %8928
  %8930 = fdiv fast float %8929, %8910
  br label %8931

; <label>:8931                                    ; preds = %8924, %8920
  %8932 = phi float [ %8926, %8924 ], [ 1.000000e+00, %8920 ]
  %8933 = phi float [ %8930, %8924 ], [ %8907, %8920 ]
  %8934 = fcmp fast une float %8911, 0.000000e+00
  br i1 %8934, label %8935, label %8942, !dx.controlflow.hints !177

; <label>:8935                                    ; preds = %8931
  %8936 = fmul fast float %8911, 0x3FF7154760000000
  %8937 = call float @dx.op.unary.f32(i32 21, float %8936)  ; Exp(value)
  %8938 = fsub fast float 1.000000e+00, %8937
  %8939 = fmul fast float %8908, %8938
  %8940 = fsub fast float -0.000000e+00, %8939
  %8941 = fdiv fast float %8940, %8911
  br label %8942

; <label>:8942                                    ; preds = %8935, %8931
  %8943 = phi float [ %8937, %8935 ], [ 1.000000e+00, %8931 ]
  %8944 = phi float [ %8941, %8935 ], [ %8908, %8931 ]
  %8945 = fcmp fast ogt float %8841, %8843
  br i1 %8945, label %8946, label %8966

; <label>:8946                                    ; preds = %8942
  %8947 = fsub fast float 1.000000e+00, %8843
  %8948 = fmul fast float %8859, %8947
  %8949 = fmul fast float %8860, %8947
  %8950 = fmul fast float %8861, %8947
  %8951 = fmul fast float %8862, %8947
  %8952 = fcmp fast une float %8951, 0.000000e+00
  br i1 %8952, label %8953, label %9004, !dx.controlflow.hints !178

; <label>:8953                                    ; preds = %8946
  %8954 = fmul fast float %8951, 0x3FF7154760000000
  %8955 = call float @dx.op.unary.f32(i32 21, float %8954)  ; Exp(value)
  %8956 = fsub fast float 1.000000e+00, %8955
  %8957 = fmul fast float %8948, %8956
  %8958 = fsub fast float -0.000000e+00, %8957
  %8959 = fmul fast float %8949, %8956
  %8960 = fsub fast float -0.000000e+00, %8959
  %8961 = fmul fast float %8950, %8956
  %8962 = fsub fast float -0.000000e+00, %8961
  %8963 = fdiv fast float %8958, %8951
  %8964 = fdiv fast float %8960, %8951
  %8965 = fdiv fast float %8962, %8951
  br label %9004

; <label>:8966                                    ; preds = %8942
  %8967 = fsub fast float 1.000000e+00, %8841
  %8968 = fmul fast float %8872, %8967
  %8969 = fmul fast float %8883, %8967
  %8970 = fmul fast float %8894, %8967
  %8971 = fmul fast float %8873, %8967
  %8972 = fmul fast float %8884, %8967
  %8973 = fmul fast float %8895, %8967
  %8974 = fcmp fast une float %8971, 0.000000e+00
  br i1 %8974, label %8975, label %8982, !dx.controlflow.hints !177

; <label>:8975                                    ; preds = %8966
  %8976 = fmul fast float %8971, 0x3FF7154760000000
  %8977 = call float @dx.op.unary.f32(i32 21, float %8976)  ; Exp(value)
  %8978 = fsub fast float 1.000000e+00, %8977
  %8979 = fmul fast float %8968, %8978
  %8980 = fsub fast float -0.000000e+00, %8979
  %8981 = fdiv fast float %8980, %8971
  br label %8982

; <label>:8982                                    ; preds = %8975, %8966
  %8983 = phi float [ %8981, %8975 ], [ %8968, %8966 ]
  %8984 = phi float [ %8977, %8975 ], [ 1.000000e+00, %8966 ]
  %8985 = fcmp fast une float %8972, 0.000000e+00
  br i1 %8985, label %8986, label %8993, !dx.controlflow.hints !177

; <label>:8986                                    ; preds = %8982
  %8987 = fmul fast float %8972, 0x3FF7154760000000
  %8988 = call float @dx.op.unary.f32(i32 21, float %8987)  ; Exp(value)
  %8989 = fsub fast float 1.000000e+00, %8988
  %8990 = fmul fast float %8969, %8989
  %8991 = fsub fast float -0.000000e+00, %8990
  %8992 = fdiv fast float %8991, %8972
  br label %8993

; <label>:8993                                    ; preds = %8986, %8982
  %8994 = phi float [ %8992, %8986 ], [ %8969, %8982 ]
  %8995 = phi float [ %8988, %8986 ], [ 1.000000e+00, %8982 ]
  %8996 = fcmp fast une float %8973, 0.000000e+00
  br i1 %8996, label %8997, label %9004, !dx.controlflow.hints !177

; <label>:8997                                    ; preds = %8993
  %8998 = fmul fast float %8973, 0x3FF7154760000000
  %8999 = call float @dx.op.unary.f32(i32 21, float %8998)  ; Exp(value)
  %9000 = fsub fast float 1.000000e+00, %8999
  %9001 = fmul fast float %8970, %9000
  %9002 = fsub fast float -0.000000e+00, %9001
  %9003 = fdiv fast float %9002, %8973
  br label %9004

; <label>:9004                                    ; preds = %8997, %8993, %8953, %8946
  %9005 = phi float [ %9003, %8997 ], [ %8965, %8953 ], [ %8950, %8946 ], [ %8970, %8993 ]
  %9006 = phi float [ %8994, %8997 ], [ %8964, %8953 ], [ %8949, %8946 ], [ %8994, %8993 ]
  %9007 = phi float [ %8983, %8997 ], [ %8963, %8953 ], [ %8948, %8946 ], [ %8983, %8993 ]
  %9008 = phi float [ %8999, %8997 ], [ %8955, %8953 ], [ 1.000000e+00, %8946 ], [ 1.000000e+00, %8993 ]
  %9009 = phi float [ %8995, %8997 ], [ %8955, %8953 ], [ 1.000000e+00, %8946 ], [ %8995, %8993 ]
  %9010 = phi float [ %8984, %8997 ], [ %8955, %8953 ], [ 1.000000e+00, %8946 ], [ %8984, %8993 ]
  %9011 = fmul fast float %9010, %8922
  %9012 = fmul fast float %9009, %8933
  %9013 = fmul fast float %9008, %8944
  %9014 = fadd fast float %9011, %9007
  %9015 = fadd fast float %9012, %9006
  %9016 = fadd fast float %9013, %9005
  %9017 = fmul fast float %9010, %8921
  %9018 = fmul fast float %9009, %8932
  %9019 = fmul fast float %9008, %8943
  br label %9020

; <label>:9020                                    ; preds = %9004, %8815
  %9021 = phi float [ %9019, %9004 ], [ %8821, %8815 ]
  %9022 = phi float [ %9018, %9004 ], [ %8820, %8815 ]
  %9023 = phi float [ %9017, %9004 ], [ %8819, %8815 ]
  %9024 = phi float [ %9016, %9004 ], [ %8818, %8815 ]
  %9025 = phi float [ %9015, %9004 ], [ %8817, %8815 ]
  %9026 = phi float [ %9014, %9004 ], [ %8816, %8815 ]
  %9027 = fmul fast float %9026, %7972
  %9028 = fmul fast float %9025, %7972
  %9029 = fmul fast float %9024, %7972
  %9030 = fmul fast float %9023, %8263
  %9031 = call float @dx.op.dot3.f32(i32 55, float %9023, float %9022, float %9021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9032 = call float @dx.op.dot3.f32(i32 55, float %9027, float %9028, float %9029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9033 = select i1 %275, float %9031, float %9023
  %9034 = select i1 %275, float %9031, float %9022
  %9035 = select i1 %275, float 1.000000e+00, float %9021
  %9036 = select i1 %275, float %9032, float %9027
  %9037 = select i1 %275, float 0.000000e+00, float %9028
  %9038 = select i1 %275, float 0.000000e+00, float %9029
  %9039 = fmul fast float %9033, %8257
  %9040 = fmul fast float %9034, %8258
  %9041 = fmul fast float %9035, %8259
  %9042 = fadd fast float %9039, %9036
  %9043 = fadd fast float %9040, %9037
  %9044 = fadd fast float %9038, %9041
  %9045 = fmul fast float %9033, %8260
  %9046 = fmul fast float %9034, %8261
  %9047 = fmul fast float %9035, %8262
  %9048 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.i32 %9048, 0
  %9050 = icmp eq i32 %9049, 0
  br i1 %9050, label %9418, label %9051, !dx.controlflow.hints !179

; <label>:9051                                    ; preds = %9020
  %9052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9053 = extractvalue %dx.types.CBufRet.f32 %9052, 2
  %9054 = extractvalue %dx.types.CBufRet.f32 %9052, 3
  %9055 = fmul fast float %9053, %120
  %9056 = fmul fast float %9054, %121
  %9057 = fmul fast float %9055, 2.000000e+00
  %9058 = fmul fast float %9056, 2.000000e+00
  %9059 = fsub fast float 1.000000e+00, %9057
  %9060 = fsub fast float 1.000000e+00, %9058
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 0
  %9063 = extractvalue %dx.types.CBufRet.f32 %9061, 1
  %9064 = extractvalue %dx.types.CBufRet.f32 %9061, 2
  %9065 = fmul fast float %9059, %9062
  %9066 = fmul fast float %9059, %9063
  %9067 = fmul fast float %9059, %9064
  %9068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9069 = extractvalue %dx.types.CBufRet.f32 %9068, 0
  %9070 = extractvalue %dx.types.CBufRet.f32 %9068, 1
  %9071 = extractvalue %dx.types.CBufRet.f32 %9068, 2
  %9072 = fmul fast float %9060, %9069
  %9073 = fmul fast float %9060, %9070
  %9074 = fmul fast float %9060, %9071
  %9075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9076 = extractvalue %dx.types.CBufRet.f32 %9075, 0
  %9077 = extractvalue %dx.types.CBufRet.f32 %9075, 1
  %9078 = extractvalue %dx.types.CBufRet.f32 %9075, 2
  %9079 = fadd fast float %9072, %9076
  %9080 = fadd fast float %9079, %9065
  %9081 = fadd fast float %9073, %9077
  %9082 = fadd fast float %9081, %9066
  %9083 = fadd fast float %9074, %9078
  %9084 = fadd fast float %9083, %9067
  %9085 = fmul fast float %9080, %8256
  %9086 = fmul fast float %9082, %8256
  %9087 = fmul fast float %9084, %8256
  %9088 = fmul fast float %9085, %9085
  %9089 = fmul fast float %9086, %9086
  %9090 = fadd fast float %9088, %9089
  %9091 = fmul fast float %9087, %9087
  %9092 = fadd fast float %9090, %9091
  %9093 = call float @dx.op.unary.f32(i32 24, float %9092)  ; Sqrt(value)
  %9094 = extractvalue %dx.types.CBufRet.f32 %7983, 0
  %9095 = fsub fast float %9093, %9094
  %9096 = extractvalue %dx.types.CBufRet.f32 %7983, 2
  %9097 = fmul fast float %9095, %9096
  %9098 = call float @dx.op.unary.f32(i32 7, float %9097)  ; Saturate(value)
  %9099 = fadd fast float %9098, -5.000000e-01
  %9100 = fmul fast float %9099, 2.000000e+00
  %9101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9102 = extractvalue %dx.types.CBufRet.f32 %9101, 2
  %9103 = call float @dx.op.binary.f32(i32 36, float %9102, float %9100)  ; FMin(a,b)
  %9104 = fsub fast float -0.000000e+00, %9102
  %9105 = fcmp fast ogt float %9103, %9104
  br i1 %9105, label %9106, label %9418, !dx.controlflow.hints !180

; <label>:9106                                    ; preds = %9051
  %9107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9108 = extractvalue %dx.types.CBufRet.f32 %9107, 3
  %9109 = fcmp fast ogt float %9108, 0.000000e+00
  br i1 %9109, label %9110, label %9185, !dx.controlflow.hints !181

; <label>:9110                                    ; preds = %9106
  %9111 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9112 = extractvalue %dx.types.Dimensions %9111, 0
  %9113 = sitofp i32 %9112 to float
  %9114 = extractvalue %dx.types.Dimensions %9111, 1
  %9115 = sitofp i32 %9114 to float
  %9116 = fmul fast float %9055, %9113
  %9117 = fmul fast float %9056, %9115
  %9118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9119 = extractvalue %dx.types.CBufRet.f32 %9118, 1
  %9120 = fsub fast float -0.000000e+00, %9119
  %9121 = fptoui float %9120 to i32
  %9122 = fptoui float %9116 to i32
  %9123 = fptoui float %9117 to i32
  %9124 = and i32 %9121, 31
  %9125 = lshr i32 %9122, %9124
  %9126 = lshr i32 %9123, %9124
  %9127 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9121, i32 %9125, i32 %9126, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9128 = extractvalue %dx.types.ResRet.f32 %9127, 0
  %9129 = fcmp fast olt float %9128, -1.000000e+00
  %9130 = fcmp fast ogt float %9128, -1.000000e+00
  %9131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9132 = extractvalue %dx.types.CBufRet.f32 %9131, 1
  %9133 = select i1 %9130, float %9132, float 1.000000e+00
  %9134 = fadd fast float %9128, 1.000000e+00
  %9135 = fmul fast float %9133, %9134
  %9136 = call float @dx.op.unary.f32(i32 6, float %9135)  ; FAbs(value)
  %9137 = extractvalue %dx.types.CBufRet.f32 %9131, 3
  %9138 = fcmp fast oge float %9136, %9137
  %9139 = select i1 %9138, float 0x4197782600000000, float %9136
  %9140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9141 = extractvalue %dx.types.CBufRet.f32 %9140, 0
  %9142 = extractvalue %dx.types.CBufRet.f32 %9140, 1
  %9143 = extractvalue %dx.types.CBufRet.f32 %9140, 2
  %9144 = select i1 %9129, float %9141, float %9062
  %9145 = select i1 %9129, float %9142, float %9063
  %9146 = select i1 %9129, float %9143, float %9064
  %9147 = fmul fast float %9144, %9059
  %9148 = fmul fast float %9145, %9059
  %9149 = fmul fast float %9146, %9059
  %9150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9151 = extractvalue %dx.types.CBufRet.f32 %9150, 0
  %9152 = extractvalue %dx.types.CBufRet.f32 %9150, 1
  %9153 = extractvalue %dx.types.CBufRet.f32 %9150, 2
  %9154 = select i1 %9129, float %9151, float %9069
  %9155 = select i1 %9129, float %9152, float %9070
  %9156 = select i1 %9129, float %9153, float %9071
  %9157 = fmul fast float %9154, %9060
  %9158 = fmul fast float %9155, %9060
  %9159 = fmul fast float %9156, %9060
  %9160 = fadd fast float %9157, %9147
  %9161 = fadd fast float %9158, %9148
  %9162 = fadd fast float %9159, %9149
  %9163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9164 = extractvalue %dx.types.CBufRet.f32 %9163, 0
  %9165 = extractvalue %dx.types.CBufRet.f32 %9163, 1
  %9166 = extractvalue %dx.types.CBufRet.f32 %9163, 2
  %9167 = select i1 %9129, float %9164, float %9076
  %9168 = select i1 %9129, float %9165, float %9077
  %9169 = select i1 %9129, float %9166, float %9078
  %9170 = fadd fast float %9160, %9167
  %9171 = fadd fast float %9161, %9168
  %9172 = fadd fast float %9162, %9169
  %9173 = fmul fast float %9170, %9139
  %9174 = fmul fast float %9171, %9139
  %9175 = fmul fast float %9172, %9139
  %9176 = fmul fast float %9173, %9173
  %9177 = fmul fast float %9174, %9174
  %9178 = fadd fast float %9176, %9177
  %9179 = fmul fast float %9175, %9175
  %9180 = fadd fast float %9178, %9179
  %9181 = call float @dx.op.unary.f32(i32 24, float %9180)  ; Sqrt(value)
  %9182 = fsub fast float %9181, %9094
  %9183 = fmul fast float %9182, %9096
  %9184 = call float @dx.op.unary.f32(i32 7, float %9183)  ; Saturate(value)
  br label %9185

; <label>:9185                                    ; preds = %9110, %9106
  %9186 = phi float [ %9184, %9110 ], [ 1.000000e+00, %9106 ]
  %9187 = fmul fast float %9103, 5.000000e-01
  %9188 = fadd fast float %9187, 5.000000e-01
  %9189 = call float @dx.op.unary.f32(i32 22, float %9188)  ; Frc(value)
  %9190 = call float @dx.op.unary.f32(i32 27, float %9189)  ; Round_ni(value)
  %9191 = call float @dx.op.unary.f32(i32 22, float %9189)  ; Frc(value)
  %9192 = fmul fast float %9191, 2.000000e+00
  %9193 = fadd fast float %9192, -1.000000e+00
  %9194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %51, float %9055, float %9056, float %9190, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9195 = extractvalue %dx.types.ResRet.f32 %9194, 0
  %9196 = extractvalue %dx.types.ResRet.f32 %9194, 1
  %9197 = extractvalue %dx.types.ResRet.f32 %9194, 2
  %9198 = extractvalue %dx.types.ResRet.f32 %9194, 3
  %9199 = fadd fast float %9195, -5.000000e-01
  %9200 = fadd fast float %9197, -5.000000e-01
  %9201 = fmul fast float %9199, 0xBFD5555560000000
  %9202 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9200, float %9201)  ; FMad(a,b,c)
  %9203 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9196, float 0.000000e+00)  ; FMad(a,b,c)
  %9204 = fadd fast float %9203, %9198
  %9205 = fmul fast float %9199, -7.500000e-01
  %9206 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9200, float %9205)  ; FMad(a,b,c)
  %9207 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9196, float 0.000000e+00)  ; FMad(a,b,c)
  %9208 = fadd fast float %9207, %9198
  %9209 = call float @dx.op.binary.f32(i32 35, float %9202, float -1.000000e+00)  ; FMax(a,b)
  %9210 = call float @dx.op.binary.f32(i32 35, float %9204, float -1.000000e+00)  ; FMax(a,b)
  %9211 = call float @dx.op.binary.f32(i32 35, float %9206, float -1.000000e+00)  ; FMax(a,b)
  %9212 = call float @dx.op.binary.f32(i32 35, float %9208, float -1.000000e+00)  ; FMax(a,b)
  %9213 = call float @dx.op.binary.f32(i32 36, float %9209, float 1.000000e+00)  ; FMin(a,b)
  %9214 = call float @dx.op.binary.f32(i32 36, float %9210, float 1.000000e+00)  ; FMin(a,b)
  %9215 = call float @dx.op.binary.f32(i32 36, float %9211, float 1.000000e+00)  ; FMin(a,b)
  %9216 = call float @dx.op.binary.f32(i32 36, float %9212, float 1.000000e+00)  ; FMin(a,b)
  %9217 = fcmp fast olt float %9213, 0x3FEFFF8020000000
  br i1 %9217, label %9218, label %9333, !dx.controlflow.hints !182

; <label>:9218                                    ; preds = %9185
  %9219 = extractvalue %dx.types.CBufRet.f32 %9101, 3
  %9220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9221 = extractvalue %dx.types.CBufRet.f32 %9220, 0
  %9222 = extractvalue %dx.types.CBufRet.f32 %9220, 1
  %9223 = extractvalue %dx.types.CBufRet.f32 %9220, 2
  %9224 = extractvalue %dx.types.CBufRet.f32 %9220, 3
  %9225 = fsub fast float %9221, %9213
  %9226 = fsub fast float %9222, %9214
  %9227 = fsub fast float %9223, %9215
  %9228 = fsub fast float %9224, %9216
  %9229 = fmul fast float %9225, %9219
  %9230 = fmul fast float %9226, %9219
  %9231 = fmul fast float %9227, %9219
  %9232 = fmul fast float %9228, %9219
  %9233 = fadd fast float %9229, %9213
  %9234 = fadd fast float %9230, %9214
  %9235 = fsub fast float -0.000000e+00, %9234
  %9236 = fadd fast float %9231, %9215
  %9237 = fadd fast float %9232, %9216
  %9238 = fmul fast float %9233, %9233
  %9239 = fsub fast float %9234, %9238
  %9240 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9239)  ; FMax(a,b)
  %9241 = fdiv fast float 1.000000e+00, %9240
  %9242 = fmul fast float %9234, %9233
  %9243 = fsub fast float %9236, %9242
  %9244 = fsub fast float %9193, %9233
  %9245 = fmul fast float %9193, %9193
  %9246 = fsub fast float %9245, %9234
  %9247 = fmul fast float %9244, %9241
  %9248 = fmul fast float %9247, %9243
  %9249 = fsub fast float %9246, %9248
  %9250 = fmul fast float %9234, %9234
  %9251 = fsub fast float %9237, %9250
  %9252 = fmul fast float %9243, %9243
  %9253 = fmul fast float %9252, %9241
  %9254 = fsub fast float %9251, %9253
  %9255 = fdiv fast float %9249, %9254
  %9256 = fmul fast float %9243, %9255
  %9257 = fsub fast float %9244, %9256
  %9258 = fmul fast float %9257, %9241
  %9259 = fmul fast float %9258, %9233
  %9260 = fsub fast float 1.000000e+00, %9259
  %9261 = fmul fast float %9234, %9255
  %9262 = fsub fast float %9260, %9261
  %9263 = fmul fast float %9258, %9258
  %9264 = fmul fast float %9255, 4.000000e+00
  %9265 = fmul fast float %9264, %9262
  %9266 = fsub fast float %9263, %9265
  %9267 = call float @dx.op.unary.f32(i32 24, float %9266)  ; Sqrt(value)
  %9268 = fcmp fast oge float %9258, 0.000000e+00
  %9269 = fsub fast float -0.000000e+00, %9267
  %9270 = select i1 %9268, float %9269, float %9267
  %9271 = fsub fast float %9270, %9258
  %9272 = fdiv fast float %9271, %9255
  %9273 = fdiv fast float %9262, %9271
  %9274 = fmul fast float %9272, 5.000000e-01
  %9275 = fmul fast float %9273, 2.000000e+00
  %9276 = select i1 %9268, float %9274, float %9275
  %9277 = select i1 %9268, float %9275, float %9274
  %9278 = call float @dx.op.binary.f32(i32 35, float %9276, float %9277)  ; FMax(a,b)
  %9279 = call float @dx.op.binary.f32(i32 36, float %9276, float %9277)  ; FMin(a,b)
  %9280 = fcmp fast ogt float %9193, %9279
  br i1 %9280, label %9281, label %9291

; <label>:9281                                    ; preds = %9218
  %9282 = fsub fast float %9193, %9279
  %9283 = fsub fast float %9278, %9279
  %9284 = fmul fast float %9282, %9283
  %9285 = fmul fast float %9278, %9193
  %9286 = fadd fast float %9278, %9193
  %9287 = fmul fast float %9286, %9233
  %9288 = fadd fast float %9285, %9234
  %9289 = fsub fast float %9288, %9287
  %9290 = fdiv fast float %9289, %9284
  br label %9291

; <label>:9291                                    ; preds = %9281, %9218
  %9292 = phi float [ %9290, %9281 ], [ 0.000000e+00, %9218 ]
  %9293 = fcmp fast ogt float %9193, %9278
  %9294 = fsub fast float %9193, %9278
  br i1 %9293, label %9295, label %9305

; <label>:9295                                    ; preds = %9291
  %9296 = fsub fast float %9278, %9279
  %9297 = fmul fast float %9296, %9294
  %9298 = fmul fast float %9279, %9193
  %9299 = fadd fast float %9279, %9193
  %9300 = fmul fast float %9299, %9233
  %9301 = fsub fast float %9235, %9298
  %9302 = fadd fast float %9301, %9300
  %9303 = fdiv fast float %9302, %9297
  %9304 = fadd fast float %9303, %9292
  br label %9305

; <label>:9305                                    ; preds = %9295, %9291
  %9306 = phi float [ %9304, %9295 ], [ %9292, %9291 ]
  %9307 = fsub fast float %9193, %9279
  %9308 = fmul fast float %9307, %9294
  %9309 = fmul fast float %9279, %9278
  %9310 = fadd fast float %9279, %9278
  %9311 = fmul fast float %9310, %9233
  %9312 = fadd fast float %9309, %9234
  %9313 = fsub fast float %9312, %9311
  %9314 = fdiv fast float %9313, %9308
  %9315 = call float @dx.op.unary.f32(i32 7, float %9306)  ; Saturate(value)
  %9316 = fcmp fast oeq float %7984, 0.000000e+00
  %9317 = extractvalue %dx.types.CBufRet.f32 %9101, 0
  %9318 = fcmp fast oeq float %9317, 0.000000e+00
  %9319 = or i1 %9316, %9318
  %9320 = fmul fast float %9317, 2.000000e+00
  %9321 = fadd fast float %9102, %9103
  %9322 = fdiv fast float %9321, %9320
  %9323 = call float @dx.op.unary.f32(i32 7, float %9322)  ; Saturate(value)
  %9324 = fmul fast float %9323, 2.000000e+00
  %9325 = fsub fast float 3.000000e+00, %9324
  %9326 = fmul fast float %9323, %9323
  %9327 = fmul fast float %9326, %9325
  %9328 = select i1 %9319, float 1.000000e+00, float %9327
  %9329 = fmul fast float %9314, %7984
  %9330 = fadd fast float %9315, %9329
  %9331 = call float @dx.op.unary.f32(i32 7, float %9330)  ; Saturate(value)
  %9332 = fmul fast float %9328, %9331
  br label %9333

; <label>:9333                                    ; preds = %9305, %9185
  %9334 = phi float [ %9332, %9305 ], [ 0.000000e+00, %9185 ]
  %9335 = fsub fast float 1.000000e+00, %9334
  %9336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %51, float %9055, float %9056, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9337 = extractvalue %dx.types.ResRet.f32 %9336, 0
  %9338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9339 = extractvalue %dx.types.CBufRet.i32 %9338, 2
  %9340 = icmp eq i32 %9339, 0
  br i1 %9340, label %9346, label %9341

; <label>:9341                                    ; preds = %9333
  %9342 = call float @dx.op.unary.f32(i32 7, float %9334)  ; Saturate(value)
  %9343 = fadd fast float %9337, -1.000000e+00
  %9344 = fmul fast float %9342, %9343
  %9345 = fadd fast float %9344, 1.000000e+00
  br label %9346

; <label>:9346                                    ; preds = %9341, %9333
  %9347 = phi float [ %9345, %9341 ], [ %9335, %9333 ]
  br i1 %9109, label %9348, label %9366

; <label>:9348                                    ; preds = %9346
  %9349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9350 = extractvalue %dx.types.CBufRet.f32 %9349, 1
  %9351 = fsub fast float %9186, %9350
  %9352 = call float @dx.op.unary.f32(i32 7, float %9351)  ; Saturate(value)
  %9353 = fsub fast float %9186, %9108
  %9354 = call float @dx.op.unary.f32(i32 7, float %9353)  ; Saturate(value)
  %9355 = fsub fast float %9352, %9354
  %9356 = fsub fast float %9188, %9354
  %9357 = fdiv fast float %9356, %9355
  %9358 = call float @dx.op.unary.f32(i32 7, float %9357)  ; Saturate(value)
  %9359 = fmul fast float %9358, 2.000000e+00
  %9360 = fsub fast float 3.000000e+00, %9359
  %9361 = fsub fast float %9337, %9347
  %9362 = fmul fast float %9358, %9358
  %9363 = fmul fast float %9362, %9361
  %9364 = fmul fast float %9363, %9360
  %9365 = fadd fast float %9364, %9347
  br label %9366

; <label>:9366                                    ; preds = %9348, %9346
  %9367 = phi float [ %9365, %9348 ], [ %9347, %9346 ]
  %9368 = call float @dx.op.binary.f32(i32 35, float %9337, float %9367)  ; FMax(a,b)
  %9369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9370 = extractvalue %dx.types.CBufRet.i32 %9369, 2
  %9371 = and i32 %9370, 1
  %9372 = icmp eq i32 %9371, 0
  %9373 = fcmp fast une float %9368, 1.000000e+00
  %9374 = and i1 %9373, %9372
  br i1 %9374, label %9375, label %9394

; <label>:9375                                    ; preds = %9366
  %9376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %51, float %9055, float %9056, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9377 = extractvalue %dx.types.ResRet.f32 %9376, 0
  %9378 = extractvalue %dx.types.ResRet.f32 %9376, 1
  %9379 = extractvalue %dx.types.ResRet.f32 %9376, 2
  %9380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9381 = extractvalue %dx.types.CBufRet.f32 %9380, 1
  %9382 = fmul fast float %9381, %9377
  %9383 = fmul fast float %9381, %9378
  %9384 = fmul fast float %9381, %9379
  %9385 = fcmp fast ogt float %9337, 0x3FEFFF2E40000000
  %9386 = fsub fast float 1.000000e+00, %9368
  %9387 = fsub fast float 1.000000e+00, %9337
  %9388 = fdiv fast float %9386, %9387
  %9389 = call float @dx.op.unary.f32(i32 7, float %9388)  ; Saturate(value)
  %9390 = select i1 %9385, float 0.000000e+00, float %9389
  %9391 = fmul fast float %9382, %9390
  %9392 = fmul fast float %9383, %9390
  %9393 = fmul fast float %9384, %9390
  br label %9394

; <label>:9394                                    ; preds = %9375, %9366
  %9395 = phi float [ 0.000000e+00, %9366 ], [ %9391, %9375 ]
  %9396 = phi float [ 0.000000e+00, %9366 ], [ %9392, %9375 ]
  %9397 = phi float [ 0.000000e+00, %9366 ], [ %9393, %9375 ]
  %9398 = fmul fast float %9395, %7972
  %9399 = fmul fast float %9396, %7972
  %9400 = fmul fast float %9397, %7972
  %9401 = fmul fast float %9368, %9030
  %9402 = call float @dx.op.dot3.f32(i32 55, float %9368, float %9368, float %9368, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9403 = call float @dx.op.dot3.f32(i32 55, float %9398, float %9399, float %9400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9404 = select i1 %275, float %9402, float %9368
  %9405 = select i1 %275, float 1.000000e+00, float %9368
  %9406 = select i1 %275, float %9403, float %9398
  %9407 = select i1 %275, float 0.000000e+00, float %9399
  %9408 = select i1 %275, float 0.000000e+00, float %9400
  %9409 = fmul fast float %9404, %9042
  %9410 = fmul fast float %9404, %9043
  %9411 = fmul fast float %9405, %9044
  %9412 = fadd fast float %9409, %9406
  %9413 = fadd fast float %9410, %9407
  %9414 = fadd fast float %9408, %9411
  %9415 = fmul fast float %9404, %9045
  %9416 = fmul fast float %9404, %9046
  %9417 = fmul fast float %9405, %9047
  br label %9418

; <label>:9418                                    ; preds = %9394, %9051, %9020, %8252
  %9419 = phi float [ %8257, %8252 ], [ %9042, %9020 ], [ %9412, %9394 ], [ %9042, %9051 ]
  %9420 = phi float [ %8258, %8252 ], [ %9043, %9020 ], [ %9413, %9394 ], [ %9043, %9051 ]
  %9421 = phi float [ %8259, %8252 ], [ %9044, %9020 ], [ %9414, %9394 ], [ %9044, %9051 ]
  %9422 = phi float [ %8260, %8252 ], [ %9045, %9020 ], [ %9415, %9394 ], [ %9045, %9051 ]
  %9423 = phi float [ %8261, %8252 ], [ %9046, %9020 ], [ %9416, %9394 ], [ %9046, %9051 ]
  %9424 = phi float [ %8262, %8252 ], [ %9047, %9020 ], [ %9417, %9394 ], [ %9047, %9051 ]
  %9425 = phi float [ %8263, %8252 ], [ %9030, %9020 ], [ %9401, %9394 ], [ %9030, %9051 ]
  %9426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9427 = extractvalue %dx.types.CBufRet.f32 %9426, 2
  %9428 = extractvalue %dx.types.CBufRet.f32 %9426, 3
  %9429 = fmul fast float %9427, %120
  %9430 = fmul fast float %9428, %121
  %9431 = call float @dx.op.unary.f32(i32 7, float %9429)  ; Saturate(value)
  %9432 = call float @dx.op.unary.f32(i32 7, float %9430)  ; Saturate(value)
  %9433 = select i1 %7994, i32 2, i32 0
  %9434 = or i32 %9433, 1
  %9435 = uitofp i32 %9434 to float
  %9436 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %9431, float %9432, float %9435, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9437 = extractvalue %dx.types.ResRet.f32 %9436, 0
  %9438 = extractvalue %dx.types.ResRet.f32 %9436, 1
  %9439 = extractvalue %dx.types.ResRet.f32 %9436, 2
  %9440 = extractvalue %dx.types.ResRet.f32 %9436, 3
  %9441 = add nuw nsw i32 %9433, 2
  %9442 = uitofp i32 %9441 to float
  %9443 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %9431, float %9432, float %9442, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9444 = extractvalue %dx.types.ResRet.f32 %9443, 0
  %9445 = extractvalue %dx.types.ResRet.f32 %9443, 1
  %9446 = extractvalue %dx.types.ResRet.f32 %9443, 2
  %9447 = extractvalue %dx.types.ResRet.f32 %9443, 3
  %9448 = call float @dx.op.binary.f32(i32 35, float %9438, float %9439)  ; FMax(a,b)
  %9449 = call float @dx.op.binary.f32(i32 35, float %9437, float %9448)  ; FMax(a,b)
  %9450 = call float @dx.op.binary.f32(i32 35, float %9449, float %9440)  ; FMax(a,b)
  %9451 = call float @dx.op.binary.f32(i32 36, float %9445, float %9446)  ; FMin(a,b)
  %9452 = call float @dx.op.binary.f32(i32 36, float %9444, float %9451)  ; FMin(a,b)
  %9453 = call float @dx.op.binary.f32(i32 36, float %9452, float %9447)  ; FMin(a,b)
  %9454 = fmul fast float %9450, 2.550000e+02
  %9455 = fadd fast float %9454, 0x3F70101020000000
  %9456 = fptoui float %9455 to i32
  %9457 = fmul fast float %9453, 2.550000e+02
  %9458 = fadd fast float %9457, 0x3F70101020000000
  %9459 = fptoui float %9458 to i32
  %9460 = icmp ult i32 %9456, %9459
  br i1 %9460, label %9461, label %9630

; <label>:9461                                    ; preds = %9418
  %9462 = fcmp fast ogt float %106, 9.843750e-01
  %9463 = fadd fast float %8256, -4.000000e+00
  %9464 = select i1 %9462, float -4.000000e+00, float %9463
  %9465 = call float @dx.op.binary.f32(i32 35, float %9464, float 0.000000e+00)  ; FMax(a,b)
  %9466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9467 = extractvalue %dx.types.CBufRet.f32 %9466, 0
  %9468 = fadd fast float %9467, %9465
  %9469 = extractvalue %dx.types.CBufRet.f32 %9466, 2
  %9470 = fmul fast float %9468, %9469
  %9471 = call float @dx.op.unary.f32(i32 23, float %9470)  ; Log(value)
  %9472 = extractvalue %dx.types.CBufRet.f32 %9466, 3
  %9473 = fmul fast float %9472, %9471
  %9474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9475 = extractvalue %dx.types.CBufRet.f32 %9474, 2
  %9476 = fmul fast float %9473, %9475
  %9477 = call float @dx.op.unary.f32(i32 7, float %9476)  ; Saturate(value)
  %9478 = uitofp i32 %9456 to float
  %9479 = uitofp i32 %9459 to float
  %9480 = fadd fast float %9478, 5.000000e-01
  %9481 = fadd fast float %9479, 5.000000e-01
  %9482 = fmul fast float %9475, %9480
  %9483 = fmul fast float %9475, %9481
  %9484 = fadd fast float %9482, 0x3F0FFB4800000000
  %9485 = fadd fast float %9483, 0xBF0FFB4800000000
  %9486 = call float @dx.op.binary.f32(i32 35, float %9477, float %9484)  ; FMax(a,b)
  %9487 = call float @dx.op.binary.f32(i32 36, float %9486, float %9485)  ; FMin(a,b)
  %9488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9489 = extractvalue %dx.types.CBufRet.f32 %9488, 1
  %9490 = extractvalue %dx.types.CBufRet.f32 %9488, 2
  %9491 = extractvalue %dx.types.CBufRet.f32 %9488, 0
  %9492 = select i1 %7994, float %9491, float 0.000000e+00
  %9493 = fmul fast float %9489, %9487
  %9494 = fadd fast float %9492, %9493
  %9495 = fadd fast float %9492, %9490
  %9496 = fsub fast float %9489, %9490
  %9497 = fadd fast float %9496, %9492
  %9498 = call float @dx.op.binary.f32(i32 35, float %9494, float %9495)  ; FMax(a,b)
  %9499 = call float @dx.op.binary.f32(i32 36, float %9498, float %9497)  ; FMin(a,b)
  %9500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %49, float %9431, float %9432, float %9499, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9501 = extractvalue %dx.types.ResRet.f32 %9500, 0
  %9502 = extractvalue %dx.types.ResRet.f32 %9500, 1
  %9503 = extractvalue %dx.types.ResRet.f32 %9500, 2
  %9504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9505 = extractvalue %dx.types.CBufRet.i32 %9504, 0
  %9506 = extractvalue %dx.types.CBufRet.i32 %9504, 1
  %9507 = uitofp i32 %9505 to float
  %9508 = uitofp i32 %9506 to float
  %9509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9510 = extractvalue %dx.types.CBufRet.f32 %9509, 0
  %9511 = extractvalue %dx.types.CBufRet.f32 %9509, 1
  %9512 = fmul fast float %9507, %9431
  %9513 = fmul fast float %9508, %9432
  %9514 = fadd fast float %9512, -5.000000e-01
  %9515 = fadd fast float %9513, -5.000000e-01
  %9516 = call float @dx.op.unary.f32(i32 22, float %9514)  ; Frc(value)
  %9517 = call float @dx.op.unary.f32(i32 22, float %9515)  ; Frc(value)
  %9518 = fmul fast float %9516, %9516
  %9519 = fmul fast float %9518, %9516
  %9520 = fsub fast float 3.000000e+00, %9516
  %9521 = fmul fast float %9518, %9520
  %9522 = fmul fast float %9516, 3.000000e+00
  %9523 = fmul fast float %9519, 3.000000e+00
  %9524 = fmul fast float %9518, 6.000000e+00
  %9525 = fsub fast float %9523, %9524
  %9526 = fadd fast float %9525, 4.000000e+00
  %9527 = fmul fast float %9526, 0x3FC5555560000000
  %9528 = fmul fast float %9519, -3.000000e+00
  %9529 = fadd fast float %9518, %9516
  %9530 = fmul fast float %9529, 3.000000e+00
  %9531 = fadd fast float %9528, 1.000000e+00
  %9532 = fadd fast float %9531, %9530
  %9533 = fmul fast float %9519, 0x3FC5555560000000
  %9534 = fmul fast float %9517, %9517
  %9535 = fmul fast float %9534, %9517
  %9536 = fsub fast float 3.000000e+00, %9517
  %9537 = fmul fast float %9534, %9536
  %9538 = fmul fast float %9517, 3.000000e+00
  %9539 = fmul fast float %9535, 3.000000e+00
  %9540 = fmul fast float %9534, 6.000000e+00
  %9541 = fsub fast float %9539, %9540
  %9542 = fadd fast float %9541, 4.000000e+00
  %9543 = fmul fast float %9542, 0x3FC5555560000000
  %9544 = fmul fast float %9535, -3.000000e+00
  %9545 = fadd fast float %9534, %9517
  %9546 = fmul fast float %9545, 3.000000e+00
  %9547 = fadd fast float %9544, 1.000000e+00
  %9548 = fadd fast float %9547, %9546
  %9549 = fmul fast float %9535, 0x3FC5555560000000
  %9550 = fadd fast float %9516, 1.000000e+00
  %9551 = fsub fast float 1.000000e+00, %9522
  %9552 = fadd fast float %9551, %9521
  %9553 = fadd fast float %9552, %9526
  %9554 = fmul fast float %9553, 0x3FC5555560000000
  %9555 = fdiv fast float %9527, %9554
  %9556 = fsub fast float %9550, %9555
  %9557 = fsub fast float 1.000000e+00, %9516
  %9558 = fadd fast float %9532, %9519
  %9559 = fmul fast float %9558, 0x3FC5555560000000
  %9560 = fdiv fast float %9533, %9559
  %9561 = fadd fast float %9557, %9560
  %9562 = fadd fast float %9517, 1.000000e+00
  %9563 = fsub fast float 1.000000e+00, %9538
  %9564 = fadd fast float %9563, %9537
  %9565 = fadd fast float %9564, %9542
  %9566 = fmul fast float %9565, 0x3FC5555560000000
  %9567 = fdiv fast float %9543, %9566
  %9568 = fsub fast float %9562, %9567
  %9569 = fsub fast float 1.000000e+00, %9517
  %9570 = fadd fast float %9548, %9535
  %9571 = fmul fast float %9570, 0x3FC5555560000000
  %9572 = fdiv fast float %9549, %9571
  %9573 = fadd fast float %9572, %9569
  %9574 = fmul fast float %9556, %9510
  %9575 = fsub fast float %9431, %9574
  %9576 = fmul fast float %9561, %9510
  %9577 = fadd fast float %9576, %9431
  %9578 = fmul fast float %9573, %9511
  %9579 = fadd fast float %9578, %9432
  %9580 = fmul fast float %9568, %9511
  %9581 = fsub fast float %9432, %9580
  %9582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9575, float %9581, float %9499, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9583 = extractvalue %dx.types.ResRet.f32 %9582, 0
  %9584 = extractvalue %dx.types.ResRet.f32 %9582, 1
  %9585 = extractvalue %dx.types.ResRet.f32 %9582, 2
  %9586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9577, float %9581, float %9499, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9587 = extractvalue %dx.types.ResRet.f32 %9586, 0
  %9588 = extractvalue %dx.types.ResRet.f32 %9586, 1
  %9589 = extractvalue %dx.types.ResRet.f32 %9586, 2
  %9590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9575, float %9579, float %9499, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9591 = extractvalue %dx.types.ResRet.f32 %9590, 0
  %9592 = extractvalue %dx.types.ResRet.f32 %9590, 1
  %9593 = extractvalue %dx.types.ResRet.f32 %9590, 2
  %9594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9577, float %9579, float %9499, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9595 = extractvalue %dx.types.ResRet.f32 %9594, 0
  %9596 = extractvalue %dx.types.ResRet.f32 %9594, 1
  %9597 = extractvalue %dx.types.ResRet.f32 %9594, 2
  %9598 = fsub fast float %9591, %9583
  %9599 = fsub fast float %9592, %9584
  %9600 = fsub fast float %9593, %9585
  %9601 = fmul fast float %9598, %9571
  %9602 = fmul fast float %9599, %9571
  %9603 = fmul fast float %9600, %9571
  %9604 = fadd fast float %9601, %9583
  %9605 = fadd fast float %9602, %9584
  %9606 = fadd fast float %9603, %9585
  %9607 = fsub fast float %9595, %9587
  %9608 = fsub fast float %9596, %9588
  %9609 = fsub fast float %9597, %9589
  %9610 = fmul fast float %9607, %9571
  %9611 = fmul fast float %9608, %9571
  %9612 = fmul fast float %9609, %9571
  %9613 = fsub fast float %9587, %9604
  %9614 = fadd fast float %9613, %9610
  %9615 = fsub fast float %9588, %9605
  %9616 = fadd fast float %9615, %9611
  %9617 = fsub fast float %9589, %9606
  %9618 = fadd fast float %9617, %9612
  %9619 = fmul fast float %9614, %9559
  %9620 = fmul fast float %9616, %9559
  %9621 = fmul fast float %9618, %9559
  %9622 = fadd fast float %9619, %9604
  %9623 = fadd fast float %9620, %9605
  %9624 = fadd fast float %9621, %9606
  %9625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9626 = extractvalue %dx.types.CBufRet.f32 %9625, 1
  %9627 = fmul fast float %9622, %9626
  %9628 = fmul fast float %9623, %9626
  %9629 = fmul fast float %9624, %9626
  br label %9630

; <label>:9630                                    ; preds = %9461, %9418
  %9631 = phi float [ %9501, %9461 ], [ 1.000000e+00, %9418 ]
  %9632 = phi float [ %9502, %9461 ], [ 1.000000e+00, %9418 ]
  %9633 = phi float [ %9503, %9461 ], [ 1.000000e+00, %9418 ]
  %9634 = phi float [ %9627, %9461 ], [ 0.000000e+00, %9418 ]
  %9635 = phi float [ %9628, %9461 ], [ 0.000000e+00, %9418 ]
  %9636 = phi float [ %9629, %9461 ], [ 0.000000e+00, %9418 ]
  %9637 = fmul fast float %9634, %7972
  %9638 = fmul fast float %9635, %7972
  %9639 = fmul fast float %9636, %7972
  %9640 = fmul fast float %9631, %9425
  %9641 = call float @dx.op.dot3.f32(i32 55, float %9631, float %9632, float %9633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9642 = call float @dx.op.dot3.f32(i32 55, float %9637, float %9638, float %9639, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9643 = select i1 %275, float %9641, float %9631
  %9644 = select i1 %275, float %9641, float %9632
  %9645 = select i1 %275, float 1.000000e+00, float %9633
  %9646 = select i1 %275, float %9642, float %9637
  %9647 = select i1 %275, float 0.000000e+00, float %9638
  %9648 = select i1 %275, float 0.000000e+00, float %9639
  %9649 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9650 = extractvalue %dx.types.CBufRet.i32 %9649, 3
  %9651 = and i32 %9650, 3
  %9652 = icmp ne i32 %9651, 0
  %9653 = and i32 %9650, 4
  %9654 = icmp ne i32 %9653, 0
  %9655 = and i1 %9652, %9654
  %9656 = and i1 %275, %9655
  br i1 %9656, label %9657, label %9663

; <label>:9657                                    ; preds = %9630
  %9658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9659 = extractvalue %dx.types.CBufRet.f32 %9658, 1
  %9660 = fadd fast float %9640, -1.000000e+00
  %9661 = fmul fast float %9659, %9660
  %9662 = fadd fast float %9661, 1.000000e+00
  br label %9663

; <label>:9663                                    ; preds = %9657, %9630
  %9664 = phi float [ %9662, %9657 ], [ %9640, %9630 ]
  %9665 = fadd fast float %9422, %9419
  %9666 = fmul fast float %9643, %9665
  %9667 = fadd fast float %9666, %9646
  %9668 = fadd fast float %9423, %9420
  %9669 = fmul fast float %9644, %9668
  %9670 = fadd fast float %9669, %9647
  %9671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9672 = extractvalue %dx.types.CBufRet.f32 %9671, 0
  br i1 %275, label %9673, label %9697

; <label>:9673                                    ; preds = %9663
  %9674 = fadd fast float %9667, %9670
  %9675 = fmul fast float %9672, %9674
  %9676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9677 = extractvalue %dx.types.CBufRet.f32 %9676, 3
  %9678 = extractvalue %dx.types.CBufRet.f32 %7976, 1
  %9679 = fsub fast float %7981, %7975
  %9680 = fadd fast float %9679, %7982
  %9681 = fsub fast float %9680, %9678
  %9682 = extractvalue %dx.types.CBufRet.f32 %7976, 2
  %9683 = fmul fast float %9681, %9682
  %9684 = call float @dx.op.unary.f32(i32 7, float %9683)  ; Saturate(value)
  %9685 = fsub fast float %9684, %9677
  %9686 = fmul fast float %9685, %9664
  %9687 = fadd fast float %9686, %9677
  %9688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9689 = extractvalue %dx.types.CBufRet.f32 %9688, 0
  %9690 = fsub fast float %9687, %9689
  %9691 = fmul fast float %9690, 1.000000e+01
  %9692 = call float @dx.op.unary.f32(i32 7, float %9691)  ; Saturate(value)
  %9693 = fsub fast float %1266, %7972
  %9694 = fmul fast float %9692, %9693
  %9695 = fadd fast float %9694, %7972
  %9696 = fmul fast float %9695, %9687
  br label %9721

; <label>:9697                                    ; preds = %9663
  %9698 = fadd fast float %9424, %9421
  %9699 = fmul fast float %9645, %9698
  %9700 = fadd fast float %9699, %9648
  %9701 = fmul fast float %9672, %9667
  %9702 = fmul fast float %9672, %9670
  %9703 = fmul fast float %9672, %9700
  %9704 = call float @dx.op.binary.f32(i32 35, float %9702, float %9703)  ; FMax(a,b)
  %9705 = call float @dx.op.binary.f32(i32 35, float %9701, float %9704)  ; FMax(a,b)
  %9706 = call float @dx.op.binary.f32(i32 35, float %9705, float %7972)  ; FMax(a,b)
  %9707 = fcmp fast ugt float %9706, 0x3F10000000000000
  br i1 %9707, label %9709, label %9708

; <label>:9708                                    ; preds = %9697
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9709

; <label>:9709                                    ; preds = %9708, %9697
  %9710 = add i32 %59, 356
  %9711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %9710, i32 undef)  ; BufferLoad(srv,index,wot)
  %9712 = extractvalue %dx.types.ResRet.i32 %9711, 0
  %9713 = and i32 %9712, 32
  %9714 = icmp eq i32 %9713, 0
  br i1 %9714, label %9721, label %9715

; <label>:9715                                    ; preds = %9709
  %9716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9717 = extractvalue %dx.types.CBufRet.f32 %9716, 0
  %9718 = fmul fast float %9717, 0x3FE99999A0000000
  %9719 = fadd fast float %9717, %9701
  %9720 = fadd fast float %9718, %9703
  br label %9721

; <label>:9721                                    ; preds = %9715, %9709, %9673
  %9722 = phi float [ %9675, %9673 ], [ %9719, %9715 ], [ %9701, %9709 ]
  %9723 = phi float [ %9696, %9673 ], [ %9702, %9715 ], [ %9702, %9709 ]
  %9724 = phi float [ %9695, %9673 ], [ %9720, %9715 ], [ %9703, %9709 ]
  %9725 = phi float [ %9695, %9673 ], [ %7972, %9715 ], [ %7972, %9709 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9726 = call float @dx.op.binary.f32(i32 36, float %9722, float 3.225500e+04)  ; FMin(a,b)
  %9727 = call float @dx.op.binary.f32(i32 36, float %9723, float 3.225500e+04)  ; FMin(a,b)
  %9728 = call float @dx.op.binary.f32(i32 36, float %9724, float 3.225500e+04)  ; FMin(a,b)
  %9729 = call float @dx.op.binary.f32(i32 36, float %9725, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9726)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9727)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9728)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9729)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!70 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 15, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!71 = !{void ()* @ps_main, !"ps_main", !72, !4, !98}
!72 = !{!73, !96, null}
!73 = !{!74, !77, !78, !80, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95}
!74 = !{i32 0, !"SV_Position", i8 9, i8 3, !75, i8 4, i32 1, i8 4, i32 0, i8 0, !76}
!75 = !{i32 0}
!76 = !{i32 3, i32 15}
!77 = !{i32 1, !"COLOR", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 1, i8 0, !76}
!78 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 2, i8 0, !79}
!79 = !{i32 3, i32 3}
!80 = !{i32 3, !"NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 3, i8 0, !81}
!81 = !{i32 3, i32 7}
!82 = !{i32 4, !"TANGENT", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 4, i8 0, !76}
!83 = !{i32 5, !"SH_RED", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 5, i8 0, !76}
!84 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 6, i8 0, !76}
!85 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 7, i8 0, !76}
!86 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 8, i8 0, !81}
!87 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 9, i8 0, !76}
!88 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 2, i32 10, i8 0, !79}
!89 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 11, i8 0, !76}
!90 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 12, i8 0, !76}
!91 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !75, i8 1, i32 1, i8 2, i32 13, i8 0, !79}
!92 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !75, i8 1, i32 1, i8 4, i32 14, i8 0, !93}
!93 = !{i32 3, i32 1}
!94 = !{i32 15, !"SV_IsFrontFace", i8 5, i8 13, !75, i8 1, i32 1, i8 1, i32 13, i8 2, !93}
!95 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !75, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!96 = !{!97}
!97 = !{i32 0, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
!98 = !{i32 0, i64 16}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = !{!108, !108, i64 0}
!108 = !{!"int", !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !{!112, !114, !116, !118}
!112 = distinct !{!112, !113, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!113 = distinct !{!113, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!114 = distinct !{!114, !115, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!115 = distinct !{!115, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!116 = distinct !{!116, !117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!117 = distinct !{!117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!118 = distinct !{!118, !119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!119 = distinct !{!119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = !{!122, !122, i64 0}
!122 = !{!"float", !109, i64 0}
!123 = distinct !{!123, !101}
!124 = distinct !{!124, !101}
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
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = !{!137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!137 = distinct !{!137, !138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!138 = distinct !{!138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!139 = distinct !{!139, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!140 = distinct !{!140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!141 = distinct !{!141, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!142 = distinct !{!142, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!143 = distinct !{!143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!144 = distinct !{!144, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!145 = distinct !{!145, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!146 = distinct !{!146, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!147 = distinct !{!147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!148 = distinct !{!148, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!149 = distinct !{!149, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!150 = distinct !{!150, !151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!151 = distinct !{!151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!160 = !{!156}
!161 = !{!157, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!162 = !{!163}
!163 = distinct !{!163, !164, !"\01?sort@@YAXAIAM00@Z: %c"}
!164 = distinct !{!164, !"\01?sort@@YAXAIAM00@Z"}
!165 = !{!166, !167, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!166 = distinct !{!166, !164, !"\01?sort@@YAXAIAM00@Z: %a"}
!167 = distinct !{!167, !164, !"\01?sort@@YAXAIAM00@Z: %b"}
!168 = !{!167}
!169 = !{!166, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!170 = !{!166}
!171 = !{!167, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 2}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}

