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
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       10     NONE   float      w
; PACKED_TRI_DATA          0   xyzw       11     NONE    uint   x zw
; SV_IsFrontFace           0   x          12    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 49460a9c6299167580db429cad21d19c
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
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
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
;   [128 x i8] (type annotation not present)
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
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture    byte         r/o      T6      t3,space1     1
;                                   texture    byte         r/o      T7      t4,space1     1
;                                   texture    byte         r/o      T8      t5,space1     1
;                                   texture    byte         r/o      T9      t6,space1     1
;                                   texture     f32          2d     T10     t69,space2     1
;                                   texture    byte         r/o     T11     t49,space1     1
;                                   texture    byte         r/o     T12     t50,space1     1
;                                   texture    byte         r/o     T13     t51,space1     1
;                                   texture    byte         r/o     T14     t52,space1     1
;                                   texture    byte         r/o     T15     t16,space1     1
;                                   texture    byte         r/o     T16     t17,space1     1
;                                   texture     f32          2d     T17     t37,space2     1
;                                   texture     f32          2d     T18             t0     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t59,space2     1
;                                   texture     f32          2d     T21     t60,space2     1
;                                   texture    byte         r/o     T22     t45,space1     1
;                                   texture    byte         r/o     T23     t46,space1     1
;                                   texture    byte         r/o     T24     t47,space1     1
;                                   texture    byte         r/o     T25     t48,space1     1
;                                   texture     f32          2d     T26     t57,space2     1
;                                   texture    byte         r/o     T27     t69,space1     1
;                                   texture     u32          2d     T28     t56,space2     1
;                                   texture     f32     2darray     T29     t35,space2     1
;                                   texture     f32          2d     T30     t34,space2     1
;                                   texture     f32          3d     T31     t31,space2     1
;                                   texture    byte         r/o     T32     t10,space1     1
;                                   texture    byte         r/o     T33      t1,space1     1
;                                   texture     f32          1d     T34     t32,space2     1
;                                   texture     f32     2darray     T35      t8,space2     1
;                                   texture     f32          2d     T36      t2,space2     1
;                                   texture     f32          2d     T37      t3,space2     1
;                                   texture     f32          2d     T38      t4,space2     1
;                                   textureunorm_f32     2darray     T39     t80,space2     1
;                                   texture    byte         r/o     T40     t67,space1     1
;                                   texture     f32          2d     T41      t7,space2     1
;                                   texture     f32          2d     T42      t6,space2     1
;                                   texture     f32          2d     T43      t5,space2     1
;                                   texture     f32          2d     T44     t38,space2     1
;                                   texture    byte         r/o     T45     t12,space1     1
;                                   texture    byte         r/o     T46     t13,space1     1
;                                   texture     f32          1d     T47     t30,space2     1
;                                   texture     f32          3d     T48     t44,space2     1
;                                   texture     f32          3d     T49     t45,space2     1
;                                   texture     f32     2darray     T50     t47,space2     1
;                                   textureunorm_f32     2darray     T51     t85,space2     1
;                                   texture     f32          2d     T52     t83,space2     1
;                                   texture     f32          2d     T53     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 49, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = alloca [4 x i32], align 4
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = icmp ne i32 %60, 0
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = alloca [12 x float], align 4
  %102 = alloca [12 x float], align 4
  %103 = alloca [4 x float], align 4
  %104 = alloca [4 x float], align 4
  %105 = alloca [4 x float], align 4
  %106 = alloca [3 x float], align 4
  %107 = alloca [3 x float], align 4
  %108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = fmul fast float %111, %97
  %113 = fmul fast float %111, %98
  %114 = select i1 %61, float 1.000000e+00, float -1.000000e+00
  %115 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %116 = bitcast float %115 to i32
  %117 = ashr i32 %116, 1
  %118 = sub nsw i32 1597250115, %117
  %119 = bitcast i32 %118 to float
  %120 = fmul fast float %88, %114
  %121 = fmul fast float %120, %119
  %122 = fmul fast float %89, %114
  %123 = fmul fast float %122, %119
  %124 = fmul fast float %90, %114
  %125 = fmul fast float %124, %119
  %126 = fmul fast float %89, %86
  %127 = fmul fast float %90, %85
  %128 = fsub fast float %126, %127
  %129 = fmul fast float %90, %84
  %130 = fmul fast float %88, %86
  %131 = fsub fast float %129, %130
  %132 = fmul fast float %88, %85
  %133 = fmul fast float %89, %84
  %134 = fsub fast float %132, %133
  %135 = fmul fast float %128, %87
  %136 = fmul fast float %131, %87
  %137 = fmul fast float %134, %87
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %141 = fmul fast float %112, 2.000000e+00
  %142 = fmul fast float %141, %139
  %143 = fmul fast float %113, 2.000000e+00
  %144 = fmul fast float %143, %140
  %145 = fsub fast float 1.000000e+00, %142
  %146 = fsub fast float 1.000000e+00, %144
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = fmul fast float %145, %148
  %152 = fmul fast float %145, %149
  %153 = fmul fast float %145, %150
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = fmul fast float %146, %155
  %159 = fmul fast float %146, %156
  %160 = fmul fast float %146, %157
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = fadd fast float %158, %162
  %166 = fadd fast float %165, %151
  %167 = fadd fast float %159, %163
  %168 = fadd fast float %167, %152
  %169 = fadd fast float %160, %164
  %170 = fadd fast float %169, %153
  %171 = fmul fast float %166, %100
  %172 = fmul fast float %168, %100
  %173 = fmul fast float %170, %100
  %174 = fmul fast float %112, 5.000000e-01
  %175 = fmul fast float %113, 5.000000e-01
  %176 = fptosi float %174 to i32
  %177 = fptosi float %175 to i32
  %178 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %176, i32 %177, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = lshr i32 %179, 18
  %181 = uitofp i32 %180 to float
  %182 = fmul fast float %181, 0x3F4C00EBA0000000
  %183 = call float @dx.op.unary.f32(i32 21, float %182)  ; Exp(value)
  %184 = fadd fast float %183, -1.000000e+00
  %185 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %186 = extractvalue %dx.types.Dimensions %185, 0
  %187 = sitofp i32 %186 to float
  %188 = extractvalue %dx.types.Dimensions %185, 1
  %189 = sitofp i32 %188 to float
  %190 = fcmp fast oge float %174, %187
  %191 = fcmp fast oge float %175, %189
  %192 = or i1 %190, %191
  %193 = select i1 %192, float 0x4197782600000000, float %184
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %196 = extractvalue %dx.types.CBufRet.f32 %194, 3
  %197 = fmul fast float %195, %112
  %198 = fmul fast float %196, %113
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = and i32 %200, 114688
  %202 = icmp ne i32 %201, 0
  %203 = select i1 %202, float %197, float 0.000000e+00
  %204 = select i1 %202, float %198, float 0.000000e+00
  %205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %203, float %204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fmul fast float %206, 2.550000e+02
  %208 = fptoui float %207 to i32
  %209 = select i1 %202, i32 %208, i32 0
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.i32 %211, 3
  %213 = and i32 %212, 3
  %214 = icmp ne i32 %213, 0
  %215 = and i32 %212, 4
  %216 = icmp ne i32 %215, 0
  %217 = and i1 %214, %216
  br i1 %217, label %218, label %229

; <label>:218                                     ; preds = %0
  %219 = extractvalue %dx.types.CBufRet.f32 %210, 3
  %220 = fmul fast float %219, %113
  %221 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %222 = fmul fast float %221, %112
  %223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %222, float %220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = fsub fast float 1.000000e+00, %224
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 0
  %228 = fcmp fast olt float %225, %227
  br label %232

; <label>:229                                     ; preds = %0
  %230 = icmp eq i32 %215, 0
  %231 = and i1 %214, %230
  br label %232

; <label>:232                                     ; preds = %229, %218
  %233 = phi i1 [ %228, %218 ], [ %231, %229 ]
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %236 = fmul fast float %235, 0x3FE3C6EF40000000
  %237 = frem fast float %112, 2.560000e+02
  %238 = frem fast float %113, 2.560000e+02
  %239 = fptoui float %237 to i32
  %240 = fptoui float %238 to i32
  %241 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %239, i32 %240, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = fadd fast float %242, %236
  %244 = call float @dx.op.unary.f32(i32 22, float %243)  ; Frc(value)
  %245 = add i32 %62, 156
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = shl i32 %247, 4
  %249 = and i32 %248, 32752
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %247, 7
  %252 = and i32 %251, 32752
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %247, 22
  %255 = shl nuw nsw i32 %254, 5
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = add i32 %62, 216
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F70101020000000
  %263 = lshr i32 %259, 8
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = lshr i32 %259, 16
  %268 = and i32 %267, 255
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3F70101020000000
  %271 = add i32 %62, 36
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 65535
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %273, 16
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = add i32 %62, 288
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 65535
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %280, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = fmul fast float %282, 0x3F50624DE0000000
  %286 = fmul fast float %284, 0x3F50624DE0000000
  %287 = add i32 %62, 172
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %299 = add i32 %62, 232
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %313 = add i32 %62, 52
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = add i32 %62, 304
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = fmul fast float %324, 0x3F50624DE0000000
  %328 = fmul fast float %326, 0x3F50624DE0000000
  %329 = add i32 %62, 188
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = shl i32 %331, 4
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %331, 7
  %336 = and i32 %335, 32752
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %331, 22
  %339 = shl nuw nsw i32 %338, 5
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = add i32 %62, 248
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = lshr i32 %343, 8
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = lshr i32 %343, 16
  %352 = and i32 %351, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = add i32 %62, 68
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 65535
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %357, 16
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = add i32 %62, 320
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 65535
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %364, 16
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = fmul fast float %366, 0x3F50624DE0000000
  %370 = fmul fast float %368, 0x3F50624DE0000000
  %371 = add i32 %62, 204
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %383 = add i32 %62, 264
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 255
  %387 = uitofp i32 %386 to float
  %388 = fmul fast float %387, 0x3F70101020000000
  %389 = lshr i32 %385, 8
  %390 = and i32 %389, 255
  %391 = uitofp i32 %390 to float
  %392 = fmul fast float %391, 0x3F70101020000000
  %393 = lshr i32 %385, 16
  %394 = and i32 %393, 255
  %395 = uitofp i32 %394 to float
  %396 = fmul fast float %395, 0x3F70101020000000
  %397 = add i32 %62, 84
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 65535
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %399, 16
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = add i32 %62, 336
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 65535
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %406, 16
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = fmul fast float %408, 0x3F50624DE0000000
  %412 = fmul fast float %410, 0x3F50624DE0000000
  %413 = add i32 %62, 348
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 32
  %417 = icmp eq i32 %416, 0
  %418 = and i32 %415, 64
  %419 = icmp eq i32 %418, 0
  %420 = and i32 %415, 128
  %421 = icmp eq i32 %420, 0
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 2
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %441, label %426

; <label>:426                                     ; preds = %232
  %427 = add i32 %62, 524
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = add i32 %429, 0
  %431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %430, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %432 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %431, %dx.types.Handle %109, float %91, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = extractvalue %dx.types.ResRet.f32 %432, 3
  %437 = fmul fast float %436, %93
  %438 = fmul fast float %433, %94
  %439 = fmul fast float %434, %95
  %440 = fmul fast float %435, %96
  br label %441

; <label>:441                                     ; preds = %426, %232
  %442 = phi float [ %96, %232 ], [ %440, %426 ]
  %443 = phi float [ %95, %232 ], [ %439, %426 ]
  %444 = phi float [ %94, %232 ], [ %438, %426 ]
  %445 = phi float [ %93, %232 ], [ %437, %426 ]
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 2
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %469, label %450

; <label>:450                                     ; preds = %441
  %451 = add i32 %62, 44
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 1
  %455 = icmp ne i32 %454, 0
  %456 = select i1 %455, float %444, float 1.000000e+00
  %457 = add i32 %62, 60
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 1
  %461 = icmp ne i32 %460, 0
  %462 = select i1 %461, float %443, float 1.000000e+00
  %463 = add i32 %62, 76
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 1
  %467 = icmp ne i32 %466, 0
  %468 = select i1 %467, float %442, float 1.000000e+00
  br label %469

; <label>:469                                     ; preds = %450, %441
  %470 = phi float [ %442, %441 ], [ %468, %450 ]
  %471 = phi float [ %443, %441 ], [ %462, %450 ]
  %472 = phi float [ %444, %441 ], [ %456, %450 ]
  %473 = lshr i32 %447, 20
  %474 = and i32 %473, 3
  %475 = add nuw nsw i32 %474, 1
  %476 = add i32 %62, 24
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = add i32 %62, 28
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = or i32 %481, %478
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %1133, label %484

; <label>:484                                     ; preds = %469
  %485 = and i32 %478, 262144
  %486 = icmp ne i32 %485, 0
  %487 = select i1 %486, float %66, float 1.000000e+00
  %488 = select i1 %486, float %67, float 0.000000e+00
  %489 = select i1 %486, float %68, float 0.000000e+00
  %490 = select i1 %486, float %69, float 1.000000e+00
  %491 = select i1 %486, float %70, float %91
  %492 = select i1 %486, float %71, float %92
  %493 = add i32 %62, 284
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = lshr i32 %495, 16
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = fmul fast float %497, 0x3F50624DE0000000
  %499 = add i32 %62, 88
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = lshr i32 %501, 16
  %503 = and i32 %502, 255
  %504 = lshr i32 %501, 24
  %505 = add i32 %62, 292
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = and i32 %507, 65535
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = lshr i32 %507, 16
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = add i32 %62, 32
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = lshr i32 %514, 22
  %516 = shl nuw nsw i32 %515, 5
  %517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %516)  ; LegacyF16ToF32(value)
  %518 = shl i32 %514, 4
  %519 = and i32 %518, 32752
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = lshr i32 %514, 7
  %522 = and i32 %521, 32752
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 3
  %526 = fmul fast float %525, 1.000000e+03
  %527 = fmul fast float %285, %526
  %528 = call float @dx.op.unary.f32(i32 22, float %527)  ; Frc(value)
  %529 = fadd fast float %528, %275
  %530 = fmul fast float %286, %526
  %531 = call float @dx.op.unary.f32(i32 22, float %530)  ; Frc(value)
  %532 = fadd fast float %531, %277
  %533 = fmul fast float %498, %526
  %534 = call float @dx.op.unary.f32(i32 22, float %533)  ; Frc(value)
  %535 = fmul fast float %534, 0x401921FB60000000
  %536 = fadd fast float %535, %517
  %537 = call float @dx.op.unary.f32(i32 13, float %536)  ; Sin(value)
  %538 = call float @dx.op.unary.f32(i32 12, float %536)  ; Cos(value)
  %539 = fsub fast float -0.000000e+00, %537
  %540 = fadd fast float %491, -5.000000e-01
  %541 = fadd fast float %492, -5.000000e-01
  %542 = fmul fast float %509, %540
  %543 = fmul fast float %511, %541
  %544 = fadd fast float %542, 5.000000e-01
  %545 = fadd fast float %543, 5.000000e-01
  %546 = fmul fast float %520, %544
  %547 = fmul fast float %523, %545
  %548 = fmul fast float %538, %546
  %549 = call float @dx.op.tertiary.f32(i32 46, float %539, float %547, float %548)  ; FMad(a,b,c)
  %550 = fmul fast float %537, %546
  %551 = call float @dx.op.tertiary.f32(i32 46, float %538, float %547, float %550)  ; FMad(a,b,c)
  %552 = fadd fast float %529, %549
  %553 = fadd fast float %532, %551
  %554 = icmp ugt i32 %503, 1
  %555 = icmp ugt i32 %501, 33554431
  %556 = or i1 %555, %554
  br i1 %556, label %557, label %582

; <label>:557                                     ; preds = %484
  %558 = add i32 %62, 228
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = lshr i32 %560, 16
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = fmul fast float %525, %562
  %564 = call float @dx.op.unary.f32(i32 22, float %563)  ; Frc(value)
  %565 = mul nuw nsw i32 %503, %504
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %564, %566
  %568 = call float @dx.op.unary.f32(i32 27, float %567)  ; Round_ni(value)
  %569 = fptoui float %568 to i32
  %570 = urem i32 %569, %503
  %571 = udiv i32 %569, %504
  %572 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %573 = call float @dx.op.unary.f32(i32 22, float %553)  ; Frc(value)
  %574 = uitofp i32 %570 to float
  %575 = uitofp i32 %571 to float
  %576 = fadd fast float %572, %574
  %577 = fadd fast float %573, %575
  %578 = uitofp i32 %503 to float
  %579 = uitofp i32 %504 to float
  %580 = fdiv fast float %576, %578
  %581 = fdiv fast float %577, %579
  br label %582

; <label>:582                                     ; preds = %557, %484
  %583 = phi float [ %580, %557 ], [ %552, %484 ]
  %584 = phi float [ %581, %557 ], [ %553, %484 ]
  %585 = and i32 %478, 16777216
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %696, label %587

; <label>:587                                     ; preds = %582
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %590 = extractvalue %dx.types.CBufRet.f32 %588, 1
  %591 = extractvalue %dx.types.CBufRet.f32 %588, 2
  %592 = fadd fast float %589, %171
  %593 = fadd fast float %590, %172
  %594 = fadd fast float %591, %173
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 0
  %597 = call float @dx.op.unary.f32(i32 7, float %596)  ; Saturate(value)
  %598 = icmp eq i32 %63, 65535
  br i1 %598, label %693, label %599

; <label>:599                                     ; preds = %587
  %600 = lshr i32 %63, 1
  %601 = shl i32 %600, 2
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %63, 1
  %605 = icmp ne i32 %604, 0
  %606 = lshr i32 %603, 16
  %607 = and i32 %603, 65535
  %608 = select i1 %605, i32 %606, i32 %607
  %609 = icmp eq i32 %608, 65535
  br i1 %609, label %689, label %610

; <label>:610                                     ; preds = %599
  %611 = mul nuw nsw i32 %608, 40
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = add nuw nsw i32 %611, 12
  %617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = extractvalue %dx.types.ResRet.f32 %617, 1
  %620 = extractvalue %dx.types.ResRet.f32 %617, 2
  %621 = add nuw nsw i32 %611, 24
  %622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = extractvalue %dx.types.ResRet.f32 %622, 1
  %625 = extractvalue %dx.types.ResRet.f32 %622, 2
  %626 = add nuw nsw i32 %611, 36
  %627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = fsub fast float %592, %613
  %630 = fsub fast float %593, %614
  %631 = fsub fast float %594, %615
  %632 = fmul fast float %628, %629
  %633 = fmul fast float %628, %630
  %634 = fmul fast float %628, %631
  %635 = call float @dx.op.unary.f32(i32 27, float %632)  ; Round_ni(value)
  %636 = call float @dx.op.unary.f32(i32 27, float %633)  ; Round_ni(value)
  %637 = call float @dx.op.unary.f32(i32 27, float %634)  ; Round_ni(value)
  %638 = fadd fast float %635, 5.000000e-01
  %639 = fadd fast float %636, 5.000000e-01
  %640 = fadd fast float %637, 5.000000e-01
  %641 = fmul fast float %638, %618
  %642 = fmul fast float %639, %619
  %643 = fmul fast float %640, %620
  %644 = shl i32 %63, 2
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = add i32 %646, 0
  %648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %649 = call float @dx.op.unary.f32(i32 22, float %641)  ; Frc(value)
  %650 = call float @dx.op.unary.f32(i32 22, float %642)  ; Frc(value)
  %651 = call float @dx.op.unary.f32(i32 22, float %643)  ; Frc(value)
  %652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %648, %dx.types.Handle %55, float %649, float %650, float %651, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = extractvalue %dx.types.ResRet.f32 %652, 1
  %655 = extractvalue %dx.types.ResRet.f32 %652, 2
  %656 = fmul fast float %653, 1.023000e+03
  %657 = fmul fast float %654, 1.023000e+03
  %658 = fmul fast float %655, 1.023000e+03
  %659 = fadd fast float %656, 5.000000e-01
  %660 = fadd fast float %657, 5.000000e-01
  %661 = fadd fast float %658, 5.000000e-01
  %662 = call float @dx.op.unary.f32(i32 27, float %659)  ; Round_ni(value)
  %663 = call float @dx.op.unary.f32(i32 27, float %660)  ; Round_ni(value)
  %664 = call float @dx.op.unary.f32(i32 27, float %661)  ; Round_ni(value)
  %665 = fsub fast float %632, %635
  %666 = fsub fast float %633, %636
  %667 = fsub fast float %634, %637
  %668 = fmul fast float %665, 7.500000e-01
  %669 = fmul fast float %666, 7.500000e-01
  %670 = fmul fast float %667, 7.500000e-01
  %671 = fadd fast float %635, 1.250000e-01
  %672 = fadd fast float %671, %668
  %673 = fadd fast float %672, %662
  %674 = fadd fast float %636, 1.250000e-01
  %675 = fadd fast float %674, %669
  %676 = fadd fast float %675, %663
  %677 = fadd fast float %637, 1.250000e-01
  %678 = fadd fast float %677, %670
  %679 = fadd fast float %678, %664
  %680 = fmul fast float %673, %623
  %681 = fmul fast float %676, %624
  %682 = fmul fast float %679, %625
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = add i32 %684, 0
  %686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %685, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %686, %dx.types.Handle %53, float %680, float %681, float %682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %688 = extractvalue %dx.types.ResRet.f32 %687, 0
  br label %689

; <label>:689                                     ; preds = %610, %599
  %690 = phi float [ %688, %610 ], [ -1.000000e+00, %599 ]
  %691 = fadd fast float %690, %597
  %692 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  br label %693

; <label>:693                                     ; preds = %689, %587
  %694 = phi float [ %692, %689 ], [ %597, %587 ]
  %695 = fmul fast float %694, %445
  br label %696

; <label>:696                                     ; preds = %693, %582
  %697 = phi float [ %695, %693 ], [ %445, %582 ]
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 256
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %748, label %702

; <label>:702                                     ; preds = %696
  %703 = add i32 %62, 472
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = add i32 %705, 0
  %707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %707, %dx.types.Handle %109, float %583, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = add i32 %62, 100
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = shl i32 %712, 4
  %714 = and i32 %713, 32752
  %715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %714)  ; LegacyF16ToF32(value)
  %716 = lshr i32 %712, 7
  %717 = and i32 %716, 32752
  %718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %717)  ; LegacyF16ToF32(value)
  %719 = fsub fast float 1.000000e+00, %697
  %720 = call float @dx.op.binary.f32(i32 35, float %719, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %721 = bitcast float %697 to i32
  %722 = sitofp i32 %721 to float
  %723 = fadd fast float %722, 0xC1CFBF8940000000
  %724 = fmul fast float %718, %723
  %725 = fadd fast float %724, 0x41CFBF8940000000
  %726 = fptosi float %725 to i32
  %727 = bitcast i32 %726 to float
  %728 = bitcast float %720 to i32
  %729 = sitofp i32 %728 to float
  %730 = fadd fast float %729, 0xC1CFBF8940000000
  %731 = fmul fast float %730, %718
  %732 = fadd fast float %731, 0x41CFBF8940000000
  %733 = fptosi float %732 to i32
  %734 = bitcast i32 %733 to float
  %735 = fmul fast float %727, %715
  %736 = fmul fast float %734, %715
  %737 = fsub fast float %720, %735
  %738 = fadd fast float %736, %720
  %739 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %740 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  %741 = fsub fast float %709, %739
  %742 = fsub fast float %740, %739
  %743 = bitcast float %742 to i32
  %744 = sub nsw i32 2129859010, %743
  %745 = bitcast i32 %744 to float
  %746 = fmul fast float %745, %741
  %747 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  br label %748

; <label>:748                                     ; preds = %702, %696
  %749 = phi float [ %747, %702 ], [ %697, %696 ]
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = and i32 %751, 128
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %770, label %754

; <label>:754                                     ; preds = %748
  %755 = add i32 %62, 456
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = add i32 %757, 0
  %759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %758, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %760 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %759, %dx.types.Handle %109, float %583, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 524288
  %765 = icmp ne i32 %764, 0
  %766 = fcmp fast ogt float %761, 0x3FE0101020000000
  %767 = select i1 %766, float 1.000000e+00, float 0.000000e+00
  %768 = select i1 %765, float %767, float %761
  %769 = fmul fast float %768, %749
  br label %770

; <label>:770                                     ; preds = %754, %748
  %771 = phi float [ %769, %754 ], [ %749, %748 ]
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = and i32 %773, 16
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %974, label %776

; <label>:776                                     ; preds = %770
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = add i32 %62, 408
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %779, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = add i32 %781, 0
  %783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %782, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %784 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %783, %dx.types.Handle %108, float %583, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %785 = extractvalue %dx.types.ResRet.f32 %784, 0
  %786 = extractvalue %dx.types.ResRet.f32 %784, 1
  %787 = extractvalue %dx.types.ResRet.f32 %784, 2
  %788 = extractvalue %dx.types.ResRet.f32 %784, 3
  %789 = and i32 %778, 255
  %790 = uitofp i32 %789 to float
  %791 = lshr i32 %778, 8
  %792 = and i32 %791, 255
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %788, %790
  %795 = fadd fast float %794, %793
  %796 = fmul fast float %795, 0x3F70101000000000
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, 512
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %809, label %801

; <label>:801                                     ; preds = %776
  %802 = add i32 %62, 492
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = add i32 %804, 0
  %806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %805, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %807 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %806, %dx.types.Handle %109, float %583, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %808 = extractvalue %dx.types.ResRet.f32 %807, 0
  br label %809

; <label>:809                                     ; preds = %801, %776
  %810 = phi float [ %808, %801 ], [ 1.000000e+00, %776 ]
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 33554432
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %921, label %815

; <label>:815                                     ; preds = %809
  %816 = add i32 %62, 224
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = and i32 %818, 65535
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = lshr i32 %818, 16
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = add i32 %62, 228
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = and i32 %825, 65535
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = lshr i32 %829, 24
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %831, 0x3F70101020000000
  %833 = and i32 %829, 255
  %834 = uitofp i32 %833 to float
  %835 = fmul fast float %834, 0x3F70101020000000
  %836 = lshr i32 %829, 8
  %837 = and i32 %836, 255
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F70101020000000
  %840 = lshr i32 %829, 16
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101020000000
  %844 = add i32 %62, 220
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = lshr i32 %846, 24
  %848 = uitofp i32 %847 to float
  %849 = fmul fast float %848, 0x3F70101020000000
  %850 = and i32 %846, 255
  %851 = uitofp i32 %850 to float
  %852 = fmul fast float %851, 0x3F70101020000000
  %853 = lshr i32 %846, 8
  %854 = and i32 %853, 255
  %855 = uitofp i32 %854 to float
  %856 = fmul fast float %855, 0x3F70101020000000
  %857 = lshr i32 %846, 16
  %858 = and i32 %857, 255
  %859 = uitofp i32 %858 to float
  %860 = fmul fast float %859, 0x3F70101020000000
  %861 = bitcast float %785 to i32
  %862 = ashr i32 %861, 1
  %863 = sub nsw i32 1597463174, %862
  %864 = bitcast i32 %863 to float
  %865 = fmul fast float %785, 5.000000e-01
  %866 = fmul fast float %864, %864
  %867 = fmul fast float %866, %865
  %868 = fsub fast float 1.500000e+00, %867
  %869 = fmul fast float %864, %785
  %870 = fmul fast float %869, %868
  %871 = bitcast float %786 to i32
  %872 = ashr i32 %871, 1
  %873 = sub nsw i32 1597463174, %872
  %874 = bitcast i32 %873 to float
  %875 = fmul fast float %786, 5.000000e-01
  %876 = fmul fast float %874, %874
  %877 = fmul fast float %876, %875
  %878 = fsub fast float 1.500000e+00, %877
  %879 = fmul fast float %874, %786
  %880 = fmul fast float %879, %878
  %881 = bitcast float %787 to i32
  %882 = ashr i32 %881, 1
  %883 = sub nsw i32 1597463174, %882
  %884 = bitcast i32 %883 to float
  %885 = fmul fast float %787, 5.000000e-01
  %886 = fmul fast float %884, %884
  %887 = fmul fast float %886, %885
  %888 = fsub fast float 1.500000e+00, %887
  %889 = fmul fast float %884, %787
  %890 = fmul fast float %889, %888
  %891 = fsub fast float %870, %852
  %892 = fsub fast float %880, %856
  %893 = fsub fast float %890, %860
  %894 = fmul fast float %891, %820
  %895 = fmul fast float %892, %822
  %896 = fmul fast float %893, %827
  %897 = fadd fast float %894, %835
  %898 = fadd fast float %895, %839
  %899 = fadd fast float %896, %843
  %900 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %901 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  %902 = call float @dx.op.unary.f32(i32 7, float %899)  ; Saturate(value)
  %903 = fmul fast float %900, %900
  %904 = fmul fast float %901, %901
  %905 = fmul fast float %902, %902
  %906 = fsub fast float %903, %785
  %907 = fsub fast float %904, %786
  %908 = fsub fast float %905, %787
  %909 = fmul fast float %906, %810
  %910 = fmul fast float %907, %810
  %911 = fmul fast float %908, %810
  %912 = fadd fast float %909, %785
  %913 = fadd fast float %910, %786
  %914 = fadd fast float %911, %787
  %915 = fadd fast float %832, %796
  %916 = fsub fast float %915, %849
  %917 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  %918 = fsub fast float %917, %796
  %919 = fmul fast float %918, %810
  %920 = fadd fast float %919, %796
  br label %974

; <label>:921                                     ; preds = %809
  %922 = and i32 %812, 134217728
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %958, label %924

; <label>:924                                     ; preds = %921
  %925 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %926 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %927 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %928 = fadd fast float %925, -5.000000e-01
  %929 = fadd fast float %926, -5.000000e-01
  %930 = fadd fast float %927, -5.000000e-01
  %931 = fmul fast float %928, %810
  %932 = fmul fast float %929, %810
  %933 = fmul fast float %930, %810
  %934 = fadd fast float %931, 5.000000e-01
  %935 = fadd fast float %932, 5.000000e-01
  %936 = fadd fast float %933, 5.000000e-01
  %937 = call float @dx.op.unary.f32(i32 24, float %785)  ; Sqrt(value)
  %938 = call float @dx.op.unary.f32(i32 24, float %786)  ; Sqrt(value)
  %939 = call float @dx.op.unary.f32(i32 24, float %787)  ; Sqrt(value)
  %940 = fmul fast float %934, 2.000000e+00
  %941 = fsub fast float 1.000000e+00, %940
  %942 = fmul fast float %941, %937
  %943 = fadd fast float %942, %940
  %944 = fmul fast float %943, %937
  %945 = fmul fast float %935, 2.000000e+00
  %946 = fsub fast float 1.000000e+00, %945
  %947 = fmul fast float %946, %938
  %948 = fadd fast float %947, %945
  %949 = fmul fast float %948, %938
  %950 = fmul fast float %936, 2.000000e+00
  %951 = fsub fast float 1.000000e+00, %950
  %952 = fmul fast float %951, %939
  %953 = fadd fast float %952, %950
  %954 = fmul fast float %953, %939
  %955 = fmul fast float %944, %944
  %956 = fmul fast float %949, %949
  %957 = fmul fast float %954, %954
  br label %974

; <label>:958                                     ; preds = %921
  %959 = fmul fast float %262, %262
  %960 = fmul fast float %266, %266
  %961 = fmul fast float %270, %270
  %962 = fadd fast float %959, -1.000000e+00
  %963 = fadd fast float %960, -1.000000e+00
  %964 = fadd fast float %961, -1.000000e+00
  %965 = fmul fast float %810, %962
  %966 = fmul fast float %810, %963
  %967 = fmul fast float %810, %964
  %968 = fadd fast float %965, 1.000000e+00
  %969 = fadd fast float %966, 1.000000e+00
  %970 = fadd fast float %967, 1.000000e+00
  %971 = fmul fast float %968, %785
  %972 = fmul fast float %969, %786
  %973 = fmul fast float %970, %787
  br label %974

; <label>:974                                     ; preds = %958, %924, %815, %770
  %975 = phi float [ %920, %815 ], [ %796, %924 ], [ %796, %958 ], [ 0x3FA23C0BE0000000, %770 ]
  %976 = phi float [ %912, %815 ], [ %955, %924 ], [ %971, %958 ], [ 1.000000e+00, %770 ]
  %977 = phi float [ %913, %815 ], [ %956, %924 ], [ %972, %958 ], [ 1.000000e+00, %770 ]
  %978 = phi float [ %914, %815 ], [ %957, %924 ], [ %973, %958 ], [ 1.000000e+00, %770 ]
  %979 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.i32 %979, 1
  %981 = and i32 %980, 1
  %982 = icmp ne i32 %981, 0
  %983 = add i32 %62, 356
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 32
  %987 = icmp ne i32 %986, 0
  %988 = and i1 %982, %987
  %989 = select i1 %988, float 1.000000e+00, float %976
  %990 = select i1 %988, float 0x3FD3333340000000, float %977
  %991 = select i1 %988, float 0x3FD3333340000000, float %978
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = and i32 %993, 32
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1068, label %996

; <label>:996                                     ; preds = %974
  %997 = add i32 %62, 92
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = add i32 %62, 424
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = add i32 %1002, 0
  %1004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1005 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1004, %dx.types.Handle %108, float %583, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = extractvalue %dx.types.ResRet.f32 %1005, 3
  %1010 = and i32 %999, 255
  %1011 = uitofp i32 %1010 to float
  %1012 = lshr i32 %999, 8
  %1013 = and i32 %1012, 255
  %1014 = uitofp i32 %1013 to float
  %1015 = lshr i32 %999, 16
  %1016 = and i32 %1015, 255
  %1017 = uitofp i32 %1016 to float
  %1018 = fmul fast float %1017, 0x3F70101000000000
  %1019 = fmul fast float %1006, %1011
  %1020 = fadd fast float %1019, %1014
  %1021 = fmul fast float %1020, 0x3F70101000000000
  %1022 = fadd fast float %1007, -5.000000e-01
  %1023 = fadd fast float %1009, -5.000000e-01
  %1024 = fmul fast float %1022, %1018
  %1025 = fmul fast float %1023, %1018
  %1026 = fadd fast float %1024, 5.000000e-01
  %1027 = fadd fast float %1025, 5.000000e-01
  %1028 = fmul fast float %1026, 2.000000e+00
  %1029 = fadd fast float %1028, -1.000000e+00
  %1030 = fmul fast float %1027, 2.000000e+00
  %1031 = fadd fast float %1030, -1.000000e+00
  %1032 = fadd fast float %1029, %1031
  %1033 = fmul fast float %1032, 5.000000e-01
  %1034 = fsub fast float %1029, %1031
  %1035 = fmul fast float %1034, 5.000000e-01
  %1036 = call float @dx.op.unary.f32(i32 6, float %1033)  ; FAbs(value)
  %1037 = fsub fast float 1.000000e+00, %1036
  %1038 = call float @dx.op.unary.f32(i32 6, float %1035)  ; FAbs(value)
  %1039 = fsub fast float %1037, %1038
  %1040 = call float @dx.op.dot3.f32(i32 55, float %1033, float %1035, float %1039, float %1033, float %1035, float %1039)  ; Dot3(ax,ay,az,bx,by,bz)
  %1041 = call float @dx.op.unary.f32(i32 25, float %1040)  ; Rsqrt(value)
  %1042 = fmul fast float %1033, %1041
  %1043 = fmul fast float %1035, %1041
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = and i32 %1045, 67108864
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1064, label %1048

; <label>:1048                                    ; preds = %996
  %1049 = add i32 %62, 280
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = and i32 %1051, 65535
  %1053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1052)  ; LegacyF16ToF32(value)
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = and i32 %1055, 65535
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = lshr i32 %1051, 16
  %1059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1058)  ; LegacyF16ToF32(value)
  %1060 = fsub fast float %1021, %1059
  %1061 = fmul fast float %1060, %1053
  %1062 = fadd fast float %1061, %1057
  %1063 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  br label %1064

; <label>:1064                                    ; preds = %1048, %996
  %1065 = phi float [ %1063, %1048 ], [ %1021, %996 ]
  %1066 = call float @dx.op.dot2.f32(i32 54, float %1042, float %1043, float %487, float %488)  ; Dot2(ax,ay,bx,by)
  %1067 = call float @dx.op.dot2.f32(i32 54, float %1042, float %1043, float %489, float %490)  ; Dot2(ax,ay,bx,by)
  br label %1068

; <label>:1068                                    ; preds = %1064, %974
  %1069 = phi float [ %1065, %1064 ], [ 0x3FD6666660000000, %974 ]
  %1070 = phi float [ %1066, %1064 ], [ 0.000000e+00, %974 ]
  %1071 = phi float [ %1067, %1064 ], [ 0.000000e+00, %974 ]
  %1072 = phi float [ %1008, %1064 ], [ 1.000000e+00, %974 ]
  %1073 = add i32 %62, 160
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = lshr i32 %1075, 22
  %1077 = shl nuw nsw i32 %1076, 5
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = and i32 %1080, 64
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1116, label %1083

; <label>:1083                                    ; preds = %1068
  %1084 = add i32 %62, 440
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = add i32 %1086, 0
  %1088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = and i32 %1090, 131072
  %1092 = icmp eq i32 %1091, 0
  %1093 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1088, %dx.types.Handle %108, float %583, float %584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.ResRet.f32 %1093, 2
  %1097 = fmul fast float %1094, %250
  %1098 = fmul fast float %1095, %253
  %1099 = fmul fast float %1096, %256
  br i1 %1092, label %1106, label %1100

; <label>:1100                                    ; preds = %1083
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 0
  %1103 = fmul fast float %1102, %1097
  %1104 = fmul fast float %1102, %1098
  %1105 = fmul fast float %1102, %1099
  br label %1106

; <label>:1106                                    ; preds = %1100, %1083
  %1107 = phi float [ %1103, %1100 ], [ %1097, %1083 ]
  %1108 = phi float [ %1104, %1100 ], [ %1098, %1083 ]
  %1109 = phi float [ %1105, %1100 ], [ %1099, %1083 ]
  %1110 = fmul fast float %1107, %1078
  %1111 = select i1 %233, float %1110, float %1107
  %1112 = call float @dx.op.dot3.f32(i32 55, float %1111, float %1108, float %1109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1113 = select i1 %233, float 0.000000e+00, float %1107
  %1114 = select i1 %233, float %1112, float %1108
  %1115 = select i1 %233, float 0.000000e+00, float %1109
  br label %1116

; <label>:1116                                    ; preds = %1106, %1068
  %1117 = phi float [ %1113, %1106 ], [ 0.000000e+00, %1068 ]
  %1118 = phi float [ %1114, %1106 ], [ 0.000000e+00, %1068 ]
  %1119 = phi float [ %1115, %1106 ], [ 0.000000e+00, %1068 ]
  %1120 = add i32 %62, 96
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = lshr i32 %1122, 8
  %1126 = and i32 %1125, 255
  %1127 = uitofp i32 %1126 to float
  %1128 = call float @dx.op.dot3.f32(i32 55, float %989, float %990, float %991, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1129 = fmul fast float %1127, %1128
  %1130 = fadd fast float %1129, %1124
  %1131 = fmul fast float %1130, 0x3F70101020000000
  %1132 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  br label %1133

; <label>:1133                                    ; preds = %1116, %469
  %1134 = phi float [ 0.000000e+00, %469 ], [ %1070, %1116 ]
  %1135 = phi float [ 0.000000e+00, %469 ], [ %1071, %1116 ]
  %1136 = phi float [ 0.000000e+00, %469 ], [ %989, %1116 ]
  %1137 = phi float [ 0.000000e+00, %469 ], [ %990, %1116 ]
  %1138 = phi float [ 0.000000e+00, %469 ], [ %991, %1116 ]
  %1139 = phi float [ 0.000000e+00, %469 ], [ %1117, %1116 ]
  %1140 = phi float [ 0.000000e+00, %469 ], [ %1118, %1116 ]
  %1141 = phi float [ 0.000000e+00, %469 ], [ %1119, %1116 ]
  %1142 = phi float [ 0.000000e+00, %469 ], [ %975, %1116 ]
  %1143 = phi float [ 0.000000e+00, %469 ], [ %771, %1116 ]
  %1144 = phi float [ 0.000000e+00, %469 ], [ %1069, %1116 ]
  %1145 = phi float [ 0.000000e+00, %469 ], [ %1072, %1116 ]
  %1146 = phi float [ 0.000000e+00, %469 ], [ %1132, %1116 ]
  br i1 %417, label %1988, label %1147

; <label>:1147                                    ; preds = %1133
  %1148 = icmp ult i32 %475, 2
  %1149 = add i32 %62, 40
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = add i32 %62, 44
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = or i32 %1154, %1151
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1988, label %1157

; <label>:1157                                    ; preds = %1147
  %1158 = and i32 %1151, 262144
  %1159 = icmp ne i32 %1158, 0
  %1160 = select i1 %1159, float %66, float 1.000000e+00
  %1161 = select i1 %1159, float %67, float 0.000000e+00
  %1162 = select i1 %1159, float %68, float 0.000000e+00
  %1163 = select i1 %1159, float %69, float 1.000000e+00
  %1164 = select i1 %1159, float %70, float %91
  %1165 = select i1 %1159, float %71, float %92
  %1166 = add i32 %62, 300
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = lshr i32 %1168, 16
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = fmul fast float %1170, 0x3F50624DE0000000
  %1172 = add i32 %62, 104
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = lshr i32 %1174, 16
  %1176 = and i32 %1175, 255
  %1177 = lshr i32 %1174, 24
  %1178 = add i32 %62, 308
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 65535
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = lshr i32 %1180, 16
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = add i32 %62, 48
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 22
  %1189 = shl nuw nsw i32 %1188, 5
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = shl i32 %1187, 4
  %1192 = and i32 %1191, 32752
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = lshr i32 %1187, 7
  %1195 = and i32 %1194, 32752
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 3
  %1199 = fmul fast float %1198, 1.000000e+03
  %1200 = fmul fast float %327, %1199
  %1201 = call float @dx.op.unary.f32(i32 22, float %1200)  ; Frc(value)
  %1202 = fadd fast float %1201, %317
  %1203 = fmul fast float %328, %1199
  %1204 = call float @dx.op.unary.f32(i32 22, float %1203)  ; Frc(value)
  %1205 = fadd fast float %1204, %319
  %1206 = fmul fast float %1171, %1199
  %1207 = call float @dx.op.unary.f32(i32 22, float %1206)  ; Frc(value)
  %1208 = fmul fast float %1207, 0x401921FB60000000
  %1209 = fadd fast float %1208, %1190
  %1210 = call float @dx.op.unary.f32(i32 13, float %1209)  ; Sin(value)
  %1211 = call float @dx.op.unary.f32(i32 12, float %1209)  ; Cos(value)
  %1212 = fsub fast float -0.000000e+00, %1210
  %1213 = fadd fast float %1164, -5.000000e-01
  %1214 = fadd fast float %1165, -5.000000e-01
  %1215 = fmul fast float %1182, %1213
  %1216 = fmul fast float %1184, %1214
  %1217 = fadd fast float %1215, 5.000000e-01
  %1218 = fadd fast float %1216, 5.000000e-01
  %1219 = fmul fast float %1193, %1217
  %1220 = fmul fast float %1196, %1218
  %1221 = fmul fast float %1211, %1219
  %1222 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %1220, float %1221)  ; FMad(a,b,c)
  %1223 = fmul fast float %1210, %1219
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %1220, float %1223)  ; FMad(a,b,c)
  %1225 = fadd fast float %1202, %1222
  %1226 = fadd fast float %1205, %1224
  %1227 = icmp ugt i32 %1176, 1
  %1228 = icmp ugt i32 %1174, 33554431
  %1229 = or i1 %1228, %1227
  br i1 %1229, label %1230, label %1255

; <label>:1230                                    ; preds = %1157
  %1231 = add i32 %62, 244
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = lshr i32 %1233, 16
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = fmul fast float %1198, %1235
  %1237 = call float @dx.op.unary.f32(i32 22, float %1236)  ; Frc(value)
  %1238 = mul nuw nsw i32 %1176, %1177
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1237, %1239
  %1241 = call float @dx.op.unary.f32(i32 27, float %1240)  ; Round_ni(value)
  %1242 = fptoui float %1241 to i32
  %1243 = urem i32 %1242, %1176
  %1244 = udiv i32 %1242, %1177
  %1245 = call float @dx.op.unary.f32(i32 22, float %1225)  ; Frc(value)
  %1246 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1247 = uitofp i32 %1243 to float
  %1248 = uitofp i32 %1244 to float
  %1249 = fadd fast float %1245, %1247
  %1250 = fadd fast float %1246, %1248
  %1251 = uitofp i32 %1176 to float
  %1252 = uitofp i32 %1177 to float
  %1253 = fdiv fast float %1249, %1251
  %1254 = fdiv fast float %1250, %1252
  br label %1255

; <label>:1255                                    ; preds = %1230, %1157
  %1256 = phi float [ %1253, %1230 ], [ %1225, %1157 ]
  %1257 = phi float [ %1254, %1230 ], [ %1226, %1157 ]
  %1258 = and i32 %1151, 16777216
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1369, label %1260

; <label>:1260                                    ; preds = %1255
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.CBufRet.f32 %1261, 1
  %1264 = extractvalue %dx.types.CBufRet.f32 %1261, 2
  %1265 = fadd fast float %1262, %171
  %1266 = fadd fast float %1263, %172
  %1267 = fadd fast float %1264, %173
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  %1270 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1271 = icmp eq i32 %63, 65535
  br i1 %1271, label %1366, label %1272

; <label>:1272                                    ; preds = %1260
  %1273 = lshr i32 %63, 1
  %1274 = shl i32 %1273, 2
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = and i32 %63, 1
  %1278 = icmp ne i32 %1277, 0
  %1279 = lshr i32 %1276, 16
  %1280 = and i32 %1276, 65535
  %1281 = select i1 %1278, i32 %1279, i32 %1280
  %1282 = icmp eq i32 %1281, 65535
  br i1 %1282, label %1362, label %1283

; <label>:1283                                    ; preds = %1272
  %1284 = mul nuw nsw i32 %1281, 40
  %1285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.ResRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.ResRet.f32 %1285, 2
  %1289 = add nuw nsw i32 %1284, 12
  %1290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.f32 %1290, 0
  %1292 = extractvalue %dx.types.ResRet.f32 %1290, 1
  %1293 = extractvalue %dx.types.ResRet.f32 %1290, 2
  %1294 = add nuw nsw i32 %1284, 24
  %1295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.f32 %1295, 0
  %1297 = extractvalue %dx.types.ResRet.f32 %1295, 1
  %1298 = extractvalue %dx.types.ResRet.f32 %1295, 2
  %1299 = add nuw nsw i32 %1284, 36
  %1300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.f32 %1300, 0
  %1302 = fsub fast float %1265, %1286
  %1303 = fsub fast float %1266, %1287
  %1304 = fsub fast float %1267, %1288
  %1305 = fmul fast float %1301, %1302
  %1306 = fmul fast float %1301, %1303
  %1307 = fmul fast float %1301, %1304
  %1308 = call float @dx.op.unary.f32(i32 27, float %1305)  ; Round_ni(value)
  %1309 = call float @dx.op.unary.f32(i32 27, float %1306)  ; Round_ni(value)
  %1310 = call float @dx.op.unary.f32(i32 27, float %1307)  ; Round_ni(value)
  %1311 = fadd fast float %1308, 5.000000e-01
  %1312 = fadd fast float %1309, 5.000000e-01
  %1313 = fadd fast float %1310, 5.000000e-01
  %1314 = fmul fast float %1311, %1291
  %1315 = fmul fast float %1312, %1292
  %1316 = fmul fast float %1313, %1293
  %1317 = shl i32 %63, 2
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = add i32 %1319, 0
  %1321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1320, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1322 = call float @dx.op.unary.f32(i32 22, float %1314)  ; Frc(value)
  %1323 = call float @dx.op.unary.f32(i32 22, float %1315)  ; Frc(value)
  %1324 = call float @dx.op.unary.f32(i32 22, float %1316)  ; Frc(value)
  %1325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1321, %dx.types.Handle %55, float %1322, float %1323, float %1324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1326 = extractvalue %dx.types.ResRet.f32 %1325, 0
  %1327 = extractvalue %dx.types.ResRet.f32 %1325, 1
  %1328 = extractvalue %dx.types.ResRet.f32 %1325, 2
  %1329 = fmul fast float %1326, 1.023000e+03
  %1330 = fmul fast float %1327, 1.023000e+03
  %1331 = fmul fast float %1328, 1.023000e+03
  %1332 = fadd fast float %1329, 5.000000e-01
  %1333 = fadd fast float %1330, 5.000000e-01
  %1334 = fadd fast float %1331, 5.000000e-01
  %1335 = call float @dx.op.unary.f32(i32 27, float %1332)  ; Round_ni(value)
  %1336 = call float @dx.op.unary.f32(i32 27, float %1333)  ; Round_ni(value)
  %1337 = call float @dx.op.unary.f32(i32 27, float %1334)  ; Round_ni(value)
  %1338 = fsub fast float %1305, %1308
  %1339 = fsub fast float %1306, %1309
  %1340 = fsub fast float %1307, %1310
  %1341 = fmul fast float %1338, 7.500000e-01
  %1342 = fmul fast float %1339, 7.500000e-01
  %1343 = fmul fast float %1340, 7.500000e-01
  %1344 = fadd fast float %1308, 1.250000e-01
  %1345 = fadd fast float %1344, %1341
  %1346 = fadd fast float %1345, %1335
  %1347 = fadd fast float %1309, 1.250000e-01
  %1348 = fadd fast float %1347, %1342
  %1349 = fadd fast float %1348, %1336
  %1350 = fadd fast float %1310, 1.250000e-01
  %1351 = fadd fast float %1350, %1343
  %1352 = fadd fast float %1351, %1337
  %1353 = fmul fast float %1346, %1296
  %1354 = fmul fast float %1349, %1297
  %1355 = fmul fast float %1352, %1298
  %1356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.i32 %1356, 0
  %1358 = add i32 %1357, 0
  %1359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1358, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1359, %dx.types.Handle %53, float %1353, float %1354, float %1355, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  br label %1362

; <label>:1362                                    ; preds = %1283, %1272
  %1363 = phi float [ %1361, %1283 ], [ -1.000000e+00, %1272 ]
  %1364 = fadd fast float %1363, %1270
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  br label %1366

; <label>:1366                                    ; preds = %1362, %1260
  %1367 = phi float [ %1365, %1362 ], [ %1270, %1260 ]
  %1368 = fmul fast float %1367, %472
  br label %1369

; <label>:1369                                    ; preds = %1366, %1255
  %1370 = phi float [ %1368, %1366 ], [ %472, %1255 ]
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = and i32 %1372, 256
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1421, label %1375

; <label>:1375                                    ; preds = %1369
  %1376 = add i32 %62, 476
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = add i32 %1378, 0
  %1380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1379, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1380, %dx.types.Handle %109, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = add i32 %62, 116
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = shl i32 %1385, 4
  %1387 = and i32 %1386, 32752
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = lshr i32 %1385, 7
  %1390 = and i32 %1389, 32752
  %1391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1390)  ; LegacyF16ToF32(value)
  %1392 = fsub fast float 1.000000e+00, %1370
  %1393 = call float @dx.op.binary.f32(i32 35, float %1392, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1394 = bitcast float %1370 to i32
  %1395 = sitofp i32 %1394 to float
  %1396 = fadd fast float %1395, 0xC1CFBF8940000000
  %1397 = fmul fast float %1391, %1396
  %1398 = fadd fast float %1397, 0x41CFBF8940000000
  %1399 = fptosi float %1398 to i32
  %1400 = bitcast i32 %1399 to float
  %1401 = bitcast float %1393 to i32
  %1402 = sitofp i32 %1401 to float
  %1403 = fadd fast float %1402, 0xC1CFBF8940000000
  %1404 = fmul fast float %1403, %1391
  %1405 = fadd fast float %1404, 0x41CFBF8940000000
  %1406 = fptosi float %1405 to i32
  %1407 = bitcast i32 %1406 to float
  %1408 = fmul fast float %1400, %1388
  %1409 = fmul fast float %1407, %1388
  %1410 = fsub fast float %1393, %1408
  %1411 = fadd fast float %1409, %1393
  %1412 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1413 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  %1414 = fsub fast float %1382, %1412
  %1415 = fsub fast float %1413, %1412
  %1416 = bitcast float %1415 to i32
  %1417 = sub nsw i32 2129859010, %1416
  %1418 = bitcast i32 %1417 to float
  %1419 = fmul fast float %1418, %1414
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  br label %1421

; <label>:1421                                    ; preds = %1375, %1369
  %1422 = phi float [ %1420, %1375 ], [ %1370, %1369 ]
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = and i32 %1424, 128
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1443, label %1427

; <label>:1427                                    ; preds = %1421
  %1428 = add i32 %62, 460
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = add i32 %1430, 0
  %1432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1433 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1432, %dx.types.Handle %109, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = and i32 %1436, 524288
  %1438 = icmp ne i32 %1437, 0
  %1439 = fcmp fast ogt float %1434, 0x3FE0101020000000
  %1440 = select i1 %1439, float 1.000000e+00, float 0.000000e+00
  %1441 = select i1 %1438, float %1440, float %1434
  %1442 = fmul fast float %1441, %1422
  br label %1443

; <label>:1443                                    ; preds = %1427, %1421
  %1444 = phi float [ %1442, %1427 ], [ %1422, %1421 ]
  %1445 = fcmp fast ult float %1444, 0x3F70101020000000
  br i1 %1445, label %1988, label %1446

; <label>:1446                                    ; preds = %1443
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, 16
  %1450 = icmp eq i32 %1449, 0
  br i1 %1450, label %1649, label %1451

; <label>:1451                                    ; preds = %1446
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = add i32 %62, 412
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1454, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = add i32 %1456, 0
  %1458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1458, %dx.types.Handle %108, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1460 = extractvalue %dx.types.ResRet.f32 %1459, 0
  %1461 = extractvalue %dx.types.ResRet.f32 %1459, 1
  %1462 = extractvalue %dx.types.ResRet.f32 %1459, 2
  %1463 = extractvalue %dx.types.ResRet.f32 %1459, 3
  %1464 = and i32 %1453, 255
  %1465 = uitofp i32 %1464 to float
  %1466 = lshr i32 %1453, 8
  %1467 = and i32 %1466, 255
  %1468 = uitofp i32 %1467 to float
  %1469 = fmul fast float %1463, %1465
  %1470 = fadd fast float %1469, %1468
  %1471 = fmul fast float %1470, 0x3F70101000000000
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = and i32 %1473, 512
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1484, label %1476

; <label>:1476                                    ; preds = %1451
  %1477 = add i32 %62, 496
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = add i32 %1479, 0
  %1481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1481, %dx.types.Handle %109, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  br label %1484

; <label>:1484                                    ; preds = %1476, %1451
  %1485 = phi float [ %1483, %1476 ], [ 1.000000e+00, %1451 ]
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 33554432
  %1489 = icmp eq i32 %1488, 0
  br i1 %1489, label %1596, label %1490

; <label>:1490                                    ; preds = %1484
  %1491 = add i32 %62, 240
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 65535
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = lshr i32 %1493, 16
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = add i32 %62, 244
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1498, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = and i32 %1500, 65535
  %1502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1501)  ; LegacyF16ToF32(value)
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = lshr i32 %1504, 24
  %1506 = uitofp i32 %1505 to float
  %1507 = fmul fast float %1506, 0x3F70101020000000
  %1508 = and i32 %1504, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = fmul fast float %1509, 0x3F70101020000000
  %1511 = lshr i32 %1504, 8
  %1512 = and i32 %1511, 255
  %1513 = uitofp i32 %1512 to float
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = lshr i32 %1504, 16
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = add i32 %62, 236
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1519, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = lshr i32 %1521, 24
  %1523 = uitofp i32 %1522 to float
  %1524 = fmul fast float %1523, 0x3F70101020000000
  %1525 = and i32 %1521, 255
  %1526 = uitofp i32 %1525 to float
  %1527 = fmul fast float %1526, 0x3F70101020000000
  %1528 = lshr i32 %1521, 8
  %1529 = and i32 %1528, 255
  %1530 = uitofp i32 %1529 to float
  %1531 = fmul fast float %1530, 0x3F70101020000000
  %1532 = lshr i32 %1521, 16
  %1533 = and i32 %1532, 255
  %1534 = uitofp i32 %1533 to float
  %1535 = fmul fast float %1534, 0x3F70101020000000
  %1536 = bitcast float %1460 to i32
  %1537 = ashr i32 %1536, 1
  %1538 = sub nsw i32 1597463174, %1537
  %1539 = bitcast i32 %1538 to float
  %1540 = fmul fast float %1460, 5.000000e-01
  %1541 = fmul fast float %1539, %1539
  %1542 = fmul fast float %1541, %1540
  %1543 = fsub fast float 1.500000e+00, %1542
  %1544 = fmul fast float %1539, %1460
  %1545 = fmul fast float %1544, %1543
  %1546 = bitcast float %1461 to i32
  %1547 = ashr i32 %1546, 1
  %1548 = sub nsw i32 1597463174, %1547
  %1549 = bitcast i32 %1548 to float
  %1550 = fmul fast float %1461, 5.000000e-01
  %1551 = fmul fast float %1549, %1549
  %1552 = fmul fast float %1551, %1550
  %1553 = fsub fast float 1.500000e+00, %1552
  %1554 = fmul fast float %1549, %1461
  %1555 = fmul fast float %1554, %1553
  %1556 = bitcast float %1462 to i32
  %1557 = ashr i32 %1556, 1
  %1558 = sub nsw i32 1597463174, %1557
  %1559 = bitcast i32 %1558 to float
  %1560 = fmul fast float %1462, 5.000000e-01
  %1561 = fmul fast float %1559, %1559
  %1562 = fmul fast float %1561, %1560
  %1563 = fsub fast float 1.500000e+00, %1562
  %1564 = fmul fast float %1559, %1462
  %1565 = fmul fast float %1564, %1563
  %1566 = fsub fast float %1545, %1527
  %1567 = fsub fast float %1555, %1531
  %1568 = fsub fast float %1565, %1535
  %1569 = fmul fast float %1566, %1495
  %1570 = fmul fast float %1567, %1497
  %1571 = fmul fast float %1568, %1502
  %1572 = fadd fast float %1569, %1510
  %1573 = fadd fast float %1570, %1514
  %1574 = fadd fast float %1571, %1518
  %1575 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  %1576 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  %1577 = call float @dx.op.unary.f32(i32 7, float %1574)  ; Saturate(value)
  %1578 = fmul fast float %1575, %1575
  %1579 = fmul fast float %1576, %1576
  %1580 = fmul fast float %1577, %1577
  %1581 = fsub fast float %1578, %1460
  %1582 = fsub fast float %1579, %1461
  %1583 = fsub fast float %1580, %1462
  %1584 = fmul fast float %1581, %1485
  %1585 = fmul fast float %1582, %1485
  %1586 = fmul fast float %1583, %1485
  %1587 = fadd fast float %1584, %1460
  %1588 = fadd fast float %1585, %1461
  %1589 = fadd fast float %1586, %1462
  %1590 = fadd fast float %1507, %1471
  %1591 = fsub fast float %1590, %1524
  %1592 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  %1593 = fsub fast float %1592, %1471
  %1594 = fmul fast float %1593, %1485
  %1595 = fadd fast float %1594, %1471
  br label %1649

; <label>:1596                                    ; preds = %1484
  %1597 = and i32 %1487, 134217728
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1633, label %1599

; <label>:1599                                    ; preds = %1596
  %1600 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1601 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %1602 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %1603 = fadd fast float %1600, -5.000000e-01
  %1604 = fadd fast float %1601, -5.000000e-01
  %1605 = fadd fast float %1602, -5.000000e-01
  %1606 = fmul fast float %1603, %1485
  %1607 = fmul fast float %1604, %1485
  %1608 = fmul fast float %1605, %1485
  %1609 = fadd fast float %1606, 5.000000e-01
  %1610 = fadd fast float %1607, 5.000000e-01
  %1611 = fadd fast float %1608, 5.000000e-01
  %1612 = call float @dx.op.unary.f32(i32 24, float %1460)  ; Sqrt(value)
  %1613 = call float @dx.op.unary.f32(i32 24, float %1461)  ; Sqrt(value)
  %1614 = call float @dx.op.unary.f32(i32 24, float %1462)  ; Sqrt(value)
  %1615 = fmul fast float %1609, 2.000000e+00
  %1616 = fsub fast float 1.000000e+00, %1615
  %1617 = fmul fast float %1616, %1612
  %1618 = fadd fast float %1617, %1615
  %1619 = fmul fast float %1618, %1612
  %1620 = fmul fast float %1610, 2.000000e+00
  %1621 = fsub fast float 1.000000e+00, %1620
  %1622 = fmul fast float %1621, %1613
  %1623 = fadd fast float %1622, %1620
  %1624 = fmul fast float %1623, %1613
  %1625 = fmul fast float %1611, 2.000000e+00
  %1626 = fsub fast float 1.000000e+00, %1625
  %1627 = fmul fast float %1626, %1614
  %1628 = fadd fast float %1627, %1625
  %1629 = fmul fast float %1628, %1614
  %1630 = fmul fast float %1619, %1619
  %1631 = fmul fast float %1624, %1624
  %1632 = fmul fast float %1629, %1629
  br label %1649

; <label>:1633                                    ; preds = %1596
  %1634 = fmul fast float %304, %304
  %1635 = fmul fast float %308, %308
  %1636 = fmul fast float %312, %312
  %1637 = fadd fast float %1634, -1.000000e+00
  %1638 = fadd fast float %1635, -1.000000e+00
  %1639 = fadd fast float %1636, -1.000000e+00
  %1640 = fmul fast float %1485, %1637
  %1641 = fmul fast float %1485, %1638
  %1642 = fmul fast float %1485, %1639
  %1643 = fadd fast float %1640, 1.000000e+00
  %1644 = fadd fast float %1641, 1.000000e+00
  %1645 = fadd fast float %1642, 1.000000e+00
  %1646 = fmul fast float %1643, %1460
  %1647 = fmul fast float %1644, %1461
  %1648 = fmul fast float %1645, %1462
  br label %1649

; <label>:1649                                    ; preds = %1633, %1599, %1490, %1446
  %1650 = phi float [ %1595, %1490 ], [ %1471, %1599 ], [ %1471, %1633 ], [ 0x3FA23C0BE0000000, %1446 ]
  %1651 = phi float [ %1587, %1490 ], [ %1630, %1599 ], [ %1646, %1633 ], [ 1.000000e+00, %1446 ]
  %1652 = phi float [ %1588, %1490 ], [ %1631, %1599 ], [ %1647, %1633 ], [ 1.000000e+00, %1446 ]
  %1653 = phi float [ %1589, %1490 ], [ %1632, %1599 ], [ %1648, %1633 ], [ 1.000000e+00, %1446 ]
  %1654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.i32 %1654, 1
  %1656 = and i32 %1655, 1
  %1657 = icmp ne i32 %1656, 0
  %1658 = add i32 %62, 356
  %1659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1658, i32 undef)  ; BufferLoad(srv,index,wot)
  %1660 = extractvalue %dx.types.ResRet.i32 %1659, 0
  %1661 = and i32 %1660, 32
  %1662 = icmp ne i32 %1661, 0
  %1663 = and i1 %1657, %1662
  %1664 = select i1 %1663, float 1.000000e+00, float %1651
  %1665 = select i1 %1663, float 0x3FD3333340000000, float %1652
  %1666 = select i1 %1663, float 0x3FD3333340000000, float %1653
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = and i32 %1668, 32
  %1670 = icmp eq i32 %1669, 0
  br i1 %1670, label %1743, label %1671

; <label>:1671                                    ; preds = %1649
  %1672 = add i32 %62, 108
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = add i32 %62, 428
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = add i32 %1677, 0
  %1679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1678, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1680 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1679, %dx.types.Handle %108, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1681 = extractvalue %dx.types.ResRet.f32 %1680, 0
  %1682 = extractvalue %dx.types.ResRet.f32 %1680, 1
  %1683 = extractvalue %dx.types.ResRet.f32 %1680, 2
  %1684 = extractvalue %dx.types.ResRet.f32 %1680, 3
  %1685 = and i32 %1674, 255
  %1686 = uitofp i32 %1685 to float
  %1687 = lshr i32 %1674, 8
  %1688 = and i32 %1687, 255
  %1689 = uitofp i32 %1688 to float
  %1690 = lshr i32 %1674, 16
  %1691 = and i32 %1690, 255
  %1692 = uitofp i32 %1691 to float
  %1693 = fmul fast float %1692, 0x3F70101000000000
  %1694 = fmul fast float %1681, %1686
  %1695 = fadd fast float %1694, %1689
  %1696 = fmul fast float %1695, 0x3F70101000000000
  %1697 = fadd fast float %1682, -5.000000e-01
  %1698 = fadd fast float %1684, -5.000000e-01
  %1699 = fmul fast float %1697, %1693
  %1700 = fmul fast float %1698, %1693
  %1701 = fadd fast float %1699, 5.000000e-01
  %1702 = fadd fast float %1700, 5.000000e-01
  %1703 = fmul fast float %1701, 2.000000e+00
  %1704 = fadd fast float %1703, -1.000000e+00
  %1705 = fmul fast float %1702, 2.000000e+00
  %1706 = fadd fast float %1705, -1.000000e+00
  %1707 = fadd fast float %1704, %1706
  %1708 = fmul fast float %1707, 5.000000e-01
  %1709 = fsub fast float %1704, %1706
  %1710 = fmul fast float %1709, 5.000000e-01
  %1711 = call float @dx.op.unary.f32(i32 6, float %1708)  ; FAbs(value)
  %1712 = fsub fast float 1.000000e+00, %1711
  %1713 = call float @dx.op.unary.f32(i32 6, float %1710)  ; FAbs(value)
  %1714 = fsub fast float %1712, %1713
  %1715 = call float @dx.op.dot3.f32(i32 55, float %1708, float %1710, float %1714, float %1708, float %1710, float %1714)  ; Dot3(ax,ay,az,bx,by,bz)
  %1716 = call float @dx.op.unary.f32(i32 25, float %1715)  ; Rsqrt(value)
  %1717 = fmul fast float %1708, %1716
  %1718 = fmul fast float %1710, %1716
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = and i32 %1720, 67108864
  %1722 = icmp eq i32 %1721, 0
  br i1 %1722, label %1739, label %1723

; <label>:1723                                    ; preds = %1671
  %1724 = add i32 %62, 296
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1724, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = and i32 %1726, 65535
  %1728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1727)  ; LegacyF16ToF32(value)
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = and i32 %1730, 65535
  %1732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1731)  ; LegacyF16ToF32(value)
  %1733 = lshr i32 %1726, 16
  %1734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1733)  ; LegacyF16ToF32(value)
  %1735 = fsub fast float %1696, %1734
  %1736 = fmul fast float %1735, %1728
  %1737 = fadd fast float %1736, %1732
  %1738 = call float @dx.op.unary.f32(i32 7, float %1737)  ; Saturate(value)
  br label %1739

; <label>:1739                                    ; preds = %1723, %1671
  %1740 = phi float [ %1738, %1723 ], [ %1696, %1671 ]
  %1741 = call float @dx.op.dot2.f32(i32 54, float %1717, float %1718, float %1160, float %1161)  ; Dot2(ax,ay,bx,by)
  %1742 = call float @dx.op.dot2.f32(i32 54, float %1717, float %1718, float %1162, float %1163)  ; Dot2(ax,ay,bx,by)
  br label %1743

; <label>:1743                                    ; preds = %1739, %1649
  %1744 = phi float [ %1740, %1739 ], [ 0x3FD6666660000000, %1649 ]
  %1745 = phi float [ %1741, %1739 ], [ 0.000000e+00, %1649 ]
  %1746 = phi float [ %1742, %1739 ], [ 0.000000e+00, %1649 ]
  %1747 = phi float [ %1683, %1739 ], [ 1.000000e+00, %1649 ]
  %1748 = add i32 %62, 176
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = lshr i32 %1750, 22
  %1752 = shl nuw nsw i32 %1751, 5
  %1753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1752)  ; LegacyF16ToF32(value)
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = and i32 %1755, 64
  %1757 = icmp eq i32 %1756, 0
  br i1 %1757, label %1791, label %1758

; <label>:1758                                    ; preds = %1743
  %1759 = add i32 %62, 444
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = add i32 %1761, 0
  %1763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = and i32 %1765, 131072
  %1767 = icmp eq i32 %1766, 0
  %1768 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1763, %dx.types.Handle %108, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = extractvalue %dx.types.ResRet.f32 %1768, 1
  %1771 = extractvalue %dx.types.ResRet.f32 %1768, 2
  %1772 = fmul fast float %1769, %292
  %1773 = fmul fast float %1770, %295
  %1774 = fmul fast float %1771, %298
  br i1 %1767, label %1781, label %1775

; <label>:1775                                    ; preds = %1758
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 0
  %1778 = fmul fast float %1777, %1772
  %1779 = fmul fast float %1777, %1773
  %1780 = fmul fast float %1777, %1774
  br label %1781

; <label>:1781                                    ; preds = %1775, %1758
  %1782 = phi float [ %1778, %1775 ], [ %1772, %1758 ]
  %1783 = phi float [ %1779, %1775 ], [ %1773, %1758 ]
  %1784 = phi float [ %1780, %1775 ], [ %1774, %1758 ]
  %1785 = fmul fast float %1782, %1753
  %1786 = select i1 %233, float %1785, float %1782
  %1787 = call float @dx.op.dot3.f32(i32 55, float %1786, float %1783, float %1784, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1788 = select i1 %233, float 0.000000e+00, float %1782
  %1789 = select i1 %233, float %1787, float %1783
  %1790 = select i1 %233, float 0.000000e+00, float %1784
  br label %1791

; <label>:1791                                    ; preds = %1781, %1743
  %1792 = phi float [ %1788, %1781 ], [ 0.000000e+00, %1743 ]
  %1793 = phi float [ %1789, %1781 ], [ 0.000000e+00, %1743 ]
  %1794 = phi float [ %1790, %1781 ], [ 0.000000e+00, %1743 ]
  %1795 = add i32 %62, 112
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = and i32 %1797, 255
  %1799 = uitofp i32 %1798 to float
  %1800 = lshr i32 %1797, 8
  %1801 = and i32 %1800, 255
  %1802 = uitofp i32 %1801 to float
  %1803 = call float @dx.op.dot3.f32(i32 55, float %1664, float %1665, float %1666, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1804 = fmul fast float %1802, %1803
  %1805 = fadd fast float %1804, %1799
  %1806 = fmul fast float %1805, 0x3F70101020000000
  %1807 = call float @dx.op.unary.f32(i32 7, float %1806)  ; Saturate(value)
  br i1 %1148, label %1808, label %1816

; <label>:1808                                    ; preds = %1791
  %1809 = fsub fast float 1.000000e+00, %1444
  %1810 = fmul fast float %1809, %1136
  %1811 = fmul fast float %1809, %1137
  %1812 = fmul fast float %1809, %1138
  %1813 = fmul fast float %1809, %1139
  %1814 = fmul fast float %1809, %1140
  %1815 = fmul fast float %1809, %1141
  br label %1816

; <label>:1816                                    ; preds = %1808, %1791
  %1817 = phi float [ %1810, %1808 ], [ %1136, %1791 ]
  %1818 = phi float [ %1811, %1808 ], [ %1137, %1791 ]
  %1819 = phi float [ %1812, %1808 ], [ %1138, %1791 ]
  %1820 = phi float [ %1813, %1808 ], [ %1139, %1791 ]
  %1821 = phi float [ %1814, %1808 ], [ %1140, %1791 ]
  %1822 = phi float [ %1815, %1808 ], [ %1141, %1791 ]
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = and i32 %1824, 3
  %1826 = icmp eq i32 %1825, 3
  br i1 %1826, label %1905, label %1827

; <label>:1827                                    ; preds = %1816
  %1828 = and i32 %1824, 16
  %1829 = icmp ne i32 %1828, 0
  %1830 = select i1 %1829, float %1444, float 0.000000e+00
  %1831 = icmp eq i32 %1825, 0
  br i1 %1831, label %1832, label %1860

; <label>:1832                                    ; preds = %1827
  %1833 = and i32 %1824, 64
  %1834 = icmp ne i32 %1833, 0
  %1835 = select i1 %1834, float %1444, float 0.000000e+00
  %1836 = fsub fast float %1664, %1817
  %1837 = fsub fast float %1665, %1818
  %1838 = fsub fast float %1666, %1819
  %1839 = fmul fast float %1830, %1836
  %1840 = fmul fast float %1830, %1837
  %1841 = fmul fast float %1830, %1838
  %1842 = fadd fast float %1839, %1817
  %1843 = fadd fast float %1840, %1818
  %1844 = fadd fast float %1841, %1819
  %1845 = fsub fast float %1650, %1142
  %1846 = fmul fast float %1830, %1845
  %1847 = fadd fast float %1846, %1142
  %1848 = fsub fast float %1792, %1820
  %1849 = fsub fast float %1793, %1821
  %1850 = fsub fast float %1794, %1822
  %1851 = fmul fast float %1835, %1848
  %1852 = fmul fast float %1835, %1849
  %1853 = fmul fast float %1835, %1850
  %1854 = fadd fast float %1851, %1820
  %1855 = fadd fast float %1852, %1821
  %1856 = fadd fast float %1853, %1822
  %1857 = fsub fast float %1807, %1146
  %1858 = fmul fast float %1830, %1857
  %1859 = fadd fast float %1858, %1146
  br label %1905

; <label>:1860                                    ; preds = %1827
  %1861 = icmp eq i32 %1825, 1
  br i1 %1861, label %1862, label %1875

; <label>:1862                                    ; preds = %1860
  %1863 = fadd fast float %1664, -1.000000e+00
  %1864 = fadd fast float %1665, -1.000000e+00
  %1865 = fadd fast float %1666, -1.000000e+00
  %1866 = fmul fast float %1830, %1863
  %1867 = fmul fast float %1830, %1864
  %1868 = fmul fast float %1830, %1865
  %1869 = fadd fast float %1866, 1.000000e+00
  %1870 = fadd fast float %1867, 1.000000e+00
  %1871 = fadd fast float %1868, 1.000000e+00
  %1872 = fmul fast float %1869, %1817
  %1873 = fmul fast float %1870, %1818
  %1874 = fmul fast float %1871, %1819
  br label %1905

; <label>:1875                                    ; preds = %1860
  %1876 = icmp eq i32 %1825, 2
  br i1 %1876, label %1877, label %1905

; <label>:1877                                    ; preds = %1875
  %1878 = call float @dx.op.unary.f32(i32 24, float %1664)  ; Sqrt(value)
  %1879 = call float @dx.op.unary.f32(i32 24, float %1665)  ; Sqrt(value)
  %1880 = call float @dx.op.unary.f32(i32 24, float %1666)  ; Sqrt(value)
  %1881 = fadd fast float %1878, -5.000000e-01
  %1882 = fadd fast float %1879, -5.000000e-01
  %1883 = fadd fast float %1880, -5.000000e-01
  %1884 = fmul fast float %1881, %1830
  %1885 = fmul fast float %1882, %1830
  %1886 = fmul fast float %1883, %1830
  %1887 = fadd fast float %1884, 5.000000e-01
  %1888 = fadd fast float %1885, 5.000000e-01
  %1889 = fadd fast float %1886, 5.000000e-01
  %1890 = fmul fast float %1887, 2.000000e+00
  %1891 = fsub fast float 1.000000e+00, %1890
  %1892 = fmul fast float %1891, %1817
  %1893 = fadd fast float %1892, %1890
  %1894 = fmul fast float %1893, %1817
  %1895 = fmul fast float %1888, 2.000000e+00
  %1896 = fsub fast float 1.000000e+00, %1895
  %1897 = fmul fast float %1896, %1818
  %1898 = fadd fast float %1897, %1895
  %1899 = fmul fast float %1898, %1818
  %1900 = fmul fast float %1889, 2.000000e+00
  %1901 = fsub fast float 1.000000e+00, %1900
  %1902 = fmul fast float %1901, %1819
  %1903 = fadd fast float %1902, %1900
  %1904 = fmul fast float %1903, %1819
  br label %1905

; <label>:1905                                    ; preds = %1877, %1875, %1862, %1832, %1816
  %1906 = phi float [ %1817, %1816 ], [ %1894, %1877 ], [ %1817, %1875 ], [ %1872, %1862 ], [ %1842, %1832 ]
  %1907 = phi float [ %1818, %1816 ], [ %1899, %1877 ], [ %1818, %1875 ], [ %1873, %1862 ], [ %1843, %1832 ]
  %1908 = phi float [ %1819, %1816 ], [ %1904, %1877 ], [ %1819, %1875 ], [ %1874, %1862 ], [ %1844, %1832 ]
  %1909 = phi float [ %1820, %1816 ], [ %1820, %1877 ], [ %1820, %1875 ], [ %1820, %1862 ], [ %1854, %1832 ]
  %1910 = phi float [ %1821, %1816 ], [ %1821, %1877 ], [ %1821, %1875 ], [ %1821, %1862 ], [ %1855, %1832 ]
  %1911 = phi float [ %1822, %1816 ], [ %1822, %1877 ], [ %1822, %1875 ], [ %1822, %1862 ], [ %1856, %1832 ]
  %1912 = phi float [ %1142, %1816 ], [ %1142, %1877 ], [ %1142, %1875 ], [ %1142, %1862 ], [ %1847, %1832 ]
  %1913 = phi float [ %1146, %1816 ], [ %1146, %1877 ], [ %1146, %1875 ], [ %1146, %1862 ], [ %1859, %1832 ]
  %1914 = and i32 %1824, 12
  %1915 = icmp eq i32 %1914, 12
  br i1 %1915, label %1988, label %1916

; <label>:1916                                    ; preds = %1905
  %1917 = and i32 %1824, 2097184
  %1918 = icmp eq i32 %1917, 2097184
  %1919 = select i1 %1918, float %1444, float 0.000000e+00
  %1920 = and i32 %1824, 4194336
  %1921 = icmp eq i32 %1920, 4194336
  %1922 = select i1 %1921, float %1444, float 0.000000e+00
  %1923 = and i32 %1824, 8388640
  %1924 = icmp eq i32 %1923, 8388640
  %1925 = select i1 %1924, float %1444, float 0.000000e+00
  %1926 = icmp eq i32 %1914, 0
  br i1 %1926, label %1927, label %1940

; <label>:1927                                    ; preds = %1916
  %1928 = fsub fast float %1745, %1134
  %1929 = fsub fast float %1746, %1135
  %1930 = fmul fast float %1919, %1928
  %1931 = fmul fast float %1919, %1929
  %1932 = fadd fast float %1930, %1134
  %1933 = fadd fast float %1931, %1135
  %1934 = fsub fast float %1747, %1145
  %1935 = fmul fast float %1922, %1934
  %1936 = fadd fast float %1935, %1145
  %1937 = fsub fast float %1744, %1144
  %1938 = fmul fast float %1925, %1937
  %1939 = fadd fast float %1938, %1144
  br label %1988

; <label>:1940                                    ; preds = %1916
  %1941 = icmp eq i32 %1914, 4
  br i1 %1941, label %1942, label %1974

; <label>:1942                                    ; preds = %1940
  %1943 = fmul fast float %1919, %1745
  %1944 = fmul fast float %1919, %1746
  %1945 = fadd fast float %1943, %1134
  %1946 = fadd fast float %1944, %1135
  %1947 = call float @dx.op.binary.f32(i32 36, float %1145, float %1747)  ; FMin(a,b)
  %1948 = fsub fast float %1947, %1145
  %1949 = fmul fast float %1948, %1922
  %1950 = fadd fast float %1949, %1145
  %1951 = fadd fast float %1744, %1144
  %1952 = fmul fast float %1951, 0x3FF337FAE0000000
  %1953 = fmul fast float %1144, %1144
  %1954 = fmul fast float %1744, %1744
  %1955 = fadd fast float %1954, %1953
  %1956 = fmul fast float %1955, 0x3FE5152B00000000
  %1957 = fmul fast float %1144, 0xBFCC1F85E0000000
  %1958 = fmul fast float %1957, %1744
  %1959 = fadd fast float %1958, 0xBFE1363700000000
  %1960 = fadd fast float %1959, %1952
  %1961 = fsub fast float %1960, %1956
  %1962 = fmul fast float %1951, 0x3FBA6F0D00000000
  %1963 = fmul fast float %1955, 0x3FD0432880000000
  %1964 = fmul fast float %1144, 0xBFEF110800000000
  %1965 = fmul fast float %1964, %1744
  %1966 = fadd fast float %1965, 1.000000e+00
  %1967 = fsub fast float %1966, %1962
  %1968 = fadd fast float %1967, %1963
  %1969 = fdiv fast float %1961, %1968
  %1970 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1971 = fsub fast float %1970, %1144
  %1972 = fmul fast float %1971, %1925
  %1973 = fadd fast float %1972, %1144
  br label %1988

; <label>:1974                                    ; preds = %1940
  %1975 = icmp eq i32 %1914, 8
  br i1 %1975, label %1976, label %1988

; <label>:1976                                    ; preds = %1974
  %1977 = fmul fast float %1919, %1745
  %1978 = fmul fast float %1919, %1746
  %1979 = fadd fast float %1977, %1134
  %1980 = fadd fast float %1978, %1135
  %1981 = call float @dx.op.binary.f32(i32 36, float %1145, float %1747)  ; FMin(a,b)
  %1982 = fsub fast float %1981, %1145
  %1983 = fmul fast float %1982, %1922
  %1984 = fadd fast float %1983, %1145
  %1985 = fsub fast float %1744, %1144
  %1986 = fmul fast float %1925, %1985
  %1987 = fadd fast float %1986, %1144
  br label %1988

; <label>:1988                                    ; preds = %1976, %1974, %1942, %1927, %1905, %1443, %1147, %1133
  %1989 = phi float [ %1134, %1905 ], [ %1134, %1443 ], [ %1134, %1133 ], [ %1979, %1976 ], [ %1134, %1974 ], [ %1945, %1942 ], [ %1932, %1927 ], [ %1134, %1147 ]
  %1990 = phi float [ %1135, %1905 ], [ %1135, %1443 ], [ %1135, %1133 ], [ %1980, %1976 ], [ %1135, %1974 ], [ %1946, %1942 ], [ %1933, %1927 ], [ %1135, %1147 ]
  %1991 = phi float [ %1906, %1905 ], [ %1136, %1443 ], [ %1136, %1133 ], [ %1906, %1976 ], [ %1906, %1974 ], [ %1906, %1942 ], [ %1906, %1927 ], [ %1136, %1147 ]
  %1992 = phi float [ %1907, %1905 ], [ %1137, %1443 ], [ %1137, %1133 ], [ %1907, %1976 ], [ %1907, %1974 ], [ %1907, %1942 ], [ %1907, %1927 ], [ %1137, %1147 ]
  %1993 = phi float [ %1908, %1905 ], [ %1138, %1443 ], [ %1138, %1133 ], [ %1908, %1976 ], [ %1908, %1974 ], [ %1908, %1942 ], [ %1908, %1927 ], [ %1138, %1147 ]
  %1994 = phi float [ %1909, %1905 ], [ %1139, %1443 ], [ %1139, %1133 ], [ %1909, %1976 ], [ %1909, %1974 ], [ %1909, %1942 ], [ %1909, %1927 ], [ %1139, %1147 ]
  %1995 = phi float [ %1910, %1905 ], [ %1140, %1443 ], [ %1140, %1133 ], [ %1910, %1976 ], [ %1910, %1974 ], [ %1910, %1942 ], [ %1910, %1927 ], [ %1140, %1147 ]
  %1996 = phi float [ %1911, %1905 ], [ %1141, %1443 ], [ %1141, %1133 ], [ %1911, %1976 ], [ %1911, %1974 ], [ %1911, %1942 ], [ %1911, %1927 ], [ %1141, %1147 ]
  %1997 = phi float [ %1912, %1905 ], [ %1142, %1443 ], [ %1142, %1133 ], [ %1912, %1976 ], [ %1912, %1974 ], [ %1912, %1942 ], [ %1912, %1927 ], [ %1142, %1147 ]
  %1998 = phi float [ %1144, %1905 ], [ %1144, %1443 ], [ %1144, %1133 ], [ %1987, %1976 ], [ %1144, %1974 ], [ %1973, %1942 ], [ %1939, %1927 ], [ %1144, %1147 ]
  %1999 = phi float [ %1145, %1905 ], [ %1145, %1443 ], [ %1145, %1133 ], [ %1984, %1976 ], [ %1145, %1974 ], [ %1950, %1942 ], [ %1936, %1927 ], [ %1145, %1147 ]
  %2000 = phi float [ %1913, %1905 ], [ %1146, %1443 ], [ %1146, %1133 ], [ %1913, %1976 ], [ %1913, %1974 ], [ %1913, %1942 ], [ %1913, %1927 ], [ %1146, %1147 ]
  br i1 %419, label %2842, label %2001

; <label>:2001                                    ; preds = %1988
  %2002 = icmp ult i32 %475, 3
  %2003 = add i32 %62, 56
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = add i32 %62, 60
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = or i32 %2008, %2005
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2842, label %2011

; <label>:2011                                    ; preds = %2001
  %2012 = and i32 %2005, 262144
  %2013 = icmp ne i32 %2012, 0
  %2014 = select i1 %2013, float %66, float 1.000000e+00
  %2015 = select i1 %2013, float %67, float 0.000000e+00
  %2016 = select i1 %2013, float %68, float 0.000000e+00
  %2017 = select i1 %2013, float %69, float 1.000000e+00
  %2018 = select i1 %2013, float %70, float %91
  %2019 = select i1 %2013, float %71, float %92
  %2020 = add i32 %62, 316
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = lshr i32 %2022, 16
  %2024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2023)  ; LegacyF16ToF32(value)
  %2025 = fmul fast float %2024, 0x3F50624DE0000000
  %2026 = add i32 %62, 120
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = lshr i32 %2028, 16
  %2030 = and i32 %2029, 255
  %2031 = lshr i32 %2028, 24
  %2032 = add i32 %62, 324
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = and i32 %2034, 65535
  %2036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2035)  ; LegacyF16ToF32(value)
  %2037 = lshr i32 %2034, 16
  %2038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2037)  ; LegacyF16ToF32(value)
  %2039 = add i32 %62, 64
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = lshr i32 %2041, 22
  %2043 = shl nuw nsw i32 %2042, 5
  %2044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2043)  ; LegacyF16ToF32(value)
  %2045 = shl i32 %2041, 4
  %2046 = and i32 %2045, 32752
  %2047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2046)  ; LegacyF16ToF32(value)
  %2048 = lshr i32 %2041, 7
  %2049 = and i32 %2048, 32752
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2052 = extractvalue %dx.types.CBufRet.f32 %2051, 3
  %2053 = fmul fast float %2052, 1.000000e+03
  %2054 = fmul fast float %369, %2053
  %2055 = call float @dx.op.unary.f32(i32 22, float %2054)  ; Frc(value)
  %2056 = fadd fast float %2055, %359
  %2057 = fmul fast float %370, %2053
  %2058 = call float @dx.op.unary.f32(i32 22, float %2057)  ; Frc(value)
  %2059 = fadd fast float %2058, %361
  %2060 = fmul fast float %2025, %2053
  %2061 = call float @dx.op.unary.f32(i32 22, float %2060)  ; Frc(value)
  %2062 = fmul fast float %2061, 0x401921FB60000000
  %2063 = fadd fast float %2062, %2044
  %2064 = call float @dx.op.unary.f32(i32 13, float %2063)  ; Sin(value)
  %2065 = call float @dx.op.unary.f32(i32 12, float %2063)  ; Cos(value)
  %2066 = fsub fast float -0.000000e+00, %2064
  %2067 = fadd fast float %2018, -5.000000e-01
  %2068 = fadd fast float %2019, -5.000000e-01
  %2069 = fmul fast float %2036, %2067
  %2070 = fmul fast float %2038, %2068
  %2071 = fadd fast float %2069, 5.000000e-01
  %2072 = fadd fast float %2070, 5.000000e-01
  %2073 = fmul fast float %2047, %2071
  %2074 = fmul fast float %2050, %2072
  %2075 = fmul fast float %2065, %2073
  %2076 = call float @dx.op.tertiary.f32(i32 46, float %2066, float %2074, float %2075)  ; FMad(a,b,c)
  %2077 = fmul fast float %2064, %2073
  %2078 = call float @dx.op.tertiary.f32(i32 46, float %2065, float %2074, float %2077)  ; FMad(a,b,c)
  %2079 = fadd fast float %2056, %2076
  %2080 = fadd fast float %2059, %2078
  %2081 = icmp ugt i32 %2030, 1
  %2082 = icmp ugt i32 %2028, 33554431
  %2083 = or i1 %2082, %2081
  br i1 %2083, label %2084, label %2109

; <label>:2084                                    ; preds = %2011
  %2085 = add i32 %62, 260
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = lshr i32 %2087, 16
  %2089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2088)  ; LegacyF16ToF32(value)
  %2090 = fmul fast float %2052, %2089
  %2091 = call float @dx.op.unary.f32(i32 22, float %2090)  ; Frc(value)
  %2092 = mul nuw nsw i32 %2030, %2031
  %2093 = uitofp i32 %2092 to float
  %2094 = fmul fast float %2091, %2093
  %2095 = call float @dx.op.unary.f32(i32 27, float %2094)  ; Round_ni(value)
  %2096 = fptoui float %2095 to i32
  %2097 = urem i32 %2096, %2030
  %2098 = udiv i32 %2096, %2031
  %2099 = call float @dx.op.unary.f32(i32 22, float %2079)  ; Frc(value)
  %2100 = call float @dx.op.unary.f32(i32 22, float %2080)  ; Frc(value)
  %2101 = uitofp i32 %2097 to float
  %2102 = uitofp i32 %2098 to float
  %2103 = fadd fast float %2099, %2101
  %2104 = fadd fast float %2100, %2102
  %2105 = uitofp i32 %2030 to float
  %2106 = uitofp i32 %2031 to float
  %2107 = fdiv fast float %2103, %2105
  %2108 = fdiv fast float %2104, %2106
  br label %2109

; <label>:2109                                    ; preds = %2084, %2011
  %2110 = phi float [ %2107, %2084 ], [ %2079, %2011 ]
  %2111 = phi float [ %2108, %2084 ], [ %2080, %2011 ]
  %2112 = and i32 %2005, 16777216
  %2113 = icmp eq i32 %2112, 0
  br i1 %2113, label %2223, label %2114

; <label>:2114                                    ; preds = %2109
  %2115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  %2117 = extractvalue %dx.types.CBufRet.f32 %2115, 1
  %2118 = extractvalue %dx.types.CBufRet.f32 %2115, 2
  %2119 = fadd fast float %2116, %171
  %2120 = fadd fast float %2117, %172
  %2121 = fadd fast float %2118, %173
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 0
  %2124 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2125 = icmp eq i32 %63, 65535
  br i1 %2125, label %2220, label %2126

; <label>:2126                                    ; preds = %2114
  %2127 = lshr i32 %63, 1
  %2128 = shl i32 %2127, 2
  %2129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = and i32 %63, 1
  %2132 = icmp ne i32 %2131, 0
  %2133 = lshr i32 %2130, 16
  %2134 = and i32 %2130, 65535
  %2135 = select i1 %2132, i32 %2133, i32 %2134
  %2136 = icmp eq i32 %2135, 65535
  br i1 %2136, label %2216, label %2137

; <label>:2137                                    ; preds = %2126
  %2138 = mul nuw nsw i32 %2135, 40
  %2139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.f32 %2139, 0
  %2141 = extractvalue %dx.types.ResRet.f32 %2139, 1
  %2142 = extractvalue %dx.types.ResRet.f32 %2139, 2
  %2143 = add nuw nsw i32 %2138, 12
  %2144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = add nuw nsw i32 %2138, 24
  %2149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = extractvalue %dx.types.ResRet.f32 %2149, 1
  %2152 = extractvalue %dx.types.ResRet.f32 %2149, 2
  %2153 = add nuw nsw i32 %2138, 36
  %2154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.f32 %2154, 0
  %2156 = fsub fast float %2119, %2140
  %2157 = fsub fast float %2120, %2141
  %2158 = fsub fast float %2121, %2142
  %2159 = fmul fast float %2155, %2156
  %2160 = fmul fast float %2155, %2157
  %2161 = fmul fast float %2155, %2158
  %2162 = call float @dx.op.unary.f32(i32 27, float %2159)  ; Round_ni(value)
  %2163 = call float @dx.op.unary.f32(i32 27, float %2160)  ; Round_ni(value)
  %2164 = call float @dx.op.unary.f32(i32 27, float %2161)  ; Round_ni(value)
  %2165 = fadd fast float %2162, 5.000000e-01
  %2166 = fadd fast float %2163, 5.000000e-01
  %2167 = fadd fast float %2164, 5.000000e-01
  %2168 = fmul fast float %2165, %2145
  %2169 = fmul fast float %2166, %2146
  %2170 = fmul fast float %2167, %2147
  %2171 = shl i32 %63, 2
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = add i32 %2173, 0
  %2175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2176 = call float @dx.op.unary.f32(i32 22, float %2168)  ; Frc(value)
  %2177 = call float @dx.op.unary.f32(i32 22, float %2169)  ; Frc(value)
  %2178 = call float @dx.op.unary.f32(i32 22, float %2170)  ; Frc(value)
  %2179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2175, %dx.types.Handle %55, float %2176, float %2177, float %2178, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2180 = extractvalue %dx.types.ResRet.f32 %2179, 0
  %2181 = extractvalue %dx.types.ResRet.f32 %2179, 1
  %2182 = extractvalue %dx.types.ResRet.f32 %2179, 2
  %2183 = fmul fast float %2180, 1.023000e+03
  %2184 = fmul fast float %2181, 1.023000e+03
  %2185 = fmul fast float %2182, 1.023000e+03
  %2186 = fadd fast float %2183, 5.000000e-01
  %2187 = fadd fast float %2184, 5.000000e-01
  %2188 = fadd fast float %2185, 5.000000e-01
  %2189 = call float @dx.op.unary.f32(i32 27, float %2186)  ; Round_ni(value)
  %2190 = call float @dx.op.unary.f32(i32 27, float %2187)  ; Round_ni(value)
  %2191 = call float @dx.op.unary.f32(i32 27, float %2188)  ; Round_ni(value)
  %2192 = fsub fast float %2159, %2162
  %2193 = fsub fast float %2160, %2163
  %2194 = fsub fast float %2161, %2164
  %2195 = fmul fast float %2192, 7.500000e-01
  %2196 = fmul fast float %2193, 7.500000e-01
  %2197 = fmul fast float %2194, 7.500000e-01
  %2198 = fadd fast float %2162, 1.250000e-01
  %2199 = fadd fast float %2198, %2195
  %2200 = fadd fast float %2199, %2189
  %2201 = fadd fast float %2163, 1.250000e-01
  %2202 = fadd fast float %2201, %2196
  %2203 = fadd fast float %2202, %2190
  %2204 = fadd fast float %2164, 1.250000e-01
  %2205 = fadd fast float %2204, %2197
  %2206 = fadd fast float %2205, %2191
  %2207 = fmul fast float %2200, %2150
  %2208 = fmul fast float %2203, %2151
  %2209 = fmul fast float %2206, %2152
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = add i32 %2211, 0
  %2213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2212, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2213, %dx.types.Handle %53, float %2207, float %2208, float %2209, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2215 = extractvalue %dx.types.ResRet.f32 %2214, 0
  br label %2216

; <label>:2216                                    ; preds = %2137, %2126
  %2217 = phi float [ %2215, %2137 ], [ -1.000000e+00, %2126 ]
  %2218 = fadd fast float %2217, %2124
  %2219 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  br label %2220

; <label>:2220                                    ; preds = %2216, %2114
  %2221 = phi float [ %2219, %2216 ], [ %2124, %2114 ]
  %2222 = fmul fast float %2221, %471
  br label %2223

; <label>:2223                                    ; preds = %2220, %2109
  %2224 = phi float [ %2222, %2220 ], [ %471, %2109 ]
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 256
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2275, label %2229

; <label>:2229                                    ; preds = %2223
  %2230 = add i32 %62, 480
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = add i32 %2232, 0
  %2234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2234, %dx.types.Handle %109, float %2110, float %2111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2236 = extractvalue %dx.types.ResRet.f32 %2235, 0
  %2237 = add i32 %62, 132
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = shl i32 %2239, 4
  %2241 = and i32 %2240, 32752
  %2242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2241)  ; LegacyF16ToF32(value)
  %2243 = lshr i32 %2239, 7
  %2244 = and i32 %2243, 32752
  %2245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2244)  ; LegacyF16ToF32(value)
  %2246 = fsub fast float 1.000000e+00, %2224
  %2247 = call float @dx.op.binary.f32(i32 35, float %2246, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2248 = bitcast float %2224 to i32
  %2249 = sitofp i32 %2248 to float
  %2250 = fadd fast float %2249, 0xC1CFBF8940000000
  %2251 = fmul fast float %2245, %2250
  %2252 = fadd fast float %2251, 0x41CFBF8940000000
  %2253 = fptosi float %2252 to i32
  %2254 = bitcast i32 %2253 to float
  %2255 = bitcast float %2247 to i32
  %2256 = sitofp i32 %2255 to float
  %2257 = fadd fast float %2256, 0xC1CFBF8940000000
  %2258 = fmul fast float %2257, %2245
  %2259 = fadd fast float %2258, 0x41CFBF8940000000
  %2260 = fptosi float %2259 to i32
  %2261 = bitcast i32 %2260 to float
  %2262 = fmul fast float %2254, %2242
  %2263 = fmul fast float %2261, %2242
  %2264 = fsub fast float %2247, %2262
  %2265 = fadd fast float %2263, %2247
  %2266 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  %2267 = call float @dx.op.unary.f32(i32 7, float %2265)  ; Saturate(value)
  %2268 = fsub fast float %2236, %2266
  %2269 = fsub fast float %2267, %2266
  %2270 = bitcast float %2269 to i32
  %2271 = sub nsw i32 2129859010, %2270
  %2272 = bitcast i32 %2271 to float
  %2273 = fmul fast float %2272, %2268
  %2274 = call float @dx.op.unary.f32(i32 7, float %2273)  ; Saturate(value)
  br label %2275

; <label>:2275                                    ; preds = %2229, %2223
  %2276 = phi float [ %2274, %2229 ], [ %2224, %2223 ]
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = and i32 %2278, 128
  %2280 = icmp eq i32 %2279, 0
  br i1 %2280, label %2297, label %2281

; <label>:2281                                    ; preds = %2275
  %2282 = add i32 %62, 464
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = add i32 %2284, 0
  %2286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2286, %dx.types.Handle %109, float %2110, float %2111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2288 = extractvalue %dx.types.ResRet.f32 %2287, 0
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = and i32 %2290, 524288
  %2292 = icmp ne i32 %2291, 0
  %2293 = fcmp fast ogt float %2288, 0x3FE0101020000000
  %2294 = select i1 %2293, float 1.000000e+00, float 0.000000e+00
  %2295 = select i1 %2292, float %2294, float %2288
  %2296 = fmul fast float %2295, %2276
  br label %2297

; <label>:2297                                    ; preds = %2281, %2275
  %2298 = phi float [ %2296, %2281 ], [ %2276, %2275 ]
  %2299 = fcmp fast ult float %2298, 0x3F70101020000000
  br i1 %2299, label %2842, label %2300

; <label>:2300                                    ; preds = %2297
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = and i32 %2302, 16
  %2304 = icmp eq i32 %2303, 0
  br i1 %2304, label %2503, label %2305

; <label>:2305                                    ; preds = %2300
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = add i32 %62, 416
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = add i32 %2310, 0
  %2312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2313 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2312, %dx.types.Handle %108, float %2110, float %2111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2314 = extractvalue %dx.types.ResRet.f32 %2313, 0
  %2315 = extractvalue %dx.types.ResRet.f32 %2313, 1
  %2316 = extractvalue %dx.types.ResRet.f32 %2313, 2
  %2317 = extractvalue %dx.types.ResRet.f32 %2313, 3
  %2318 = and i32 %2307, 255
  %2319 = uitofp i32 %2318 to float
  %2320 = lshr i32 %2307, 8
  %2321 = and i32 %2320, 255
  %2322 = uitofp i32 %2321 to float
  %2323 = fmul fast float %2317, %2319
  %2324 = fadd fast float %2323, %2322
  %2325 = fmul fast float %2324, 0x3F70101000000000
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = and i32 %2327, 512
  %2329 = icmp eq i32 %2328, 0
  br i1 %2329, label %2338, label %2330

; <label>:2330                                    ; preds = %2305
  %2331 = add i32 %62, 500
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = add i32 %2333, 0
  %2335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2334, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2336 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2335, %dx.types.Handle %109, float %2110, float %2111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2337 = extractvalue %dx.types.ResRet.f32 %2336, 0
  br label %2338

; <label>:2338                                    ; preds = %2330, %2305
  %2339 = phi float [ %2337, %2330 ], [ 1.000000e+00, %2305 ]
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 33554432
  %2343 = icmp eq i32 %2342, 0
  br i1 %2343, label %2450, label %2344

; <label>:2344                                    ; preds = %2338
  %2345 = add i32 %62, 256
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = and i32 %2347, 65535
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = lshr i32 %2347, 16
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = add i32 %62, 260
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %2354, 65535
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = lshr i32 %2358, 24
  %2360 = uitofp i32 %2359 to float
  %2361 = fmul fast float %2360, 0x3F70101020000000
  %2362 = and i32 %2358, 255
  %2363 = uitofp i32 %2362 to float
  %2364 = fmul fast float %2363, 0x3F70101020000000
  %2365 = lshr i32 %2358, 8
  %2366 = and i32 %2365, 255
  %2367 = uitofp i32 %2366 to float
  %2368 = fmul fast float %2367, 0x3F70101020000000
  %2369 = lshr i32 %2358, 16
  %2370 = and i32 %2369, 255
  %2371 = uitofp i32 %2370 to float
  %2372 = fmul fast float %2371, 0x3F70101020000000
  %2373 = add i32 %62, 252
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = lshr i32 %2375, 24
  %2377 = uitofp i32 %2376 to float
  %2378 = fmul fast float %2377, 0x3F70101020000000
  %2379 = and i32 %2375, 255
  %2380 = uitofp i32 %2379 to float
  %2381 = fmul fast float %2380, 0x3F70101020000000
  %2382 = lshr i32 %2375, 8
  %2383 = and i32 %2382, 255
  %2384 = uitofp i32 %2383 to float
  %2385 = fmul fast float %2384, 0x3F70101020000000
  %2386 = lshr i32 %2375, 16
  %2387 = and i32 %2386, 255
  %2388 = uitofp i32 %2387 to float
  %2389 = fmul fast float %2388, 0x3F70101020000000
  %2390 = bitcast float %2314 to i32
  %2391 = ashr i32 %2390, 1
  %2392 = sub nsw i32 1597463174, %2391
  %2393 = bitcast i32 %2392 to float
  %2394 = fmul fast float %2314, 5.000000e-01
  %2395 = fmul fast float %2393, %2393
  %2396 = fmul fast float %2395, %2394
  %2397 = fsub fast float 1.500000e+00, %2396
  %2398 = fmul fast float %2393, %2314
  %2399 = fmul fast float %2398, %2397
  %2400 = bitcast float %2315 to i32
  %2401 = ashr i32 %2400, 1
  %2402 = sub nsw i32 1597463174, %2401
  %2403 = bitcast i32 %2402 to float
  %2404 = fmul fast float %2315, 5.000000e-01
  %2405 = fmul fast float %2403, %2403
  %2406 = fmul fast float %2405, %2404
  %2407 = fsub fast float 1.500000e+00, %2406
  %2408 = fmul fast float %2403, %2315
  %2409 = fmul fast float %2408, %2407
  %2410 = bitcast float %2316 to i32
  %2411 = ashr i32 %2410, 1
  %2412 = sub nsw i32 1597463174, %2411
  %2413 = bitcast i32 %2412 to float
  %2414 = fmul fast float %2316, 5.000000e-01
  %2415 = fmul fast float %2413, %2413
  %2416 = fmul fast float %2415, %2414
  %2417 = fsub fast float 1.500000e+00, %2416
  %2418 = fmul fast float %2413, %2316
  %2419 = fmul fast float %2418, %2417
  %2420 = fsub fast float %2399, %2381
  %2421 = fsub fast float %2409, %2385
  %2422 = fsub fast float %2419, %2389
  %2423 = fmul fast float %2420, %2349
  %2424 = fmul fast float %2421, %2351
  %2425 = fmul fast float %2422, %2356
  %2426 = fadd fast float %2423, %2364
  %2427 = fadd fast float %2424, %2368
  %2428 = fadd fast float %2425, %2372
  %2429 = call float @dx.op.unary.f32(i32 7, float %2426)  ; Saturate(value)
  %2430 = call float @dx.op.unary.f32(i32 7, float %2427)  ; Saturate(value)
  %2431 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2432 = fmul fast float %2429, %2429
  %2433 = fmul fast float %2430, %2430
  %2434 = fmul fast float %2431, %2431
  %2435 = fsub fast float %2432, %2314
  %2436 = fsub fast float %2433, %2315
  %2437 = fsub fast float %2434, %2316
  %2438 = fmul fast float %2435, %2339
  %2439 = fmul fast float %2436, %2339
  %2440 = fmul fast float %2437, %2339
  %2441 = fadd fast float %2438, %2314
  %2442 = fadd fast float %2439, %2315
  %2443 = fadd fast float %2440, %2316
  %2444 = fadd fast float %2361, %2325
  %2445 = fsub fast float %2444, %2378
  %2446 = call float @dx.op.unary.f32(i32 7, float %2445)  ; Saturate(value)
  %2447 = fsub fast float %2446, %2325
  %2448 = fmul fast float %2447, %2339
  %2449 = fadd fast float %2448, %2325
  br label %2503

; <label>:2450                                    ; preds = %2338
  %2451 = and i32 %2341, 134217728
  %2452 = icmp eq i32 %2451, 0
  br i1 %2452, label %2487, label %2453

; <label>:2453                                    ; preds = %2450
  %2454 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %2455 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %2456 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %2457 = fadd fast float %2454, -5.000000e-01
  %2458 = fadd fast float %2455, -5.000000e-01
  %2459 = fadd fast float %2456, -5.000000e-01
  %2460 = fmul fast float %2457, %2339
  %2461 = fmul fast float %2458, %2339
  %2462 = fmul fast float %2459, %2339
  %2463 = fadd fast float %2460, 5.000000e-01
  %2464 = fadd fast float %2461, 5.000000e-01
  %2465 = fadd fast float %2462, 5.000000e-01
  %2466 = call float @dx.op.unary.f32(i32 24, float %2314)  ; Sqrt(value)
  %2467 = call float @dx.op.unary.f32(i32 24, float %2315)  ; Sqrt(value)
  %2468 = call float @dx.op.unary.f32(i32 24, float %2316)  ; Sqrt(value)
  %2469 = fmul fast float %2463, 2.000000e+00
  %2470 = fsub fast float 1.000000e+00, %2469
  %2471 = fmul fast float %2470, %2466
  %2472 = fadd fast float %2471, %2469
  %2473 = fmul fast float %2472, %2466
  %2474 = fmul fast float %2464, 2.000000e+00
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = fmul fast float %2475, %2467
  %2477 = fadd fast float %2476, %2474
  %2478 = fmul fast float %2477, %2467
  %2479 = fmul fast float %2465, 2.000000e+00
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fmul fast float %2480, %2468
  %2482 = fadd fast float %2481, %2479
  %2483 = fmul fast float %2482, %2468
  %2484 = fmul fast float %2473, %2473
  %2485 = fmul fast float %2478, %2478
  %2486 = fmul fast float %2483, %2483
  br label %2503

; <label>:2487                                    ; preds = %2450
  %2488 = fmul fast float %346, %346
  %2489 = fmul fast float %350, %350
  %2490 = fmul fast float %354, %354
  %2491 = fadd fast float %2488, -1.000000e+00
  %2492 = fadd fast float %2489, -1.000000e+00
  %2493 = fadd fast float %2490, -1.000000e+00
  %2494 = fmul fast float %2339, %2491
  %2495 = fmul fast float %2339, %2492
  %2496 = fmul fast float %2339, %2493
  %2497 = fadd fast float %2494, 1.000000e+00
  %2498 = fadd fast float %2495, 1.000000e+00
  %2499 = fadd fast float %2496, 1.000000e+00
  %2500 = fmul fast float %2497, %2314
  %2501 = fmul fast float %2498, %2315
  %2502 = fmul fast float %2499, %2316
  br label %2503

; <label>:2503                                    ; preds = %2487, %2453, %2344, %2300
  %2504 = phi float [ %2449, %2344 ], [ %2325, %2453 ], [ %2325, %2487 ], [ 0x3FA23C0BE0000000, %2300 ]
  %2505 = phi float [ %2441, %2344 ], [ %2484, %2453 ], [ %2500, %2487 ], [ 1.000000e+00, %2300 ]
  %2506 = phi float [ %2442, %2344 ], [ %2485, %2453 ], [ %2501, %2487 ], [ 1.000000e+00, %2300 ]
  %2507 = phi float [ %2443, %2344 ], [ %2486, %2453 ], [ %2502, %2487 ], [ 1.000000e+00, %2300 ]
  %2508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.i32 %2508, 1
  %2510 = and i32 %2509, 1
  %2511 = icmp ne i32 %2510, 0
  %2512 = add i32 %62, 356
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 32
  %2516 = icmp ne i32 %2515, 0
  %2517 = and i1 %2511, %2516
  %2518 = select i1 %2517, float 1.000000e+00, float %2505
  %2519 = select i1 %2517, float 0x3FD3333340000000, float %2506
  %2520 = select i1 %2517, float 0x3FD3333340000000, float %2507
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = and i32 %2522, 32
  %2524 = icmp eq i32 %2523, 0
  br i1 %2524, label %2597, label %2525

; <label>:2525                                    ; preds = %2503
  %2526 = add i32 %62, 124
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = add i32 %62, 432
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = add i32 %2531, 0
  %2533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2533, %dx.types.Handle %108, float %2110, float %2111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2536 = extractvalue %dx.types.ResRet.f32 %2534, 1
  %2537 = extractvalue %dx.types.ResRet.f32 %2534, 2
  %2538 = extractvalue %dx.types.ResRet.f32 %2534, 3
  %2539 = and i32 %2528, 255
  %2540 = uitofp i32 %2539 to float
  %2541 = lshr i32 %2528, 8
  %2542 = and i32 %2541, 255
  %2543 = uitofp i32 %2542 to float
  %2544 = lshr i32 %2528, 16
  %2545 = and i32 %2544, 255
  %2546 = uitofp i32 %2545 to float
  %2547 = fmul fast float %2546, 0x3F70101000000000
  %2548 = fmul fast float %2535, %2540
  %2549 = fadd fast float %2548, %2543
  %2550 = fmul fast float %2549, 0x3F70101000000000
  %2551 = fadd fast float %2536, -5.000000e-01
  %2552 = fadd fast float %2538, -5.000000e-01
  %2553 = fmul fast float %2551, %2547
  %2554 = fmul fast float %2552, %2547
  %2555 = fadd fast float %2553, 5.000000e-01
  %2556 = fadd fast float %2554, 5.000000e-01
  %2557 = fmul fast float %2555, 2.000000e+00
  %2558 = fadd fast float %2557, -1.000000e+00
  %2559 = fmul fast float %2556, 2.000000e+00
  %2560 = fadd fast float %2559, -1.000000e+00
  %2561 = fadd fast float %2558, %2560
  %2562 = fmul fast float %2561, 5.000000e-01
  %2563 = fsub fast float %2558, %2560
  %2564 = fmul fast float %2563, 5.000000e-01
  %2565 = call float @dx.op.unary.f32(i32 6, float %2562)  ; FAbs(value)
  %2566 = fsub fast float 1.000000e+00, %2565
  %2567 = call float @dx.op.unary.f32(i32 6, float %2564)  ; FAbs(value)
  %2568 = fsub fast float %2566, %2567
  %2569 = call float @dx.op.dot3.f32(i32 55, float %2562, float %2564, float %2568, float %2562, float %2564, float %2568)  ; Dot3(ax,ay,az,bx,by,bz)
  %2570 = call float @dx.op.unary.f32(i32 25, float %2569)  ; Rsqrt(value)
  %2571 = fmul fast float %2562, %2570
  %2572 = fmul fast float %2564, %2570
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 67108864
  %2576 = icmp eq i32 %2575, 0
  br i1 %2576, label %2593, label %2577

; <label>:2577                                    ; preds = %2525
  %2578 = add i32 %62, 312
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 65535
  %2582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2581)  ; LegacyF16ToF32(value)
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 65535
  %2586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2585)  ; LegacyF16ToF32(value)
  %2587 = lshr i32 %2580, 16
  %2588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2587)  ; LegacyF16ToF32(value)
  %2589 = fsub fast float %2550, %2588
  %2590 = fmul fast float %2589, %2582
  %2591 = fadd fast float %2590, %2586
  %2592 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  br label %2593

; <label>:2593                                    ; preds = %2577, %2525
  %2594 = phi float [ %2592, %2577 ], [ %2550, %2525 ]
  %2595 = call float @dx.op.dot2.f32(i32 54, float %2571, float %2572, float %2014, float %2015)  ; Dot2(ax,ay,bx,by)
  %2596 = call float @dx.op.dot2.f32(i32 54, float %2571, float %2572, float %2016, float %2017)  ; Dot2(ax,ay,bx,by)
  br label %2597

; <label>:2597                                    ; preds = %2593, %2503
  %2598 = phi float [ %2594, %2593 ], [ 0x3FD6666660000000, %2503 ]
  %2599 = phi float [ %2595, %2593 ], [ 0.000000e+00, %2503 ]
  %2600 = phi float [ %2596, %2593 ], [ 0.000000e+00, %2503 ]
  %2601 = phi float [ %2537, %2593 ], [ 1.000000e+00, %2503 ]
  %2602 = add i32 %62, 192
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2602, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = lshr i32 %2604, 22
  %2606 = shl nuw nsw i32 %2605, 5
  %2607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2606)  ; LegacyF16ToF32(value)
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 64
  %2611 = icmp eq i32 %2610, 0
  br i1 %2611, label %2645, label %2612

; <label>:2612                                    ; preds = %2597
  %2613 = add i32 %62, 448
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = add i32 %2615, 0
  %2617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = and i32 %2619, 131072
  %2621 = icmp eq i32 %2620, 0
  %2622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2617, %dx.types.Handle %108, float %2110, float %2111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2623 = extractvalue %dx.types.ResRet.f32 %2622, 0
  %2624 = extractvalue %dx.types.ResRet.f32 %2622, 1
  %2625 = extractvalue %dx.types.ResRet.f32 %2622, 2
  %2626 = fmul fast float %2623, %334
  %2627 = fmul fast float %2624, %337
  %2628 = fmul fast float %2625, %340
  br i1 %2621, label %2635, label %2629

; <label>:2629                                    ; preds = %2612
  %2630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2631 = extractvalue %dx.types.CBufRet.f32 %2630, 0
  %2632 = fmul fast float %2631, %2626
  %2633 = fmul fast float %2631, %2627
  %2634 = fmul fast float %2631, %2628
  br label %2635

; <label>:2635                                    ; preds = %2629, %2612
  %2636 = phi float [ %2632, %2629 ], [ %2626, %2612 ]
  %2637 = phi float [ %2633, %2629 ], [ %2627, %2612 ]
  %2638 = phi float [ %2634, %2629 ], [ %2628, %2612 ]
  %2639 = fmul fast float %2636, %2607
  %2640 = select i1 %233, float %2639, float %2636
  %2641 = call float @dx.op.dot3.f32(i32 55, float %2640, float %2637, float %2638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2642 = select i1 %233, float 0.000000e+00, float %2636
  %2643 = select i1 %233, float %2641, float %2637
  %2644 = select i1 %233, float 0.000000e+00, float %2638
  br label %2645

; <label>:2645                                    ; preds = %2635, %2597
  %2646 = phi float [ %2642, %2635 ], [ 0.000000e+00, %2597 ]
  %2647 = phi float [ %2643, %2635 ], [ 0.000000e+00, %2597 ]
  %2648 = phi float [ %2644, %2635 ], [ 0.000000e+00, %2597 ]
  %2649 = add i32 %62, 128
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 255
  %2653 = uitofp i32 %2652 to float
  %2654 = lshr i32 %2651, 8
  %2655 = and i32 %2654, 255
  %2656 = uitofp i32 %2655 to float
  %2657 = call float @dx.op.dot3.f32(i32 55, float %2518, float %2519, float %2520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2658 = fmul fast float %2656, %2657
  %2659 = fadd fast float %2658, %2653
  %2660 = fmul fast float %2659, 0x3F70101020000000
  %2661 = call float @dx.op.unary.f32(i32 7, float %2660)  ; Saturate(value)
  br i1 %2002, label %2662, label %2670

; <label>:2662                                    ; preds = %2645
  %2663 = fsub fast float 1.000000e+00, %2298
  %2664 = fmul fast float %2663, %1991
  %2665 = fmul fast float %2663, %1992
  %2666 = fmul fast float %2663, %1993
  %2667 = fmul fast float %2663, %1994
  %2668 = fmul fast float %2663, %1995
  %2669 = fmul fast float %2663, %1996
  br label %2670

; <label>:2670                                    ; preds = %2662, %2645
  %2671 = phi float [ %2664, %2662 ], [ %1991, %2645 ]
  %2672 = phi float [ %2665, %2662 ], [ %1992, %2645 ]
  %2673 = phi float [ %2666, %2662 ], [ %1993, %2645 ]
  %2674 = phi float [ %2667, %2662 ], [ %1994, %2645 ]
  %2675 = phi float [ %2668, %2662 ], [ %1995, %2645 ]
  %2676 = phi float [ %2669, %2662 ], [ %1996, %2645 ]
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 3
  %2680 = icmp eq i32 %2679, 3
  br i1 %2680, label %2759, label %2681

; <label>:2681                                    ; preds = %2670
  %2682 = and i32 %2678, 16
  %2683 = icmp ne i32 %2682, 0
  %2684 = select i1 %2683, float %2298, float 0.000000e+00
  %2685 = icmp eq i32 %2679, 0
  br i1 %2685, label %2686, label %2714

; <label>:2686                                    ; preds = %2681
  %2687 = and i32 %2678, 64
  %2688 = icmp ne i32 %2687, 0
  %2689 = select i1 %2688, float %2298, float 0.000000e+00
  %2690 = fsub fast float %2518, %2671
  %2691 = fsub fast float %2519, %2672
  %2692 = fsub fast float %2520, %2673
  %2693 = fmul fast float %2684, %2690
  %2694 = fmul fast float %2684, %2691
  %2695 = fmul fast float %2684, %2692
  %2696 = fadd fast float %2693, %2671
  %2697 = fadd fast float %2694, %2672
  %2698 = fadd fast float %2695, %2673
  %2699 = fsub fast float %2504, %1997
  %2700 = fmul fast float %2684, %2699
  %2701 = fadd fast float %2700, %1997
  %2702 = fsub fast float %2646, %2674
  %2703 = fsub fast float %2647, %2675
  %2704 = fsub fast float %2648, %2676
  %2705 = fmul fast float %2689, %2702
  %2706 = fmul fast float %2689, %2703
  %2707 = fmul fast float %2689, %2704
  %2708 = fadd fast float %2705, %2674
  %2709 = fadd fast float %2706, %2675
  %2710 = fadd fast float %2707, %2676
  %2711 = fsub fast float %2661, %2000
  %2712 = fmul fast float %2684, %2711
  %2713 = fadd fast float %2712, %2000
  br label %2759

; <label>:2714                                    ; preds = %2681
  %2715 = icmp eq i32 %2679, 1
  br i1 %2715, label %2716, label %2729

; <label>:2716                                    ; preds = %2714
  %2717 = fadd fast float %2518, -1.000000e+00
  %2718 = fadd fast float %2519, -1.000000e+00
  %2719 = fadd fast float %2520, -1.000000e+00
  %2720 = fmul fast float %2684, %2717
  %2721 = fmul fast float %2684, %2718
  %2722 = fmul fast float %2684, %2719
  %2723 = fadd fast float %2720, 1.000000e+00
  %2724 = fadd fast float %2721, 1.000000e+00
  %2725 = fadd fast float %2722, 1.000000e+00
  %2726 = fmul fast float %2723, %2671
  %2727 = fmul fast float %2724, %2672
  %2728 = fmul fast float %2725, %2673
  br label %2759

; <label>:2729                                    ; preds = %2714
  %2730 = icmp eq i32 %2679, 2
  br i1 %2730, label %2731, label %2759

; <label>:2731                                    ; preds = %2729
  %2732 = call float @dx.op.unary.f32(i32 24, float %2518)  ; Sqrt(value)
  %2733 = call float @dx.op.unary.f32(i32 24, float %2519)  ; Sqrt(value)
  %2734 = call float @dx.op.unary.f32(i32 24, float %2520)  ; Sqrt(value)
  %2735 = fadd fast float %2732, -5.000000e-01
  %2736 = fadd fast float %2733, -5.000000e-01
  %2737 = fadd fast float %2734, -5.000000e-01
  %2738 = fmul fast float %2735, %2684
  %2739 = fmul fast float %2736, %2684
  %2740 = fmul fast float %2737, %2684
  %2741 = fadd fast float %2738, 5.000000e-01
  %2742 = fadd fast float %2739, 5.000000e-01
  %2743 = fadd fast float %2740, 5.000000e-01
  %2744 = fmul fast float %2741, 2.000000e+00
  %2745 = fsub fast float 1.000000e+00, %2744
  %2746 = fmul fast float %2745, %2671
  %2747 = fadd fast float %2746, %2744
  %2748 = fmul fast float %2747, %2671
  %2749 = fmul fast float %2742, 2.000000e+00
  %2750 = fsub fast float 1.000000e+00, %2749
  %2751 = fmul fast float %2750, %2672
  %2752 = fadd fast float %2751, %2749
  %2753 = fmul fast float %2752, %2672
  %2754 = fmul fast float %2743, 2.000000e+00
  %2755 = fsub fast float 1.000000e+00, %2754
  %2756 = fmul fast float %2755, %2673
  %2757 = fadd fast float %2756, %2754
  %2758 = fmul fast float %2757, %2673
  br label %2759

; <label>:2759                                    ; preds = %2731, %2729, %2716, %2686, %2670
  %2760 = phi float [ %2671, %2670 ], [ %2748, %2731 ], [ %2671, %2729 ], [ %2726, %2716 ], [ %2696, %2686 ]
  %2761 = phi float [ %2672, %2670 ], [ %2753, %2731 ], [ %2672, %2729 ], [ %2727, %2716 ], [ %2697, %2686 ]
  %2762 = phi float [ %2673, %2670 ], [ %2758, %2731 ], [ %2673, %2729 ], [ %2728, %2716 ], [ %2698, %2686 ]
  %2763 = phi float [ %2674, %2670 ], [ %2674, %2731 ], [ %2674, %2729 ], [ %2674, %2716 ], [ %2708, %2686 ]
  %2764 = phi float [ %2675, %2670 ], [ %2675, %2731 ], [ %2675, %2729 ], [ %2675, %2716 ], [ %2709, %2686 ]
  %2765 = phi float [ %2676, %2670 ], [ %2676, %2731 ], [ %2676, %2729 ], [ %2676, %2716 ], [ %2710, %2686 ]
  %2766 = phi float [ %1997, %2670 ], [ %1997, %2731 ], [ %1997, %2729 ], [ %1997, %2716 ], [ %2701, %2686 ]
  %2767 = phi float [ %2000, %2670 ], [ %2000, %2731 ], [ %2000, %2729 ], [ %2000, %2716 ], [ %2713, %2686 ]
  %2768 = and i32 %2678, 12
  %2769 = icmp eq i32 %2768, 12
  br i1 %2769, label %2842, label %2770

; <label>:2770                                    ; preds = %2759
  %2771 = and i32 %2678, 2097184
  %2772 = icmp eq i32 %2771, 2097184
  %2773 = select i1 %2772, float %2298, float 0.000000e+00
  %2774 = and i32 %2678, 4194336
  %2775 = icmp eq i32 %2774, 4194336
  %2776 = select i1 %2775, float %2298, float 0.000000e+00
  %2777 = and i32 %2678, 8388640
  %2778 = icmp eq i32 %2777, 8388640
  %2779 = select i1 %2778, float %2298, float 0.000000e+00
  %2780 = icmp eq i32 %2768, 0
  br i1 %2780, label %2781, label %2794

; <label>:2781                                    ; preds = %2770
  %2782 = fsub fast float %2599, %1989
  %2783 = fsub fast float %2600, %1990
  %2784 = fmul fast float %2773, %2782
  %2785 = fmul fast float %2773, %2783
  %2786 = fadd fast float %2784, %1989
  %2787 = fadd fast float %2785, %1990
  %2788 = fsub fast float %2601, %1999
  %2789 = fmul fast float %2776, %2788
  %2790 = fadd fast float %2789, %1999
  %2791 = fsub fast float %2598, %1998
  %2792 = fmul fast float %2779, %2791
  %2793 = fadd fast float %2792, %1998
  br label %2842

; <label>:2794                                    ; preds = %2770
  %2795 = icmp eq i32 %2768, 4
  br i1 %2795, label %2796, label %2828

; <label>:2796                                    ; preds = %2794
  %2797 = fmul fast float %2773, %2599
  %2798 = fmul fast float %2773, %2600
  %2799 = fadd fast float %2797, %1989
  %2800 = fadd fast float %2798, %1990
  %2801 = call float @dx.op.binary.f32(i32 36, float %1999, float %2601)  ; FMin(a,b)
  %2802 = fsub fast float %2801, %1999
  %2803 = fmul fast float %2802, %2776
  %2804 = fadd fast float %2803, %1999
  %2805 = fadd fast float %2598, %1998
  %2806 = fmul fast float %2805, 0x3FF337FAE0000000
  %2807 = fmul fast float %1998, %1998
  %2808 = fmul fast float %2598, %2598
  %2809 = fadd fast float %2808, %2807
  %2810 = fmul fast float %2809, 0x3FE5152B00000000
  %2811 = fmul fast float %1998, 0xBFCC1F85E0000000
  %2812 = fmul fast float %2811, %2598
  %2813 = fadd fast float %2812, 0xBFE1363700000000
  %2814 = fadd fast float %2813, %2806
  %2815 = fsub fast float %2814, %2810
  %2816 = fmul fast float %2805, 0x3FBA6F0D00000000
  %2817 = fmul fast float %2809, 0x3FD0432880000000
  %2818 = fmul fast float %1998, 0xBFEF110800000000
  %2819 = fmul fast float %2818, %2598
  %2820 = fadd fast float %2819, 1.000000e+00
  %2821 = fsub fast float %2820, %2816
  %2822 = fadd fast float %2821, %2817
  %2823 = fdiv fast float %2815, %2822
  %2824 = call float @dx.op.unary.f32(i32 7, float %2823)  ; Saturate(value)
  %2825 = fsub fast float %2824, %1998
  %2826 = fmul fast float %2825, %2779
  %2827 = fadd fast float %2826, %1998
  br label %2842

; <label>:2828                                    ; preds = %2794
  %2829 = icmp eq i32 %2768, 8
  br i1 %2829, label %2830, label %2842

; <label>:2830                                    ; preds = %2828
  %2831 = fmul fast float %2773, %2599
  %2832 = fmul fast float %2773, %2600
  %2833 = fadd fast float %2831, %1989
  %2834 = fadd fast float %2832, %1990
  %2835 = call float @dx.op.binary.f32(i32 36, float %1999, float %2601)  ; FMin(a,b)
  %2836 = fsub fast float %2835, %1999
  %2837 = fmul fast float %2836, %2776
  %2838 = fadd fast float %2837, %1999
  %2839 = fsub fast float %2598, %1998
  %2840 = fmul fast float %2779, %2839
  %2841 = fadd fast float %2840, %1998
  br label %2842

; <label>:2842                                    ; preds = %2830, %2828, %2796, %2781, %2759, %2297, %2001, %1988
  %2843 = phi float [ %1989, %2759 ], [ %1989, %2297 ], [ %1989, %1988 ], [ %2833, %2830 ], [ %1989, %2828 ], [ %2799, %2796 ], [ %2786, %2781 ], [ %1989, %2001 ]
  %2844 = phi float [ %1990, %2759 ], [ %1990, %2297 ], [ %1990, %1988 ], [ %2834, %2830 ], [ %1990, %2828 ], [ %2800, %2796 ], [ %2787, %2781 ], [ %1990, %2001 ]
  %2845 = phi float [ %2760, %2759 ], [ %1991, %2297 ], [ %1991, %1988 ], [ %2760, %2830 ], [ %2760, %2828 ], [ %2760, %2796 ], [ %2760, %2781 ], [ %1991, %2001 ]
  %2846 = phi float [ %2761, %2759 ], [ %1992, %2297 ], [ %1992, %1988 ], [ %2761, %2830 ], [ %2761, %2828 ], [ %2761, %2796 ], [ %2761, %2781 ], [ %1992, %2001 ]
  %2847 = phi float [ %2762, %2759 ], [ %1993, %2297 ], [ %1993, %1988 ], [ %2762, %2830 ], [ %2762, %2828 ], [ %2762, %2796 ], [ %2762, %2781 ], [ %1993, %2001 ]
  %2848 = phi float [ %2763, %2759 ], [ %1994, %2297 ], [ %1994, %1988 ], [ %2763, %2830 ], [ %2763, %2828 ], [ %2763, %2796 ], [ %2763, %2781 ], [ %1994, %2001 ]
  %2849 = phi float [ %2764, %2759 ], [ %1995, %2297 ], [ %1995, %1988 ], [ %2764, %2830 ], [ %2764, %2828 ], [ %2764, %2796 ], [ %2764, %2781 ], [ %1995, %2001 ]
  %2850 = phi float [ %2765, %2759 ], [ %1996, %2297 ], [ %1996, %1988 ], [ %2765, %2830 ], [ %2765, %2828 ], [ %2765, %2796 ], [ %2765, %2781 ], [ %1996, %2001 ]
  %2851 = phi float [ %2766, %2759 ], [ %1997, %2297 ], [ %1997, %1988 ], [ %2766, %2830 ], [ %2766, %2828 ], [ %2766, %2796 ], [ %2766, %2781 ], [ %1997, %2001 ]
  %2852 = phi float [ %1998, %2759 ], [ %1998, %2297 ], [ %1998, %1988 ], [ %2841, %2830 ], [ %1998, %2828 ], [ %2827, %2796 ], [ %2793, %2781 ], [ %1998, %2001 ]
  %2853 = phi float [ %1999, %2759 ], [ %1999, %2297 ], [ %1999, %1988 ], [ %2838, %2830 ], [ %1999, %2828 ], [ %2804, %2796 ], [ %2790, %2781 ], [ %1999, %2001 ]
  %2854 = phi float [ %2767, %2759 ], [ %2000, %2297 ], [ %2000, %1988 ], [ %2767, %2830 ], [ %2767, %2828 ], [ %2767, %2796 ], [ %2767, %2781 ], [ %2000, %2001 ]
  br i1 %421, label %3696, label %2855

; <label>:2855                                    ; preds = %2842
  %2856 = icmp ult i32 %475, 4
  %2857 = add i32 %62, 72
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = add i32 %62, 76
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2860, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = or i32 %2862, %2859
  %2864 = icmp eq i32 %2863, 0
  br i1 %2864, label %3696, label %2865

; <label>:2865                                    ; preds = %2855
  %2866 = and i32 %2859, 262144
  %2867 = icmp ne i32 %2866, 0
  %2868 = select i1 %2867, float %66, float 1.000000e+00
  %2869 = select i1 %2867, float %67, float 0.000000e+00
  %2870 = select i1 %2867, float %68, float 0.000000e+00
  %2871 = select i1 %2867, float %69, float 1.000000e+00
  %2872 = select i1 %2867, float %70, float %91
  %2873 = select i1 %2867, float %71, float %92
  %2874 = add i32 %62, 332
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = lshr i32 %2876, 16
  %2878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2877)  ; LegacyF16ToF32(value)
  %2879 = fmul fast float %2878, 0x3F50624DE0000000
  %2880 = add i32 %62, 136
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = lshr i32 %2882, 16
  %2884 = and i32 %2883, 255
  %2885 = lshr i32 %2882, 24
  %2886 = add i32 %62, 340
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2886, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = and i32 %2888, 65535
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = lshr i32 %2888, 16
  %2892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2891)  ; LegacyF16ToF32(value)
  %2893 = add i32 %62, 80
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = lshr i32 %2895, 22
  %2897 = shl nuw nsw i32 %2896, 5
  %2898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2897)  ; LegacyF16ToF32(value)
  %2899 = shl i32 %2895, 4
  %2900 = and i32 %2899, 32752
  %2901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2900)  ; LegacyF16ToF32(value)
  %2902 = lshr i32 %2895, 7
  %2903 = and i32 %2902, 32752
  %2904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2903)  ; LegacyF16ToF32(value)
  %2905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2906 = extractvalue %dx.types.CBufRet.f32 %2905, 3
  %2907 = fmul fast float %2906, 1.000000e+03
  %2908 = fmul fast float %411, %2907
  %2909 = call float @dx.op.unary.f32(i32 22, float %2908)  ; Frc(value)
  %2910 = fadd fast float %2909, %401
  %2911 = fmul fast float %412, %2907
  %2912 = call float @dx.op.unary.f32(i32 22, float %2911)  ; Frc(value)
  %2913 = fadd fast float %2912, %403
  %2914 = fmul fast float %2879, %2907
  %2915 = call float @dx.op.unary.f32(i32 22, float %2914)  ; Frc(value)
  %2916 = fmul fast float %2915, 0x401921FB60000000
  %2917 = fadd fast float %2916, %2898
  %2918 = call float @dx.op.unary.f32(i32 13, float %2917)  ; Sin(value)
  %2919 = call float @dx.op.unary.f32(i32 12, float %2917)  ; Cos(value)
  %2920 = fsub fast float -0.000000e+00, %2918
  %2921 = fadd fast float %2872, -5.000000e-01
  %2922 = fadd fast float %2873, -5.000000e-01
  %2923 = fmul fast float %2890, %2921
  %2924 = fmul fast float %2892, %2922
  %2925 = fadd fast float %2923, 5.000000e-01
  %2926 = fadd fast float %2924, 5.000000e-01
  %2927 = fmul fast float %2901, %2925
  %2928 = fmul fast float %2904, %2926
  %2929 = fmul fast float %2919, %2927
  %2930 = call float @dx.op.tertiary.f32(i32 46, float %2920, float %2928, float %2929)  ; FMad(a,b,c)
  %2931 = fmul fast float %2918, %2927
  %2932 = call float @dx.op.tertiary.f32(i32 46, float %2919, float %2928, float %2931)  ; FMad(a,b,c)
  %2933 = fadd fast float %2910, %2930
  %2934 = fadd fast float %2913, %2932
  %2935 = icmp ugt i32 %2884, 1
  %2936 = icmp ugt i32 %2882, 33554431
  %2937 = or i1 %2936, %2935
  br i1 %2937, label %2938, label %2963

; <label>:2938                                    ; preds = %2865
  %2939 = add i32 %62, 276
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = lshr i32 %2941, 16
  %2943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2942)  ; LegacyF16ToF32(value)
  %2944 = fmul fast float %2906, %2943
  %2945 = call float @dx.op.unary.f32(i32 22, float %2944)  ; Frc(value)
  %2946 = mul nuw nsw i32 %2884, %2885
  %2947 = uitofp i32 %2946 to float
  %2948 = fmul fast float %2945, %2947
  %2949 = call float @dx.op.unary.f32(i32 27, float %2948)  ; Round_ni(value)
  %2950 = fptoui float %2949 to i32
  %2951 = urem i32 %2950, %2884
  %2952 = udiv i32 %2950, %2885
  %2953 = call float @dx.op.unary.f32(i32 22, float %2933)  ; Frc(value)
  %2954 = call float @dx.op.unary.f32(i32 22, float %2934)  ; Frc(value)
  %2955 = uitofp i32 %2951 to float
  %2956 = uitofp i32 %2952 to float
  %2957 = fadd fast float %2953, %2955
  %2958 = fadd fast float %2954, %2956
  %2959 = uitofp i32 %2884 to float
  %2960 = uitofp i32 %2885 to float
  %2961 = fdiv fast float %2957, %2959
  %2962 = fdiv fast float %2958, %2960
  br label %2963

; <label>:2963                                    ; preds = %2938, %2865
  %2964 = phi float [ %2961, %2938 ], [ %2933, %2865 ]
  %2965 = phi float [ %2962, %2938 ], [ %2934, %2865 ]
  %2966 = and i32 %2859, 16777216
  %2967 = icmp eq i32 %2966, 0
  br i1 %2967, label %3077, label %2968

; <label>:2968                                    ; preds = %2963
  %2969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2970 = extractvalue %dx.types.CBufRet.f32 %2969, 0
  %2971 = extractvalue %dx.types.CBufRet.f32 %2969, 1
  %2972 = extractvalue %dx.types.CBufRet.f32 %2969, 2
  %2973 = fadd fast float %2970, %171
  %2974 = fadd fast float %2971, %172
  %2975 = fadd fast float %2972, %173
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 0
  %2978 = call float @dx.op.unary.f32(i32 7, float %2977)  ; Saturate(value)
  %2979 = icmp eq i32 %63, 65535
  br i1 %2979, label %3074, label %2980

; <label>:2980                                    ; preds = %2968
  %2981 = lshr i32 %63, 1
  %2982 = shl i32 %2981, 2
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = and i32 %63, 1
  %2986 = icmp ne i32 %2985, 0
  %2987 = lshr i32 %2984, 16
  %2988 = and i32 %2984, 65535
  %2989 = select i1 %2986, i32 %2987, i32 %2988
  %2990 = icmp eq i32 %2989, 65535
  br i1 %2990, label %3070, label %2991

; <label>:2991                                    ; preds = %2980
  %2992 = mul nuw nsw i32 %2989, 40
  %2993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.f32 %2993, 0
  %2995 = extractvalue %dx.types.ResRet.f32 %2993, 1
  %2996 = extractvalue %dx.types.ResRet.f32 %2993, 2
  %2997 = add nuw nsw i32 %2992, 12
  %2998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.ResRet.f32 %2998, 1
  %3001 = extractvalue %dx.types.ResRet.f32 %2998, 2
  %3002 = add nuw nsw i32 %2992, 24
  %3003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.f32 %3003, 0
  %3005 = extractvalue %dx.types.ResRet.f32 %3003, 1
  %3006 = extractvalue %dx.types.ResRet.f32 %3003, 2
  %3007 = add nuw nsw i32 %2992, 36
  %3008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.f32 %3008, 0
  %3010 = fsub fast float %2973, %2994
  %3011 = fsub fast float %2974, %2995
  %3012 = fsub fast float %2975, %2996
  %3013 = fmul fast float %3009, %3010
  %3014 = fmul fast float %3009, %3011
  %3015 = fmul fast float %3009, %3012
  %3016 = call float @dx.op.unary.f32(i32 27, float %3013)  ; Round_ni(value)
  %3017 = call float @dx.op.unary.f32(i32 27, float %3014)  ; Round_ni(value)
  %3018 = call float @dx.op.unary.f32(i32 27, float %3015)  ; Round_ni(value)
  %3019 = fadd fast float %3016, 5.000000e-01
  %3020 = fadd fast float %3017, 5.000000e-01
  %3021 = fadd fast float %3018, 5.000000e-01
  %3022 = fmul fast float %3019, %2999
  %3023 = fmul fast float %3020, %3000
  %3024 = fmul fast float %3021, %3001
  %3025 = shl i32 %63, 2
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = add i32 %3027, 0
  %3029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3030 = call float @dx.op.unary.f32(i32 22, float %3022)  ; Frc(value)
  %3031 = call float @dx.op.unary.f32(i32 22, float %3023)  ; Frc(value)
  %3032 = call float @dx.op.unary.f32(i32 22, float %3024)  ; Frc(value)
  %3033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3029, %dx.types.Handle %55, float %3030, float %3031, float %3032, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3034 = extractvalue %dx.types.ResRet.f32 %3033, 0
  %3035 = extractvalue %dx.types.ResRet.f32 %3033, 1
  %3036 = extractvalue %dx.types.ResRet.f32 %3033, 2
  %3037 = fmul fast float %3034, 1.023000e+03
  %3038 = fmul fast float %3035, 1.023000e+03
  %3039 = fmul fast float %3036, 1.023000e+03
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = fadd fast float %3038, 5.000000e-01
  %3042 = fadd fast float %3039, 5.000000e-01
  %3043 = call float @dx.op.unary.f32(i32 27, float %3040)  ; Round_ni(value)
  %3044 = call float @dx.op.unary.f32(i32 27, float %3041)  ; Round_ni(value)
  %3045 = call float @dx.op.unary.f32(i32 27, float %3042)  ; Round_ni(value)
  %3046 = fsub fast float %3013, %3016
  %3047 = fsub fast float %3014, %3017
  %3048 = fsub fast float %3015, %3018
  %3049 = fmul fast float %3046, 7.500000e-01
  %3050 = fmul fast float %3047, 7.500000e-01
  %3051 = fmul fast float %3048, 7.500000e-01
  %3052 = fadd fast float %3016, 1.250000e-01
  %3053 = fadd fast float %3052, %3049
  %3054 = fadd fast float %3053, %3043
  %3055 = fadd fast float %3017, 1.250000e-01
  %3056 = fadd fast float %3055, %3050
  %3057 = fadd fast float %3056, %3044
  %3058 = fadd fast float %3018, 1.250000e-01
  %3059 = fadd fast float %3058, %3051
  %3060 = fadd fast float %3059, %3045
  %3061 = fmul fast float %3054, %3004
  %3062 = fmul fast float %3057, %3005
  %3063 = fmul fast float %3060, %3006
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = add i32 %3065, 0
  %3067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3067, %dx.types.Handle %53, float %3061, float %3062, float %3063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3069 = extractvalue %dx.types.ResRet.f32 %3068, 0
  br label %3070

; <label>:3070                                    ; preds = %2991, %2980
  %3071 = phi float [ %3069, %2991 ], [ -1.000000e+00, %2980 ]
  %3072 = fadd fast float %3071, %2978
  %3073 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  br label %3074

; <label>:3074                                    ; preds = %3070, %2968
  %3075 = phi float [ %3073, %3070 ], [ %2978, %2968 ]
  %3076 = fmul fast float %3075, %470
  br label %3077

; <label>:3077                                    ; preds = %3074, %2963
  %3078 = phi float [ %3076, %3074 ], [ %470, %2963 ]
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = and i32 %3080, 256
  %3082 = icmp eq i32 %3081, 0
  br i1 %3082, label %3129, label %3083

; <label>:3083                                    ; preds = %3077
  %3084 = add i32 %62, 484
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3084, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = add i32 %3086, 0
  %3088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3089 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3088, %dx.types.Handle %109, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3090 = extractvalue %dx.types.ResRet.f32 %3089, 0
  %3091 = add i32 %62, 148
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = shl i32 %3093, 4
  %3095 = and i32 %3094, 32752
  %3096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3095)  ; LegacyF16ToF32(value)
  %3097 = lshr i32 %3093, 7
  %3098 = and i32 %3097, 32752
  %3099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3098)  ; LegacyF16ToF32(value)
  %3100 = fsub fast float 1.000000e+00, %3078
  %3101 = call float @dx.op.binary.f32(i32 35, float %3100, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3102 = bitcast float %3078 to i32
  %3103 = sitofp i32 %3102 to float
  %3104 = fadd fast float %3103, 0xC1CFBF8940000000
  %3105 = fmul fast float %3099, %3104
  %3106 = fadd fast float %3105, 0x41CFBF8940000000
  %3107 = fptosi float %3106 to i32
  %3108 = bitcast i32 %3107 to float
  %3109 = bitcast float %3101 to i32
  %3110 = sitofp i32 %3109 to float
  %3111 = fadd fast float %3110, 0xC1CFBF8940000000
  %3112 = fmul fast float %3111, %3099
  %3113 = fadd fast float %3112, 0x41CFBF8940000000
  %3114 = fptosi float %3113 to i32
  %3115 = bitcast i32 %3114 to float
  %3116 = fmul fast float %3108, %3096
  %3117 = fmul fast float %3115, %3096
  %3118 = fsub fast float %3101, %3116
  %3119 = fadd fast float %3117, %3101
  %3120 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  %3121 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  %3122 = fsub fast float %3090, %3120
  %3123 = fsub fast float %3121, %3120
  %3124 = bitcast float %3123 to i32
  %3125 = sub nsw i32 2129859010, %3124
  %3126 = bitcast i32 %3125 to float
  %3127 = fmul fast float %3126, %3122
  %3128 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  br label %3129

; <label>:3129                                    ; preds = %3083, %3077
  %3130 = phi float [ %3128, %3083 ], [ %3078, %3077 ]
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = and i32 %3132, 128
  %3134 = icmp eq i32 %3133, 0
  br i1 %3134, label %3151, label %3135

; <label>:3135                                    ; preds = %3129
  %3136 = add i32 %62, 468
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = add i32 %3138, 0
  %3140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3140, %dx.types.Handle %109, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3142 = extractvalue %dx.types.ResRet.f32 %3141, 0
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = and i32 %3144, 524288
  %3146 = icmp ne i32 %3145, 0
  %3147 = fcmp fast ogt float %3142, 0x3FE0101020000000
  %3148 = select i1 %3147, float 1.000000e+00, float 0.000000e+00
  %3149 = select i1 %3146, float %3148, float %3142
  %3150 = fmul fast float %3149, %3130
  br label %3151

; <label>:3151                                    ; preds = %3135, %3129
  %3152 = phi float [ %3150, %3135 ], [ %3130, %3129 ]
  %3153 = fcmp fast ult float %3152, 0x3F70101020000000
  br i1 %3153, label %3696, label %3154

; <label>:3154                                    ; preds = %3151
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = and i32 %3156, 16
  %3158 = icmp eq i32 %3157, 0
  br i1 %3158, label %3357, label %3159

; <label>:3159                                    ; preds = %3154
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = add i32 %62, 420
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3162, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = add i32 %3164, 0
  %3166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3166, %dx.types.Handle %108, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3168 = extractvalue %dx.types.ResRet.f32 %3167, 0
  %3169 = extractvalue %dx.types.ResRet.f32 %3167, 1
  %3170 = extractvalue %dx.types.ResRet.f32 %3167, 2
  %3171 = extractvalue %dx.types.ResRet.f32 %3167, 3
  %3172 = and i32 %3161, 255
  %3173 = uitofp i32 %3172 to float
  %3174 = lshr i32 %3161, 8
  %3175 = and i32 %3174, 255
  %3176 = uitofp i32 %3175 to float
  %3177 = fmul fast float %3171, %3173
  %3178 = fadd fast float %3177, %3176
  %3179 = fmul fast float %3178, 0x3F70101000000000
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = and i32 %3181, 512
  %3183 = icmp eq i32 %3182, 0
  br i1 %3183, label %3192, label %3184

; <label>:3184                                    ; preds = %3159
  %3185 = add i32 %62, 504
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = add i32 %3187, 0
  %3189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3188, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3189, %dx.types.Handle %109, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3191 = extractvalue %dx.types.ResRet.f32 %3190, 0
  br label %3192

; <label>:3192                                    ; preds = %3184, %3159
  %3193 = phi float [ %3191, %3184 ], [ 1.000000e+00, %3159 ]
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 33554432
  %3197 = icmp eq i32 %3196, 0
  br i1 %3197, label %3304, label %3198

; <label>:3198                                    ; preds = %3192
  %3199 = add i32 %62, 272
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 65535
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = lshr i32 %3201, 16
  %3205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3204)  ; LegacyF16ToF32(value)
  %3206 = add i32 %62, 276
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 65535
  %3210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3209)  ; LegacyF16ToF32(value)
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = lshr i32 %3212, 24
  %3214 = uitofp i32 %3213 to float
  %3215 = fmul fast float %3214, 0x3F70101020000000
  %3216 = and i32 %3212, 255
  %3217 = uitofp i32 %3216 to float
  %3218 = fmul fast float %3217, 0x3F70101020000000
  %3219 = lshr i32 %3212, 8
  %3220 = and i32 %3219, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = fmul fast float %3221, 0x3F70101020000000
  %3223 = lshr i32 %3212, 16
  %3224 = and i32 %3223, 255
  %3225 = uitofp i32 %3224 to float
  %3226 = fmul fast float %3225, 0x3F70101020000000
  %3227 = add i32 %62, 268
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = lshr i32 %3229, 24
  %3231 = uitofp i32 %3230 to float
  %3232 = fmul fast float %3231, 0x3F70101020000000
  %3233 = and i32 %3229, 255
  %3234 = uitofp i32 %3233 to float
  %3235 = fmul fast float %3234, 0x3F70101020000000
  %3236 = lshr i32 %3229, 8
  %3237 = and i32 %3236, 255
  %3238 = uitofp i32 %3237 to float
  %3239 = fmul fast float %3238, 0x3F70101020000000
  %3240 = lshr i32 %3229, 16
  %3241 = and i32 %3240, 255
  %3242 = uitofp i32 %3241 to float
  %3243 = fmul fast float %3242, 0x3F70101020000000
  %3244 = bitcast float %3168 to i32
  %3245 = ashr i32 %3244, 1
  %3246 = sub nsw i32 1597463174, %3245
  %3247 = bitcast i32 %3246 to float
  %3248 = fmul fast float %3168, 5.000000e-01
  %3249 = fmul fast float %3247, %3247
  %3250 = fmul fast float %3249, %3248
  %3251 = fsub fast float 1.500000e+00, %3250
  %3252 = fmul fast float %3247, %3168
  %3253 = fmul fast float %3252, %3251
  %3254 = bitcast float %3169 to i32
  %3255 = ashr i32 %3254, 1
  %3256 = sub nsw i32 1597463174, %3255
  %3257 = bitcast i32 %3256 to float
  %3258 = fmul fast float %3169, 5.000000e-01
  %3259 = fmul fast float %3257, %3257
  %3260 = fmul fast float %3259, %3258
  %3261 = fsub fast float 1.500000e+00, %3260
  %3262 = fmul fast float %3257, %3169
  %3263 = fmul fast float %3262, %3261
  %3264 = bitcast float %3170 to i32
  %3265 = ashr i32 %3264, 1
  %3266 = sub nsw i32 1597463174, %3265
  %3267 = bitcast i32 %3266 to float
  %3268 = fmul fast float %3170, 5.000000e-01
  %3269 = fmul fast float %3267, %3267
  %3270 = fmul fast float %3269, %3268
  %3271 = fsub fast float 1.500000e+00, %3270
  %3272 = fmul fast float %3267, %3170
  %3273 = fmul fast float %3272, %3271
  %3274 = fsub fast float %3253, %3235
  %3275 = fsub fast float %3263, %3239
  %3276 = fsub fast float %3273, %3243
  %3277 = fmul fast float %3274, %3203
  %3278 = fmul fast float %3275, %3205
  %3279 = fmul fast float %3276, %3210
  %3280 = fadd fast float %3277, %3218
  %3281 = fadd fast float %3278, %3222
  %3282 = fadd fast float %3279, %3226
  %3283 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  %3284 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3285 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3286 = fmul fast float %3283, %3283
  %3287 = fmul fast float %3284, %3284
  %3288 = fmul fast float %3285, %3285
  %3289 = fsub fast float %3286, %3168
  %3290 = fsub fast float %3287, %3169
  %3291 = fsub fast float %3288, %3170
  %3292 = fmul fast float %3289, %3193
  %3293 = fmul fast float %3290, %3193
  %3294 = fmul fast float %3291, %3193
  %3295 = fadd fast float %3292, %3168
  %3296 = fadd fast float %3293, %3169
  %3297 = fadd fast float %3294, %3170
  %3298 = fadd fast float %3215, %3179
  %3299 = fsub fast float %3298, %3232
  %3300 = call float @dx.op.unary.f32(i32 7, float %3299)  ; Saturate(value)
  %3301 = fsub fast float %3300, %3179
  %3302 = fmul fast float %3301, %3193
  %3303 = fadd fast float %3302, %3179
  br label %3357

; <label>:3304                                    ; preds = %3192
  %3305 = and i32 %3195, 134217728
  %3306 = icmp eq i32 %3305, 0
  br i1 %3306, label %3341, label %3307

; <label>:3307                                    ; preds = %3304
  %3308 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %3309 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %3310 = call float @dx.op.unary.f32(i32 24, float %396)  ; Sqrt(value)
  %3311 = fadd fast float %3308, -5.000000e-01
  %3312 = fadd fast float %3309, -5.000000e-01
  %3313 = fadd fast float %3310, -5.000000e-01
  %3314 = fmul fast float %3311, %3193
  %3315 = fmul fast float %3312, %3193
  %3316 = fmul fast float %3313, %3193
  %3317 = fadd fast float %3314, 5.000000e-01
  %3318 = fadd fast float %3315, 5.000000e-01
  %3319 = fadd fast float %3316, 5.000000e-01
  %3320 = call float @dx.op.unary.f32(i32 24, float %3168)  ; Sqrt(value)
  %3321 = call float @dx.op.unary.f32(i32 24, float %3169)  ; Sqrt(value)
  %3322 = call float @dx.op.unary.f32(i32 24, float %3170)  ; Sqrt(value)
  %3323 = fmul fast float %3317, 2.000000e+00
  %3324 = fsub fast float 1.000000e+00, %3323
  %3325 = fmul fast float %3324, %3320
  %3326 = fadd fast float %3325, %3323
  %3327 = fmul fast float %3326, %3320
  %3328 = fmul fast float %3318, 2.000000e+00
  %3329 = fsub fast float 1.000000e+00, %3328
  %3330 = fmul fast float %3329, %3321
  %3331 = fadd fast float %3330, %3328
  %3332 = fmul fast float %3331, %3321
  %3333 = fmul fast float %3319, 2.000000e+00
  %3334 = fsub fast float 1.000000e+00, %3333
  %3335 = fmul fast float %3334, %3322
  %3336 = fadd fast float %3335, %3333
  %3337 = fmul fast float %3336, %3322
  %3338 = fmul fast float %3327, %3327
  %3339 = fmul fast float %3332, %3332
  %3340 = fmul fast float %3337, %3337
  br label %3357

; <label>:3341                                    ; preds = %3304
  %3342 = fmul fast float %388, %388
  %3343 = fmul fast float %392, %392
  %3344 = fmul fast float %396, %396
  %3345 = fadd fast float %3342, -1.000000e+00
  %3346 = fadd fast float %3343, -1.000000e+00
  %3347 = fadd fast float %3344, -1.000000e+00
  %3348 = fmul fast float %3193, %3345
  %3349 = fmul fast float %3193, %3346
  %3350 = fmul fast float %3193, %3347
  %3351 = fadd fast float %3348, 1.000000e+00
  %3352 = fadd fast float %3349, 1.000000e+00
  %3353 = fadd fast float %3350, 1.000000e+00
  %3354 = fmul fast float %3351, %3168
  %3355 = fmul fast float %3352, %3169
  %3356 = fmul fast float %3353, %3170
  br label %3357

; <label>:3357                                    ; preds = %3341, %3307, %3198, %3154
  %3358 = phi float [ %3303, %3198 ], [ %3179, %3307 ], [ %3179, %3341 ], [ 0x3FA23C0BE0000000, %3154 ]
  %3359 = phi float [ %3295, %3198 ], [ %3338, %3307 ], [ %3354, %3341 ], [ 1.000000e+00, %3154 ]
  %3360 = phi float [ %3296, %3198 ], [ %3339, %3307 ], [ %3355, %3341 ], [ 1.000000e+00, %3154 ]
  %3361 = phi float [ %3297, %3198 ], [ %3340, %3307 ], [ %3356, %3341 ], [ 1.000000e+00, %3154 ]
  %3362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3363 = extractvalue %dx.types.CBufRet.i32 %3362, 1
  %3364 = and i32 %3363, 1
  %3365 = icmp ne i32 %3364, 0
  %3366 = add i32 %62, 356
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = and i32 %3368, 32
  %3370 = icmp ne i32 %3369, 0
  %3371 = and i1 %3365, %3370
  %3372 = select i1 %3371, float 1.000000e+00, float %3359
  %3373 = select i1 %3371, float 0x3FD3333340000000, float %3360
  %3374 = select i1 %3371, float 0x3FD3333340000000, float %3361
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = and i32 %3376, 32
  %3378 = icmp eq i32 %3377, 0
  br i1 %3378, label %3451, label %3379

; <label>:3379                                    ; preds = %3357
  %3380 = add i32 %62, 140
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = add i32 %62, 436
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = add i32 %3385, 0
  %3387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3388 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3387, %dx.types.Handle %108, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3389 = extractvalue %dx.types.ResRet.f32 %3388, 0
  %3390 = extractvalue %dx.types.ResRet.f32 %3388, 1
  %3391 = extractvalue %dx.types.ResRet.f32 %3388, 2
  %3392 = extractvalue %dx.types.ResRet.f32 %3388, 3
  %3393 = and i32 %3382, 255
  %3394 = uitofp i32 %3393 to float
  %3395 = lshr i32 %3382, 8
  %3396 = and i32 %3395, 255
  %3397 = uitofp i32 %3396 to float
  %3398 = lshr i32 %3382, 16
  %3399 = and i32 %3398, 255
  %3400 = uitofp i32 %3399 to float
  %3401 = fmul fast float %3400, 0x3F70101000000000
  %3402 = fmul fast float %3389, %3394
  %3403 = fadd fast float %3402, %3397
  %3404 = fmul fast float %3403, 0x3F70101000000000
  %3405 = fadd fast float %3390, -5.000000e-01
  %3406 = fadd fast float %3392, -5.000000e-01
  %3407 = fmul fast float %3405, %3401
  %3408 = fmul fast float %3406, %3401
  %3409 = fadd fast float %3407, 5.000000e-01
  %3410 = fadd fast float %3408, 5.000000e-01
  %3411 = fmul fast float %3409, 2.000000e+00
  %3412 = fadd fast float %3411, -1.000000e+00
  %3413 = fmul fast float %3410, 2.000000e+00
  %3414 = fadd fast float %3413, -1.000000e+00
  %3415 = fadd fast float %3412, %3414
  %3416 = fmul fast float %3415, 5.000000e-01
  %3417 = fsub fast float %3412, %3414
  %3418 = fmul fast float %3417, 5.000000e-01
  %3419 = call float @dx.op.unary.f32(i32 6, float %3416)  ; FAbs(value)
  %3420 = fsub fast float 1.000000e+00, %3419
  %3421 = call float @dx.op.unary.f32(i32 6, float %3418)  ; FAbs(value)
  %3422 = fsub fast float %3420, %3421
  %3423 = call float @dx.op.dot3.f32(i32 55, float %3416, float %3418, float %3422, float %3416, float %3418, float %3422)  ; Dot3(ax,ay,az,bx,by,bz)
  %3424 = call float @dx.op.unary.f32(i32 25, float %3423)  ; Rsqrt(value)
  %3425 = fmul fast float %3416, %3424
  %3426 = fmul fast float %3418, %3424
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = and i32 %3428, 67108864
  %3430 = icmp eq i32 %3429, 0
  br i1 %3430, label %3447, label %3431

; <label>:3431                                    ; preds = %3379
  %3432 = add i32 %62, 328
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = and i32 %3434, 65535
  %3436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3435)  ; LegacyF16ToF32(value)
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = and i32 %3438, 65535
  %3440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3439)  ; LegacyF16ToF32(value)
  %3441 = lshr i32 %3434, 16
  %3442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3441)  ; LegacyF16ToF32(value)
  %3443 = fsub fast float %3404, %3442
  %3444 = fmul fast float %3443, %3436
  %3445 = fadd fast float %3444, %3440
  %3446 = call float @dx.op.unary.f32(i32 7, float %3445)  ; Saturate(value)
  br label %3447

; <label>:3447                                    ; preds = %3431, %3379
  %3448 = phi float [ %3446, %3431 ], [ %3404, %3379 ]
  %3449 = call float @dx.op.dot2.f32(i32 54, float %3425, float %3426, float %2868, float %2869)  ; Dot2(ax,ay,bx,by)
  %3450 = call float @dx.op.dot2.f32(i32 54, float %3425, float %3426, float %2870, float %2871)  ; Dot2(ax,ay,bx,by)
  br label %3451

; <label>:3451                                    ; preds = %3447, %3357
  %3452 = phi float [ %3448, %3447 ], [ 0x3FD6666660000000, %3357 ]
  %3453 = phi float [ %3449, %3447 ], [ 0.000000e+00, %3357 ]
  %3454 = phi float [ %3450, %3447 ], [ 0.000000e+00, %3357 ]
  %3455 = phi float [ %3391, %3447 ], [ 1.000000e+00, %3357 ]
  %3456 = add i32 %62, 208
  %3457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.i32 %3457, 0
  %3459 = lshr i32 %3458, 22
  %3460 = shl nuw nsw i32 %3459, 5
  %3461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3460)  ; LegacyF16ToF32(value)
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = and i32 %3463, 64
  %3465 = icmp eq i32 %3464, 0
  br i1 %3465, label %3499, label %3466

; <label>:3466                                    ; preds = %3451
  %3467 = add i32 %62, 452
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = add i32 %3469, 0
  %3471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.i32 %3472, 0
  %3474 = and i32 %3473, 131072
  %3475 = icmp eq i32 %3474, 0
  %3476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3471, %dx.types.Handle %108, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = fmul fast float %3477, %376
  %3481 = fmul fast float %3478, %379
  %3482 = fmul fast float %3479, %382
  br i1 %3475, label %3489, label %3483

; <label>:3483                                    ; preds = %3466
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 0
  %3486 = fmul fast float %3485, %3480
  %3487 = fmul fast float %3485, %3481
  %3488 = fmul fast float %3485, %3482
  br label %3489

; <label>:3489                                    ; preds = %3483, %3466
  %3490 = phi float [ %3486, %3483 ], [ %3480, %3466 ]
  %3491 = phi float [ %3487, %3483 ], [ %3481, %3466 ]
  %3492 = phi float [ %3488, %3483 ], [ %3482, %3466 ]
  %3493 = fmul fast float %3490, %3461
  %3494 = select i1 %233, float %3493, float %3490
  %3495 = call float @dx.op.dot3.f32(i32 55, float %3494, float %3491, float %3492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3496 = select i1 %233, float 0.000000e+00, float %3490
  %3497 = select i1 %233, float %3495, float %3491
  %3498 = select i1 %233, float 0.000000e+00, float %3492
  br label %3499

; <label>:3499                                    ; preds = %3489, %3451
  %3500 = phi float [ %3496, %3489 ], [ 0.000000e+00, %3451 ]
  %3501 = phi float [ %3497, %3489 ], [ 0.000000e+00, %3451 ]
  %3502 = phi float [ %3498, %3489 ], [ 0.000000e+00, %3451 ]
  %3503 = add i32 %62, 144
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = and i32 %3505, 255
  %3507 = uitofp i32 %3506 to float
  %3508 = lshr i32 %3505, 8
  %3509 = and i32 %3508, 255
  %3510 = uitofp i32 %3509 to float
  %3511 = call float @dx.op.dot3.f32(i32 55, float %3372, float %3373, float %3374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3512 = fmul fast float %3510, %3511
  %3513 = fadd fast float %3512, %3507
  %3514 = fmul fast float %3513, 0x3F70101020000000
  %3515 = call float @dx.op.unary.f32(i32 7, float %3514)  ; Saturate(value)
  br i1 %2856, label %3516, label %3524

; <label>:3516                                    ; preds = %3499
  %3517 = fsub fast float 1.000000e+00, %3152
  %3518 = fmul fast float %3517, %2845
  %3519 = fmul fast float %3517, %2846
  %3520 = fmul fast float %3517, %2847
  %3521 = fmul fast float %3517, %2848
  %3522 = fmul fast float %3517, %2849
  %3523 = fmul fast float %3517, %2850
  br label %3524

; <label>:3524                                    ; preds = %3516, %3499
  %3525 = phi float [ %3518, %3516 ], [ %2845, %3499 ]
  %3526 = phi float [ %3519, %3516 ], [ %2846, %3499 ]
  %3527 = phi float [ %3520, %3516 ], [ %2847, %3499 ]
  %3528 = phi float [ %3521, %3516 ], [ %2848, %3499 ]
  %3529 = phi float [ %3522, %3516 ], [ %2849, %3499 ]
  %3530 = phi float [ %3523, %3516 ], [ %2850, %3499 ]
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = and i32 %3532, 3
  %3534 = icmp eq i32 %3533, 3
  br i1 %3534, label %3613, label %3535

; <label>:3535                                    ; preds = %3524
  %3536 = and i32 %3532, 16
  %3537 = icmp ne i32 %3536, 0
  %3538 = select i1 %3537, float %3152, float 0.000000e+00
  %3539 = icmp eq i32 %3533, 0
  br i1 %3539, label %3540, label %3568

; <label>:3540                                    ; preds = %3535
  %3541 = and i32 %3532, 64
  %3542 = icmp ne i32 %3541, 0
  %3543 = select i1 %3542, float %3152, float 0.000000e+00
  %3544 = fsub fast float %3372, %3525
  %3545 = fsub fast float %3373, %3526
  %3546 = fsub fast float %3374, %3527
  %3547 = fmul fast float %3538, %3544
  %3548 = fmul fast float %3538, %3545
  %3549 = fmul fast float %3538, %3546
  %3550 = fadd fast float %3547, %3525
  %3551 = fadd fast float %3548, %3526
  %3552 = fadd fast float %3549, %3527
  %3553 = fsub fast float %3358, %2851
  %3554 = fmul fast float %3538, %3553
  %3555 = fadd fast float %3554, %2851
  %3556 = fsub fast float %3500, %3528
  %3557 = fsub fast float %3501, %3529
  %3558 = fsub fast float %3502, %3530
  %3559 = fmul fast float %3543, %3556
  %3560 = fmul fast float %3543, %3557
  %3561 = fmul fast float %3543, %3558
  %3562 = fadd fast float %3559, %3528
  %3563 = fadd fast float %3560, %3529
  %3564 = fadd fast float %3561, %3530
  %3565 = fsub fast float %3515, %2854
  %3566 = fmul fast float %3538, %3565
  %3567 = fadd fast float %3566, %2854
  br label %3613

; <label>:3568                                    ; preds = %3535
  %3569 = icmp eq i32 %3533, 1
  br i1 %3569, label %3570, label %3583

; <label>:3570                                    ; preds = %3568
  %3571 = fadd fast float %3372, -1.000000e+00
  %3572 = fadd fast float %3373, -1.000000e+00
  %3573 = fadd fast float %3374, -1.000000e+00
  %3574 = fmul fast float %3538, %3571
  %3575 = fmul fast float %3538, %3572
  %3576 = fmul fast float %3538, %3573
  %3577 = fadd fast float %3574, 1.000000e+00
  %3578 = fadd fast float %3575, 1.000000e+00
  %3579 = fadd fast float %3576, 1.000000e+00
  %3580 = fmul fast float %3577, %3525
  %3581 = fmul fast float %3578, %3526
  %3582 = fmul fast float %3579, %3527
  br label %3613

; <label>:3583                                    ; preds = %3568
  %3584 = icmp eq i32 %3533, 2
  br i1 %3584, label %3585, label %3613

; <label>:3585                                    ; preds = %3583
  %3586 = call float @dx.op.unary.f32(i32 24, float %3372)  ; Sqrt(value)
  %3587 = call float @dx.op.unary.f32(i32 24, float %3373)  ; Sqrt(value)
  %3588 = call float @dx.op.unary.f32(i32 24, float %3374)  ; Sqrt(value)
  %3589 = fadd fast float %3586, -5.000000e-01
  %3590 = fadd fast float %3587, -5.000000e-01
  %3591 = fadd fast float %3588, -5.000000e-01
  %3592 = fmul fast float %3589, %3538
  %3593 = fmul fast float %3590, %3538
  %3594 = fmul fast float %3591, %3538
  %3595 = fadd fast float %3592, 5.000000e-01
  %3596 = fadd fast float %3593, 5.000000e-01
  %3597 = fadd fast float %3594, 5.000000e-01
  %3598 = fmul fast float %3595, 2.000000e+00
  %3599 = fsub fast float 1.000000e+00, %3598
  %3600 = fmul fast float %3599, %3525
  %3601 = fadd fast float %3600, %3598
  %3602 = fmul fast float %3601, %3525
  %3603 = fmul fast float %3596, 2.000000e+00
  %3604 = fsub fast float 1.000000e+00, %3603
  %3605 = fmul fast float %3604, %3526
  %3606 = fadd fast float %3605, %3603
  %3607 = fmul fast float %3606, %3526
  %3608 = fmul fast float %3597, 2.000000e+00
  %3609 = fsub fast float 1.000000e+00, %3608
  %3610 = fmul fast float %3609, %3527
  %3611 = fadd fast float %3610, %3608
  %3612 = fmul fast float %3611, %3527
  br label %3613

; <label>:3613                                    ; preds = %3585, %3583, %3570, %3540, %3524
  %3614 = phi float [ %3525, %3524 ], [ %3602, %3585 ], [ %3525, %3583 ], [ %3580, %3570 ], [ %3550, %3540 ]
  %3615 = phi float [ %3526, %3524 ], [ %3607, %3585 ], [ %3526, %3583 ], [ %3581, %3570 ], [ %3551, %3540 ]
  %3616 = phi float [ %3527, %3524 ], [ %3612, %3585 ], [ %3527, %3583 ], [ %3582, %3570 ], [ %3552, %3540 ]
  %3617 = phi float [ %3528, %3524 ], [ %3528, %3585 ], [ %3528, %3583 ], [ %3528, %3570 ], [ %3562, %3540 ]
  %3618 = phi float [ %3529, %3524 ], [ %3529, %3585 ], [ %3529, %3583 ], [ %3529, %3570 ], [ %3563, %3540 ]
  %3619 = phi float [ %3530, %3524 ], [ %3530, %3585 ], [ %3530, %3583 ], [ %3530, %3570 ], [ %3564, %3540 ]
  %3620 = phi float [ %2851, %3524 ], [ %2851, %3585 ], [ %2851, %3583 ], [ %2851, %3570 ], [ %3555, %3540 ]
  %3621 = phi float [ %2854, %3524 ], [ %2854, %3585 ], [ %2854, %3583 ], [ %2854, %3570 ], [ %3567, %3540 ]
  %3622 = and i32 %3532, 12
  %3623 = icmp eq i32 %3622, 12
  br i1 %3623, label %3696, label %3624

; <label>:3624                                    ; preds = %3613
  %3625 = and i32 %3532, 2097184
  %3626 = icmp eq i32 %3625, 2097184
  %3627 = select i1 %3626, float %3152, float 0.000000e+00
  %3628 = and i32 %3532, 4194336
  %3629 = icmp eq i32 %3628, 4194336
  %3630 = select i1 %3629, float %3152, float 0.000000e+00
  %3631 = and i32 %3532, 8388640
  %3632 = icmp eq i32 %3631, 8388640
  %3633 = select i1 %3632, float %3152, float 0.000000e+00
  %3634 = icmp eq i32 %3622, 0
  br i1 %3634, label %3635, label %3648

; <label>:3635                                    ; preds = %3624
  %3636 = fsub fast float %3453, %2843
  %3637 = fsub fast float %3454, %2844
  %3638 = fmul fast float %3627, %3636
  %3639 = fmul fast float %3627, %3637
  %3640 = fadd fast float %3638, %2843
  %3641 = fadd fast float %3639, %2844
  %3642 = fsub fast float %3455, %2853
  %3643 = fmul fast float %3630, %3642
  %3644 = fadd fast float %3643, %2853
  %3645 = fsub fast float %3452, %2852
  %3646 = fmul fast float %3633, %3645
  %3647 = fadd fast float %3646, %2852
  br label %3696

; <label>:3648                                    ; preds = %3624
  %3649 = icmp eq i32 %3622, 4
  br i1 %3649, label %3650, label %3682

; <label>:3650                                    ; preds = %3648
  %3651 = fmul fast float %3627, %3453
  %3652 = fmul fast float %3627, %3454
  %3653 = fadd fast float %3651, %2843
  %3654 = fadd fast float %3652, %2844
  %3655 = call float @dx.op.binary.f32(i32 36, float %2853, float %3455)  ; FMin(a,b)
  %3656 = fsub fast float %3655, %2853
  %3657 = fmul fast float %3656, %3630
  %3658 = fadd fast float %3657, %2853
  %3659 = fadd fast float %3452, %2852
  %3660 = fmul fast float %3659, 0x3FF337FAE0000000
  %3661 = fmul fast float %2852, %2852
  %3662 = fmul fast float %3452, %3452
  %3663 = fadd fast float %3662, %3661
  %3664 = fmul fast float %3663, 0x3FE5152B00000000
  %3665 = fmul fast float %2852, 0xBFCC1F85E0000000
  %3666 = fmul fast float %3665, %3452
  %3667 = fadd fast float %3666, 0xBFE1363700000000
  %3668 = fadd fast float %3667, %3660
  %3669 = fsub fast float %3668, %3664
  %3670 = fmul fast float %3659, 0x3FBA6F0D00000000
  %3671 = fmul fast float %3663, 0x3FD0432880000000
  %3672 = fmul fast float %2852, 0xBFEF110800000000
  %3673 = fmul fast float %3672, %3452
  %3674 = fadd fast float %3673, 1.000000e+00
  %3675 = fsub fast float %3674, %3670
  %3676 = fadd fast float %3675, %3671
  %3677 = fdiv fast float %3669, %3676
  %3678 = call float @dx.op.unary.f32(i32 7, float %3677)  ; Saturate(value)
  %3679 = fsub fast float %3678, %2852
  %3680 = fmul fast float %3679, %3633
  %3681 = fadd fast float %3680, %2852
  br label %3696

; <label>:3682                                    ; preds = %3648
  %3683 = icmp eq i32 %3622, 8
  br i1 %3683, label %3684, label %3696

; <label>:3684                                    ; preds = %3682
  %3685 = fmul fast float %3627, %3453
  %3686 = fmul fast float %3627, %3454
  %3687 = fadd fast float %3685, %2843
  %3688 = fadd fast float %3686, %2844
  %3689 = call float @dx.op.binary.f32(i32 36, float %2853, float %3455)  ; FMin(a,b)
  %3690 = fsub fast float %3689, %2853
  %3691 = fmul fast float %3690, %3630
  %3692 = fadd fast float %3691, %2853
  %3693 = fsub fast float %3452, %2852
  %3694 = fmul fast float %3633, %3693
  %3695 = fadd fast float %3694, %2852
  br label %3696

; <label>:3696                                    ; preds = %3684, %3682, %3650, %3635, %3613, %3151, %2855, %2842
  %3697 = phi float [ %2843, %3613 ], [ %2843, %3151 ], [ %2843, %2842 ], [ %2843, %2855 ], [ %3640, %3635 ], [ %3653, %3650 ], [ %2843, %3682 ], [ %3687, %3684 ]
  %3698 = phi float [ %2844, %3613 ], [ %2844, %3151 ], [ %2844, %2842 ], [ %2844, %2855 ], [ %3641, %3635 ], [ %3654, %3650 ], [ %2844, %3682 ], [ %3688, %3684 ]
  %3699 = phi float [ %3614, %3613 ], [ %2845, %3151 ], [ %2845, %2842 ], [ %2845, %2855 ], [ %3614, %3635 ], [ %3614, %3650 ], [ %3614, %3682 ], [ %3614, %3684 ]
  %3700 = phi float [ %3615, %3613 ], [ %2846, %3151 ], [ %2846, %2842 ], [ %2846, %2855 ], [ %3615, %3635 ], [ %3615, %3650 ], [ %3615, %3682 ], [ %3615, %3684 ]
  %3701 = phi float [ %3616, %3613 ], [ %2847, %3151 ], [ %2847, %2842 ], [ %2847, %2855 ], [ %3616, %3635 ], [ %3616, %3650 ], [ %3616, %3682 ], [ %3616, %3684 ]
  %3702 = phi float [ %3617, %3613 ], [ %2848, %3151 ], [ %2848, %2842 ], [ %2848, %2855 ], [ %3617, %3635 ], [ %3617, %3650 ], [ %3617, %3682 ], [ %3617, %3684 ]
  %3703 = phi float [ %3618, %3613 ], [ %2849, %3151 ], [ %2849, %2842 ], [ %2849, %2855 ], [ %3618, %3635 ], [ %3618, %3650 ], [ %3618, %3682 ], [ %3618, %3684 ]
  %3704 = phi float [ %3619, %3613 ], [ %2850, %3151 ], [ %2850, %2842 ], [ %2850, %2855 ], [ %3619, %3635 ], [ %3619, %3650 ], [ %3619, %3682 ], [ %3619, %3684 ]
  %3705 = phi float [ %3620, %3613 ], [ %2851, %3151 ], [ %2851, %2842 ], [ %2851, %2855 ], [ %3620, %3635 ], [ %3620, %3650 ], [ %3620, %3682 ], [ %3620, %3684 ]
  %3706 = phi float [ %2852, %3613 ], [ %2852, %3151 ], [ %2852, %2842 ], [ %2852, %2855 ], [ %3647, %3635 ], [ %3681, %3650 ], [ %2852, %3682 ], [ %3695, %3684 ]
  %3707 = phi float [ %2853, %3613 ], [ %2853, %3151 ], [ %2853, %2842 ], [ %2853, %2855 ], [ %3644, %3635 ], [ %3658, %3650 ], [ %2853, %3682 ], [ %3692, %3684 ]
  %3708 = phi float [ %3621, %3613 ], [ %2854, %3151 ], [ %2854, %2842 ], [ %2854, %2855 ], [ %3621, %3635 ], [ %3621, %3650 ], [ %3621, %3682 ], [ %3621, %3684 ]
  %3709 = add i32 %62, 360
  %3710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3709, i32 undef)  ; BufferLoad(srv,index,wot)
  %3711 = extractvalue %dx.types.ResRet.i32 %3710, 0
  %3712 = extractvalue %dx.types.ResRet.i32 %3710, 1
  %3713 = bitcast i32 %3711 to float
  %3714 = bitcast i32 %3712 to float
  %3715 = fcmp fast oge float %3713, 0.000000e+00
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 0
  %3718 = select i1 %3715, float %3713, float %3717
  %3719 = add i32 %62, 488
  %3720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3719, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.i32 %3720, 0
  %3722 = add i32 %3721, 0
  %3723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3723, %dx.types.Handle %109, float %91, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3725 = extractvalue %dx.types.ResRet.f32 %3724, 0
  %3726 = fmul fast float %3725, %3714
  %3727 = fadd fast float %3726, %3718
  %3728 = call float @dx.op.dot2.f32(i32 54, float %3697, float %3698, float %3697, float %3698)  ; Dot2(ax,ay,bx,by)
  %3729 = fmul fast float %3728, 0x3FE3333340000000
  %3730 = fsub fast float 1.000000e+00, %3729
  %3731 = call float @dx.op.dot3.f32(i32 55, float %3697, float %3698, float %3730, float %3697, float %3698, float %3730)  ; Dot3(ax,ay,az,bx,by,bz)
  %3732 = call float @dx.op.unary.f32(i32 25, float %3731)  ; Rsqrt(value)
  %3733 = fmul fast float %3732, %3697
  %3734 = fmul fast float %3732, %3698
  %3735 = fmul fast float %3730, %3732
  %3736 = fmul fast float %3735, %121
  %3737 = fmul fast float %3735, %123
  %3738 = fmul fast float %3735, %125
  %3739 = fmul fast float %3733, %84
  %3740 = fmul fast float %3733, %85
  %3741 = fmul fast float %3733, %86
  %3742 = fadd fast float %3736, %3739
  %3743 = fadd fast float %3737, %3740
  %3744 = fadd fast float %3738, %3741
  %3745 = fmul fast float %135, %3734
  %3746 = fmul fast float %136, %3734
  %3747 = fmul fast float %137, %3734
  %3748 = fadd fast float %3742, %3745
  %3749 = fadd fast float %3743, %3746
  %3750 = fadd fast float %3744, %3747
  %3751 = call float @dx.op.dot3.f32(i32 55, float %3748, float %3749, float %3750, float %3748, float %3749, float %3750)  ; Dot3(ax,ay,az,bx,by,bz)
  %3752 = call float @dx.op.unary.f32(i32 25, float %3751)  ; Rsqrt(value)
  %3753 = fmul fast float %3748, %3752
  %3754 = fmul fast float %3749, %3752
  %3755 = fmul fast float %3750, %3752
  %3756 = and i32 %64, 1
  %3757 = icmp eq i32 %3756, 0
  br i1 %3757, label %3758, label %4266

; <label>:3758                                    ; preds = %3696
  %3759 = call float @dx.op.unary.f32(i32 83, float %171)  ; DerivCoarseX(value)
  %3760 = call float @dx.op.unary.f32(i32 83, float %172)  ; DerivCoarseX(value)
  %3761 = call float @dx.op.unary.f32(i32 83, float %173)  ; DerivCoarseX(value)
  %3762 = call float @dx.op.unary.f32(i32 84, float %171)  ; DerivCoarseY(value)
  %3763 = call float @dx.op.unary.f32(i32 84, float %172)  ; DerivCoarseY(value)
  %3764 = call float @dx.op.unary.f32(i32 84, float %173)  ; DerivCoarseY(value)
  %3765 = fadd fast float %3759, %171
  %3766 = fadd fast float %3760, %172
  %3767 = fadd fast float %3761, %173
  %3768 = fadd fast float %3762, %171
  %3769 = fadd fast float %3763, %172
  %3770 = fadd fast float %3764, %173
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.CBufRet.f32 %3771, 1
  %3774 = extractvalue %dx.types.CBufRet.f32 %3771, 2
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 2
  %3777 = extractvalue %dx.types.CBufRet.f32 %3775, 3
  %3778 = fmul fast float %3772, %112
  %3779 = fmul fast float %3778, %3776
  %3780 = fmul fast float %3773, %113
  %3781 = fmul fast float %3780, %3777
  %3782 = fptoui float %3779 to i32
  %3783 = fptoui float %3781 to i32
  %3784 = fadd fast float %3772, -1.000000e+00
  %3785 = fadd fast float %3773, -1.000000e+00
  %3786 = fptoui float %3784 to i32
  %3787 = fptoui float %3785 to i32
  %3788 = call i32 @dx.op.binary.i32(i32 40, i32 %3782, i32 %3786)  ; UMin(a,b)
  %3789 = call i32 @dx.op.binary.i32(i32 40, i32 %3783, i32 %3787)  ; UMin(a,b)
  %3790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3791 = extractvalue %dx.types.CBufRet.f32 %3790, 2
  %3792 = extractvalue %dx.types.CBufRet.f32 %3790, 3
  %3793 = fmul fast float %3791, %100
  %3794 = fsub fast float %3793, %3792
  %3795 = fadd fast float %3774, -1.000000e+00
  %3796 = call float @dx.op.binary.f32(i32 36, float %3794, float %3795)  ; FMin(a,b)
  %3797 = fptoui float %3796 to i32
  %3798 = fptoui float %3772 to i32
  %3799 = fptoui float %3773 to i32
  %3800 = mul i32 %3797, %3799
  %3801 = add i32 %3800, %3789
  %3802 = mul i32 %3801, %3798
  %3803 = add i32 %3802, %3788
  %3804 = shl i32 %3803, 2
  %3805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.i32 %3805, 0
  %3807 = and i32 %3806, 1023
  %3808 = lshr i32 %3806, 10
  %3809 = icmp eq i32 %3807, 0
  br i1 %3809, label %4235, label %3810

; <label>:3810                                    ; preds = %3758
  %3811 = and i32 %3806, 1023
  br label %3812

; <label>:3812                                    ; preds = %3938, %3810
  %3813 = phi i32 [ %3888, %3938 ], [ 0, %3810 ]
  %3814 = phi float [ %3939, %3938 ], [ 0.000000e+00, %3810 ]
  %3815 = phi float [ %3940, %3938 ], [ %3727, %3810 ]
  %3816 = phi float [ %3941, %3938 ], [ %3708, %3810 ]
  %3817 = phi float [ %3942, %3938 ], [ 0.000000e+00, %3810 ]
  %3818 = phi float [ %3943, %3938 ], [ 0.000000e+00, %3810 ]
  %3819 = phi float [ %3944, %3938 ], [ %3702, %3810 ]
  %3820 = phi float [ %3945, %3938 ], [ %3703, %3810 ]
  %3821 = phi float [ %3946, %3938 ], [ %3704, %3810 ]
  %3822 = phi float [ %3947, %3938 ], [ %3753, %3810 ]
  %3823 = phi float [ %3948, %3938 ], [ %3754, %3810 ]
  %3824 = phi float [ %3949, %3938 ], [ %3755, %3810 ]
  %3825 = phi float [ %3950, %3938 ], [ %3707, %3810 ]
  %3826 = phi float [ %3951, %3938 ], [ %3706, %3810 ]
  %3827 = phi float [ %3952, %3938 ], [ 0.000000e+00, %3810 ]
  %3828 = phi float [ %3953, %3938 ], [ %3705, %3810 ]
  %3829 = phi float [ %3954, %3938 ], [ %3699, %3810 ]
  %3830 = phi float [ %3955, %3938 ], [ %3700, %3810 ]
  %3831 = phi float [ %3956, %3938 ], [ %3701, %3810 ]
  %3832 = add nuw nsw i32 %3813, %3808
  %3833 = shl i32 %3832, 2
  %3834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3835 = extractvalue %dx.types.ResRet.i32 %3834, 0
  %3836 = shl i32 %3835, 8
  %3837 = or i32 %3836, 48
  %3838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3840 = extractvalue %dx.types.ResRet.f32 %3838, 1
  %3841 = extractvalue %dx.types.ResRet.f32 %3838, 2
  %3842 = extractvalue %dx.types.ResRet.f32 %3838, 3
  %3843 = or i32 %3836, 64
  %3844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3843, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.i32 %3844, 0
  %3846 = extractvalue %dx.types.ResRet.i32 %3844, 1
  %3847 = or i32 %3836, 80
  %3848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 2
  %3850 = extractvalue %dx.types.ResRet.f32 %3848, 3
  %3851 = or i32 %3836, 96
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.ResRet.f32 %3852, 2
  %3856 = extractvalue %dx.types.ResRet.f32 %3852, 3
  %3857 = or i32 %3836, 112
  %3858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 2
  %3860 = or i32 %3836, 128
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3864 = extractvalue %dx.types.ResRet.f32 %3861, 2
  %3865 = extractvalue %dx.types.ResRet.f32 %3861, 3
  %3866 = or i32 %3836, 144
  %3867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3869 = extractvalue %dx.types.ResRet.f32 %3867, 1
  %3870 = extractvalue %dx.types.ResRet.f32 %3867, 2
  %3871 = extractvalue %dx.types.ResRet.f32 %3867, 3
  %3872 = or i32 %3836, 160
  %3873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.ResRet.f32 %3873, 2
  %3877 = extractvalue %dx.types.ResRet.f32 %3873, 3
  %3878 = or i32 %3836, 192
  %3879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.i32 %3879, 0
  %3881 = or i32 %3836, 208
  %3882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.f32 %3882, 0
  %3884 = or i32 %3836, 248
  %3885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.ResRet.f32 %3885, 1
  %3888 = add nuw nsw i32 %3813, 1
  %3889 = bitcast float %3842 to i32
  %3890 = and i32 %3889, 512
  %3891 = icmp eq i32 %3890, 0
  %3892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3893 = extractvalue %dx.types.ResRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.ResRet.f32 %3892, 1
  %3895 = extractvalue %dx.types.ResRet.f32 %3892, 2
  %3896 = extractvalue %dx.types.ResRet.f32 %3892, 3
  %3897 = call float @dx.op.dot4.f32(i32 56, float %3893, float %3894, float %3895, float %3896, float %171, float %172, float %173, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3898 = or i32 %3836, 16
  %3899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.f32 %3899, 0
  %3901 = extractvalue %dx.types.ResRet.f32 %3899, 1
  %3902 = extractvalue %dx.types.ResRet.f32 %3899, 2
  %3903 = extractvalue %dx.types.ResRet.f32 %3899, 3
  %3904 = call float @dx.op.dot4.f32(i32 56, float %3900, float %3901, float %3902, float %3903, float %171, float %172, float %173, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3905 = or i32 %3836, 32
  %3906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.ResRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.ResRet.f32 %3906, 2
  %3910 = extractvalue %dx.types.ResRet.f32 %3906, 3
  %3911 = call float @dx.op.dot4.f32(i32 56, float %3907, float %3908, float %3909, float %3910, float %171, float %172, float %173, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3912 = call float @dx.op.unary.f32(i32 27, float %3897)  ; Round_ni(value)
  %3913 = call float @dx.op.unary.f32(i32 6, float %3912)  ; FAbs(value)
  %3914 = call float @dx.op.unary.f32(i32 27, float %3904)  ; Round_ni(value)
  %3915 = call float @dx.op.unary.f32(i32 6, float %3914)  ; FAbs(value)
  %3916 = call float @dx.op.unary.f32(i32 6, float %3911)  ; FAbs(value)
  %3917 = call float @dx.op.unary.f32(i32 27, float %3916)  ; Round_ni(value)
  %3918 = fadd fast float %3915, %3913
  %3919 = fadd fast float %3918, %3917
  %3920 = fcmp fast oeq float %3919, 0.000000e+00
  %3921 = call float @dx.op.dot4.f32(i32 56, float %3893, float %3894, float %3895, float %3896, float %3765, float %3766, float %3767, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3922 = call float @dx.op.dot4.f32(i32 56, float %3900, float %3901, float %3902, float %3903, float %3765, float %3766, float %3767, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3923 = call float @dx.op.dot4.f32(i32 56, float %3893, float %3894, float %3895, float %3896, float %3768, float %3769, float %3770, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3924 = call float @dx.op.dot4.f32(i32 56, float %3900, float %3901, float %3902, float %3903, float %3768, float %3769, float %3770, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3925 = fsub fast float %3921, %3897
  %3926 = fsub fast float %3923, %3897
  %3927 = fsub fast float %3922, %3904
  %3928 = fsub fast float %3924, %3904
  %3929 = call float @dx.op.dot3.f32(i32 55, float %3839, float %3840, float %3841, float %121, float %123, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 2
  %3932 = fadd fast float %3931, %3929
  %3933 = call float @dx.op.unary.f32(i32 7, float %3932)  ; Saturate(value)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3935 = fcmp fast ogt float %3933, %3934
  %3936 = and i1 %3920, %3935
  %3937 = and i1 %3891, %3936
  br i1 %3937, label %3958, label %3938

; <label>:3938                                    ; preds = %4221, %4039, %3958, %3812
  %3939 = phi float [ %3814, %3958 ], [ %4042, %4039 ], [ %4042, %4221 ], [ %3814, %3812 ]
  %3940 = phi float [ %3815, %3958 ], [ %3815, %4039 ], [ %4196, %4221 ], [ %3815, %3812 ]
  %3941 = phi float [ %3816, %3958 ], [ %3816, %4039 ], [ %4194, %4221 ], [ %3816, %3812 ]
  %3942 = phi float [ %3817, %3958 ], [ %3817, %4039 ], [ %4166, %4221 ], [ %3817, %3812 ]
  %3943 = phi float [ %3818, %3958 ], [ %3818, %4039 ], [ %4164, %4221 ], [ %3818, %3812 ]
  %3944 = phi float [ %3819, %3958 ], [ %3819, %4039 ], [ %4231, %4221 ], [ %3819, %3812 ]
  %3945 = phi float [ %3820, %3958 ], [ %3820, %4039 ], [ %4232, %4221 ], [ %3820, %3812 ]
  %3946 = phi float [ %3821, %3958 ], [ %3821, %4039 ], [ %4233, %4221 ], [ %3821, %3812 ]
  %3947 = phi float [ %3822, %3958 ], [ %3822, %4039 ], [ %4145, %4221 ], [ %3822, %3812 ]
  %3948 = phi float [ %3823, %3958 ], [ %3823, %4039 ], [ %4146, %4221 ], [ %3823, %3812 ]
  %3949 = phi float [ %3824, %3958 ], [ %3824, %4039 ], [ %4147, %4221 ], [ %3824, %3812 ]
  %3950 = phi float [ %3825, %3958 ], [ %3825, %4039 ], [ %4174, %4221 ], [ %3825, %3812 ]
  %3951 = phi float [ %3826, %3958 ], [ %3826, %4039 ], [ %4171, %4221 ], [ %3826, %3812 ]
  %3952 = phi float [ %3827, %3958 ], [ %3827, %4039 ], [ %4168, %4221 ], [ %3827, %3812 ]
  %3953 = phi float [ %3828, %3958 ], [ %3828, %4039 ], [ %4162, %4221 ], [ %3828, %3812 ]
  %3954 = phi float [ %3829, %3958 ], [ %3829, %4039 ], [ %4157, %4221 ], [ %3829, %3812 ]
  %3955 = phi float [ %3830, %3958 ], [ %3830, %4039 ], [ %4158, %4221 ], [ %3830, %3812 ]
  %3956 = phi float [ %3831, %3958 ], [ %3831, %4039 ], [ %4159, %4221 ], [ %3831, %3812 ]
  %3957 = icmp eq i32 %3888, %3811
  br i1 %3957, label %4234, label %3812

; <label>:3958                                    ; preds = %3812
  %3959 = extractvalue %dx.types.ResRet.f32 %3858, 3
  %3960 = extractvalue %dx.types.ResRet.f32 %3858, 1
  %3961 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3962 = extractvalue %dx.types.ResRet.f32 %3848, 1
  %3963 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3964 = extractvalue %dx.types.ResRet.i32 %3844, 3
  %3965 = extractvalue %dx.types.ResRet.i32 %3844, 2
  %3966 = add i32 %3964, 0
  %3967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3966, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3969 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3967, %dx.types.Handle %3968, float %3897, float %3904, float undef, float undef, i32 0, i32 0, i32 undef, float %3925, float %3927, float undef, float %3926, float %3928, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = fmul fast float %3970, %3963
  %3972 = fadd fast float %3971, %3962
  %3973 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3974 = fmul fast float %3897, %3853
  %3975 = call float @dx.op.tertiary.f32(i32 46, float %3854, float %3904, float %3974)  ; FMad(a,b,c)
  %3976 = fadd fast float %3975, %3961
  %3977 = fmul fast float %3897, %3855
  %3978 = call float @dx.op.tertiary.f32(i32 46, float %3856, float %3904, float %3977)  ; FMad(a,b,c)
  %3979 = fadd fast float %3978, %3960
  %3980 = fmul fast float %3925, %3853
  %3981 = call float @dx.op.tertiary.f32(i32 46, float %3854, float %3927, float %3980)  ; FMad(a,b,c)
  %3982 = fmul fast float %3925, %3855
  %3983 = call float @dx.op.tertiary.f32(i32 46, float %3856, float %3927, float %3982)  ; FMad(a,b,c)
  %3984 = fmul fast float %3926, %3853
  %3985 = call float @dx.op.tertiary.f32(i32 46, float %3854, float %3928, float %3984)  ; FMad(a,b,c)
  %3986 = fmul fast float %3926, %3855
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %3856, float %3928, float %3986)  ; FMad(a,b,c)
  %3988 = add i32 %3965, 0
  %3989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3988, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3990 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3989, %dx.types.Handle %3968, float %3976, float %3979, float undef, float undef, i32 0, i32 0, i32 undef, float %3981, float %3983, float undef, float %3985, float %3987, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = and i32 %3889, 1024
  %3993 = icmp ne i32 %3992, 0
  %3994 = fcmp fast ogt float %3991, 0x3FE0101020000000
  %3995 = uitofp i1 %3994 to float
  %3996 = select i1 %3993, float %3995, float %3991
  %3997 = and i32 %3889, 8192
  %3998 = icmp ne i32 %3997, 0
  %3999 = select i1 %3998, float %3959, float 1.000000e+00
  %4000 = fmul fast float %3897, 2.000000e+00
  %4001 = fadd fast float %4000, -1.000000e+00
  %4002 = call float @dx.op.unary.f32(i32 6, float %4001)  ; FAbs(value)
  %4003 = fmul fast float %4002, %3886
  %4004 = fsub fast float %4003, %3886
  %4005 = call float @dx.op.unary.f32(i32 7, float %4004)  ; Saturate(value)
  %4006 = fmul fast float %3904, 2.000000e+00
  %4007 = fadd fast float %4006, -1.000000e+00
  %4008 = call float @dx.op.unary.f32(i32 6, float %4007)  ; FAbs(value)
  %4009 = fmul fast float %4008, %3887
  %4010 = fsub fast float %4009, %3887
  %4011 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4012 = fmul fast float %3916, %3849
  %4013 = fsub fast float %4012, %3849
  %4014 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4015 = fmul fast float %3973, %3999
  %4016 = fmul fast float %4015, %3970
  %4017 = fmul fast float %4016, %4005
  %4018 = fmul fast float %4017, %3996
  %4019 = fmul fast float %4018, %4011
  %4020 = fmul fast float %4019, %4014
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 1
  %4023 = extractvalue %dx.types.CBufRet.f32 %4021, 0
  %4024 = fsub fast float %3933, %4023
  %4025 = fmul fast float %4024, %4022
  %4026 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4027 = fmul fast float %4020, %3850
  %4028 = fadd fast float %4020, %3850
  %4029 = fmul fast float %4028, %3859
  %4030 = fsub fast float %4029, %3859
  %4031 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4032 = and i32 %3889, 128
  %4033 = icmp ne i32 %4032, 0
  %4034 = select i1 %4033, float %4031, float %4027
  %4035 = fmul fast float %4034, %4026
  %4036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4037 = extractvalue %dx.types.CBufRet.f32 %4036, 0
  %4038 = fcmp fast ugt float %4035, %4037
  br i1 %4038, label %4039, label %3938

; <label>:4039                                    ; preds = %3958
  %4040 = select i1 %3998, float %4035, float 0.000000e+00
  %4041 = fadd fast float %4040, %3814
  %4042 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  br i1 %3998, label %3938, label %4043

; <label>:4043                                    ; preds = %4039
  %4044 = and i32 %3889, 4
  %4045 = and i32 %3889, 8
  %4046 = add i32 %3845, 0
  %4047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4046, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4049 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4047, %dx.types.Handle %4048, float %3976, float %3979, float undef, float undef, i32 0, i32 0, i32 undef, float %3981, float %3983, float undef, float %3985, float %3987, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4050 = extractvalue %dx.types.ResRet.f32 %4049, 0
  %4051 = extractvalue %dx.types.ResRet.f32 %4049, 1
  %4052 = extractvalue %dx.types.ResRet.f32 %4049, 2
  %4053 = extractvalue %dx.types.ResRet.f32 %4049, 3
  %4054 = bitcast float %3871 to i32
  %4055 = and i32 %4054, 255
  %4056 = uitofp i32 %4055 to float
  %4057 = lshr i32 %4054, 8
  %4058 = and i32 %4057, 255
  %4059 = uitofp i32 %4058 to float
  %4060 = fmul fast float %4053, %4056
  %4061 = fadd fast float %4060, %4059
  %4062 = fmul fast float %4061, 0x3F70101000000000
  %4063 = add i32 %3846, 0
  %4064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4063, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4065 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4064, %dx.types.Handle %4048, float %3976, float %3979, float undef, float undef, i32 0, i32 0, i32 undef, float %3981, float %3983, float undef, float %3985, float %3987, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4066 = extractvalue %dx.types.ResRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.ResRet.f32 %4065, 1
  %4068 = extractvalue %dx.types.ResRet.f32 %4065, 2
  %4069 = extractvalue %dx.types.ResRet.f32 %4065, 3
  %4070 = bitcast float %3865 to i32
  %4071 = and i32 %4070, 255
  %4072 = uitofp i32 %4071 to float
  %4073 = lshr i32 %4070, 8
  %4074 = and i32 %4073, 255
  %4075 = uitofp i32 %4074 to float
  %4076 = lshr i32 %4070, 16
  %4077 = and i32 %4076, 255
  %4078 = uitofp i32 %4077 to float
  %4079 = fmul fast float %4078, 0x3F70101000000000
  %4080 = fmul fast float %4066, %4072
  %4081 = fadd fast float %4080, %4075
  %4082 = fmul fast float %4081, 0x3F70101000000000
  %4083 = fadd fast float %4067, -5.000000e-01
  %4084 = fadd fast float %4069, -5.000000e-01
  %4085 = fmul fast float %4083, %4079
  %4086 = fmul fast float %4084, %4079
  %4087 = fadd fast float %4085, 5.000000e-01
  %4088 = fadd fast float %4086, 5.000000e-01
  %4089 = fmul fast float %4050, %3874
  %4090 = fmul fast float %4051, %3875
  %4091 = fmul fast float %4052, %3876
  %4092 = fmul fast float %4087, 2.000000e+00
  %4093 = fadd fast float %4092, -1.000000e+00
  %4094 = fmul fast float %4088, 2.000000e+00
  %4095 = fadd fast float %4094, -1.000000e+00
  %4096 = fadd fast float %4093, %4095
  %4097 = fmul fast float %4096, 5.000000e-01
  %4098 = fsub fast float %4093, %4095
  %4099 = fmul fast float %4098, 5.000000e-01
  %4100 = call float @dx.op.unary.f32(i32 6, float %4097)  ; FAbs(value)
  %4101 = fsub fast float 1.000000e+00, %4100
  %4102 = call float @dx.op.unary.f32(i32 6, float %4099)  ; FAbs(value)
  %4103 = fsub fast float %4101, %4102
  %4104 = call float @dx.op.dot3.f32(i32 55, float %4097, float %4099, float %4103, float %4097, float %4099, float %4103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4105 = call float @dx.op.unary.f32(i32 25, float %4104)  ; Rsqrt(value)
  %4106 = fmul fast float %4097, %4105
  %4107 = fmul fast float %4099, %4105
  %4108 = fmul fast float %4105, %4103
  %4109 = fmul fast float %4108, %3839
  %4110 = fmul fast float %4108, %3840
  %4111 = fmul fast float %4108, %3841
  %4112 = fmul fast float %4106, %3862
  %4113 = fmul fast float %4106, %3863
  %4114 = fmul fast float %4106, %3864
  %4115 = fadd fast float %4112, %4109
  %4116 = fadd fast float %4113, %4110
  %4117 = fadd fast float %4114, %4111
  %4118 = fmul fast float %4107, %3868
  %4119 = fmul fast float %4107, %3869
  %4120 = fmul fast float %4107, %3870
  %4121 = fadd fast float %4115, %4118
  %4122 = fadd fast float %4116, %4119
  %4123 = fadd fast float %4117, %4120
  %4124 = call float @dx.op.dot3.f32(i32 55, float %4121, float %4122, float %4123, float %4121, float %4122, float %4123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4125 = call float @dx.op.unary.f32(i32 25, float %4124)  ; Rsqrt(value)
  %4126 = fmul fast float %4121, %4125
  %4127 = fmul fast float %4122, %4125
  %4128 = fmul fast float %4123, %4125
  %4129 = icmp ne i32 %4045, 0
  %4130 = select i1 %4129, float 1.000000e+00, float 0.000000e+00
  %4131 = fmul fast float %4035, %4130
  %4132 = and i32 %3889, 1
  %4133 = icmp eq i32 %4132, 0
  br i1 %4133, label %4134, label %4138

; <label>:4134                                    ; preds = %4043
  %4135 = fsub fast float %4126, %3822
  %4136 = fsub fast float %4127, %3823
  %4137 = fsub fast float %4128, %3824
  br label %4138

; <label>:4138                                    ; preds = %4134, %4043
  %4139 = phi float [ %4135, %4134 ], [ %4126, %4043 ]
  %4140 = phi float [ %4136, %4134 ], [ %4127, %4043 ]
  %4141 = phi float [ %4137, %4134 ], [ %4128, %4043 ]
  %4142 = fmul float %4141, %4131
  %4143 = fmul float %4140, %4131
  %4144 = fmul float %4139, %4131
  %4145 = fadd fast float %4144, %3822
  %4146 = fadd fast float %4143, %3823
  %4147 = fadd fast float %4142, %3824
  %4148 = icmp ne i32 %4044, 0
  %4149 = select i1 %4148, float 1.000000e+00, float 0.000000e+00
  %4150 = fmul fast float %4035, %4149
  %4151 = fsub fast float %4089, %3829
  %4152 = fsub fast float %4090, %3830
  %4153 = fsub fast float %4091, %3831
  %4154 = fmul fast float %4151, %4150
  %4155 = fmul fast float %4152, %4150
  %4156 = fmul fast float %4153, %4150
  %4157 = fadd fast float %4154, %3829
  %4158 = fadd fast float %4155, %3830
  %4159 = fadd fast float %4156, %3831
  %4160 = fsub fast float %4062, %3828
  %4161 = fmul fast float %4160, %4150
  %4162 = fadd fast float %4161, %3828
  %4163 = fmul fast float %4150, %3818
  %4164 = fsub fast float %3818, %4163
  %4165 = fmul fast float %4150, %3817
  %4166 = fsub fast float %3817, %4165
  %4167 = fadd fast float %4035, %3827
  %4168 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4169 = fsub fast float %4082, %3826
  %4170 = fmul fast float %4169, %4131
  %4171 = fadd fast float %4170, %3826
  %4172 = fsub fast float %4068, %3825
  %4173 = fmul fast float %4172, %4131
  %4174 = fadd fast float %4173, %3825
  %4175 = call float @dx.op.dot3.f32(i32 55, float %4089, float %4090, float %4091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 0
  %4178 = extractvalue %dx.types.CBufRet.f32 %4176, 1
  %4179 = fmul fast float %4178, %4175
  %4180 = fadd fast float %4179, %4177
  %4181 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4182 = bitcast float %3877 to i32
  %4183 = and i32 %4182, 65535
  %4184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4183)  ; LegacyF16ToF32(value)
  %4185 = lshr i32 %4182, 16
  %4186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4185)  ; LegacyF16ToF32(value)
  %4187 = fcmp fast oge float %4184, 0.000000e+00
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 0
  %4190 = select i1 %4187, float %4184, float %4189
  %4191 = fadd fast float %4190, %4186
  %4192 = fsub fast float %4181, %3816
  %4193 = fmul fast float %4192, %4035
  %4194 = fadd fast float %4193, %3816
  %4195 = fmul fast float %4191, %4035
  %4196 = call float @dx.op.binary.f32(i32 35, float %3815, float %4195)  ; FMax(a,b)
  %4197 = and i32 %3889, 16
  %4198 = icmp eq i32 %4197, 0
  br i1 %4198, label %4221, label %4199

; <label>:4199                                    ; preds = %4138
  %4200 = bitcast float %3883 to i32
  %4201 = add i32 %3880, 0
  %4202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4201, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4203 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4202, %dx.types.Handle %4048, float %3976, float %3979, float undef, float undef, i32 0, i32 0, i32 undef, float %3981, float %3983, float undef, float %3985, float %3987, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.ResRet.f32 %4203, 1
  %4206 = extractvalue %dx.types.ResRet.f32 %4203, 2
  %4207 = and i32 %4200, 65535
  %4208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4207)  ; LegacyF16ToF32(value)
  %4209 = fmul fast float %4204, %3874
  %4210 = fmul fast float %4205, %3875
  %4211 = fmul fast float %4206, %3876
  %4212 = and i32 %3889, 16384
  %4213 = icmp ne i32 %4212, 0
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 0
  %4216 = select i1 %4213, float %4215, float 1.000000e+00
  %4217 = fmul fast float %4216, %4208
  %4218 = fmul fast float %4209, %4217
  %4219 = fmul fast float %4210, %4217
  %4220 = fmul fast float %4211, %4217
  br label %4221

; <label>:4221                                    ; preds = %4199, %4138
  %4222 = phi float [ %4218, %4199 ], [ 0.000000e+00, %4138 ]
  %4223 = phi float [ %4219, %4199 ], [ 0.000000e+00, %4138 ]
  %4224 = phi float [ %4220, %4199 ], [ 0.000000e+00, %4138 ]
  %4225 = fsub fast float %4222, %3819
  %4226 = fsub fast float %4223, %3820
  %4227 = fsub fast float %4224, %3821
  %4228 = fmul fast float %4225, %4035
  %4229 = fmul fast float %4226, %4035
  %4230 = fmul fast float %4227, %4035
  %4231 = fadd fast float %4228, %3819
  %4232 = fadd fast float %4229, %3820
  %4233 = fadd fast float %4230, %3821
  br label %3938

; <label>:4234                                    ; preds = %3938
  br label %4235

; <label>:4235                                    ; preds = %4234, %3758
  %4236 = phi float [ 0.000000e+00, %3758 ], [ %3939, %4234 ]
  %4237 = phi float [ %3727, %3758 ], [ %3940, %4234 ]
  %4238 = phi float [ %3708, %3758 ], [ %3941, %4234 ]
  %4239 = phi float [ 0.000000e+00, %3758 ], [ %3942, %4234 ]
  %4240 = phi float [ 0.000000e+00, %3758 ], [ %3943, %4234 ]
  %4241 = phi float [ %3702, %3758 ], [ %3944, %4234 ]
  %4242 = phi float [ %3703, %3758 ], [ %3945, %4234 ]
  %4243 = phi float [ %3704, %3758 ], [ %3946, %4234 ]
  %4244 = phi float [ %3753, %3758 ], [ %3947, %4234 ]
  %4245 = phi float [ %3754, %3758 ], [ %3948, %4234 ]
  %4246 = phi float [ %3755, %3758 ], [ %3949, %4234 ]
  %4247 = phi float [ %3707, %3758 ], [ %3950, %4234 ]
  %4248 = phi float [ %3706, %3758 ], [ %3951, %4234 ]
  %4249 = phi float [ 0.000000e+00, %3758 ], [ %3952, %4234 ]
  %4250 = phi float [ %3705, %3758 ], [ %3953, %4234 ]
  %4251 = phi float [ %3699, %3758 ], [ %3954, %4234 ]
  %4252 = phi float [ %3700, %3758 ], [ %3955, %4234 ]
  %4253 = phi float [ %3701, %3758 ], [ %3956, %4234 ]
  %4254 = call float @dx.op.dot3.f32(i32 55, float %4244, float %4245, float %4246, float %4244, float %4245, float %4246)  ; Dot3(ax,ay,az,bx,by,bz)
  %4255 = call float @dx.op.unary.f32(i32 25, float %4254)  ; Rsqrt(value)
  %4256 = fmul fast float %4255, %4244
  %4257 = fmul fast float %4255, %4245
  %4258 = fmul fast float %4255, %4246
  %4259 = fadd fast float %4249, %1143
  %4260 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4261 = call float @dx.op.dot3.f32(i32 55, float %4256, float %4257, float %4258, float %4256, float %4257, float %4258)  ; Dot3(ax,ay,az,bx,by,bz)
  %4262 = call float @dx.op.unary.f32(i32 25, float %4261)  ; Rsqrt(value)
  %4263 = fmul fast float %4262, %4256
  %4264 = fmul fast float %4262, %4257
  %4265 = fmul fast float %4262, %4258
  br label %4266

; <label>:4266                                    ; preds = %4235, %3696
  %4267 = phi float [ %4263, %4235 ], [ %3753, %3696 ]
  %4268 = phi float [ %4264, %4235 ], [ %3754, %3696 ]
  %4269 = phi float [ %4265, %4235 ], [ %3755, %3696 ]
  %4270 = phi float [ %4251, %4235 ], [ %3699, %3696 ]
  %4271 = phi float [ %4252, %4235 ], [ %3700, %3696 ]
  %4272 = phi float [ %4253, %4235 ], [ %3701, %3696 ]
  %4273 = phi float [ %4241, %4235 ], [ %3702, %3696 ]
  %4274 = phi float [ %4242, %4235 ], [ %3703, %3696 ]
  %4275 = phi float [ %4243, %4235 ], [ %3704, %3696 ]
  %4276 = phi float [ %4250, %4235 ], [ %3705, %3696 ]
  %4277 = phi float [ %4260, %4235 ], [ %1143, %3696 ]
  %4278 = phi float [ %4248, %4235 ], [ %3706, %3696 ]
  %4279 = phi float [ %4247, %4235 ], [ %3707, %3696 ]
  %4280 = phi float [ %4240, %4235 ], [ 0.000000e+00, %3696 ]
  %4281 = phi float [ %4239, %4235 ], [ 0.000000e+00, %3696 ]
  %4282 = phi float [ %4236, %4235 ], [ 0.000000e+00, %3696 ]
  %4283 = phi float [ %4237, %4235 ], [ %3727, %3696 ]
  %4284 = phi float [ %4238, %4235 ], [ %3708, %3696 ]
  %4285 = fadd fast float %4276, 0xBFB99999A0000000
  %4286 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4287 = fmul fast float %4286, 0x3FF1C71C80000000
  %4288 = call float @dx.op.binary.f32(i32 36, float %4276, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4289 = fsub fast float 1.000000e+00, %4287
  %4290 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4291 = fmul fast float %4290, %4270
  %4292 = fmul fast float %4290, %4271
  %4293 = fmul fast float %4290, %4272
  %4294 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4295 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4296 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4297 = fmul fast float %4287, %4270
  %4298 = fmul fast float %4287, %4271
  %4299 = fmul fast float %4287, %4272
  %4300 = fadd fast float %4297, %4288
  %4301 = fadd fast float %4298, %4288
  %4302 = fadd fast float %4299, %4288
  %4303 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4304 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4305 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4306 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.i32 %4307, 3
  %4309 = and i32 %4308, 8
  %4310 = icmp ne i32 %4309, 0
  %4311 = call float @dx.op.binary.f32(i32 35, float %4294, float %4270)  ; FMax(a,b)
  %4312 = call float @dx.op.binary.f32(i32 35, float %4295, float %4270)  ; FMax(a,b)
  %4313 = call float @dx.op.binary.f32(i32 35, float %4296, float %4270)  ; FMax(a,b)
  %4314 = call float @dx.op.dot3.f32(i32 55, float %4294, float %4295, float %4296, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4315 = select i1 %233, float %4270, float %4294
  %4316 = select i1 %233, float %4314, float %4295
  %4317 = select i1 %233, float 1.000000e+00, float %4296
  %4318 = select i1 %4310, float %4311, float %4315
  %4319 = select i1 %4310, float %4312, float %4316
  %4320 = select i1 %4310, float %4313, float %4317
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 0
  %4323 = extractvalue %dx.types.CBufRet.f32 %4321, 1
  %4324 = extractvalue %dx.types.CBufRet.f32 %4321, 2
  %4325 = fadd fast float %4322, %171
  %4326 = fadd fast float %4323, %172
  %4327 = fadd fast float %4324, %173
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 0
  %4330 = extractvalue %dx.types.CBufRet.f32 %4328, 1
  %4331 = fsub fast float %4325, %4329
  %4332 = fsub fast float %4326, %4330
  %4333 = fmul fast float %4331, %4331
  %4334 = fmul fast float %4332, %4332
  %4335 = fadd fast float %4333, %4334
  %4336 = call float @dx.op.unary.f32(i32 24, float %4335)  ; Sqrt(value)
  %4337 = extractvalue %dx.types.CBufRet.f32 %4328, 2
  %4338 = fcmp fast olt float %4336, %4337
  br i1 %4338, label %4339, label %4406

; <label>:4339                                    ; preds = %4266
  %4340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4340, 0
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 0
  %4344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.f32 %4344, 0
  %4346 = extractvalue %dx.types.CBufRet.f32 %4340, 1
  %4347 = extractvalue %dx.types.CBufRet.f32 %4342, 1
  %4348 = extractvalue %dx.types.CBufRet.f32 %4344, 1
  %4349 = extractvalue %dx.types.CBufRet.f32 %4340, 3
  %4350 = extractvalue %dx.types.CBufRet.f32 %4342, 3
  %4351 = extractvalue %dx.types.CBufRet.f32 %4344, 3
  %4352 = fadd fast float %4349, %4325
  %4353 = fadd fast float %4350, %4326
  %4354 = fadd fast float %4351, %4327
  %4355 = fmul fast float %4352, %4341
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4353, float %4343, float %4355)  ; FMad(a,b,c)
  %4357 = call float @dx.op.tertiary.f32(i32 46, float %4354, float %4345, float %4356)  ; FMad(a,b,c)
  %4358 = fmul fast float %4352, %4346
  %4359 = call float @dx.op.tertiary.f32(i32 46, float %4353, float %4347, float %4358)  ; FMad(a,b,c)
  %4360 = call float @dx.op.tertiary.f32(i32 46, float %4354, float %4348, float %4359)  ; FMad(a,b,c)
  %4361 = fsub fast float %4357, %4349
  %4362 = fsub fast float %4360, %4350
  %4363 = fsub fast float %4361, %4329
  %4364 = fadd fast float %4363, %4337
  %4365 = fsub fast float %4362, %4330
  %4366 = fadd fast float %4365, %4337
  %4367 = extractvalue %dx.types.CBufRet.f32 %4328, 3
  %4368 = fmul fast float %4364, %4367
  %4369 = fmul fast float %4366, %4367
  %4370 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4371 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4372 = fsub fast float 1.000000e+00, %4370
  %4373 = fsub fast float 1.000000e+00, %4371
  %4374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4372, float %4373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4375 = extractvalue %dx.types.ResRet.f32 %4374, 0
  %4376 = fcmp fast ugt float %4375, 0.000000e+00
  br i1 %4376, label %4377, label %4680

; <label>:4377                                    ; preds = %4339
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 2
  %4380 = fmul fast float %4379, %4375
  %4381 = extractvalue %dx.types.CBufRet.f32 %4378, 3
  %4382 = fadd fast float %4381, %4380
  %4383 = extractvalue %dx.types.CBufRet.f32 %4344, 2
  %4384 = fadd fast float %4382, %4351
  %4385 = fmul fast float %4357, %4345
  %4386 = call float @dx.op.tertiary.f32(i32 46, float %4360, float %4348, float %4385)  ; FMad(a,b,c)
  %4387 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4383, float %4386)  ; FMad(a,b,c)
  %4388 = fsub fast float %4387, %4351
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 2
  %4391 = fsub fast float %4388, %4390
  %4392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4372, float %4373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4393 = extractvalue %dx.types.ResRet.f32 %4392, 0
  %4394 = extractvalue %dx.types.ResRet.f32 %4392, 1
  %4395 = extractvalue %dx.types.ResRet.f32 %4392, 2
  %4396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4372, float %4373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = extractvalue %dx.types.ResRet.f32 %4396, 1
  %4399 = extractvalue %dx.types.ResRet.f32 %4396, 2
  %4400 = fadd fast float %4397, %4393
  %4401 = fmul fast float %4400, 0x3F847AE140000000
  %4402 = fadd fast float %4398, %4394
  %4403 = fmul fast float %4402, 0x3F847AE140000000
  %4404 = fadd fast float %4399, %4395
  %4405 = fmul fast float %4404, 0x3F847AE140000000
  br label %4680

; <label>:4406                                    ; preds = %4266
  %4407 = and i32 %209, 1
  %4408 = icmp eq i32 %4407, 0
  br i1 %4408, label %4680, label %4409

; <label>:4409                                    ; preds = %4406
  %4410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.f32 %4410, 0
  %4412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.f32 %4412, 0
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 0
  %4416 = extractvalue %dx.types.CBufRet.f32 %4410, 1
  %4417 = extractvalue %dx.types.CBufRet.f32 %4412, 1
  %4418 = extractvalue %dx.types.CBufRet.f32 %4414, 1
  %4419 = extractvalue %dx.types.CBufRet.f32 %4410, 3
  %4420 = extractvalue %dx.types.CBufRet.f32 %4412, 3
  %4421 = extractvalue %dx.types.CBufRet.f32 %4414, 3
  %4422 = fadd fast float %4419, %4325
  %4423 = fadd fast float %4420, %4326
  %4424 = fadd fast float %4421, %4327
  %4425 = fmul fast float %4422, %4411
  %4426 = call float @dx.op.tertiary.f32(i32 46, float %4423, float %4413, float %4425)  ; FMad(a,b,c)
  %4427 = call float @dx.op.tertiary.f32(i32 46, float %4424, float %4415, float %4426)  ; FMad(a,b,c)
  %4428 = fmul fast float %4422, %4416
  %4429 = call float @dx.op.tertiary.f32(i32 46, float %4423, float %4417, float %4428)  ; FMad(a,b,c)
  %4430 = call float @dx.op.tertiary.f32(i32 46, float %4424, float %4418, float %4429)  ; FMad(a,b,c)
  %4431 = fsub fast float %4427, %4419
  %4432 = fsub fast float %4430, %4420
  %4433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4434 = extractvalue %dx.types.CBufRet.f32 %4433, 0
  %4435 = extractvalue %dx.types.CBufRet.f32 %4433, 1
  %4436 = extractvalue %dx.types.CBufRet.f32 %4433, 2
  %4437 = extractvalue %dx.types.CBufRet.f32 %4433, 3
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 3
  %4440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.i32 %4440, 0
  %4442 = extractvalue %dx.types.CBufRet.i32 %4440, 1
  %4443 = udiv i32 %4442, %4441
  %4444 = fsub fast float %4431, %4434
  %4445 = fsub fast float %4432, %4435
  %4446 = call float @dx.op.binary.f32(i32 35, float %4444, float 0.000000e+00)  ; FMax(a,b)
  %4447 = call float @dx.op.binary.f32(i32 35, float %4445, float 0.000000e+00)  ; FMax(a,b)
  %4448 = call float @dx.op.binary.f32(i32 36, float %4446, float %4436)  ; FMin(a,b)
  %4449 = call float @dx.op.binary.f32(i32 36, float %4447, float %4437)  ; FMin(a,b)
  %4450 = add i32 %4441, -1
  %4451 = add i32 %4443, -1
  %4452 = fmul fast float %4448, %4439
  %4453 = fmul fast float %4449, %4439
  %4454 = fptoui float %4452 to i32
  %4455 = fptoui float %4453 to i32
  %4456 = call i32 @dx.op.binary.i32(i32 40, i32 %4454, i32 %4450)  ; UMin(a,b)
  %4457 = call i32 @dx.op.binary.i32(i32 40, i32 %4455, i32 %4451)  ; UMin(a,b)
  %4458 = mul i32 %4457, %4441
  %4459 = add i32 %4458, %4456
  %4460 = shl i32 %4459, 2
  %4461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4460, i32 undef)  ; BufferLoad(srv,index,wot)
  %4462 = extractvalue %dx.types.ResRet.i32 %4461, 0
  %4463 = icmp eq i32 %4462, -1
  br i1 %4463, label %4680, label %4464

; <label>:4464                                    ; preds = %4409
  %4465 = mul i32 %4462, 148
  %4466 = add i32 %4465, 4
  %4467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4466, i32 undef)  ; BufferLoad(srv,index,wot)
  %4468 = extractvalue %dx.types.ResRet.f32 %4467, 0
  %4469 = add i32 %4465, 8
  %4470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4469, i32 undef)  ; BufferLoad(srv,index,wot)
  %4471 = extractvalue %dx.types.ResRet.f32 %4470, 0
  %4472 = add i32 %4465, 36
  %4473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4472, i32 undef)  ; BufferLoad(srv,index,wot)
  %4474 = extractvalue %dx.types.ResRet.f32 %4473, 0
  %4475 = add i32 %4465, 60
  %4476 = add i32 %4465, 92
  %4477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4478 = extractvalue %dx.types.ResRet.i32 %4477, 0
  %4479 = add i32 %4465, 116
  %4480 = fsub fast float %4431, %4468
  %4481 = fsub fast float %4432, %4471
  %4482 = fmul fast float %4439, %4480
  %4483 = fmul fast float %4439, %4481
  %4484 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4485 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4486 = fsub fast float 1.000000e+00, %4485
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 2
  %4489 = call float @dx.op.unary.f32(i32 83, float %4484)  ; DerivCoarseX(value)
  %4490 = call float @dx.op.unary.f32(i32 83, float %4486)  ; DerivCoarseX(value)
  %4491 = call float @dx.op.unary.f32(i32 84, float %4484)  ; DerivCoarseY(value)
  %4492 = call float @dx.op.unary.f32(i32 84, float %4486)  ; DerivCoarseY(value)
  %4493 = fmul fast float %4489, %4488
  %4494 = fmul fast float %4490, %4488
  %4495 = fmul fast float %4491, %4488
  %4496 = fmul fast float %4492, %4488
  %4497 = call float @dx.op.dot2.f32(i32 54, float %4495, float %4496, float %4495, float %4496)  ; Dot2(ax,ay,bx,by)
  %4498 = call float @dx.op.dot2.f32(i32 54, float %4493, float %4494, float %4493, float %4494)  ; Dot2(ax,ay,bx,by)
  %4499 = call float @dx.op.binary.f32(i32 35, float %4498, float %4497)  ; FMax(a,b)
  %4500 = call float @dx.op.unary.f32(i32 23, float %4499)  ; Log(value)
  %4501 = fmul fast float %4500, 5.000000e-01
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 1
  %4504 = fadd fast float %4503, %4501
  %4505 = call float @dx.op.binary.f32(i32 35, float %4504, float 0.000000e+00)  ; FMax(a,b)
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 3
  %4508 = fadd fast float %4507, %4505
  %4509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.f32 %4509, 3
  %4511 = fadd fast float %4508, %4510
  %4512 = add i32 %4478, 0
  %4513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4512, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4514 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4513, i32 0)  ; GetDimensions(handle,mipLevel)
  %4515 = extractvalue %dx.types.Dimensions %4514, 0
  %4516 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4515)  ; FirstbitLo(value)
  %4517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.i32 %4517, 1
  %4519 = sub nsw i32 %4518, %4516
  %4520 = sitofp i32 %4519 to float
  %4521 = fsub fast float %4511, %4520
  %4522 = call float @dx.op.binary.f32(i32 35, float %4521, float 0.000000e+00)  ; FMax(a,b)
  %4523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4513, %dx.types.Handle %52, float %4484, float %4486, float %4474, float undef, i32 0, i32 0, i32 undef, float %4522)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4524 = extractvalue %dx.types.ResRet.f32 %4523, 0
  %4525 = fcmp ule float %4524, 0x3FE0101020000000
  %4526 = extractvalue %dx.types.CBufRet.i32 %4517, 0
  %4527 = and i32 %4526, 128
  %4528 = icmp ne i32 %4527, 0
  %4529 = and i1 %4525, %4528
  br i1 %4529, label %4680, label %4530

; <label>:4530                                    ; preds = %4464
  %4531 = add i32 %4465, 20
  %4532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4531, i32 undef)  ; BufferLoad(srv,index,wot)
  %4533 = extractvalue %dx.types.ResRet.f32 %4532, 0
  %4534 = add i32 %4465, 24
  %4535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4534, i32 undef)  ; BufferLoad(srv,index,wot)
  %4536 = extractvalue %dx.types.ResRet.f32 %4535, 0
  %4537 = add i32 %4465, 40
  %4538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4537, i32 undef)  ; BufferLoad(srv,index,wot)
  %4539 = extractvalue %dx.types.ResRet.f32 %4538, 0
  %4540 = add i32 %4465, 96
  %4541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4540, i32 undef)  ; BufferLoad(srv,index,wot)
  %4542 = extractvalue %dx.types.ResRet.i32 %4541, 0
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 2
  %4545 = fmul fast float %4544, %4484
  %4546 = fmul fast float %4544, %4486
  %4547 = extractvalue %dx.types.CBufRet.f32 %4543, 3
  %4548 = fadd fast float %4545, %4547
  %4549 = fadd fast float %4546, %4547
  %4550 = add i32 %4542, 0
  %4551 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4550, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4552 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4551, i32 0)  ; GetDimensions(handle,mipLevel)
  %4553 = extractvalue %dx.types.Dimensions %4552, 0
  %4554 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4553)  ; FirstbitLo(value)
  %4555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.i32 %4555, 1
  %4557 = sub nsw i32 %4556, %4554
  %4558 = sitofp i32 %4557 to float
  %4559 = fsub fast float %4508, %4558
  %4560 = call float @dx.op.binary.f32(i32 35, float %4559, float 0.000000e+00)  ; FMax(a,b)
  %4561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4551, %dx.types.Handle %52, float %4548, float %4549, float %4539, float undef, i32 0, i32 0, i32 undef, float %4560)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4563 = fmul fast float %4562, %4533
  %4564 = fadd fast float %4563, %4536
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 0
  %4567 = extractvalue %dx.types.CBufRet.f32 %4565, 1
  %4568 = extractvalue %dx.types.CBufRet.f32 %4565, 2
  %4569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.f32 %4569, 3
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 3
  %4573 = extractvalue %dx.types.CBufRet.f32 %4565, 3
  %4574 = fadd fast float %4570, %4431
  %4575 = fadd fast float %4572, %4432
  %4576 = fadd fast float %4564, %4573
  %4577 = fmul fast float %4574, %4566
  %4578 = call float @dx.op.tertiary.f32(i32 46, float %4575, float %4567, float %4577)  ; FMad(a,b,c)
  %4579 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4568, float %4578)  ; FMad(a,b,c)
  %4580 = fsub fast float %4579, %4573
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 2
  %4583 = fsub fast float %4580, %4582
  %4584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.i32 %4584, 0
  %4586 = call i32 @dx.op.binary.i32(i32 40, i32 %4462, i32 %4585)  ; UMin(a,b)
  %4587 = mul i32 %4586, 36
  %4588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.i32 %4588, 0
  %4590 = add i32 %4587, 4
  %4591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.f32 %4591, 0
  %4593 = fmul fast float %4592, %4484
  %4594 = fmul fast float %4592, %4486
  %4595 = extractvalue %dx.types.CBufRet.f32 %4591, 1
  %4596 = fadd fast float %4593, %4595
  %4597 = fadd fast float %4594, %4595
  %4598 = icmp eq i32 %4589, 0
  br i1 %4598, label %4667, label %4599

; <label>:4599                                    ; preds = %4530
  br label %4600

; <label>:4600                                    ; preds = %4657, %4599
  %4601 = phi float [ %4658, %4657 ], [ 0.000000e+00, %4599 ]
  %4602 = phi float [ %4659, %4657 ], [ 0.000000e+00, %4599 ]
  %4603 = phi float [ %4660, %4657 ], [ 0.000000e+00, %4599 ]
  %4604 = phi float [ %4661, %4657 ], [ 0.000000e+00, %4599 ]
  %4605 = phi float [ %4662, %4657 ], [ 0.000000e+00, %4599 ]
  %4606 = phi float [ %4663, %4657 ], [ 0.000000e+00, %4599 ]
  %4607 = phi i32 [ %4664, %4657 ], [ 0, %4599 ]
  %4608 = shl i32 %4607, 2
  %4609 = add i32 %4475, %4608
  %4610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4609, i32 undef)  ; BufferLoad(srv,index,wot)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = add i32 %4479, %4608
  %4613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4612, i32 undef)  ; BufferLoad(srv,index,wot)
  %4614 = extractvalue %dx.types.ResRet.i32 %4613, 0
  %4615 = add i32 %4614, 0
  %4616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4615, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4617 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4616, i32 0)  ; GetDimensions(handle,mipLevel)
  %4618 = extractvalue %dx.types.Dimensions %4617, 0
  %4619 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4618)  ; FirstbitLo(value)
  %4620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.i32 %4620, 1
  %4622 = sub nsw i32 %4621, %4619
  %4623 = sitofp i32 %4622 to float
  %4624 = fsub fast float %4508, %4623
  %4625 = call float @dx.op.binary.f32(i32 35, float %4624, float 0.000000e+00)  ; FMax(a,b)
  %4626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4616, %dx.types.Handle %52, float %4596, float %4597, float %4611, float undef, i32 0, i32 0, i32 undef, float %4625)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4627 = extractvalue %dx.types.ResRet.f32 %4626, 0
  %4628 = fcmp fast ogt float %4627, 0.000000e+00
  br i1 %4628, label %4629, label %4657

; <label>:4629                                    ; preds = %4600
  %4630 = add i32 %4590, %4608
  %4631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4630, i32 undef)  ; BufferLoad(srv,index,wot)
  %4632 = extractvalue %dx.types.ResRet.i32 %4631, 0
  %4633 = and i32 %4632, 32767
  %4634 = mul nuw nsw i32 %4633, 928
  %4635 = add nuw nsw i32 %4634, 48
  %4636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4635, i32 undef)  ; BufferLoad(srv,index,wot)
  %4637 = extractvalue %dx.types.ResRet.f32 %4636, 0
  %4638 = extractvalue %dx.types.ResRet.f32 %4636, 1
  %4639 = extractvalue %dx.types.ResRet.f32 %4636, 2
  %4640 = add nuw nsw i32 %4634, 60
  %4641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4640, i32 undef)  ; BufferLoad(srv,index,wot)
  %4642 = extractvalue %dx.types.ResRet.f32 %4641, 0
  %4643 = extractvalue %dx.types.ResRet.f32 %4641, 1
  %4644 = extractvalue %dx.types.ResRet.f32 %4641, 2
  %4645 = fmul fast float %4637, %4627
  %4646 = fmul fast float %4638, %4627
  %4647 = fmul fast float %4639, %4627
  %4648 = fadd fast float %4645, %4601
  %4649 = fadd fast float %4646, %4602
  %4650 = fadd fast float %4647, %4603
  %4651 = fmul fast float %4642, %4627
  %4652 = fmul fast float %4643, %4627
  %4653 = fmul fast float %4644, %4627
  %4654 = fadd fast float %4651, %4604
  %4655 = fadd fast float %4652, %4605
  %4656 = fadd fast float %4653, %4606
  br label %4657

; <label>:4657                                    ; preds = %4629, %4600
  %4658 = phi float [ %4648, %4629 ], [ %4601, %4600 ]
  %4659 = phi float [ %4649, %4629 ], [ %4602, %4600 ]
  %4660 = phi float [ %4650, %4629 ], [ %4603, %4600 ]
  %4661 = phi float [ %4654, %4629 ], [ %4604, %4600 ]
  %4662 = phi float [ %4655, %4629 ], [ %4605, %4600 ]
  %4663 = phi float [ %4656, %4629 ], [ %4606, %4600 ]
  %4664 = add nuw i32 %4607, 1
  %4665 = icmp eq i32 %4664, %4589
  br i1 %4665, label %4666, label %4600

; <label>:4666                                    ; preds = %4657
  br label %4667

; <label>:4667                                    ; preds = %4666, %4530
  %4668 = phi float [ 0.000000e+00, %4530 ], [ %4658, %4666 ]
  %4669 = phi float [ 0.000000e+00, %4530 ], [ %4659, %4666 ]
  %4670 = phi float [ 0.000000e+00, %4530 ], [ %4660, %4666 ]
  %4671 = phi float [ 0.000000e+00, %4530 ], [ %4661, %4666 ]
  %4672 = phi float [ 0.000000e+00, %4530 ], [ %4662, %4666 ]
  %4673 = phi float [ 0.000000e+00, %4530 ], [ %4663, %4666 ]
  %4674 = fadd fast float %4671, %4668
  %4675 = fmul fast float %4674, 0x3F847AE140000000
  %4676 = fadd fast float %4672, %4669
  %4677 = fmul fast float %4676, 0x3F847AE140000000
  %4678 = fadd fast float %4673, %4670
  %4679 = fmul fast float %4678, 0x3F847AE140000000
  br label %4680

; <label>:4680                                    ; preds = %4667, %4464, %4409, %4406, %4377, %4339
  %4681 = phi float [ %4401, %4377 ], [ 0.000000e+00, %4339 ], [ %4675, %4667 ], [ 0.000000e+00, %4409 ], [ 0.000000e+00, %4464 ], [ 0.000000e+00, %4406 ]
  %4682 = phi float [ %4403, %4377 ], [ 0.000000e+00, %4339 ], [ %4677, %4667 ], [ 0.000000e+00, %4409 ], [ 0.000000e+00, %4464 ], [ 0.000000e+00, %4406 ]
  %4683 = phi float [ %4405, %4377 ], [ 0.000000e+00, %4339 ], [ %4679, %4667 ], [ 0.000000e+00, %4409 ], [ 0.000000e+00, %4464 ], [ 0.000000e+00, %4406 ]
  %4684 = phi float [ %4391, %4377 ], [ -1.310720e+05, %4339 ], [ %4583, %4667 ], [ -1.310720e+05, %4409 ], [ -1.310720e+05, %4464 ], [ -1.310720e+05, %4406 ]
  %4685 = phi i1 [ true, %4377 ], [ false, %4339 ], [ true, %4667 ], [ false, %4409 ], [ false, %4464 ], [ false, %4406 ]
  %4686 = and i32 %209, 3
  %4687 = icmp eq i32 %4686, 1
  %4688 = select i1 %4687, float 1.000000e+00, float 0.000000e+00
  %4689 = fsub fast float %4684, %173
  %4690 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4691 = select i1 %4685, float %4690, float 1.000000e+00
  %4692 = fmul fast float %4691, %4688
  %4693 = icmp eq i32 %4686, 3
  %4694 = select i1 %4693, float 1.000000e+00, float %4692
  %4695 = call float @dx.op.binary.f32(i32 35, float %4282, float %4694)  ; FMax(a,b)
  %4696 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4697 = fcmp fast une float %4696, 0.000000e+00
  %4698 = call float @dx.op.dot3.f32(i32 55, float %171, float %172, float %173, float %171, float %172, float %173)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = call float @dx.op.unary.f32(i32 25, float %4698)  ; Rsqrt(value)
  br i1 %4697, label %4707, label %4700

; <label>:4700                                    ; preds = %4680
  %4701 = fmul fast float %4699, %171
  %4702 = fmul fast float %4699, %172
  %4703 = fmul fast float %4699, %173
  %4704 = fsub fast float -0.000000e+00, %4701
  %4705 = fsub fast float -0.000000e+00, %4702
  %4706 = fsub fast float -0.000000e+00, %4703
  br label %4875

; <label>:4707                                    ; preds = %4680
  %4708 = fmul fast float %171, %4699
  %4709 = fsub fast float -0.000000e+00, %4708
  %4710 = fmul fast float %172, %4699
  %4711 = fsub fast float -0.000000e+00, %4710
  %4712 = fmul fast float %173, %4699
  %4713 = fsub fast float -0.000000e+00, %4712
  %4714 = call float @dx.op.dot3.f32(i32 55, float %4709, float %4711, float %4713, float %121, float %123, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4715 = fmul fast float %4696, 2.500000e+00
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fmul fast float %4696, 0x4013FFFFE0000000
  %4718 = fadd fast float %4717, 0xBFFFFFFFE0000000
  %4719 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4720 = fmul fast float %4696, 0x4004000020000000
  %4721 = fadd fast float %4720, 0xBFF8000040000000
  %4722 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4723 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4724 = fmul fast float %4285, 1.000000e+01
  %4725 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4726 = fmul fast float %4725, 2.000000e+00
  %4727 = fsub fast float 3.000000e+00, %4726
  %4728 = fmul fast float %4725, %4725
  %4729 = fmul fast float %4728, %4727
  %4730 = fsub fast float 1.000000e+00, %4729
  %4731 = fsub fast float 0x3FE3333340000000, %4306
  %4732 = fmul fast float %4731, 0x400AAAAAA0000000
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fmul fast float %4730, %4733
  %4735 = fmul fast float %4318, 0x3FEA2B8620000000
  %4736 = fmul fast float %4319, 0x3FEA2B8620000000
  %4737 = fmul fast float %4320, 0x3FEA2B8620000000
  %4738 = fadd fast float %4735, 0x3FC81DFBA0000000
  %4739 = fmul fast float %4738, %4318
  %4740 = fadd fast float %4739, 0x3F910E6020000000
  %4741 = fadd fast float %4736, 0x3FC81DFBA0000000
  %4742 = fmul fast float %4741, %4319
  %4743 = fadd fast float %4742, 0x3F910E6020000000
  %4744 = fadd fast float %4737, 0x3FC81DFBA0000000
  %4745 = fmul fast float %4744, %4320
  %4746 = fadd fast float %4745, 0x3F910E6020000000
  %4747 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4748 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4749 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4750 = fsub fast float %4747, %4318
  %4751 = fsub fast float %4748, %4319
  %4752 = fsub fast float %4749, %4320
  %4753 = fmul fast float %4750, %4723
  %4754 = fmul fast float %4753, %4734
  %4755 = fmul fast float %4751, %4723
  %4756 = fmul fast float %4755, %4734
  %4757 = fmul fast float %4752, %4723
  %4758 = fmul fast float %4757, %4734
  %4759 = fadd fast float %4754, %4318
  %4760 = fadd fast float %4756, %4319
  %4761 = fadd fast float %4758, %4320
  %4762 = fmul fast float %4279, %4279
  %4763 = fmul fast float %4762, %4762
  %4764 = fadd fast float %4719, 1.000000e+00
  %4765 = fsub fast float %4764, %4734
  %4766 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4767 = call float @dx.op.dot3.f32(i32 55, float %121, float %123, float %125, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4768 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4769 = fsub fast float 1.000000e+00, %4763
  %4770 = call float @dx.op.binary.f32(i32 36, float %4766, float %4769)  ; FMin(a,b)
  %4771 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4772 = call float @dx.op.binary.f32(i32 35, float %4770, float %4771)  ; FMax(a,b)
  %4773 = fadd fast float %4768, 0xBFE4CCCCC0000000
  %4774 = fmul fast float %4773, 0x4006DB6DA0000000
  %4775 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4776 = fmul fast float %4775, 2.000000e+00
  %4777 = fsub fast float 3.000000e+00, %4776
  %4778 = bitcast float %4303 to i32
  %4779 = ashr i32 %4778, 1
  %4780 = add nsw i32 %4779, 532487669
  %4781 = bitcast i32 %4780 to float
  %4782 = fsub fast float 1.000000e+00, %4781
  %4783 = bitcast float %4782 to i32
  %4784 = sub nsw i32 2129859010, %4783
  %4785 = bitcast i32 %4784 to float
  %4786 = fmul fast float %4785, 2.000000e+00
  %4787 = bitcast float %4304 to i32
  %4788 = ashr i32 %4787, 1
  %4789 = add nsw i32 %4788, 532487669
  %4790 = bitcast i32 %4789 to float
  %4791 = fsub fast float 1.000000e+00, %4790
  %4792 = bitcast float %4791 to i32
  %4793 = sub nsw i32 2129859010, %4792
  %4794 = bitcast i32 %4793 to float
  %4795 = fmul fast float %4794, 2.000000e+00
  %4796 = bitcast float %4305 to i32
  %4797 = ashr i32 %4796, 1
  %4798 = add nsw i32 %4797, 532487669
  %4799 = bitcast i32 %4798 to float
  %4800 = fsub fast float 1.000000e+00, %4799
  %4801 = bitcast float %4800 to i32
  %4802 = sub nsw i32 2129859010, %4801
  %4803 = bitcast i32 %4802 to float
  %4804 = fmul fast float %4803, 2.000000e+00
  %4805 = fsub fast float 0x4002A9FBE0000000, %4786
  %4806 = fadd fast float %4786, 0x3FD54FDF00000000
  %4807 = bitcast float %4806 to i32
  %4808 = sub nsw i32 2129859010, %4807
  %4809 = bitcast i32 %4808 to float
  %4810 = fmul fast float %4809, %4805
  %4811 = fmul fast float %4810, %4810
  %4812 = fsub fast float 0x4002A9FBE0000000, %4795
  %4813 = fadd fast float %4795, 0x3FD54FDF00000000
  %4814 = bitcast float %4813 to i32
  %4815 = sub nsw i32 2129859010, %4814
  %4816 = bitcast i32 %4815 to float
  %4817 = fmul fast float %4816, %4812
  %4818 = fmul fast float %4817, %4817
  %4819 = fsub fast float 0x4002A9FBE0000000, %4804
  %4820 = fadd fast float %4804, 0x3FD54FDF00000000
  %4821 = bitcast float %4820 to i32
  %4822 = sub nsw i32 2129859010, %4821
  %4823 = bitcast i32 %4822 to float
  %4824 = fmul fast float %4823, %4819
  %4825 = fmul fast float %4824, %4824
  %4826 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4811)  ; FMax(a,b)
  %4827 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4818)  ; FMax(a,b)
  %4828 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4825)  ; FMax(a,b)
  %4829 = fsub fast float 1.000000e+00, %4714
  %4830 = fadd fast float %4829, %4730
  %4831 = call float @dx.op.unary.f32(i32 7, float %4830)  ; Saturate(value)
  %4832 = fsub fast float 1.000000e+00, %4694
  %4833 = fmul fast float %4772, %4832
  %4834 = fmul fast float %4775, %4775
  %4835 = fmul fast float %4834, %4833
  %4836 = fmul fast float %4835, %4777
  %4837 = fmul fast float %4832, 0xBFE99999A0000000
  %4838 = fmul fast float %4837, %4723
  %4839 = fmul fast float %4838, %4734
  %4840 = fadd fast float %4839, 1.000000e+00
  %4841 = fadd fast float %4306, -1.000000e+00
  %4842 = fmul fast float %4840, %4841
  %4843 = fadd fast float %4842, 1.000000e+00
  %4844 = fsub fast float %4826, %4303
  %4845 = fsub fast float %4827, %4304
  %4846 = fsub fast float %4828, %4305
  %4847 = fmul fast float %4836, %4844
  %4848 = fmul fast float %4836, %4845
  %4849 = fmul fast float %4836, %4846
  %4850 = fadd fast float %4847, %4303
  %4851 = fadd fast float %4848, %4304
  %4852 = fadd fast float %4849, %4305
  %4853 = fsub fast float %121, %4267
  %4854 = fsub fast float %123, %4268
  %4855 = fsub fast float %125, %4269
  %4856 = fmul fast float %4836, %4853
  %4857 = fmul fast float %4836, %4854
  %4858 = fmul fast float %4836, %4855
  %4859 = fadd fast float %4856, %4267
  %4860 = fadd fast float %4857, %4268
  %4861 = fadd fast float %4858, %4269
  %4862 = fmul fast float %4836, %4831
  %4863 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4864 = fsub fast float 1.000000e+00, %4863
  %4865 = fmul fast float %4862, %4864
  %4866 = fadd fast float %4865, %4863
  %4867 = fsub fast float 1.000000e+00, %4279
  %4868 = fmul fast float %4836, %4867
  %4869 = fadd fast float %4868, %4279
  %4870 = call float @dx.op.dot3.f32(i32 55, float %4859, float %4860, float %4861, float %4859, float %4860, float %4861)  ; Dot3(ax,ay,az,bx,by,bz)
  %4871 = call float @dx.op.unary.f32(i32 25, float %4870)  ; Rsqrt(value)
  %4872 = fmul fast float %4859, %4871
  %4873 = fmul fast float %4860, %4871
  %4874 = fmul fast float %4861, %4871
  br label %4875

; <label>:4875                                    ; preds = %4707, %4700
  %4876 = phi float [ %4706, %4700 ], [ %4713, %4707 ]
  %4877 = phi float [ %4705, %4700 ], [ %4711, %4707 ]
  %4878 = phi float [ %4704, %4700 ], [ %4709, %4707 ]
  %4879 = phi float [ %4703, %4700 ], [ %4712, %4707 ]
  %4880 = phi float [ %4702, %4700 ], [ %4710, %4707 ]
  %4881 = phi float [ %4701, %4700 ], [ %4708, %4707 ]
  %4882 = phi float [ %4318, %4700 ], [ %4759, %4707 ]
  %4883 = phi float [ %4319, %4700 ], [ %4760, %4707 ]
  %4884 = phi float [ %4320, %4700 ], [ %4761, %4707 ]
  %4885 = phi float [ %4303, %4700 ], [ %4850, %4707 ]
  %4886 = phi float [ %4304, %4700 ], [ %4851, %4707 ]
  %4887 = phi float [ %4305, %4700 ], [ %4852, %4707 ]
  %4888 = phi float [ %4267, %4700 ], [ %4872, %4707 ]
  %4889 = phi float [ %4268, %4700 ], [ %4873, %4707 ]
  %4890 = phi float [ %4269, %4700 ], [ %4874, %4707 ]
  %4891 = phi float [ %4306, %4700 ], [ %4866, %4707 ]
  %4892 = phi float [ %4279, %4700 ], [ %4869, %4707 ]
  %4893 = fsub fast float -0.000000e+00, %173
  %4894 = select i1 %233, float 0.000000e+00, float %4887
  %4895 = call float @dx.op.dot3.f32(i32 55, float %4888, float %4889, float %4890, float %4878, float %4877, float %4876)  ; Dot3(ax,ay,az,bx,by,bz)
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4897 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4880, float %4879, float %4888, float %4889, float %4890)  ; Dot3(ax,ay,az,bx,by,bz)
  %4898 = fmul fast float %4897, 2.000000e+00
  %4899 = fmul fast float %4898, %4888
  %4900 = fmul fast float %4898, %4889
  %4901 = fmul fast float %4898, %4890
  %4902 = fsub fast float %4881, %4899
  %4903 = fsub fast float %4880, %4900
  %4904 = fsub fast float %4879, %4901
  %4905 = call float @dx.op.binary.f32(i32 36, float %4892, float 1.000000e+00)  ; FMin(a,b)
  %4906 = fsub fast float 1.000000e+00, %4905
  %4907 = bitcast float %4906 to i32
  %4908 = ashr i32 %4907, 1
  %4909 = add nsw i32 %4908, 532487669
  %4910 = bitcast i32 %4909 to float
  %4911 = fsub fast float 1.000000e+00, %4891
  %4912 = call float @dx.op.binary.f32(i32 35, float %4911, float 0x3F847AE140000000)  ; FMax(a,b)
  %4913 = fmul fast float %4912, %4912
  %4914 = fmul fast float %4913, %4913
  %4915 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %4910, float %4914, float %4915, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4917 = extractvalue %dx.types.ResRet.f32 %4916, 0
  %4918 = fsub fast float 1.000000e+00, %4892
  %4919 = bitcast float %4918 to i32
  %4920 = sub nsw i32 2129859010, %4919
  %4921 = call float @dx.op.dot3.f32(i32 55, float %80, float %76, float %72, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = fmul fast float %4921, 0x3FD20DD760000000
  %4923 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  %4924 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4925 = fcmp fast oeq float %4924, 0.000000e+00
  %4926 = fcmp fast oeq float %4923, 0.000000e+00
  %4927 = or i1 %4926, %4925
  br i1 %4927, label %4957, label %4928

; <label>:4928                                    ; preds = %4875
  %4929 = fsub fast float -0.000000e+00, %83
  %4930 = fsub fast float -0.000000e+00, %81
  %4931 = call float @dx.op.unary.f32(i32 24, float %4924)  ; Sqrt(value)
  %4932 = fdiv fast float %4931, %4923
  %4933 = fcmp fast ogt float %4932, 0x3FFB6F8900000000
  %4934 = select i1 %4933, float 0x3FFB6F8900000000, float %4932
  %4935 = fmul fast float %4934, 0x3FE8A23460000000
  %4936 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4937 = call float @dx.op.binary.f32(i32 35, float %4934, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4938 = fmul fast float %4936, %4923
  %4939 = fmul fast float %4937, 0x3FF279A740000000
  %4940 = fadd fast float %4939, -1.000000e+00
  %4941 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %82, float %4929, float %4930, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %4942 = call float @dx.op.unary.f32(i32 25, float %4941)  ; Rsqrt(value)
  %4943 = fmul fast float %4942, %4929
  %4944 = fmul fast float %4942, %4930
  %4945 = fmul fast float %4942, %82
  %4946 = fmul fast float %4940, %4940
  %4947 = fsub fast float 1.000000e+00, %4946
  %4948 = fmul fast float %4937, 0x40005F8BE0000000
  %4949 = fsub fast float 0x400C5BF8A0000000, %4948
  %4950 = fdiv fast float %4938, %4949
  %4951 = fmul fast float %4950, 0x3FEE31C3C0000000
  %4952 = fmul fast float %4951, %4947
  %4953 = fmul fast float %4937, 0x3FDACB7480000000
  %4954 = fadd fast float %4953, 0xBFD7347680000000
  %4955 = fmul fast float %4954, %4950
  %4956 = fmul fast float %4955, %4947
  br label %4957

; <label>:4957                                    ; preds = %4928, %4875
  %4958 = phi float [ %4943, %4928 ], [ 0.000000e+00, %4875 ]
  %4959 = phi float [ %4944, %4928 ], [ 0.000000e+00, %4875 ]
  %4960 = phi float [ %4945, %4928 ], [ 0.000000e+00, %4875 ]
  %4961 = phi float [ %4952, %4928 ], [ 0.000000e+00, %4875 ]
  %4962 = phi float [ %4956, %4928 ], [ 0.000000e+00, %4875 ]
  %4963 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %4888, float %4889, float %4890)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = fmul fast float %4963, %4963
  %4965 = fmul fast float %4964, 0x3FEE471020000000
  %4966 = fadd fast float %4965, 0xBFD42F6020000000
  %4967 = fmul fast float %4923, 0x3FD20DD760000000
  %4968 = fmul fast float %4966, %4962
  %4969 = fmul fast float %4961, 0x3FDF454380000000
  %4970 = fmul fast float %4969, %4963
  %4971 = fadd fast float %4970, %4967
  %4972 = fadd fast float %4971, %4968
  %4973 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %4902, float %4903, float %4904)  ; Dot3(ax,ay,az,bx,by,bz)
  %4974 = fmul fast float %4973, 0x3FDF454380000000
  %4975 = fmul fast float %4973, %4973
  %4976 = fmul fast float %4975, 0x3FEE471020000000
  %4977 = fadd fast float %4976, 0xBFD42F6020000000
  %4978 = call float @dx.op.dot3.f32(i32 55, float %4923, float %4961, float %4962, float 0x3FD20DD760000000, float %4974, float %4977)  ; Dot3(ax,ay,az,bx,by,bz)
  %4979 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %4980 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4981 = fcmp fast oeq float %4980, 0.000000e+00
  %4982 = fcmp fast oeq float %4979, 0.000000e+00
  %4983 = or i1 %4982, %4981
  br i1 %4983, label %5013, label %4984

; <label>:4984                                    ; preds = %4957
  %4985 = fsub fast float -0.000000e+00, %79
  %4986 = fsub fast float -0.000000e+00, %77
  %4987 = call float @dx.op.unary.f32(i32 24, float %4980)  ; Sqrt(value)
  %4988 = fdiv fast float %4987, %4979
  %4989 = fcmp fast ogt float %4988, 0x3FFB6F8900000000
  %4990 = select i1 %4989, float 0x3FFB6F8900000000, float %4988
  %4991 = fmul fast float %4990, 0x3FE8A23460000000
  %4992 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4993 = call float @dx.op.binary.f32(i32 35, float %4990, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4994 = fmul fast float %4992, %4979
  %4995 = fmul fast float %4993, 0x3FF279A740000000
  %4996 = fadd fast float %4995, -1.000000e+00
  %4997 = call float @dx.op.dot3.f32(i32 55, float %4985, float %4986, float %78, float %4985, float %4986, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %4998 = call float @dx.op.unary.f32(i32 25, float %4997)  ; Rsqrt(value)
  %4999 = fmul fast float %4998, %4985
  %5000 = fmul fast float %4998, %4986
  %5001 = fmul fast float %4998, %78
  %5002 = fmul fast float %4996, %4996
  %5003 = fsub fast float 1.000000e+00, %5002
  %5004 = fmul fast float %4993, 0x40005F8BE0000000
  %5005 = fsub fast float 0x400C5BF8A0000000, %5004
  %5006 = fdiv fast float %4994, %5005
  %5007 = fmul fast float %5006, 0x3FEE31C3C0000000
  %5008 = fmul fast float %5007, %5003
  %5009 = fmul fast float %4993, 0x3FDACB7480000000
  %5010 = fadd fast float %5009, 0xBFD7347680000000
  %5011 = fmul fast float %5010, %5006
  %5012 = fmul fast float %5011, %5003
  br label %5013

; <label>:5013                                    ; preds = %4984, %4957
  %5014 = phi float [ %4999, %4984 ], [ 0.000000e+00, %4957 ]
  %5015 = phi float [ %5000, %4984 ], [ 0.000000e+00, %4957 ]
  %5016 = phi float [ %5001, %4984 ], [ 0.000000e+00, %4957 ]
  %5017 = phi float [ %5008, %4984 ], [ 0.000000e+00, %4957 ]
  %5018 = phi float [ %5012, %4984 ], [ 0.000000e+00, %4957 ]
  %5019 = call float @dx.op.dot3.f32(i32 55, float %5014, float %5015, float %5016, float %4888, float %4889, float %4890)  ; Dot3(ax,ay,az,bx,by,bz)
  %5020 = fmul fast float %5019, %5019
  %5021 = fmul fast float %5020, 0x3FEE471020000000
  %5022 = fadd fast float %5021, 0xBFD42F6020000000
  %5023 = fmul fast float %4979, 0x3FD20DD760000000
  %5024 = fmul fast float %5022, %5018
  %5025 = fmul fast float %5017, 0x3FDF454380000000
  %5026 = fmul fast float %5025, %5019
  %5027 = fadd fast float %5026, %5023
  %5028 = fadd fast float %5027, %5024
  %5029 = call float @dx.op.dot3.f32(i32 55, float %5014, float %5015, float %5016, float %4902, float %4903, float %4904)  ; Dot3(ax,ay,az,bx,by,bz)
  %5030 = fmul fast float %5029, 0x3FDF454380000000
  %5031 = fmul fast float %5029, %5029
  %5032 = fmul fast float %5031, 0x3FEE471020000000
  %5033 = fadd fast float %5032, 0xBFD42F6020000000
  %5034 = call float @dx.op.dot3.f32(i32 55, float %4979, float %5017, float %5018, float 0x3FD20DD760000000, float %5030, float %5033)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5036 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = fcmp fast oeq float %5036, 0.000000e+00
  %5038 = fcmp fast oeq float %5035, 0.000000e+00
  %5039 = or i1 %5038, %5037
  br i1 %5039, label %5069, label %5040

; <label>:5040                                    ; preds = %5013
  %5041 = fsub fast float -0.000000e+00, %75
  %5042 = fsub fast float -0.000000e+00, %73
  %5043 = call float @dx.op.unary.f32(i32 24, float %5036)  ; Sqrt(value)
  %5044 = fdiv fast float %5043, %5035
  %5045 = fcmp fast ogt float %5044, 0x3FFB6F8900000000
  %5046 = select i1 %5045, float 0x3FFB6F8900000000, float %5044
  %5047 = fmul fast float %5046, 0x3FE8A23460000000
  %5048 = call float @dx.op.unary.f32(i32 7, float %5047)  ; Saturate(value)
  %5049 = call float @dx.op.binary.f32(i32 35, float %5046, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5050 = fmul fast float %5048, %5035
  %5051 = fmul fast float %5049, 0x3FF279A740000000
  %5052 = fadd fast float %5051, -1.000000e+00
  %5053 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5042, float %74, float %5041, float %5042, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5054 = call float @dx.op.unary.f32(i32 25, float %5053)  ; Rsqrt(value)
  %5055 = fmul fast float %5054, %5041
  %5056 = fmul fast float %5054, %5042
  %5057 = fmul fast float %5054, %74
  %5058 = fmul fast float %5052, %5052
  %5059 = fsub fast float 1.000000e+00, %5058
  %5060 = fmul fast float %5049, 0x40005F8BE0000000
  %5061 = fsub fast float 0x400C5BF8A0000000, %5060
  %5062 = fdiv fast float %5050, %5061
  %5063 = fmul fast float %5062, 0x3FEE31C3C0000000
  %5064 = fmul fast float %5063, %5059
  %5065 = fmul fast float %5049, 0x3FDACB7480000000
  %5066 = fadd fast float %5065, 0xBFD7347680000000
  %5067 = fmul fast float %5066, %5062
  %5068 = fmul fast float %5067, %5059
  br label %5069

; <label>:5069                                    ; preds = %5040, %5013
  %5070 = phi float [ %5055, %5040 ], [ 0.000000e+00, %5013 ]
  %5071 = phi float [ %5056, %5040 ], [ 0.000000e+00, %5013 ]
  %5072 = phi float [ %5057, %5040 ], [ 0.000000e+00, %5013 ]
  %5073 = phi float [ %5064, %5040 ], [ 0.000000e+00, %5013 ]
  %5074 = phi float [ %5068, %5040 ], [ 0.000000e+00, %5013 ]
  %5075 = call float @dx.op.dot3.f32(i32 55, float %5070, float %5071, float %5072, float %4888, float %4889, float %4890)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = fmul fast float %5075, %5075
  %5077 = fmul fast float %5076, 0x3FEE471020000000
  %5078 = fadd fast float %5077, 0xBFD42F6020000000
  %5079 = fmul fast float %5035, 0x3FD20DD760000000
  %5080 = fmul fast float %5078, %5074
  %5081 = fmul fast float %5073, 0x3FDF454380000000
  %5082 = fmul fast float %5081, %5075
  %5083 = fadd fast float %5082, %5079
  %5084 = fadd fast float %5083, %5080
  %5085 = call float @dx.op.dot3.f32(i32 55, float %5070, float %5071, float %5072, float %4902, float %4903, float %4904)  ; Dot3(ax,ay,az,bx,by,bz)
  %5086 = fmul fast float %5085, 0x3FDF454380000000
  %5087 = fmul fast float %5085, %5085
  %5088 = fmul fast float %5087, 0x3FEE471020000000
  %5089 = fadd fast float %5088, 0xBFD42F6020000000
  %5090 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5073, float %5074, float 0x3FD20DD760000000, float %5086, float %5089)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = call float @dx.op.binary.f32(i32 35, float %4972, float 0.000000e+00)  ; FMax(a,b)
  %5092 = call float @dx.op.binary.f32(i32 35, float %5028, float 0.000000e+00)  ; FMax(a,b)
  %5093 = call float @dx.op.binary.f32(i32 35, float %5084, float 0.000000e+00)  ; FMax(a,b)
  %5094 = call float @dx.op.binary.f32(i32 35, float %4978, float 0.000000e+00)  ; FMax(a,b)
  %5095 = call float @dx.op.binary.f32(i32 35, float %5034, float 0.000000e+00)  ; FMax(a,b)
  %5096 = call float @dx.op.binary.f32(i32 35, float %5090, float 0.000000e+00)  ; FMax(a,b)
  %5097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5098 = extractvalue %dx.types.CBufRet.f32 %5097, 0
  %5099 = call float @dx.op.binary.f32(i32 36, float %4882, float %5098)  ; FMin(a,b)
  %5100 = fmul fast float %5099, %4906
  %5101 = fsub fast float 1.000000e+00, %5100
  %5102 = bitcast float %5101 to i32
  %5103 = sub nsw i32 2129859010, %5102
  %5104 = bitcast i32 %5103 to float
  %5105 = call float @dx.op.binary.f32(i32 36, float %4883, float %5098)  ; FMin(a,b)
  %5106 = fmul fast float %5105, %4906
  %5107 = fsub fast float 1.000000e+00, %5106
  %5108 = bitcast float %5107 to i32
  %5109 = sub nsw i32 2129859010, %5108
  %5110 = bitcast i32 %5109 to float
  %5111 = call float @dx.op.binary.f32(i32 36, float %4884, float %5098)  ; FMin(a,b)
  %5112 = fmul fast float %5111, %4906
  %5113 = fsub fast float 1.000000e+00, %5112
  %5114 = bitcast float %5113 to i32
  %5115 = sub nsw i32 2129859010, %5114
  %5116 = bitcast i32 %5115 to float
  %5117 = fmul fast float %5091, %4905
  %5118 = fmul fast float %5117, %5104
  %5119 = fmul fast float %5092, %4905
  %5120 = fmul fast float %5119, %5110
  %5121 = fmul fast float %5093, %4905
  %5122 = fmul fast float %5121, %5116
  %5123 = call float @dx.op.binary.f32(i32 36, float %4885, float %5098)  ; FMin(a,b)
  %5124 = fmul fast float %5123, %4906
  %5125 = fsub fast float 1.000000e+00, %5124
  %5126 = bitcast float %5125 to i32
  %5127 = sub nsw i32 2129859010, %5126
  %5128 = bitcast i32 %5127 to float
  %5129 = call float @dx.op.binary.f32(i32 36, float %4886, float %5098)  ; FMin(a,b)
  %5130 = fmul fast float %5129, %4906
  %5131 = fsub fast float 1.000000e+00, %5130
  %5132 = bitcast float %5131 to i32
  %5133 = sub nsw i32 2129859010, %5132
  %5134 = bitcast i32 %5133 to float
  %5135 = call float @dx.op.binary.f32(i32 36, float %4894, float %5098)  ; FMin(a,b)
  %5136 = fmul fast float %5135, %4906
  %5137 = fsub fast float 1.000000e+00, %5136
  %5138 = bitcast float %5137 to i32
  %5139 = sub nsw i32 2129859010, %5138
  %5140 = bitcast i32 %5139 to float
  %5141 = fmul fast float %5094, %4905
  %5142 = fmul fast float %5141, %5128
  %5143 = fmul fast float %5095, %4905
  %5144 = fmul fast float %5143, %5134
  %5145 = fmul fast float %5096, %4905
  %5146 = fmul fast float %5145, %5140
  %5147 = call float @dx.op.dot3.f32(i32 55, float %5118, float %5120, float %5122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = select i1 %233, float 0.000000e+00, float %5118
  %5149 = select i1 %233, float %5147, float %5120
  %5150 = select i1 %233, float 0.000000e+00, float %5122
  %5151 = call float @dx.op.dot3.f32(i32 55, float %5142, float %5144, float %5146, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5152 = select i1 %233, float 0.000000e+00, float %5142
  %5153 = select i1 %233, float %5151, float %5144
  %5154 = select i1 %233, float 0.000000e+00, float %5146
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5157 = fsub fast float %100, %5156
  %5158 = extractvalue %dx.types.CBufRet.f32 %5155, 2
  %5159 = fmul fast float %5157, %5158
  %5160 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5161 = fmul fast float %4921, 0x4071A18460000000
  %5162 = fadd fast float %5161, 0x3F0FFB4800000000
  %5163 = call float @dx.op.unary.f32(i32 23, float %5162)  ; Log(value)
  %5164 = fadd fast float %5163, 0x4006B851E0000000
  %5165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5166 = extractvalue %dx.types.CBufRet.f32 %5165, 1
  %5167 = extractvalue %dx.types.CBufRet.f32 %5165, 3
  %5168 = fsub fast float %5166, %5164
  %5169 = fcmp fast ogt float %5168, 0.000000e+00
  %5170 = fcmp fast olt float %5168, 0.000000e+00
  %5171 = zext i1 %5169 to i32
  %5172 = zext i1 %5170 to i32
  %5173 = sub nsw i32 %5171, %5172
  %5174 = sitofp i32 %5173 to float
  %5175 = call float @dx.op.unary.f32(i32 6, float %5168)  ; FAbs(value)
  %5176 = fsub fast float %5175, %5167
  %5177 = call float @dx.op.binary.f32(i32 35, float %5176, float 0.000000e+00)  ; FMax(a,b)
  %5178 = fmul fast float %5174, %5177
  %5179 = fadd fast float %5163, %5178
  %5180 = call float @dx.op.unary.f32(i32 21, float %5179)  ; Exp(value)
  %5181 = fmul fast float %5180, 0x3F50624DE0000000
  %5182 = fcmp fast oeq float %4922, 0.000000e+00
  %5183 = fdiv fast float 0x400C5BF880000000, %4921
  %5184 = fmul fast float %5181, %5183
  %5185 = select i1 %5182, float 1.000000e+00, float %5184
  %5186 = call float @dx.op.binary.f32(i32 35, float %5185, float 1.000000e+00)  ; FMax(a,b)
  %5187 = fadd fast float %5186, -1.000000e+00
  %5188 = fmul fast float %5187, %5160
  %5189 = fadd fast float %5188, 1.000000e+00
  %5190 = call float @dx.op.unary.f32(i32 6, float %5189)  ; FAbs(value)
  %5191 = fmul fast float %5190, %5148
  %5192 = fmul fast float %5190, %5149
  %5193 = fmul fast float %5190, %5150
  %5194 = fmul fast float %4896, 9.843750e-01
  %5195 = fmul fast float %4891, 9.843750e-01
  %5196 = fadd fast float %5194, 7.812500e-03
  %5197 = fadd fast float %5195, 7.812500e-03
  %5198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5196, float %5197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5199 = extractvalue %dx.types.ResRet.f32 %5198, 2
  %5200 = extractvalue %dx.types.ResRet.f32 %5198, 3
  %5201 = fmul fast float %5199, %4885
  %5202 = fmul fast float %5199, %4886
  %5203 = fmul fast float %5199, %4894
  %5204 = fadd fast float %5201, %5200
  %5205 = fadd fast float %5202, %5200
  %5206 = fadd fast float %5203, %5200
  %5207 = fcmp fast ogt float %4280, 0.000000e+00
  br i1 %5207, label %5208, label %5234

; <label>:5208                                    ; preds = %5069
  %5209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4280, float %4896, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = extractvalue %dx.types.ResRet.f32 %5209, 1
  %5212 = extractvalue %dx.types.ResRet.f32 %5209, 2
  %5213 = fadd fast float %5210, -5.000000e-01
  %5214 = fadd fast float %5211, -5.000000e-01
  %5215 = fadd fast float %5212, -5.000000e-01
  %5216 = fsub fast float 1.000000e+00, %4885
  %5217 = fsub fast float 1.000000e+00, %4886
  %5218 = fsub fast float 1.000000e+00, %4894
  %5219 = fmul fast float %4885, 4.000000e+00
  %5220 = fmul fast float %5219, %5216
  %5221 = fmul fast float %5220, %5213
  %5222 = fmul fast float %4886, 4.000000e+00
  %5223 = fmul fast float %5222, %5217
  %5224 = fmul fast float %5223, %5214
  %5225 = fmul fast float %4894, 4.000000e+00
  %5226 = fmul fast float %5225, %5218
  %5227 = fmul fast float %5226, %5215
  %5228 = fadd fast float %5221, %5204
  %5229 = fadd fast float %5224, %5205
  %5230 = fadd fast float %5227, %5206
  %5231 = call float @dx.op.unary.f32(i32 7, float %5228)  ; Saturate(value)
  %5232 = call float @dx.op.unary.f32(i32 7, float %5229)  ; Saturate(value)
  %5233 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  br label %5234

; <label>:5234                                    ; preds = %5208, %5069
  %5235 = phi float [ %5231, %5208 ], [ %5204, %5069 ]
  %5236 = phi float [ %5232, %5208 ], [ %5205, %5069 ]
  %5237 = phi float [ %5233, %5208 ], [ %5206, %5069 ]
  %5238 = call float @dx.op.binary.f32(i32 35, float %5236, float %5237)  ; FMax(a,b)
  %5239 = call float @dx.op.binary.f32(i32 35, float %5235, float %5238)  ; FMax(a,b)
  %5240 = fsub fast float 1.000000e+00, %5239
  %5241 = fmul fast float %5239, %4891
  %5242 = fadd fast float %5241, %4891
  %5243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5244 = extractvalue %dx.types.CBufRet.f32 %5243, 2
  %5245 = extractvalue %dx.types.CBufRet.f32 %5243, 3
  %5246 = fmul fast float %5242, %5244
  %5247 = fadd fast float %5246, %5245
  %5248 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5249 = fsub fast float 1.000000e+00, %4917
  %5250 = fadd fast float %5249, %5248
  %5251 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5252 = fcmp fast olt float %5251, 1.000000e+00
  br i1 %5252, label %5253, label %5729

; <label>:5253                                    ; preds = %5234
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 2
  %5256 = extractvalue %dx.types.CBufRet.f32 %5254, 3
  %5257 = fmul fast float %5255, %112
  %5258 = fmul fast float %5256, %113
  %5259 = fptoui float %5257 to i32
  %5260 = fptoui float %5258 to i32
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5264 = extractvalue %dx.types.CBufRet.f32 %5261, 3
  %5265 = fadd fast float %100, -4.000000e+00
  %5266 = call float @dx.op.binary.f32(i32 35, float %5265, float 0.000000e+00)  ; FMax(a,b)
  %5267 = fadd fast float %5266, %5262
  %5268 = fmul fast float %5267, %5263
  %5269 = call float @dx.op.unary.f32(i32 23, float %5268)  ; Log(value)
  %5270 = fmul fast float %5269, %5264
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 2
  %5273 = fmul fast float %5270, %5272
  %5274 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5276 = extractvalue %dx.types.CBufRet.i32 %5275, 1
  %5277 = add i32 %5276, -1
  %5278 = uitofp i32 %5276 to float
  %5279 = fmul fast float %5278, %5274
  %5280 = fptoui float %5279 to i32
  %5281 = call i32 @dx.op.binary.i32(i32 40, i32 %5280, i32 %5277)  ; UMin(a,b)
  %5282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5283 = extractvalue %dx.types.CBufRet.i32 %5282, 2
  %5284 = extractvalue %dx.types.CBufRet.i32 %5282, 3
  %5285 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5260, i32 %5283, i32 %5259)  ; UMad(a,b,c)
  %5286 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5281, i32 %5284, i32 %5285)  ; UMad(a,b,c)
  %5287 = call float @dx.op.binary.f32(i32 35, float %100, float 0.000000e+00)  ; FMax(a,b)
  %5288 = fptoui float %5287 to i32
  %5289 = lshr i32 %5288, 5
  %5290 = call i32 @dx.op.binary.i32(i32 40, i32 %5289, i32 8191)  ; UMin(a,b)
  %5291 = fsub fast float %4684, %173
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = fcmp fast ogt float %5292, 0.000000e+00
  %5294 = fcmp fast ogt float %4904, 0.000000e+00
  %5295 = and i1 %5294, %5293
  br i1 %5295, label %5296, label %5325

; <label>:5296                                    ; preds = %5253
  %5297 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4903, float %4904, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = call float @dx.op.binary.f32(i32 35, float %5297, float -1.000000e+00)  ; FMax(a,b)
  %5299 = call float @dx.op.binary.f32(i32 36, float %5298, float 1.000000e+00)  ; FMin(a,b)
  %5300 = fmul fast float %5299, %5299
  %5301 = fsub fast float 1.000000e+00, %5300
  %5302 = fmul fast float %5301, 0x3FFC6E2300000000
  %5303 = fsub fast float 1.000000e+00, %5302
  %5304 = fcmp fast ogt float %5303, 0.000000e+00
  %5305 = call float @dx.op.unary.f32(i32 24, float %5303)  ; Sqrt(value)
  %5306 = fsub fast float 1.000000e+00, %5305
  %5307 = call float @dx.op.unary.f32(i32 23, float %5306)  ; Log(value)
  %5308 = fmul fast float %5307, 5.000000e+00
  %5309 = call float @dx.op.unary.f32(i32 21, float %5308)  ; Exp(value)
  %5310 = fmul fast float %5309, 0x3FEF591A60000000
  %5311 = fadd fast float %5310, 0x3F94DCB540000000
  %5312 = select i1 %5304, float %5311, float 1.000000e+00
  %5313 = fcmp fast oge float %5312, 1.000000e+00
  %5314 = fmul fast float %5297, 2.000000e+00
  %5315 = fadd fast float %5314, %4904
  %5316 = select i1 %5313, float %5315, float %4904
  %5317 = fsub fast float %5316, %4904
  %5318 = fmul fast float %5317, %5292
  %5319 = fadd fast float %5318, %4904
  %5320 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4903, float %5319, float %4902, float %4903, float %5319)  ; Dot3(ax,ay,az,bx,by,bz)
  %5321 = call float @dx.op.unary.f32(i32 25, float %5320)  ; Rsqrt(value)
  %5322 = fmul fast float %5321, %4902
  %5323 = fmul fast float %5321, %4903
  %5324 = fmul fast float %5319, %5321
  br label %5325

; <label>:5325                                    ; preds = %5296, %5253
  %5326 = phi float [ %5322, %5296 ], [ %4902, %5253 ]
  %5327 = phi float [ %5323, %5296 ], [ %4903, %5253 ]
  %5328 = phi float [ %5324, %5296 ], [ %4904, %5253 ]
  %5329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.i32 %5329, 2
  %5331 = add nsw i32 %5330, -1
  %5332 = call i32 @dx.op.binary.i32(i32 37, i32 %5331, i32 0)  ; IMax(a,b)
  %5333 = shl i32 %5290, 2
  %5334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5333, i32 undef)  ; BufferLoad(srv,index,wot)
  %5335 = extractvalue %dx.types.ResRet.i32 %5334, 0
  %5336 = lshr i32 %5335, 16
  %5337 = and i32 %5335, 65535
  %5338 = lshr i32 %5335, 21
  %5339 = lshr i32 %5337, 5
  %5340 = call i32 @dx.op.binary.i32(i32 40, i32 %5339, i32 %5332)  ; UMin(a,b)
  %5341 = icmp ugt i32 %5338, %5340
  br i1 %5341, label %5705, label %5342

; <label>:5342                                    ; preds = %5325
  br label %5343

; <label>:5343                                    ; preds = %5697, %5342
  %5344 = phi float [ %5698, %5697 ], [ 0.000000e+00, %5342 ]
  %5345 = phi float [ %5699, %5697 ], [ 0.000000e+00, %5342 ]
  %5346 = phi float [ %5700, %5697 ], [ 0.000000e+00, %5342 ]
  %5347 = phi float [ %5701, %5697 ], [ 1.000000e+00, %5342 ]
  %5348 = phi i32 [ %5702, %5697 ], [ %5338, %5342 ]
  %5349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5350 = extractvalue %dx.types.CBufRet.i32 %5349, 2
  %5351 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5286, i32 %5350, i32 %5348)  ; UMad(a,b,c)
  %5352 = shl i32 %5351, 2
  %5353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5352, i32 undef)  ; BufferLoad(srv,index,wot)
  %5354 = extractvalue %dx.types.ResRet.i32 %5353, 0
  %5355 = shl i32 %5348, 5
  %5356 = sub nsw i32 %5336, %5355
  %5357 = call i32 @dx.op.binary.i32(i32 37, i32 %5356, i32 0)  ; IMax(a,b)
  %5358 = call i32 @dx.op.binary.i32(i32 38, i32 %5357, i32 31)  ; IMin(a,b)
  %5359 = sub nsw i32 1, %5336
  %5360 = add nsw i32 %5359, %5337
  %5361 = call i32 @dx.op.binary.i32(i32 37, i32 %5360, i32 0)  ; IMax(a,b)
  %5362 = call i32 @dx.op.binary.i32(i32 38, i32 %5361, i32 32)  ; IMin(a,b)
  %5363 = and i32 %5362, 31
  %5364 = shl i32 -1, %5363
  %5365 = xor i32 %5364, -1
  %5366 = and i32 %5358, 31
  %5367 = shl i32 %5365, %5366
  %5368 = icmp eq i32 %5362, 32
  %5369 = select i1 %5368, i32 -1, i32 %5367
  %5370 = and i32 %5369, %5354
  %5371 = icmp eq i32 %5370, 0
  br i1 %5371, label %5697, label %5372

; <label>:5372                                    ; preds = %5343
  br label %5373

; <label>:5373                                    ; preds = %5480, %5372
  %5374 = phi float [ %5481, %5480 ], [ %5344, %5372 ]
  %5375 = phi float [ %5482, %5480 ], [ %5345, %5372 ]
  %5376 = phi float [ %5483, %5480 ], [ %5346, %5372 ]
  %5377 = phi float [ %5484, %5480 ], [ %5347, %5372 ]
  %5378 = phi i32 [ %5383, %5480 ], [ %5370, %5372 ]
  %5379 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5378)  ; FirstbitLo(value)
  %5380 = add i32 %5379, %5355
  %5381 = and i32 %5379, 31
  %5382 = shl i32 1, %5381
  %5383 = xor i32 %5382, %5378
  %5384 = mul i32 %5380, 72
  %5385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5384, i32 undef)  ; BufferLoad(srv,index,wot)
  %5386 = extractvalue %dx.types.ResRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.ResRet.f32 %5385, 1
  %5388 = extractvalue %dx.types.ResRet.f32 %5385, 2
  %5389 = add i32 %5384, 12
  %5390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5389, i32 undef)  ; BufferLoad(srv,index,wot)
  %5391 = extractvalue %dx.types.ResRet.i32 %5390, 0
  %5392 = add i32 %5384, 16
  %5393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5392, i32 undef)  ; BufferLoad(srv,index,wot)
  %5394 = extractvalue %dx.types.ResRet.f32 %5393, 0
  %5395 = extractvalue %dx.types.ResRet.f32 %5393, 1
  %5396 = extractvalue %dx.types.ResRet.f32 %5393, 2
  %5397 = add i32 %5384, 28
  %5398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5399 = extractvalue %dx.types.ResRet.f32 %5398, 0
  %5400 = add i32 %5384, 32
  %5401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5400, i32 undef)  ; BufferLoad(srv,index,wot)
  %5402 = extractvalue %dx.types.ResRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.ResRet.f32 %5401, 1
  %5404 = extractvalue %dx.types.ResRet.f32 %5401, 2
  %5405 = extractvalue %dx.types.ResRet.f32 %5401, 3
  %5406 = add i32 %5384, 48
  %5407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = extractvalue %dx.types.ResRet.f32 %5407, 1
  %5410 = add i32 %5384, 56
  %5411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5410, i32 undef)  ; BufferLoad(srv,index,wot)
  %5412 = extractvalue %dx.types.ResRet.f32 %5411, 0
  %5413 = extractvalue %dx.types.ResRet.f32 %5411, 1
  %5414 = add i32 %5384, 64
  %5415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5414, i32 undef)  ; BufferLoad(srv,index,wot)
  %5416 = extractvalue %dx.types.ResRet.f32 %5415, 0
  %5417 = extractvalue %dx.types.ResRet.f32 %5415, 1
  %5418 = mul i32 %5380, 60
  %5419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5418, i32 undef)  ; BufferLoad(srv,index,wot)
  %5420 = extractvalue %dx.types.ResRet.f32 %5419, 0
  %5421 = extractvalue %dx.types.ResRet.f32 %5419, 1
  %5422 = extractvalue %dx.types.ResRet.f32 %5419, 2
  %5423 = add i32 %5418, 12
  %5424 = add i32 %5418, 48
  %5425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5424, i32 undef)  ; BufferLoad(srv,index,wot)
  %5426 = extractvalue %dx.types.ResRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.ResRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.ResRet.f32 %5425, 2
  %5429 = and i32 %5391, 32767
  %5430 = bitcast float %5386 to i32
  %5431 = icmp eq i32 %5430, -1
  %5432 = bitcast float %5387 to i32
  %5433 = and i32 %5391, 32768
  %5434 = icmp ne i32 %5433, 0
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.CBufRet.f32 %5435, 1
  %5438 = extractvalue %dx.types.CBufRet.f32 %5435, 2
  %5439 = fsub fast float %5420, %5436
  %5440 = fsub fast float %5421, %5437
  %5441 = fsub fast float %5422, %5438
  %5442 = fsub fast float %171, %5439
  %5443 = fsub fast float %172, %5440
  %5444 = fsub fast float %173, %5441
  %5445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5423, i32 undef)  ; BufferLoad(srv,index,wot)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.ResRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.ResRet.f32 %5445, 2
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5446, float %5447, float %5448)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = add i32 %5418, 24
  %5451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5450, i32 undef)  ; BufferLoad(srv,index,wot)
  %5452 = extractvalue %dx.types.ResRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.ResRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.ResRet.f32 %5451, 2
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = add i32 %5418, 36
  %5457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5456, i32 undef)  ; BufferLoad(srv,index,wot)
  %5458 = extractvalue %dx.types.ResRet.f32 %5457, 0
  %5459 = extractvalue %dx.types.ResRet.f32 %5457, 1
  %5460 = extractvalue %dx.types.ResRet.f32 %5457, 2
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5458, float %5459, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = call float @dx.op.unary.f32(i32 6, float %5449)  ; FAbs(value)
  %5463 = call float @dx.op.unary.f32(i32 6, float %5455)  ; FAbs(value)
  %5464 = call float @dx.op.unary.f32(i32 6, float %5461)  ; FAbs(value)
  %5465 = fsub fast float %5426, %5462
  %5466 = fsub fast float %5427, %5463
  %5467 = fsub fast float %5428, %5464
  %5468 = fmul fast float %5465, %5394
  %5469 = fmul fast float %5466, %5395
  %5470 = fmul fast float %5467, %5396
  %5471 = call float @dx.op.binary.f32(i32 36, float %5469, float %5470)  ; FMin(a,b)
  %5472 = call float @dx.op.binary.f32(i32 36, float %5468, float %5471)  ; FMin(a,b)
  %5473 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5474 = call float @dx.op.binary.f32(i32 36, float %5377, float %5473)  ; FMin(a,b)
  %5475 = uitofp i1 %5434 to float
  %5476 = fadd fast float %5292, 1.000000e+00
  %5477 = fsub fast float %5476, %5475
  %5478 = fmul fast float %5474, %5477
  %5479 = fcmp fast ogt float %5478, 0.000000e+00
  br i1 %5479, label %5486, label %5480

; <label>:5480                                    ; preds = %5628, %5373
  %5481 = phi float [ %5692, %5628 ], [ %5374, %5373 ]
  %5482 = phi float [ %5693, %5628 ], [ %5375, %5373 ]
  %5483 = phi float [ %5694, %5628 ], [ %5376, %5373 ]
  %5484 = phi float [ %5695, %5628 ], [ %5377, %5373 ]
  %5485 = icmp eq i32 %5378, %5382
  br i1 %5485, label %5696, label %5373

; <label>:5486                                    ; preds = %5373
  br i1 %5431, label %5544, label %5487

; <label>:5487                                    ; preds = %5486
  %5488 = fsub fast float -0.000000e+00, %5446
  %5489 = fsub fast float -0.000000e+00, %5447
  %5490 = fsub fast float -0.000000e+00, %5448
  %5491 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = fsub fast float -0.000000e+00, %5491
  %5493 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = fadd fast float %5493, %5409
  %5495 = fadd fast float %5408, %5493
  %5496 = fsub fast float -0.000000e+00, %5495
  %5497 = fcmp ogt float %5491, -0.000000e+00
  %5498 = select i1 %5497, float %5496, float %5494
  %5499 = call float @dx.op.unary.f32(i32 6, float %5492)  ; FAbs(value)
  %5500 = fdiv fast float 1.000000e+00, %5499
  %5501 = fmul fast float %5498, %5500
  %5502 = call float @dx.op.binary.f32(i32 35, float %5501, float 0.000000e+00)  ; FMax(a,b)
  %5503 = fsub fast float -0.000000e+00, %5452
  %5504 = fsub fast float -0.000000e+00, %5453
  %5505 = fsub fast float -0.000000e+00, %5454
  %5506 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5503, float %5504, float %5505)  ; Dot3(ax,ay,az,bx,by,bz)
  %5507 = fsub fast float -0.000000e+00, %5506
  %5508 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5503, float %5504, float %5505)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = fadd fast float %5508, %5413
  %5510 = fadd fast float %5412, %5508
  %5511 = fsub fast float -0.000000e+00, %5510
  %5512 = fcmp ogt float %5506, -0.000000e+00
  %5513 = select i1 %5512, float %5511, float %5509
  %5514 = call float @dx.op.unary.f32(i32 6, float %5507)  ; FAbs(value)
  %5515 = fdiv fast float 1.000000e+00, %5514
  %5516 = fmul fast float %5513, %5515
  %5517 = call float @dx.op.binary.f32(i32 35, float %5516, float 0.000000e+00)  ; FMax(a,b)
  %5518 = fsub fast float -0.000000e+00, %5458
  %5519 = fsub fast float -0.000000e+00, %5459
  %5520 = fsub fast float -0.000000e+00, %5460
  %5521 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5518, float %5519, float %5520)  ; Dot3(ax,ay,az,bx,by,bz)
  %5522 = fsub fast float -0.000000e+00, %5521
  %5523 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5518, float %5519, float %5520)  ; Dot3(ax,ay,az,bx,by,bz)
  %5524 = fadd fast float %5523, %5417
  %5525 = fadd fast float %5416, %5523
  %5526 = fsub fast float -0.000000e+00, %5525
  %5527 = fcmp ogt float %5521, -0.000000e+00
  %5528 = select i1 %5527, float %5526, float %5524
  %5529 = call float @dx.op.unary.f32(i32 6, float %5522)  ; FAbs(value)
  %5530 = fdiv fast float 1.000000e+00, %5529
  %5531 = fmul fast float %5528, %5530
  %5532 = call float @dx.op.binary.f32(i32 35, float %5531, float 0.000000e+00)  ; FMax(a,b)
  %5533 = call float @dx.op.binary.f32(i32 36, float %5517, float %5532)  ; FMin(a,b)
  %5534 = call float @dx.op.binary.f32(i32 36, float %5502, float %5533)  ; FMin(a,b)
  %5535 = fmul fast float %5534, %5326
  %5536 = fmul fast float %5534, %5327
  %5537 = fmul fast float %5534, %5328
  %5538 = fadd fast float %5535, %171
  %5539 = fadd fast float %5536, %172
  %5540 = fadd fast float %5537, %173
  %5541 = fsub fast float %5538, %5386
  %5542 = fsub fast float %5539, %5387
  %5543 = fsub fast float %5540, %5388
  br label %5551

; <label>:5544                                    ; preds = %5486
  %5545 = fmul fast float %5326, 8.096000e+03
  %5546 = fmul fast float %5327, 8.096000e+03
  %5547 = fmul fast float %5328, 8.096000e+03
  %5548 = fadd fast float %5545, %171
  %5549 = fadd fast float %5546, %172
  %5550 = fadd fast float %5547, %173
  br label %5551

; <label>:5551                                    ; preds = %5544, %5487
  %5552 = phi float [ %5326, %5544 ], [ %5541, %5487 ]
  %5553 = phi float [ %5327, %5544 ], [ %5542, %5487 ]
  %5554 = phi float [ %5328, %5544 ], [ %5543, %5487 ]
  %5555 = phi float [ %5548, %5544 ], [ %5538, %5487 ]
  %5556 = phi float [ %5549, %5544 ], [ %5539, %5487 ]
  %5557 = phi float [ %5550, %5544 ], [ %5540, %5487 ]
  %5558 = fcmp fast olt float %5405, 1.000000e+00
  br i1 %5558, label %5559, label %5590, !dx.controlflow.hints !102

; <label>:5559                                    ; preds = %5551
  %5560 = fmul fast float %5554, %5403
  %5561 = fmul fast float %5553, %5404
  %5562 = fsub fast float %5560, %5561
  %5563 = fmul fast float %5552, %5404
  %5564 = fmul fast float %5554, %5402
  %5565 = fsub fast float %5563, %5564
  %5566 = fmul fast float %5553, %5402
  %5567 = fmul fast float %5552, %5403
  %5568 = fsub fast float %5566, %5567
  %5569 = fmul fast float %5562, 2.000000e+00
  %5570 = fmul fast float %5565, 2.000000e+00
  %5571 = fmul fast float %5568, 2.000000e+00
  %5572 = fmul fast float %5569, %5405
  %5573 = fmul fast float %5570, %5405
  %5574 = fmul fast float %5571, %5405
  %5575 = fmul fast float %5571, %5403
  %5576 = fmul fast float %5570, %5404
  %5577 = fmul fast float %5569, %5404
  %5578 = fmul fast float %5571, %5402
  %5579 = fmul fast float %5570, %5402
  %5580 = fmul fast float %5569, %5403
  %5581 = fadd fast float %5575, %5552
  %5582 = fadd fast float %5581, %5572
  %5583 = fsub fast float %5582, %5576
  %5584 = fsub fast float %5553, %5578
  %5585 = fadd fast float %5584, %5573
  %5586 = fadd fast float %5585, %5577
  %5587 = fadd fast float %5574, %5554
  %5588 = fsub fast float %5587, %5580
  %5589 = fadd fast float %5588, %5579
  br label %5590

; <label>:5590                                    ; preds = %5559, %5551
  %5591 = phi float [ %5583, %5559 ], [ %5552, %5551 ]
  %5592 = phi float [ %5586, %5559 ], [ %5553, %5551 ]
  %5593 = phi float [ %5589, %5559 ], [ %5554, %5551 ]
  br i1 %5431, label %5625, label %5594

; <label>:5594                                    ; preds = %5590
  %5595 = fmul fast float %4891, 0x400187C840000000
  %5596 = fadd fast float %5595, 0xC00EFC2120000000
  %5597 = fmul fast float %5596, %4891
  %5598 = fadd fast float %5597, 0x3FE5D16340000000
  %5599 = fmul fast float %5598, %4891
  %5600 = fadd fast float %5599, 1.000000e+00
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = fsub fast float %5555, %171
  %5603 = fsub fast float %5556, %172
  %5604 = fsub fast float %5557, %173
  %5605 = fsub fast float %5555, %5386
  %5606 = fsub fast float %5556, %5387
  %5607 = fsub fast float %5557, %5388
  %5608 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %5604, float %5602, float %5603, float %5604)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = call float @dx.op.dot3.f32(i32 55, float %5605, float %5606, float %5607, float %5605, float %5606, float %5607)  ; Dot3(ax,ay,az,bx,by,bz)
  %5610 = fadd fast float %5609, 0x3EE4F8B580000000
  %5611 = fdiv fast float %5608, %5610
  %5612 = bitcast float %5611 to i32
  %5613 = ashr i32 %5612, 1
  %5614 = add nsw i32 %5613, 532487669
  %5615 = bitcast i32 %5614 to float
  %5616 = fmul fast float %5615, %5601
  %5617 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5618 = fmul fast float %5617, 0x4009981AE0000000
  %5619 = fsub fast float 0x40111BBD80000000, %5618
  %5620 = fmul fast float %5619, %5617
  %5621 = fadd fast float %5620, 0xC0009F6020000000
  %5622 = fmul fast float %5621, %5617
  %5623 = fadd fast float %5622, 1.000000e+00
  %5624 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  br label %5628

; <label>:5625                                    ; preds = %5590
  %5626 = icmp ne i32 %5432, -1
  %5627 = zext i1 %5626 to i32
  br label %5628

; <label>:5628                                    ; preds = %5625, %5594
  %5629 = phi float [ %4891, %5625 ], [ %5624, %5594 ]
  %5630 = phi i32 [ %5627, %5625 ], [ 0, %5594 ]
  %5631 = fmul float %5629, 5.000000e+00
  %5632 = fsub float 5.000000e+00, %5631
  %5633 = icmp ne i32 %5630, 0
  %5634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5635 = extractvalue %dx.types.CBufRet.f32 %5634, 3
  %5636 = fadd fast float %5635, %5632
  %5637 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5636)  ; FMax(a,b)
  %5638 = call float @dx.op.unary.f32(i32 6, float %5591)  ; FAbs(value)
  %5639 = call float @dx.op.unary.f32(i32 6, float %5592)  ; FAbs(value)
  %5640 = fadd fast float %5639, %5638
  %5641 = call float @dx.op.unary.f32(i32 6, float %5593)  ; FAbs(value)
  %5642 = fadd fast float %5640, %5641
  %5643 = fcmp fast oeq float %5642, 0.000000e+00
  %5644 = fdiv fast float 1.000000e+00, %5642
  %5645 = select i1 %5643, float 1.000000e+00, float %5644
  %5646 = fmul fast float %5645, %5591
  %5647 = fmul fast float %5645, %5592
  %5648 = call float @dx.op.unary.f32(i32 6, float %5647)  ; FAbs(value)
  %5649 = call float @dx.op.unary.f32(i32 6, float %5646)  ; FAbs(value)
  %5650 = fsub fast float 1.000000e+00, %5648
  %5651 = fsub fast float 1.000000e+00, %5649
  %5652 = fcmp fast oge float %5646, 0.000000e+00
  %5653 = fcmp fast oge float %5647, 0.000000e+00
  %5654 = select i1 %5652, float 1.000000e+00, float -1.000000e+00
  %5655 = select i1 %5653, float 1.000000e+00, float -1.000000e+00
  %5656 = fcmp fast ole float %5593, 0.000000e+00
  %5657 = fmul fast float %5654, %5650
  %5658 = fmul fast float %5655, %5651
  %5659 = select i1 %5656, float %5657, float %5646
  %5660 = select i1 %5656, float %5658, float %5647
  %5661 = fmul fast float %5659, 5.000000e-01
  %5662 = fmul fast float %5660, 5.000000e-01
  %5663 = fadd fast float %5661, 5.000000e-01
  %5664 = fadd fast float %5662, 5.000000e-01
  %5665 = uitofp i32 %5429 to float
  %5666 = call float @dx.op.binary.f32(i32 36, float %5637, float 3.000000e+00)  ; FMin(a,b)
  %5667 = fadd fast float %5666, 2.000000e+00
  %5668 = call float @dx.op.unary.f32(i32 21, float %5667)  ; Exp(value)
  %5669 = extractvalue %dx.types.CBufRet.f32 %5634, 1
  %5670 = fmul fast float %5669, %5668
  %5671 = fmul fast float %5670, 2.000000e+00
  %5672 = fsub fast float 1.000000e+00, %5671
  %5673 = fmul fast float %5663, %5672
  %5674 = fmul fast float %5664, %5672
  %5675 = fadd fast float %5673, %5670
  %5676 = fadd fast float %5674, %5670
  %5677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %5675, float %5676, float %5665, float undef, i32 0, i32 0, i32 undef, float %5637)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5678 = extractvalue %dx.types.ResRet.f32 %5677, 0
  %5679 = extractvalue %dx.types.ResRet.f32 %5677, 1
  %5680 = extractvalue %dx.types.ResRet.f32 %5677, 2
  %5681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5682 = extractvalue %dx.types.CBufRet.f32 %5681, 3
  %5683 = fmul fast float %5682, %5399
  %5684 = call float @dx.op.binary.f32(i32 36, float %4922, float %5683)  ; FMin(a,b)
  %5685 = select i1 %5633, float %5684, float %5683
  %5686 = fmul fast float %5678, %5478
  %5687 = fmul fast float %5686, %5685
  %5688 = fmul fast float %5679, %5478
  %5689 = fmul fast float %5688, %5685
  %5690 = fmul fast float %5680, %5478
  %5691 = fmul fast float %5690, %5685
  %5692 = fadd fast float %5687, %5374
  %5693 = fadd fast float %5689, %5375
  %5694 = fadd fast float %5691, %5376
  %5695 = fsub fast float %5377, %5478
  br label %5480

; <label>:5696                                    ; preds = %5480
  br label %5697

; <label>:5697                                    ; preds = %5696, %5343
  %5698 = phi float [ %5344, %5343 ], [ %5481, %5696 ]
  %5699 = phi float [ %5345, %5343 ], [ %5482, %5696 ]
  %5700 = phi float [ %5346, %5343 ], [ %5483, %5696 ]
  %5701 = phi float [ %5347, %5343 ], [ %5484, %5696 ]
  %5702 = add i32 %5348, 1
  %5703 = icmp ugt i32 %5702, %5340
  br i1 %5703, label %5704, label %5343, !llvm.loop !103

; <label>:5704                                    ; preds = %5697
  br label %5705

; <label>:5705                                    ; preds = %5704, %5325
  %5706 = phi float [ 0.000000e+00, %5325 ], [ %5698, %5704 ]
  %5707 = phi float [ 0.000000e+00, %5325 ], [ %5699, %5704 ]
  %5708 = phi float [ 0.000000e+00, %5325 ], [ %5700, %5704 ]
  %5709 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %5708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = select i1 %233, float 0.000000e+00, float %5706
  %5711 = select i1 %233, float %5709, float %5707
  %5712 = select i1 %233, float 0.000000e+00, float %5708
  %5713 = fcmp fast olt float %5251, 0.000000e+00
  %5714 = call float @dx.op.unary.f32(i32 6, float %5251)  ; FAbs(value)
  %5715 = fmul fast float %5714, %5152
  %5716 = fmul fast float %5714, %5153
  %5717 = fmul fast float %5714, %5154
  %5718 = select i1 %5713, float %5152, float %5715
  %5719 = select i1 %5713, float %5153, float %5716
  %5720 = select i1 %5713, float %5154, float %5717
  %5721 = fsub fast float 1.000000e+00, %5714
  %5722 = call float @dx.op.unary.f32(i32 7, float %5721)  ; Saturate(value)
  %5723 = fmul fast float %5722, %5710
  %5724 = fmul fast float %5722, %5711
  %5725 = fmul fast float %5722, %5712
  %5726 = fadd fast float %5718, %5723
  %5727 = fadd fast float %5719, %5724
  %5728 = fadd fast float %5720, %5725
  br label %5729

; <label>:5729                                    ; preds = %5705, %5234
  %5730 = phi float [ %5726, %5705 ], [ %5152, %5234 ]
  %5731 = phi float [ %5727, %5705 ], [ %5153, %5234 ]
  %5732 = phi float [ %5728, %5705 ], [ %5154, %5234 ]
  %5733 = fmul fast float %171, %171
  %5734 = fmul fast float %172, %172
  %5735 = fadd fast float %5734, %5733
  %5736 = fmul fast float %173, %173
  %5737 = fadd fast float %5735, %5736
  %5738 = call float @dx.op.unary.f32(i32 24, float %5737)  ; Sqrt(value)
  %5739 = fsub fast float %5738, %5156
  %5740 = fmul fast float %5739, %5158
  %5741 = call float @dx.op.unary.f32(i32 7, float %5740)  ; Saturate(value)
  %5742 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5743 = extractvalue %dx.types.CBufRet.f32 %5155, 3
  %5744 = fmul fast float %5741, %65
  %5745 = fmul fast float %5744, %5742
  %5746 = fmul fast float %5744, %5743
  %5747 = fadd fast float %5746, 1.000000e+00
  %5748 = fmul fast float %5240, %5191
  %5749 = fmul fast float %5748, %5747
  %5750 = fmul fast float %5240, %5192
  %5751 = fmul fast float %5750, %5747
  %5752 = fmul fast float %5240, %5193
  %5753 = fmul fast float %5752, %5747
  %5754 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4883, float %4884, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5755 = fcmp fast ogt float %5754, 0x3E7FF19E20000000
  %5756 = fdiv fast float 1.000000e+00, %5754
  %5757 = select i1 %5755, float %5756, float 0.000000e+00
  %5758 = fmul fast float %5757, %4882
  %5759 = fmul fast float %5757, %4883
  %5760 = fmul fast float %5757, %4884
  %5761 = fadd fast float %5758, -1.000000e+00
  %5762 = fadd fast float %5759, -1.000000e+00
  %5763 = fadd fast float %5760, -1.000000e+00
  %5764 = fmul fast float %5761, 5.000000e-01
  %5765 = fmul fast float %5762, 5.000000e-01
  %5766 = fmul fast float %5763, 5.000000e-01
  %5767 = fadd fast float %5764, 1.000000e+00
  %5768 = fadd fast float %5765, 1.000000e+00
  %5769 = fadd fast float %5766, 1.000000e+00
  %5770 = fadd fast float %5745, %4281
  %5771 = fmul fast float %5730, %5235
  %5772 = fmul fast float %5731, %5236
  %5773 = fmul fast float %5732, %5237
  %5774 = fsub fast float 1.000000e+00, %4896
  %5775 = bitcast float %5774 to i32
  %5776 = sitofp i32 %5775 to float
  %5777 = fmul fast float %5776, 5.000000e+00
  %5778 = fadd fast float %5777, 0xC1EFBF8940000000
  %5779 = fptosi float %5778 to i32
  %5780 = bitcast i32 %5779 to float
  %5781 = fmul fast float %5770, %5780
  %5782 = fmul fast float %5748, %5781
  %5783 = fmul fast float %5782, %5767
  %5784 = fmul fast float %5750, %5781
  %5785 = fmul fast float %5784, %5768
  %5786 = fmul fast float %5752, %5781
  %5787 = fmul fast float %5786, %5769
  %5788 = fmul fast float %5749, %4277
  %5789 = fmul fast float %5751, %4277
  %5790 = fmul fast float %5753, %4277
  %5791 = fadd fast float %5771, %4273
  %5792 = fadd fast float %5791, %5783
  %5793 = fmul fast float %5792, %4277
  %5794 = fadd fast float %5772, %4274
  %5795 = fadd fast float %5794, %5785
  %5796 = fmul fast float %5795, %4277
  %5797 = fadd fast float %5773, %4275
  %5798 = fadd fast float %5797, %5787
  %5799 = fmul fast float %5798, %4277
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 3
  %5802 = fcmp fast oeq float %5801, 0.000000e+00
  br i1 %5802, label %7345, label %5803

; <label>:5803                                    ; preds = %5729
  %5804 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %5805 = extractvalue %dx.types.CBufRet.f32 %5800, 1
  %5806 = extractvalue %dx.types.CBufRet.f32 %5800, 2
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  %5809 = extractvalue %dx.types.CBufRet.f32 %5807, 1
  %5810 = extractvalue %dx.types.CBufRet.f32 %5807, 2
  %5811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.f32 %5811, 0
  %5813 = extractvalue %dx.types.CBufRet.f32 %5811, 1
  %5814 = call float @dx.op.dot3.f32(i32 55, float %5808, float %5809, float %5810, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5815 = select i1 %233, float %5812, float %5808
  %5816 = select i1 %233, float %5814, float %5809
  %5817 = select i1 %233, float %5813, float %5810
  %5818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.f32 %5818, 2
  %5820 = fmul fast float %5819, %121
  %5821 = fmul fast float %5819, %123
  %5822 = fmul fast float %5819, %125
  %5823 = fadd fast float %5820, %171
  %5824 = fadd fast float %5821, %172
  %5825 = fadd fast float %5822, %173
  %5826 = fcmp fast olt float %5801, 0.000000e+00
  br i1 %5826, label %6922, label %5827

; <label>:5827                                    ; preds = %5803
  %5828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5829 = extractvalue %dx.types.CBufRet.f32 %5828, 0
  %5830 = extractvalue %dx.types.CBufRet.f32 %5828, 1
  %5831 = extractvalue %dx.types.CBufRet.f32 %5828, 2
  %5832 = extractvalue %dx.types.CBufRet.f32 %5828, 3
  %5833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5834 = extractvalue %dx.types.CBufRet.f32 %5833, 0
  %5835 = extractvalue %dx.types.CBufRet.f32 %5833, 1
  %5836 = extractvalue %dx.types.CBufRet.f32 %5833, 2
  %5837 = extractvalue %dx.types.CBufRet.f32 %5833, 3
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 0
  %5840 = extractvalue %dx.types.CBufRet.f32 %5838, 1
  %5841 = extractvalue %dx.types.CBufRet.f32 %5838, 2
  %5842 = extractvalue %dx.types.CBufRet.f32 %5838, 3
  %5843 = fmul fast float %5829, %5823
  %5844 = call float @dx.op.tertiary.f32(i32 46, float %5824, float %5830, float %5843)  ; FMad(a,b,c)
  %5845 = call float @dx.op.tertiary.f32(i32 46, float %5825, float %5831, float %5844)  ; FMad(a,b,c)
  %5846 = fadd fast float %5845, %5832
  %5847 = fmul fast float %5834, %5823
  %5848 = call float @dx.op.tertiary.f32(i32 46, float %5824, float %5835, float %5847)  ; FMad(a,b,c)
  %5849 = call float @dx.op.tertiary.f32(i32 46, float %5825, float %5836, float %5848)  ; FMad(a,b,c)
  %5850 = fadd fast float %5849, %5837
  %5851 = fmul fast float %5839, %5823
  %5852 = call float @dx.op.tertiary.f32(i32 46, float %5824, float %5840, float %5851)  ; FMad(a,b,c)
  %5853 = call float @dx.op.tertiary.f32(i32 46, float %5825, float %5841, float %5852)  ; FMad(a,b,c)
  %5854 = fadd fast float %5853, %5842
  %5855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5856 = extractvalue %dx.types.CBufRet.f32 %5855, 0
  %5857 = extractvalue %dx.types.CBufRet.f32 %5855, 1
  %5858 = extractvalue %dx.types.CBufRet.f32 %5855, 3
  %5859 = fmul fast float %5858, %5846
  %5860 = fmul fast float %5858, %5850
  %5861 = fadd fast float %5859, %5856
  %5862 = fadd fast float %5860, %5857
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5865 = extractvalue %dx.types.CBufRet.f32 %5863, 1
  %5866 = extractvalue %dx.types.CBufRet.f32 %5863, 3
  %5867 = fmul fast float %5866, %5846
  %5868 = fmul fast float %5866, %5850
  %5869 = fadd fast float %5867, %5864
  %5870 = fadd fast float %5868, %5865
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 1
  %5873 = fsub fast float %5872, %5854
  %5874 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5875 = fmul fast float %5873, %5874
  %5876 = fsub fast float 1.000000e+00, %5875
  %5877 = call float @dx.op.unary.f32(i32 7, float %5876)  ; Saturate(value)
  %5878 = extractvalue %dx.types.CBufRet.f32 %5863, 2
  %5879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5880 = extractvalue %dx.types.CBufRet.f32 %5879, 2
  %5881 = fadd fast float %5880, %5878
  %5882 = fcmp fast ogt float %5881, 0.000000e+00
  br i1 %5882, label %5883, label %5907

; <label>:5883                                    ; preds = %5827
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 0
  %5886 = extractvalue %dx.types.CBufRet.f32 %5884, 1
  %5887 = fsub fast float %5869, %5885
  %5888 = fsub fast float %5870, %5886
  %5889 = fcmp fast olt float %5887, 0.000000e+00
  %5890 = fcmp fast olt float %5888, 0.000000e+00
  %5891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.f32 %5891, 0
  %5893 = extractvalue %dx.types.CBufRet.f32 %5891, 1
  %5894 = extractvalue %dx.types.CBufRet.f32 %5891, 2
  %5895 = extractvalue %dx.types.CBufRet.f32 %5891, 3
  %5896 = select i1 %5889, float %5892, float %5894
  %5897 = select i1 %5890, float %5893, float %5895
  %5898 = fmul fast float %5896, %5887
  %5899 = fmul fast float %5897, %5888
  %5900 = call float @dx.op.unary.f32(i32 6, float %5898)  ; FAbs(value)
  %5901 = call float @dx.op.unary.f32(i32 6, float %5899)  ; FAbs(value)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5818, 0
  %5903 = call float @dx.op.binary.f32(i32 35, float %5900, float %5901)  ; FMax(a,b)
  %5904 = fsub fast float %5902, %5903
  %5905 = call float @dx.op.unary.f32(i32 7, float %5904)  ; Saturate(value)
  %5906 = fmul fast float %5905, %5877
  br label %5907

; <label>:5907                                    ; preds = %5883, %5827
  %5908 = phi float [ %5906, %5883 ], [ 0.000000e+00, %5827 ]
  %5909 = extractvalue %dx.types.CBufRet.f32 %5855, 2
  %5910 = extractvalue %dx.types.CBufRet.f32 %5879, 1
  %5911 = fadd fast float %5910, %5909
  %5912 = fcmp fast ogt float %5911, 0.000000e+00
  %5913 = extractvalue %dx.types.CBufRet.f32 %5818, 0
  br i1 %5912, label %5914, label %5937

; <label>:5914                                    ; preds = %5907
  %5915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.f32 %5915, 0
  %5917 = extractvalue %dx.types.CBufRet.f32 %5915, 1
  %5918 = fsub fast float %5861, %5916
  %5919 = fsub fast float %5862, %5917
  %5920 = fcmp fast olt float %5918, 0.000000e+00
  %5921 = fcmp fast olt float %5919, 0.000000e+00
  %5922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5923 = extractvalue %dx.types.CBufRet.f32 %5922, 0
  %5924 = extractvalue %dx.types.CBufRet.f32 %5922, 1
  %5925 = extractvalue %dx.types.CBufRet.f32 %5922, 2
  %5926 = extractvalue %dx.types.CBufRet.f32 %5922, 3
  %5927 = select i1 %5920, float %5923, float %5925
  %5928 = select i1 %5921, float %5924, float %5926
  %5929 = fmul fast float %5927, %5918
  %5930 = fmul fast float %5928, %5919
  %5931 = call float @dx.op.unary.f32(i32 6, float %5929)  ; FAbs(value)
  %5932 = call float @dx.op.unary.f32(i32 6, float %5930)  ; FAbs(value)
  %5933 = call float @dx.op.binary.f32(i32 35, float %5931, float %5932)  ; FMax(a,b)
  %5934 = fsub fast float %5913, %5933
  %5935 = call float @dx.op.unary.f32(i32 7, float %5934)  ; Saturate(value)
  %5936 = fmul fast float %5935, %5877
  br label %5937

; <label>:5937                                    ; preds = %5914, %5907
  %5938 = phi float [ %5936, %5914 ], [ 0.000000e+00, %5907 ]
  %5939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5940 = extractvalue %dx.types.CBufRet.f32 %5939, 1
  %5941 = call float @dx.op.unary.f32(i32 7, float %5940)  ; Saturate(value)
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %5944 = extractvalue %dx.types.CBufRet.f32 %5942, 1
  %5945 = fsub fast float %5846, %5943
  %5946 = fsub fast float %5850, %5944
  %5947 = fcmp fast olt float %5945, 0.000000e+00
  %5948 = fcmp fast olt float %5946, 0.000000e+00
  %5949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5950 = extractvalue %dx.types.CBufRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.CBufRet.f32 %5949, 1
  %5952 = extractvalue %dx.types.CBufRet.f32 %5949, 2
  %5953 = extractvalue %dx.types.CBufRet.f32 %5949, 3
  %5954 = select i1 %5947, float %5950, float %5952
  %5955 = select i1 %5948, float %5951, float %5953
  %5956 = fmul fast float %5954, %5945
  %5957 = fmul fast float %5955, %5946
  %5958 = call float @dx.op.unary.f32(i32 6, float %5956)  ; FAbs(value)
  %5959 = call float @dx.op.unary.f32(i32 6, float %5957)  ; FAbs(value)
  %5960 = call float @dx.op.binary.f32(i32 35, float %5958, float %5959)  ; FMax(a,b)
  %5961 = fsub fast float %5913, %5960
  %5962 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5963 = call float @dx.op.binary.f32(i32 36, float %5962, float %5941)  ; FMin(a,b)
  %5964 = fmul fast float %5963, %5877
  %5965 = fsub fast float %5938, %5964
  %5966 = fsub fast float %5908, %5938
  %5967 = fsub fast float %5966, %5964
  %5968 = call float @dx.op.binary.f32(i32 35, float %5938, float %5908)  ; FMax(a,b)
  %5969 = call float @dx.op.binary.f32(i32 35, float %5964, float %5968)  ; FMax(a,b)
  %5970 = fcmp fast olt float %5969, 1.000000e+00
  br i1 %5970, label %5971, label %6369, !dx.controlflow.hints !105

; <label>:5971                                    ; preds = %5937
  %5972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.f32 %5972, 0
  %5974 = fcmp fast une float %5973, 0.000000e+00
  br i1 %5974, label %5975, label %6369, !dx.controlflow.hints !106

; <label>:5975                                    ; preds = %5971
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 0
  %5978 = extractvalue %dx.types.CBufRet.f32 %5976, 1
  %5979 = extractvalue %dx.types.CBufRet.f32 %5976, 2
  %5980 = extractvalue %dx.types.CBufRet.f32 %5976, 3
  %5981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5982 = extractvalue %dx.types.CBufRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.CBufRet.f32 %5981, 1
  %5984 = extractvalue %dx.types.CBufRet.f32 %5981, 2
  %5985 = extractvalue %dx.types.CBufRet.f32 %5981, 3
  %5986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5987 = extractvalue %dx.types.CBufRet.f32 %5986, 0
  %5988 = extractvalue %dx.types.CBufRet.f32 %5986, 1
  %5989 = extractvalue %dx.types.CBufRet.f32 %5986, 2
  %5990 = extractvalue %dx.types.CBufRet.f32 %5986, 3
  %5991 = fmul fast float %5977, %5823
  %5992 = call float @dx.op.tertiary.f32(i32 46, float %5824, float %5978, float %5991)  ; FMad(a,b,c)
  %5993 = call float @dx.op.tertiary.f32(i32 46, float %5825, float %5979, float %5992)  ; FMad(a,b,c)
  %5994 = fadd fast float %5993, %5980
  %5995 = fmul fast float %5982, %5823
  %5996 = call float @dx.op.tertiary.f32(i32 46, float %5824, float %5983, float %5995)  ; FMad(a,b,c)
  %5997 = call float @dx.op.tertiary.f32(i32 46, float %5825, float %5984, float %5996)  ; FMad(a,b,c)
  %5998 = fadd fast float %5997, %5985
  %5999 = fmul fast float %5987, %5823
  %6000 = call float @dx.op.tertiary.f32(i32 46, float %5824, float %5988, float %5999)  ; FMad(a,b,c)
  %6001 = call float @dx.op.tertiary.f32(i32 46, float %5825, float %5989, float %6000)  ; FMad(a,b,c)
  %6002 = fadd fast float %6001, %5990
  %6003 = fcmp fast oge float %5994, 1.000000e+00
  %6004 = fcmp fast oge float %5998, 1.000000e+00
  %6005 = or i1 %6003, %6004
  %6006 = fcmp fast olt float %5994, 0.000000e+00
  %6007 = fcmp fast olt float %5998, 0.000000e+00
  %6008 = or i1 %6006, %6007
  %6009 = or i1 %6005, %6008
  br i1 %6009, label %6369, label %6010, !dx.controlflow.hints !107

; <label>:6010                                    ; preds = %5975
  %6011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.f32 %6011, 0
  %6013 = extractvalue %dx.types.CBufRet.f32 %6011, 1
  %6014 = extractvalue %dx.types.CBufRet.f32 %6011, 2
  %6015 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.i32 %6015, 2
  %6017 = uitofp i32 %6016 to float
  %6018 = extractvalue %dx.types.CBufRet.i32 %6015, 3
  %6019 = uitofp i32 %6018 to float
  %6020 = extractvalue %dx.types.CBufRet.f32 %6011, 3
  %6021 = fmul fast float %6020, 2.000000e+00
  %6022 = fsub fast float %5994, %6012
  %6023 = fsub fast float %5998, %6013
  %6024 = fmul fast float %6021, %6022
  %6025 = fmul fast float %6021, %6023
  %6026 = fdiv fast float 1.000000e+00, %5806
  %6027 = fmul fast float %6025, %6026
  %6028 = call float @dx.op.unary.f32(i32 6, float %6027)  ; FAbs(value)
  %6029 = fmul fast float %6014, %5825
  %6030 = fmul fast float %6029, %6021
  %6031 = call float @dx.op.unary.f32(i32 6, float %6030)  ; FAbs(value)
  %6032 = call float @dx.op.unary.f32(i32 6, float %6024)  ; FAbs(value)
  %6033 = call float @dx.op.binary.f32(i32 35, float %6031, float %6028)  ; FMax(a,b)
  %6034 = call float @dx.op.binary.f32(i32 35, float %6032, float %6033)  ; FMax(a,b)
  %6035 = fmul fast float %6034, 2.000000e+00
  %6036 = call float @dx.op.unary.f32(i32 23, float %6035)  ; Log(value)
  %6037 = call float @dx.op.binary.f32(i32 35, float %6036, float %6017)  ; FMax(a,b)
  %6038 = call float @dx.op.unary.f32(i32 22, float %6037)  ; Frc(value)
  %6039 = fadd fast float %6038, 0xBFEA666660000000
  %6040 = fmul fast float %6039, 8.000000e+00
  %6041 = call float @dx.op.unary.f32(i32 7, float %6040)  ; Saturate(value)
  %6042 = call float @dx.op.unary.f32(i32 27, float %6037)  ; Round_ni(value)
  %6043 = fadd fast float %6042, %6041
  %6044 = call float @dx.op.binary.f32(i32 36, float %6043, float %6019)  ; FMin(a,b)
  %6045 = call float @dx.op.unary.f32(i32 27, float %6044)  ; Round_ni(value)
  %6046 = fsub fast float -0.000000e+00, %6045
  %6047 = call float @dx.op.unary.f32(i32 21, float %6046)  ; Exp(value)
  %6048 = fmul fast float %6047, %6021
  %6049 = fmul fast float %6048, %5994
  %6050 = fmul fast float %6048, %5998
  %6051 = fmul fast float %6049, 2.500000e-01
  %6052 = fmul fast float %6050, 2.500000e-01
  %6053 = fadd fast float %6051, 5.000000e-01
  %6054 = fadd fast float %6052, 5.000000e-01
  %6055 = fsub fast float %6019, %6017
  %6056 = fptoui float %6055 to i32
  %6057 = add i32 %6056, 320
  %6058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6057)  ; CBufferLoadLegacy(handle,regIndex)
  %6059 = extractvalue %dx.types.CBufRet.f32 %6058, 0
  %6060 = extractvalue %dx.types.CBufRet.f32 %6058, 1
  %6061 = fcmp fast une float %6044, %6019
  %6062 = fsub fast float %5994, %6059
  %6063 = fsub fast float %5998, %6060
  %6064 = call float @dx.op.unary.f32(i32 6, float %6062)  ; FAbs(value)
  %6065 = call float @dx.op.unary.f32(i32 6, float %6063)  ; FAbs(value)
  %6066 = fmul fast float %6064, %6048
  %6067 = fmul fast float %6065, %6048
  %6068 = fcmp fast olt float %6066, 1.000000e+00
  %6069 = fcmp fast olt float %6067, 1.000000e+00
  %6070 = and i1 %6068, %6069
  %6071 = or i1 %6061, %6070
  br i1 %6071, label %6072, label %6369, !dx.controlflow.hints !108

; <label>:6072                                    ; preds = %6010
  %6073 = fmul fast float %6050, 5.000000e-01
  %6074 = fmul fast float %6049, 5.000000e-01
  %6075 = fadd fast float %6073, 5.000000e-01
  %6076 = fadd fast float %6074, 5.000000e-01
  %6077 = sitofp i32 %6016 to float
  %6078 = fsub fast float %6044, %6077
  %6079 = call float @dx.op.unary.f32(i32 27, float %6078)  ; Round_ni(value)
  %6080 = call float @dx.op.unary.f32(i32 22, float %6044)  ; Frc(value)
  %6081 = call float @dx.op.unary.f32(i32 22, float %6076)  ; Frc(value)
  %6082 = call float @dx.op.unary.f32(i32 22, float %6075)  ; Frc(value)
  %6083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6081, float %6082, float %6079, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6084 = extractvalue %dx.types.ResRet.f32 %6083, 0
  %6085 = extractvalue %dx.types.ResRet.f32 %6083, 1
  %6086 = extractvalue %dx.types.ResRet.f32 %6083, 2
  %6087 = extractvalue %dx.types.ResRet.f32 %6083, 3
  %6088 = fcmp fast ogt float %6080, 0.000000e+00
  br i1 %6088, label %6089, label %6110, !dx.controlflow.hints !109

; <label>:6089                                    ; preds = %6072
  %6090 = fadd fast float %6079, 1.000000e+00
  %6091 = call float @dx.op.unary.f32(i32 22, float %6053)  ; Frc(value)
  %6092 = call float @dx.op.unary.f32(i32 22, float %6054)  ; Frc(value)
  %6093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6091, float %6092, float %6090, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6094 = extractvalue %dx.types.ResRet.f32 %6093, 0
  %6095 = extractvalue %dx.types.ResRet.f32 %6093, 1
  %6096 = extractvalue %dx.types.ResRet.f32 %6093, 2
  %6097 = extractvalue %dx.types.ResRet.f32 %6093, 3
  %6098 = fsub fast float %6094, %6084
  %6099 = fsub fast float %6095, %6085
  %6100 = fsub fast float %6096, %6086
  %6101 = fsub fast float %6097, %6087
  %6102 = fmul fast float %6098, %6080
  %6103 = fmul fast float %6099, %6080
  %6104 = fmul fast float %6100, %6080
  %6105 = fmul fast float %6101, %6080
  %6106 = fadd fast float %6102, %6084
  %6107 = fadd fast float %6103, %6085
  %6108 = fadd fast float %6104, %6086
  %6109 = fadd fast float %6105, %6087
  br label %6110

; <label>:6110                                    ; preds = %6089, %6072
  %6111 = phi float [ %6106, %6089 ], [ %6084, %6072 ]
  %6112 = phi float [ %6107, %6089 ], [ %6085, %6072 ]
  %6113 = phi float [ %6108, %6089 ], [ %6086, %6072 ]
  %6114 = phi float [ %6109, %6089 ], [ %6087, %6072 ]
  %6115 = fadd fast float %6111, -5.000000e-01
  %6116 = fadd fast float %6113, -5.000000e-01
  %6117 = fmul fast float %6115, 0xBFD5555560000000
  %6118 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6116, float %6117)  ; FMad(a,b,c)
  %6119 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6112, float 0.000000e+00)  ; FMad(a,b,c)
  %6120 = fadd fast float %6119, %6114
  %6121 = fmul fast float %6115, -7.500000e-01
  %6122 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6116, float %6121)  ; FMad(a,b,c)
  %6123 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6112, float 0.000000e+00)  ; FMad(a,b,c)
  %6124 = fadd fast float %6123, %6114
  %6125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6126 = extractvalue %dx.types.CBufRet.f32 %6125, 0
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 0
  %6129 = extractvalue %dx.types.CBufRet.f32 %6127, 1
  %6130 = extractvalue %dx.types.CBufRet.f32 %6127, 2
  %6131 = extractvalue %dx.types.CBufRet.f32 %6127, 3
  %6132 = fsub fast float %6128, %6118
  %6133 = fsub fast float %6129, %6120
  %6134 = fsub fast float %6130, %6122
  %6135 = fsub fast float %6131, %6124
  %6136 = fmul fast float %6132, %6126
  %6137 = fmul fast float %6133, %6126
  %6138 = fmul fast float %6134, %6126
  %6139 = fmul fast float %6135, %6126
  %6140 = fadd fast float %6136, %6118
  %6141 = fadd fast float %6137, %6120
  %6142 = fadd fast float %6138, %6122
  %6143 = fadd fast float %6139, %6124
  %6144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6145 = extractvalue %dx.types.ResRet.i32 %6144, 0
  %6146 = and i32 %6145, 536870911
  %6147 = uitofp i32 %6146 to float
  %6148 = fmul fast float %6147, %5994
  %6149 = fmul fast float %6147, %5998
  %6150 = fptoui float %6148 to i32
  %6151 = fptoui float %6149 to i32
  %6152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6153 = extractvalue %dx.types.ResRet.i32 %6152, 0
  %6154 = and i32 %6153, 31
  %6155 = lshr i32 %6150, %6154
  %6156 = lshr i32 %6151, %6154
  %6157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6158 = extractvalue %dx.types.ResRet.i32 %6157, 0
  %6159 = and i32 %6158, 31
  %6160 = shl i32 1, %6159
  %6161 = call i32 @dx.op.binary.i32(i32 40, i32 %6160, i32 4)  ; UMin(a,b)
  %6162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6163 = extractvalue %dx.types.ResRet.i32 %6162, 0
  %6164 = extractvalue %dx.types.ResRet.i32 %6162, 1
  %6165 = icmp eq i32 %6161, 0
  br i1 %6165, label %6207, label %6166

; <label>:6166                                    ; preds = %6110
  br label %6167

; <label>:6167                                    ; preds = %6195, %6166
  %6168 = phi i32 [ %6198, %6195 ], [ 0, %6166 ]
  %6169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6170 = extractvalue %dx.types.ResRet.i32 %6169, 0
  %6171 = lshr i32 %6170, 16
  %6172 = and i32 %6171, 31
  %6173 = shl i32 %6156, %6172
  %6174 = add i32 %6173, %6155
  %6175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6176 = extractvalue %dx.types.ResRet.i32 %6175, 0
  %6177 = and i32 %6176, 31
  %6178 = shl i32 %6174, %6177
  %6179 = add i32 %6178, %6168
  %6180 = shl i32 %6179, 2
  %6181 = add i32 %6180, 32
  %6182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6181, i32 undef)  ; BufferLoad(srv,index,wot)
  %6183 = extractvalue %dx.types.ResRet.i32 %6182, 0
  %6184 = icmp slt i32 %6183, 0
  %6185 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6168
  %6186 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6168
  %6187 = bitcast float* %6185 to i32*
  %6188 = bitcast float* %6186 to i32*
  br i1 %6184, label %6189, label %6195

; <label>:6189                                    ; preds = %6167
  %6190 = and i32 %6183, 1073741823
  %6191 = add nuw nsw i32 %6190, 20
  %6192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6191, i32 undef)  ; BufferLoad(srv,index,wot)
  %6193 = extractvalue %dx.types.ResRet.i32 %6192, 0
  %6194 = extractvalue %dx.types.ResRet.i32 %6192, 1
  br label %6195

; <label>:6195                                    ; preds = %6189, %6167
  %6196 = phi i32 [ %6193, %6189 ], [ %6163, %6167 ]
  %6197 = phi i32 [ %6194, %6189 ], [ %6164, %6167 ]
  store i32 %6196, i32* %6187, align 4
  store i32 %6197, i32* %6188, align 4
  %6198 = add nuw i32 %6168, 1
  %6199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.i32 %6199, 2
  %6201 = icmp eq i32 %6200, 0
  %6202 = icmp ugt i32 %6183, -1073741825
  %6203 = and i1 %6202, %6201
  %6204 = icmp ult i32 %6198, %6161
  %6205 = and i1 %6203, %6204
  br i1 %6205, label %6167, label %6206

; <label>:6206                                    ; preds = %6195
  br label %6207

; <label>:6207                                    ; preds = %6206, %6110
  %6208 = phi i32 [ 0, %6110 ], [ %6198, %6206 ]
  %6209 = extractvalue %dx.types.CBufRet.f32 %5972, 2
  %6210 = fptoui float %6209 to i32
  %6211 = icmp eq i32 %6210, 0
  br i1 %6211, label %6263, label %6212

; <label>:6212                                    ; preds = %6207
  br label %6213

; <label>:6213                                    ; preds = %6258, %6212
  %6214 = phi i32 [ %6259, %6258 ], [ %6208, %6212 ]
  %6215 = phi i32 [ %6260, %6258 ], [ 0, %6212 ]
  %6216 = lshr i32 %6215, 2
  %6217 = and i32 %6215, 3
  %6218 = add nuw nsw i32 %6216, 83
  %6219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6218)  ; CBufferLoadLegacy(handle,regIndex)
  %6220 = extractvalue %dx.types.CBufRet.i32 %6219, 0
  %6221 = extractvalue %dx.types.CBufRet.i32 %6219, 1
  %6222 = extractvalue %dx.types.CBufRet.i32 %6219, 2
  %6223 = extractvalue %dx.types.CBufRet.i32 %6219, 3
  %6224 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6220, i32* %6224, align 4
  %6225 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6221, i32* %6225, align 4
  %6226 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6222, i32* %6226, align 4
  %6227 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6223, i32* %6227, align 4
  %6228 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6217
  %6229 = load i32, i32* %6228, align 4, !tbaa !110, !noalias !114
  %6230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6231 = extractvalue %dx.types.ResRet.i32 %6230, 0
  %6232 = lshr i32 %6231, 16
  %6233 = and i32 %6232, 31
  %6234 = shl i32 %6156, %6233
  %6235 = add i32 %6234, %6155
  %6236 = shl i32 %6235, 2
  %6237 = add i32 %6236, %6229
  %6238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6237, i32 undef)  ; BufferLoad(srv,index,wot)
  %6239 = extractvalue %dx.types.ResRet.i32 %6238, 0
  %6240 = icmp eq i32 %6239, 0
  br i1 %6240, label %6258, label %6241

; <label>:6241                                    ; preds = %6213
  %6242 = icmp slt i32 %6239, 0
  %6243 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6214
  %6244 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6214
  %6245 = bitcast float* %6243 to i32*
  %6246 = bitcast float* %6244 to i32*
  br i1 %6242, label %6247, label %6254

; <label>:6247                                    ; preds = %6241
  %6248 = and i32 %6239, 1073741823
  %6249 = add i32 %6229, 20
  %6250 = add i32 %6249, %6248
  %6251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6250, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.i32 %6251, 0
  %6253 = extractvalue %dx.types.ResRet.i32 %6251, 1
  br label %6254

; <label>:6254                                    ; preds = %6247, %6241
  %6255 = phi i32 [ %6252, %6247 ], [ %6163, %6241 ]
  %6256 = phi i32 [ %6253, %6247 ], [ %6164, %6241 ]
  store i32 %6255, i32* %6245, align 4
  store i32 %6256, i32* %6246, align 4
  %6257 = add i32 %6214, 1
  br label %6258

; <label>:6258                                    ; preds = %6254, %6213
  %6259 = phi i32 [ %6214, %6213 ], [ %6257, %6254 ]
  %6260 = add nuw i32 %6215, 1
  %6261 = icmp eq i32 %6260, %6210
  br i1 %6261, label %6262, label %6213

; <label>:6262                                    ; preds = %6258
  br label %6263

; <label>:6263                                    ; preds = %6262, %6207
  %6264 = phi i32 [ %6208, %6207 ], [ %6259, %6262 ]
  %6265 = icmp eq i32 %6264, 1
  %6266 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  %6267 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  br i1 %6265, label %6268, label %6271

; <label>:6268                                    ; preds = %6263
  %6269 = load float, float* %6266, align 4
  %6270 = load float, float* %6267, align 4
  br label %6298

; <label>:6271                                    ; preds = %6263
  %6272 = load float, float* %6266, align 4
  %6273 = load float, float* %6267, align 4
  %6274 = fdiv fast float 1.000000e+00, %6273
  %6275 = fsub fast float %6272, %6274
  %6276 = icmp ugt i32 %6264, 1
  br i1 %6276, label %6277, label %6293

; <label>:6277                                    ; preds = %6271
  br label %6278

; <label>:6278                                    ; preds = %6278, %6277
  %6279 = phi float [ %6288, %6278 ], [ %6275, %6277 ]
  %6280 = phi float [ %6289, %6278 ], [ %6272, %6277 ]
  %6281 = phi i32 [ %6290, %6278 ], [ 1, %6277 ]
  %6282 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6281
  %6283 = load float, float* %6282, align 4
  %6284 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6281
  %6285 = load float, float* %6284, align 4
  %6286 = fdiv fast float 1.000000e+00, %6285
  %6287 = fsub fast float %6283, %6286
  %6288 = call float @dx.op.binary.f32(i32 36, float %6279, float %6287)  ; FMin(a,b)
  %6289 = call float @dx.op.binary.f32(i32 35, float %6280, float %6283)  ; FMax(a,b)
  %6290 = add nuw i32 %6281, 1
  %6291 = icmp eq i32 %6290, %6264
  br i1 %6291, label %6292, label %6278

; <label>:6292                                    ; preds = %6278
  br label %6293

; <label>:6293                                    ; preds = %6292, %6271
  %6294 = phi float [ %6275, %6271 ], [ %6288, %6292 ]
  %6295 = phi float [ %6272, %6271 ], [ %6289, %6292 ]
  %6296 = fsub fast float %6295, %6294
  %6297 = fdiv fast float 1.000000e+00, %6296
  br label %6298

; <label>:6298                                    ; preds = %6293, %6268
  %6299 = phi float [ %6269, %6268 ], [ %6295, %6293 ]
  %6300 = phi float [ %6270, %6268 ], [ %6297, %6293 ]
  %6301 = fadd fast float %6002, %6299
  %6302 = fmul fast float %6301, %6300
  %6303 = call float @dx.op.unary.f32(i32 7, float %6302)  ; Saturate(value)
  %6304 = fmul fast float %6303, 2.000000e+00
  %6305 = fsub fast float 1.000000e+00, %6304
  %6306 = fmul fast float %6140, %6140
  %6307 = fsub fast float %6141, %6306
  %6308 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6307)  ; FMax(a,b)
  %6309 = fdiv fast float 1.000000e+00, %6308
  %6310 = fmul fast float %6141, %6140
  %6311 = fsub fast float %6142, %6310
  %6312 = fsub fast float %6305, %6140
  %6313 = fmul fast float %6305, %6305
  %6314 = fsub fast float %6313, %6141
  %6315 = fmul fast float %6309, %6311
  %6316 = fmul fast float %6315, %6312
  %6317 = fsub fast float %6314, %6316
  %6318 = fmul fast float %6141, %6141
  %6319 = fsub fast float %6143, %6318
  %6320 = fmul fast float %6311, %6311
  %6321 = fmul fast float %6320, %6309
  %6322 = fsub fast float %6319, %6321
  %6323 = fdiv fast float %6317, %6322
  %6324 = fmul fast float %6323, %6311
  %6325 = fsub fast float %6312, %6324
  %6326 = fmul fast float %6325, %6309
  %6327 = fmul fast float %6326, %6140
  %6328 = fsub fast float 1.000000e+00, %6327
  %6329 = fmul fast float %6323, %6141
  %6330 = fsub fast float %6328, %6329
  %6331 = fmul fast float %6326, %6326
  %6332 = fmul fast float %6323, 4.000000e+00
  %6333 = fmul fast float %6332, %6330
  %6334 = fsub fast float %6331, %6333
  %6335 = call float @dx.op.unary.f32(i32 24, float %6334)  ; Sqrt(value)
  %6336 = fcmp fast oge float %6326, 0.000000e+00
  %6337 = fsub fast float -0.000000e+00, %6335
  %6338 = select i1 %6336, float %6337, float %6335
  %6339 = fsub fast float %6338, %6326
  %6340 = fdiv fast float %6339, %6323
  %6341 = fdiv fast float %6330, %6339
  %6342 = fmul fast float %6340, 5.000000e-01
  %6343 = fmul fast float %6341, 2.000000e+00
  %6344 = select i1 %6336, float %6342, float %6343
  %6345 = select i1 %6336, float %6343, float %6342
  %6346 = call float @dx.op.binary.f32(i32 35, float %6344, float %6345)  ; FMax(a,b)
  %6347 = call float @dx.op.binary.f32(i32 36, float %6344, float %6345)  ; FMin(a,b)
  %6348 = fcmp fast ogt float %6305, %6346
  %6349 = fsub fast float %6305, %6347
  %6350 = fsub fast float %6305, %6346
  %6351 = fsub fast float %6346, %6347
  %6352 = select i1 %6348, float %6350, float %6351
  %6353 = fmul float %6349, %6352
  %6354 = select i1 %6348, float %6347, float %6305
  %6355 = fcmp fast ogt float %6305, %6347
  %6356 = fmul fast float %6354, %6346
  %6357 = fadd fast float %6354, %6346
  %6358 = fmul fast float %6357, %6140
  %6359 = fadd fast float %6356, %6141
  %6360 = fsub fast float %6359, %6358
  %6361 = fdiv fast float %6360, %6353
  %6362 = select i1 %6355, float %6361, float 0.000000e+00
  %6363 = fsub fast float 1.000000e+00, %6362
  %6364 = select i1 %6348, float %6363, float %6362
  %6365 = call float @dx.op.unary.f32(i32 7, float %6364)  ; Saturate(value)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6125, 3
  %6367 = fmul fast float %6366, %6365
  %6368 = fsub fast float 1.000000e+00, %6367
  br label %6369

; <label>:6369                                    ; preds = %6298, %6010, %5975, %5971, %5937
  %6370 = phi float [ 1.000000e+00, %5937 ], [ %6368, %6298 ], [ 1.000000e+00, %5975 ], [ 1.000000e+00, %6010 ], [ 1.000000e+00, %5971 ]
  %6371 = fcmp fast ogt float %5967, 0.000000e+00
  br i1 %6371, label %6372, label %6534, !dx.controlflow.hints !123

; <label>:6372                                    ; preds = %6369
  %6373 = fadd fast float %5880, %5854
  %6374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6375 = extractvalue %dx.types.CBufRet.f32 %6374, 2
  %6376 = extractvalue %dx.types.CBufRet.f32 %6374, 3
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 2
  %6379 = call float @dx.op.binary.f32(i32 35, float %6373, float 0.000000e+00)  ; FMax(a,b)
  %6380 = fadd fast float %6379, 0x3F10000000000000
  %6381 = fcmp fast oeq float %6378, 0.000000e+00
  br i1 %6381, label %6382, label %6449

; <label>:6382                                    ; preds = %6372
  %6383 = extractvalue %dx.types.CBufRet.f32 %6374, 1
  %6384 = extractvalue %dx.types.CBufRet.f32 %6374, 0
  %6385 = fmul fast float %6384, %5869
  %6386 = fmul fast float %6383, %5870
  %6387 = fadd fast float %6385, 5.000000e-01
  %6388 = call float @dx.op.unary.f32(i32 27, float %6387)  ; Round_ni(value)
  %6389 = fadd fast float %6386, 5.000000e-01
  %6390 = call float @dx.op.unary.f32(i32 27, float %6389)  ; Round_ni(value)
  %6391 = fsub fast float %6387, %6388
  %6392 = fsub fast float %6389, %6390
  %6393 = fadd fast float %6388, -5.000000e-01
  %6394 = fadd fast float %6390, -5.000000e-01
  %6395 = fmul fast float %6391, 2.000000e+00
  %6396 = fsub fast float 3.000000e+00, %6395
  %6397 = fadd fast float %6395, 1.000000e+00
  %6398 = fsub fast float 2.000000e+00, %6391
  %6399 = bitcast float %6396 to i32
  %6400 = sub nsw i32 2129859010, %6399
  %6401 = bitcast i32 %6400 to float
  %6402 = fmul fast float %6401, %6398
  %6403 = fadd fast float %6402, -1.000000e+00
  %6404 = bitcast float %6397 to i32
  %6405 = sub nsw i32 2129859010, %6404
  %6406 = bitcast i32 %6405 to float
  %6407 = fmul fast float %6406, %6391
  %6408 = fadd fast float %6407, 1.000000e+00
  %6409 = fmul fast float %6392, 2.000000e+00
  %6410 = fsub fast float 3.000000e+00, %6409
  %6411 = fadd fast float %6409, 1.000000e+00
  %6412 = fsub fast float 2.000000e+00, %6392
  %6413 = bitcast float %6410 to i32
  %6414 = sub nsw i32 2129859010, %6413
  %6415 = bitcast i32 %6414 to float
  %6416 = fmul fast float %6415, %6412
  %6417 = fadd fast float %6416, -1.000000e+00
  %6418 = bitcast float %6411 to i32
  %6419 = sub nsw i32 2129859010, %6418
  %6420 = bitcast i32 %6419 to float
  %6421 = fmul fast float %6420, %6392
  %6422 = fadd fast float %6421, 1.000000e+00
  %6423 = fadd fast float %6403, %6393
  %6424 = fmul fast float %6423, %6375
  %6425 = fadd fast float %6417, %6394
  %6426 = fmul fast float %6425, %6376
  %6427 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6424, float %6426, float undef, float undef, i32 0, i32 0, i32 undef, float %6380)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6428 = extractvalue %dx.types.ResRet.f32 %6427, 0
  %6429 = fmul fast float %6428, %6396
  %6430 = fadd fast float %6408, %6393
  %6431 = fmul fast float %6430, %6375
  %6432 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6431, float %6426, float undef, float undef, i32 0, i32 0, i32 undef, float %6380)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6433 = extractvalue %dx.types.ResRet.f32 %6432, 0
  %6434 = fmul fast float %6433, %6397
  %6435 = fadd fast float %6422, %6394
  %6436 = fmul fast float %6435, %6376
  %6437 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6424, float %6436, float undef, float undef, i32 0, i32 0, i32 undef, float %6380)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6438 = extractvalue %dx.types.ResRet.f32 %6437, 0
  %6439 = fmul fast float %6438, %6396
  %6440 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6431, float %6436, float undef, float undef, i32 0, i32 0, i32 undef, float %6380)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6441 = extractvalue %dx.types.ResRet.f32 %6440, 0
  %6442 = fmul fast float %6441, %6397
  %6443 = fadd fast float %6442, %6439
  %6444 = fmul fast float %6443, %6411
  %6445 = fadd fast float %6434, %6429
  %6446 = fmul fast float %6445, %6410
  %6447 = fadd fast float %6446, %6444
  %6448 = fmul fast float %6447, 6.250000e-02
  br label %6534

; <label>:6449                                    ; preds = %6372
  %6450 = fmul fast float %244, 0x401921FB60000000
  %6451 = call float @dx.op.unary.f32(i32 13, float %6450)  ; Sin(value)
  %6452 = call float @dx.op.unary.f32(i32 12, float %6450)  ; Cos(value)
  %6453 = fsub fast float -0.000000e+00, %6451
  br label %6454

; <label>:6454                                    ; preds = %6503, %6449
  %6455 = phi float [ 0.000000e+00, %6449 ], [ %6498, %6503 ]
  %6456 = phi float [ 0.000000e+00, %6449 ], [ %6500, %6503 ]
  %6457 = phi i32 [ 0, %6449 ], [ %6504, %6503 ]
  %6458 = mul i32 %6457, 2
  %6459 = add i32 0, %6458
  %6460 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6459
  %6461 = load float, float* %6460, align 4
  %6462 = mul i32 %6457, 2
  %6463 = add i32 1, %6462
  %6464 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6463
  %6465 = load float, float* %6464, align 4
  %6466 = fmul fast float %6461, %6452
  %6467 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %6453, float %6466)  ; FMad(a,b,c)
  %6468 = fmul fast float %6461, %6451
  %6469 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %6452, float %6468)  ; FMad(a,b,c)
  %6470 = fmul fast float %6467, %6378
  %6471 = fmul fast float %6469, %6378
  %6472 = fadd fast float %6470, %5869
  %6473 = fadd fast float %6471, %5870
  %6474 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6472, float %6473, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6475 = extractvalue %dx.types.ResRet.f32 %6474, 0
  %6476 = extractvalue %dx.types.ResRet.f32 %6474, 1
  %6477 = extractvalue %dx.types.ResRet.f32 %6474, 2
  %6478 = extractvalue %dx.types.ResRet.f32 %6474, 3
  %6479 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %6475, float* %6479, align 4
  %6480 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %6476, float* %6480, align 4
  %6481 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %6477, float* %6481, align 4
  %6482 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %6478, float* %6482, align 4
  %6483 = fsub fast float %6475, %6380
  %6484 = fcmp fast olt float %6483, 0.000000e+00
  %6485 = select i1 %6484, float 0.000000e+00, float 1.000000e+00
  %6486 = fadd fast float %6485, %6455
  %6487 = fmul fast float %6485, %6483
  %6488 = fadd fast float %6487, %6456
  br label %6489

; <label>:6489                                    ; preds = %6489, %6454
  %6490 = phi i32 [ 1, %6454 ], [ %6501, %6489 ]
  %6491 = phi float [ %6488, %6454 ], [ %6500, %6489 ]
  %6492 = phi float [ %6486, %6454 ], [ %6498, %6489 ]
  %6493 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %6490
  %6494 = load float, float* %6493, align 4, !tbaa !124, !noalias !114
  %6495 = fsub fast float %6494, %6380
  %6496 = fcmp fast olt float %6495, 0.000000e+00
  %6497 = select i1 %6496, float 0.000000e+00, float 1.000000e+00
  %6498 = fadd fast float %6497, %6492
  %6499 = fmul fast float %6497, %6495
  %6500 = fadd fast float %6499, %6491
  %6501 = add nuw nsw i32 %6490, 1
  %6502 = icmp eq i32 %6501, 4
  br i1 %6502, label %6503, label %6489, !llvm.loop !126

; <label>:6503                                    ; preds = %6489
  %6504 = add nuw nsw i32 %6457, 1
  %6505 = icmp eq i32 %6504, 8
  br i1 %6505, label %6506, label %6454, !llvm.loop !127

; <label>:6506                                    ; preds = %6503
  %6507 = fdiv fast float 1.000000e+00, %6498
  %6508 = fmul fast float %6507, %6500
  %6509 = fdiv fast float 1.000000e+00, %6380
  %6510 = fmul fast float %6508, %6509
  %6511 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  %6512 = call float @dx.op.binary.f32(i32 35, float %6511, float 0.000000e+00)  ; FMax(a,b)
  %6513 = fmul fast float %6498, 3.125000e-02
  %6514 = call float @dx.op.unary.f32(i32 7, float %6513)  ; Saturate(value)
  %6515 = fmul fast float %6514, 2.000000e+00
  %6516 = fadd fast float %6515, -1.000000e+00
  %6517 = fcmp fast ogt float %6516, 0.000000e+00
  %6518 = fcmp fast olt float %6516, 0.000000e+00
  %6519 = zext i1 %6517 to i32
  %6520 = zext i1 %6518 to i32
  %6521 = sub nsw i32 %6519, %6520
  %6522 = sitofp i32 %6521 to float
  %6523 = fmul fast float %6522, %6516
  %6524 = fsub fast float 1.000000e+00, %6523
  %6525 = fmul fast float %6524, %6524
  %6526 = fmul fast float %6525, %6524
  %6527 = fsub fast float %6524, %6526
  %6528 = fmul fast float %6527, %6512
  %6529 = fsub fast float 1.000000e+00, %6526
  %6530 = fsub fast float %6529, %6528
  %6531 = fmul fast float %6522, 5.000000e-01
  %6532 = fmul fast float %6531, %6530
  %6533 = fsub fast float 5.000000e-01, %6532
  br label %6534

; <label>:6534                                    ; preds = %6506, %6382, %6369
  %6535 = phi float [ 1.000000e+00, %6369 ], [ %6448, %6382 ], [ %6533, %6506 ]
  %6536 = fcmp fast ogt float %5965, 0.000000e+00
  br i1 %6536, label %6537, label %6701, !dx.controlflow.hints !128

; <label>:6537                                    ; preds = %6534
  %6538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.f32 %6538, 1
  %6540 = fadd fast float %6539, %5854
  %6541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6541, 2
  %6543 = extractvalue %dx.types.CBufRet.f32 %6541, 3
  %6544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6545 = extractvalue %dx.types.CBufRet.f32 %6544, 1
  %6546 = call float @dx.op.binary.f32(i32 35, float %6540, float 0.000000e+00)  ; FMax(a,b)
  %6547 = fadd fast float %6546, 0x3F10000000000000
  %6548 = fcmp fast oeq float %6545, 0.000000e+00
  br i1 %6548, label %6549, label %6616

; <label>:6549                                    ; preds = %6537
  %6550 = extractvalue %dx.types.CBufRet.f32 %6541, 1
  %6551 = extractvalue %dx.types.CBufRet.f32 %6541, 0
  %6552 = fmul fast float %6551, %5861
  %6553 = fmul fast float %6550, %5862
  %6554 = fadd fast float %6552, 5.000000e-01
  %6555 = call float @dx.op.unary.f32(i32 27, float %6554)  ; Round_ni(value)
  %6556 = fadd fast float %6553, 5.000000e-01
  %6557 = call float @dx.op.unary.f32(i32 27, float %6556)  ; Round_ni(value)
  %6558 = fsub fast float %6554, %6555
  %6559 = fsub fast float %6556, %6557
  %6560 = fadd fast float %6555, -5.000000e-01
  %6561 = fadd fast float %6557, -5.000000e-01
  %6562 = fmul fast float %6558, 2.000000e+00
  %6563 = fsub fast float 3.000000e+00, %6562
  %6564 = fadd fast float %6562, 1.000000e+00
  %6565 = fsub fast float 2.000000e+00, %6558
  %6566 = bitcast float %6563 to i32
  %6567 = sub nsw i32 2129859010, %6566
  %6568 = bitcast i32 %6567 to float
  %6569 = fmul fast float %6568, %6565
  %6570 = fadd fast float %6569, -1.000000e+00
  %6571 = bitcast float %6564 to i32
  %6572 = sub nsw i32 2129859010, %6571
  %6573 = bitcast i32 %6572 to float
  %6574 = fmul fast float %6573, %6558
  %6575 = fadd fast float %6574, 1.000000e+00
  %6576 = fmul fast float %6559, 2.000000e+00
  %6577 = fsub fast float 3.000000e+00, %6576
  %6578 = fadd fast float %6576, 1.000000e+00
  %6579 = fsub fast float 2.000000e+00, %6559
  %6580 = bitcast float %6577 to i32
  %6581 = sub nsw i32 2129859010, %6580
  %6582 = bitcast i32 %6581 to float
  %6583 = fmul fast float %6582, %6579
  %6584 = fadd fast float %6583, -1.000000e+00
  %6585 = bitcast float %6578 to i32
  %6586 = sub nsw i32 2129859010, %6585
  %6587 = bitcast i32 %6586 to float
  %6588 = fmul fast float %6587, %6559
  %6589 = fadd fast float %6588, 1.000000e+00
  %6590 = fadd fast float %6570, %6560
  %6591 = fmul fast float %6590, %6542
  %6592 = fadd fast float %6584, %6561
  %6593 = fmul fast float %6592, %6543
  %6594 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6591, float %6593, float undef, float undef, i32 0, i32 0, i32 undef, float %6547)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6595 = extractvalue %dx.types.ResRet.f32 %6594, 0
  %6596 = fmul fast float %6595, %6563
  %6597 = fadd fast float %6575, %6560
  %6598 = fmul fast float %6597, %6542
  %6599 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6598, float %6593, float undef, float undef, i32 0, i32 0, i32 undef, float %6547)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6600 = extractvalue %dx.types.ResRet.f32 %6599, 0
  %6601 = fmul fast float %6600, %6564
  %6602 = fadd fast float %6589, %6561
  %6603 = fmul fast float %6602, %6543
  %6604 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6591, float %6603, float undef, float undef, i32 0, i32 0, i32 undef, float %6547)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6605 = extractvalue %dx.types.ResRet.f32 %6604, 0
  %6606 = fmul fast float %6605, %6563
  %6607 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6598, float %6603, float undef, float undef, i32 0, i32 0, i32 undef, float %6547)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6608 = extractvalue %dx.types.ResRet.f32 %6607, 0
  %6609 = fmul fast float %6608, %6564
  %6610 = fadd fast float %6609, %6606
  %6611 = fmul fast float %6610, %6578
  %6612 = fadd fast float %6601, %6596
  %6613 = fmul fast float %6612, %6577
  %6614 = fadd fast float %6613, %6611
  %6615 = fmul fast float %6614, 6.250000e-02
  br label %6701

; <label>:6616                                    ; preds = %6537
  %6617 = fmul fast float %244, 0x401921FB60000000
  %6618 = call float @dx.op.unary.f32(i32 13, float %6617)  ; Sin(value)
  %6619 = call float @dx.op.unary.f32(i32 12, float %6617)  ; Cos(value)
  %6620 = fsub fast float -0.000000e+00, %6618
  br label %6621

; <label>:6621                                    ; preds = %6670, %6616
  %6622 = phi float [ 0.000000e+00, %6616 ], [ %6665, %6670 ]
  %6623 = phi float [ 0.000000e+00, %6616 ], [ %6667, %6670 ]
  %6624 = phi i32 [ 0, %6616 ], [ %6671, %6670 ]
  %6625 = mul i32 %6624, 2
  %6626 = add i32 0, %6625
  %6627 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6626
  %6628 = load float, float* %6627, align 4
  %6629 = mul i32 %6624, 2
  %6630 = add i32 1, %6629
  %6631 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6630
  %6632 = load float, float* %6631, align 4
  %6633 = fmul fast float %6628, %6619
  %6634 = call float @dx.op.tertiary.f32(i32 46, float %6632, float %6620, float %6633)  ; FMad(a,b,c)
  %6635 = fmul fast float %6628, %6618
  %6636 = call float @dx.op.tertiary.f32(i32 46, float %6632, float %6619, float %6635)  ; FMad(a,b,c)
  %6637 = fmul fast float %6634, %6545
  %6638 = fmul fast float %6636, %6545
  %6639 = fadd fast float %6637, %5861
  %6640 = fadd fast float %6638, %5862
  %6641 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6639, float %6640, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6642 = extractvalue %dx.types.ResRet.f32 %6641, 0
  %6643 = extractvalue %dx.types.ResRet.f32 %6641, 1
  %6644 = extractvalue %dx.types.ResRet.f32 %6641, 2
  %6645 = extractvalue %dx.types.ResRet.f32 %6641, 3
  %6646 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %6642, float* %6646, align 4
  %6647 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %6643, float* %6647, align 4
  %6648 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %6644, float* %6648, align 4
  %6649 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %6645, float* %6649, align 4
  %6650 = fsub fast float %6642, %6547
  %6651 = fcmp fast olt float %6650, 0.000000e+00
  %6652 = select i1 %6651, float 0.000000e+00, float 1.000000e+00
  %6653 = fadd fast float %6652, %6622
  %6654 = fmul fast float %6652, %6650
  %6655 = fadd fast float %6654, %6623
  br label %6656

; <label>:6656                                    ; preds = %6656, %6621
  %6657 = phi i32 [ 1, %6621 ], [ %6668, %6656 ]
  %6658 = phi float [ %6655, %6621 ], [ %6667, %6656 ]
  %6659 = phi float [ %6653, %6621 ], [ %6665, %6656 ]
  %6660 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %6657
  %6661 = load float, float* %6660, align 4, !tbaa !124, !noalias !114
  %6662 = fsub fast float %6661, %6547
  %6663 = fcmp fast olt float %6662, 0.000000e+00
  %6664 = select i1 %6663, float 0.000000e+00, float 1.000000e+00
  %6665 = fadd fast float %6664, %6659
  %6666 = fmul fast float %6664, %6662
  %6667 = fadd fast float %6666, %6658
  %6668 = add nuw nsw i32 %6657, 1
  %6669 = icmp eq i32 %6668, 4
  br i1 %6669, label %6670, label %6656, !llvm.loop !126

; <label>:6670                                    ; preds = %6656
  %6671 = add nuw nsw i32 %6624, 1
  %6672 = icmp eq i32 %6671, 8
  br i1 %6672, label %6673, label %6621, !llvm.loop !127

; <label>:6673                                    ; preds = %6670
  %6674 = fdiv fast float 1.000000e+00, %6665
  %6675 = fmul fast float %6674, %6667
  %6676 = fdiv fast float 1.000000e+00, %6547
  %6677 = fmul fast float %6675, %6676
  %6678 = call float @dx.op.unary.f32(i32 7, float %6677)  ; Saturate(value)
  %6679 = call float @dx.op.binary.f32(i32 35, float %6678, float 0.000000e+00)  ; FMax(a,b)
  %6680 = fmul fast float %6665, 3.125000e-02
  %6681 = call float @dx.op.unary.f32(i32 7, float %6680)  ; Saturate(value)
  %6682 = fmul fast float %6681, 2.000000e+00
  %6683 = fadd fast float %6682, -1.000000e+00
  %6684 = fcmp fast ogt float %6683, 0.000000e+00
  %6685 = fcmp fast olt float %6683, 0.000000e+00
  %6686 = zext i1 %6684 to i32
  %6687 = zext i1 %6685 to i32
  %6688 = sub nsw i32 %6686, %6687
  %6689 = sitofp i32 %6688 to float
  %6690 = fmul fast float %6689, %6683
  %6691 = fsub fast float 1.000000e+00, %6690
  %6692 = fmul fast float %6691, %6691
  %6693 = fmul fast float %6692, %6691
  %6694 = fsub fast float %6691, %6693
  %6695 = fmul fast float %6694, %6679
  %6696 = fsub fast float 1.000000e+00, %6693
  %6697 = fsub fast float %6696, %6695
  %6698 = fmul fast float %6689, 5.000000e-01
  %6699 = fmul fast float %6698, %6697
  %6700 = fsub fast float 5.000000e-01, %6699
  br label %6701

; <label>:6701                                    ; preds = %6673, %6549, %6534
  %6702 = phi float [ 1.000000e+00, %6534 ], [ %6615, %6549 ], [ %6700, %6673 ]
  %6703 = fcmp fast ogt float %5964, 0.000000e+00
  br i1 %6703, label %6704, label %6868, !dx.controlflow.hints !129

; <label>:6704                                    ; preds = %6701
  %6705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6706 = extractvalue %dx.types.CBufRet.f32 %6705, 0
  %6707 = fadd fast float %6706, %5854
  %6708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6709 = extractvalue %dx.types.CBufRet.f32 %6708, 2
  %6710 = extractvalue %dx.types.CBufRet.f32 %6708, 3
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 0
  %6713 = call float @dx.op.binary.f32(i32 35, float %6707, float 0.000000e+00)  ; FMax(a,b)
  %6714 = fadd fast float %6713, 0x3F10000000000000
  %6715 = fcmp fast oeq float %6712, 0.000000e+00
  br i1 %6715, label %6716, label %6783

; <label>:6716                                    ; preds = %6704
  %6717 = extractvalue %dx.types.CBufRet.f32 %6708, 1
  %6718 = extractvalue %dx.types.CBufRet.f32 %6708, 0
  %6719 = fmul fast float %6718, %5846
  %6720 = fmul fast float %6717, %5850
  %6721 = fadd fast float %6719, 5.000000e-01
  %6722 = call float @dx.op.unary.f32(i32 27, float %6721)  ; Round_ni(value)
  %6723 = fadd fast float %6720, 5.000000e-01
  %6724 = call float @dx.op.unary.f32(i32 27, float %6723)  ; Round_ni(value)
  %6725 = fsub fast float %6721, %6722
  %6726 = fsub fast float %6723, %6724
  %6727 = fadd fast float %6722, -5.000000e-01
  %6728 = fadd fast float %6724, -5.000000e-01
  %6729 = fmul fast float %6725, 2.000000e+00
  %6730 = fsub fast float 3.000000e+00, %6729
  %6731 = fadd fast float %6729, 1.000000e+00
  %6732 = fsub fast float 2.000000e+00, %6725
  %6733 = bitcast float %6730 to i32
  %6734 = sub nsw i32 2129859010, %6733
  %6735 = bitcast i32 %6734 to float
  %6736 = fmul fast float %6735, %6732
  %6737 = fadd fast float %6736, -1.000000e+00
  %6738 = bitcast float %6731 to i32
  %6739 = sub nsw i32 2129859010, %6738
  %6740 = bitcast i32 %6739 to float
  %6741 = fmul fast float %6740, %6725
  %6742 = fadd fast float %6741, 1.000000e+00
  %6743 = fmul fast float %6726, 2.000000e+00
  %6744 = fsub fast float 3.000000e+00, %6743
  %6745 = fadd fast float %6743, 1.000000e+00
  %6746 = fsub fast float 2.000000e+00, %6726
  %6747 = bitcast float %6744 to i32
  %6748 = sub nsw i32 2129859010, %6747
  %6749 = bitcast i32 %6748 to float
  %6750 = fmul fast float %6749, %6746
  %6751 = fadd fast float %6750, -1.000000e+00
  %6752 = bitcast float %6745 to i32
  %6753 = sub nsw i32 2129859010, %6752
  %6754 = bitcast i32 %6753 to float
  %6755 = fmul fast float %6754, %6726
  %6756 = fadd fast float %6755, 1.000000e+00
  %6757 = fadd fast float %6737, %6727
  %6758 = fmul fast float %6757, %6709
  %6759 = fadd fast float %6751, %6728
  %6760 = fmul fast float %6759, %6710
  %6761 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6758, float %6760, float undef, float undef, i32 0, i32 0, i32 undef, float %6714)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6762 = extractvalue %dx.types.ResRet.f32 %6761, 0
  %6763 = fmul fast float %6762, %6730
  %6764 = fadd fast float %6742, %6727
  %6765 = fmul fast float %6764, %6709
  %6766 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6765, float %6760, float undef, float undef, i32 0, i32 0, i32 undef, float %6714)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6767 = extractvalue %dx.types.ResRet.f32 %6766, 0
  %6768 = fmul fast float %6767, %6731
  %6769 = fadd fast float %6756, %6728
  %6770 = fmul fast float %6769, %6710
  %6771 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6758, float %6770, float undef, float undef, i32 0, i32 0, i32 undef, float %6714)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6772 = extractvalue %dx.types.ResRet.f32 %6771, 0
  %6773 = fmul fast float %6772, %6730
  %6774 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6765, float %6770, float undef, float undef, i32 0, i32 0, i32 undef, float %6714)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6775 = extractvalue %dx.types.ResRet.f32 %6774, 0
  %6776 = fmul fast float %6775, %6731
  %6777 = fadd fast float %6776, %6773
  %6778 = fmul fast float %6777, %6745
  %6779 = fadd fast float %6768, %6763
  %6780 = fmul fast float %6779, %6744
  %6781 = fadd fast float %6780, %6778
  %6782 = fmul fast float %6781, 6.250000e-02
  br label %6868

; <label>:6783                                    ; preds = %6704
  %6784 = fmul fast float %244, 0x401921FB60000000
  %6785 = call float @dx.op.unary.f32(i32 13, float %6784)  ; Sin(value)
  %6786 = call float @dx.op.unary.f32(i32 12, float %6784)  ; Cos(value)
  %6787 = fsub fast float -0.000000e+00, %6785
  br label %6788

; <label>:6788                                    ; preds = %6837, %6783
  %6789 = phi float [ 0.000000e+00, %6783 ], [ %6832, %6837 ]
  %6790 = phi float [ 0.000000e+00, %6783 ], [ %6834, %6837 ]
  %6791 = phi i32 [ 0, %6783 ], [ %6838, %6837 ]
  %6792 = mul i32 %6791, 2
  %6793 = add i32 0, %6792
  %6794 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6793
  %6795 = load float, float* %6794, align 4
  %6796 = mul i32 %6791, 2
  %6797 = add i32 1, %6796
  %6798 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6797
  %6799 = load float, float* %6798, align 4
  %6800 = fmul fast float %6795, %6786
  %6801 = call float @dx.op.tertiary.f32(i32 46, float %6799, float %6787, float %6800)  ; FMad(a,b,c)
  %6802 = fmul fast float %6795, %6785
  %6803 = call float @dx.op.tertiary.f32(i32 46, float %6799, float %6786, float %6802)  ; FMad(a,b,c)
  %6804 = fmul fast float %6801, %6712
  %6805 = fmul fast float %6803, %6712
  %6806 = fadd fast float %6804, %5846
  %6807 = fadd fast float %6805, %5850
  %6808 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6806, float %6807, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6809 = extractvalue %dx.types.ResRet.f32 %6808, 0
  %6810 = extractvalue %dx.types.ResRet.f32 %6808, 1
  %6811 = extractvalue %dx.types.ResRet.f32 %6808, 2
  %6812 = extractvalue %dx.types.ResRet.f32 %6808, 3
  %6813 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %6809, float* %6813, align 4
  %6814 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %6810, float* %6814, align 4
  %6815 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %6811, float* %6815, align 4
  %6816 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %6812, float* %6816, align 4
  %6817 = fsub fast float %6809, %6714
  %6818 = fcmp fast olt float %6817, 0.000000e+00
  %6819 = select i1 %6818, float 0.000000e+00, float 1.000000e+00
  %6820 = fadd fast float %6819, %6789
  %6821 = fmul fast float %6819, %6817
  %6822 = fadd fast float %6821, %6790
  br label %6823

; <label>:6823                                    ; preds = %6823, %6788
  %6824 = phi i32 [ 1, %6788 ], [ %6835, %6823 ]
  %6825 = phi float [ %6822, %6788 ], [ %6834, %6823 ]
  %6826 = phi float [ %6820, %6788 ], [ %6832, %6823 ]
  %6827 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %6824
  %6828 = load float, float* %6827, align 4, !tbaa !124, !noalias !114
  %6829 = fsub fast float %6828, %6714
  %6830 = fcmp fast olt float %6829, 0.000000e+00
  %6831 = select i1 %6830, float 0.000000e+00, float 1.000000e+00
  %6832 = fadd fast float %6831, %6826
  %6833 = fmul fast float %6831, %6829
  %6834 = fadd fast float %6833, %6825
  %6835 = add nuw nsw i32 %6824, 1
  %6836 = icmp eq i32 %6835, 4
  br i1 %6836, label %6837, label %6823, !llvm.loop !126

; <label>:6837                                    ; preds = %6823
  %6838 = add nuw nsw i32 %6791, 1
  %6839 = icmp eq i32 %6838, 8
  br i1 %6839, label %6840, label %6788, !llvm.loop !127

; <label>:6840                                    ; preds = %6837
  %6841 = fdiv fast float 1.000000e+00, %6832
  %6842 = fmul fast float %6841, %6834
  %6843 = fdiv fast float 1.000000e+00, %6714
  %6844 = fmul fast float %6842, %6843
  %6845 = call float @dx.op.unary.f32(i32 7, float %6844)  ; Saturate(value)
  %6846 = call float @dx.op.binary.f32(i32 35, float %6845, float 0.000000e+00)  ; FMax(a,b)
  %6847 = fmul fast float %6832, 3.125000e-02
  %6848 = call float @dx.op.unary.f32(i32 7, float %6847)  ; Saturate(value)
  %6849 = fmul fast float %6848, 2.000000e+00
  %6850 = fadd fast float %6849, -1.000000e+00
  %6851 = fcmp fast ogt float %6850, 0.000000e+00
  %6852 = fcmp fast olt float %6850, 0.000000e+00
  %6853 = zext i1 %6851 to i32
  %6854 = zext i1 %6852 to i32
  %6855 = sub nsw i32 %6853, %6854
  %6856 = sitofp i32 %6855 to float
  %6857 = fmul fast float %6856, %6850
  %6858 = fsub fast float 1.000000e+00, %6857
  %6859 = fmul fast float %6858, %6858
  %6860 = fmul fast float %6859, %6858
  %6861 = fsub fast float %6858, %6860
  %6862 = fmul fast float %6861, %6846
  %6863 = fsub fast float 1.000000e+00, %6860
  %6864 = fsub fast float %6863, %6862
  %6865 = fmul fast float %6856, 5.000000e-01
  %6866 = fmul fast float %6865, %6864
  %6867 = fsub fast float 5.000000e-01, %6866
  br label %6868

; <label>:6868                                    ; preds = %6840, %6716, %6701
  %6869 = phi float [ 1.000000e+00, %6701 ], [ %6782, %6716 ], [ %6867, %6840 ]
  %6870 = fsub fast float %6535, %6370
  %6871 = fmul fast float %6870, %5908
  %6872 = fadd fast float %6871, %6370
  %6873 = fsub fast float %6702, %6872
  %6874 = fmul fast float %6873, %5938
  %6875 = fadd fast float %6874, %6872
  %6876 = fsub fast float %6869, %6875
  %6877 = fmul fast float %6876, %5964
  %6878 = fadd fast float %6877, %6875
  %6879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6880 = extractvalue %dx.types.CBufRet.f32 %6879, 2
  %6881 = fcmp fast ogt float %6880, 0.000000e+00
  br i1 %6881, label %6882, label %6922, !dx.controlflow.hints !130

; <label>:6882                                    ; preds = %6868
  %6883 = fcmp fast ugt float %6880, 0.000000e+00
  br i1 %6883, label %6884, label %6919

; <label>:6884                                    ; preds = %6882
  %6885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6886 = extractvalue %dx.types.CBufRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.CBufRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.CBufRet.f32 %6885, 2
  %6889 = extractvalue %dx.types.CBufRet.f32 %6885, 3
  %6890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6891 = extractvalue %dx.types.CBufRet.f32 %6890, 0
  %6892 = extractvalue %dx.types.CBufRet.f32 %6890, 1
  %6893 = extractvalue %dx.types.CBufRet.f32 %6890, 2
  %6894 = extractvalue %dx.types.CBufRet.f32 %6890, 3
  %6895 = extractvalue %dx.types.CBufRet.f32 %6879, 0
  %6896 = extractvalue %dx.types.CBufRet.f32 %6879, 1
  %6897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.f32 %6897, 0
  %6899 = extractvalue %dx.types.CBufRet.f32 %6897, 1
  %6900 = extractvalue %dx.types.CBufRet.f32 %6897, 2
  %6901 = fadd fast float %6898, %5823
  %6902 = fadd fast float %6899, %5824
  %6903 = fadd fast float %6900, %5825
  %6904 = fmul fast float %6901, %6886
  %6905 = call float @dx.op.tertiary.f32(i32 46, float %6887, float %6902, float %6904)  ; FMad(a,b,c)
  %6906 = call float @dx.op.tertiary.f32(i32 46, float %6888, float %6903, float %6905)  ; FMad(a,b,c)
  %6907 = fadd fast float %6906, %6889
  %6908 = fmul fast float %6901, %6891
  %6909 = call float @dx.op.tertiary.f32(i32 46, float %6892, float %6902, float %6908)  ; FMad(a,b,c)
  %6910 = call float @dx.op.tertiary.f32(i32 46, float %6893, float %6903, float %6909)  ; FMad(a,b,c)
  %6911 = fadd fast float %6910, %6894
  %6912 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %6907, float %6911, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6913 = extractvalue %dx.types.ResRet.f32 %6912, 0
  %6914 = fmul fast float %6913, %6896
  %6915 = fadd fast float %6914, %6895
  %6916 = call float @dx.op.unary.f32(i32 7, float %6915)  ; Saturate(value)
  %6917 = fmul fast float %6916, %6880
  %6918 = fsub fast float 1.000000e+00, %6917
  br label %6919

; <label>:6919                                    ; preds = %6884, %6882
  %6920 = phi float [ %6918, %6884 ], [ 1.000000e+00, %6882 ]
  %6921 = fmul fast float %6920, %6878
  br label %6922

; <label>:6922                                    ; preds = %6919, %6868, %5803
  %6923 = phi float [ 1.000000e+00, %5803 ], [ %6921, %6919 ], [ %6878, %6868 ]
  %6924 = call float @dx.op.binary.f32(i32 36, float %6923, float %6923)  ; FMin(a,b)
  %6925 = call float @dx.op.binary.f32(i32 36, float %6923, float %6924)  ; FMin(a,b)
  %6926 = fcmp fast ogt float %6925, 0.000000e+00
  br i1 %6926, label %6927, label %7092, !dx.controlflow.hints !131

; <label>:6927                                    ; preds = %6922
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.CBufRet.f32 %6928, 1
  %6931 = extractvalue %dx.types.CBufRet.f32 %6928, 2
  %6932 = extractvalue %dx.types.CBufRet.f32 %6928, 3
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 0
  %6935 = extractvalue %dx.types.CBufRet.f32 %6933, 1
  %6936 = extractvalue %dx.types.CBufRet.f32 %6933, 2
  %6937 = extractvalue %dx.types.CBufRet.f32 %6933, 3
  %6938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6938, 0
  %6940 = extractvalue %dx.types.CBufRet.f32 %6938, 1
  %6941 = extractvalue %dx.types.CBufRet.f32 %6938, 2
  %6942 = extractvalue %dx.types.CBufRet.f32 %6938, 3
  %6943 = fmul fast float %6929, %5823
  %6944 = call float @dx.op.tertiary.f32(i32 46, float %5824, float %6930, float %6943)  ; FMad(a,b,c)
  %6945 = call float @dx.op.tertiary.f32(i32 46, float %5825, float %6931, float %6944)  ; FMad(a,b,c)
  %6946 = fadd fast float %6945, %6932
  %6947 = fmul fast float %6934, %5823
  %6948 = call float @dx.op.tertiary.f32(i32 46, float %5824, float %6935, float %6947)  ; FMad(a,b,c)
  %6949 = call float @dx.op.tertiary.f32(i32 46, float %5825, float %6936, float %6948)  ; FMad(a,b,c)
  %6950 = fadd fast float %6949, %6937
  %6951 = fmul fast float %6939, %5823
  %6952 = call float @dx.op.tertiary.f32(i32 46, float %5824, float %6940, float %6951)  ; FMad(a,b,c)
  %6953 = call float @dx.op.tertiary.f32(i32 46, float %5825, float %6941, float %6952)  ; FMad(a,b,c)
  %6954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.f32 %6954, 0
  %6956 = extractvalue %dx.types.CBufRet.f32 %6954, 1
  %6957 = extractvalue %dx.types.CBufRet.f32 %6954, 3
  %6958 = fmul fast float %6957, %6946
  %6959 = fmul fast float %6957, %6950
  %6960 = fadd fast float %6958, %6955
  %6961 = fadd fast float %6959, %6956
  %6962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6963 = extractvalue %dx.types.CBufRet.f32 %6962, 0
  %6964 = extractvalue %dx.types.CBufRet.f32 %6962, 1
  %6965 = fsub fast float %6960, %6963
  %6966 = fsub fast float %6961, %6964
  %6967 = fcmp fast olt float %6965, 0.000000e+00
  %6968 = fcmp fast olt float %6966, 0.000000e+00
  %6969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.f32 %6969, 0
  %6971 = extractvalue %dx.types.CBufRet.f32 %6969, 1
  %6972 = extractvalue %dx.types.CBufRet.f32 %6969, 2
  %6973 = extractvalue %dx.types.CBufRet.f32 %6969, 3
  %6974 = select i1 %6967, float %6970, float %6972
  %6975 = select i1 %6968, float %6971, float %6973
  %6976 = fmul fast float %6974, %6965
  %6977 = fmul fast float %6975, %6966
  %6978 = call float @dx.op.unary.f32(i32 6, float %6976)  ; FAbs(value)
  %6979 = call float @dx.op.unary.f32(i32 6, float %6977)  ; FAbs(value)
  %6980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6981 = extractvalue %dx.types.CBufRet.f32 %6980, 0
  %6982 = call float @dx.op.binary.f32(i32 35, float %6978, float %6979)  ; FMax(a,b)
  %6983 = fsub fast float %6981, %6982
  %6984 = call float @dx.op.unary.f32(i32 7, float %6983)  ; Saturate(value)
  %6985 = fcmp fast ogt float %6984, 0.000000e+00
  br i1 %6985, label %6986, label %7027, !dx.controlflow.hints !132

; <label>:6986                                    ; preds = %6927
  %6987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %6960, float %6961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6988 = extractvalue %dx.types.ResRet.f32 %6987, 1
  %6989 = fcmp fast ogt float %6988, 0.000000e+00
  br i1 %6989, label %6990, label %7022

; <label>:6990                                    ; preds = %6986
  %6991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %6960, float %6961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6992 = extractvalue %dx.types.ResRet.f32 %6991, 0
  %6993 = extractvalue %dx.types.ResRet.f32 %6991, 1
  %6994 = extractvalue %dx.types.ResRet.f32 %6991, 2
  %6995 = extractvalue %dx.types.ResRet.f32 %6991, 3
  %6996 = fsub fast float 1.000000e+00, %6942
  %6997 = fsub fast float %6996, %6953
  %6998 = fmul fast float %6997, 0x400921FB60000000
  %6999 = fadd fast float %6998, 0x3FF921FB60000000
  %7000 = call float @dx.op.unary.f32(i32 13, float %6999)  ; Sin(value)
  %7001 = fadd fast float %7000, -1.000000e+00
  %7002 = fmul fast float %7001, 0x3FD45F3060000000
  %7003 = fmul fast float %6997, 0x401921FB60000000
  %7004 = fadd fast float %7003, 0x400921FB60000000
  %7005 = call float @dx.op.unary.f32(i32 13, float %7004)  ; Sin(value)
  %7006 = fadd fast float %7005, 0x3E7777A5C0000000
  %7007 = fmul fast float %7006, 0x3FC45F3060000000
  %7008 = fmul fast float %6997, 0x4022D97C80000000
  %7009 = fadd fast float %7008, 0x4012D97C80000000
  %7010 = call float @dx.op.unary.f32(i32 13, float %7009)  ; Sin(value)
  %7011 = fadd fast float %7010, 1.000000e+00
  %7012 = fmul fast float %7011, 0x3FBB2995E0000000
  %7013 = fmul fast float %6997, 0x402921FB60000000
  %7014 = fadd fast float %7013, 0x401921FB60000000
  %7015 = call float @dx.op.unary.f32(i32 13, float %7014)  ; Sin(value)
  %7016 = fadd fast float %7015, 0xBE8777A5C0000000
  %7017 = fmul fast float %7016, 0x3FB45F3060000000
  %7018 = call float @dx.op.dot4.f32(i32 56, float %6992, float %6993, float %6994, float %6995, float %7002, float %7007, float %7012, float %7017)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7019 = fmul fast float %7018, 0xBFF7154760000000
  %7020 = call float @dx.op.unary.f32(i32 21, float %7019)  ; Exp(value)
  %7021 = call float @dx.op.unary.f32(i32 7, float %7020)  ; Saturate(value)
  br label %7022

; <label>:7022                                    ; preds = %6990, %6986
  %7023 = phi float [ %7021, %6990 ], [ 1.000000e+00, %6986 ]
  %7024 = fadd fast float %7023, -1.000000e+00
  %7025 = fmul fast float %7024, %6984
  %7026 = fadd fast float %7025, 1.000000e+00
  br label %7027

; <label>:7027                                    ; preds = %7022, %6927
  %7028 = phi float [ %7026, %7022 ], [ 1.000000e+00, %6927 ]
  %7029 = fmul fast float %7028, %6923
  %7030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7031 = extractvalue %dx.types.CBufRet.f32 %7030, 0
  %7032 = extractvalue %dx.types.CBufRet.f32 %7030, 1
  %7033 = extractvalue %dx.types.CBufRet.f32 %7030, 2
  %7034 = fadd fast float %7031, %171
  %7035 = fadd fast float %7032, %172
  %7036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7037 = extractvalue %dx.types.CBufRet.f32 %7036, 1
  %7038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.f32 %7038, 0
  %7040 = extractvalue %dx.types.CBufRet.f32 %7038, 1
  %7041 = extractvalue %dx.types.CBufRet.f32 %7038, 2
  %7042 = fsub fast float -0.000000e+00, %7034
  %7043 = fsub fast float -0.000000e+00, %7035
  %7044 = fsub fast float %4893, %7033
  %7045 = fadd fast float %7044, %7037
  %7046 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7042, float %7043, float %7045)  ; Dot3(ax,ay,az,bx,by,bz)
  %7047 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7039, float %7040, float %7041)  ; Dot3(ax,ay,az,bx,by,bz)
  %7048 = fdiv fast float 1.000000e+00, %7047
  %7049 = fmul fast float %7048, %7046
  %7050 = fmul fast float %7039, %7049
  %7051 = fmul fast float %7040, %7049
  %7052 = fadd fast float %7050, %7034
  %7053 = fadd fast float %7051, %7035
  %7054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7055 = extractvalue %dx.types.CBufRet.f32 %7054, 0
  %7056 = extractvalue %dx.types.CBufRet.f32 %7054, 1
  %7057 = fsub fast float %7052, %7055
  %7058 = fsub fast float %7053, %7056
  %7059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7060 = extractvalue %dx.types.CBufRet.f32 %7059, 2
  %7061 = extractvalue %dx.types.CBufRet.f32 %7059, 3
  %7062 = fmul fast float %7057, %7060
  %7063 = fmul fast float %7058, %7061
  %7064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.i32 %7064, 3
  %7066 = icmp eq i32 %7065, 0
  br i1 %7066, label %7072, label %7067

; <label>:7067                                    ; preds = %7027
  %7068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7062, float %7063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7069 = extractvalue %dx.types.ResRet.f32 %7068, 0
  %7070 = extractvalue %dx.types.ResRet.f32 %7068, 1
  %7071 = extractvalue %dx.types.ResRet.f32 %7068, 2
  br label %7077

; <label>:7072                                    ; preds = %7027
  %7073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7062, float %7063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7074 = extractvalue %dx.types.ResRet.f32 %7073, 0
  %7075 = extractvalue %dx.types.ResRet.f32 %7073, 1
  %7076 = extractvalue %dx.types.ResRet.f32 %7073, 2
  br label %7077

; <label>:7077                                    ; preds = %7072, %7067
  %7078 = phi float [ %7069, %7067 ], [ %7074, %7072 ]
  %7079 = phi float [ %7070, %7067 ], [ %7075, %7072 ]
  %7080 = phi float [ %7071, %7067 ], [ %7076, %7072 ]
  %7081 = extractvalue %dx.types.CBufRet.f32 %7036, 2
  %7082 = fmul fast float %7081, %7078
  %7083 = extractvalue %dx.types.CBufRet.f32 %7036, 0
  %7084 = fsub fast float %7049, %7083
  %7085 = fsub fast float %7084, %7082
  %7086 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7085)  ; FMax(a,b)
  %7087 = fmul fast float %7086, %7079
  %7088 = call float @dx.op.binary.f32(i32 36, float %7080, float %7087)  ; FMin(a,b)
  %7089 = fmul fast float %7088, 0xBFF7154760000000
  %7090 = call float @dx.op.unary.f32(i32 21, float %7089)  ; Exp(value)
  %7091 = fmul fast float %7029, %7090
  br label %7092

; <label>:7092                                    ; preds = %7077, %6922
  %7093 = phi float [ %7091, %7077 ], [ %6923, %6922 ]
  %7094 = call float @dx.op.binary.f32(i32 36, float %7093, float %7093)  ; FMin(a,b)
  %7095 = call float @dx.op.binary.f32(i32 36, float %7093, float %7094)  ; FMin(a,b)
  %7096 = fcmp fast ogt float %7095, 0.000000e+00
  br i1 %7096, label %7097, label %7345, !dx.controlflow.hints !133

; <label>:7097                                    ; preds = %7092
  %7098 = fmul fast float %7093, %5815
  %7099 = fmul fast float %7093, %5816
  %7100 = fmul fast float %7093, %5817
  %7101 = fsub fast float %173, %4684
  %7102 = fcmp fast ogt float %7101, 0.000000e+00
  %7103 = fmul fast float %5804, 5.120000e+02
  %7104 = fmul fast float %5805, 5.120000e+02
  %7105 = fmul fast float %5806, 5.120000e+02
  %7106 = fadd fast float %7105, %173
  %7107 = fsub fast float %4684, %7106
  %7108 = fmul fast float %7107, 2.000000e+00
  %7109 = fadd fast float %7108, %7106
  %7110 = select i1 %7102, float %7109, float %7106
  %7111 = fsub fast float %7110, %173
  %7112 = call float @dx.op.dot3.f32(i32 55, float %7103, float %7104, float %7111, float %7103, float %7104, float %7111)  ; Dot3(ax,ay,az,bx,by,bz)
  %7113 = call float @dx.op.unary.f32(i32 25, float %7112)  ; Rsqrt(value)
  %7114 = fmul fast float %7113, %7103
  %7115 = fmul fast float %7113, %7104
  %7116 = fmul fast float %7113, %7111
  %7117 = fsub fast float %4684, %173
  %7118 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7117)  ; Dot3(ax,ay,az,bx,by,bz)
  %7119 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7114, float %7115, float %7116)  ; Dot3(ax,ay,az,bx,by,bz)
  %7120 = fdiv fast float 1.000000e+00, %7119
  %7121 = fmul fast float %7120, %7118
  %7122 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7101, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7123 = fcmp fast ogt float %7122, 0.000000e+00
  %7124 = fcmp fast olt float %7122, 0.000000e+00
  %7125 = zext i1 %7123 to i32
  %7126 = zext i1 %7124 to i32
  %7127 = sub nsw i32 %7125, %7126
  %7128 = sitofp i32 %7127 to float
  %7129 = fsub fast float %7110, %4684
  %7130 = call float @dx.op.dot3.f32(i32 55, float %7103, float %7104, float %7129, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7131 = fcmp fast ogt float %7130, 0.000000e+00
  %7132 = fcmp fast olt float %7130, 0.000000e+00
  %7133 = zext i1 %7131 to i32
  %7134 = zext i1 %7132 to i32
  %7135 = sub nsw i32 %7133, %7134
  %7136 = sitofp i32 %7135 to float
  %7137 = fcmp fast une float %7128, %7136
  br i1 %7137, label %7138, label %7148

; <label>:7138                                    ; preds = %7097
  %7139 = fmul fast float %7121, %7116
  %7140 = fmul fast float %7121, %7115
  %7141 = fmul fast float %7121, %7114
  %7142 = fmul fast float %7141, %7141
  %7143 = fmul fast float %7140, %7140
  %7144 = fadd fast float %7142, %7143
  %7145 = fmul fast float %7139, %7139
  %7146 = fadd fast float %7144, %7145
  %7147 = call float @dx.op.unary.f32(i32 24, float %7146)  ; Sqrt(value)
  br label %7158

; <label>:7148                                    ; preds = %7097
  %7149 = icmp slt i32 %7127, 0
  br i1 %7149, label %7150, label %7158

; <label>:7150                                    ; preds = %7148
  %7151 = fsub fast float %173, %7110
  %7152 = fmul fast float %7103, %7103
  %7153 = fmul fast float %7104, %7104
  %7154 = fadd fast float %7152, %7153
  %7155 = fmul fast float %7151, %7151
  %7156 = fadd fast float %7154, %7155
  %7157 = call float @dx.op.unary.f32(i32 24, float %7156)  ; Sqrt(value)
  br label %7158

; <label>:7158                                    ; preds = %7150, %7148, %7138
  %7159 = phi float [ %7147, %7138 ], [ %7157, %7150 ], [ 0.000000e+00, %7148 ]
  %7160 = fsub fast float -0.000000e+00, %7159
  %7161 = select i1 %7102, float -0.000000e+00, float %7160
  %7162 = fmul fast float %4681, 0x3FF7154760000000
  %7163 = fmul fast float %7162, %7161
  %7164 = fmul fast float %4682, 0x3FF7154760000000
  %7165 = fmul fast float %7164, %7161
  %7166 = fmul fast float %4683, 0x3FF7154760000000
  %7167 = fmul fast float %7166, %7161
  %7168 = call float @dx.op.unary.f32(i32 21, float %7163)  ; Exp(value)
  %7169 = call float @dx.op.unary.f32(i32 21, float %7165)  ; Exp(value)
  %7170 = call float @dx.op.unary.f32(i32 21, float %7167)  ; Exp(value)
  %7171 = call float @dx.op.unary.f32(i32 7, float %7168)  ; Saturate(value)
  %7172 = call float @dx.op.unary.f32(i32 7, float %7169)  ; Saturate(value)
  %7173 = call float @dx.op.unary.f32(i32 7, float %7170)  ; Saturate(value)
  %7174 = fmul fast float %7098, %7171
  %7175 = fmul fast float %7099, %7172
  %7176 = fmul fast float %7100, %7173
  %7177 = fsub fast float %5804, %4881
  %7178 = fsub fast float %5805, %4880
  %7179 = fsub fast float %5806, %4879
  %7180 = call float @dx.op.dot3.f32(i32 55, float %7177, float %7178, float %7179, float %7177, float %7178, float %7179)  ; Dot3(ax,ay,az,bx,by,bz)
  %7181 = call float @dx.op.unary.f32(i32 25, float %7180)  ; Rsqrt(value)
  %7182 = fmul fast float %7181, %7177
  %7183 = fmul fast float %7181, %7178
  %7184 = fmul fast float %7181, %7179
  %7185 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %5806, float %4888, float %4889, float %4890)  ; Dot3(ax,ay,az,bx,by,bz)
  %7186 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4877, float %4876, float %7182, float %7183, float %7184)  ; Dot3(ax,ay,az,bx,by,bz)
  %7187 = call float @dx.op.unary.f32(i32 7, float %7185)  ; Saturate(value)
  %7188 = bitcast i32 %4920 to float
  %7189 = fmul fast float %7187, %7187
  %7190 = fmul fast float %7189, %7188
  %7191 = call float @dx.op.unary.f32(i32 7, float %7190)  ; Saturate(value)
  %7192 = fmul fast float %7191, %7187
  %7193 = call float @dx.op.dot3.f32(i32 55, float %4888, float %4889, float %4890, float %7182, float %7183, float %7184)  ; Dot3(ax,ay,az,bx,by,bz)
  %7194 = fmul fast float %7193, %7193
  %7195 = call float @dx.op.unary.f32(i32 6, float %7185)  ; FAbs(value)
  %7196 = fsub fast float 1.000000e+00, %4914
  %7197 = fmul fast float %4896, %4896
  %7198 = fmul fast float %7197, %7196
  %7199 = fadd fast float %7198, %4914
  %7200 = bitcast float %7199 to i32
  %7201 = ashr i32 %7200, 1
  %7202 = add nsw i32 %7201, 532487669
  %7203 = bitcast i32 %7202 to float
  %7204 = fadd fast float %7203, %4896
  %7205 = fmul fast float %4914, %7194
  %7206 = fsub fast float 1.000000e+00, %7194
  %7207 = fadd fast float %7206, %7205
  %7208 = fmul fast float %7195, %7195
  %7209 = fmul fast float %7208, %7196
  %7210 = fadd fast float %7209, %4914
  %7211 = bitcast float %7210 to i32
  %7212 = ashr i32 %7211, 1
  %7213 = add nsw i32 %7212, 532487669
  %7214 = bitcast i32 %7213 to float
  %7215 = fadd fast float %7214, %7195
  %7216 = fmul fast float %7207, %7207
  %7217 = fmul fast float %7216, %7204
  %7218 = fmul fast float %7217, %7215
  %7219 = fdiv fast float 0x3FF0A00000000000, %7218
  %7220 = fmul fast float %7219, %4914
  %7221 = call float @dx.op.unary.f32(i32 6, float %7186)  ; FAbs(value)
  %7222 = fsub fast float 1.000000e+00, %7221
  %7223 = bitcast float %7222 to i32
  %7224 = sitofp i32 %7223 to float
  %7225 = fmul fast float %7224, 5.000000e+00
  %7226 = fadd fast float %7225, 0xC1EFBF8940000000
  %7227 = fptosi float %7226 to i32
  %7228 = bitcast i32 %7227 to float
  %7229 = fsub fast float 1.000000e+00, %4885
  %7230 = fsub fast float 1.000000e+00, %4886
  %7231 = fsub fast float 1.000000e+00, %4894
  %7232 = fmul fast float %7228, %7229
  %7233 = fmul fast float %7228, %7230
  %7234 = fmul fast float %7228, %7231
  %7235 = fadd fast float %7232, %4885
  %7236 = fadd fast float %7233, %4886
  %7237 = fadd fast float %7234, %4894
  br i1 %5207, label %7238, label %7261

; <label>:7238                                    ; preds = %7158
  %7239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4280, float %7221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7240 = extractvalue %dx.types.ResRet.f32 %7239, 0
  %7241 = extractvalue %dx.types.ResRet.f32 %7239, 1
  %7242 = extractvalue %dx.types.ResRet.f32 %7239, 2
  %7243 = fadd fast float %7240, -5.000000e-01
  %7244 = fadd fast float %7241, -5.000000e-01
  %7245 = fadd fast float %7242, -5.000000e-01
  %7246 = fmul fast float %4885, 4.000000e+00
  %7247 = fmul fast float %7246, %7229
  %7248 = fmul fast float %7247, %7243
  %7249 = fmul fast float %4886, 4.000000e+00
  %7250 = fmul fast float %7249, %7230
  %7251 = fmul fast float %7250, %7244
  %7252 = fmul fast float %4894, 4.000000e+00
  %7253 = fmul fast float %7252, %7231
  %7254 = fmul fast float %7253, %7245
  %7255 = fadd fast float %7248, %7235
  %7256 = fadd fast float %7251, %7236
  %7257 = fadd fast float %7254, %7237
  %7258 = call float @dx.op.unary.f32(i32 7, float %7255)  ; Saturate(value)
  %7259 = call float @dx.op.unary.f32(i32 7, float %7256)  ; Saturate(value)
  %7260 = call float @dx.op.unary.f32(i32 7, float %7257)  ; Saturate(value)
  br label %7261

; <label>:7261                                    ; preds = %7238, %7158
  %7262 = phi float [ %7258, %7238 ], [ %7235, %7158 ]
  %7263 = phi float [ %7259, %7238 ], [ %7236, %7158 ]
  %7264 = phi float [ %7260, %7238 ], [ %7237, %7158 ]
  %7265 = fmul fast float %7185, 9.843750e-01
  %7266 = fadd fast float %7265, 7.812500e-03
  %7267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7266, float %5197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7268 = extractvalue %dx.types.ResRet.f32 %7267, 2
  %7269 = extractvalue %dx.types.ResRet.f32 %7267, 3
  %7270 = fmul fast float %7268, %4885
  %7271 = fmul fast float %7268, %4886
  %7272 = fmul fast float %7268, %4894
  %7273 = fadd fast float %7270, %7269
  %7274 = fadd fast float %7271, %7269
  %7275 = fadd fast float %7272, %7269
  br i1 %5207, label %7276, label %7299

; <label>:7276                                    ; preds = %7261
  %7277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4280, float %7185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7278 = extractvalue %dx.types.ResRet.f32 %7277, 0
  %7279 = extractvalue %dx.types.ResRet.f32 %7277, 1
  %7280 = extractvalue %dx.types.ResRet.f32 %7277, 2
  %7281 = fadd fast float %7278, -5.000000e-01
  %7282 = fadd fast float %7279, -5.000000e-01
  %7283 = fadd fast float %7280, -5.000000e-01
  %7284 = fmul fast float %4885, 4.000000e+00
  %7285 = fmul fast float %7284, %7229
  %7286 = fmul fast float %7285, %7281
  %7287 = fmul fast float %4886, 4.000000e+00
  %7288 = fmul fast float %7287, %7230
  %7289 = fmul fast float %7288, %7282
  %7290 = fmul fast float %4894, 4.000000e+00
  %7291 = fmul fast float %7290, %7231
  %7292 = fmul fast float %7291, %7283
  %7293 = fadd fast float %7286, %7273
  %7294 = fadd fast float %7289, %7274
  %7295 = fadd fast float %7292, %7275
  %7296 = call float @dx.op.unary.f32(i32 7, float %7293)  ; Saturate(value)
  %7297 = call float @dx.op.unary.f32(i32 7, float %7294)  ; Saturate(value)
  %7298 = call float @dx.op.unary.f32(i32 7, float %7295)  ; Saturate(value)
  br label %7299

; <label>:7299                                    ; preds = %7276, %7261
  %7300 = phi float [ %7296, %7276 ], [ %7273, %7261 ]
  %7301 = phi float [ %7297, %7276 ], [ %7274, %7261 ]
  %7302 = phi float [ %7298, %7276 ], [ %7275, %7261 ]
  %7303 = call float @dx.op.binary.f32(i32 35, float %7301, float %7302)  ; FMax(a,b)
  %7304 = call float @dx.op.binary.f32(i32 35, float %7300, float %7303)  ; FMax(a,b)
  %7305 = fsub fast float 1.000000e+00, %7304
  %7306 = fmul fast float %7262, %7220
  %7307 = fmul fast float %7263, %7220
  %7308 = fmul fast float %7264, %7220
  %7309 = fsub fast float 1.000000e+00, %7186
  %7310 = bitcast float %7309 to i32
  %7311 = sitofp i32 %7310 to float
  %7312 = fmul fast float %7311, 5.000000e+00
  %7313 = fadd fast float %7312, 0xC1EFBF8940000000
  %7314 = fptosi float %7313 to i32
  %7315 = bitcast i32 %7314 to float
  %7316 = fmul fast float %7315, %4281
  %7317 = fmul fast float %7305, %7316
  %7318 = fmul fast float %7317, %5767
  %7319 = fmul fast float %7317, %5768
  %7320 = fmul fast float %7317, %5769
  %7321 = fadd fast float %7318, %7306
  %7322 = fadd fast float %7319, %7307
  %7323 = fadd fast float %7320, %7308
  %7324 = fmul fast float %7192, %7174
  %7325 = fmul fast float %7324, %7305
  %7326 = fmul fast float %7192, %7175
  %7327 = fmul fast float %7326, %7305
  %7328 = fmul fast float %7192, %7176
  %7329 = fmul fast float %7328, %7305
  %7330 = fmul fast float %7324, %7321
  %7331 = fmul fast float %7326, %7322
  %7332 = fmul fast float %7328, %7323
  %7333 = fadd fast float %7325, %5749
  %7334 = fmul fast float %7333, %4277
  %7335 = fadd fast float %7327, %5751
  %7336 = fmul fast float %7335, %4277
  %7337 = fadd fast float %7329, %5753
  %7338 = fmul fast float %7337, %4277
  %7339 = fadd fast float %7330, %5792
  %7340 = fmul fast float %7339, %4277
  %7341 = fadd fast float %7331, %5795
  %7342 = fmul fast float %7341, %4277
  %7343 = fadd fast float %7332, %5798
  %7344 = fmul fast float %7343, %4277
  br label %7345

; <label>:7345                                    ; preds = %7299, %7092, %5729
  %7346 = phi float [ %5793, %5729 ], [ %5793, %7092 ], [ %7340, %7299 ]
  %7347 = phi float [ %5796, %5729 ], [ %5796, %7092 ], [ %7342, %7299 ]
  %7348 = phi float [ %5799, %5729 ], [ %5799, %7092 ], [ %7344, %7299 ]
  %7349 = phi float [ %5788, %5729 ], [ %5788, %7092 ], [ %7334, %7299 ]
  %7350 = phi float [ %5789, %5729 ], [ %5789, %7092 ], [ %7336, %7299 ]
  %7351 = phi float [ %5790, %5729 ], [ %5790, %7092 ], [ %7338, %7299 ]
  %7352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7353 = extractvalue %dx.types.CBufRet.i32 %7352, 0
  %7354 = icmp eq i32 %7353, 0
  br i1 %7354, label %8018, label %7355

; <label>:7355                                    ; preds = %7345
  %7356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7357 = extractvalue %dx.types.CBufRet.f32 %7356, 2
  %7358 = extractvalue %dx.types.CBufRet.f32 %7356, 3
  %7359 = fmul fast float %7357, %112
  %7360 = fmul fast float %7358, %113
  %7361 = fptoui float %7359 to i32
  %7362 = fptoui float %7360 to i32
  %7363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7364 = extractvalue %dx.types.CBufRet.f32 %7363, 0
  %7365 = extractvalue %dx.types.CBufRet.f32 %7363, 2
  %7366 = extractvalue %dx.types.CBufRet.f32 %7363, 3
  %7367 = fadd fast float %100, -4.000000e+00
  %7368 = call float @dx.op.binary.f32(i32 35, float %7367, float 0.000000e+00)  ; FMax(a,b)
  %7369 = fadd fast float %7368, %7364
  %7370 = fmul fast float %7369, %7365
  %7371 = call float @dx.op.unary.f32(i32 23, float %7370)  ; Log(value)
  %7372 = fmul fast float %7371, %7366
  %7373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7374 = extractvalue %dx.types.CBufRet.f32 %7373, 2
  %7375 = fmul fast float %7372, %7374
  %7376 = call float @dx.op.unary.f32(i32 7, float %7375)  ; Saturate(value)
  %7377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7378 = extractvalue %dx.types.CBufRet.i32 %7377, 1
  %7379 = add i32 %7378, -1
  %7380 = uitofp i32 %7378 to float
  %7381 = fmul fast float %7380, %7376
  %7382 = fptoui float %7381 to i32
  %7383 = call i32 @dx.op.binary.i32(i32 40, i32 %7382, i32 %7379)  ; UMin(a,b)
  %7384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7385 = extractvalue %dx.types.CBufRet.i32 %7384, 2
  %7386 = extractvalue %dx.types.CBufRet.i32 %7384, 3
  %7387 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7362, i32 %7385, i32 %7361)  ; UMad(a,b,c)
  %7388 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7383, i32 %7386, i32 %7387)  ; UMad(a,b,c)
  %7389 = add nsw i32 %7353, -1
  %7390 = call i32 @dx.op.binary.i32(i32 37, i32 %7389, i32 0)  ; IMax(a,b)
  %7391 = call float @dx.op.binary.f32(i32 35, float %100, float 0.000000e+00)  ; FMax(a,b)
  %7392 = fptoui float %7391 to i32
  %7393 = lshr i32 %7392, 5
  %7394 = call i32 @dx.op.binary.i32(i32 40, i32 %7393, i32 8191)  ; UMin(a,b)
  %7395 = shl i32 %7394, 2
  %7396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7395, i32 undef)  ; BufferLoad(srv,index,wot)
  %7397 = extractvalue %dx.types.ResRet.i32 %7396, 0
  %7398 = lshr i32 %7397, 16
  %7399 = and i32 %7397, 65535
  %7400 = lshr i32 %7397, 21
  %7401 = lshr i32 %7399, 5
  %7402 = call i32 @dx.op.binary.i32(i32 40, i32 %7401, i32 %7390)  ; UMin(a,b)
  %7403 = icmp ugt i32 %7400, %7402
  br i1 %7403, label %8018, label %7404

; <label>:7404                                    ; preds = %7355
  br label %7405

; <label>:7405                                    ; preds = %8008, %7404
  %7406 = phi i32 [ %8015, %8008 ], [ %7400, %7404 ]
  %7407 = phi float [ %8009, %8008 ], [ %7346, %7404 ]
  %7408 = phi float [ %8010, %8008 ], [ %7347, %7404 ]
  %7409 = phi float [ %8011, %8008 ], [ %7348, %7404 ]
  %7410 = phi float [ %8012, %8008 ], [ %7349, %7404 ]
  %7411 = phi float [ %8013, %8008 ], [ %7350, %7404 ]
  %7412 = phi float [ %8014, %8008 ], [ %7351, %7404 ]
  %7413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7414 = extractvalue %dx.types.CBufRet.i32 %7413, 0
  %7415 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7388, i32 %7414, i32 %7406)  ; UMad(a,b,c)
  %7416 = shl i32 %7415, 2
  %7417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7416, i32 undef)  ; BufferLoad(srv,index,wot)
  %7418 = extractvalue %dx.types.ResRet.i32 %7417, 0
  %7419 = shl i32 %7406, 5
  %7420 = sub nsw i32 %7398, %7419
  %7421 = call i32 @dx.op.binary.i32(i32 37, i32 %7420, i32 0)  ; IMax(a,b)
  %7422 = call i32 @dx.op.binary.i32(i32 38, i32 %7421, i32 31)  ; IMin(a,b)
  %7423 = sub nsw i32 1, %7398
  %7424 = add nsw i32 %7423, %7399
  %7425 = call i32 @dx.op.binary.i32(i32 37, i32 %7424, i32 0)  ; IMax(a,b)
  %7426 = call i32 @dx.op.binary.i32(i32 38, i32 %7425, i32 32)  ; IMin(a,b)
  %7427 = and i32 %7426, 31
  %7428 = shl i32 -1, %7427
  %7429 = xor i32 %7428, -1
  %7430 = and i32 %7422, 31
  %7431 = shl i32 %7429, %7430
  %7432 = icmp eq i32 %7426, 32
  %7433 = select i1 %7432, i32 -1, i32 %7431
  %7434 = and i32 %7433, %7418
  %7435 = icmp eq i32 %7434, 0
  br i1 %7435, label %8008, label %7436

; <label>:7436                                    ; preds = %7405
  br label %7437

; <label>:7437                                    ; preds = %7571, %7436
  %7438 = phi i32 [ %7449, %7571 ], [ %7434, %7436 ]
  %7439 = phi float [ %7572, %7571 ], [ %7407, %7436 ]
  %7440 = phi float [ %7573, %7571 ], [ %7408, %7436 ]
  %7441 = phi float [ %7574, %7571 ], [ %7409, %7436 ]
  %7442 = phi float [ %7575, %7571 ], [ %7410, %7436 ]
  %7443 = phi float [ %7576, %7571 ], [ %7411, %7436 ]
  %7444 = phi float [ %7577, %7571 ], [ %7412, %7436 ]
  %7445 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7438)  ; FirstbitLo(value)
  %7446 = add i32 %7445, %7419
  %7447 = and i32 %7445, 31
  %7448 = shl i32 1, %7447
  %7449 = xor i32 %7448, %7438
  %7450 = mul i32 %7446, 112
  %7451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7450, i32 undef)  ; BufferLoad(srv,index,wot)
  %7452 = extractvalue %dx.types.ResRet.f32 %7451, 0
  %7453 = extractvalue %dx.types.ResRet.f32 %7451, 1
  %7454 = extractvalue %dx.types.ResRet.f32 %7451, 2
  %7455 = or i32 %7450, 12
  %7456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7455, i32 undef)  ; BufferLoad(srv,index,wot)
  %7457 = extractvalue %dx.types.ResRet.f32 %7456, 0
  %7458 = add i32 %7450, 16
  %7459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7458, i32 undef)  ; BufferLoad(srv,index,wot)
  %7460 = extractvalue %dx.types.ResRet.f32 %7459, 0
  %7461 = extractvalue %dx.types.ResRet.f32 %7459, 1
  %7462 = extractvalue %dx.types.ResRet.f32 %7459, 2
  %7463 = add i32 %7450, 28
  %7464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7463, i32 undef)  ; BufferLoad(srv,index,wot)
  %7465 = extractvalue %dx.types.ResRet.i32 %7464, 0
  %7466 = add i32 %7450, 44
  %7467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7466, i32 undef)  ; BufferLoad(srv,index,wot)
  %7468 = extractvalue %dx.types.ResRet.f32 %7467, 0
  %7469 = add i32 %7450, 48
  %7470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7469, i32 undef)  ; BufferLoad(srv,index,wot)
  %7471 = extractvalue %dx.types.ResRet.f32 %7470, 0
  %7472 = extractvalue %dx.types.ResRet.f32 %7470, 1
  %7473 = extractvalue %dx.types.ResRet.f32 %7470, 2
  %7474 = extractvalue %dx.types.ResRet.f32 %7470, 3
  %7475 = add i32 %7450, 64
  %7476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7475, i32 undef)  ; BufferLoad(srv,index,wot)
  %7477 = extractvalue %dx.types.ResRet.f32 %7476, 0
  %7478 = extractvalue %dx.types.ResRet.f32 %7476, 1
  %7479 = extractvalue %dx.types.ResRet.f32 %7476, 2
  %7480 = extractvalue %dx.types.ResRet.f32 %7476, 3
  %7481 = add i32 %7450, 80
  %7482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7481, i32 undef)  ; BufferLoad(srv,index,wot)
  %7483 = extractvalue %dx.types.ResRet.f32 %7482, 1
  %7484 = extractvalue %dx.types.ResRet.f32 %7482, 2
  %7485 = add i32 %7450, 92
  %7486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7485, i32 undef)  ; BufferLoad(srv,index,wot)
  %7487 = extractvalue %dx.types.ResRet.i32 %7486, 0
  %7488 = call float @dx.op.dot3.f32(i32 55, float %7452, float %7453, float %7454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7489 = select i1 %233, float %7483, float %7452
  %7490 = select i1 %233, float %7488, float %7453
  %7491 = select i1 %233, float %7484, float %7454
  %7492 = and i32 %7487, 65535
  %7493 = uitofp i32 %7492 to float
  %7494 = lshr i32 %7487, 16
  %7495 = uitofp i32 %7494 to float
  %7496 = and i32 %7465, 65535
  %7497 = and i32 %7465, 50331648
  %7498 = icmp eq i32 %7497, 33554432
  %7499 = fsub fast float %7471, %171
  %7500 = fsub fast float %7472, %172
  %7501 = fsub fast float %7473, %173
  %7502 = call float @dx.op.dot3.f32(i32 55, float %7499, float %7500, float %7501, float %7499, float %7500, float %7501)  ; Dot3(ax,ay,az,bx,by,bz)
  %7503 = call float @dx.op.unary.f32(i32 24, float %7502)  ; Sqrt(value)
  %7504 = fdiv fast float 1.000000e+00, %7503
  %7505 = fmul fast float %7504, %7499
  %7506 = fmul fast float %7504, %7500
  %7507 = fmul fast float %7504, %7501
  %7508 = fadd fast float %7503, %7457
  %7509 = fdiv fast float 1.000000e+00, %7508
  %7510 = fmul float %7468, %7509
  %7511 = fmul float %7510, %7510
  %7512 = call float @dx.op.unary.f32(i32 7, float %7511)  ; Saturate(value)
  br i1 %7498, label %7513, label %7534

; <label>:7513                                    ; preds = %7437
  %7514 = fmul fast float %7479, %7460
  %7515 = fmul fast float %7479, %7461
  %7516 = fmul fast float %7479, %7462
  %7517 = fadd fast float %7499, %7514
  %7518 = fadd fast float %7500, %7515
  %7519 = fadd fast float %7501, %7516
  %7520 = call float @dx.op.dot3.f32(i32 55, float %7517, float %7518, float %7519, float %7517, float %7518, float %7519)  ; Dot3(ax,ay,az,bx,by,bz)
  %7521 = call float @dx.op.unary.f32(i32 25, float %7520)  ; Rsqrt(value)
  %7522 = fmul fast float %7521, %7517
  %7523 = fmul fast float %7521, %7518
  %7524 = fmul fast float %7521, %7519
  %7525 = fsub fast float %171, %7471
  %7526 = fsub fast float %172, %7472
  %7527 = fsub fast float %173, %7473
  %7528 = fsub fast float -0.000000e+00, %7525
  %7529 = fsub fast float -0.000000e+00, %7526
  %7530 = fsub fast float -0.000000e+00, %7527
  %7531 = call float @dx.op.dot3.f32(i32 55, float %7528, float %7529, float %7530, float %7460, float %7461, float %7462)  ; Dot3(ax,ay,az,bx,by,bz)
  %7532 = fcmp fast ogt float %7531, 0.000000e+00
  %7533 = uitofp i1 %7532 to float
  br label %7534

; <label>:7534                                    ; preds = %7513, %7437
  %7535 = phi float [ %7533, %7513 ], [ 1.000000e+00, %7437 ]
  %7536 = phi float [ %7522, %7513 ], [ %7505, %7437 ]
  %7537 = phi float [ %7523, %7513 ], [ %7506, %7437 ]
  %7538 = phi float [ %7524, %7513 ], [ %7507, %7437 ]
  %7539 = call float @dx.op.dot3.f32(i32 55, float %7460, float %7461, float %7462, float %7536, float %7537, float %7538)  ; Dot3(ax,ay,az,bx,by,bz)
  %7540 = fmul fast float %7539, %7539
  %7541 = call float @dx.op.unary.f32(i32 7, float %7540)  ; Saturate(value)
  %7542 = fsub fast float 1.000000e+00, %7541
  %7543 = fmul fast float %7542, 5.000000e-01
  %7544 = fcmp fast ogt float %7539, 0.000000e+00
  %7545 = fsub fast float 1.000000e+00, %7543
  %7546 = select i1 %7544, float %7543, float %7545
  %7547 = fmul fast float %7546, %7495
  %7548 = fadd fast float %7547, %7493
  %7549 = fmul fast float %7548, 0x3EF0001000000000
  %7550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7549, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7551 = extractvalue %dx.types.ResRet.f32 %7550, 0
  %7552 = fmul fast float %7539, %7477
  %7553 = fadd fast float %7552, %7478
  %7554 = call float @dx.op.unary.f32(i32 7, float %7553)  ; Saturate(value)
  %7555 = select i1 %7498, float 1.000000e+00, float %7554
  %7556 = select i1 %7498, float %7554, float 1.000000e+00
  %7557 = fmul fast float %7503, %7474
  %7558 = fsub fast float 1.000000e+00, %7557
  %7559 = fmul fast float %7558, %7480
  %7560 = call float @dx.op.unary.f32(i32 7, float %7559)  ; Saturate(value)
  %7561 = fmul fast float %7560, %7556
  %7562 = fmul fast float %7561, 2.000000e+00
  %7563 = fsub fast float 3.000000e+00, %7562
  %7564 = fmul fast float %7551, %7535
  %7565 = fmul fast float %7561, %7561
  %7566 = fmul fast float %7565, %7564
  %7567 = fmul fast float %7566, %7563
  %7568 = call float @dx.op.binary.f32(i32 36, float %7567, float %7567)  ; FMin(a,b)
  %7569 = call float @dx.op.binary.f32(i32 36, float %7567, float %7568)  ; FMin(a,b)
  %7570 = fcmp fast ogt float %7569, 0.000000e+00
  br i1 %7570, label %7579, label %7571, !dx.controlflow.hints !134

; <label>:7571                                    ; preds = %7964, %7725, %7534
  %7572 = phi float [ %7439, %7725 ], [ %7439, %7534 ], [ %8004, %7964 ]
  %7573 = phi float [ %7440, %7725 ], [ %7440, %7534 ], [ %8005, %7964 ]
  %7574 = phi float [ %7441, %7725 ], [ %7441, %7534 ], [ %8006, %7964 ]
  %7575 = phi float [ %7442, %7725 ], [ %7442, %7534 ], [ %7998, %7964 ]
  %7576 = phi float [ %7443, %7725 ], [ %7443, %7534 ], [ %7999, %7964 ]
  %7577 = phi float [ %7444, %7725 ], [ %7444, %7534 ], [ %8000, %7964 ]
  %7578 = icmp eq i32 %7438, %7448
  br i1 %7578, label %8007, label %7437

; <label>:7579                                    ; preds = %7534
  %7580 = icmp eq i32 %7496, 255
  br i1 %7580, label %7725, label %7581, !dx.controlflow.hints !135

; <label>:7581                                    ; preds = %7579
  %7582 = mul nuw nsw i32 %7496, 176
  %7583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7582, i32 undef)  ; BufferLoad(srv,index,wot)
  %7584 = extractvalue %dx.types.ResRet.f32 %7583, 0
  %7585 = extractvalue %dx.types.ResRet.f32 %7583, 1
  %7586 = extractvalue %dx.types.ResRet.f32 %7583, 2
  %7587 = extractvalue %dx.types.ResRet.f32 %7583, 3
  %7588 = add nuw nsw i32 %7582, 16
  %7589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7588, i32 undef)  ; BufferLoad(srv,index,wot)
  %7590 = extractvalue %dx.types.ResRet.f32 %7589, 0
  %7591 = extractvalue %dx.types.ResRet.f32 %7589, 1
  %7592 = add nuw nsw i32 %7582, 32
  %7593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7592, i32 undef)  ; BufferLoad(srv,index,wot)
  %7594 = extractvalue %dx.types.ResRet.f32 %7593, 0
  %7595 = extractvalue %dx.types.ResRet.f32 %7593, 1
  %7596 = extractvalue %dx.types.ResRet.f32 %7593, 2
  %7597 = add nuw nsw i32 %7582, 48
  %7598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7597, i32 undef)  ; BufferLoad(srv,index,wot)
  %7599 = extractvalue %dx.types.ResRet.f32 %7598, 0
  %7600 = extractvalue %dx.types.ResRet.f32 %7598, 1
  %7601 = extractvalue %dx.types.ResRet.f32 %7598, 2
  %7602 = extractvalue %dx.types.ResRet.f32 %7598, 3
  %7603 = add nuw nsw i32 %7582, 64
  %7604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7603, i32 undef)  ; BufferLoad(srv,index,wot)
  %7605 = extractvalue %dx.types.ResRet.f32 %7604, 0
  %7606 = extractvalue %dx.types.ResRet.f32 %7604, 1
  %7607 = extractvalue %dx.types.ResRet.f32 %7604, 2
  %7608 = extractvalue %dx.types.ResRet.f32 %7604, 3
  %7609 = add nuw nsw i32 %7582, 80
  %7610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7609, i32 undef)  ; BufferLoad(srv,index,wot)
  %7611 = extractvalue %dx.types.ResRet.f32 %7610, 0
  %7612 = extractvalue %dx.types.ResRet.f32 %7610, 1
  %7613 = extractvalue %dx.types.ResRet.f32 %7610, 2
  %7614 = extractvalue %dx.types.ResRet.f32 %7610, 3
  %7615 = add nuw nsw i32 %7582, 96
  %7616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7615, i32 undef)  ; BufferLoad(srv,index,wot)
  %7617 = extractvalue %dx.types.ResRet.f32 %7616, 0
  %7618 = extractvalue %dx.types.ResRet.f32 %7616, 1
  %7619 = extractvalue %dx.types.ResRet.f32 %7616, 2
  %7620 = extractvalue %dx.types.ResRet.f32 %7616, 3
  %7621 = bitcast float %7591 to i32
  %7622 = fmul fast float %7596, %121
  %7623 = fmul fast float %7596, %123
  %7624 = fmul fast float %7596, %125
  %7625 = fadd fast float %7622, %171
  %7626 = fadd fast float %7623, %172
  %7627 = fadd fast float %7624, %173
  %7628 = fmul fast float %7625, %7599
  %7629 = call float @dx.op.tertiary.f32(i32 46, float %7626, float %7605, float %7628)  ; FMad(a,b,c)
  %7630 = call float @dx.op.tertiary.f32(i32 46, float %7627, float %7611, float %7629)  ; FMad(a,b,c)
  %7631 = fadd fast float %7630, %7617
  %7632 = fmul fast float %7625, %7600
  %7633 = call float @dx.op.tertiary.f32(i32 46, float %7626, float %7606, float %7632)  ; FMad(a,b,c)
  %7634 = call float @dx.op.tertiary.f32(i32 46, float %7627, float %7612, float %7633)  ; FMad(a,b,c)
  %7635 = fadd fast float %7634, %7618
  %7636 = fmul fast float %7625, %7601
  %7637 = call float @dx.op.tertiary.f32(i32 46, float %7626, float %7607, float %7636)  ; FMad(a,b,c)
  %7638 = call float @dx.op.tertiary.f32(i32 46, float %7627, float %7613, float %7637)  ; FMad(a,b,c)
  %7639 = fadd fast float %7638, %7619
  %7640 = fmul fast float %7625, %7602
  %7641 = call float @dx.op.tertiary.f32(i32 46, float %7626, float %7608, float %7640)  ; FMad(a,b,c)
  %7642 = call float @dx.op.tertiary.f32(i32 46, float %7627, float %7614, float %7641)  ; FMad(a,b,c)
  %7643 = fadd fast float %7642, %7620
  %7644 = fdiv fast float %7631, %7643
  %7645 = fdiv fast float %7635, %7643
  %7646 = fdiv fast float %7639, %7643
  %7647 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7646)  ; FMax(a,b)
  %7648 = fmul fast float %244, 0x401921FB60000000
  %7649 = call float @dx.op.unary.f32(i32 13, float %7648)  ; Sin(value)
  %7650 = call float @dx.op.unary.f32(i32 12, float %7648)  ; Cos(value)
  %7651 = fmul fast float %7650, %7595
  %7652 = call float @dx.op.tertiary.f32(i32 46, float %7649, float %7595, float 0.000000e+00)  ; FMad(a,b,c)
  %7653 = fmul fast float %7595, %7649
  %7654 = fsub fast float -0.000000e+00, %7653
  %7655 = call float @dx.op.tertiary.f32(i32 46, float %7650, float %7595, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7656

; <label>:7656                                    ; preds = %7656, %7581
  %7657 = phi float [ 0.000000e+00, %7581 ], [ %7689, %7656 ]
  %7658 = phi float [ 0.000000e+00, %7581 ], [ %7691, %7656 ]
  %7659 = phi i32 [ 0, %7581 ], [ %7692, %7656 ]
  %7660 = mul i32 %7659, 2
  %7661 = add i32 0, %7660
  %7662 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7661
  %7663 = load float, float* %7662, align 4
  %7664 = mul i32 %7659, 2
  %7665 = add i32 1, %7664
  %7666 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7665
  %7667 = load float, float* %7666, align 4
  %7668 = fmul fast float %7651, %7663
  %7669 = call float @dx.op.tertiary.f32(i32 46, float %7667, float %7654, float %7668)  ; FMad(a,b,c)
  %7670 = fmul fast float %7663, %7652
  %7671 = call float @dx.op.tertiary.f32(i32 46, float %7667, float %7655, float %7670)  ; FMad(a,b,c)
  %7672 = fadd fast float %7669, %7644
  %7673 = fadd fast float %7671, %7645
  %7674 = fmul fast float %7672, %7590
  %7675 = fmul fast float %7673, %7590
  %7676 = call float @dx.op.binary.f32(i32 35, float %7674, float %7586)  ; FMax(a,b)
  %7677 = call float @dx.op.binary.f32(i32 35, float %7675, float %7586)  ; FMax(a,b)
  %7678 = call float @dx.op.binary.f32(i32 36, float %7676, float %7587)  ; FMin(a,b)
  %7679 = call float @dx.op.binary.f32(i32 36, float %7677, float %7587)  ; FMin(a,b)
  %7680 = fadd fast float %7678, %7584
  %7681 = fadd fast float %7679, %7585
  %7682 = uitofp i32 %7621 to float
  %7683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %7680, float %7681, float %7682, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7684 = extractvalue %dx.types.ResRet.f32 %7683, 0
  %7685 = fsub fast float %7684, %7647
  %7686 = fsub fast float %7685, %7594
  %7687 = fcmp fast ogt float %7686, 0.000000e+00
  %7688 = select i1 %7687, float 1.000000e+00, float 0.000000e+00
  %7689 = fadd fast float %7688, %7657
  %7690 = select i1 %7687, float %7686, float 0.000000e+00
  %7691 = fadd fast float %7690, %7658
  %7692 = add nuw nsw i32 %7659, 1
  %7693 = icmp eq i32 %7692, 8
  br i1 %7693, label %7694, label %7656

; <label>:7694                                    ; preds = %7656
  %7695 = fdiv fast float 1.000000e+00, %7689
  %7696 = fmul fast float %7695, %7691
  %7697 = fdiv fast float 1.000000e+00, %7647
  %7698 = fmul fast float %7696, %7697
  %7699 = call float @dx.op.unary.f32(i32 7, float %7698)  ; Saturate(value)
  %7700 = call float @dx.op.binary.f32(i32 35, float %7699, float 0.000000e+00)  ; FMax(a,b)
  %7701 = fmul fast float %7689, 1.250000e-01
  %7702 = call float @dx.op.unary.f32(i32 7, float %7701)  ; Saturate(value)
  %7703 = fmul fast float %7702, 2.000000e+00
  %7704 = fadd fast float %7703, -1.000000e+00
  %7705 = fcmp fast ogt float %7704, 0.000000e+00
  %7706 = fcmp fast olt float %7704, 0.000000e+00
  %7707 = zext i1 %7705 to i32
  %7708 = zext i1 %7706 to i32
  %7709 = sub nsw i32 %7707, %7708
  %7710 = sitofp i32 %7709 to float
  %7711 = fmul fast float %7710, %7704
  %7712 = fsub fast float 1.000000e+00, %7711
  %7713 = fmul fast float %7712, %7712
  %7714 = fmul fast float %7713, %7712
  %7715 = fsub fast float %7712, %7714
  %7716 = fmul fast float %7715, %7700
  %7717 = fsub fast float 1.000000e+00, %7714
  %7718 = fsub fast float %7717, %7716
  %7719 = fmul fast float %7710, 5.000000e-01
  %7720 = fmul fast float %7719, %7718
  %7721 = fsub fast float -5.000000e-01, %7720
  %7722 = fmul fast float %7721, %7555
  %7723 = fadd fast float %7722, 1.000000e+00
  %7724 = fmul fast float %7723, %7567
  br label %7725

; <label>:7725                                    ; preds = %7694, %7579
  %7726 = phi float [ %7724, %7694 ], [ %7567, %7579 ]
  %7727 = call float @dx.op.binary.f32(i32 36, float %7726, float %7726)  ; FMin(a,b)
  %7728 = call float @dx.op.binary.f32(i32 36, float %7726, float %7727)  ; FMin(a,b)
  %7729 = fcmp fast ogt float %7728, 0.000000e+00
  br i1 %7729, label %7730, label %7571, !dx.controlflow.hints !136

; <label>:7730                                    ; preds = %7725
  %7731 = fmul fast float %7726, %7489
  %7732 = fmul fast float %7726, %7490
  %7733 = fmul fast float %7726, %7491
  %7734 = fsub fast float %7473, %4684
  %7735 = fcmp fast ogt float %7734, 0.000000e+00
  %7736 = fsub fast float %173, %4684
  %7737 = fcmp fast ogt float %7736, 0.000000e+00
  %7738 = xor i1 %7737, %7735
  %7739 = fsub fast float %4684, %7473
  %7740 = fmul fast float %7739, 2.000000e+00
  %7741 = fadd fast float %7740, %7473
  %7742 = select i1 %7738, float %7473, float %7741
  %7743 = fsub fast float %7742, %173
  %7744 = call float @dx.op.dot3.f32(i32 55, float %7499, float %7500, float %7743, float %7499, float %7500, float %7743)  ; Dot3(ax,ay,az,bx,by,bz)
  %7745 = call float @dx.op.unary.f32(i32 25, float %7744)  ; Rsqrt(value)
  %7746 = fmul fast float %7745, %7499
  %7747 = fmul fast float %7745, %7500
  %7748 = fmul fast float %7745, %7743
  %7749 = fsub fast float %4684, %173
  %7750 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7749)  ; Dot3(ax,ay,az,bx,by,bz)
  %7751 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7746, float %7747, float %7748)  ; Dot3(ax,ay,az,bx,by,bz)
  %7752 = fdiv fast float 1.000000e+00, %7751
  %7753 = fmul fast float %7752, %7750
  %7754 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7736, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7755 = fcmp fast ogt float %7754, 0.000000e+00
  %7756 = fcmp fast olt float %7754, 0.000000e+00
  %7757 = zext i1 %7755 to i32
  %7758 = zext i1 %7756 to i32
  %7759 = sub nsw i32 %7757, %7758
  %7760 = sitofp i32 %7759 to float
  %7761 = fsub fast float %7742, %4684
  %7762 = call float @dx.op.dot3.f32(i32 55, float %7499, float %7500, float %7761, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7763 = fcmp fast ogt float %7762, 0.000000e+00
  %7764 = fcmp fast olt float %7762, 0.000000e+00
  %7765 = zext i1 %7763 to i32
  %7766 = zext i1 %7764 to i32
  %7767 = sub nsw i32 %7765, %7766
  %7768 = sitofp i32 %7767 to float
  %7769 = fcmp fast une float %7760, %7768
  br i1 %7769, label %7770, label %7780

; <label>:7770                                    ; preds = %7730
  %7771 = fmul fast float %7753, %7748
  %7772 = fmul fast float %7753, %7747
  %7773 = fmul fast float %7753, %7746
  %7774 = fmul fast float %7773, %7773
  %7775 = fmul fast float %7772, %7772
  %7776 = fadd fast float %7774, %7775
  %7777 = fmul fast float %7771, %7771
  %7778 = fadd fast float %7776, %7777
  %7779 = call float @dx.op.unary.f32(i32 24, float %7778)  ; Sqrt(value)
  br label %7792

; <label>:7780                                    ; preds = %7730
  %7781 = icmp slt i32 %7759, 0
  br i1 %7781, label %7782, label %7792

; <label>:7782                                    ; preds = %7780
  %7783 = fsub fast float %171, %7471
  %7784 = fsub fast float %172, %7472
  %7785 = fsub fast float %173, %7742
  %7786 = fmul fast float %7783, %7783
  %7787 = fmul fast float %7784, %7784
  %7788 = fadd fast float %7786, %7787
  %7789 = fmul fast float %7785, %7785
  %7790 = fadd fast float %7788, %7789
  %7791 = call float @dx.op.unary.f32(i32 24, float %7790)  ; Sqrt(value)
  br label %7792

; <label>:7792                                    ; preds = %7782, %7780, %7770
  %7793 = phi float [ %7779, %7770 ], [ %7791, %7782 ], [ 0.000000e+00, %7780 ]
  %7794 = and i1 %7737, %7735
  %7795 = fsub fast float -0.000000e+00, %7793
  %7796 = select i1 %7794, float -0.000000e+00, float %7795
  %7797 = fmul fast float %4681, 0x3FF7154760000000
  %7798 = fmul fast float %7797, %7796
  %7799 = fmul fast float %4682, 0x3FF7154760000000
  %7800 = fmul fast float %7799, %7796
  %7801 = fmul fast float %4683, 0x3FF7154760000000
  %7802 = fmul fast float %7801, %7796
  %7803 = call float @dx.op.unary.f32(i32 21, float %7798)  ; Exp(value)
  %7804 = call float @dx.op.unary.f32(i32 21, float %7800)  ; Exp(value)
  %7805 = call float @dx.op.unary.f32(i32 21, float %7802)  ; Exp(value)
  %7806 = call float @dx.op.unary.f32(i32 7, float %7803)  ; Saturate(value)
  %7807 = call float @dx.op.unary.f32(i32 7, float %7804)  ; Saturate(value)
  %7808 = call float @dx.op.unary.f32(i32 7, float %7805)  ; Saturate(value)
  %7809 = fmul fast float %7731, %7806
  %7810 = fmul fast float %7732, %7807
  %7811 = fmul fast float %7733, %7808
  %7812 = fsub fast float %7505, %4881
  %7813 = fsub fast float %7506, %4880
  %7814 = fsub fast float %7507, %4879
  %7815 = call float @dx.op.dot3.f32(i32 55, float %7812, float %7813, float %7814, float %7812, float %7813, float %7814)  ; Dot3(ax,ay,az,bx,by,bz)
  %7816 = call float @dx.op.unary.f32(i32 25, float %7815)  ; Rsqrt(value)
  %7817 = fmul fast float %7816, %7812
  %7818 = fmul fast float %7816, %7813
  %7819 = fmul fast float %7816, %7814
  %7820 = call float @dx.op.dot3.f32(i32 55, float %7505, float %7506, float %7507, float %4888, float %4889, float %4890)  ; Dot3(ax,ay,az,bx,by,bz)
  %7821 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4877, float %4876, float %7817, float %7818, float %7819)  ; Dot3(ax,ay,az,bx,by,bz)
  %7822 = call float @dx.op.unary.f32(i32 7, float %7820)  ; Saturate(value)
  %7823 = fmul fast float %7822, %7512
  %7824 = bitcast i32 %4920 to float
  %7825 = fmul fast float %7822, %7822
  %7826 = fmul fast float %7825, %7824
  %7827 = call float @dx.op.unary.f32(i32 7, float %7826)  ; Saturate(value)
  %7828 = fmul fast float %7823, %7827
  %7829 = bitcast float %7502 to i32
  %7830 = ashr i32 %7829, 1
  %7831 = sub nsw i32 1597463007, %7830
  %7832 = bitcast i32 %7831 to float
  %7833 = fmul fast float %7832, %7499
  %7834 = fmul fast float %7832, %7500
  %7835 = fmul fast float %7832, %7501
  %7836 = fsub fast float %7833, %4881
  %7837 = fsub fast float %7834, %4880
  %7838 = fsub fast float %7835, %4879
  %7839 = call float @dx.op.dot3.f32(i32 55, float %7836, float %7837, float %7838, float %7836, float %7837, float %7838)  ; Dot3(ax,ay,az,bx,by,bz)
  %7840 = call float @dx.op.unary.f32(i32 25, float %7839)  ; Rsqrt(value)
  %7841 = fmul fast float %7836, %7840
  %7842 = fmul fast float %7837, %7840
  %7843 = fmul fast float %7838, %7840
  %7844 = call float @dx.op.dot3.f32(i32 55, float %4888, float %4889, float %4890, float %7841, float %7842, float %7843)  ; Dot3(ax,ay,az,bx,by,bz)
  %7845 = fmul fast float %7844, %7844
  %7846 = call float @dx.op.unary.f32(i32 6, float %7820)  ; FAbs(value)
  %7847 = fsub fast float 1.000000e+00, %4914
  %7848 = fmul fast float %4896, %4896
  %7849 = fmul fast float %7848, %7847
  %7850 = fadd fast float %7849, %4914
  %7851 = bitcast float %7850 to i32
  %7852 = ashr i32 %7851, 1
  %7853 = add nsw i32 %7852, 532487669
  %7854 = bitcast i32 %7853 to float
  %7855 = fadd fast float %7854, %4896
  %7856 = fmul fast float %4914, %7845
  %7857 = fsub fast float 1.000000e+00, %7845
  %7858 = fadd fast float %7857, %7856
  %7859 = fmul fast float %7846, %7846
  %7860 = fmul fast float %7859, %7847
  %7861 = fadd fast float %7860, %4914
  %7862 = bitcast float %7861 to i32
  %7863 = ashr i32 %7862, 1
  %7864 = add nsw i32 %7863, 532487669
  %7865 = bitcast i32 %7864 to float
  %7866 = fadd fast float %7865, %7846
  %7867 = fmul fast float %7858, %7858
  %7868 = fmul fast float %7867, %7855
  %7869 = fmul fast float %7868, %7866
  %7870 = fdiv fast float 1.000000e+00, %7869
  %7871 = bitcast float %4914 to i32
  %7872 = sitofp i32 %7871 to float
  %7873 = fmul fast float %7872, 0x3FE7F73180000000
  %7874 = fadd fast float %7873, 0x41AFE27C40000000
  %7875 = fptosi float %7874 to i32
  %7876 = bitcast i32 %7875 to float
  %7877 = fmul fast float %7468, 0x3FD80E9D60000000
  %7878 = fmul fast float %7877, %7832
  %7879 = fadd fast float %7876, %7878
  %7880 = bitcast float %7879 to i32
  %7881 = sub nsw i32 2129859010, %7880
  %7882 = bitcast i32 %7881 to float
  %7883 = fmul fast float %4914, %7870
  %7884 = fmul fast float %7883, %7876
  %7885 = fmul fast float %7884, %7882
  %7886 = call float @dx.op.unary.f32(i32 6, float %7821)  ; FAbs(value)
  %7887 = fsub fast float 1.000000e+00, %7886
  %7888 = bitcast float %7887 to i32
  %7889 = sitofp i32 %7888 to float
  %7890 = fmul fast float %7889, 5.000000e+00
  %7891 = fadd fast float %7890, 0xC1EFBF8940000000
  %7892 = fptosi float %7891 to i32
  %7893 = bitcast i32 %7892 to float
  %7894 = fsub fast float 1.000000e+00, %4885
  %7895 = fsub fast float 1.000000e+00, %4886
  %7896 = fsub fast float 1.000000e+00, %4894
  %7897 = fmul fast float %7893, %7894
  %7898 = fmul fast float %7893, %7895
  %7899 = fmul fast float %7893, %7896
  %7900 = fadd fast float %7897, %4885
  %7901 = fadd fast float %7898, %4886
  %7902 = fadd fast float %7899, %4894
  br i1 %5207, label %7903, label %7926

; <label>:7903                                    ; preds = %7792
  %7904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4280, float %7886, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7905 = extractvalue %dx.types.ResRet.f32 %7904, 0
  %7906 = extractvalue %dx.types.ResRet.f32 %7904, 1
  %7907 = extractvalue %dx.types.ResRet.f32 %7904, 2
  %7908 = fadd fast float %7905, -5.000000e-01
  %7909 = fadd fast float %7906, -5.000000e-01
  %7910 = fadd fast float %7907, -5.000000e-01
  %7911 = fmul fast float %4885, 4.000000e+00
  %7912 = fmul fast float %7911, %7894
  %7913 = fmul fast float %7912, %7908
  %7914 = fmul fast float %4886, 4.000000e+00
  %7915 = fmul fast float %7914, %7895
  %7916 = fmul fast float %7915, %7909
  %7917 = fmul fast float %4894, 4.000000e+00
  %7918 = fmul fast float %7917, %7896
  %7919 = fmul fast float %7918, %7910
  %7920 = fadd fast float %7913, %7900
  %7921 = fadd fast float %7916, %7901
  %7922 = fadd fast float %7919, %7902
  %7923 = call float @dx.op.unary.f32(i32 7, float %7920)  ; Saturate(value)
  %7924 = call float @dx.op.unary.f32(i32 7, float %7921)  ; Saturate(value)
  %7925 = call float @dx.op.unary.f32(i32 7, float %7922)  ; Saturate(value)
  br label %7926

; <label>:7926                                    ; preds = %7903, %7792
  %7927 = phi float [ %7923, %7903 ], [ %7900, %7792 ]
  %7928 = phi float [ %7924, %7903 ], [ %7901, %7792 ]
  %7929 = phi float [ %7925, %7903 ], [ %7902, %7792 ]
  %7930 = fmul fast float %7820, 9.843750e-01
  %7931 = fadd fast float %7930, 7.812500e-03
  %7932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7931, float %5197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7933 = extractvalue %dx.types.ResRet.f32 %7932, 2
  %7934 = extractvalue %dx.types.ResRet.f32 %7932, 3
  %7935 = fmul fast float %7933, %4885
  %7936 = fmul fast float %7933, %4886
  %7937 = fmul fast float %7933, %4894
  %7938 = fadd fast float %7935, %7934
  %7939 = fadd fast float %7936, %7934
  %7940 = fadd fast float %7937, %7934
  br i1 %5207, label %7941, label %7964

; <label>:7941                                    ; preds = %7926
  %7942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4280, float %7820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7943 = extractvalue %dx.types.ResRet.f32 %7942, 0
  %7944 = extractvalue %dx.types.ResRet.f32 %7942, 1
  %7945 = extractvalue %dx.types.ResRet.f32 %7942, 2
  %7946 = fadd fast float %7943, -5.000000e-01
  %7947 = fadd fast float %7944, -5.000000e-01
  %7948 = fadd fast float %7945, -5.000000e-01
  %7949 = fmul fast float %4885, 4.000000e+00
  %7950 = fmul fast float %7949, %7894
  %7951 = fmul fast float %7950, %7946
  %7952 = fmul fast float %4886, 4.000000e+00
  %7953 = fmul fast float %7952, %7895
  %7954 = fmul fast float %7953, %7947
  %7955 = fmul fast float %4894, 4.000000e+00
  %7956 = fmul fast float %7955, %7896
  %7957 = fmul fast float %7956, %7948
  %7958 = fadd fast float %7951, %7938
  %7959 = fadd fast float %7954, %7939
  %7960 = fadd fast float %7957, %7940
  %7961 = call float @dx.op.unary.f32(i32 7, float %7958)  ; Saturate(value)
  %7962 = call float @dx.op.unary.f32(i32 7, float %7959)  ; Saturate(value)
  %7963 = call float @dx.op.unary.f32(i32 7, float %7960)  ; Saturate(value)
  br label %7964

; <label>:7964                                    ; preds = %7941, %7926
  %7965 = phi float [ %7961, %7941 ], [ %7938, %7926 ]
  %7966 = phi float [ %7962, %7941 ], [ %7939, %7926 ]
  %7967 = phi float [ %7963, %7941 ], [ %7940, %7926 ]
  %7968 = call float @dx.op.binary.f32(i32 35, float %7966, float %7967)  ; FMax(a,b)
  %7969 = call float @dx.op.binary.f32(i32 35, float %7965, float %7968)  ; FMax(a,b)
  %7970 = fsub fast float 1.000000e+00, %7969
  %7971 = fmul fast float %7927, %7885
  %7972 = fmul fast float %7928, %7885
  %7973 = fmul fast float %7929, %7885
  %7974 = fsub fast float 1.000000e+00, %7821
  %7975 = bitcast float %7974 to i32
  %7976 = sitofp i32 %7975 to float
  %7977 = fmul fast float %7976, 5.000000e+00
  %7978 = fadd fast float %7977, 0xC1EFBF8940000000
  %7979 = fptosi float %7978 to i32
  %7980 = bitcast i32 %7979 to float
  %7981 = fmul fast float %7980, %4281
  %7982 = fmul fast float %7970, %7981
  %7983 = fmul fast float %7982, %5767
  %7984 = fmul fast float %7982, %5768
  %7985 = fmul fast float %7982, %5769
  %7986 = fadd fast float %7983, %7971
  %7987 = fadd fast float %7984, %7972
  %7988 = fadd fast float %7985, %7973
  %7989 = fmul fast float %7809, %4277
  %7990 = fmul fast float %7989, %7828
  %7991 = fmul fast float %7990, %7970
  %7992 = fmul fast float %7810, %4277
  %7993 = fmul fast float %7992, %7828
  %7994 = fmul fast float %7993, %7970
  %7995 = fmul fast float %7811, %4277
  %7996 = fmul fast float %7995, %7828
  %7997 = fmul fast float %7996, %7970
  %7998 = fadd fast float %7991, %7442
  %7999 = fadd fast float %7994, %7443
  %8000 = fadd fast float %7997, %7444
  %8001 = fmul fast float %7990, %7986
  %8002 = fmul fast float %7993, %7987
  %8003 = fmul fast float %7996, %7988
  %8004 = fadd fast float %8001, %7439
  %8005 = fadd fast float %8002, %7440
  %8006 = fadd fast float %8003, %7441
  br label %7571

; <label>:8007                                    ; preds = %7571
  br label %8008

; <label>:8008                                    ; preds = %8007, %7405
  %8009 = phi float [ %7407, %7405 ], [ %7572, %8007 ]
  %8010 = phi float [ %7408, %7405 ], [ %7573, %8007 ]
  %8011 = phi float [ %7409, %7405 ], [ %7574, %8007 ]
  %8012 = phi float [ %7410, %7405 ], [ %7575, %8007 ]
  %8013 = phi float [ %7411, %7405 ], [ %7576, %8007 ]
  %8014 = phi float [ %7412, %7405 ], [ %7577, %8007 ]
  %8015 = add i32 %7406, 1
  %8016 = icmp ugt i32 %8015, %7402
  br i1 %8016, label %8017, label %7405

; <label>:8017                                    ; preds = %8008
  br label %8018

; <label>:8018                                    ; preds = %8017, %7355, %7345
  %8019 = phi float [ %7346, %7345 ], [ %7346, %7355 ], [ %8009, %8017 ]
  %8020 = phi float [ %7347, %7345 ], [ %7347, %7355 ], [ %8010, %8017 ]
  %8021 = phi float [ %7348, %7345 ], [ %7348, %7355 ], [ %8011, %8017 ]
  %8022 = phi float [ %7349, %7345 ], [ %7349, %7355 ], [ %8012, %8017 ]
  %8023 = phi float [ %7350, %7345 ], [ %7350, %7355 ], [ %8013, %8017 ]
  %8024 = phi float [ %7351, %7345 ], [ %7351, %7355 ], [ %8014, %8017 ]
  %8025 = fmul fast float %4277, %4277
  %8026 = fsub fast float 1.000000e+00, %8025
  %8027 = call float @dx.op.dot3.f32(i32 55, float %8026, float %8026, float %8026, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8028 = fsub fast float 1.000000e+00, %8027
  %8029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8030 = extractvalue %dx.types.CBufRet.f32 %8029, 0
  %8031 = fmul fast float %8030, %5774
  %8032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8033 = extractvalue %dx.types.CBufRet.f32 %8032, 3
  %8034 = fsub fast float 1.000000e+00, %4284
  %8035 = call float @dx.op.unary.f32(i32 7, float %8034)  ; Saturate(value)
  %8036 = fadd fast float %8024, %4283
  %8037 = fmul fast float %8036, %4284
  %8038 = fmul fast float %8035, %8033
  %8039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8040 = extractvalue %dx.types.CBufRet.f32 %8039, 3
  %8041 = fmul fast float %8022, %4882
  %8042 = fmul fast float %8023, %4883
  %8043 = fmul fast float %8024, %4884
  %8044 = fcmp fast ogt float %100, %193
  %8045 = and i1 %8044, %4687
  %8046 = or i1 %4693, %8045
  %8047 = icmp eq i32 %4686, 2
  %8048 = fcmp fast ole float %100, %193
  %8049 = and i1 %8048, %8047
  %8050 = or i1 %8049, %8046
  br i1 %8045, label %8051, label %8308

; <label>:8051                                    ; preds = %8018
  %8052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8053 = extractvalue %dx.types.CBufRet.f32 %8052, 2
  %8054 = extractvalue %dx.types.CBufRet.f32 %8052, 3
  %8055 = fmul fast float %8053, %112
  %8056 = fmul fast float %8054, %113
  %8057 = call float @dx.op.unary.f32(i32 7, float %8055)  ; Saturate(value)
  %8058 = call float @dx.op.unary.f32(i32 7, float %8056)  ; Saturate(value)
  %8059 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8057, float %8058, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8060 = extractvalue %dx.types.ResRet.f32 %8059, 0
  %8061 = extractvalue %dx.types.ResRet.f32 %8059, 1
  %8062 = extractvalue %dx.types.ResRet.f32 %8059, 2
  %8063 = extractvalue %dx.types.ResRet.f32 %8059, 3
  %8064 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8057, float %8058, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8065 = extractvalue %dx.types.ResRet.f32 %8064, 0
  %8066 = extractvalue %dx.types.ResRet.f32 %8064, 1
  %8067 = extractvalue %dx.types.ResRet.f32 %8064, 2
  %8068 = extractvalue %dx.types.ResRet.f32 %8064, 3
  %8069 = call float @dx.op.binary.f32(i32 35, float %8061, float %8062)  ; FMax(a,b)
  %8070 = call float @dx.op.binary.f32(i32 35, float %8060, float %8069)  ; FMax(a,b)
  %8071 = call float @dx.op.binary.f32(i32 35, float %8070, float %8063)  ; FMax(a,b)
  %8072 = call float @dx.op.binary.f32(i32 36, float %8066, float %8067)  ; FMin(a,b)
  %8073 = call float @dx.op.binary.f32(i32 36, float %8065, float %8072)  ; FMin(a,b)
  %8074 = call float @dx.op.binary.f32(i32 36, float %8073, float %8068)  ; FMin(a,b)
  %8075 = fmul fast float %8071, 2.550000e+02
  %8076 = fadd fast float %8075, 0x3F70101020000000
  %8077 = fptoui float %8076 to i32
  %8078 = fmul fast float %8074, 2.550000e+02
  %8079 = fadd fast float %8078, 0x3F70101020000000
  %8080 = fptoui float %8079 to i32
  %8081 = icmp ult i32 %8077, %8080
  br i1 %8081, label %8082, label %8250

; <label>:8082                                    ; preds = %8051
  %8083 = fcmp fast ogt float %99, 9.843750e-01
  %8084 = fadd fast float %100, -4.000000e+00
  %8085 = select i1 %8083, float -4.000000e+00, float %8084
  %8086 = call float @dx.op.binary.f32(i32 35, float %8085, float 0.000000e+00)  ; FMax(a,b)
  %8087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8088 = extractvalue %dx.types.CBufRet.f32 %8087, 0
  %8089 = fadd fast float %8088, %8086
  %8090 = extractvalue %dx.types.CBufRet.f32 %8087, 2
  %8091 = fmul fast float %8089, %8090
  %8092 = call float @dx.op.unary.f32(i32 23, float %8091)  ; Log(value)
  %8093 = extractvalue %dx.types.CBufRet.f32 %8087, 3
  %8094 = fmul fast float %8093, %8092
  %8095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8096 = extractvalue %dx.types.CBufRet.f32 %8095, 2
  %8097 = fmul fast float %8094, %8096
  %8098 = call float @dx.op.unary.f32(i32 7, float %8097)  ; Saturate(value)
  %8099 = uitofp i32 %8077 to float
  %8100 = uitofp i32 %8080 to float
  %8101 = fadd fast float %8099, 5.000000e-01
  %8102 = fadd fast float %8100, 5.000000e-01
  %8103 = fmul fast float %8096, %8101
  %8104 = fmul fast float %8096, %8102
  %8105 = fadd fast float %8103, 0x3F0FFB4800000000
  %8106 = fadd fast float %8104, 0xBF0FFB4800000000
  %8107 = call float @dx.op.binary.f32(i32 35, float %8098, float %8105)  ; FMax(a,b)
  %8108 = call float @dx.op.binary.f32(i32 36, float %8107, float %8106)  ; FMin(a,b)
  %8109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8110 = extractvalue %dx.types.CBufRet.f32 %8109, 1
  %8111 = extractvalue %dx.types.CBufRet.f32 %8109, 2
  %8112 = extractvalue %dx.types.CBufRet.f32 %8109, 0
  %8113 = fmul fast float %8110, %8108
  %8114 = fadd fast float %8112, %8113
  %8115 = fadd fast float %8112, %8111
  %8116 = fsub fast float %8110, %8111
  %8117 = fadd fast float %8116, %8112
  %8118 = call float @dx.op.binary.f32(i32 35, float %8114, float %8115)  ; FMax(a,b)
  %8119 = call float @dx.op.binary.f32(i32 36, float %8118, float %8117)  ; FMin(a,b)
  %8120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8057, float %8058, float %8119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8121 = extractvalue %dx.types.ResRet.f32 %8120, 0
  %8122 = extractvalue %dx.types.ResRet.f32 %8120, 1
  %8123 = extractvalue %dx.types.ResRet.f32 %8120, 2
  %8124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8125 = extractvalue %dx.types.CBufRet.i32 %8124, 0
  %8126 = extractvalue %dx.types.CBufRet.i32 %8124, 1
  %8127 = uitofp i32 %8125 to float
  %8128 = uitofp i32 %8126 to float
  %8129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8130 = extractvalue %dx.types.CBufRet.f32 %8129, 0
  %8131 = extractvalue %dx.types.CBufRet.f32 %8129, 1
  %8132 = fmul fast float %8127, %8057
  %8133 = fmul fast float %8128, %8058
  %8134 = fadd fast float %8132, -5.000000e-01
  %8135 = fadd fast float %8133, -5.000000e-01
  %8136 = call float @dx.op.unary.f32(i32 22, float %8134)  ; Frc(value)
  %8137 = call float @dx.op.unary.f32(i32 22, float %8135)  ; Frc(value)
  %8138 = fmul fast float %8136, %8136
  %8139 = fmul fast float %8138, %8136
  %8140 = fsub fast float 3.000000e+00, %8136
  %8141 = fmul fast float %8138, %8140
  %8142 = fmul fast float %8136, 3.000000e+00
  %8143 = fmul fast float %8139, 3.000000e+00
  %8144 = fmul fast float %8138, 6.000000e+00
  %8145 = fsub fast float %8143, %8144
  %8146 = fadd fast float %8145, 4.000000e+00
  %8147 = fmul fast float %8146, 0x3FC5555560000000
  %8148 = fmul fast float %8139, -3.000000e+00
  %8149 = fadd fast float %8138, %8136
  %8150 = fmul fast float %8149, 3.000000e+00
  %8151 = fadd fast float %8148, 1.000000e+00
  %8152 = fadd fast float %8151, %8150
  %8153 = fmul fast float %8139, 0x3FC5555560000000
  %8154 = fmul fast float %8137, %8137
  %8155 = fmul fast float %8154, %8137
  %8156 = fsub fast float 3.000000e+00, %8137
  %8157 = fmul fast float %8154, %8156
  %8158 = fmul fast float %8137, 3.000000e+00
  %8159 = fmul fast float %8155, 3.000000e+00
  %8160 = fmul fast float %8154, 6.000000e+00
  %8161 = fsub fast float %8159, %8160
  %8162 = fadd fast float %8161, 4.000000e+00
  %8163 = fmul fast float %8162, 0x3FC5555560000000
  %8164 = fmul fast float %8155, -3.000000e+00
  %8165 = fadd fast float %8154, %8137
  %8166 = fmul fast float %8165, 3.000000e+00
  %8167 = fadd fast float %8164, 1.000000e+00
  %8168 = fadd fast float %8167, %8166
  %8169 = fmul fast float %8155, 0x3FC5555560000000
  %8170 = fadd fast float %8136, 1.000000e+00
  %8171 = fsub fast float 1.000000e+00, %8142
  %8172 = fadd fast float %8171, %8141
  %8173 = fadd fast float %8172, %8146
  %8174 = fmul fast float %8173, 0x3FC5555560000000
  %8175 = fdiv fast float %8147, %8174
  %8176 = fsub fast float %8170, %8175
  %8177 = fsub fast float 1.000000e+00, %8136
  %8178 = fadd fast float %8152, %8139
  %8179 = fmul fast float %8178, 0x3FC5555560000000
  %8180 = fdiv fast float %8153, %8179
  %8181 = fadd fast float %8177, %8180
  %8182 = fadd fast float %8137, 1.000000e+00
  %8183 = fsub fast float 1.000000e+00, %8158
  %8184 = fadd fast float %8183, %8157
  %8185 = fadd fast float %8184, %8162
  %8186 = fmul fast float %8185, 0x3FC5555560000000
  %8187 = fdiv fast float %8163, %8186
  %8188 = fsub fast float %8182, %8187
  %8189 = fsub fast float 1.000000e+00, %8137
  %8190 = fadd fast float %8168, %8155
  %8191 = fmul fast float %8190, 0x3FC5555560000000
  %8192 = fdiv fast float %8169, %8191
  %8193 = fadd fast float %8192, %8189
  %8194 = fmul fast float %8176, %8130
  %8195 = fsub fast float %8057, %8194
  %8196 = fmul fast float %8181, %8130
  %8197 = fadd fast float %8196, %8057
  %8198 = fmul fast float %8193, %8131
  %8199 = fadd fast float %8198, %8058
  %8200 = fmul fast float %8188, %8131
  %8201 = fsub fast float %8058, %8200
  %8202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8195, float %8201, float %8119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8203 = extractvalue %dx.types.ResRet.f32 %8202, 0
  %8204 = extractvalue %dx.types.ResRet.f32 %8202, 1
  %8205 = extractvalue %dx.types.ResRet.f32 %8202, 2
  %8206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8197, float %8201, float %8119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8207 = extractvalue %dx.types.ResRet.f32 %8206, 0
  %8208 = extractvalue %dx.types.ResRet.f32 %8206, 1
  %8209 = extractvalue %dx.types.ResRet.f32 %8206, 2
  %8210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8195, float %8199, float %8119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8211 = extractvalue %dx.types.ResRet.f32 %8210, 0
  %8212 = extractvalue %dx.types.ResRet.f32 %8210, 1
  %8213 = extractvalue %dx.types.ResRet.f32 %8210, 2
  %8214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8197, float %8199, float %8119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8215 = extractvalue %dx.types.ResRet.f32 %8214, 0
  %8216 = extractvalue %dx.types.ResRet.f32 %8214, 1
  %8217 = extractvalue %dx.types.ResRet.f32 %8214, 2
  %8218 = fsub fast float %8211, %8203
  %8219 = fsub fast float %8212, %8204
  %8220 = fsub fast float %8213, %8205
  %8221 = fmul fast float %8218, %8191
  %8222 = fmul fast float %8219, %8191
  %8223 = fmul fast float %8220, %8191
  %8224 = fadd fast float %8221, %8203
  %8225 = fadd fast float %8222, %8204
  %8226 = fadd fast float %8223, %8205
  %8227 = fsub fast float %8215, %8207
  %8228 = fsub fast float %8216, %8208
  %8229 = fsub fast float %8217, %8209
  %8230 = fmul fast float %8227, %8191
  %8231 = fmul fast float %8228, %8191
  %8232 = fmul fast float %8229, %8191
  %8233 = fsub fast float %8207, %8224
  %8234 = fadd fast float %8233, %8230
  %8235 = fsub fast float %8208, %8225
  %8236 = fadd fast float %8235, %8231
  %8237 = fsub fast float %8209, %8226
  %8238 = fadd fast float %8237, %8232
  %8239 = fmul fast float %8234, %8179
  %8240 = fmul fast float %8236, %8179
  %8241 = fmul fast float %8238, %8179
  %8242 = fadd fast float %8239, %8224
  %8243 = fadd fast float %8240, %8225
  %8244 = fadd fast float %8241, %8226
  %8245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8245, 1
  %8247 = fmul fast float %8242, %8246
  %8248 = fmul fast float %8243, %8246
  %8249 = fmul fast float %8244, %8246
  br label %8250

; <label>:8250                                    ; preds = %8082, %8051
  %8251 = phi float [ %8121, %8082 ], [ 1.000000e+00, %8051 ]
  %8252 = phi float [ %8122, %8082 ], [ 1.000000e+00, %8051 ]
  %8253 = phi float [ %8123, %8082 ], [ 1.000000e+00, %8051 ]
  %8254 = phi float [ %8247, %8082 ], [ 0.000000e+00, %8051 ]
  %8255 = phi float [ %8248, %8082 ], [ 0.000000e+00, %8051 ]
  %8256 = phi float [ %8249, %8082 ], [ 0.000000e+00, %8051 ]
  %8257 = fmul fast float %8254, %8028
  %8258 = fmul fast float %8255, %8028
  %8259 = fmul fast float %8256, %8028
  %8260 = call float @dx.op.dot3.f32(i32 55, float %8251, float %8252, float %8253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8261 = call float @dx.op.dot3.f32(i32 55, float %8257, float %8258, float %8259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8262 = select i1 %233, float %8260, float %8251
  %8263 = select i1 %233, float %8260, float %8252
  %8264 = select i1 %233, float 1.000000e+00, float %8253
  %8265 = select i1 %233, float %8261, float %8257
  %8266 = select i1 %233, float 0.000000e+00, float %8258
  %8267 = select i1 %233, float 0.000000e+00, float %8259
  %8268 = fmul fast float %8262, %8041
  %8269 = fmul fast float %8263, %8042
  %8270 = fmul fast float %8264, %8043
  %8271 = fadd fast float %8268, %8265
  %8272 = fadd fast float %8269, %8266
  %8273 = fadd fast float %8267, %8270
  %8274 = fmul fast float %8262, %8019
  %8275 = fmul fast float %8263, %8020
  %8276 = fmul fast float %8264, %8021
  %8277 = fmul fast float %141, %8053
  %8278 = fmul fast float %143, %8054
  %8279 = fsub fast float 1.000000e+00, %8277
  %8280 = fsub fast float 1.000000e+00, %8278
  %8281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8282 = extractvalue %dx.types.CBufRet.f32 %8281, 0
  %8283 = extractvalue %dx.types.CBufRet.f32 %8281, 1
  %8284 = extractvalue %dx.types.CBufRet.f32 %8281, 2
  %8285 = fmul fast float %8279, %8282
  %8286 = fmul fast float %8279, %8283
  %8287 = fmul fast float %8279, %8284
  %8288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8289 = extractvalue %dx.types.CBufRet.f32 %8288, 0
  %8290 = extractvalue %dx.types.CBufRet.f32 %8288, 1
  %8291 = extractvalue %dx.types.CBufRet.f32 %8288, 2
  %8292 = fmul fast float %8280, %8289
  %8293 = fmul fast float %8280, %8290
  %8294 = fmul fast float %8280, %8291
  %8295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8296 = extractvalue %dx.types.CBufRet.f32 %8295, 0
  %8297 = extractvalue %dx.types.CBufRet.f32 %8295, 1
  %8298 = extractvalue %dx.types.CBufRet.f32 %8295, 2
  %8299 = fadd fast float %8292, %8296
  %8300 = fadd fast float %8299, %8285
  %8301 = fadd fast float %8293, %8297
  %8302 = fadd fast float %8301, %8286
  %8303 = fadd fast float %8294, %8298
  %8304 = fadd fast float %8303, %8287
  %8305 = fmul fast float %8300, %193
  %8306 = fmul fast float %8302, %193
  %8307 = fmul fast float %8304, %193
  br label %8308

; <label>:8308                                    ; preds = %8250, %8018
  %8309 = phi float [ %8305, %8250 ], [ %171, %8018 ]
  %8310 = phi float [ %8306, %8250 ], [ %172, %8018 ]
  %8311 = phi float [ %8307, %8250 ], [ %173, %8018 ]
  %8312 = phi float [ %193, %8250 ], [ %100, %8018 ]
  %8313 = phi float [ %8271, %8250 ], [ %8041, %8018 ]
  %8314 = phi float [ %8272, %8250 ], [ %8042, %8018 ]
  %8315 = phi float [ %8273, %8250 ], [ %8043, %8018 ]
  %8316 = phi float [ %8274, %8250 ], [ %8019, %8018 ]
  %8317 = phi float [ %8275, %8250 ], [ %8020, %8018 ]
  %8318 = phi float [ %8276, %8250 ], [ %8021, %8018 ]
  %8319 = phi float [ %8251, %8250 ], [ 1.000000e+00, %8018 ]
  br i1 %8050, label %9474, label %8320

; <label>:8320                                    ; preds = %8308
  %8321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8322 = extractvalue %dx.types.CBufRet.f32 %8321, 0
  %8323 = extractvalue %dx.types.CBufRet.f32 %8321, 1
  %8324 = extractvalue %dx.types.CBufRet.f32 %8321, 2
  %8325 = extractvalue %dx.types.CBufRet.f32 %8321, 3
  %8326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8327 = extractvalue %dx.types.CBufRet.f32 %8326, 0
  %8328 = extractvalue %dx.types.CBufRet.f32 %8326, 1
  %8329 = extractvalue %dx.types.CBufRet.f32 %8326, 2
  %8330 = extractvalue %dx.types.CBufRet.f32 %8326, 3
  %8331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8332 = extractvalue %dx.types.CBufRet.f32 %8331, 0
  %8333 = extractvalue %dx.types.CBufRet.f32 %8331, 1
  %8334 = extractvalue %dx.types.CBufRet.f32 %8331, 2
  %8335 = extractvalue %dx.types.CBufRet.f32 %8331, 3
  %8336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8337 = extractvalue %dx.types.CBufRet.f32 %8336, 0
  %8338 = extractvalue %dx.types.CBufRet.f32 %8336, 1
  %8339 = extractvalue %dx.types.CBufRet.f32 %8336, 2
  %8340 = extractvalue %dx.types.CBufRet.f32 %8336, 3
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 3
  %8343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8344 = extractvalue %dx.types.CBufRet.f32 %8343, 3
  %8345 = extractvalue %dx.types.CBufRet.f32 %8343, 0
  %8346 = extractvalue %dx.types.CBufRet.f32 %8343, 1
  %8347 = extractvalue %dx.types.CBufRet.f32 %8343, 2
  %8348 = fcmp fast olt float %8347, -5.000000e-01
  %8349 = call float @dx.op.dot3.f32(i32 55, float %8309, float %8310, float %8311, float %8309, float %8310, float %8311)  ; Dot3(ax,ay,az,bx,by,bz)
  %8350 = call float @dx.op.unary.f32(i32 25, float %8349)  ; Rsqrt(value)
  %8351 = fmul fast float %8350, %8349
  %8352 = fmul fast float %8350, %8309
  %8353 = fmul fast float %8350, %8310
  %8354 = fmul fast float %8350, %8311
  %8355 = fadd fast float %8351, %8325
  %8356 = call float @dx.op.dot3.f32(i32 55, float %8352, float %8353, float %8354, float %8322, float %8323, float %8324)  ; Dot3(ax,ay,az,bx,by,bz)
  %8357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8358 = extractvalue %dx.types.CBufRet.i32 %8357, 1
  %8359 = and i32 %8358, 1
  %8360 = icmp ne i32 %8359, 0
  %8361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8361, 2
  %8363 = fcmp fast ogt float %8362, 0.000000e+00
  %8364 = and i1 %8360, %8363
  br i1 %8364, label %8365, label %8771, !dx.controlflow.hints !137

; <label>:8365                                    ; preds = %8320
  %8366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8367 = extractvalue %dx.types.CBufRet.f32 %8366, 3
  %8368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8369 = extractvalue %dx.types.CBufRet.f32 %8368, 2
  %8370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.f32 %8370, 2
  %8372 = fsub fast float %8369, %8371
  %8373 = and i32 %8358, 2
  %8374 = extractvalue %dx.types.CBufRet.i32 %8357, 0
  %8375 = call i32 @dx.op.binary.i32(i32 40, i32 %8374, i32 3)  ; UMin(a,b)
  %8376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8377 = extractvalue %dx.types.CBufRet.f32 %8376, 0
  %8378 = extractvalue %dx.types.CBufRet.f32 %8376, 1
  %8379 = extractvalue %dx.types.CBufRet.f32 %8370, 0
  %8380 = extractvalue %dx.types.CBufRet.f32 %8370, 1
  %8381 = fsub fast float %8377, %8379
  %8382 = fsub fast float %8378, %8380
  %8383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8384 = extractvalue %dx.types.CBufRet.f32 %8383, 0
  %8385 = fcmp fast ogt float %8384, 0.000000e+00
  %8386 = fsub fast float -0.000000e+00, %8381
  %8387 = fsub fast float -0.000000e+00, %8382
  %8388 = call float @dx.op.dot2.f32(i32 54, float %8352, float %8353, float %8352, float %8353)  ; Dot2(ax,ay,bx,by)
  %8389 = call float @dx.op.dot2.f32(i32 54, float %8352, float %8353, float %8386, float %8387)  ; Dot2(ax,ay,bx,by)
  %8390 = fmul fast float %8389, 2.000000e+00
  %8391 = call float @dx.op.dot2.f32(i32 54, float %8386, float %8387, float %8386, float %8387)  ; Dot2(ax,ay,bx,by)
  %8392 = fmul fast float %8384, %8384
  %8393 = fsub fast float %8391, %8392
  %8394 = fmul fast float %8390, %8390
  %8395 = fmul fast float %8388, 4.000000e+00
  %8396 = fmul fast float %8395, %8393
  %8397 = fsub fast float %8394, %8396
  %8398 = fcmp fast ogt float %8397, 0.000000e+00
  br i1 %8398, label %8399, label %8414

; <label>:8399                                    ; preds = %8365
  %8400 = fcmp fast ogt float %8390, 0.000000e+00
  %8401 = call float @dx.op.unary.f32(i32 24, float %8397)  ; Sqrt(value)
  %8402 = fsub fast float -0.000000e+00, %8401
  %8403 = select i1 %8400, float %8401, float %8402
  %8404 = fadd fast float %8403, %8390
  %8405 = fmul float %8404, -5.000000e-01
  %8406 = fdiv fast float %8405, %8388
  %8407 = call float @dx.op.binary.f32(i32 35, float %8406, float 0.000000e+00)  ; FMax(a,b)
  %8408 = call float @dx.op.binary.f32(i32 36, float %8351, float %8407)  ; FMin(a,b)
  %8409 = fdiv fast float %8393, %8405
  %8410 = call float @dx.op.binary.f32(i32 35, float %8409, float 0.000000e+00)  ; FMax(a,b)
  %8411 = call float @dx.op.binary.f32(i32 36, float %8351, float %8410)  ; FMin(a,b)
  %8412 = call float @dx.op.binary.f32(i32 36, float %8408, float %8411)  ; FMin(a,b)
  %8413 = call float @dx.op.binary.f32(i32 35, float %8408, float %8411)  ; FMax(a,b)
  br label %8414

; <label>:8414                                    ; preds = %8399, %8365
  %8415 = phi float [ %8413, %8399 ], [ -1.000000e+00, %8365 ]
  %8416 = phi float [ %8412, %8399 ], [ -1.000000e+00, %8365 ]
  %8417 = phi i1 [ true, %8399 ], [ false, %8365 ]
  %8418 = and i1 %8385, %8417
  br i1 %8418, label %8419, label %8421

; <label>:8419                                    ; preds = %8414
  %8420 = fcmp fast oeq float %8416, %8415
  br i1 %8420, label %8724, label %8422

; <label>:8421                                    ; preds = %8414
  br i1 %8385, label %8724, label %8422

; <label>:8422                                    ; preds = %8421, %8419
  %8423 = phi float [ %8351, %8421 ], [ %8415, %8419 ]
  %8424 = phi float [ 0.000000e+00, %8421 ], [ %8416, %8419 ]
  %8425 = icmp ne i32 %8373, 0
  %8426 = fmul fast float %8423, %8354
  %8427 = fadd fast float %8426, %8367
  %8428 = fmul fast float %8427, %8423
  %8429 = select i1 %8425, float 0.000000e+00, float %8428
  %8430 = fcmp fast oeq float %8354, 0.000000e+00
  %8431 = fdiv fast float %8372, %8354
  %8432 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8431)  ; FMax(a,b)
  %8433 = select i1 %8430, float %8423, float %8432
  %8434 = call float @dx.op.binary.f32(i32 36, float %8423, float %8433)  ; FMin(a,b)
  %8435 = fcmp fast ogt float %8354, 0.000000e+00
  %8436 = fcmp fast olt float %8372, 0.000000e+00
  br i1 %8435, label %8437, label %8494

; <label>:8437                                    ; preds = %8422
  %8438 = icmp eq i32 %8373, 0
  br i1 %8436, label %8439, label %8483

; <label>:8439                                    ; preds = %8437
  %8440 = select i1 %8438, float %8423, float 0.000000e+00
  %8441 = fsub fast float -0.000000e+00, %8440
  %8442 = call float @dx.op.unary.f32(i32 6, float %8441)  ; FAbs(value)
  %8443 = fmul fast float %8440, %8354
  %8444 = fadd fast float %8443, %8367
  %8445 = fmul fast float %8442, %8444
  %8446 = fsub fast float %8429, %8445
  %8447 = fsub fast float %8423, %8442
  %8448 = select i1 %8438, float %8447, float 0.000000e+00
  %8449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8450 = extractvalue %dx.types.CBufRet.f32 %8449, 0
  %8451 = extractvalue %dx.types.CBufRet.f32 %8449, 1
  %8452 = extractvalue %dx.types.CBufRet.f32 %8449, 2
  %8453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8454 = extractvalue %dx.types.CBufRet.f32 %8453, 0
  %8455 = extractvalue %dx.types.CBufRet.f32 %8453, 1
  %8456 = extractvalue %dx.types.CBufRet.f32 %8453, 2
  %8457 = extractvalue %dx.types.CBufRet.f32 %8453, 3
  %8458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8459 = extractvalue %dx.types.CBufRet.f32 %8458, 3
  %8460 = call float @dx.op.binary.f32(i32 36, float %8446, float %8459)  ; FMin(a,b)
  %8461 = fmul fast float %8457, %8448
  %8462 = call float @dx.op.unary.f32(i32 7, float %8461)  ; Saturate(value)
  %8463 = fsub fast float %8454, %8450
  %8464 = fsub fast float %8455, %8451
  %8465 = fsub fast float %8456, %8452
  %8466 = fmul fast float %8462, %8463
  %8467 = fmul fast float %8462, %8464
  %8468 = fmul fast float %8462, %8465
  %8469 = fadd fast float %8466, %8450
  %8470 = fadd fast float %8467, %8451
  %8471 = fadd fast float %8468, %8452
  %8472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8473 = extractvalue %dx.types.CBufRet.f32 %8472, 0
  %8474 = extractvalue %dx.types.CBufRet.f32 %8472, 1
  %8475 = fadd fast float %8474, %8473
  %8476 = call float @dx.op.unary.f32(i32 7, float %8475)  ; Saturate(value)
  %8477 = extractvalue %dx.types.CBufRet.f32 %8472, 2
  %8478 = extractvalue %dx.types.CBufRet.f32 %8472, 3
  %8479 = fadd fast float %8478, %8477
  %8480 = call float @dx.op.unary.f32(i32 7, float %8479)  ; Saturate(value)
  %8481 = fmul fast float %8476, %8460
  %8482 = fmul fast float %8481, %8480
  br label %8724

; <label>:8483                                    ; preds = %8437
  br i1 %8438, label %8484, label %8505

; <label>:8484                                    ; preds = %8483
  %8485 = call float @dx.op.binary.f32(i32 36, float %8434, float %8424)  ; FMin(a,b)
  %8486 = fsub fast float %8434, %8485
  %8487 = fsub fast float %8486, %8423
  %8488 = call float @dx.op.unary.f32(i32 6, float %8487)  ; FAbs(value)
  %8489 = fadd fast float %8486, %8423
  %8490 = fmul fast float %8489, %8354
  %8491 = fadd fast float %8490, %8367
  %8492 = fmul fast float %8491, %8488
  %8493 = fsub fast float %8429, %8492
  br label %8505

; <label>:8494                                    ; preds = %8422
  br i1 %8436, label %8495, label %8505

; <label>:8495                                    ; preds = %8494
  %8496 = call float @dx.op.binary.f32(i32 35, float %8424, float %8434)  ; FMax(a,b)
  %8497 = icmp eq i32 %8373, 0
  %8498 = select i1 %8497, float %8434, float 0.000000e+00
  %8499 = fsub fast float -0.000000e+00, %8498
  %8500 = call float @dx.op.unary.f32(i32 6, float %8499)  ; FAbs(value)
  %8501 = fmul fast float %8498, %8354
  %8502 = fadd fast float %8501, %8367
  %8503 = fmul fast float %8500, %8502
  %8504 = fsub fast float %8429, %8503
  br label %8505

; <label>:8505                                    ; preds = %8495, %8494, %8484, %8483
  %8506 = phi float [ %8424, %8483 ], [ %8424, %8484 ], [ %8496, %8495 ], [ %8424, %8494 ]
  %8507 = phi float [ 0.000000e+00, %8483 ], [ %8488, %8484 ], [ %8500, %8495 ], [ 0.000000e+00, %8494 ]
  %8508 = phi float [ %8429, %8483 ], [ %8493, %8484 ], [ %8504, %8495 ], [ %8429, %8494 ]
  %8509 = phi float [ %8434, %8483 ], [ %8434, %8484 ], [ %8423, %8495 ], [ %8423, %8494 ]
  %8510 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %8510, align 4, !tbaa !124, !noalias !138
  %8511 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %8511, align 4, !tbaa !124, !noalias !138
  %8512 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %8512, align 4, !tbaa !124, !noalias !138
  %8513 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 0
  store float -1.000000e+00, float* %8513, align 4, !tbaa !124, !noalias !138
  %8514 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 1
  store float -1.000000e+00, float* %8514, align 4, !tbaa !124, !noalias !138
  %8515 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 2
  store float -1.000000e+00, float* %8515, align 4, !tbaa !124, !noalias !138
  %8516 = icmp sgt i32 %8375, 0
  br i1 %8516, label %8517, label %8578

; <label>:8517                                    ; preds = %8505
  br label %8518

; <label>:8518                                    ; preds = %8567, %8517
  %8519 = phi i32 [ %8568, %8567 ], [ 0, %8517 ]
  %8520 = phi i32 [ %8569, %8567 ], [ 0, %8517 ]
  %8521 = add nuw i32 %8520, 171
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8521)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 0
  %8524 = extractvalue %dx.types.CBufRet.f32 %8522, 1
  %8525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8526 = extractvalue %dx.types.CBufRet.f32 %8525, 0
  %8527 = extractvalue %dx.types.CBufRet.f32 %8525, 1
  %8528 = fsub fast float %8523, %8526
  %8529 = fsub fast float %8524, %8527
  %8530 = extractvalue %dx.types.CBufRet.f32 %8522, 2
  %8531 = fsub fast float -0.000000e+00, %8528
  %8532 = fsub fast float -0.000000e+00, %8529
  %8533 = call float @dx.op.dot2.f32(i32 54, float %8352, float %8353, float %8531, float %8532)  ; Dot2(ax,ay,bx,by)
  %8534 = fmul fast float %8533, 2.000000e+00
  %8535 = call float @dx.op.dot2.f32(i32 54, float %8531, float %8532, float %8531, float %8532)  ; Dot2(ax,ay,bx,by)
  %8536 = fmul fast float %8530, %8530
  %8537 = fsub fast float %8535, %8536
  %8538 = fmul fast float %8534, %8534
  %8539 = fmul fast float %8395, %8537
  %8540 = fsub fast float %8538, %8539
  %8541 = fcmp fast ogt float %8540, 0.000000e+00
  br i1 %8541, label %8542, label %8557

; <label>:8542                                    ; preds = %8518
  %8543 = fcmp fast ogt float %8534, 0.000000e+00
  %8544 = call float @dx.op.unary.f32(i32 24, float %8540)  ; Sqrt(value)
  %8545 = fsub fast float -0.000000e+00, %8544
  %8546 = select i1 %8543, float %8544, float %8545
  %8547 = fadd fast float %8546, %8534
  %8548 = fmul float %8547, -5.000000e-01
  %8549 = fdiv fast float %8548, %8388
  %8550 = call float @dx.op.binary.f32(i32 35, float %8549, float 0.000000e+00)  ; FMax(a,b)
  %8551 = call float @dx.op.binary.f32(i32 36, float %8423, float %8550)  ; FMin(a,b)
  %8552 = fdiv fast float %8537, %8548
  %8553 = call float @dx.op.binary.f32(i32 35, float %8552, float 0.000000e+00)  ; FMax(a,b)
  %8554 = call float @dx.op.binary.f32(i32 36, float %8423, float %8553)  ; FMin(a,b)
  %8555 = call float @dx.op.binary.f32(i32 36, float %8551, float %8554)  ; FMin(a,b)
  %8556 = call float @dx.op.binary.f32(i32 35, float %8551, float %8554)  ; FMax(a,b)
  br label %8557

; <label>:8557                                    ; preds = %8542, %8518
  %8558 = phi float [ %8556, %8542 ], [ -1.000000e+00, %8518 ]
  %8559 = phi float [ %8555, %8542 ], [ -1.000000e+00, %8518 ]
  %8560 = phi i1 [ true, %8542 ], [ false, %8518 ]
  br i1 %8560, label %8561, label %8567

; <label>:8561                                    ; preds = %8557
  %8562 = call float @dx.op.binary.f32(i32 35, float %8506, float %8559)  ; FMax(a,b)
  %8563 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %8520
  store float %8562, float* %8563, align 4, !tbaa !124, !noalias !138
  %8564 = call float @dx.op.binary.f32(i32 35, float %8506, float %8558)  ; FMax(a,b)
  %8565 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8520
  store float %8564, float* %8565, align 4, !tbaa !124, !noalias !138
  %8566 = add nsw i32 %8519, 1
  br label %8567

; <label>:8567                                    ; preds = %8561, %8557
  %8568 = phi i32 [ %8566, %8561 ], [ %8519, %8557 ]
  %8569 = add nuw nsw i32 %8520, 1
  %8570 = icmp eq i32 %8569, %8375
  br i1 %8570, label %8571, label %8518

; <label>:8571                                    ; preds = %8567
  %8572 = load float, float* %8512, align 4, !tbaa !124, !alias.scope !154, !noalias !157
  %8573 = load float, float* %8511, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  %8574 = load float, float* %8510, align 4, !tbaa !124, !alias.scope !162, !noalias !163
  %8575 = load float, float* %8515, align 4, !tbaa !124, !alias.scope !164, !noalias !167
  %8576 = load float, float* %8514, align 4, !tbaa !124, !alias.scope !170, !noalias !171
  %8577 = load float, float* %8513, align 4, !tbaa !124, !alias.scope !172, !noalias !173
  br label %8578

; <label>:8578                                    ; preds = %8571, %8505
  %8579 = phi float [ -1.000000e+00, %8505 ], [ %8577, %8571 ]
  %8580 = phi float [ -1.000000e+00, %8505 ], [ %8576, %8571 ]
  %8581 = phi float [ -1.000000e+00, %8505 ], [ %8575, %8571 ]
  %8582 = phi float [ -1.000000e+00, %8505 ], [ %8574, %8571 ]
  %8583 = phi float [ -1.000000e+00, %8505 ], [ %8573, %8571 ]
  %8584 = phi float [ -1.000000e+00, %8505 ], [ %8572, %8571 ]
  %8585 = phi i32 [ 0, %8505 ], [ %8568, %8571 ]
  %8586 = call float @dx.op.binary.f32(i32 36, float %8583, float %8584)  ; FMin(a,b)
  %8587 = call float @dx.op.binary.f32(i32 36, float %8582, float %8586)  ; FMin(a,b)
  %8588 = call float @dx.op.binary.f32(i32 35, float %8582, float %8583)  ; FMax(a,b)
  %8589 = call float @dx.op.binary.f32(i32 36, float %8588, float %8584)  ; FMin(a,b)
  %8590 = call float @dx.op.binary.f32(i32 36, float %8582, float %8583)  ; FMin(a,b)
  %8591 = call float @dx.op.binary.f32(i32 35, float %8590, float %8589)  ; FMax(a,b)
  %8592 = call float @dx.op.binary.f32(i32 35, float %8583, float %8584)  ; FMax(a,b)
  %8593 = call float @dx.op.binary.f32(i32 35, float %8582, float %8592)  ; FMax(a,b)
  store float %8587, float* %8510, align 4, !tbaa !124, !alias.scope !162, !noalias !163
  store float %8591, float* %8511, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %8593, float* %8512, align 4, !tbaa !124, !alias.scope !154, !noalias !157
  %8594 = call float @dx.op.binary.f32(i32 36, float %8580, float %8581)  ; FMin(a,b)
  %8595 = call float @dx.op.binary.f32(i32 36, float %8579, float %8594)  ; FMin(a,b)
  %8596 = call float @dx.op.binary.f32(i32 35, float %8579, float %8580)  ; FMax(a,b)
  %8597 = call float @dx.op.binary.f32(i32 36, float %8596, float %8581)  ; FMin(a,b)
  %8598 = call float @dx.op.binary.f32(i32 36, float %8579, float %8580)  ; FMin(a,b)
  %8599 = call float @dx.op.binary.f32(i32 35, float %8598, float %8597)  ; FMax(a,b)
  %8600 = call float @dx.op.binary.f32(i32 35, float %8580, float %8581)  ; FMax(a,b)
  %8601 = call float @dx.op.binary.f32(i32 35, float %8579, float %8600)  ; FMax(a,b)
  store float %8595, float* %8513, align 4, !tbaa !124, !alias.scope !172, !noalias !173
  store float %8599, float* %8514, align 4, !tbaa !124, !alias.scope !170, !noalias !171
  store float %8601, float* %8515, align 4, !tbaa !124, !alias.scope !164, !noalias !167
  %8602 = sub nsw i32 3, %8585
  %8603 = icmp sgt i32 %8602, 2
  br i1 %8603, label %8604, label %8642

; <label>:8604                                    ; preds = %8578
  %8605 = icmp eq i32 %8373, 0
  %8606 = fsub fast float %8423, %8507
  %8607 = select i1 %8605, float %8606, float %8507
  %8608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8609 = extractvalue %dx.types.CBufRet.f32 %8608, 0
  %8610 = extractvalue %dx.types.CBufRet.f32 %8608, 1
  %8611 = extractvalue %dx.types.CBufRet.f32 %8608, 2
  %8612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8613 = extractvalue %dx.types.CBufRet.f32 %8612, 0
  %8614 = extractvalue %dx.types.CBufRet.f32 %8612, 1
  %8615 = extractvalue %dx.types.CBufRet.f32 %8612, 2
  %8616 = extractvalue %dx.types.CBufRet.f32 %8612, 3
  %8617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8618 = extractvalue %dx.types.CBufRet.f32 %8617, 3
  %8619 = call float @dx.op.binary.f32(i32 36, float %8508, float %8618)  ; FMin(a,b)
  %8620 = fmul fast float %8616, %8607
  %8621 = call float @dx.op.unary.f32(i32 7, float %8620)  ; Saturate(value)
  %8622 = fsub fast float %8613, %8609
  %8623 = fsub fast float %8614, %8610
  %8624 = fsub fast float %8615, %8611
  %8625 = fmul fast float %8621, %8622
  %8626 = fmul fast float %8621, %8623
  %8627 = fmul fast float %8621, %8624
  %8628 = fadd fast float %8625, %8609
  %8629 = fadd fast float %8626, %8610
  %8630 = fadd fast float %8627, %8611
  %8631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8632 = extractvalue %dx.types.CBufRet.f32 %8631, 0
  %8633 = extractvalue %dx.types.CBufRet.f32 %8631, 1
  %8634 = fadd fast float %8633, %8632
  %8635 = call float @dx.op.unary.f32(i32 7, float %8634)  ; Saturate(value)
  %8636 = extractvalue %dx.types.CBufRet.f32 %8631, 2
  %8637 = extractvalue %dx.types.CBufRet.f32 %8631, 3
  %8638 = fadd fast float %8637, %8636
  %8639 = call float @dx.op.unary.f32(i32 7, float %8638)  ; Saturate(value)
  %8640 = fmul fast float %8635, %8619
  %8641 = fmul fast float %8640, %8639
  br label %8724

; <label>:8642                                    ; preds = %8578
  %8643 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %8602
  %8644 = load float, float* %8643, align 4, !tbaa !124, !noalias !138
  %8645 = fcmp fast olt float %8644, %8509
  %8646 = icmp sgt i32 %8585, 0
  %8647 = and i1 %8646, %8645
  br i1 %8647, label %8648, label %8685

; <label>:8648                                    ; preds = %8642
  br label %8649

; <label>:8649                                    ; preds = %8678, %8648
  %8650 = phi float [ %8679, %8678 ], [ %8507, %8648 ]
  %8651 = phi float [ %8680, %8678 ], [ %8508, %8648 ]
  %8652 = phi float [ %8660, %8678 ], [ %8644, %8648 ]
  %8653 = phi i32 [ %8657, %8678 ], [ %8602, %8648 ]
  %8654 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8653
  %8655 = load float, float* %8654, align 4, !tbaa !124, !noalias !138
  %8656 = icmp slt i32 %8653, 2
  %8657 = add nsw i32 %8653, 1
  %8658 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %8657
  %8659 = load float, float* %8658, align 4, !tbaa !124, !noalias !138
  %8660 = select i1 %8656, float %8659, float %8423
  %8661 = call float @dx.op.binary.f32(i32 36, float %8660, float %8655)  ; FMin(a,b)
  %8662 = call float @dx.op.binary.f32(i32 36, float %8509, float %8661)  ; FMin(a,b)
  %8663 = icmp eq i32 %8373, 0
  %8664 = fadd fast float %8662, %8652
  %8665 = fmul fast float %8664, %8354
  %8666 = fadd fast float %8665, %8367
  br i1 %8663, label %8672, label %8667

; <label>:8667                                    ; preds = %8649
  %8668 = fsub fast float %8662, %8652
  %8669 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8668)  ; FMax(a,b)
  %8670 = fmul fast float %8669, %8666
  %8671 = fadd fast float %8670, %8651
  br label %8678

; <label>:8672                                    ; preds = %8649
  %8673 = fsub fast float %8652, %8662
  %8674 = call float @dx.op.unary.f32(i32 6, float %8673)  ; FAbs(value)
  %8675 = fadd fast float %8674, %8650
  %8676 = fmul fast float %8674, %8666
  %8677 = fsub fast float %8651, %8676
  br label %8678

; <label>:8678                                    ; preds = %8672, %8667
  %8679 = phi float [ %8669, %8667 ], [ %8675, %8672 ]
  %8680 = phi float [ %8671, %8667 ], [ %8677, %8672 ]
  %8681 = fcmp fast olt float %8660, %8509
  %8682 = icmp slt i32 %8657, 3
  %8683 = and i1 %8682, %8681
  br i1 %8683, label %8649, label %8684

; <label>:8684                                    ; preds = %8678
  br label %8685

; <label>:8685                                    ; preds = %8684, %8642
  %8686 = phi float [ %8507, %8642 ], [ %8679, %8684 ]
  %8687 = phi float [ %8508, %8642 ], [ %8680, %8684 ]
  %8688 = fsub fast float %8423, %8686
  %8689 = select i1 %8425, float %8686, float %8688
  %8690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8691 = extractvalue %dx.types.CBufRet.f32 %8690, 0
  %8692 = extractvalue %dx.types.CBufRet.f32 %8690, 1
  %8693 = extractvalue %dx.types.CBufRet.f32 %8690, 2
  %8694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8695 = extractvalue %dx.types.CBufRet.f32 %8694, 0
  %8696 = extractvalue %dx.types.CBufRet.f32 %8694, 1
  %8697 = extractvalue %dx.types.CBufRet.f32 %8694, 2
  %8698 = extractvalue %dx.types.CBufRet.f32 %8694, 3
  %8699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8700 = extractvalue %dx.types.CBufRet.f32 %8699, 3
  %8701 = call float @dx.op.binary.f32(i32 36, float %8687, float %8700)  ; FMin(a,b)
  %8702 = fmul fast float %8698, %8689
  %8703 = call float @dx.op.unary.f32(i32 7, float %8702)  ; Saturate(value)
  %8704 = fsub fast float %8695, %8691
  %8705 = fsub fast float %8696, %8692
  %8706 = fsub fast float %8697, %8693
  %8707 = fmul fast float %8703, %8704
  %8708 = fmul fast float %8703, %8705
  %8709 = fmul fast float %8703, %8706
  %8710 = fadd fast float %8707, %8691
  %8711 = fadd fast float %8708, %8692
  %8712 = fadd fast float %8709, %8693
  %8713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8714 = extractvalue %dx.types.CBufRet.f32 %8713, 0
  %8715 = extractvalue %dx.types.CBufRet.f32 %8713, 1
  %8716 = fadd fast float %8715, %8714
  %8717 = call float @dx.op.unary.f32(i32 7, float %8716)  ; Saturate(value)
  %8718 = extractvalue %dx.types.CBufRet.f32 %8713, 2
  %8719 = extractvalue %dx.types.CBufRet.f32 %8713, 3
  %8720 = fadd fast float %8719, %8718
  %8721 = call float @dx.op.unary.f32(i32 7, float %8720)  ; Saturate(value)
  %8722 = fmul fast float %8717, %8701
  %8723 = fmul fast float %8722, %8721
  br label %8724

; <label>:8724                                    ; preds = %8685, %8604, %8439, %8421, %8419
  %8725 = phi float [ %8448, %8439 ], [ %8607, %8604 ], [ %8689, %8685 ], [ 0.000000e+00, %8419 ], [ 0.000000e+00, %8421 ]
  %8726 = phi float [ %8482, %8439 ], [ %8641, %8604 ], [ %8723, %8685 ], [ 0.000000e+00, %8419 ], [ 0.000000e+00, %8421 ]
  %8727 = phi float [ %8469, %8439 ], [ %8628, %8604 ], [ %8710, %8685 ], [ 0.000000e+00, %8419 ], [ 0.000000e+00, %8421 ]
  %8728 = phi float [ %8470, %8439 ], [ %8629, %8604 ], [ %8711, %8685 ], [ 0.000000e+00, %8419 ], [ 0.000000e+00, %8421 ]
  %8729 = phi float [ %8471, %8439 ], [ %8630, %8604 ], [ %8712, %8685 ], [ 0.000000e+00, %8419 ], [ 0.000000e+00, %8421 ]
  %8730 = fmul fast float %8362, %8726
  %8731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8732 = extractvalue %dx.types.CBufRet.f32 %8731, 2
  %8733 = fsub fast float %8369, %8732
  %8734 = fcmp fast olt float %8730, -2.000000e+01
  %8735 = call float @dx.op.unary.f32(i32 21, float %8730)  ; Exp(value)
  %8736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8737 = extractvalue %dx.types.CBufRet.f32 %8736, 2
  %8738 = extractvalue %dx.types.CBufRet.f32 %8736, 3
  %8739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8740 = extractvalue %dx.types.CBufRet.f32 %8739, 2
  %8741 = fmul fast float %8738, %8733
  %8742 = call float @dx.op.unary.f32(i32 7, float %8741)  ; Saturate(value)
  %8743 = fsub fast float 1.000000e+00, %8742
  %8744 = fmul fast float %8354, 5.000000e-01
  %8745 = fadd fast float %8744, 5.000000e-01
  %8746 = call float @dx.op.unary.f32(i32 7, float %8745)  ; Saturate(value)
  %8747 = fsub fast float 1.000000e+00, %8746
  %8748 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8743)  ; FMax(a,b)
  %8749 = fdiv fast float %8747, %8748
  %8750 = fsub fast float %8733, %8311
  %8751 = call float @dx.op.unary.f32(i32 6, float %8750)  ; FAbs(value)
  %8752 = fmul fast float %8751, %8737
  %8753 = call float @dx.op.unary.f32(i32 7, float %8749)  ; Saturate(value)
  %8754 = fsub fast float 1.000000e+00, %8752
  %8755 = fmul fast float %8754, %8753
  %8756 = fadd fast float %8755, %8752
  %8757 = fmul fast float %8740, %8733
  %8758 = call float @dx.op.unary.f32(i32 7, float %8757)  ; Saturate(value)
  %8759 = fsub fast float 1.000000e+00, %8756
  %8760 = fmul fast float %8759, %8758
  %8761 = fadd fast float %8760, %8756
  %8762 = call float @dx.op.unary.f32(i32 7, float %8761)  ; Saturate(value)
  %8763 = fadd fast float %8735, -1.000000e+00
  %8764 = select i1 %8734, float -1.000000e+00, float %8763
  %8765 = fmul fast float %8762, %8764
  %8766 = fadd fast float %8765, 1.000000e+00
  %8767 = fsub fast float -0.000000e+00, %8765
  %8768 = fmul fast float %8727, %8767
  %8769 = fmul fast float %8728, %8767
  %8770 = fmul fast float %8729, %8767
  br label %8771

; <label>:8771                                    ; preds = %8724, %8320
  %8772 = phi float [ %8725, %8724 ], [ 0.000000e+00, %8320 ]
  %8773 = phi float [ %8766, %8724 ], [ 1.000000e+00, %8320 ]
  %8774 = phi float [ %8768, %8724 ], [ 0.000000e+00, %8320 ]
  %8775 = phi float [ %8769, %8724 ], [ 0.000000e+00, %8320 ]
  %8776 = phi float [ %8770, %8724 ], [ 0.000000e+00, %8320 ]
  %8777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8778 = extractvalue %dx.types.CBufRet.f32 %8777, 1
  %8779 = fsub fast float 1.000000e+00, %8773
  %8780 = fmul fast float %8779, %8355
  %8781 = fmul fast float %8780, %8778
  %8782 = fsub fast float %8355, %8781
  br i1 %8348, label %8783, label %8812, !dx.controlflow.hints !174

; <label>:8783                                    ; preds = %8771
  %8784 = fmul fast float %8356, %8345
  %8785 = fadd fast float %8784, %8346
  %8786 = call float @dx.op.unary.f32(i32 7, float %8785)  ; Saturate(value)
  %8787 = fmul fast float %8327, %8782
  %8788 = fsub fast float -0.000000e+00, %8787
  %8789 = fmul fast float %8328, %8782
  %8790 = fsub fast float -0.000000e+00, %8789
  %8791 = call float @dx.op.unary.f32(i32 21, float %8788)  ; Exp(value)
  %8792 = call float @dx.op.unary.f32(i32 21, float %8790)  ; Exp(value)
  %8793 = call float @dx.op.binary.f32(i32 35, float %8335, float %8791)  ; FMax(a,b)
  %8794 = call float @dx.op.binary.f32(i32 35, float %8335, float %8792)  ; FMax(a,b)
  %8795 = fsub fast float %8794, %8793
  %8796 = fmul fast float %8795, %8786
  %8797 = fadd fast float %8796, %8793
  %8798 = call float @dx.op.unary.f32(i32 7, float %8797)  ; Saturate(value)
  %8799 = fsub fast float %8332, %8337
  %8800 = fsub fast float %8333, %8338
  %8801 = fsub fast float %8334, %8339
  %8802 = fmul fast float %8786, %8799
  %8803 = fmul fast float %8786, %8800
  %8804 = fmul fast float %8786, %8801
  %8805 = fadd fast float %8802, %8337
  %8806 = fadd fast float %8803, %8338
  %8807 = fadd fast float %8804, %8339
  %8808 = fsub fast float 1.000000e+00, %8798
  %8809 = fmul fast float %8808, %8805
  %8810 = fmul fast float %8808, %8806
  %8811 = fmul fast float %8808, %8807
  br label %8871

; <label>:8812                                    ; preds = %8771
  %8813 = fmul fast float %8782, %8344
  %8814 = call float @dx.op.unary.f32(i32 7, float %8813)  ; Saturate(value)
  %8815 = fsub fast float 2.000000e+00, %8814
  %8816 = fmul fast float %8814, 9.921875e-01
  %8817 = fmul fast float %8816, %8815
  %8818 = fadd fast float %8817, 3.906250e-03
  %8819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8818, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8820 = extractvalue %dx.types.ResRet.f32 %8819, 0
  %8821 = fsub fast float %8814, %8820
  %8822 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8821)  ; FMax(a,b)
  %8823 = fmul fast float %8330, %8311
  %8824 = call float @dx.op.unary.f32(i32 6, float %8823)  ; FAbs(value)
  %8825 = fcmp fast ogt float %8824, 0x3EB0C6F7A0000000
  br i1 %8825, label %8826, label %8832, !dx.controlflow.hints !175

; <label>:8826                                    ; preds = %8812
  %8827 = fmul fast float %8823, 0xBFF7154760000000
  %8828 = call float @dx.op.unary.f32(i32 21, float %8827)  ; Exp(value)
  %8829 = fsub fast float 1.000000e+00, %8828
  %8830 = fdiv fast float %8829, %8823
  %8831 = fmul fast float %8830, %8340
  br label %8832

; <label>:8832                                    ; preds = %8826, %8812
  %8833 = phi float [ %8831, %8826 ], [ %8340, %8812 ]
  %8834 = fadd fast float %8833, %8342
  %8835 = fmul fast float %8834, %8822
  %8836 = fmul fast float %8327, %8835
  %8837 = fsub fast float -0.000000e+00, %8836
  %8838 = fmul fast float %8328, %8835
  %8839 = fsub fast float -0.000000e+00, %8838
  %8840 = fmul fast float %8329, %8835
  %8841 = fsub fast float -0.000000e+00, %8840
  %8842 = call float @dx.op.unary.f32(i32 21, float %8837)  ; Exp(value)
  %8843 = call float @dx.op.unary.f32(i32 21, float %8839)  ; Exp(value)
  %8844 = call float @dx.op.unary.f32(i32 21, float %8841)  ; Exp(value)
  %8845 = fmul fast float %8356, %8356
  %8846 = fadd fast float %8845, 1.000000e+00
  %8847 = fmul fast float %8846, 0x3FAE8EC8A0000000
  %8848 = fmul fast float %8847, %8337
  %8849 = fmul fast float %8847, %8338
  %8850 = fmul fast float %8847, %8339
  %8851 = fmul fast float %8356, %8335
  %8852 = fsub fast float 1.000000e+00, %8851
  %8853 = fmul fast float %8335, %8335
  %8854 = fsub fast float 1.000000e+00, %8853
  %8855 = fmul fast float %8854, 0x3FB45F3060000000
  %8856 = fmul fast float %8852, %8852
  %8857 = fdiv fast float 1.000000e+00, %8856
  %8858 = fmul fast float %8855, %8857
  %8859 = fmul fast float %8858, %8332
  %8860 = fmul fast float %8858, %8333
  %8861 = fmul fast float %8858, %8334
  %8862 = fadd fast float %8859, %8848
  %8863 = fadd fast float %8860, %8849
  %8864 = fadd fast float %8861, %8850
  %8865 = fsub fast float 1.000000e+00, %8842
  %8866 = fsub fast float 1.000000e+00, %8843
  %8867 = fsub fast float 1.000000e+00, %8844
  %8868 = fmul fast float %8862, %8865
  %8869 = fmul fast float %8863, %8866
  %8870 = fmul fast float %8864, %8867
  br label %8871

; <label>:8871                                    ; preds = %8832, %8783
  %8872 = phi float [ %8809, %8783 ], [ %8868, %8832 ]
  %8873 = phi float [ %8810, %8783 ], [ %8869, %8832 ]
  %8874 = phi float [ %8811, %8783 ], [ %8870, %8832 ]
  %8875 = phi float [ %8798, %8783 ], [ %8842, %8832 ]
  %8876 = phi float [ %8798, %8783 ], [ %8843, %8832 ]
  %8877 = phi float [ %8798, %8783 ], [ %8844, %8832 ]
  br i1 %8364, label %8878, label %9076, !dx.controlflow.hints !176

; <label>:8878                                    ; preds = %8871
  %8879 = extractvalue %dx.types.CBufRet.f32 %8777, 0
  %8880 = fmul fast float %8879, %8779
  %8881 = fsub fast float %8774, %8872
  %8882 = fsub fast float %8775, %8873
  %8883 = fsub fast float %8776, %8874
  %8884 = fmul fast float %8880, %8881
  %8885 = fmul fast float %8880, %8882
  %8886 = fmul fast float %8880, %8883
  %8887 = fadd fast float %8884, %8872
  %8888 = fadd fast float %8885, %8873
  %8889 = fadd fast float %8886, %8874
  %8890 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8875)  ; FMax(a,b)
  %8891 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8876)  ; FMax(a,b)
  %8892 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8877)  ; FMax(a,b)
  %8893 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8773)  ; FMax(a,b)
  %8894 = call float @dx.op.binary.f32(i32 35, float %8772, float %8782)  ; FMax(a,b)
  %8895 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8894)  ; FMax(a,b)
  %8896 = fdiv fast float %8772, %8895
  %8897 = call float @dx.op.unary.f32(i32 7, float %8896)  ; Saturate(value)
  %8898 = fdiv fast float %8782, %8895
  %8899 = call float @dx.op.unary.f32(i32 7, float %8898)  ; Saturate(value)
  %8900 = fcmp fast une float %8893, 1.000000e+00
  br i1 %8900, label %8901, label %8914, !dx.controlflow.hints !177

; <label>:8901                                    ; preds = %8878
  %8902 = call float @dx.op.unary.f32(i32 23, float %8893)  ; Log(value)
  %8903 = fmul fast float %8902, 0x3FE62E4300000000
  %8904 = fmul fast float %8774, %8903
  %8905 = fsub fast float -0.000000e+00, %8904
  %8906 = fmul fast float %8775, %8903
  %8907 = fsub fast float -0.000000e+00, %8906
  %8908 = fmul fast float %8776, %8903
  %8909 = fsub fast float -0.000000e+00, %8908
  %8910 = fsub fast float 1.000000e+00, %8893
  %8911 = fdiv fast float %8905, %8910
  %8912 = fdiv fast float %8907, %8910
  %8913 = fdiv fast float %8909, %8910
  br label %8914

; <label>:8914                                    ; preds = %8901, %8878
  %8915 = phi float [ %8911, %8901 ], [ %8774, %8878 ]
  %8916 = phi float [ %8912, %8901 ], [ %8775, %8878 ]
  %8917 = phi float [ %8913, %8901 ], [ %8776, %8878 ]
  %8918 = phi float [ %8903, %8901 ], [ 0.000000e+00, %8878 ]
  %8919 = fcmp fast une float %8890, 1.000000e+00
  br i1 %8919, label %8920, label %8927, !dx.controlflow.hints !178

; <label>:8920                                    ; preds = %8914
  %8921 = call float @dx.op.unary.f32(i32 23, float %8890)  ; Log(value)
  %8922 = fmul fast float %8921, 0x3FE62E4300000000
  %8923 = fmul fast float %8887, %8922
  %8924 = fsub fast float -0.000000e+00, %8923
  %8925 = fsub fast float 1.000000e+00, %8890
  %8926 = fdiv fast float %8924, %8925
  br label %8927

; <label>:8927                                    ; preds = %8920, %8914
  %8928 = phi float [ %8926, %8920 ], [ %8887, %8914 ]
  %8929 = phi float [ %8922, %8920 ], [ 0.000000e+00, %8914 ]
  %8930 = fcmp fast une float %8891, 1.000000e+00
  br i1 %8930, label %8931, label %8938, !dx.controlflow.hints !178

; <label>:8931                                    ; preds = %8927
  %8932 = call float @dx.op.unary.f32(i32 23, float %8891)  ; Log(value)
  %8933 = fmul fast float %8932, 0x3FE62E4300000000
  %8934 = fmul fast float %8888, %8933
  %8935 = fsub fast float -0.000000e+00, %8934
  %8936 = fsub fast float 1.000000e+00, %8891
  %8937 = fdiv fast float %8935, %8936
  br label %8938

; <label>:8938                                    ; preds = %8931, %8927
  %8939 = phi float [ %8937, %8931 ], [ %8888, %8927 ]
  %8940 = phi float [ %8933, %8931 ], [ 0.000000e+00, %8927 ]
  %8941 = fcmp fast une float %8892, 1.000000e+00
  br i1 %8941, label %8942, label %8949, !dx.controlflow.hints !178

; <label>:8942                                    ; preds = %8938
  %8943 = call float @dx.op.unary.f32(i32 23, float %8892)  ; Log(value)
  %8944 = fmul fast float %8943, 0x3FE62E4300000000
  %8945 = fmul fast float %8889, %8944
  %8946 = fsub fast float -0.000000e+00, %8945
  %8947 = fsub fast float 1.000000e+00, %8892
  %8948 = fdiv fast float %8946, %8947
  br label %8949

; <label>:8949                                    ; preds = %8942, %8938
  %8950 = phi float [ %8948, %8942 ], [ %8889, %8938 ]
  %8951 = phi float [ %8944, %8942 ], [ 0.000000e+00, %8938 ]
  %8952 = fmul fast float %8915, %8899
  %8953 = fmul fast float %8916, %8899
  %8954 = fmul fast float %8917, %8899
  %8955 = fmul fast float %8918, %8899
  %8956 = fmul fast float %8928, %8897
  %8957 = fmul fast float %8939, %8897
  %8958 = fmul fast float %8950, %8897
  %8959 = fmul fast float %8929, %8897
  %8960 = fmul fast float %8940, %8897
  %8961 = fmul fast float %8951, %8897
  %8962 = fadd fast float %8956, %8952
  %8963 = fadd fast float %8957, %8953
  %8964 = fadd fast float %8958, %8954
  %8965 = fadd fast float %8959, %8955
  %8966 = fadd fast float %8960, %8955
  %8967 = fadd fast float %8961, %8955
  %8968 = fcmp fast une float %8965, 0.000000e+00
  br i1 %8968, label %8969, label %8976, !dx.controlflow.hints !179

; <label>:8969                                    ; preds = %8949
  %8970 = fmul fast float %8965, 0x3FF7154760000000
  %8971 = call float @dx.op.unary.f32(i32 21, float %8970)  ; Exp(value)
  %8972 = fsub fast float 1.000000e+00, %8971
  %8973 = fmul fast float %8962, %8972
  %8974 = fsub fast float -0.000000e+00, %8973
  %8975 = fdiv fast float %8974, %8965
  br label %8976

; <label>:8976                                    ; preds = %8969, %8949
  %8977 = phi float [ %8971, %8969 ], [ 1.000000e+00, %8949 ]
  %8978 = phi float [ %8975, %8969 ], [ %8962, %8949 ]
  %8979 = fcmp fast une float %8966, 0.000000e+00
  br i1 %8979, label %8980, label %8987, !dx.controlflow.hints !179

; <label>:8980                                    ; preds = %8976
  %8981 = fmul fast float %8966, 0x3FF7154760000000
  %8982 = call float @dx.op.unary.f32(i32 21, float %8981)  ; Exp(value)
  %8983 = fsub fast float 1.000000e+00, %8982
  %8984 = fmul fast float %8963, %8983
  %8985 = fsub fast float -0.000000e+00, %8984
  %8986 = fdiv fast float %8985, %8966
  br label %8987

; <label>:8987                                    ; preds = %8980, %8976
  %8988 = phi float [ %8982, %8980 ], [ 1.000000e+00, %8976 ]
  %8989 = phi float [ %8986, %8980 ], [ %8963, %8976 ]
  %8990 = fcmp fast une float %8967, 0.000000e+00
  br i1 %8990, label %8991, label %8998, !dx.controlflow.hints !179

; <label>:8991                                    ; preds = %8987
  %8992 = fmul fast float %8967, 0x3FF7154760000000
  %8993 = call float @dx.op.unary.f32(i32 21, float %8992)  ; Exp(value)
  %8994 = fsub fast float 1.000000e+00, %8993
  %8995 = fmul fast float %8964, %8994
  %8996 = fsub fast float -0.000000e+00, %8995
  %8997 = fdiv fast float %8996, %8967
  br label %8998

; <label>:8998                                    ; preds = %8991, %8987
  %8999 = phi float [ %8993, %8991 ], [ 1.000000e+00, %8987 ]
  %9000 = phi float [ %8997, %8991 ], [ %8964, %8987 ]
  %9001 = fcmp fast ogt float %8897, %8899
  br i1 %9001, label %9002, label %9022

; <label>:9002                                    ; preds = %8998
  %9003 = fsub fast float 1.000000e+00, %8899
  %9004 = fmul fast float %8915, %9003
  %9005 = fmul fast float %8916, %9003
  %9006 = fmul fast float %8917, %9003
  %9007 = fmul fast float %8918, %9003
  %9008 = fcmp fast une float %9007, 0.000000e+00
  br i1 %9008, label %9009, label %9060, !dx.controlflow.hints !180

; <label>:9009                                    ; preds = %9002
  %9010 = fmul fast float %9007, 0x3FF7154760000000
  %9011 = call float @dx.op.unary.f32(i32 21, float %9010)  ; Exp(value)
  %9012 = fsub fast float 1.000000e+00, %9011
  %9013 = fmul fast float %9004, %9012
  %9014 = fsub fast float -0.000000e+00, %9013
  %9015 = fmul fast float %9005, %9012
  %9016 = fsub fast float -0.000000e+00, %9015
  %9017 = fmul fast float %9006, %9012
  %9018 = fsub fast float -0.000000e+00, %9017
  %9019 = fdiv fast float %9014, %9007
  %9020 = fdiv fast float %9016, %9007
  %9021 = fdiv fast float %9018, %9007
  br label %9060

; <label>:9022                                    ; preds = %8998
  %9023 = fsub fast float 1.000000e+00, %8897
  %9024 = fmul fast float %8928, %9023
  %9025 = fmul fast float %8939, %9023
  %9026 = fmul fast float %8950, %9023
  %9027 = fmul fast float %8929, %9023
  %9028 = fmul fast float %8940, %9023
  %9029 = fmul fast float %8951, %9023
  %9030 = fcmp fast une float %9027, 0.000000e+00
  br i1 %9030, label %9031, label %9038, !dx.controlflow.hints !179

; <label>:9031                                    ; preds = %9022
  %9032 = fmul fast float %9027, 0x3FF7154760000000
  %9033 = call float @dx.op.unary.f32(i32 21, float %9032)  ; Exp(value)
  %9034 = fsub fast float 1.000000e+00, %9033
  %9035 = fmul fast float %9024, %9034
  %9036 = fsub fast float -0.000000e+00, %9035
  %9037 = fdiv fast float %9036, %9027
  br label %9038

; <label>:9038                                    ; preds = %9031, %9022
  %9039 = phi float [ %9037, %9031 ], [ %9024, %9022 ]
  %9040 = phi float [ %9033, %9031 ], [ 1.000000e+00, %9022 ]
  %9041 = fcmp fast une float %9028, 0.000000e+00
  br i1 %9041, label %9042, label %9049, !dx.controlflow.hints !179

; <label>:9042                                    ; preds = %9038
  %9043 = fmul fast float %9028, 0x3FF7154760000000
  %9044 = call float @dx.op.unary.f32(i32 21, float %9043)  ; Exp(value)
  %9045 = fsub fast float 1.000000e+00, %9044
  %9046 = fmul fast float %9025, %9045
  %9047 = fsub fast float -0.000000e+00, %9046
  %9048 = fdiv fast float %9047, %9028
  br label %9049

; <label>:9049                                    ; preds = %9042, %9038
  %9050 = phi float [ %9048, %9042 ], [ %9025, %9038 ]
  %9051 = phi float [ %9044, %9042 ], [ 1.000000e+00, %9038 ]
  %9052 = fcmp fast une float %9029, 0.000000e+00
  br i1 %9052, label %9053, label %9060, !dx.controlflow.hints !179

; <label>:9053                                    ; preds = %9049
  %9054 = fmul fast float %9029, 0x3FF7154760000000
  %9055 = call float @dx.op.unary.f32(i32 21, float %9054)  ; Exp(value)
  %9056 = fsub fast float 1.000000e+00, %9055
  %9057 = fmul fast float %9026, %9056
  %9058 = fsub fast float -0.000000e+00, %9057
  %9059 = fdiv fast float %9058, %9029
  br label %9060

; <label>:9060                                    ; preds = %9053, %9049, %9009, %9002
  %9061 = phi float [ %9059, %9053 ], [ %9021, %9009 ], [ %9006, %9002 ], [ %9026, %9049 ]
  %9062 = phi float [ %9050, %9053 ], [ %9020, %9009 ], [ %9005, %9002 ], [ %9050, %9049 ]
  %9063 = phi float [ %9039, %9053 ], [ %9019, %9009 ], [ %9004, %9002 ], [ %9039, %9049 ]
  %9064 = phi float [ %9055, %9053 ], [ %9011, %9009 ], [ 1.000000e+00, %9002 ], [ 1.000000e+00, %9049 ]
  %9065 = phi float [ %9051, %9053 ], [ %9011, %9009 ], [ 1.000000e+00, %9002 ], [ %9051, %9049 ]
  %9066 = phi float [ %9040, %9053 ], [ %9011, %9009 ], [ 1.000000e+00, %9002 ], [ %9040, %9049 ]
  %9067 = fmul fast float %9066, %8978
  %9068 = fmul fast float %9065, %8989
  %9069 = fmul fast float %9064, %9000
  %9070 = fadd fast float %9067, %9063
  %9071 = fadd fast float %9068, %9062
  %9072 = fadd fast float %9069, %9061
  %9073 = fmul fast float %9066, %8977
  %9074 = fmul fast float %9065, %8988
  %9075 = fmul fast float %9064, %8999
  br label %9076

; <label>:9076                                    ; preds = %9060, %8871
  %9077 = phi float [ %9075, %9060 ], [ %8877, %8871 ]
  %9078 = phi float [ %9074, %9060 ], [ %8876, %8871 ]
  %9079 = phi float [ %9073, %9060 ], [ %8875, %8871 ]
  %9080 = phi float [ %9072, %9060 ], [ %8874, %8871 ]
  %9081 = phi float [ %9071, %9060 ], [ %8873, %8871 ]
  %9082 = phi float [ %9070, %9060 ], [ %8872, %8871 ]
  %9083 = fmul fast float %9082, %8028
  %9084 = fmul fast float %9081, %8028
  %9085 = fmul fast float %9080, %8028
  %9086 = fmul fast float %9079, %8319
  %9087 = call float @dx.op.dot3.f32(i32 55, float %9079, float %9078, float %9077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9088 = call float @dx.op.dot3.f32(i32 55, float %9083, float %9084, float %9085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9089 = select i1 %233, float %9087, float %9079
  %9090 = select i1 %233, float %9087, float %9078
  %9091 = select i1 %233, float 1.000000e+00, float %9077
  %9092 = select i1 %233, float %9088, float %9083
  %9093 = select i1 %233, float 0.000000e+00, float %9084
  %9094 = select i1 %233, float 0.000000e+00, float %9085
  %9095 = fmul fast float %9089, %8313
  %9096 = fmul fast float %9090, %8314
  %9097 = fmul fast float %9091, %8315
  %9098 = fadd fast float %9095, %9092
  %9099 = fadd fast float %9096, %9093
  %9100 = fadd fast float %9094, %9097
  %9101 = fmul fast float %9089, %8316
  %9102 = fmul fast float %9090, %8317
  %9103 = fmul fast float %9091, %8318
  %9104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9105 = extractvalue %dx.types.CBufRet.i32 %9104, 0
  %9106 = icmp eq i32 %9105, 0
  br i1 %9106, label %9474, label %9107, !dx.controlflow.hints !181

; <label>:9107                                    ; preds = %9076
  %9108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9109 = extractvalue %dx.types.CBufRet.f32 %9108, 2
  %9110 = extractvalue %dx.types.CBufRet.f32 %9108, 3
  %9111 = fmul fast float %9109, %112
  %9112 = fmul fast float %9110, %113
  %9113 = fmul fast float %9111, 2.000000e+00
  %9114 = fmul fast float %9112, 2.000000e+00
  %9115 = fsub fast float 1.000000e+00, %9113
  %9116 = fsub fast float 1.000000e+00, %9114
  %9117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9118 = extractvalue %dx.types.CBufRet.f32 %9117, 0
  %9119 = extractvalue %dx.types.CBufRet.f32 %9117, 1
  %9120 = extractvalue %dx.types.CBufRet.f32 %9117, 2
  %9121 = fmul fast float %9115, %9118
  %9122 = fmul fast float %9115, %9119
  %9123 = fmul fast float %9115, %9120
  %9124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9125 = extractvalue %dx.types.CBufRet.f32 %9124, 0
  %9126 = extractvalue %dx.types.CBufRet.f32 %9124, 1
  %9127 = extractvalue %dx.types.CBufRet.f32 %9124, 2
  %9128 = fmul fast float %9116, %9125
  %9129 = fmul fast float %9116, %9126
  %9130 = fmul fast float %9116, %9127
  %9131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9132 = extractvalue %dx.types.CBufRet.f32 %9131, 0
  %9133 = extractvalue %dx.types.CBufRet.f32 %9131, 1
  %9134 = extractvalue %dx.types.CBufRet.f32 %9131, 2
  %9135 = fadd fast float %9128, %9132
  %9136 = fadd fast float %9135, %9121
  %9137 = fadd fast float %9129, %9133
  %9138 = fadd fast float %9137, %9122
  %9139 = fadd fast float %9130, %9134
  %9140 = fadd fast float %9139, %9123
  %9141 = fmul fast float %9136, %8312
  %9142 = fmul fast float %9138, %8312
  %9143 = fmul fast float %9140, %8312
  %9144 = fmul fast float %9141, %9141
  %9145 = fmul fast float %9142, %9142
  %9146 = fadd fast float %9144, %9145
  %9147 = fmul fast float %9143, %9143
  %9148 = fadd fast float %9146, %9147
  %9149 = call float @dx.op.unary.f32(i32 24, float %9148)  ; Sqrt(value)
  %9150 = extractvalue %dx.types.CBufRet.f32 %8039, 0
  %9151 = fsub fast float %9149, %9150
  %9152 = extractvalue %dx.types.CBufRet.f32 %8039, 2
  %9153 = fmul fast float %9151, %9152
  %9154 = call float @dx.op.unary.f32(i32 7, float %9153)  ; Saturate(value)
  %9155 = fadd fast float %9154, -5.000000e-01
  %9156 = fmul fast float %9155, 2.000000e+00
  %9157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9158 = extractvalue %dx.types.CBufRet.f32 %9157, 2
  %9159 = call float @dx.op.binary.f32(i32 36, float %9158, float %9156)  ; FMin(a,b)
  %9160 = fsub fast float -0.000000e+00, %9158
  %9161 = fcmp fast ogt float %9159, %9160
  br i1 %9161, label %9162, label %9474, !dx.controlflow.hints !182

; <label>:9162                                    ; preds = %9107
  %9163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9164 = extractvalue %dx.types.CBufRet.f32 %9163, 3
  %9165 = fcmp fast ogt float %9164, 0.000000e+00
  br i1 %9165, label %9166, label %9241, !dx.controlflow.hints !183

; <label>:9166                                    ; preds = %9162
  %9167 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9168 = extractvalue %dx.types.Dimensions %9167, 0
  %9169 = sitofp i32 %9168 to float
  %9170 = extractvalue %dx.types.Dimensions %9167, 1
  %9171 = sitofp i32 %9170 to float
  %9172 = fmul fast float %9111, %9169
  %9173 = fmul fast float %9112, %9171
  %9174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9175 = extractvalue %dx.types.CBufRet.f32 %9174, 1
  %9176 = fsub fast float -0.000000e+00, %9175
  %9177 = fptoui float %9176 to i32
  %9178 = fptoui float %9172 to i32
  %9179 = fptoui float %9173 to i32
  %9180 = and i32 %9177, 31
  %9181 = lshr i32 %9178, %9180
  %9182 = lshr i32 %9179, %9180
  %9183 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9177, i32 %9181, i32 %9182, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9184 = extractvalue %dx.types.ResRet.f32 %9183, 0
  %9185 = fcmp fast olt float %9184, -1.000000e+00
  %9186 = fcmp fast ogt float %9184, -1.000000e+00
  %9187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9188 = extractvalue %dx.types.CBufRet.f32 %9187, 1
  %9189 = select i1 %9186, float %9188, float 1.000000e+00
  %9190 = fadd fast float %9184, 1.000000e+00
  %9191 = fmul fast float %9189, %9190
  %9192 = call float @dx.op.unary.f32(i32 6, float %9191)  ; FAbs(value)
  %9193 = extractvalue %dx.types.CBufRet.f32 %9187, 3
  %9194 = fcmp fast oge float %9192, %9193
  %9195 = select i1 %9194, float 0x4197782600000000, float %9192
  %9196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9197 = extractvalue %dx.types.CBufRet.f32 %9196, 0
  %9198 = extractvalue %dx.types.CBufRet.f32 %9196, 1
  %9199 = extractvalue %dx.types.CBufRet.f32 %9196, 2
  %9200 = select i1 %9185, float %9197, float %9118
  %9201 = select i1 %9185, float %9198, float %9119
  %9202 = select i1 %9185, float %9199, float %9120
  %9203 = fmul fast float %9200, %9115
  %9204 = fmul fast float %9201, %9115
  %9205 = fmul fast float %9202, %9115
  %9206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9207 = extractvalue %dx.types.CBufRet.f32 %9206, 0
  %9208 = extractvalue %dx.types.CBufRet.f32 %9206, 1
  %9209 = extractvalue %dx.types.CBufRet.f32 %9206, 2
  %9210 = select i1 %9185, float %9207, float %9125
  %9211 = select i1 %9185, float %9208, float %9126
  %9212 = select i1 %9185, float %9209, float %9127
  %9213 = fmul fast float %9210, %9116
  %9214 = fmul fast float %9211, %9116
  %9215 = fmul fast float %9212, %9116
  %9216 = fadd fast float %9213, %9203
  %9217 = fadd fast float %9214, %9204
  %9218 = fadd fast float %9215, %9205
  %9219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9220 = extractvalue %dx.types.CBufRet.f32 %9219, 0
  %9221 = extractvalue %dx.types.CBufRet.f32 %9219, 1
  %9222 = extractvalue %dx.types.CBufRet.f32 %9219, 2
  %9223 = select i1 %9185, float %9220, float %9132
  %9224 = select i1 %9185, float %9221, float %9133
  %9225 = select i1 %9185, float %9222, float %9134
  %9226 = fadd fast float %9216, %9223
  %9227 = fadd fast float %9217, %9224
  %9228 = fadd fast float %9218, %9225
  %9229 = fmul fast float %9226, %9195
  %9230 = fmul fast float %9227, %9195
  %9231 = fmul fast float %9228, %9195
  %9232 = fmul fast float %9229, %9229
  %9233 = fmul fast float %9230, %9230
  %9234 = fadd fast float %9232, %9233
  %9235 = fmul fast float %9231, %9231
  %9236 = fadd fast float %9234, %9235
  %9237 = call float @dx.op.unary.f32(i32 24, float %9236)  ; Sqrt(value)
  %9238 = fsub fast float %9237, %9150
  %9239 = fmul fast float %9238, %9152
  %9240 = call float @dx.op.unary.f32(i32 7, float %9239)  ; Saturate(value)
  br label %9241

; <label>:9241                                    ; preds = %9166, %9162
  %9242 = phi float [ %9240, %9166 ], [ 1.000000e+00, %9162 ]
  %9243 = fmul fast float %9159, 5.000000e-01
  %9244 = fadd fast float %9243, 5.000000e-01
  %9245 = call float @dx.op.unary.f32(i32 22, float %9244)  ; Frc(value)
  %9246 = call float @dx.op.unary.f32(i32 27, float %9245)  ; Round_ni(value)
  %9247 = call float @dx.op.unary.f32(i32 22, float %9245)  ; Frc(value)
  %9248 = fmul fast float %9247, 2.000000e+00
  %9249 = fadd fast float %9248, -1.000000e+00
  %9250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9111, float %9112, float %9246, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9251 = extractvalue %dx.types.ResRet.f32 %9250, 0
  %9252 = extractvalue %dx.types.ResRet.f32 %9250, 1
  %9253 = extractvalue %dx.types.ResRet.f32 %9250, 2
  %9254 = extractvalue %dx.types.ResRet.f32 %9250, 3
  %9255 = fadd fast float %9251, -5.000000e-01
  %9256 = fadd fast float %9253, -5.000000e-01
  %9257 = fmul fast float %9255, 0xBFD5555560000000
  %9258 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9256, float %9257)  ; FMad(a,b,c)
  %9259 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9252, float 0.000000e+00)  ; FMad(a,b,c)
  %9260 = fadd fast float %9259, %9254
  %9261 = fmul fast float %9255, -7.500000e-01
  %9262 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9256, float %9261)  ; FMad(a,b,c)
  %9263 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9252, float 0.000000e+00)  ; FMad(a,b,c)
  %9264 = fadd fast float %9263, %9254
  %9265 = call float @dx.op.binary.f32(i32 35, float %9258, float -1.000000e+00)  ; FMax(a,b)
  %9266 = call float @dx.op.binary.f32(i32 35, float %9260, float -1.000000e+00)  ; FMax(a,b)
  %9267 = call float @dx.op.binary.f32(i32 35, float %9262, float -1.000000e+00)  ; FMax(a,b)
  %9268 = call float @dx.op.binary.f32(i32 35, float %9264, float -1.000000e+00)  ; FMax(a,b)
  %9269 = call float @dx.op.binary.f32(i32 36, float %9265, float 1.000000e+00)  ; FMin(a,b)
  %9270 = call float @dx.op.binary.f32(i32 36, float %9266, float 1.000000e+00)  ; FMin(a,b)
  %9271 = call float @dx.op.binary.f32(i32 36, float %9267, float 1.000000e+00)  ; FMin(a,b)
  %9272 = call float @dx.op.binary.f32(i32 36, float %9268, float 1.000000e+00)  ; FMin(a,b)
  %9273 = fcmp fast olt float %9269, 0x3FEFFF8020000000
  br i1 %9273, label %9274, label %9389, !dx.controlflow.hints !184

; <label>:9274                                    ; preds = %9241
  %9275 = extractvalue %dx.types.CBufRet.f32 %9157, 3
  %9276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9277 = extractvalue %dx.types.CBufRet.f32 %9276, 0
  %9278 = extractvalue %dx.types.CBufRet.f32 %9276, 1
  %9279 = extractvalue %dx.types.CBufRet.f32 %9276, 2
  %9280 = extractvalue %dx.types.CBufRet.f32 %9276, 3
  %9281 = fsub fast float %9277, %9269
  %9282 = fsub fast float %9278, %9270
  %9283 = fsub fast float %9279, %9271
  %9284 = fsub fast float %9280, %9272
  %9285 = fmul fast float %9281, %9275
  %9286 = fmul fast float %9282, %9275
  %9287 = fmul fast float %9283, %9275
  %9288 = fmul fast float %9284, %9275
  %9289 = fadd fast float %9285, %9269
  %9290 = fadd fast float %9286, %9270
  %9291 = fsub fast float -0.000000e+00, %9290
  %9292 = fadd fast float %9287, %9271
  %9293 = fadd fast float %9288, %9272
  %9294 = fmul fast float %9289, %9289
  %9295 = fsub fast float %9290, %9294
  %9296 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9295)  ; FMax(a,b)
  %9297 = fdiv fast float 1.000000e+00, %9296
  %9298 = fmul fast float %9290, %9289
  %9299 = fsub fast float %9292, %9298
  %9300 = fsub fast float %9249, %9289
  %9301 = fmul fast float %9249, %9249
  %9302 = fsub fast float %9301, %9290
  %9303 = fmul fast float %9300, %9297
  %9304 = fmul fast float %9303, %9299
  %9305 = fsub fast float %9302, %9304
  %9306 = fmul fast float %9290, %9290
  %9307 = fsub fast float %9293, %9306
  %9308 = fmul fast float %9299, %9299
  %9309 = fmul fast float %9308, %9297
  %9310 = fsub fast float %9307, %9309
  %9311 = fdiv fast float %9305, %9310
  %9312 = fmul fast float %9299, %9311
  %9313 = fsub fast float %9300, %9312
  %9314 = fmul fast float %9313, %9297
  %9315 = fmul fast float %9314, %9289
  %9316 = fsub fast float 1.000000e+00, %9315
  %9317 = fmul fast float %9290, %9311
  %9318 = fsub fast float %9316, %9317
  %9319 = fmul fast float %9314, %9314
  %9320 = fmul fast float %9311, 4.000000e+00
  %9321 = fmul fast float %9320, %9318
  %9322 = fsub fast float %9319, %9321
  %9323 = call float @dx.op.unary.f32(i32 24, float %9322)  ; Sqrt(value)
  %9324 = fcmp fast oge float %9314, 0.000000e+00
  %9325 = fsub fast float -0.000000e+00, %9323
  %9326 = select i1 %9324, float %9325, float %9323
  %9327 = fsub fast float %9326, %9314
  %9328 = fdiv fast float %9327, %9311
  %9329 = fdiv fast float %9318, %9327
  %9330 = fmul fast float %9328, 5.000000e-01
  %9331 = fmul fast float %9329, 2.000000e+00
  %9332 = select i1 %9324, float %9330, float %9331
  %9333 = select i1 %9324, float %9331, float %9330
  %9334 = call float @dx.op.binary.f32(i32 35, float %9332, float %9333)  ; FMax(a,b)
  %9335 = call float @dx.op.binary.f32(i32 36, float %9332, float %9333)  ; FMin(a,b)
  %9336 = fcmp fast ogt float %9249, %9335
  br i1 %9336, label %9337, label %9347

; <label>:9337                                    ; preds = %9274
  %9338 = fsub fast float %9249, %9335
  %9339 = fsub fast float %9334, %9335
  %9340 = fmul fast float %9338, %9339
  %9341 = fmul fast float %9334, %9249
  %9342 = fadd fast float %9334, %9249
  %9343 = fmul fast float %9342, %9289
  %9344 = fadd fast float %9341, %9290
  %9345 = fsub fast float %9344, %9343
  %9346 = fdiv fast float %9345, %9340
  br label %9347

; <label>:9347                                    ; preds = %9337, %9274
  %9348 = phi float [ %9346, %9337 ], [ 0.000000e+00, %9274 ]
  %9349 = fcmp fast ogt float %9249, %9334
  %9350 = fsub fast float %9249, %9334
  br i1 %9349, label %9351, label %9361

; <label>:9351                                    ; preds = %9347
  %9352 = fsub fast float %9334, %9335
  %9353 = fmul fast float %9352, %9350
  %9354 = fmul fast float %9335, %9249
  %9355 = fadd fast float %9335, %9249
  %9356 = fmul fast float %9355, %9289
  %9357 = fsub fast float %9291, %9354
  %9358 = fadd fast float %9357, %9356
  %9359 = fdiv fast float %9358, %9353
  %9360 = fadd fast float %9359, %9348
  br label %9361

; <label>:9361                                    ; preds = %9351, %9347
  %9362 = phi float [ %9360, %9351 ], [ %9348, %9347 ]
  %9363 = fsub fast float %9249, %9335
  %9364 = fmul fast float %9363, %9350
  %9365 = fmul fast float %9335, %9334
  %9366 = fadd fast float %9335, %9334
  %9367 = fmul fast float %9366, %9289
  %9368 = fadd fast float %9365, %9290
  %9369 = fsub fast float %9368, %9367
  %9370 = fdiv fast float %9369, %9364
  %9371 = call float @dx.op.unary.f32(i32 7, float %9362)  ; Saturate(value)
  %9372 = fcmp fast oeq float %8040, 0.000000e+00
  %9373 = extractvalue %dx.types.CBufRet.f32 %9157, 0
  %9374 = fcmp fast oeq float %9373, 0.000000e+00
  %9375 = or i1 %9372, %9374
  %9376 = fmul fast float %9373, 2.000000e+00
  %9377 = fadd fast float %9158, %9159
  %9378 = fdiv fast float %9377, %9376
  %9379 = call float @dx.op.unary.f32(i32 7, float %9378)  ; Saturate(value)
  %9380 = fmul fast float %9379, 2.000000e+00
  %9381 = fsub fast float 3.000000e+00, %9380
  %9382 = fmul fast float %9379, %9379
  %9383 = fmul fast float %9382, %9381
  %9384 = select i1 %9375, float 1.000000e+00, float %9383
  %9385 = fmul fast float %9370, %8040
  %9386 = fadd fast float %9371, %9385
  %9387 = call float @dx.op.unary.f32(i32 7, float %9386)  ; Saturate(value)
  %9388 = fmul fast float %9384, %9387
  br label %9389

; <label>:9389                                    ; preds = %9361, %9241
  %9390 = phi float [ %9388, %9361 ], [ 0.000000e+00, %9241 ]
  %9391 = fsub fast float 1.000000e+00, %9390
  %9392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9111, float %9112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9393 = extractvalue %dx.types.ResRet.f32 %9392, 0
  %9394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9395 = extractvalue %dx.types.CBufRet.i32 %9394, 2
  %9396 = icmp eq i32 %9395, 0
  br i1 %9396, label %9402, label %9397

; <label>:9397                                    ; preds = %9389
  %9398 = call float @dx.op.unary.f32(i32 7, float %9390)  ; Saturate(value)
  %9399 = fadd fast float %9393, -1.000000e+00
  %9400 = fmul fast float %9398, %9399
  %9401 = fadd fast float %9400, 1.000000e+00
  br label %9402

; <label>:9402                                    ; preds = %9397, %9389
  %9403 = phi float [ %9401, %9397 ], [ %9391, %9389 ]
  br i1 %9165, label %9404, label %9422

; <label>:9404                                    ; preds = %9402
  %9405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9406 = extractvalue %dx.types.CBufRet.f32 %9405, 1
  %9407 = fsub fast float %9242, %9406
  %9408 = call float @dx.op.unary.f32(i32 7, float %9407)  ; Saturate(value)
  %9409 = fsub fast float %9242, %9164
  %9410 = call float @dx.op.unary.f32(i32 7, float %9409)  ; Saturate(value)
  %9411 = fsub fast float %9408, %9410
  %9412 = fsub fast float %9244, %9410
  %9413 = fdiv fast float %9412, %9411
  %9414 = call float @dx.op.unary.f32(i32 7, float %9413)  ; Saturate(value)
  %9415 = fmul fast float %9414, 2.000000e+00
  %9416 = fsub fast float 3.000000e+00, %9415
  %9417 = fsub fast float %9393, %9403
  %9418 = fmul fast float %9414, %9414
  %9419 = fmul fast float %9418, %9417
  %9420 = fmul fast float %9419, %9416
  %9421 = fadd fast float %9420, %9403
  br label %9422

; <label>:9422                                    ; preds = %9404, %9402
  %9423 = phi float [ %9421, %9404 ], [ %9403, %9402 ]
  %9424 = call float @dx.op.binary.f32(i32 35, float %9393, float %9423)  ; FMax(a,b)
  %9425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9426 = extractvalue %dx.types.CBufRet.i32 %9425, 2
  %9427 = and i32 %9426, 1
  %9428 = icmp eq i32 %9427, 0
  %9429 = fcmp fast une float %9424, 1.000000e+00
  %9430 = and i1 %9429, %9428
  br i1 %9430, label %9431, label %9450

; <label>:9431                                    ; preds = %9422
  %9432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9111, float %9112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9433 = extractvalue %dx.types.ResRet.f32 %9432, 0
  %9434 = extractvalue %dx.types.ResRet.f32 %9432, 1
  %9435 = extractvalue %dx.types.ResRet.f32 %9432, 2
  %9436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9437 = extractvalue %dx.types.CBufRet.f32 %9436, 1
  %9438 = fmul fast float %9437, %9433
  %9439 = fmul fast float %9437, %9434
  %9440 = fmul fast float %9437, %9435
  %9441 = fcmp fast ogt float %9393, 0x3FEFFF2E40000000
  %9442 = fsub fast float 1.000000e+00, %9424
  %9443 = fsub fast float 1.000000e+00, %9393
  %9444 = fdiv fast float %9442, %9443
  %9445 = call float @dx.op.unary.f32(i32 7, float %9444)  ; Saturate(value)
  %9446 = select i1 %9441, float 0.000000e+00, float %9445
  %9447 = fmul fast float %9438, %9446
  %9448 = fmul fast float %9439, %9446
  %9449 = fmul fast float %9440, %9446
  br label %9450

; <label>:9450                                    ; preds = %9431, %9422
  %9451 = phi float [ 0.000000e+00, %9422 ], [ %9447, %9431 ]
  %9452 = phi float [ 0.000000e+00, %9422 ], [ %9448, %9431 ]
  %9453 = phi float [ 0.000000e+00, %9422 ], [ %9449, %9431 ]
  %9454 = fmul fast float %9451, %8028
  %9455 = fmul fast float %9452, %8028
  %9456 = fmul fast float %9453, %8028
  %9457 = fmul fast float %9424, %9086
  %9458 = call float @dx.op.dot3.f32(i32 55, float %9424, float %9424, float %9424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9459 = call float @dx.op.dot3.f32(i32 55, float %9454, float %9455, float %9456, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9460 = select i1 %233, float %9458, float %9424
  %9461 = select i1 %233, float 1.000000e+00, float %9424
  %9462 = select i1 %233, float %9459, float %9454
  %9463 = select i1 %233, float 0.000000e+00, float %9455
  %9464 = select i1 %233, float 0.000000e+00, float %9456
  %9465 = fmul fast float %9460, %9098
  %9466 = fmul fast float %9460, %9099
  %9467 = fmul fast float %9461, %9100
  %9468 = fadd fast float %9465, %9462
  %9469 = fadd fast float %9466, %9463
  %9470 = fadd fast float %9464, %9467
  %9471 = fmul fast float %9460, %9101
  %9472 = fmul fast float %9460, %9102
  %9473 = fmul fast float %9461, %9103
  br label %9474

; <label>:9474                                    ; preds = %9450, %9107, %9076, %8308
  %9475 = phi float [ %8313, %8308 ], [ %9098, %9076 ], [ %9468, %9450 ], [ %9098, %9107 ]
  %9476 = phi float [ %8314, %8308 ], [ %9099, %9076 ], [ %9469, %9450 ], [ %9099, %9107 ]
  %9477 = phi float [ %8315, %8308 ], [ %9100, %9076 ], [ %9470, %9450 ], [ %9100, %9107 ]
  %9478 = phi float [ %8316, %8308 ], [ %9101, %9076 ], [ %9471, %9450 ], [ %9101, %9107 ]
  %9479 = phi float [ %8317, %8308 ], [ %9102, %9076 ], [ %9472, %9450 ], [ %9102, %9107 ]
  %9480 = phi float [ %8318, %8308 ], [ %9103, %9076 ], [ %9473, %9450 ], [ %9103, %9107 ]
  %9481 = phi float [ %8319, %8308 ], [ %9086, %9076 ], [ %9457, %9450 ], [ %9086, %9107 ]
  %9482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9483 = extractvalue %dx.types.CBufRet.f32 %9482, 2
  %9484 = extractvalue %dx.types.CBufRet.f32 %9482, 3
  %9485 = fmul fast float %9483, %112
  %9486 = fmul fast float %9484, %113
  %9487 = call float @dx.op.unary.f32(i32 7, float %9485)  ; Saturate(value)
  %9488 = call float @dx.op.unary.f32(i32 7, float %9486)  ; Saturate(value)
  %9489 = select i1 %8050, i32 2, i32 0
  %9490 = or i32 %9489, 1
  %9491 = uitofp i32 %9490 to float
  %9492 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9487, float %9488, float %9491, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9493 = extractvalue %dx.types.ResRet.f32 %9492, 0
  %9494 = extractvalue %dx.types.ResRet.f32 %9492, 1
  %9495 = extractvalue %dx.types.ResRet.f32 %9492, 2
  %9496 = extractvalue %dx.types.ResRet.f32 %9492, 3
  %9497 = add nuw nsw i32 %9489, 2
  %9498 = uitofp i32 %9497 to float
  %9499 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9487, float %9488, float %9498, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9500 = extractvalue %dx.types.ResRet.f32 %9499, 0
  %9501 = extractvalue %dx.types.ResRet.f32 %9499, 1
  %9502 = extractvalue %dx.types.ResRet.f32 %9499, 2
  %9503 = extractvalue %dx.types.ResRet.f32 %9499, 3
  %9504 = call float @dx.op.binary.f32(i32 35, float %9494, float %9495)  ; FMax(a,b)
  %9505 = call float @dx.op.binary.f32(i32 35, float %9493, float %9504)  ; FMax(a,b)
  %9506 = call float @dx.op.binary.f32(i32 35, float %9505, float %9496)  ; FMax(a,b)
  %9507 = call float @dx.op.binary.f32(i32 36, float %9501, float %9502)  ; FMin(a,b)
  %9508 = call float @dx.op.binary.f32(i32 36, float %9500, float %9507)  ; FMin(a,b)
  %9509 = call float @dx.op.binary.f32(i32 36, float %9508, float %9503)  ; FMin(a,b)
  %9510 = fmul fast float %9506, 2.550000e+02
  %9511 = fadd fast float %9510, 0x3F70101020000000
  %9512 = fptoui float %9511 to i32
  %9513 = fmul fast float %9509, 2.550000e+02
  %9514 = fadd fast float %9513, 0x3F70101020000000
  %9515 = fptoui float %9514 to i32
  %9516 = icmp ult i32 %9512, %9515
  br i1 %9516, label %9517, label %9686

; <label>:9517                                    ; preds = %9474
  %9518 = fcmp fast ogt float %99, 9.843750e-01
  %9519 = fadd fast float %8312, -4.000000e+00
  %9520 = select i1 %9518, float -4.000000e+00, float %9519
  %9521 = call float @dx.op.binary.f32(i32 35, float %9520, float 0.000000e+00)  ; FMax(a,b)
  %9522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9523 = extractvalue %dx.types.CBufRet.f32 %9522, 0
  %9524 = fadd fast float %9523, %9521
  %9525 = extractvalue %dx.types.CBufRet.f32 %9522, 2
  %9526 = fmul fast float %9524, %9525
  %9527 = call float @dx.op.unary.f32(i32 23, float %9526)  ; Log(value)
  %9528 = extractvalue %dx.types.CBufRet.f32 %9522, 3
  %9529 = fmul fast float %9528, %9527
  %9530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9531 = extractvalue %dx.types.CBufRet.f32 %9530, 2
  %9532 = fmul fast float %9529, %9531
  %9533 = call float @dx.op.unary.f32(i32 7, float %9532)  ; Saturate(value)
  %9534 = uitofp i32 %9512 to float
  %9535 = uitofp i32 %9515 to float
  %9536 = fadd fast float %9534, 5.000000e-01
  %9537 = fadd fast float %9535, 5.000000e-01
  %9538 = fmul fast float %9531, %9536
  %9539 = fmul fast float %9531, %9537
  %9540 = fadd fast float %9538, 0x3F0FFB4800000000
  %9541 = fadd fast float %9539, 0xBF0FFB4800000000
  %9542 = call float @dx.op.binary.f32(i32 35, float %9533, float %9540)  ; FMax(a,b)
  %9543 = call float @dx.op.binary.f32(i32 36, float %9542, float %9541)  ; FMin(a,b)
  %9544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9545 = extractvalue %dx.types.CBufRet.f32 %9544, 1
  %9546 = extractvalue %dx.types.CBufRet.f32 %9544, 2
  %9547 = extractvalue %dx.types.CBufRet.f32 %9544, 0
  %9548 = select i1 %8050, float %9547, float 0.000000e+00
  %9549 = fmul fast float %9545, %9543
  %9550 = fadd fast float %9548, %9549
  %9551 = fadd fast float %9548, %9546
  %9552 = fsub fast float %9545, %9546
  %9553 = fadd fast float %9552, %9548
  %9554 = call float @dx.op.binary.f32(i32 35, float %9550, float %9551)  ; FMax(a,b)
  %9555 = call float @dx.op.binary.f32(i32 36, float %9554, float %9553)  ; FMin(a,b)
  %9556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9487, float %9488, float %9555, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9557 = extractvalue %dx.types.ResRet.f32 %9556, 0
  %9558 = extractvalue %dx.types.ResRet.f32 %9556, 1
  %9559 = extractvalue %dx.types.ResRet.f32 %9556, 2
  %9560 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9561 = extractvalue %dx.types.CBufRet.i32 %9560, 0
  %9562 = extractvalue %dx.types.CBufRet.i32 %9560, 1
  %9563 = uitofp i32 %9561 to float
  %9564 = uitofp i32 %9562 to float
  %9565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9566 = extractvalue %dx.types.CBufRet.f32 %9565, 0
  %9567 = extractvalue %dx.types.CBufRet.f32 %9565, 1
  %9568 = fmul fast float %9563, %9487
  %9569 = fmul fast float %9564, %9488
  %9570 = fadd fast float %9568, -5.000000e-01
  %9571 = fadd fast float %9569, -5.000000e-01
  %9572 = call float @dx.op.unary.f32(i32 22, float %9570)  ; Frc(value)
  %9573 = call float @dx.op.unary.f32(i32 22, float %9571)  ; Frc(value)
  %9574 = fmul fast float %9572, %9572
  %9575 = fmul fast float %9574, %9572
  %9576 = fsub fast float 3.000000e+00, %9572
  %9577 = fmul fast float %9574, %9576
  %9578 = fmul fast float %9572, 3.000000e+00
  %9579 = fmul fast float %9575, 3.000000e+00
  %9580 = fmul fast float %9574, 6.000000e+00
  %9581 = fsub fast float %9579, %9580
  %9582 = fadd fast float %9581, 4.000000e+00
  %9583 = fmul fast float %9582, 0x3FC5555560000000
  %9584 = fmul fast float %9575, -3.000000e+00
  %9585 = fadd fast float %9574, %9572
  %9586 = fmul fast float %9585, 3.000000e+00
  %9587 = fadd fast float %9584, 1.000000e+00
  %9588 = fadd fast float %9587, %9586
  %9589 = fmul fast float %9575, 0x3FC5555560000000
  %9590 = fmul fast float %9573, %9573
  %9591 = fmul fast float %9590, %9573
  %9592 = fsub fast float 3.000000e+00, %9573
  %9593 = fmul fast float %9590, %9592
  %9594 = fmul fast float %9573, 3.000000e+00
  %9595 = fmul fast float %9591, 3.000000e+00
  %9596 = fmul fast float %9590, 6.000000e+00
  %9597 = fsub fast float %9595, %9596
  %9598 = fadd fast float %9597, 4.000000e+00
  %9599 = fmul fast float %9598, 0x3FC5555560000000
  %9600 = fmul fast float %9591, -3.000000e+00
  %9601 = fadd fast float %9590, %9573
  %9602 = fmul fast float %9601, 3.000000e+00
  %9603 = fadd fast float %9600, 1.000000e+00
  %9604 = fadd fast float %9603, %9602
  %9605 = fmul fast float %9591, 0x3FC5555560000000
  %9606 = fadd fast float %9572, 1.000000e+00
  %9607 = fsub fast float 1.000000e+00, %9578
  %9608 = fadd fast float %9607, %9577
  %9609 = fadd fast float %9608, %9582
  %9610 = fmul fast float %9609, 0x3FC5555560000000
  %9611 = fdiv fast float %9583, %9610
  %9612 = fsub fast float %9606, %9611
  %9613 = fsub fast float 1.000000e+00, %9572
  %9614 = fadd fast float %9588, %9575
  %9615 = fmul fast float %9614, 0x3FC5555560000000
  %9616 = fdiv fast float %9589, %9615
  %9617 = fadd fast float %9613, %9616
  %9618 = fadd fast float %9573, 1.000000e+00
  %9619 = fsub fast float 1.000000e+00, %9594
  %9620 = fadd fast float %9619, %9593
  %9621 = fadd fast float %9620, %9598
  %9622 = fmul fast float %9621, 0x3FC5555560000000
  %9623 = fdiv fast float %9599, %9622
  %9624 = fsub fast float %9618, %9623
  %9625 = fsub fast float 1.000000e+00, %9573
  %9626 = fadd fast float %9604, %9591
  %9627 = fmul fast float %9626, 0x3FC5555560000000
  %9628 = fdiv fast float %9605, %9627
  %9629 = fadd fast float %9628, %9625
  %9630 = fmul fast float %9612, %9566
  %9631 = fsub fast float %9487, %9630
  %9632 = fmul fast float %9617, %9566
  %9633 = fadd fast float %9632, %9487
  %9634 = fmul fast float %9629, %9567
  %9635 = fadd fast float %9634, %9488
  %9636 = fmul fast float %9624, %9567
  %9637 = fsub fast float %9488, %9636
  %9638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9631, float %9637, float %9555, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9639 = extractvalue %dx.types.ResRet.f32 %9638, 0
  %9640 = extractvalue %dx.types.ResRet.f32 %9638, 1
  %9641 = extractvalue %dx.types.ResRet.f32 %9638, 2
  %9642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9633, float %9637, float %9555, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9643 = extractvalue %dx.types.ResRet.f32 %9642, 0
  %9644 = extractvalue %dx.types.ResRet.f32 %9642, 1
  %9645 = extractvalue %dx.types.ResRet.f32 %9642, 2
  %9646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9631, float %9635, float %9555, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9647 = extractvalue %dx.types.ResRet.f32 %9646, 0
  %9648 = extractvalue %dx.types.ResRet.f32 %9646, 1
  %9649 = extractvalue %dx.types.ResRet.f32 %9646, 2
  %9650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9633, float %9635, float %9555, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9651 = extractvalue %dx.types.ResRet.f32 %9650, 0
  %9652 = extractvalue %dx.types.ResRet.f32 %9650, 1
  %9653 = extractvalue %dx.types.ResRet.f32 %9650, 2
  %9654 = fsub fast float %9647, %9639
  %9655 = fsub fast float %9648, %9640
  %9656 = fsub fast float %9649, %9641
  %9657 = fmul fast float %9654, %9627
  %9658 = fmul fast float %9655, %9627
  %9659 = fmul fast float %9656, %9627
  %9660 = fadd fast float %9657, %9639
  %9661 = fadd fast float %9658, %9640
  %9662 = fadd fast float %9659, %9641
  %9663 = fsub fast float %9651, %9643
  %9664 = fsub fast float %9652, %9644
  %9665 = fsub fast float %9653, %9645
  %9666 = fmul fast float %9663, %9627
  %9667 = fmul fast float %9664, %9627
  %9668 = fmul fast float %9665, %9627
  %9669 = fsub fast float %9643, %9660
  %9670 = fadd fast float %9669, %9666
  %9671 = fsub fast float %9644, %9661
  %9672 = fadd fast float %9671, %9667
  %9673 = fsub fast float %9645, %9662
  %9674 = fadd fast float %9673, %9668
  %9675 = fmul fast float %9670, %9615
  %9676 = fmul fast float %9672, %9615
  %9677 = fmul fast float %9674, %9615
  %9678 = fadd fast float %9675, %9660
  %9679 = fadd fast float %9676, %9661
  %9680 = fadd fast float %9677, %9662
  %9681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9682 = extractvalue %dx.types.CBufRet.f32 %9681, 1
  %9683 = fmul fast float %9678, %9682
  %9684 = fmul fast float %9679, %9682
  %9685 = fmul fast float %9680, %9682
  br label %9686

; <label>:9686                                    ; preds = %9517, %9474
  %9687 = phi float [ %9557, %9517 ], [ 1.000000e+00, %9474 ]
  %9688 = phi float [ %9558, %9517 ], [ 1.000000e+00, %9474 ]
  %9689 = phi float [ %9559, %9517 ], [ 1.000000e+00, %9474 ]
  %9690 = phi float [ %9683, %9517 ], [ 0.000000e+00, %9474 ]
  %9691 = phi float [ %9684, %9517 ], [ 0.000000e+00, %9474 ]
  %9692 = phi float [ %9685, %9517 ], [ 0.000000e+00, %9474 ]
  %9693 = fmul fast float %9690, %8028
  %9694 = fmul fast float %9691, %8028
  %9695 = fmul fast float %9692, %8028
  %9696 = fmul fast float %9687, %9481
  %9697 = call float @dx.op.dot3.f32(i32 55, float %9687, float %9688, float %9689, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9698 = call float @dx.op.dot3.f32(i32 55, float %9693, float %9694, float %9695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9699 = select i1 %233, float %9697, float %9687
  %9700 = select i1 %233, float %9697, float %9688
  %9701 = select i1 %233, float 1.000000e+00, float %9689
  %9702 = select i1 %233, float %9698, float %9693
  %9703 = select i1 %233, float 0.000000e+00, float %9694
  %9704 = select i1 %233, float 0.000000e+00, float %9695
  %9705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9706 = extractvalue %dx.types.CBufRet.i32 %9705, 3
  %9707 = and i32 %9706, 3
  %9708 = icmp ne i32 %9707, 0
  %9709 = and i32 %9706, 4
  %9710 = icmp ne i32 %9709, 0
  %9711 = and i1 %9708, %9710
  %9712 = and i1 %233, %9711
  br i1 %9712, label %9713, label %9719

; <label>:9713                                    ; preds = %9686
  %9714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9715 = extractvalue %dx.types.CBufRet.f32 %9714, 1
  %9716 = fadd fast float %9696, -1.000000e+00
  %9717 = fmul fast float %9715, %9716
  %9718 = fadd fast float %9717, 1.000000e+00
  br label %9719

; <label>:9719                                    ; preds = %9713, %9686
  %9720 = phi float [ %9718, %9713 ], [ %9696, %9686 ]
  %9721 = fadd fast float %9478, %9475
  %9722 = fmul fast float %9699, %9721
  %9723 = fadd fast float %9722, %9702
  %9724 = fadd fast float %9479, %9476
  %9725 = fmul fast float %9700, %9724
  %9726 = fadd fast float %9725, %9703
  %9727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9728 = extractvalue %dx.types.CBufRet.f32 %9727, 0
  br i1 %233, label %9729, label %9752

; <label>:9729                                    ; preds = %9719
  %9730 = fadd fast float %9723, %9726
  %9731 = fmul fast float %9728, %9730
  %9732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9733 = extractvalue %dx.types.CBufRet.f32 %9732, 3
  %9734 = extractvalue %dx.types.CBufRet.f32 %8032, 1
  %9735 = fsub fast float %8037, %8031
  %9736 = fadd fast float %9735, %8038
  %9737 = fsub fast float %9736, %9734
  %9738 = extractvalue %dx.types.CBufRet.f32 %8032, 2
  %9739 = fmul fast float %9737, %9738
  %9740 = call float @dx.op.unary.f32(i32 7, float %9739)  ; Saturate(value)
  %9741 = fsub fast float %9740, %9733
  %9742 = fmul fast float %9741, %9720
  %9743 = fadd fast float %9742, %9733
  %9744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9745 = extractvalue %dx.types.CBufRet.f32 %9744, 0
  %9746 = fsub fast float %9743, %9745
  %9747 = fmul fast float %9746, 1.000000e+01
  %9748 = call float @dx.op.unary.f32(i32 7, float %9747)  ; Saturate(value)
  %9749 = fmul fast float %9748, %8027
  %9750 = fadd fast float %9749, %8028
  %9751 = fmul fast float %9750, %9743
  br label %9776

; <label>:9752                                    ; preds = %9719
  %9753 = fadd fast float %9480, %9477
  %9754 = fmul fast float %9701, %9753
  %9755 = fadd fast float %9754, %9704
  %9756 = fmul fast float %9728, %9723
  %9757 = fmul fast float %9728, %9726
  %9758 = fmul fast float %9728, %9755
  %9759 = call float @dx.op.binary.f32(i32 35, float %9757, float %9758)  ; FMax(a,b)
  %9760 = call float @dx.op.binary.f32(i32 35, float %9756, float %9759)  ; FMax(a,b)
  %9761 = call float @dx.op.binary.f32(i32 35, float %9760, float %8028)  ; FMax(a,b)
  %9762 = fcmp fast ugt float %9761, 0x3F10000000000000
  br i1 %9762, label %9764, label %9763

; <label>:9763                                    ; preds = %9752
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9764

; <label>:9764                                    ; preds = %9763, %9752
  %9765 = add i32 %62, 356
  %9766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9765, i32 undef)  ; BufferLoad(srv,index,wot)
  %9767 = extractvalue %dx.types.ResRet.i32 %9766, 0
  %9768 = and i32 %9767, 32
  %9769 = icmp eq i32 %9768, 0
  br i1 %9769, label %9776, label %9770

; <label>:9770                                    ; preds = %9764
  %9771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9772 = extractvalue %dx.types.CBufRet.f32 %9771, 0
  %9773 = fmul fast float %9772, 0x3FE99999A0000000
  %9774 = fadd fast float %9772, %9756
  %9775 = fadd fast float %9773, %9758
  br label %9776

; <label>:9776                                    ; preds = %9770, %9764, %9729
  %9777 = phi float [ %9731, %9729 ], [ %9774, %9770 ], [ %9756, %9764 ]
  %9778 = phi float [ %9751, %9729 ], [ %9757, %9770 ], [ %9757, %9764 ]
  %9779 = phi float [ %9750, %9729 ], [ %9775, %9770 ], [ %9758, %9764 ]
  %9780 = phi float [ %9750, %9729 ], [ %8028, %9770 ], [ %8028, %9764 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9781 = call float @dx.op.binary.f32(i32 36, float %9777, float 3.225500e+04)  ; FMin(a,b)
  %9782 = call float @dx.op.binary.f32(i32 36, float %9778, float 3.225500e+04)  ; FMin(a,b)
  %9783 = call float @dx.op.binary.f32(i32 36, float %9779, float 3.225500e+04)  ; FMin(a,b)
  %9784 = call float @dx.op.binary.f32(i32 36, float %9780, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9781)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9782)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9783)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9784)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!74}
!dx.entryPoints = !{!75}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !63, !66}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!34 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!35 = !{i32 28, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !36}
!36 = !{i32 0, i32 5}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!43 = !{i32 35, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!47 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !48}
!48 = !{i32 0, i32 14}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!57 = !{i32 48, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!58 = !{i32 49, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!59 = !{i32 50, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!60 = !{i32 51, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !48}
!61 = !{i32 52, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!62 = !{i32 53, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!63 = !{!64, !65}
!64 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!65 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!66 = !{!67, !68, !69, !70, !71, !72, !73}
!67 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!68 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!69 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!70 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!71 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!72 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!73 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!74 = !{[51 x i32] [i32 49, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 15, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !101}
!76 = !{!77, !99, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !90, !91, !92, !94, !96, !98}
!78 = !{i32 0, !"SV_Position", i8 9, i8 3, !79, i8 4, i32 1, i8 4, i32 0, i8 0, !80}
!79 = !{i32 0}
!80 = !{i32 3, i32 15}
!81 = !{i32 1, !"COLOR", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 1, i8 0, !80}
!82 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 2, i8 0, !83}
!83 = !{i32 3, i32 3}
!84 = !{i32 3, !"NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 3, i8 0, !85}
!85 = !{i32 3, i32 7}
!86 = !{i32 4, !"TANGENT", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 4, i8 0, !80}
!87 = !{i32 5, !"SH_RED", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 5, i8 0, !80}
!88 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 6, i8 0, !80}
!89 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 7, i8 0, !80}
!90 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 2, i32 8, i8 0, !83}
!91 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 9, i8 0, !80}
!92 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 10, i8 0, !93}
!93 = !{i32 3, i32 8}
!94 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !79, i8 1, i32 1, i8 4, i32 11, i8 0, !95}
!95 = !{i32 3, i32 13}
!96 = !{i32 12, !"SV_IsFrontFace", i8 5, i8 13, !79, i8 1, i32 1, i8 1, i32 12, i8 0, !97}
!97 = !{i32 3, i32 1}
!98 = !{i32 13, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!99 = !{!100}
!100 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
!101 = !{i32 0, i64 16}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = !{!111, !111, i64 0}
!111 = !{!"int", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !{!115, !117, !119, !121}
!115 = distinct !{!115, !116, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!116 = distinct !{!116, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!117 = distinct !{!117, !118, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!118 = distinct !{!118, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!119 = distinct !{!119, !120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!120 = distinct !{!120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!121 = distinct !{!121, !122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!122 = distinct !{!122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = !{!125, !125, i64 0}
!125 = !{!"float", !112, i64 0}
!126 = distinct !{!126, !104}
!127 = distinct !{!127, !104}
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
!144 = distinct !{!144, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!145 = distinct !{!145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!146 = distinct !{!146, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!147 = distinct !{!147, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!148 = distinct !{!148, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!149 = distinct !{!149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!150 = distinct !{!150, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!151 = distinct !{!151, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

