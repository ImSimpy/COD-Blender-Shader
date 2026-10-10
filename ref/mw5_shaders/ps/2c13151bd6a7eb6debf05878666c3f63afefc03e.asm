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
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x zw
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
; shader hash: 49d5b258aca7e8767f2eacf4d8045410
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
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
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
; Number of inputs: 40, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
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
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = alloca [12 x float], align 4
  %94 = alloca [12 x float], align 4
  %95 = alloca [4 x float], align 4
  %96 = alloca [4 x float], align 4
  %97 = alloca [4 x float], align 4
  %98 = alloca [3 x float], align 4
  %99 = alloca [3 x float], align 4
  %100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = fmul fast float %103, %89
  %105 = fmul fast float %103, %90
  %106 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %107 = bitcast float %106 to i32
  %108 = ashr i32 %107, 1
  %109 = sub nsw i32 1597250115, %108
  %110 = bitcast i32 %109 to float
  %111 = fmul fast float %110, %80
  %112 = fmul fast float %110, %81
  %113 = fmul fast float %110, %82
  %114 = fmul fast float %81, %78
  %115 = fmul fast float %82, %77
  %116 = fsub fast float %114, %115
  %117 = fmul fast float %82, %76
  %118 = fmul fast float %80, %78
  %119 = fsub fast float %117, %118
  %120 = fmul fast float %80, %77
  %121 = fmul fast float %81, %76
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %116, %79
  %124 = fmul fast float %119, %79
  %125 = fmul fast float %122, %79
  %126 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %127 = bitcast float %126 to i32
  %128 = ashr i32 %127, 1
  %129 = sub nsw i32 1597250115, %128
  %130 = bitcast i32 %129 to float
  %131 = fmul fast float %130, %69
  %132 = fmul fast float %130, %70
  %133 = fmul fast float %130, %71
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %104, 2.000000e+00
  %138 = fmul fast float %137, %135
  %139 = fmul fast float %105, 2.000000e+00
  %140 = fmul fast float %139, %136
  %141 = fsub fast float 1.000000e+00, %138
  %142 = fsub fast float 1.000000e+00, %140
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = fmul fast float %141, %144
  %148 = fmul fast float %141, %145
  %149 = fmul fast float %141, %146
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = fmul fast float %142, %151
  %155 = fmul fast float %142, %152
  %156 = fmul fast float %142, %153
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = fadd fast float %154, %158
  %162 = fadd fast float %161, %147
  %163 = fadd fast float %155, %159
  %164 = fadd fast float %163, %148
  %165 = fadd fast float %156, %160
  %166 = fadd fast float %165, %149
  %167 = fmul fast float %162, %92
  %168 = fmul fast float %164, %92
  %169 = fmul fast float %166, %92
  %170 = add i32 %60, 360
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = extractvalue %dx.types.ResRet.i32 %171, 1
  %174 = extractvalue %dx.types.ResRet.i32 %171, 2
  %175 = extractvalue %dx.types.ResRet.i32 %171, 3
  %176 = bitcast i32 %172 to float
  %177 = bitcast i32 %173 to float
  %178 = bitcast i32 %174 to float
  %179 = bitcast i32 %175 to float
  %180 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = call float @dx.op.unary.f32(i32 25, float %180)  ; Rsqrt(value)
  %182 = fmul fast float %181, %111
  %183 = fmul fast float %181, %112
  %184 = fmul fast float %181, %113
  %185 = call float @dx.op.dot3.f32(i32 55, float %167, float %168, float %169, float %167, float %168, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %186 = call float @dx.op.unary.f32(i32 25, float %185)  ; Rsqrt(value)
  %187 = fmul fast float %186, %167
  %188 = fmul fast float %186, %168
  %189 = fmul fast float %186, %169
  %190 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %182, float %183, float %184)  ; Dot3(ax,ay,az,bx,by,bz)
  %191 = fmul fast float %190, %190
  %192 = fmul fast float %191, %178
  %193 = fadd fast float %192, %179
  %194 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 3
  %197 = fmul fast float %196, %185
  %198 = fsub fast float %176, %197
  %199 = fmul fast float %198, %177
  %200 = call float @dx.op.unary.f32(i32 7, float %199)  ; Saturate(value)
  %201 = fmul fast float %200, %194
  %202 = fmul fast float %104, 5.000000e-01
  %203 = fmul fast float %105, 5.000000e-01
  %204 = fptosi float %202 to i32
  %205 = fptosi float %203 to i32
  %206 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %204, i32 %205, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = lshr i32 %207, 18
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F4C00EBA0000000
  %211 = call float @dx.op.unary.f32(i32 21, float %210)  ; Exp(value)
  %212 = fadd fast float %211, -1.000000e+00
  %213 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %214 = extractvalue %dx.types.Dimensions %213, 0
  %215 = sitofp i32 %214 to float
  %216 = extractvalue %dx.types.Dimensions %213, 1
  %217 = sitofp i32 %216 to float
  %218 = fcmp fast oge float %202, %215
  %219 = fcmp fast oge float %203, %217
  %220 = or i1 %218, %219
  %221 = select i1 %220, float 0x4197782600000000, float %212
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %224 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %225 = fmul fast float %223, %104
  %226 = fmul fast float %224, %105
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 114688
  %230 = icmp ne i32 %229, 0
  %231 = select i1 %230, float %225, float 0.000000e+00
  %232 = select i1 %230, float %226, float 0.000000e+00
  %233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %231, float %232, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = fmul fast float %234, 2.550000e+02
  %236 = fptoui float %235 to i32
  %237 = select i1 %230, i32 %236, i32 0
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.i32 %239, 3
  %241 = and i32 %240, 3
  %242 = icmp ne i32 %241, 0
  %243 = and i32 %240, 4
  %244 = icmp ne i32 %243, 0
  %245 = and i1 %242, %244
  br i1 %245, label %246, label %257

; <label>:246                                     ; preds = %0
  %247 = extractvalue %dx.types.CBufRet.f32 %238, 3
  %248 = fmul fast float %247, %105
  %249 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %250 = fmul fast float %249, %104
  %251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %250, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = fsub fast float 1.000000e+00, %252
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = fcmp fast olt float %253, %255
  br label %260

; <label>:257                                     ; preds = %0
  %258 = icmp eq i32 %243, 0
  %259 = and i1 %242, %258
  br label %260

; <label>:260                                     ; preds = %257, %246
  %261 = phi i1 [ %256, %246 ], [ %259, %257 ]
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %264 = fmul fast float %263, 0x3FE3C6EF40000000
  %265 = frem fast float %104, 2.560000e+02
  %266 = frem fast float %105, 2.560000e+02
  %267 = fptoui float %265 to i32
  %268 = fptoui float %266 to i32
  %269 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %267, i32 %268, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = fadd fast float %270, %264
  %272 = call float @dx.op.unary.f32(i32 22, float %271)  ; Frc(value)
  %273 = add i32 %60, 156
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = shl i32 %275, 4
  %277 = and i32 %276, 32752
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %275, 7
  %280 = and i32 %279, 32752
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %275, 22
  %283 = shl nuw nsw i32 %282, 5
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %60, 216
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %287, 8
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %287, 16
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = add i32 %60, 36
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %301, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %60, 288
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = fmul fast float %310, 0x3F50624DE0000000
  %314 = fmul fast float %312, 0x3F50624DE0000000
  %315 = add i32 %60, 172
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = shl i32 %317, 4
  %319 = and i32 %318, 32752
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %317, 7
  %322 = and i32 %321, 32752
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %317, 22
  %325 = shl nuw nsw i32 %324, 5
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %60, 232
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %329, 8
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %329, 16
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = add i32 %60, 52
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 65535
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %343, 16
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = add i32 %60, 304
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = fmul fast float %352, 0x3F50624DE0000000
  %356 = fmul fast float %354, 0x3F50624DE0000000
  %357 = add i32 %60, 188
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = shl i32 %359, 4
  %361 = and i32 %360, 32752
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %359, 7
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %359, 22
  %367 = shl nuw nsw i32 %366, 5
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = add i32 %60, 248
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 255
  %373 = uitofp i32 %372 to float
  %374 = fmul fast float %373, 0x3F70101020000000
  %375 = lshr i32 %371, 8
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = lshr i32 %371, 16
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = add i32 %60, 68
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 65535
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %385, 16
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = add i32 %60, 320
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 65535
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = lshr i32 %392, 16
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = fmul fast float %394, 0x3F50624DE0000000
  %398 = fmul fast float %396, 0x3F50624DE0000000
  %399 = add i32 %60, 204
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = shl i32 %401, 4
  %403 = and i32 %402, 32752
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %401, 7
  %406 = and i32 %405, 32752
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = lshr i32 %401, 22
  %409 = shl nuw nsw i32 %408, 5
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = add i32 %60, 264
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 255
  %415 = uitofp i32 %414 to float
  %416 = fmul fast float %415, 0x3F70101020000000
  %417 = lshr i32 %413, 8
  %418 = and i32 %417, 255
  %419 = uitofp i32 %418 to float
  %420 = fmul fast float %419, 0x3F70101020000000
  %421 = lshr i32 %413, 16
  %422 = and i32 %421, 255
  %423 = uitofp i32 %422 to float
  %424 = fmul fast float %423, 0x3F70101020000000
  %425 = add i32 %60, 84
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 65535
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = lshr i32 %427, 16
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = add i32 %60, 336
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 65535
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = lshr i32 %434, 16
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = fmul fast float %436, 0x3F50624DE0000000
  %440 = fmul fast float %438, 0x3F50624DE0000000
  %441 = add i32 %60, 348
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 32
  %445 = icmp eq i32 %444, 0
  %446 = and i32 %443, 64
  %447 = icmp eq i32 %446, 0
  %448 = and i32 %443, 128
  %449 = icmp eq i32 %448, 0
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 2
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %469, label %454

; <label>:454                                     ; preds = %260
  %455 = add i32 %60, 540
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = add i32 %457, 0
  %459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %459, %dx.types.Handle %101, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = fmul fast float %464, %85
  %466 = fmul fast float %461, %86
  %467 = fmul fast float %462, %87
  %468 = fmul fast float %463, %88
  br label %469

; <label>:469                                     ; preds = %454, %260
  %470 = phi float [ %88, %260 ], [ %468, %454 ]
  %471 = phi float [ %87, %260 ], [ %467, %454 ]
  %472 = phi float [ %86, %260 ], [ %466, %454 ]
  %473 = phi float [ %85, %260 ], [ %465, %454 ]
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 2
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %497, label %478

; <label>:478                                     ; preds = %469
  %479 = add i32 %60, 44
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = and i32 %481, 1
  %483 = icmp ne i32 %482, 0
  %484 = select i1 %483, float %472, float 1.000000e+00
  %485 = add i32 %60, 60
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 1
  %489 = icmp ne i32 %488, 0
  %490 = select i1 %489, float %471, float 1.000000e+00
  %491 = add i32 %60, 76
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = and i32 %493, 1
  %495 = icmp ne i32 %494, 0
  %496 = select i1 %495, float %470, float 1.000000e+00
  br label %497

; <label>:497                                     ; preds = %478, %469
  %498 = phi float [ %470, %469 ], [ %496, %478 ]
  %499 = phi float [ %471, %469 ], [ %490, %478 ]
  %500 = phi float [ %472, %469 ], [ %484, %478 ]
  %501 = lshr i32 %475, 20
  %502 = and i32 %501, 3
  %503 = add nuw nsw i32 %502, 1
  %504 = add i32 %60, 24
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = add i32 %60, 28
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = or i32 %509, %506
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %1161, label %512

; <label>:512                                     ; preds = %497
  %513 = and i32 %506, 262144
  %514 = icmp ne i32 %513, 0
  %515 = select i1 %514, float %63, float 1.000000e+00
  %516 = select i1 %514, float %64, float 0.000000e+00
  %517 = select i1 %514, float %65, float 0.000000e+00
  %518 = select i1 %514, float %66, float 1.000000e+00
  %519 = select i1 %514, float %67, float %83
  %520 = select i1 %514, float %68, float %84
  %521 = add i32 %60, 284
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = lshr i32 %523, 16
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = fmul fast float %525, 0x3F50624DE0000000
  %527 = add i32 %60, 88
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = lshr i32 %529, 16
  %531 = and i32 %530, 255
  %532 = lshr i32 %529, 24
  %533 = add i32 %60, 292
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = and i32 %535, 65535
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = lshr i32 %535, 16
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = add i32 %60, 32
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = lshr i32 %542, 22
  %544 = shl nuw nsw i32 %543, 5
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = shl i32 %542, 4
  %547 = and i32 %546, 32752
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = lshr i32 %542, 7
  %550 = and i32 %549, 32752
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 3
  %554 = fmul fast float %553, 1.000000e+03
  %555 = fmul fast float %313, %554
  %556 = call float @dx.op.unary.f32(i32 22, float %555)  ; Frc(value)
  %557 = fadd fast float %556, %303
  %558 = fmul fast float %314, %554
  %559 = call float @dx.op.unary.f32(i32 22, float %558)  ; Frc(value)
  %560 = fadd fast float %559, %305
  %561 = fmul fast float %526, %554
  %562 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %563 = fmul fast float %562, 0x401921FB60000000
  %564 = fadd fast float %563, %545
  %565 = call float @dx.op.unary.f32(i32 13, float %564)  ; Sin(value)
  %566 = call float @dx.op.unary.f32(i32 12, float %564)  ; Cos(value)
  %567 = fsub fast float -0.000000e+00, %565
  %568 = fadd fast float %519, -5.000000e-01
  %569 = fadd fast float %520, -5.000000e-01
  %570 = fmul fast float %537, %568
  %571 = fmul fast float %539, %569
  %572 = fadd fast float %570, 5.000000e-01
  %573 = fadd fast float %571, 5.000000e-01
  %574 = fmul fast float %548, %572
  %575 = fmul fast float %551, %573
  %576 = fmul fast float %566, %574
  %577 = call float @dx.op.tertiary.f32(i32 46, float %567, float %575, float %576)  ; FMad(a,b,c)
  %578 = fmul fast float %565, %574
  %579 = call float @dx.op.tertiary.f32(i32 46, float %566, float %575, float %578)  ; FMad(a,b,c)
  %580 = fadd fast float %557, %577
  %581 = fadd fast float %560, %579
  %582 = icmp ugt i32 %531, 1
  %583 = icmp ugt i32 %529, 33554431
  %584 = or i1 %583, %582
  br i1 %584, label %585, label %610

; <label>:585                                     ; preds = %512
  %586 = add i32 %60, 228
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = lshr i32 %588, 16
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = fmul fast float %553, %590
  %592 = call float @dx.op.unary.f32(i32 22, float %591)  ; Frc(value)
  %593 = mul nuw nsw i32 %531, %532
  %594 = uitofp i32 %593 to float
  %595 = fmul fast float %592, %594
  %596 = call float @dx.op.unary.f32(i32 27, float %595)  ; Round_ni(value)
  %597 = fptoui float %596 to i32
  %598 = urem i32 %597, %531
  %599 = udiv i32 %597, %532
  %600 = call float @dx.op.unary.f32(i32 22, float %580)  ; Frc(value)
  %601 = call float @dx.op.unary.f32(i32 22, float %581)  ; Frc(value)
  %602 = uitofp i32 %598 to float
  %603 = uitofp i32 %599 to float
  %604 = fadd fast float %600, %602
  %605 = fadd fast float %601, %603
  %606 = uitofp i32 %531 to float
  %607 = uitofp i32 %532 to float
  %608 = fdiv fast float %604, %606
  %609 = fdiv fast float %605, %607
  br label %610

; <label>:610                                     ; preds = %585, %512
  %611 = phi float [ %608, %585 ], [ %580, %512 ]
  %612 = phi float [ %609, %585 ], [ %581, %512 ]
  %613 = and i32 %506, 16777216
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %724, label %615

; <label>:615                                     ; preds = %610
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 0
  %618 = extractvalue %dx.types.CBufRet.f32 %616, 1
  %619 = extractvalue %dx.types.CBufRet.f32 %616, 2
  %620 = fadd fast float %617, %167
  %621 = fadd fast float %618, %168
  %622 = fadd fast float %619, %169
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %625 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %626 = icmp eq i32 %61, 65535
  br i1 %626, label %721, label %627

; <label>:627                                     ; preds = %615
  %628 = lshr i32 %61, 1
  %629 = shl i32 %628, 2
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = and i32 %61, 1
  %633 = icmp ne i32 %632, 0
  %634 = lshr i32 %631, 16
  %635 = and i32 %631, 65535
  %636 = select i1 %633, i32 %634, i32 %635
  %637 = icmp eq i32 %636, 65535
  br i1 %637, label %717, label %638

; <label>:638                                     ; preds = %627
  %639 = mul nuw nsw i32 %636, 40
  %640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = extractvalue %dx.types.ResRet.f32 %640, 1
  %643 = extractvalue %dx.types.ResRet.f32 %640, 2
  %644 = add nuw nsw i32 %639, 12
  %645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 0
  %647 = extractvalue %dx.types.ResRet.f32 %645, 1
  %648 = extractvalue %dx.types.ResRet.f32 %645, 2
  %649 = add nuw nsw i32 %639, 24
  %650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = extractvalue %dx.types.ResRet.f32 %650, 1
  %653 = extractvalue %dx.types.ResRet.f32 %650, 2
  %654 = add nuw nsw i32 %639, 36
  %655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = fsub fast float %620, %641
  %658 = fsub fast float %621, %642
  %659 = fsub fast float %622, %643
  %660 = fmul fast float %656, %657
  %661 = fmul fast float %656, %658
  %662 = fmul fast float %656, %659
  %663 = call float @dx.op.unary.f32(i32 27, float %660)  ; Round_ni(value)
  %664 = call float @dx.op.unary.f32(i32 27, float %661)  ; Round_ni(value)
  %665 = call float @dx.op.unary.f32(i32 27, float %662)  ; Round_ni(value)
  %666 = fadd fast float %663, 5.000000e-01
  %667 = fadd fast float %664, 5.000000e-01
  %668 = fadd fast float %665, 5.000000e-01
  %669 = fmul fast float %666, %646
  %670 = fmul fast float %667, %647
  %671 = fmul fast float %668, %648
  %672 = shl i32 %61, 2
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = add i32 %674, 0
  %676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %677 = call float @dx.op.unary.f32(i32 22, float %669)  ; Frc(value)
  %678 = call float @dx.op.unary.f32(i32 22, float %670)  ; Frc(value)
  %679 = call float @dx.op.unary.f32(i32 22, float %671)  ; Frc(value)
  %680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %676, %dx.types.Handle %55, float %677, float %678, float %679, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = extractvalue %dx.types.ResRet.f32 %680, 1
  %683 = extractvalue %dx.types.ResRet.f32 %680, 2
  %684 = fmul fast float %681, 1.023000e+03
  %685 = fmul fast float %682, 1.023000e+03
  %686 = fmul fast float %683, 1.023000e+03
  %687 = fadd fast float %684, 5.000000e-01
  %688 = fadd fast float %685, 5.000000e-01
  %689 = fadd fast float %686, 5.000000e-01
  %690 = call float @dx.op.unary.f32(i32 27, float %687)  ; Round_ni(value)
  %691 = call float @dx.op.unary.f32(i32 27, float %688)  ; Round_ni(value)
  %692 = call float @dx.op.unary.f32(i32 27, float %689)  ; Round_ni(value)
  %693 = fsub fast float %660, %663
  %694 = fsub fast float %661, %664
  %695 = fsub fast float %662, %665
  %696 = fmul fast float %693, 7.500000e-01
  %697 = fmul fast float %694, 7.500000e-01
  %698 = fmul fast float %695, 7.500000e-01
  %699 = fadd fast float %663, 1.250000e-01
  %700 = fadd fast float %699, %696
  %701 = fadd fast float %700, %690
  %702 = fadd fast float %664, 1.250000e-01
  %703 = fadd fast float %702, %697
  %704 = fadd fast float %703, %691
  %705 = fadd fast float %665, 1.250000e-01
  %706 = fadd fast float %705, %698
  %707 = fadd fast float %706, %692
  %708 = fmul fast float %701, %651
  %709 = fmul fast float %704, %652
  %710 = fmul fast float %707, %653
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = add i32 %712, 0
  %714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %714, %dx.types.Handle %53, float %708, float %709, float %710, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  br label %717

; <label>:717                                     ; preds = %638, %627
  %718 = phi float [ %716, %638 ], [ -1.000000e+00, %627 ]
  %719 = fadd fast float %718, %625
  %720 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  br label %721

; <label>:721                                     ; preds = %717, %615
  %722 = phi float [ %720, %717 ], [ %625, %615 ]
  %723 = fmul fast float %722, %473
  br label %724

; <label>:724                                     ; preds = %721, %610
  %725 = phi float [ %723, %721 ], [ %473, %610 ]
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 256
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %776, label %730

; <label>:730                                     ; preds = %724
  %731 = add i32 %60, 488
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = add i32 %733, 0
  %735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %735, %dx.types.Handle %101, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = add i32 %60, 100
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = shl i32 %740, 4
  %742 = and i32 %741, 32752
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = lshr i32 %740, 7
  %745 = and i32 %744, 32752
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = fsub fast float 1.000000e+00, %725
  %748 = call float @dx.op.binary.f32(i32 35, float %747, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %749 = bitcast float %725 to i32
  %750 = sitofp i32 %749 to float
  %751 = fadd fast float %750, 0xC1CFBF8940000000
  %752 = fmul fast float %746, %751
  %753 = fadd fast float %752, 0x41CFBF8940000000
  %754 = fptosi float %753 to i32
  %755 = bitcast i32 %754 to float
  %756 = bitcast float %748 to i32
  %757 = sitofp i32 %756 to float
  %758 = fadd fast float %757, 0xC1CFBF8940000000
  %759 = fmul fast float %758, %746
  %760 = fadd fast float %759, 0x41CFBF8940000000
  %761 = fptosi float %760 to i32
  %762 = bitcast i32 %761 to float
  %763 = fmul fast float %755, %743
  %764 = fmul fast float %762, %743
  %765 = fsub fast float %748, %763
  %766 = fadd fast float %764, %748
  %767 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %768 = call float @dx.op.unary.f32(i32 7, float %766)  ; Saturate(value)
  %769 = fsub fast float %737, %767
  %770 = fsub fast float %768, %767
  %771 = bitcast float %770 to i32
  %772 = sub nsw i32 2129859010, %771
  %773 = bitcast i32 %772 to float
  %774 = fmul fast float %773, %769
  %775 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  br label %776

; <label>:776                                     ; preds = %730, %724
  %777 = phi float [ %775, %730 ], [ %725, %724 ]
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 128
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %798, label %782

; <label>:782                                     ; preds = %776
  %783 = add i32 %60, 472
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = add i32 %785, 0
  %787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %788 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %787, %dx.types.Handle %101, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = and i32 %791, 524288
  %793 = icmp ne i32 %792, 0
  %794 = fcmp fast ogt float %789, 0x3FE0101020000000
  %795 = select i1 %794, float 1.000000e+00, float 0.000000e+00
  %796 = select i1 %793, float %795, float %789
  %797 = fmul fast float %796, %777
  br label %798

; <label>:798                                     ; preds = %782, %776
  %799 = phi float [ %797, %782 ], [ %777, %776 ]
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 16
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %1002, label %804

; <label>:804                                     ; preds = %798
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = add i32 %60, 424
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = add i32 %809, 0
  %811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %812 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %811, %dx.types.Handle %100, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = extractvalue %dx.types.ResRet.f32 %812, 1
  %815 = extractvalue %dx.types.ResRet.f32 %812, 2
  %816 = extractvalue %dx.types.ResRet.f32 %812, 3
  %817 = and i32 %806, 255
  %818 = uitofp i32 %817 to float
  %819 = lshr i32 %806, 8
  %820 = and i32 %819, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %816, %818
  %823 = fadd fast float %822, %821
  %824 = fmul fast float %823, 0x3F70101000000000
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = and i32 %826, 512
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %837, label %829

; <label>:829                                     ; preds = %804
  %830 = add i32 %60, 508
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = add i32 %832, 0
  %834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %835 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %834, %dx.types.Handle %101, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %836 = extractvalue %dx.types.ResRet.f32 %835, 0
  br label %837

; <label>:837                                     ; preds = %829, %804
  %838 = phi float [ %836, %829 ], [ 1.000000e+00, %804 ]
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = and i32 %840, 33554432
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %949, label %843

; <label>:843                                     ; preds = %837
  %844 = add i32 %60, 224
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = and i32 %846, 65535
  %848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %847)  ; LegacyF16ToF32(value)
  %849 = lshr i32 %846, 16
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = add i32 %60, 228
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = and i32 %853, 65535
  %855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %854)  ; LegacyF16ToF32(value)
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = lshr i32 %857, 24
  %859 = uitofp i32 %858 to float
  %860 = fmul fast float %859, 0x3F70101020000000
  %861 = and i32 %857, 255
  %862 = uitofp i32 %861 to float
  %863 = fmul fast float %862, 0x3F70101020000000
  %864 = lshr i32 %857, 8
  %865 = and i32 %864, 255
  %866 = uitofp i32 %865 to float
  %867 = fmul fast float %866, 0x3F70101020000000
  %868 = lshr i32 %857, 16
  %869 = and i32 %868, 255
  %870 = uitofp i32 %869 to float
  %871 = fmul fast float %870, 0x3F70101020000000
  %872 = add i32 %60, 220
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = lshr i32 %874, 24
  %876 = uitofp i32 %875 to float
  %877 = fmul fast float %876, 0x3F70101020000000
  %878 = and i32 %874, 255
  %879 = uitofp i32 %878 to float
  %880 = fmul fast float %879, 0x3F70101020000000
  %881 = lshr i32 %874, 8
  %882 = and i32 %881, 255
  %883 = uitofp i32 %882 to float
  %884 = fmul fast float %883, 0x3F70101020000000
  %885 = lshr i32 %874, 16
  %886 = and i32 %885, 255
  %887 = uitofp i32 %886 to float
  %888 = fmul fast float %887, 0x3F70101020000000
  %889 = bitcast float %813 to i32
  %890 = ashr i32 %889, 1
  %891 = sub nsw i32 1597463174, %890
  %892 = bitcast i32 %891 to float
  %893 = fmul fast float %813, 5.000000e-01
  %894 = fmul fast float %892, %892
  %895 = fmul fast float %894, %893
  %896 = fsub fast float 1.500000e+00, %895
  %897 = fmul fast float %892, %813
  %898 = fmul fast float %897, %896
  %899 = bitcast float %814 to i32
  %900 = ashr i32 %899, 1
  %901 = sub nsw i32 1597463174, %900
  %902 = bitcast i32 %901 to float
  %903 = fmul fast float %814, 5.000000e-01
  %904 = fmul fast float %902, %902
  %905 = fmul fast float %904, %903
  %906 = fsub fast float 1.500000e+00, %905
  %907 = fmul fast float %902, %814
  %908 = fmul fast float %907, %906
  %909 = bitcast float %815 to i32
  %910 = ashr i32 %909, 1
  %911 = sub nsw i32 1597463174, %910
  %912 = bitcast i32 %911 to float
  %913 = fmul fast float %815, 5.000000e-01
  %914 = fmul fast float %912, %912
  %915 = fmul fast float %914, %913
  %916 = fsub fast float 1.500000e+00, %915
  %917 = fmul fast float %912, %815
  %918 = fmul fast float %917, %916
  %919 = fsub fast float %898, %880
  %920 = fsub fast float %908, %884
  %921 = fsub fast float %918, %888
  %922 = fmul fast float %919, %848
  %923 = fmul fast float %920, %850
  %924 = fmul fast float %921, %855
  %925 = fadd fast float %922, %863
  %926 = fadd fast float %923, %867
  %927 = fadd fast float %924, %871
  %928 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %929 = call float @dx.op.unary.f32(i32 7, float %926)  ; Saturate(value)
  %930 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %931 = fmul fast float %928, %928
  %932 = fmul fast float %929, %929
  %933 = fmul fast float %930, %930
  %934 = fsub fast float %931, %813
  %935 = fsub fast float %932, %814
  %936 = fsub fast float %933, %815
  %937 = fmul fast float %934, %838
  %938 = fmul fast float %935, %838
  %939 = fmul fast float %936, %838
  %940 = fadd fast float %937, %813
  %941 = fadd fast float %938, %814
  %942 = fadd fast float %939, %815
  %943 = fadd fast float %860, %824
  %944 = fsub fast float %943, %877
  %945 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  %946 = fsub fast float %945, %824
  %947 = fmul fast float %946, %838
  %948 = fadd fast float %947, %824
  br label %1002

; <label>:949                                     ; preds = %837
  %950 = and i32 %840, 134217728
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %986, label %952

; <label>:952                                     ; preds = %949
  %953 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %954 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %955 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %956 = fadd fast float %953, -5.000000e-01
  %957 = fadd fast float %954, -5.000000e-01
  %958 = fadd fast float %955, -5.000000e-01
  %959 = fmul fast float %956, %838
  %960 = fmul fast float %957, %838
  %961 = fmul fast float %958, %838
  %962 = fadd fast float %959, 5.000000e-01
  %963 = fadd fast float %960, 5.000000e-01
  %964 = fadd fast float %961, 5.000000e-01
  %965 = call float @dx.op.unary.f32(i32 24, float %813)  ; Sqrt(value)
  %966 = call float @dx.op.unary.f32(i32 24, float %814)  ; Sqrt(value)
  %967 = call float @dx.op.unary.f32(i32 24, float %815)  ; Sqrt(value)
  %968 = fmul fast float %962, 2.000000e+00
  %969 = fsub fast float 1.000000e+00, %968
  %970 = fmul fast float %969, %965
  %971 = fadd fast float %970, %968
  %972 = fmul fast float %971, %965
  %973 = fmul fast float %963, 2.000000e+00
  %974 = fsub fast float 1.000000e+00, %973
  %975 = fmul fast float %974, %966
  %976 = fadd fast float %975, %973
  %977 = fmul fast float %976, %966
  %978 = fmul fast float %964, 2.000000e+00
  %979 = fsub fast float 1.000000e+00, %978
  %980 = fmul fast float %979, %967
  %981 = fadd fast float %980, %978
  %982 = fmul fast float %981, %967
  %983 = fmul fast float %972, %972
  %984 = fmul fast float %977, %977
  %985 = fmul fast float %982, %982
  br label %1002

; <label>:986                                     ; preds = %949
  %987 = fmul fast float %290, %290
  %988 = fmul fast float %294, %294
  %989 = fmul fast float %298, %298
  %990 = fadd fast float %987, -1.000000e+00
  %991 = fadd fast float %988, -1.000000e+00
  %992 = fadd fast float %989, -1.000000e+00
  %993 = fmul fast float %838, %990
  %994 = fmul fast float %838, %991
  %995 = fmul fast float %838, %992
  %996 = fadd fast float %993, 1.000000e+00
  %997 = fadd fast float %994, 1.000000e+00
  %998 = fadd fast float %995, 1.000000e+00
  %999 = fmul fast float %996, %813
  %1000 = fmul fast float %997, %814
  %1001 = fmul fast float %998, %815
  br label %1002

; <label>:1002                                    ; preds = %986, %952, %843, %798
  %1003 = phi float [ %948, %843 ], [ %824, %952 ], [ %824, %986 ], [ 0x3FA23C0BE0000000, %798 ]
  %1004 = phi float [ %940, %843 ], [ %983, %952 ], [ %999, %986 ], [ 1.000000e+00, %798 ]
  %1005 = phi float [ %941, %843 ], [ %984, %952 ], [ %1000, %986 ], [ 1.000000e+00, %798 ]
  %1006 = phi float [ %942, %843 ], [ %985, %952 ], [ %1001, %986 ], [ 1.000000e+00, %798 ]
  %1007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.i32 %1007, 1
  %1009 = and i32 %1008, 1
  %1010 = icmp ne i32 %1009, 0
  %1011 = add i32 %60, 356
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = and i32 %1013, 32
  %1015 = icmp ne i32 %1014, 0
  %1016 = and i1 %1010, %1015
  %1017 = select i1 %1016, float 1.000000e+00, float %1004
  %1018 = select i1 %1016, float 0x3FD3333340000000, float %1005
  %1019 = select i1 %1016, float 0x3FD3333340000000, float %1006
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = and i32 %1021, 32
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1096, label %1024

; <label>:1024                                    ; preds = %1002
  %1025 = add i32 %60, 92
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = add i32 %60, 440
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = add i32 %1030, 0
  %1032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1032, %dx.types.Handle %100, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = extractvalue %dx.types.ResRet.f32 %1033, 3
  %1038 = and i32 %1027, 255
  %1039 = uitofp i32 %1038 to float
  %1040 = lshr i32 %1027, 8
  %1041 = and i32 %1040, 255
  %1042 = uitofp i32 %1041 to float
  %1043 = lshr i32 %1027, 16
  %1044 = and i32 %1043, 255
  %1045 = uitofp i32 %1044 to float
  %1046 = fmul fast float %1045, 0x3F70101000000000
  %1047 = fmul fast float %1034, %1039
  %1048 = fadd fast float %1047, %1042
  %1049 = fmul fast float %1048, 0x3F70101000000000
  %1050 = fadd fast float %1035, -5.000000e-01
  %1051 = fadd fast float %1037, -5.000000e-01
  %1052 = fmul fast float %1050, %1046
  %1053 = fmul fast float %1051, %1046
  %1054 = fadd fast float %1052, 5.000000e-01
  %1055 = fadd fast float %1053, 5.000000e-01
  %1056 = fmul fast float %1054, 2.000000e+00
  %1057 = fadd fast float %1056, -1.000000e+00
  %1058 = fmul fast float %1055, 2.000000e+00
  %1059 = fadd fast float %1058, -1.000000e+00
  %1060 = fadd fast float %1057, %1059
  %1061 = fmul fast float %1060, 5.000000e-01
  %1062 = fsub fast float %1057, %1059
  %1063 = fmul fast float %1062, 5.000000e-01
  %1064 = call float @dx.op.unary.f32(i32 6, float %1061)  ; FAbs(value)
  %1065 = fsub fast float 1.000000e+00, %1064
  %1066 = call float @dx.op.unary.f32(i32 6, float %1063)  ; FAbs(value)
  %1067 = fsub fast float %1065, %1066
  %1068 = call float @dx.op.dot3.f32(i32 55, float %1061, float %1063, float %1067, float %1061, float %1063, float %1067)  ; Dot3(ax,ay,az,bx,by,bz)
  %1069 = call float @dx.op.unary.f32(i32 25, float %1068)  ; Rsqrt(value)
  %1070 = fmul fast float %1061, %1069
  %1071 = fmul fast float %1063, %1069
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = and i32 %1073, 67108864
  %1075 = icmp eq i32 %1074, 0
  br i1 %1075, label %1092, label %1076

; <label>:1076                                    ; preds = %1024
  %1077 = add i32 %60, 280
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 65535
  %1081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1080)  ; LegacyF16ToF32(value)
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = and i32 %1083, 65535
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = lshr i32 %1079, 16
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = fsub fast float %1049, %1087
  %1089 = fmul fast float %1088, %1081
  %1090 = fadd fast float %1089, %1085
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  br label %1092

; <label>:1092                                    ; preds = %1076, %1024
  %1093 = phi float [ %1091, %1076 ], [ %1049, %1024 ]
  %1094 = call float @dx.op.dot2.f32(i32 54, float %1070, float %1071, float %515, float %516)  ; Dot2(ax,ay,bx,by)
  %1095 = call float @dx.op.dot2.f32(i32 54, float %1070, float %1071, float %517, float %518)  ; Dot2(ax,ay,bx,by)
  br label %1096

; <label>:1096                                    ; preds = %1092, %1002
  %1097 = phi float [ %1093, %1092 ], [ 0x3FD6666660000000, %1002 ]
  %1098 = phi float [ %1094, %1092 ], [ 0.000000e+00, %1002 ]
  %1099 = phi float [ %1095, %1092 ], [ 0.000000e+00, %1002 ]
  %1100 = phi float [ %1036, %1092 ], [ 1.000000e+00, %1002 ]
  %1101 = add i32 %60, 160
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = lshr i32 %1103, 22
  %1105 = shl nuw nsw i32 %1104, 5
  %1106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1105)  ; LegacyF16ToF32(value)
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 64
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1144, label %1111

; <label>:1111                                    ; preds = %1096
  %1112 = add i32 %60, 456
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = add i32 %1114, 0
  %1116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 131072
  %1120 = icmp eq i32 %1119, 0
  %1121 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1116, %dx.types.Handle %100, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.ResRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.ResRet.f32 %1121, 2
  %1125 = fmul fast float %1122, %278
  %1126 = fmul fast float %1123, %281
  %1127 = fmul fast float %1124, %284
  br i1 %1120, label %1134, label %1128

; <label>:1128                                    ; preds = %1111
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 0
  %1131 = fmul fast float %1130, %1125
  %1132 = fmul fast float %1130, %1126
  %1133 = fmul fast float %1130, %1127
  br label %1134

; <label>:1134                                    ; preds = %1128, %1111
  %1135 = phi float [ %1131, %1128 ], [ %1125, %1111 ]
  %1136 = phi float [ %1132, %1128 ], [ %1126, %1111 ]
  %1137 = phi float [ %1133, %1128 ], [ %1127, %1111 ]
  %1138 = fmul fast float %1135, %1106
  %1139 = select i1 %261, float %1138, float %1135
  %1140 = call float @dx.op.dot3.f32(i32 55, float %1139, float %1136, float %1137, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1141 = select i1 %261, float 0.000000e+00, float %1135
  %1142 = select i1 %261, float %1140, float %1136
  %1143 = select i1 %261, float 0.000000e+00, float %1137
  br label %1144

; <label>:1144                                    ; preds = %1134, %1096
  %1145 = phi float [ %1141, %1134 ], [ 0.000000e+00, %1096 ]
  %1146 = phi float [ %1142, %1134 ], [ 0.000000e+00, %1096 ]
  %1147 = phi float [ %1143, %1134 ], [ 0.000000e+00, %1096 ]
  %1148 = add i32 %60, 96
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = and i32 %1150, 255
  %1152 = uitofp i32 %1151 to float
  %1153 = lshr i32 %1150, 8
  %1154 = and i32 %1153, 255
  %1155 = uitofp i32 %1154 to float
  %1156 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1018, float %1019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1157 = fmul fast float %1155, %1156
  %1158 = fadd fast float %1157, %1152
  %1159 = fmul fast float %1158, 0x3F70101020000000
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  br label %1161

; <label>:1161                                    ; preds = %1144, %497
  %1162 = phi float [ 0.000000e+00, %497 ], [ %1098, %1144 ]
  %1163 = phi float [ 0.000000e+00, %497 ], [ %1099, %1144 ]
  %1164 = phi float [ 0.000000e+00, %497 ], [ %1017, %1144 ]
  %1165 = phi float [ 0.000000e+00, %497 ], [ %1018, %1144 ]
  %1166 = phi float [ 0.000000e+00, %497 ], [ %1019, %1144 ]
  %1167 = phi float [ 0.000000e+00, %497 ], [ %1145, %1144 ]
  %1168 = phi float [ 0.000000e+00, %497 ], [ %1146, %1144 ]
  %1169 = phi float [ 0.000000e+00, %497 ], [ %1147, %1144 ]
  %1170 = phi float [ 0.000000e+00, %497 ], [ %1003, %1144 ]
  %1171 = phi float [ 0.000000e+00, %497 ], [ %799, %1144 ]
  %1172 = phi float [ 0.000000e+00, %497 ], [ %1097, %1144 ]
  %1173 = phi float [ 0.000000e+00, %497 ], [ %1100, %1144 ]
  %1174 = phi float [ 0.000000e+00, %497 ], [ %1160, %1144 ]
  br i1 %445, label %2016, label %1175

; <label>:1175                                    ; preds = %1161
  %1176 = icmp ult i32 %503, 2
  %1177 = add i32 %60, 40
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = add i32 %60, 44
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = or i32 %1182, %1179
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %2016, label %1185

; <label>:1185                                    ; preds = %1175
  %1186 = and i32 %1179, 262144
  %1187 = icmp ne i32 %1186, 0
  %1188 = select i1 %1187, float %63, float 1.000000e+00
  %1189 = select i1 %1187, float %64, float 0.000000e+00
  %1190 = select i1 %1187, float %65, float 0.000000e+00
  %1191 = select i1 %1187, float %66, float 1.000000e+00
  %1192 = select i1 %1187, float %67, float %83
  %1193 = select i1 %1187, float %68, float %84
  %1194 = add i32 %60, 300
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = lshr i32 %1196, 16
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = fmul fast float %1198, 0x3F50624DE0000000
  %1200 = add i32 %60, 104
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = lshr i32 %1202, 16
  %1204 = and i32 %1203, 255
  %1205 = lshr i32 %1202, 24
  %1206 = add i32 %60, 308
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %1208, 65535
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = lshr i32 %1208, 16
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = add i32 %60, 48
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = lshr i32 %1215, 22
  %1217 = shl nuw nsw i32 %1216, 5
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = shl i32 %1215, 4
  %1220 = and i32 %1219, 32752
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = lshr i32 %1215, 7
  %1223 = and i32 %1222, 32752
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 3
  %1227 = fmul fast float %1226, 1.000000e+03
  %1228 = fmul fast float %355, %1227
  %1229 = call float @dx.op.unary.f32(i32 22, float %1228)  ; Frc(value)
  %1230 = fadd fast float %1229, %345
  %1231 = fmul fast float %356, %1227
  %1232 = call float @dx.op.unary.f32(i32 22, float %1231)  ; Frc(value)
  %1233 = fadd fast float %1232, %347
  %1234 = fmul fast float %1199, %1227
  %1235 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1236 = fmul fast float %1235, 0x401921FB60000000
  %1237 = fadd fast float %1236, %1218
  %1238 = call float @dx.op.unary.f32(i32 13, float %1237)  ; Sin(value)
  %1239 = call float @dx.op.unary.f32(i32 12, float %1237)  ; Cos(value)
  %1240 = fsub fast float -0.000000e+00, %1238
  %1241 = fadd fast float %1192, -5.000000e-01
  %1242 = fadd fast float %1193, -5.000000e-01
  %1243 = fmul fast float %1210, %1241
  %1244 = fmul fast float %1212, %1242
  %1245 = fadd fast float %1243, 5.000000e-01
  %1246 = fadd fast float %1244, 5.000000e-01
  %1247 = fmul fast float %1221, %1245
  %1248 = fmul fast float %1224, %1246
  %1249 = fmul fast float %1239, %1247
  %1250 = call float @dx.op.tertiary.f32(i32 46, float %1240, float %1248, float %1249)  ; FMad(a,b,c)
  %1251 = fmul fast float %1238, %1247
  %1252 = call float @dx.op.tertiary.f32(i32 46, float %1239, float %1248, float %1251)  ; FMad(a,b,c)
  %1253 = fadd fast float %1230, %1250
  %1254 = fadd fast float %1233, %1252
  %1255 = icmp ugt i32 %1204, 1
  %1256 = icmp ugt i32 %1202, 33554431
  %1257 = or i1 %1256, %1255
  br i1 %1257, label %1258, label %1283

; <label>:1258                                    ; preds = %1185
  %1259 = add i32 %60, 244
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = lshr i32 %1261, 16
  %1263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1262)  ; LegacyF16ToF32(value)
  %1264 = fmul fast float %1226, %1263
  %1265 = call float @dx.op.unary.f32(i32 22, float %1264)  ; Frc(value)
  %1266 = mul nuw nsw i32 %1204, %1205
  %1267 = uitofp i32 %1266 to float
  %1268 = fmul fast float %1265, %1267
  %1269 = call float @dx.op.unary.f32(i32 27, float %1268)  ; Round_ni(value)
  %1270 = fptoui float %1269 to i32
  %1271 = urem i32 %1270, %1204
  %1272 = udiv i32 %1270, %1205
  %1273 = call float @dx.op.unary.f32(i32 22, float %1253)  ; Frc(value)
  %1274 = call float @dx.op.unary.f32(i32 22, float %1254)  ; Frc(value)
  %1275 = uitofp i32 %1271 to float
  %1276 = uitofp i32 %1272 to float
  %1277 = fadd fast float %1273, %1275
  %1278 = fadd fast float %1274, %1276
  %1279 = uitofp i32 %1204 to float
  %1280 = uitofp i32 %1205 to float
  %1281 = fdiv fast float %1277, %1279
  %1282 = fdiv fast float %1278, %1280
  br label %1283

; <label>:1283                                    ; preds = %1258, %1185
  %1284 = phi float [ %1281, %1258 ], [ %1253, %1185 ]
  %1285 = phi float [ %1282, %1258 ], [ %1254, %1185 ]
  %1286 = and i32 %1179, 16777216
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1397, label %1288

; <label>:1288                                    ; preds = %1283
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1293 = fadd fast float %1290, %167
  %1294 = fadd fast float %1291, %168
  %1295 = fadd fast float %1292, %169
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 0
  %1298 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1299 = icmp eq i32 %61, 65535
  br i1 %1299, label %1394, label %1300

; <label>:1300                                    ; preds = %1288
  %1301 = lshr i32 %61, 1
  %1302 = shl i32 %1301, 2
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = and i32 %61, 1
  %1306 = icmp ne i32 %1305, 0
  %1307 = lshr i32 %1304, 16
  %1308 = and i32 %1304, 65535
  %1309 = select i1 %1306, i32 %1307, i32 %1308
  %1310 = icmp eq i32 %1309, 65535
  br i1 %1310, label %1390, label %1311

; <label>:1311                                    ; preds = %1300
  %1312 = mul nuw nsw i32 %1309, 40
  %1313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  %1315 = extractvalue %dx.types.ResRet.f32 %1313, 1
  %1316 = extractvalue %dx.types.ResRet.f32 %1313, 2
  %1317 = add nuw nsw i32 %1312, 12
  %1318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = extractvalue %dx.types.ResRet.f32 %1318, 1
  %1321 = extractvalue %dx.types.ResRet.f32 %1318, 2
  %1322 = add nuw nsw i32 %1312, 24
  %1323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1322, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.ResRet.f32 %1323, 1
  %1326 = extractvalue %dx.types.ResRet.f32 %1323, 2
  %1327 = add nuw nsw i32 %1312, 36
  %1328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.f32 %1328, 0
  %1330 = fsub fast float %1293, %1314
  %1331 = fsub fast float %1294, %1315
  %1332 = fsub fast float %1295, %1316
  %1333 = fmul fast float %1329, %1330
  %1334 = fmul fast float %1329, %1331
  %1335 = fmul fast float %1329, %1332
  %1336 = call float @dx.op.unary.f32(i32 27, float %1333)  ; Round_ni(value)
  %1337 = call float @dx.op.unary.f32(i32 27, float %1334)  ; Round_ni(value)
  %1338 = call float @dx.op.unary.f32(i32 27, float %1335)  ; Round_ni(value)
  %1339 = fadd fast float %1336, 5.000000e-01
  %1340 = fadd fast float %1337, 5.000000e-01
  %1341 = fadd fast float %1338, 5.000000e-01
  %1342 = fmul fast float %1339, %1319
  %1343 = fmul fast float %1340, %1320
  %1344 = fmul fast float %1341, %1321
  %1345 = shl i32 %61, 2
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = add i32 %1347, 0
  %1349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1350 = call float @dx.op.unary.f32(i32 22, float %1342)  ; Frc(value)
  %1351 = call float @dx.op.unary.f32(i32 22, float %1343)  ; Frc(value)
  %1352 = call float @dx.op.unary.f32(i32 22, float %1344)  ; Frc(value)
  %1353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1349, %dx.types.Handle %55, float %1350, float %1351, float %1352, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  %1355 = extractvalue %dx.types.ResRet.f32 %1353, 1
  %1356 = extractvalue %dx.types.ResRet.f32 %1353, 2
  %1357 = fmul fast float %1354, 1.023000e+03
  %1358 = fmul fast float %1355, 1.023000e+03
  %1359 = fmul fast float %1356, 1.023000e+03
  %1360 = fadd fast float %1357, 5.000000e-01
  %1361 = fadd fast float %1358, 5.000000e-01
  %1362 = fadd fast float %1359, 5.000000e-01
  %1363 = call float @dx.op.unary.f32(i32 27, float %1360)  ; Round_ni(value)
  %1364 = call float @dx.op.unary.f32(i32 27, float %1361)  ; Round_ni(value)
  %1365 = call float @dx.op.unary.f32(i32 27, float %1362)  ; Round_ni(value)
  %1366 = fsub fast float %1333, %1336
  %1367 = fsub fast float %1334, %1337
  %1368 = fsub fast float %1335, %1338
  %1369 = fmul fast float %1366, 7.500000e-01
  %1370 = fmul fast float %1367, 7.500000e-01
  %1371 = fmul fast float %1368, 7.500000e-01
  %1372 = fadd fast float %1336, 1.250000e-01
  %1373 = fadd fast float %1372, %1369
  %1374 = fadd fast float %1373, %1363
  %1375 = fadd fast float %1337, 1.250000e-01
  %1376 = fadd fast float %1375, %1370
  %1377 = fadd fast float %1376, %1364
  %1378 = fadd fast float %1338, 1.250000e-01
  %1379 = fadd fast float %1378, %1371
  %1380 = fadd fast float %1379, %1365
  %1381 = fmul fast float %1374, %1324
  %1382 = fmul fast float %1377, %1325
  %1383 = fmul fast float %1380, %1326
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = add i32 %1385, 0
  %1387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1387, %dx.types.Handle %53, float %1381, float %1382, float %1383, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  br label %1390

; <label>:1390                                    ; preds = %1311, %1300
  %1391 = phi float [ %1389, %1311 ], [ -1.000000e+00, %1300 ]
  %1392 = fadd fast float %1391, %1298
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  br label %1394

; <label>:1394                                    ; preds = %1390, %1288
  %1395 = phi float [ %1393, %1390 ], [ %1298, %1288 ]
  %1396 = fmul fast float %1395, %500
  br label %1397

; <label>:1397                                    ; preds = %1394, %1283
  %1398 = phi float [ %1396, %1394 ], [ %500, %1283 ]
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = and i32 %1400, 256
  %1402 = icmp eq i32 %1401, 0
  br i1 %1402, label %1449, label %1403

; <label>:1403                                    ; preds = %1397
  %1404 = add i32 %60, 492
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = add i32 %1406, 0
  %1408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1409 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1408, %dx.types.Handle %101, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = add i32 %60, 116
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = shl i32 %1413, 4
  %1415 = and i32 %1414, 32752
  %1416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1415)  ; LegacyF16ToF32(value)
  %1417 = lshr i32 %1413, 7
  %1418 = and i32 %1417, 32752
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = fsub fast float 1.000000e+00, %1398
  %1421 = call float @dx.op.binary.f32(i32 35, float %1420, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1422 = bitcast float %1398 to i32
  %1423 = sitofp i32 %1422 to float
  %1424 = fadd fast float %1423, 0xC1CFBF8940000000
  %1425 = fmul fast float %1419, %1424
  %1426 = fadd fast float %1425, 0x41CFBF8940000000
  %1427 = fptosi float %1426 to i32
  %1428 = bitcast i32 %1427 to float
  %1429 = bitcast float %1421 to i32
  %1430 = sitofp i32 %1429 to float
  %1431 = fadd fast float %1430, 0xC1CFBF8940000000
  %1432 = fmul fast float %1431, %1419
  %1433 = fadd fast float %1432, 0x41CFBF8940000000
  %1434 = fptosi float %1433 to i32
  %1435 = bitcast i32 %1434 to float
  %1436 = fmul fast float %1428, %1416
  %1437 = fmul fast float %1435, %1416
  %1438 = fsub fast float %1421, %1436
  %1439 = fadd fast float %1437, %1421
  %1440 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1441 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1442 = fsub fast float %1410, %1440
  %1443 = fsub fast float %1441, %1440
  %1444 = bitcast float %1443 to i32
  %1445 = sub nsw i32 2129859010, %1444
  %1446 = bitcast i32 %1445 to float
  %1447 = fmul fast float %1446, %1442
  %1448 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  br label %1449

; <label>:1449                                    ; preds = %1403, %1397
  %1450 = phi float [ %1448, %1403 ], [ %1398, %1397 ]
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = and i32 %1452, 128
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1471, label %1455

; <label>:1455                                    ; preds = %1449
  %1456 = add i32 %60, 476
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = add i32 %1458, 0
  %1460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1460, %dx.types.Handle %101, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1462 = extractvalue %dx.types.ResRet.f32 %1461, 0
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 524288
  %1466 = icmp ne i32 %1465, 0
  %1467 = fcmp fast ogt float %1462, 0x3FE0101020000000
  %1468 = select i1 %1467, float 1.000000e+00, float 0.000000e+00
  %1469 = select i1 %1466, float %1468, float %1462
  %1470 = fmul fast float %1469, %1450
  br label %1471

; <label>:1471                                    ; preds = %1455, %1449
  %1472 = phi float [ %1470, %1455 ], [ %1450, %1449 ]
  %1473 = fcmp fast ult float %1472, 0x3F70101020000000
  br i1 %1473, label %2016, label %1474

; <label>:1474                                    ; preds = %1471
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 16
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1677, label %1479

; <label>:1479                                    ; preds = %1474
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = add i32 %60, 428
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = add i32 %1484, 0
  %1486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1487 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1486, %dx.types.Handle %100, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1488 = extractvalue %dx.types.ResRet.f32 %1487, 0
  %1489 = extractvalue %dx.types.ResRet.f32 %1487, 1
  %1490 = extractvalue %dx.types.ResRet.f32 %1487, 2
  %1491 = extractvalue %dx.types.ResRet.f32 %1487, 3
  %1492 = and i32 %1481, 255
  %1493 = uitofp i32 %1492 to float
  %1494 = lshr i32 %1481, 8
  %1495 = and i32 %1494, 255
  %1496 = uitofp i32 %1495 to float
  %1497 = fmul fast float %1491, %1493
  %1498 = fadd fast float %1497, %1496
  %1499 = fmul fast float %1498, 0x3F70101000000000
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = and i32 %1501, 512
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1512, label %1504

; <label>:1504                                    ; preds = %1479
  %1505 = add i32 %60, 512
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = add i32 %1507, 0
  %1509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1510 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1509, %dx.types.Handle %101, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1511 = extractvalue %dx.types.ResRet.f32 %1510, 0
  br label %1512

; <label>:1512                                    ; preds = %1504, %1479
  %1513 = phi float [ %1511, %1504 ], [ 1.000000e+00, %1479 ]
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 33554432
  %1517 = icmp eq i32 %1516, 0
  br i1 %1517, label %1624, label %1518

; <label>:1518                                    ; preds = %1512
  %1519 = add i32 %60, 240
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1519, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = and i32 %1521, 65535
  %1523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1522)  ; LegacyF16ToF32(value)
  %1524 = lshr i32 %1521, 16
  %1525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1524)  ; LegacyF16ToF32(value)
  %1526 = add i32 %60, 244
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = and i32 %1528, 65535
  %1530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1529)  ; LegacyF16ToF32(value)
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = lshr i32 %1532, 24
  %1534 = uitofp i32 %1533 to float
  %1535 = fmul fast float %1534, 0x3F70101020000000
  %1536 = and i32 %1532, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = fmul fast float %1537, 0x3F70101020000000
  %1539 = lshr i32 %1532, 8
  %1540 = and i32 %1539, 255
  %1541 = uitofp i32 %1540 to float
  %1542 = fmul fast float %1541, 0x3F70101020000000
  %1543 = lshr i32 %1532, 16
  %1544 = and i32 %1543, 255
  %1545 = uitofp i32 %1544 to float
  %1546 = fmul fast float %1545, 0x3F70101020000000
  %1547 = add i32 %60, 236
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1547, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = lshr i32 %1549, 24
  %1551 = uitofp i32 %1550 to float
  %1552 = fmul fast float %1551, 0x3F70101020000000
  %1553 = and i32 %1549, 255
  %1554 = uitofp i32 %1553 to float
  %1555 = fmul fast float %1554, 0x3F70101020000000
  %1556 = lshr i32 %1549, 8
  %1557 = and i32 %1556, 255
  %1558 = uitofp i32 %1557 to float
  %1559 = fmul fast float %1558, 0x3F70101020000000
  %1560 = lshr i32 %1549, 16
  %1561 = and i32 %1560, 255
  %1562 = uitofp i32 %1561 to float
  %1563 = fmul fast float %1562, 0x3F70101020000000
  %1564 = bitcast float %1488 to i32
  %1565 = ashr i32 %1564, 1
  %1566 = sub nsw i32 1597463174, %1565
  %1567 = bitcast i32 %1566 to float
  %1568 = fmul fast float %1488, 5.000000e-01
  %1569 = fmul fast float %1567, %1567
  %1570 = fmul fast float %1569, %1568
  %1571 = fsub fast float 1.500000e+00, %1570
  %1572 = fmul fast float %1567, %1488
  %1573 = fmul fast float %1572, %1571
  %1574 = bitcast float %1489 to i32
  %1575 = ashr i32 %1574, 1
  %1576 = sub nsw i32 1597463174, %1575
  %1577 = bitcast i32 %1576 to float
  %1578 = fmul fast float %1489, 5.000000e-01
  %1579 = fmul fast float %1577, %1577
  %1580 = fmul fast float %1579, %1578
  %1581 = fsub fast float 1.500000e+00, %1580
  %1582 = fmul fast float %1577, %1489
  %1583 = fmul fast float %1582, %1581
  %1584 = bitcast float %1490 to i32
  %1585 = ashr i32 %1584, 1
  %1586 = sub nsw i32 1597463174, %1585
  %1587 = bitcast i32 %1586 to float
  %1588 = fmul fast float %1490, 5.000000e-01
  %1589 = fmul fast float %1587, %1587
  %1590 = fmul fast float %1589, %1588
  %1591 = fsub fast float 1.500000e+00, %1590
  %1592 = fmul fast float %1587, %1490
  %1593 = fmul fast float %1592, %1591
  %1594 = fsub fast float %1573, %1555
  %1595 = fsub fast float %1583, %1559
  %1596 = fsub fast float %1593, %1563
  %1597 = fmul fast float %1594, %1523
  %1598 = fmul fast float %1595, %1525
  %1599 = fmul fast float %1596, %1530
  %1600 = fadd fast float %1597, %1538
  %1601 = fadd fast float %1598, %1542
  %1602 = fadd fast float %1599, %1546
  %1603 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  %1604 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1605 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  %1606 = fmul fast float %1603, %1603
  %1607 = fmul fast float %1604, %1604
  %1608 = fmul fast float %1605, %1605
  %1609 = fsub fast float %1606, %1488
  %1610 = fsub fast float %1607, %1489
  %1611 = fsub fast float %1608, %1490
  %1612 = fmul fast float %1609, %1513
  %1613 = fmul fast float %1610, %1513
  %1614 = fmul fast float %1611, %1513
  %1615 = fadd fast float %1612, %1488
  %1616 = fadd fast float %1613, %1489
  %1617 = fadd fast float %1614, %1490
  %1618 = fadd fast float %1535, %1499
  %1619 = fsub fast float %1618, %1552
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1621 = fsub fast float %1620, %1499
  %1622 = fmul fast float %1621, %1513
  %1623 = fadd fast float %1622, %1499
  br label %1677

; <label>:1624                                    ; preds = %1512
  %1625 = and i32 %1515, 134217728
  %1626 = icmp eq i32 %1625, 0
  br i1 %1626, label %1661, label %1627

; <label>:1627                                    ; preds = %1624
  %1628 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %1629 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %1630 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %1631 = fadd fast float %1628, -5.000000e-01
  %1632 = fadd fast float %1629, -5.000000e-01
  %1633 = fadd fast float %1630, -5.000000e-01
  %1634 = fmul fast float %1631, %1513
  %1635 = fmul fast float %1632, %1513
  %1636 = fmul fast float %1633, %1513
  %1637 = fadd fast float %1634, 5.000000e-01
  %1638 = fadd fast float %1635, 5.000000e-01
  %1639 = fadd fast float %1636, 5.000000e-01
  %1640 = call float @dx.op.unary.f32(i32 24, float %1488)  ; Sqrt(value)
  %1641 = call float @dx.op.unary.f32(i32 24, float %1489)  ; Sqrt(value)
  %1642 = call float @dx.op.unary.f32(i32 24, float %1490)  ; Sqrt(value)
  %1643 = fmul fast float %1637, 2.000000e+00
  %1644 = fsub fast float 1.000000e+00, %1643
  %1645 = fmul fast float %1644, %1640
  %1646 = fadd fast float %1645, %1643
  %1647 = fmul fast float %1646, %1640
  %1648 = fmul fast float %1638, 2.000000e+00
  %1649 = fsub fast float 1.000000e+00, %1648
  %1650 = fmul fast float %1649, %1641
  %1651 = fadd fast float %1650, %1648
  %1652 = fmul fast float %1651, %1641
  %1653 = fmul fast float %1639, 2.000000e+00
  %1654 = fsub fast float 1.000000e+00, %1653
  %1655 = fmul fast float %1654, %1642
  %1656 = fadd fast float %1655, %1653
  %1657 = fmul fast float %1656, %1642
  %1658 = fmul fast float %1647, %1647
  %1659 = fmul fast float %1652, %1652
  %1660 = fmul fast float %1657, %1657
  br label %1677

; <label>:1661                                    ; preds = %1624
  %1662 = fmul fast float %332, %332
  %1663 = fmul fast float %336, %336
  %1664 = fmul fast float %340, %340
  %1665 = fadd fast float %1662, -1.000000e+00
  %1666 = fadd fast float %1663, -1.000000e+00
  %1667 = fadd fast float %1664, -1.000000e+00
  %1668 = fmul fast float %1513, %1665
  %1669 = fmul fast float %1513, %1666
  %1670 = fmul fast float %1513, %1667
  %1671 = fadd fast float %1668, 1.000000e+00
  %1672 = fadd fast float %1669, 1.000000e+00
  %1673 = fadd fast float %1670, 1.000000e+00
  %1674 = fmul fast float %1671, %1488
  %1675 = fmul fast float %1672, %1489
  %1676 = fmul fast float %1673, %1490
  br label %1677

; <label>:1677                                    ; preds = %1661, %1627, %1518, %1474
  %1678 = phi float [ %1623, %1518 ], [ %1499, %1627 ], [ %1499, %1661 ], [ 0x3FA23C0BE0000000, %1474 ]
  %1679 = phi float [ %1615, %1518 ], [ %1658, %1627 ], [ %1674, %1661 ], [ 1.000000e+00, %1474 ]
  %1680 = phi float [ %1616, %1518 ], [ %1659, %1627 ], [ %1675, %1661 ], [ 1.000000e+00, %1474 ]
  %1681 = phi float [ %1617, %1518 ], [ %1660, %1627 ], [ %1676, %1661 ], [ 1.000000e+00, %1474 ]
  %1682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.i32 %1682, 1
  %1684 = and i32 %1683, 1
  %1685 = icmp ne i32 %1684, 0
  %1686 = add i32 %60, 356
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = and i32 %1688, 32
  %1690 = icmp ne i32 %1689, 0
  %1691 = and i1 %1685, %1690
  %1692 = select i1 %1691, float 1.000000e+00, float %1679
  %1693 = select i1 %1691, float 0x3FD3333340000000, float %1680
  %1694 = select i1 %1691, float 0x3FD3333340000000, float %1681
  %1695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.i32 %1695, 0
  %1697 = and i32 %1696, 32
  %1698 = icmp eq i32 %1697, 0
  br i1 %1698, label %1771, label %1699

; <label>:1699                                    ; preds = %1677
  %1700 = add i32 %60, 108
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = add i32 %60, 444
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = add i32 %1705, 0
  %1707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1707, %dx.types.Handle %100, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.f32 %1708, 1
  %1711 = extractvalue %dx.types.ResRet.f32 %1708, 2
  %1712 = extractvalue %dx.types.ResRet.f32 %1708, 3
  %1713 = and i32 %1702, 255
  %1714 = uitofp i32 %1713 to float
  %1715 = lshr i32 %1702, 8
  %1716 = and i32 %1715, 255
  %1717 = uitofp i32 %1716 to float
  %1718 = lshr i32 %1702, 16
  %1719 = and i32 %1718, 255
  %1720 = uitofp i32 %1719 to float
  %1721 = fmul fast float %1720, 0x3F70101000000000
  %1722 = fmul fast float %1709, %1714
  %1723 = fadd fast float %1722, %1717
  %1724 = fmul fast float %1723, 0x3F70101000000000
  %1725 = fadd fast float %1710, -5.000000e-01
  %1726 = fadd fast float %1712, -5.000000e-01
  %1727 = fmul fast float %1725, %1721
  %1728 = fmul fast float %1726, %1721
  %1729 = fadd fast float %1727, 5.000000e-01
  %1730 = fadd fast float %1728, 5.000000e-01
  %1731 = fmul fast float %1729, 2.000000e+00
  %1732 = fadd fast float %1731, -1.000000e+00
  %1733 = fmul fast float %1730, 2.000000e+00
  %1734 = fadd fast float %1733, -1.000000e+00
  %1735 = fadd fast float %1732, %1734
  %1736 = fmul fast float %1735, 5.000000e-01
  %1737 = fsub fast float %1732, %1734
  %1738 = fmul fast float %1737, 5.000000e-01
  %1739 = call float @dx.op.unary.f32(i32 6, float %1736)  ; FAbs(value)
  %1740 = fsub fast float 1.000000e+00, %1739
  %1741 = call float @dx.op.unary.f32(i32 6, float %1738)  ; FAbs(value)
  %1742 = fsub fast float %1740, %1741
  %1743 = call float @dx.op.dot3.f32(i32 55, float %1736, float %1738, float %1742, float %1736, float %1738, float %1742)  ; Dot3(ax,ay,az,bx,by,bz)
  %1744 = call float @dx.op.unary.f32(i32 25, float %1743)  ; Rsqrt(value)
  %1745 = fmul fast float %1736, %1744
  %1746 = fmul fast float %1738, %1744
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = and i32 %1748, 67108864
  %1750 = icmp eq i32 %1749, 0
  br i1 %1750, label %1767, label %1751

; <label>:1751                                    ; preds = %1699
  %1752 = add i32 %60, 296
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = and i32 %1754, 65535
  %1756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1755)  ; LegacyF16ToF32(value)
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = and i32 %1758, 65535
  %1760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1759)  ; LegacyF16ToF32(value)
  %1761 = lshr i32 %1754, 16
  %1762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1761)  ; LegacyF16ToF32(value)
  %1763 = fsub fast float %1724, %1762
  %1764 = fmul fast float %1763, %1756
  %1765 = fadd fast float %1764, %1760
  %1766 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  br label %1767

; <label>:1767                                    ; preds = %1751, %1699
  %1768 = phi float [ %1766, %1751 ], [ %1724, %1699 ]
  %1769 = call float @dx.op.dot2.f32(i32 54, float %1745, float %1746, float %1188, float %1189)  ; Dot2(ax,ay,bx,by)
  %1770 = call float @dx.op.dot2.f32(i32 54, float %1745, float %1746, float %1190, float %1191)  ; Dot2(ax,ay,bx,by)
  br label %1771

; <label>:1771                                    ; preds = %1767, %1677
  %1772 = phi float [ %1768, %1767 ], [ 0x3FD6666660000000, %1677 ]
  %1773 = phi float [ %1769, %1767 ], [ 0.000000e+00, %1677 ]
  %1774 = phi float [ %1770, %1767 ], [ 0.000000e+00, %1677 ]
  %1775 = phi float [ %1711, %1767 ], [ 1.000000e+00, %1677 ]
  %1776 = add i32 %60, 176
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = lshr i32 %1778, 22
  %1780 = shl nuw nsw i32 %1779, 5
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = and i32 %1783, 64
  %1785 = icmp eq i32 %1784, 0
  br i1 %1785, label %1819, label %1786

; <label>:1786                                    ; preds = %1771
  %1787 = add i32 %60, 460
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = add i32 %1789, 0
  %1791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 131072
  %1795 = icmp eq i32 %1794, 0
  %1796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1791, %dx.types.Handle %100, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.ResRet.f32 %1796, 1
  %1799 = extractvalue %dx.types.ResRet.f32 %1796, 2
  %1800 = fmul fast float %1797, %320
  %1801 = fmul fast float %1798, %323
  %1802 = fmul fast float %1799, %326
  br i1 %1795, label %1809, label %1803

; <label>:1803                                    ; preds = %1786
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 0
  %1806 = fmul fast float %1805, %1800
  %1807 = fmul fast float %1805, %1801
  %1808 = fmul fast float %1805, %1802
  br label %1809

; <label>:1809                                    ; preds = %1803, %1786
  %1810 = phi float [ %1806, %1803 ], [ %1800, %1786 ]
  %1811 = phi float [ %1807, %1803 ], [ %1801, %1786 ]
  %1812 = phi float [ %1808, %1803 ], [ %1802, %1786 ]
  %1813 = fmul fast float %1810, %1781
  %1814 = select i1 %261, float %1813, float %1810
  %1815 = call float @dx.op.dot3.f32(i32 55, float %1814, float %1811, float %1812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = select i1 %261, float 0.000000e+00, float %1810
  %1817 = select i1 %261, float %1815, float %1811
  %1818 = select i1 %261, float 0.000000e+00, float %1812
  br label %1819

; <label>:1819                                    ; preds = %1809, %1771
  %1820 = phi float [ %1816, %1809 ], [ 0.000000e+00, %1771 ]
  %1821 = phi float [ %1817, %1809 ], [ 0.000000e+00, %1771 ]
  %1822 = phi float [ %1818, %1809 ], [ 0.000000e+00, %1771 ]
  %1823 = add i32 %60, 112
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = and i32 %1825, 255
  %1827 = uitofp i32 %1826 to float
  %1828 = lshr i32 %1825, 8
  %1829 = and i32 %1828, 255
  %1830 = uitofp i32 %1829 to float
  %1831 = call float @dx.op.dot3.f32(i32 55, float %1692, float %1693, float %1694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1832 = fmul fast float %1830, %1831
  %1833 = fadd fast float %1832, %1827
  %1834 = fmul fast float %1833, 0x3F70101020000000
  %1835 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  br i1 %1176, label %1836, label %1844

; <label>:1836                                    ; preds = %1819
  %1837 = fsub fast float 1.000000e+00, %1472
  %1838 = fmul fast float %1837, %1164
  %1839 = fmul fast float %1837, %1165
  %1840 = fmul fast float %1837, %1166
  %1841 = fmul fast float %1837, %1167
  %1842 = fmul fast float %1837, %1168
  %1843 = fmul fast float %1837, %1169
  br label %1844

; <label>:1844                                    ; preds = %1836, %1819
  %1845 = phi float [ %1838, %1836 ], [ %1164, %1819 ]
  %1846 = phi float [ %1839, %1836 ], [ %1165, %1819 ]
  %1847 = phi float [ %1840, %1836 ], [ %1166, %1819 ]
  %1848 = phi float [ %1841, %1836 ], [ %1167, %1819 ]
  %1849 = phi float [ %1842, %1836 ], [ %1168, %1819 ]
  %1850 = phi float [ %1843, %1836 ], [ %1169, %1819 ]
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = and i32 %1852, 3
  %1854 = icmp eq i32 %1853, 3
  br i1 %1854, label %1933, label %1855

; <label>:1855                                    ; preds = %1844
  %1856 = and i32 %1852, 16
  %1857 = icmp ne i32 %1856, 0
  %1858 = select i1 %1857, float %1472, float 0.000000e+00
  %1859 = icmp eq i32 %1853, 0
  br i1 %1859, label %1860, label %1888

; <label>:1860                                    ; preds = %1855
  %1861 = and i32 %1852, 64
  %1862 = icmp ne i32 %1861, 0
  %1863 = select i1 %1862, float %1472, float 0.000000e+00
  %1864 = fsub fast float %1692, %1845
  %1865 = fsub fast float %1693, %1846
  %1866 = fsub fast float %1694, %1847
  %1867 = fmul fast float %1858, %1864
  %1868 = fmul fast float %1858, %1865
  %1869 = fmul fast float %1858, %1866
  %1870 = fadd fast float %1867, %1845
  %1871 = fadd fast float %1868, %1846
  %1872 = fadd fast float %1869, %1847
  %1873 = fsub fast float %1678, %1170
  %1874 = fmul fast float %1858, %1873
  %1875 = fadd fast float %1874, %1170
  %1876 = fsub fast float %1820, %1848
  %1877 = fsub fast float %1821, %1849
  %1878 = fsub fast float %1822, %1850
  %1879 = fmul fast float %1863, %1876
  %1880 = fmul fast float %1863, %1877
  %1881 = fmul fast float %1863, %1878
  %1882 = fadd fast float %1879, %1848
  %1883 = fadd fast float %1880, %1849
  %1884 = fadd fast float %1881, %1850
  %1885 = fsub fast float %1835, %1174
  %1886 = fmul fast float %1858, %1885
  %1887 = fadd fast float %1886, %1174
  br label %1933

; <label>:1888                                    ; preds = %1855
  %1889 = icmp eq i32 %1853, 1
  br i1 %1889, label %1890, label %1903

; <label>:1890                                    ; preds = %1888
  %1891 = fadd fast float %1692, -1.000000e+00
  %1892 = fadd fast float %1693, -1.000000e+00
  %1893 = fadd fast float %1694, -1.000000e+00
  %1894 = fmul fast float %1858, %1891
  %1895 = fmul fast float %1858, %1892
  %1896 = fmul fast float %1858, %1893
  %1897 = fadd fast float %1894, 1.000000e+00
  %1898 = fadd fast float %1895, 1.000000e+00
  %1899 = fadd fast float %1896, 1.000000e+00
  %1900 = fmul fast float %1897, %1845
  %1901 = fmul fast float %1898, %1846
  %1902 = fmul fast float %1899, %1847
  br label %1933

; <label>:1903                                    ; preds = %1888
  %1904 = icmp eq i32 %1853, 2
  br i1 %1904, label %1905, label %1933

; <label>:1905                                    ; preds = %1903
  %1906 = call float @dx.op.unary.f32(i32 24, float %1692)  ; Sqrt(value)
  %1907 = call float @dx.op.unary.f32(i32 24, float %1693)  ; Sqrt(value)
  %1908 = call float @dx.op.unary.f32(i32 24, float %1694)  ; Sqrt(value)
  %1909 = fadd fast float %1906, -5.000000e-01
  %1910 = fadd fast float %1907, -5.000000e-01
  %1911 = fadd fast float %1908, -5.000000e-01
  %1912 = fmul fast float %1909, %1858
  %1913 = fmul fast float %1910, %1858
  %1914 = fmul fast float %1911, %1858
  %1915 = fadd fast float %1912, 5.000000e-01
  %1916 = fadd fast float %1913, 5.000000e-01
  %1917 = fadd fast float %1914, 5.000000e-01
  %1918 = fmul fast float %1915, 2.000000e+00
  %1919 = fsub fast float 1.000000e+00, %1918
  %1920 = fmul fast float %1919, %1845
  %1921 = fadd fast float %1920, %1918
  %1922 = fmul fast float %1921, %1845
  %1923 = fmul fast float %1916, 2.000000e+00
  %1924 = fsub fast float 1.000000e+00, %1923
  %1925 = fmul fast float %1924, %1846
  %1926 = fadd fast float %1925, %1923
  %1927 = fmul fast float %1926, %1846
  %1928 = fmul fast float %1917, 2.000000e+00
  %1929 = fsub fast float 1.000000e+00, %1928
  %1930 = fmul fast float %1929, %1847
  %1931 = fadd fast float %1930, %1928
  %1932 = fmul fast float %1931, %1847
  br label %1933

; <label>:1933                                    ; preds = %1905, %1903, %1890, %1860, %1844
  %1934 = phi float [ %1845, %1844 ], [ %1922, %1905 ], [ %1845, %1903 ], [ %1900, %1890 ], [ %1870, %1860 ]
  %1935 = phi float [ %1846, %1844 ], [ %1927, %1905 ], [ %1846, %1903 ], [ %1901, %1890 ], [ %1871, %1860 ]
  %1936 = phi float [ %1847, %1844 ], [ %1932, %1905 ], [ %1847, %1903 ], [ %1902, %1890 ], [ %1872, %1860 ]
  %1937 = phi float [ %1848, %1844 ], [ %1848, %1905 ], [ %1848, %1903 ], [ %1848, %1890 ], [ %1882, %1860 ]
  %1938 = phi float [ %1849, %1844 ], [ %1849, %1905 ], [ %1849, %1903 ], [ %1849, %1890 ], [ %1883, %1860 ]
  %1939 = phi float [ %1850, %1844 ], [ %1850, %1905 ], [ %1850, %1903 ], [ %1850, %1890 ], [ %1884, %1860 ]
  %1940 = phi float [ %1170, %1844 ], [ %1170, %1905 ], [ %1170, %1903 ], [ %1170, %1890 ], [ %1875, %1860 ]
  %1941 = phi float [ %1174, %1844 ], [ %1174, %1905 ], [ %1174, %1903 ], [ %1174, %1890 ], [ %1887, %1860 ]
  %1942 = and i32 %1852, 12
  %1943 = icmp eq i32 %1942, 12
  br i1 %1943, label %2016, label %1944

; <label>:1944                                    ; preds = %1933
  %1945 = and i32 %1852, 2097184
  %1946 = icmp eq i32 %1945, 2097184
  %1947 = select i1 %1946, float %1472, float 0.000000e+00
  %1948 = and i32 %1852, 4194336
  %1949 = icmp eq i32 %1948, 4194336
  %1950 = select i1 %1949, float %1472, float 0.000000e+00
  %1951 = and i32 %1852, 8388640
  %1952 = icmp eq i32 %1951, 8388640
  %1953 = select i1 %1952, float %1472, float 0.000000e+00
  %1954 = icmp eq i32 %1942, 0
  br i1 %1954, label %1955, label %1968

; <label>:1955                                    ; preds = %1944
  %1956 = fsub fast float %1773, %1162
  %1957 = fsub fast float %1774, %1163
  %1958 = fmul fast float %1947, %1956
  %1959 = fmul fast float %1947, %1957
  %1960 = fadd fast float %1958, %1162
  %1961 = fadd fast float %1959, %1163
  %1962 = fsub fast float %1775, %1173
  %1963 = fmul fast float %1950, %1962
  %1964 = fadd fast float %1963, %1173
  %1965 = fsub fast float %1772, %1172
  %1966 = fmul fast float %1953, %1965
  %1967 = fadd fast float %1966, %1172
  br label %2016

; <label>:1968                                    ; preds = %1944
  %1969 = icmp eq i32 %1942, 4
  br i1 %1969, label %1970, label %2002

; <label>:1970                                    ; preds = %1968
  %1971 = fmul fast float %1947, %1773
  %1972 = fmul fast float %1947, %1774
  %1973 = fadd fast float %1971, %1162
  %1974 = fadd fast float %1972, %1163
  %1975 = call float @dx.op.binary.f32(i32 36, float %1173, float %1775)  ; FMin(a,b)
  %1976 = fsub fast float %1975, %1173
  %1977 = fmul fast float %1976, %1950
  %1978 = fadd fast float %1977, %1173
  %1979 = fadd fast float %1772, %1172
  %1980 = fmul fast float %1979, 0x3FF337FAE0000000
  %1981 = fmul fast float %1172, %1172
  %1982 = fmul fast float %1772, %1772
  %1983 = fadd fast float %1982, %1981
  %1984 = fmul fast float %1983, 0x3FE5152B00000000
  %1985 = fmul fast float %1172, 0xBFCC1F85E0000000
  %1986 = fmul fast float %1985, %1772
  %1987 = fadd fast float %1986, 0xBFE1363700000000
  %1988 = fadd fast float %1987, %1980
  %1989 = fsub fast float %1988, %1984
  %1990 = fmul fast float %1979, 0x3FBA6F0D00000000
  %1991 = fmul fast float %1983, 0x3FD0432880000000
  %1992 = fmul fast float %1172, 0xBFEF110800000000
  %1993 = fmul fast float %1992, %1772
  %1994 = fadd fast float %1993, 1.000000e+00
  %1995 = fsub fast float %1994, %1990
  %1996 = fadd fast float %1995, %1991
  %1997 = fdiv fast float %1989, %1996
  %1998 = call float @dx.op.unary.f32(i32 7, float %1997)  ; Saturate(value)
  %1999 = fsub fast float %1998, %1172
  %2000 = fmul fast float %1999, %1953
  %2001 = fadd fast float %2000, %1172
  br label %2016

; <label>:2002                                    ; preds = %1968
  %2003 = icmp eq i32 %1942, 8
  br i1 %2003, label %2004, label %2016

; <label>:2004                                    ; preds = %2002
  %2005 = fmul fast float %1947, %1773
  %2006 = fmul fast float %1947, %1774
  %2007 = fadd fast float %2005, %1162
  %2008 = fadd fast float %2006, %1163
  %2009 = call float @dx.op.binary.f32(i32 36, float %1173, float %1775)  ; FMin(a,b)
  %2010 = fsub fast float %2009, %1173
  %2011 = fmul fast float %2010, %1950
  %2012 = fadd fast float %2011, %1173
  %2013 = fsub fast float %1772, %1172
  %2014 = fmul fast float %1953, %2013
  %2015 = fadd fast float %2014, %1172
  br label %2016

; <label>:2016                                    ; preds = %2004, %2002, %1970, %1955, %1933, %1471, %1175, %1161
  %2017 = phi float [ %1162, %1933 ], [ %1162, %1471 ], [ %1162, %1161 ], [ %2007, %2004 ], [ %1162, %2002 ], [ %1973, %1970 ], [ %1960, %1955 ], [ %1162, %1175 ]
  %2018 = phi float [ %1163, %1933 ], [ %1163, %1471 ], [ %1163, %1161 ], [ %2008, %2004 ], [ %1163, %2002 ], [ %1974, %1970 ], [ %1961, %1955 ], [ %1163, %1175 ]
  %2019 = phi float [ %1934, %1933 ], [ %1164, %1471 ], [ %1164, %1161 ], [ %1934, %2004 ], [ %1934, %2002 ], [ %1934, %1970 ], [ %1934, %1955 ], [ %1164, %1175 ]
  %2020 = phi float [ %1935, %1933 ], [ %1165, %1471 ], [ %1165, %1161 ], [ %1935, %2004 ], [ %1935, %2002 ], [ %1935, %1970 ], [ %1935, %1955 ], [ %1165, %1175 ]
  %2021 = phi float [ %1936, %1933 ], [ %1166, %1471 ], [ %1166, %1161 ], [ %1936, %2004 ], [ %1936, %2002 ], [ %1936, %1970 ], [ %1936, %1955 ], [ %1166, %1175 ]
  %2022 = phi float [ %1937, %1933 ], [ %1167, %1471 ], [ %1167, %1161 ], [ %1937, %2004 ], [ %1937, %2002 ], [ %1937, %1970 ], [ %1937, %1955 ], [ %1167, %1175 ]
  %2023 = phi float [ %1938, %1933 ], [ %1168, %1471 ], [ %1168, %1161 ], [ %1938, %2004 ], [ %1938, %2002 ], [ %1938, %1970 ], [ %1938, %1955 ], [ %1168, %1175 ]
  %2024 = phi float [ %1939, %1933 ], [ %1169, %1471 ], [ %1169, %1161 ], [ %1939, %2004 ], [ %1939, %2002 ], [ %1939, %1970 ], [ %1939, %1955 ], [ %1169, %1175 ]
  %2025 = phi float [ %1940, %1933 ], [ %1170, %1471 ], [ %1170, %1161 ], [ %1940, %2004 ], [ %1940, %2002 ], [ %1940, %1970 ], [ %1940, %1955 ], [ %1170, %1175 ]
  %2026 = phi float [ %1172, %1933 ], [ %1172, %1471 ], [ %1172, %1161 ], [ %2015, %2004 ], [ %1172, %2002 ], [ %2001, %1970 ], [ %1967, %1955 ], [ %1172, %1175 ]
  %2027 = phi float [ %1173, %1933 ], [ %1173, %1471 ], [ %1173, %1161 ], [ %2012, %2004 ], [ %1173, %2002 ], [ %1978, %1970 ], [ %1964, %1955 ], [ %1173, %1175 ]
  %2028 = phi float [ %1941, %1933 ], [ %1174, %1471 ], [ %1174, %1161 ], [ %1941, %2004 ], [ %1941, %2002 ], [ %1941, %1970 ], [ %1941, %1955 ], [ %1174, %1175 ]
  br i1 %447, label %2870, label %2029

; <label>:2029                                    ; preds = %2016
  %2030 = icmp ult i32 %503, 3
  %2031 = add i32 %60, 56
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = add i32 %60, 60
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = or i32 %2036, %2033
  %2038 = icmp eq i32 %2037, 0
  br i1 %2038, label %2870, label %2039

; <label>:2039                                    ; preds = %2029
  %2040 = and i32 %2033, 262144
  %2041 = icmp ne i32 %2040, 0
  %2042 = select i1 %2041, float %63, float 1.000000e+00
  %2043 = select i1 %2041, float %64, float 0.000000e+00
  %2044 = select i1 %2041, float %65, float 0.000000e+00
  %2045 = select i1 %2041, float %66, float 1.000000e+00
  %2046 = select i1 %2041, float %67, float %83
  %2047 = select i1 %2041, float %68, float %84
  %2048 = add i32 %60, 316
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = lshr i32 %2050, 16
  %2052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2051)  ; LegacyF16ToF32(value)
  %2053 = fmul fast float %2052, 0x3F50624DE0000000
  %2054 = add i32 %60, 120
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = lshr i32 %2056, 16
  %2058 = and i32 %2057, 255
  %2059 = lshr i32 %2056, 24
  %2060 = add i32 %60, 324
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = and i32 %2062, 65535
  %2064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2063)  ; LegacyF16ToF32(value)
  %2065 = lshr i32 %2062, 16
  %2066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2065)  ; LegacyF16ToF32(value)
  %2067 = add i32 %60, 64
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = lshr i32 %2069, 22
  %2071 = shl nuw nsw i32 %2070, 5
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = shl i32 %2069, 4
  %2074 = and i32 %2073, 32752
  %2075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2074)  ; LegacyF16ToF32(value)
  %2076 = lshr i32 %2069, 7
  %2077 = and i32 %2076, 32752
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.f32 %2079, 3
  %2081 = fmul fast float %2080, 1.000000e+03
  %2082 = fmul fast float %397, %2081
  %2083 = call float @dx.op.unary.f32(i32 22, float %2082)  ; Frc(value)
  %2084 = fadd fast float %2083, %387
  %2085 = fmul fast float %398, %2081
  %2086 = call float @dx.op.unary.f32(i32 22, float %2085)  ; Frc(value)
  %2087 = fadd fast float %2086, %389
  %2088 = fmul fast float %2053, %2081
  %2089 = call float @dx.op.unary.f32(i32 22, float %2088)  ; Frc(value)
  %2090 = fmul fast float %2089, 0x401921FB60000000
  %2091 = fadd fast float %2090, %2072
  %2092 = call float @dx.op.unary.f32(i32 13, float %2091)  ; Sin(value)
  %2093 = call float @dx.op.unary.f32(i32 12, float %2091)  ; Cos(value)
  %2094 = fsub fast float -0.000000e+00, %2092
  %2095 = fadd fast float %2046, -5.000000e-01
  %2096 = fadd fast float %2047, -5.000000e-01
  %2097 = fmul fast float %2064, %2095
  %2098 = fmul fast float %2066, %2096
  %2099 = fadd fast float %2097, 5.000000e-01
  %2100 = fadd fast float %2098, 5.000000e-01
  %2101 = fmul fast float %2075, %2099
  %2102 = fmul fast float %2078, %2100
  %2103 = fmul fast float %2093, %2101
  %2104 = call float @dx.op.tertiary.f32(i32 46, float %2094, float %2102, float %2103)  ; FMad(a,b,c)
  %2105 = fmul fast float %2092, %2101
  %2106 = call float @dx.op.tertiary.f32(i32 46, float %2093, float %2102, float %2105)  ; FMad(a,b,c)
  %2107 = fadd fast float %2084, %2104
  %2108 = fadd fast float %2087, %2106
  %2109 = icmp ugt i32 %2058, 1
  %2110 = icmp ugt i32 %2056, 33554431
  %2111 = or i1 %2110, %2109
  br i1 %2111, label %2112, label %2137

; <label>:2112                                    ; preds = %2039
  %2113 = add i32 %60, 260
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = lshr i32 %2115, 16
  %2117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2116)  ; LegacyF16ToF32(value)
  %2118 = fmul fast float %2080, %2117
  %2119 = call float @dx.op.unary.f32(i32 22, float %2118)  ; Frc(value)
  %2120 = mul nuw nsw i32 %2058, %2059
  %2121 = uitofp i32 %2120 to float
  %2122 = fmul fast float %2119, %2121
  %2123 = call float @dx.op.unary.f32(i32 27, float %2122)  ; Round_ni(value)
  %2124 = fptoui float %2123 to i32
  %2125 = urem i32 %2124, %2058
  %2126 = udiv i32 %2124, %2059
  %2127 = call float @dx.op.unary.f32(i32 22, float %2107)  ; Frc(value)
  %2128 = call float @dx.op.unary.f32(i32 22, float %2108)  ; Frc(value)
  %2129 = uitofp i32 %2125 to float
  %2130 = uitofp i32 %2126 to float
  %2131 = fadd fast float %2127, %2129
  %2132 = fadd fast float %2128, %2130
  %2133 = uitofp i32 %2058 to float
  %2134 = uitofp i32 %2059 to float
  %2135 = fdiv fast float %2131, %2133
  %2136 = fdiv fast float %2132, %2134
  br label %2137

; <label>:2137                                    ; preds = %2112, %2039
  %2138 = phi float [ %2135, %2112 ], [ %2107, %2039 ]
  %2139 = phi float [ %2136, %2112 ], [ %2108, %2039 ]
  %2140 = and i32 %2033, 16777216
  %2141 = icmp eq i32 %2140, 0
  br i1 %2141, label %2251, label %2142

; <label>:2142                                    ; preds = %2137
  %2143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2144 = extractvalue %dx.types.CBufRet.f32 %2143, 0
  %2145 = extractvalue %dx.types.CBufRet.f32 %2143, 1
  %2146 = extractvalue %dx.types.CBufRet.f32 %2143, 2
  %2147 = fadd fast float %2144, %167
  %2148 = fadd fast float %2145, %168
  %2149 = fadd fast float %2146, %169
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 0
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2153 = icmp eq i32 %61, 65535
  br i1 %2153, label %2248, label %2154

; <label>:2154                                    ; preds = %2142
  %2155 = lshr i32 %61, 1
  %2156 = shl i32 %2155, 2
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %61, 1
  %2160 = icmp ne i32 %2159, 0
  %2161 = lshr i32 %2158, 16
  %2162 = and i32 %2158, 65535
  %2163 = select i1 %2160, i32 %2161, i32 %2162
  %2164 = icmp eq i32 %2163, 65535
  br i1 %2164, label %2244, label %2165

; <label>:2165                                    ; preds = %2154
  %2166 = mul nuw nsw i32 %2163, 40
  %2167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  %2169 = extractvalue %dx.types.ResRet.f32 %2167, 1
  %2170 = extractvalue %dx.types.ResRet.f32 %2167, 2
  %2171 = add nuw nsw i32 %2166, 12
  %2172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.f32 %2172, 0
  %2174 = extractvalue %dx.types.ResRet.f32 %2172, 1
  %2175 = extractvalue %dx.types.ResRet.f32 %2172, 2
  %2176 = add nuw nsw i32 %2166, 24
  %2177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.f32 %2177, 0
  %2179 = extractvalue %dx.types.ResRet.f32 %2177, 1
  %2180 = extractvalue %dx.types.ResRet.f32 %2177, 2
  %2181 = add nuw nsw i32 %2166, 36
  %2182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.f32 %2182, 0
  %2184 = fsub fast float %2147, %2168
  %2185 = fsub fast float %2148, %2169
  %2186 = fsub fast float %2149, %2170
  %2187 = fmul fast float %2183, %2184
  %2188 = fmul fast float %2183, %2185
  %2189 = fmul fast float %2183, %2186
  %2190 = call float @dx.op.unary.f32(i32 27, float %2187)  ; Round_ni(value)
  %2191 = call float @dx.op.unary.f32(i32 27, float %2188)  ; Round_ni(value)
  %2192 = call float @dx.op.unary.f32(i32 27, float %2189)  ; Round_ni(value)
  %2193 = fadd fast float %2190, 5.000000e-01
  %2194 = fadd fast float %2191, 5.000000e-01
  %2195 = fadd fast float %2192, 5.000000e-01
  %2196 = fmul fast float %2193, %2173
  %2197 = fmul fast float %2194, %2174
  %2198 = fmul fast float %2195, %2175
  %2199 = shl i32 %61, 2
  %2200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.i32 %2200, 0
  %2202 = add i32 %2201, 0
  %2203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2204 = call float @dx.op.unary.f32(i32 22, float %2196)  ; Frc(value)
  %2205 = call float @dx.op.unary.f32(i32 22, float %2197)  ; Frc(value)
  %2206 = call float @dx.op.unary.f32(i32 22, float %2198)  ; Frc(value)
  %2207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2203, %dx.types.Handle %55, float %2204, float %2205, float %2206, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2208 = extractvalue %dx.types.ResRet.f32 %2207, 0
  %2209 = extractvalue %dx.types.ResRet.f32 %2207, 1
  %2210 = extractvalue %dx.types.ResRet.f32 %2207, 2
  %2211 = fmul fast float %2208, 1.023000e+03
  %2212 = fmul fast float %2209, 1.023000e+03
  %2213 = fmul fast float %2210, 1.023000e+03
  %2214 = fadd fast float %2211, 5.000000e-01
  %2215 = fadd fast float %2212, 5.000000e-01
  %2216 = fadd fast float %2213, 5.000000e-01
  %2217 = call float @dx.op.unary.f32(i32 27, float %2214)  ; Round_ni(value)
  %2218 = call float @dx.op.unary.f32(i32 27, float %2215)  ; Round_ni(value)
  %2219 = call float @dx.op.unary.f32(i32 27, float %2216)  ; Round_ni(value)
  %2220 = fsub fast float %2187, %2190
  %2221 = fsub fast float %2188, %2191
  %2222 = fsub fast float %2189, %2192
  %2223 = fmul fast float %2220, 7.500000e-01
  %2224 = fmul fast float %2221, 7.500000e-01
  %2225 = fmul fast float %2222, 7.500000e-01
  %2226 = fadd fast float %2190, 1.250000e-01
  %2227 = fadd fast float %2226, %2223
  %2228 = fadd fast float %2227, %2217
  %2229 = fadd fast float %2191, 1.250000e-01
  %2230 = fadd fast float %2229, %2224
  %2231 = fadd fast float %2230, %2218
  %2232 = fadd fast float %2192, 1.250000e-01
  %2233 = fadd fast float %2232, %2225
  %2234 = fadd fast float %2233, %2219
  %2235 = fmul fast float %2228, %2178
  %2236 = fmul fast float %2231, %2179
  %2237 = fmul fast float %2234, %2180
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = add i32 %2239, 0
  %2241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2240, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2241, %dx.types.Handle %53, float %2235, float %2236, float %2237, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2243 = extractvalue %dx.types.ResRet.f32 %2242, 0
  br label %2244

; <label>:2244                                    ; preds = %2165, %2154
  %2245 = phi float [ %2243, %2165 ], [ -1.000000e+00, %2154 ]
  %2246 = fadd fast float %2245, %2152
  %2247 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  br label %2248

; <label>:2248                                    ; preds = %2244, %2142
  %2249 = phi float [ %2247, %2244 ], [ %2152, %2142 ]
  %2250 = fmul fast float %2249, %499
  br label %2251

; <label>:2251                                    ; preds = %2248, %2137
  %2252 = phi float [ %2250, %2248 ], [ %499, %2137 ]
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = and i32 %2254, 256
  %2256 = icmp eq i32 %2255, 0
  br i1 %2256, label %2303, label %2257

; <label>:2257                                    ; preds = %2251
  %2258 = add i32 %60, 496
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = add i32 %2260, 0
  %2262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2262, %dx.types.Handle %101, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  %2265 = add i32 %60, 132
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = shl i32 %2267, 4
  %2269 = and i32 %2268, 32752
  %2270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2269)  ; LegacyF16ToF32(value)
  %2271 = lshr i32 %2267, 7
  %2272 = and i32 %2271, 32752
  %2273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2272)  ; LegacyF16ToF32(value)
  %2274 = fsub fast float 1.000000e+00, %2252
  %2275 = call float @dx.op.binary.f32(i32 35, float %2274, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2276 = bitcast float %2252 to i32
  %2277 = sitofp i32 %2276 to float
  %2278 = fadd fast float %2277, 0xC1CFBF8940000000
  %2279 = fmul fast float %2273, %2278
  %2280 = fadd fast float %2279, 0x41CFBF8940000000
  %2281 = fptosi float %2280 to i32
  %2282 = bitcast i32 %2281 to float
  %2283 = bitcast float %2275 to i32
  %2284 = sitofp i32 %2283 to float
  %2285 = fadd fast float %2284, 0xC1CFBF8940000000
  %2286 = fmul fast float %2285, %2273
  %2287 = fadd fast float %2286, 0x41CFBF8940000000
  %2288 = fptosi float %2287 to i32
  %2289 = bitcast i32 %2288 to float
  %2290 = fmul fast float %2282, %2270
  %2291 = fmul fast float %2289, %2270
  %2292 = fsub fast float %2275, %2290
  %2293 = fadd fast float %2291, %2275
  %2294 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  %2295 = call float @dx.op.unary.f32(i32 7, float %2293)  ; Saturate(value)
  %2296 = fsub fast float %2264, %2294
  %2297 = fsub fast float %2295, %2294
  %2298 = bitcast float %2297 to i32
  %2299 = sub nsw i32 2129859010, %2298
  %2300 = bitcast i32 %2299 to float
  %2301 = fmul fast float %2300, %2296
  %2302 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  br label %2303

; <label>:2303                                    ; preds = %2257, %2251
  %2304 = phi float [ %2302, %2257 ], [ %2252, %2251 ]
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 128
  %2308 = icmp eq i32 %2307, 0
  br i1 %2308, label %2325, label %2309

; <label>:2309                                    ; preds = %2303
  %2310 = add i32 %60, 480
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = add i32 %2312, 0
  %2314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2315 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2314, %dx.types.Handle %101, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2316 = extractvalue %dx.types.ResRet.f32 %2315, 0
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = and i32 %2318, 524288
  %2320 = icmp ne i32 %2319, 0
  %2321 = fcmp fast ogt float %2316, 0x3FE0101020000000
  %2322 = select i1 %2321, float 1.000000e+00, float 0.000000e+00
  %2323 = select i1 %2320, float %2322, float %2316
  %2324 = fmul fast float %2323, %2304
  br label %2325

; <label>:2325                                    ; preds = %2309, %2303
  %2326 = phi float [ %2324, %2309 ], [ %2304, %2303 ]
  %2327 = fcmp fast ult float %2326, 0x3F70101020000000
  br i1 %2327, label %2870, label %2328

; <label>:2328                                    ; preds = %2325
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = and i32 %2330, 16
  %2332 = icmp eq i32 %2331, 0
  br i1 %2332, label %2531, label %2333

; <label>:2333                                    ; preds = %2328
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = add i32 %60, 432
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = add i32 %2338, 0
  %2340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2340, %dx.types.Handle %100, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.ResRet.f32 %2341, 1
  %2344 = extractvalue %dx.types.ResRet.f32 %2341, 2
  %2345 = extractvalue %dx.types.ResRet.f32 %2341, 3
  %2346 = and i32 %2335, 255
  %2347 = uitofp i32 %2346 to float
  %2348 = lshr i32 %2335, 8
  %2349 = and i32 %2348, 255
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2345, %2347
  %2352 = fadd fast float %2351, %2350
  %2353 = fmul fast float %2352, 0x3F70101000000000
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 512
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2366, label %2358

; <label>:2358                                    ; preds = %2333
  %2359 = add i32 %60, 516
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = add i32 %2361, 0
  %2363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2363, %dx.types.Handle %101, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2365 = extractvalue %dx.types.ResRet.f32 %2364, 0
  br label %2366

; <label>:2366                                    ; preds = %2358, %2333
  %2367 = phi float [ %2365, %2358 ], [ 1.000000e+00, %2333 ]
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, 33554432
  %2371 = icmp eq i32 %2370, 0
  br i1 %2371, label %2478, label %2372

; <label>:2372                                    ; preds = %2366
  %2373 = add i32 %60, 256
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = and i32 %2375, 65535
  %2377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2376)  ; LegacyF16ToF32(value)
  %2378 = lshr i32 %2375, 16
  %2379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2378)  ; LegacyF16ToF32(value)
  %2380 = add i32 %60, 260
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 65535
  %2384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2383)  ; LegacyF16ToF32(value)
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = lshr i32 %2386, 24
  %2388 = uitofp i32 %2387 to float
  %2389 = fmul fast float %2388, 0x3F70101020000000
  %2390 = and i32 %2386, 255
  %2391 = uitofp i32 %2390 to float
  %2392 = fmul fast float %2391, 0x3F70101020000000
  %2393 = lshr i32 %2386, 8
  %2394 = and i32 %2393, 255
  %2395 = uitofp i32 %2394 to float
  %2396 = fmul fast float %2395, 0x3F70101020000000
  %2397 = lshr i32 %2386, 16
  %2398 = and i32 %2397, 255
  %2399 = uitofp i32 %2398 to float
  %2400 = fmul fast float %2399, 0x3F70101020000000
  %2401 = add i32 %60, 252
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2401, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = lshr i32 %2403, 24
  %2405 = uitofp i32 %2404 to float
  %2406 = fmul fast float %2405, 0x3F70101020000000
  %2407 = and i32 %2403, 255
  %2408 = uitofp i32 %2407 to float
  %2409 = fmul fast float %2408, 0x3F70101020000000
  %2410 = lshr i32 %2403, 8
  %2411 = and i32 %2410, 255
  %2412 = uitofp i32 %2411 to float
  %2413 = fmul fast float %2412, 0x3F70101020000000
  %2414 = lshr i32 %2403, 16
  %2415 = and i32 %2414, 255
  %2416 = uitofp i32 %2415 to float
  %2417 = fmul fast float %2416, 0x3F70101020000000
  %2418 = bitcast float %2342 to i32
  %2419 = ashr i32 %2418, 1
  %2420 = sub nsw i32 1597463174, %2419
  %2421 = bitcast i32 %2420 to float
  %2422 = fmul fast float %2342, 5.000000e-01
  %2423 = fmul fast float %2421, %2421
  %2424 = fmul fast float %2423, %2422
  %2425 = fsub fast float 1.500000e+00, %2424
  %2426 = fmul fast float %2421, %2342
  %2427 = fmul fast float %2426, %2425
  %2428 = bitcast float %2343 to i32
  %2429 = ashr i32 %2428, 1
  %2430 = sub nsw i32 1597463174, %2429
  %2431 = bitcast i32 %2430 to float
  %2432 = fmul fast float %2343, 5.000000e-01
  %2433 = fmul fast float %2431, %2431
  %2434 = fmul fast float %2433, %2432
  %2435 = fsub fast float 1.500000e+00, %2434
  %2436 = fmul fast float %2431, %2343
  %2437 = fmul fast float %2436, %2435
  %2438 = bitcast float %2344 to i32
  %2439 = ashr i32 %2438, 1
  %2440 = sub nsw i32 1597463174, %2439
  %2441 = bitcast i32 %2440 to float
  %2442 = fmul fast float %2344, 5.000000e-01
  %2443 = fmul fast float %2441, %2441
  %2444 = fmul fast float %2443, %2442
  %2445 = fsub fast float 1.500000e+00, %2444
  %2446 = fmul fast float %2441, %2344
  %2447 = fmul fast float %2446, %2445
  %2448 = fsub fast float %2427, %2409
  %2449 = fsub fast float %2437, %2413
  %2450 = fsub fast float %2447, %2417
  %2451 = fmul fast float %2448, %2377
  %2452 = fmul fast float %2449, %2379
  %2453 = fmul fast float %2450, %2384
  %2454 = fadd fast float %2451, %2392
  %2455 = fadd fast float %2452, %2396
  %2456 = fadd fast float %2453, %2400
  %2457 = call float @dx.op.unary.f32(i32 7, float %2454)  ; Saturate(value)
  %2458 = call float @dx.op.unary.f32(i32 7, float %2455)  ; Saturate(value)
  %2459 = call float @dx.op.unary.f32(i32 7, float %2456)  ; Saturate(value)
  %2460 = fmul fast float %2457, %2457
  %2461 = fmul fast float %2458, %2458
  %2462 = fmul fast float %2459, %2459
  %2463 = fsub fast float %2460, %2342
  %2464 = fsub fast float %2461, %2343
  %2465 = fsub fast float %2462, %2344
  %2466 = fmul fast float %2463, %2367
  %2467 = fmul fast float %2464, %2367
  %2468 = fmul fast float %2465, %2367
  %2469 = fadd fast float %2466, %2342
  %2470 = fadd fast float %2467, %2343
  %2471 = fadd fast float %2468, %2344
  %2472 = fadd fast float %2389, %2353
  %2473 = fsub fast float %2472, %2406
  %2474 = call float @dx.op.unary.f32(i32 7, float %2473)  ; Saturate(value)
  %2475 = fsub fast float %2474, %2353
  %2476 = fmul fast float %2475, %2367
  %2477 = fadd fast float %2476, %2353
  br label %2531

; <label>:2478                                    ; preds = %2366
  %2479 = and i32 %2369, 134217728
  %2480 = icmp eq i32 %2479, 0
  br i1 %2480, label %2515, label %2481

; <label>:2481                                    ; preds = %2478
  %2482 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %2483 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %2484 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %2485 = fadd fast float %2482, -5.000000e-01
  %2486 = fadd fast float %2483, -5.000000e-01
  %2487 = fadd fast float %2484, -5.000000e-01
  %2488 = fmul fast float %2485, %2367
  %2489 = fmul fast float %2486, %2367
  %2490 = fmul fast float %2487, %2367
  %2491 = fadd fast float %2488, 5.000000e-01
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = call float @dx.op.unary.f32(i32 24, float %2342)  ; Sqrt(value)
  %2495 = call float @dx.op.unary.f32(i32 24, float %2343)  ; Sqrt(value)
  %2496 = call float @dx.op.unary.f32(i32 24, float %2344)  ; Sqrt(value)
  %2497 = fmul fast float %2491, 2.000000e+00
  %2498 = fsub fast float 1.000000e+00, %2497
  %2499 = fmul fast float %2498, %2494
  %2500 = fadd fast float %2499, %2497
  %2501 = fmul fast float %2500, %2494
  %2502 = fmul fast float %2492, 2.000000e+00
  %2503 = fsub fast float 1.000000e+00, %2502
  %2504 = fmul fast float %2503, %2495
  %2505 = fadd fast float %2504, %2502
  %2506 = fmul fast float %2505, %2495
  %2507 = fmul fast float %2493, 2.000000e+00
  %2508 = fsub fast float 1.000000e+00, %2507
  %2509 = fmul fast float %2508, %2496
  %2510 = fadd fast float %2509, %2507
  %2511 = fmul fast float %2510, %2496
  %2512 = fmul fast float %2501, %2501
  %2513 = fmul fast float %2506, %2506
  %2514 = fmul fast float %2511, %2511
  br label %2531

; <label>:2515                                    ; preds = %2478
  %2516 = fmul fast float %374, %374
  %2517 = fmul fast float %378, %378
  %2518 = fmul fast float %382, %382
  %2519 = fadd fast float %2516, -1.000000e+00
  %2520 = fadd fast float %2517, -1.000000e+00
  %2521 = fadd fast float %2518, -1.000000e+00
  %2522 = fmul fast float %2367, %2519
  %2523 = fmul fast float %2367, %2520
  %2524 = fmul fast float %2367, %2521
  %2525 = fadd fast float %2522, 1.000000e+00
  %2526 = fadd fast float %2523, 1.000000e+00
  %2527 = fadd fast float %2524, 1.000000e+00
  %2528 = fmul fast float %2525, %2342
  %2529 = fmul fast float %2526, %2343
  %2530 = fmul fast float %2527, %2344
  br label %2531

; <label>:2531                                    ; preds = %2515, %2481, %2372, %2328
  %2532 = phi float [ %2477, %2372 ], [ %2353, %2481 ], [ %2353, %2515 ], [ 0x3FA23C0BE0000000, %2328 ]
  %2533 = phi float [ %2469, %2372 ], [ %2512, %2481 ], [ %2528, %2515 ], [ 1.000000e+00, %2328 ]
  %2534 = phi float [ %2470, %2372 ], [ %2513, %2481 ], [ %2529, %2515 ], [ 1.000000e+00, %2328 ]
  %2535 = phi float [ %2471, %2372 ], [ %2514, %2481 ], [ %2530, %2515 ], [ 1.000000e+00, %2328 ]
  %2536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2537 = extractvalue %dx.types.CBufRet.i32 %2536, 1
  %2538 = and i32 %2537, 1
  %2539 = icmp ne i32 %2538, 0
  %2540 = add i32 %60, 356
  %2541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2540, i32 undef)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.i32 %2541, 0
  %2543 = and i32 %2542, 32
  %2544 = icmp ne i32 %2543, 0
  %2545 = and i1 %2539, %2544
  %2546 = select i1 %2545, float 1.000000e+00, float %2533
  %2547 = select i1 %2545, float 0x3FD3333340000000, float %2534
  %2548 = select i1 %2545, float 0x3FD3333340000000, float %2535
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = and i32 %2550, 32
  %2552 = icmp eq i32 %2551, 0
  br i1 %2552, label %2625, label %2553

; <label>:2553                                    ; preds = %2531
  %2554 = add i32 %60, 124
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = add i32 %60, 448
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = add i32 %2559, 0
  %2561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2561, %dx.types.Handle %100, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2563 = extractvalue %dx.types.ResRet.f32 %2562, 0
  %2564 = extractvalue %dx.types.ResRet.f32 %2562, 1
  %2565 = extractvalue %dx.types.ResRet.f32 %2562, 2
  %2566 = extractvalue %dx.types.ResRet.f32 %2562, 3
  %2567 = and i32 %2556, 255
  %2568 = uitofp i32 %2567 to float
  %2569 = lshr i32 %2556, 8
  %2570 = and i32 %2569, 255
  %2571 = uitofp i32 %2570 to float
  %2572 = lshr i32 %2556, 16
  %2573 = and i32 %2572, 255
  %2574 = uitofp i32 %2573 to float
  %2575 = fmul fast float %2574, 0x3F70101000000000
  %2576 = fmul fast float %2563, %2568
  %2577 = fadd fast float %2576, %2571
  %2578 = fmul fast float %2577, 0x3F70101000000000
  %2579 = fadd fast float %2564, -5.000000e-01
  %2580 = fadd fast float %2566, -5.000000e-01
  %2581 = fmul fast float %2579, %2575
  %2582 = fmul fast float %2580, %2575
  %2583 = fadd fast float %2581, 5.000000e-01
  %2584 = fadd fast float %2582, 5.000000e-01
  %2585 = fmul fast float %2583, 2.000000e+00
  %2586 = fadd fast float %2585, -1.000000e+00
  %2587 = fmul fast float %2584, 2.000000e+00
  %2588 = fadd fast float %2587, -1.000000e+00
  %2589 = fadd fast float %2586, %2588
  %2590 = fmul fast float %2589, 5.000000e-01
  %2591 = fsub fast float %2586, %2588
  %2592 = fmul fast float %2591, 5.000000e-01
  %2593 = call float @dx.op.unary.f32(i32 6, float %2590)  ; FAbs(value)
  %2594 = fsub fast float 1.000000e+00, %2593
  %2595 = call float @dx.op.unary.f32(i32 6, float %2592)  ; FAbs(value)
  %2596 = fsub fast float %2594, %2595
  %2597 = call float @dx.op.dot3.f32(i32 55, float %2590, float %2592, float %2596, float %2590, float %2592, float %2596)  ; Dot3(ax,ay,az,bx,by,bz)
  %2598 = call float @dx.op.unary.f32(i32 25, float %2597)  ; Rsqrt(value)
  %2599 = fmul fast float %2590, %2598
  %2600 = fmul fast float %2592, %2598
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = and i32 %2602, 67108864
  %2604 = icmp eq i32 %2603, 0
  br i1 %2604, label %2621, label %2605

; <label>:2605                                    ; preds = %2553
  %2606 = add i32 %60, 312
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2606, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = and i32 %2608, 65535
  %2610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2609)  ; LegacyF16ToF32(value)
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 65535
  %2614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2613)  ; LegacyF16ToF32(value)
  %2615 = lshr i32 %2608, 16
  %2616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2615)  ; LegacyF16ToF32(value)
  %2617 = fsub fast float %2578, %2616
  %2618 = fmul fast float %2617, %2610
  %2619 = fadd fast float %2618, %2614
  %2620 = call float @dx.op.unary.f32(i32 7, float %2619)  ; Saturate(value)
  br label %2621

; <label>:2621                                    ; preds = %2605, %2553
  %2622 = phi float [ %2620, %2605 ], [ %2578, %2553 ]
  %2623 = call float @dx.op.dot2.f32(i32 54, float %2599, float %2600, float %2042, float %2043)  ; Dot2(ax,ay,bx,by)
  %2624 = call float @dx.op.dot2.f32(i32 54, float %2599, float %2600, float %2044, float %2045)  ; Dot2(ax,ay,bx,by)
  br label %2625

; <label>:2625                                    ; preds = %2621, %2531
  %2626 = phi float [ %2622, %2621 ], [ 0x3FD6666660000000, %2531 ]
  %2627 = phi float [ %2623, %2621 ], [ 0.000000e+00, %2531 ]
  %2628 = phi float [ %2624, %2621 ], [ 0.000000e+00, %2531 ]
  %2629 = phi float [ %2565, %2621 ], [ 1.000000e+00, %2531 ]
  %2630 = add i32 %60, 192
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = lshr i32 %2632, 22
  %2634 = shl nuw nsw i32 %2633, 5
  %2635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2634)  ; LegacyF16ToF32(value)
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = and i32 %2637, 64
  %2639 = icmp eq i32 %2638, 0
  br i1 %2639, label %2673, label %2640

; <label>:2640                                    ; preds = %2625
  %2641 = add i32 %60, 464
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = add i32 %2643, 0
  %2645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 131072
  %2649 = icmp eq i32 %2648, 0
  %2650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2645, %dx.types.Handle %100, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2651 = extractvalue %dx.types.ResRet.f32 %2650, 0
  %2652 = extractvalue %dx.types.ResRet.f32 %2650, 1
  %2653 = extractvalue %dx.types.ResRet.f32 %2650, 2
  %2654 = fmul fast float %2651, %362
  %2655 = fmul fast float %2652, %365
  %2656 = fmul fast float %2653, %368
  br i1 %2649, label %2663, label %2657

; <label>:2657                                    ; preds = %2640
  %2658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2659 = extractvalue %dx.types.CBufRet.f32 %2658, 0
  %2660 = fmul fast float %2659, %2654
  %2661 = fmul fast float %2659, %2655
  %2662 = fmul fast float %2659, %2656
  br label %2663

; <label>:2663                                    ; preds = %2657, %2640
  %2664 = phi float [ %2660, %2657 ], [ %2654, %2640 ]
  %2665 = phi float [ %2661, %2657 ], [ %2655, %2640 ]
  %2666 = phi float [ %2662, %2657 ], [ %2656, %2640 ]
  %2667 = fmul fast float %2664, %2635
  %2668 = select i1 %261, float %2667, float %2664
  %2669 = call float @dx.op.dot3.f32(i32 55, float %2668, float %2665, float %2666, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2670 = select i1 %261, float 0.000000e+00, float %2664
  %2671 = select i1 %261, float %2669, float %2665
  %2672 = select i1 %261, float 0.000000e+00, float %2666
  br label %2673

; <label>:2673                                    ; preds = %2663, %2625
  %2674 = phi float [ %2670, %2663 ], [ 0.000000e+00, %2625 ]
  %2675 = phi float [ %2671, %2663 ], [ 0.000000e+00, %2625 ]
  %2676 = phi float [ %2672, %2663 ], [ 0.000000e+00, %2625 ]
  %2677 = add i32 %60, 128
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = and i32 %2679, 255
  %2681 = uitofp i32 %2680 to float
  %2682 = lshr i32 %2679, 8
  %2683 = and i32 %2682, 255
  %2684 = uitofp i32 %2683 to float
  %2685 = call float @dx.op.dot3.f32(i32 55, float %2546, float %2547, float %2548, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2686 = fmul fast float %2684, %2685
  %2687 = fadd fast float %2686, %2681
  %2688 = fmul fast float %2687, 0x3F70101020000000
  %2689 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  br i1 %2030, label %2690, label %2698

; <label>:2690                                    ; preds = %2673
  %2691 = fsub fast float 1.000000e+00, %2326
  %2692 = fmul fast float %2691, %2019
  %2693 = fmul fast float %2691, %2020
  %2694 = fmul fast float %2691, %2021
  %2695 = fmul fast float %2691, %2022
  %2696 = fmul fast float %2691, %2023
  %2697 = fmul fast float %2691, %2024
  br label %2698

; <label>:2698                                    ; preds = %2690, %2673
  %2699 = phi float [ %2692, %2690 ], [ %2019, %2673 ]
  %2700 = phi float [ %2693, %2690 ], [ %2020, %2673 ]
  %2701 = phi float [ %2694, %2690 ], [ %2021, %2673 ]
  %2702 = phi float [ %2695, %2690 ], [ %2022, %2673 ]
  %2703 = phi float [ %2696, %2690 ], [ %2023, %2673 ]
  %2704 = phi float [ %2697, %2690 ], [ %2024, %2673 ]
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = and i32 %2706, 3
  %2708 = icmp eq i32 %2707, 3
  br i1 %2708, label %2787, label %2709

; <label>:2709                                    ; preds = %2698
  %2710 = and i32 %2706, 16
  %2711 = icmp ne i32 %2710, 0
  %2712 = select i1 %2711, float %2326, float 0.000000e+00
  %2713 = icmp eq i32 %2707, 0
  br i1 %2713, label %2714, label %2742

; <label>:2714                                    ; preds = %2709
  %2715 = and i32 %2706, 64
  %2716 = icmp ne i32 %2715, 0
  %2717 = select i1 %2716, float %2326, float 0.000000e+00
  %2718 = fsub fast float %2546, %2699
  %2719 = fsub fast float %2547, %2700
  %2720 = fsub fast float %2548, %2701
  %2721 = fmul fast float %2712, %2718
  %2722 = fmul fast float %2712, %2719
  %2723 = fmul fast float %2712, %2720
  %2724 = fadd fast float %2721, %2699
  %2725 = fadd fast float %2722, %2700
  %2726 = fadd fast float %2723, %2701
  %2727 = fsub fast float %2532, %2025
  %2728 = fmul fast float %2712, %2727
  %2729 = fadd fast float %2728, %2025
  %2730 = fsub fast float %2674, %2702
  %2731 = fsub fast float %2675, %2703
  %2732 = fsub fast float %2676, %2704
  %2733 = fmul fast float %2717, %2730
  %2734 = fmul fast float %2717, %2731
  %2735 = fmul fast float %2717, %2732
  %2736 = fadd fast float %2733, %2702
  %2737 = fadd fast float %2734, %2703
  %2738 = fadd fast float %2735, %2704
  %2739 = fsub fast float %2689, %2028
  %2740 = fmul fast float %2712, %2739
  %2741 = fadd fast float %2740, %2028
  br label %2787

; <label>:2742                                    ; preds = %2709
  %2743 = icmp eq i32 %2707, 1
  br i1 %2743, label %2744, label %2757

; <label>:2744                                    ; preds = %2742
  %2745 = fadd fast float %2546, -1.000000e+00
  %2746 = fadd fast float %2547, -1.000000e+00
  %2747 = fadd fast float %2548, -1.000000e+00
  %2748 = fmul fast float %2712, %2745
  %2749 = fmul fast float %2712, %2746
  %2750 = fmul fast float %2712, %2747
  %2751 = fadd fast float %2748, 1.000000e+00
  %2752 = fadd fast float %2749, 1.000000e+00
  %2753 = fadd fast float %2750, 1.000000e+00
  %2754 = fmul fast float %2751, %2699
  %2755 = fmul fast float %2752, %2700
  %2756 = fmul fast float %2753, %2701
  br label %2787

; <label>:2757                                    ; preds = %2742
  %2758 = icmp eq i32 %2707, 2
  br i1 %2758, label %2759, label %2787

; <label>:2759                                    ; preds = %2757
  %2760 = call float @dx.op.unary.f32(i32 24, float %2546)  ; Sqrt(value)
  %2761 = call float @dx.op.unary.f32(i32 24, float %2547)  ; Sqrt(value)
  %2762 = call float @dx.op.unary.f32(i32 24, float %2548)  ; Sqrt(value)
  %2763 = fadd fast float %2760, -5.000000e-01
  %2764 = fadd fast float %2761, -5.000000e-01
  %2765 = fadd fast float %2762, -5.000000e-01
  %2766 = fmul fast float %2763, %2712
  %2767 = fmul fast float %2764, %2712
  %2768 = fmul fast float %2765, %2712
  %2769 = fadd fast float %2766, 5.000000e-01
  %2770 = fadd fast float %2767, 5.000000e-01
  %2771 = fadd fast float %2768, 5.000000e-01
  %2772 = fmul fast float %2769, 2.000000e+00
  %2773 = fsub fast float 1.000000e+00, %2772
  %2774 = fmul fast float %2773, %2699
  %2775 = fadd fast float %2774, %2772
  %2776 = fmul fast float %2775, %2699
  %2777 = fmul fast float %2770, 2.000000e+00
  %2778 = fsub fast float 1.000000e+00, %2777
  %2779 = fmul fast float %2778, %2700
  %2780 = fadd fast float %2779, %2777
  %2781 = fmul fast float %2780, %2700
  %2782 = fmul fast float %2771, 2.000000e+00
  %2783 = fsub fast float 1.000000e+00, %2782
  %2784 = fmul fast float %2783, %2701
  %2785 = fadd fast float %2784, %2782
  %2786 = fmul fast float %2785, %2701
  br label %2787

; <label>:2787                                    ; preds = %2759, %2757, %2744, %2714, %2698
  %2788 = phi float [ %2699, %2698 ], [ %2776, %2759 ], [ %2699, %2757 ], [ %2754, %2744 ], [ %2724, %2714 ]
  %2789 = phi float [ %2700, %2698 ], [ %2781, %2759 ], [ %2700, %2757 ], [ %2755, %2744 ], [ %2725, %2714 ]
  %2790 = phi float [ %2701, %2698 ], [ %2786, %2759 ], [ %2701, %2757 ], [ %2756, %2744 ], [ %2726, %2714 ]
  %2791 = phi float [ %2702, %2698 ], [ %2702, %2759 ], [ %2702, %2757 ], [ %2702, %2744 ], [ %2736, %2714 ]
  %2792 = phi float [ %2703, %2698 ], [ %2703, %2759 ], [ %2703, %2757 ], [ %2703, %2744 ], [ %2737, %2714 ]
  %2793 = phi float [ %2704, %2698 ], [ %2704, %2759 ], [ %2704, %2757 ], [ %2704, %2744 ], [ %2738, %2714 ]
  %2794 = phi float [ %2025, %2698 ], [ %2025, %2759 ], [ %2025, %2757 ], [ %2025, %2744 ], [ %2729, %2714 ]
  %2795 = phi float [ %2028, %2698 ], [ %2028, %2759 ], [ %2028, %2757 ], [ %2028, %2744 ], [ %2741, %2714 ]
  %2796 = and i32 %2706, 12
  %2797 = icmp eq i32 %2796, 12
  br i1 %2797, label %2870, label %2798

; <label>:2798                                    ; preds = %2787
  %2799 = and i32 %2706, 2097184
  %2800 = icmp eq i32 %2799, 2097184
  %2801 = select i1 %2800, float %2326, float 0.000000e+00
  %2802 = and i32 %2706, 4194336
  %2803 = icmp eq i32 %2802, 4194336
  %2804 = select i1 %2803, float %2326, float 0.000000e+00
  %2805 = and i32 %2706, 8388640
  %2806 = icmp eq i32 %2805, 8388640
  %2807 = select i1 %2806, float %2326, float 0.000000e+00
  %2808 = icmp eq i32 %2796, 0
  br i1 %2808, label %2809, label %2822

; <label>:2809                                    ; preds = %2798
  %2810 = fsub fast float %2627, %2017
  %2811 = fsub fast float %2628, %2018
  %2812 = fmul fast float %2801, %2810
  %2813 = fmul fast float %2801, %2811
  %2814 = fadd fast float %2812, %2017
  %2815 = fadd fast float %2813, %2018
  %2816 = fsub fast float %2629, %2027
  %2817 = fmul fast float %2804, %2816
  %2818 = fadd fast float %2817, %2027
  %2819 = fsub fast float %2626, %2026
  %2820 = fmul fast float %2807, %2819
  %2821 = fadd fast float %2820, %2026
  br label %2870

; <label>:2822                                    ; preds = %2798
  %2823 = icmp eq i32 %2796, 4
  br i1 %2823, label %2824, label %2856

; <label>:2824                                    ; preds = %2822
  %2825 = fmul fast float %2801, %2627
  %2826 = fmul fast float %2801, %2628
  %2827 = fadd fast float %2825, %2017
  %2828 = fadd fast float %2826, %2018
  %2829 = call float @dx.op.binary.f32(i32 36, float %2027, float %2629)  ; FMin(a,b)
  %2830 = fsub fast float %2829, %2027
  %2831 = fmul fast float %2830, %2804
  %2832 = fadd fast float %2831, %2027
  %2833 = fadd fast float %2626, %2026
  %2834 = fmul fast float %2833, 0x3FF337FAE0000000
  %2835 = fmul fast float %2026, %2026
  %2836 = fmul fast float %2626, %2626
  %2837 = fadd fast float %2836, %2835
  %2838 = fmul fast float %2837, 0x3FE5152B00000000
  %2839 = fmul fast float %2026, 0xBFCC1F85E0000000
  %2840 = fmul fast float %2839, %2626
  %2841 = fadd fast float %2840, 0xBFE1363700000000
  %2842 = fadd fast float %2841, %2834
  %2843 = fsub fast float %2842, %2838
  %2844 = fmul fast float %2833, 0x3FBA6F0D00000000
  %2845 = fmul fast float %2837, 0x3FD0432880000000
  %2846 = fmul fast float %2026, 0xBFEF110800000000
  %2847 = fmul fast float %2846, %2626
  %2848 = fadd fast float %2847, 1.000000e+00
  %2849 = fsub fast float %2848, %2844
  %2850 = fadd fast float %2849, %2845
  %2851 = fdiv fast float %2843, %2850
  %2852 = call float @dx.op.unary.f32(i32 7, float %2851)  ; Saturate(value)
  %2853 = fsub fast float %2852, %2026
  %2854 = fmul fast float %2853, %2807
  %2855 = fadd fast float %2854, %2026
  br label %2870

; <label>:2856                                    ; preds = %2822
  %2857 = icmp eq i32 %2796, 8
  br i1 %2857, label %2858, label %2870

; <label>:2858                                    ; preds = %2856
  %2859 = fmul fast float %2801, %2627
  %2860 = fmul fast float %2801, %2628
  %2861 = fadd fast float %2859, %2017
  %2862 = fadd fast float %2860, %2018
  %2863 = call float @dx.op.binary.f32(i32 36, float %2027, float %2629)  ; FMin(a,b)
  %2864 = fsub fast float %2863, %2027
  %2865 = fmul fast float %2864, %2804
  %2866 = fadd fast float %2865, %2027
  %2867 = fsub fast float %2626, %2026
  %2868 = fmul fast float %2807, %2867
  %2869 = fadd fast float %2868, %2026
  br label %2870

; <label>:2870                                    ; preds = %2858, %2856, %2824, %2809, %2787, %2325, %2029, %2016
  %2871 = phi float [ %2017, %2787 ], [ %2017, %2325 ], [ %2017, %2016 ], [ %2861, %2858 ], [ %2017, %2856 ], [ %2827, %2824 ], [ %2814, %2809 ], [ %2017, %2029 ]
  %2872 = phi float [ %2018, %2787 ], [ %2018, %2325 ], [ %2018, %2016 ], [ %2862, %2858 ], [ %2018, %2856 ], [ %2828, %2824 ], [ %2815, %2809 ], [ %2018, %2029 ]
  %2873 = phi float [ %2788, %2787 ], [ %2019, %2325 ], [ %2019, %2016 ], [ %2788, %2858 ], [ %2788, %2856 ], [ %2788, %2824 ], [ %2788, %2809 ], [ %2019, %2029 ]
  %2874 = phi float [ %2789, %2787 ], [ %2020, %2325 ], [ %2020, %2016 ], [ %2789, %2858 ], [ %2789, %2856 ], [ %2789, %2824 ], [ %2789, %2809 ], [ %2020, %2029 ]
  %2875 = phi float [ %2790, %2787 ], [ %2021, %2325 ], [ %2021, %2016 ], [ %2790, %2858 ], [ %2790, %2856 ], [ %2790, %2824 ], [ %2790, %2809 ], [ %2021, %2029 ]
  %2876 = phi float [ %2791, %2787 ], [ %2022, %2325 ], [ %2022, %2016 ], [ %2791, %2858 ], [ %2791, %2856 ], [ %2791, %2824 ], [ %2791, %2809 ], [ %2022, %2029 ]
  %2877 = phi float [ %2792, %2787 ], [ %2023, %2325 ], [ %2023, %2016 ], [ %2792, %2858 ], [ %2792, %2856 ], [ %2792, %2824 ], [ %2792, %2809 ], [ %2023, %2029 ]
  %2878 = phi float [ %2793, %2787 ], [ %2024, %2325 ], [ %2024, %2016 ], [ %2793, %2858 ], [ %2793, %2856 ], [ %2793, %2824 ], [ %2793, %2809 ], [ %2024, %2029 ]
  %2879 = phi float [ %2794, %2787 ], [ %2025, %2325 ], [ %2025, %2016 ], [ %2794, %2858 ], [ %2794, %2856 ], [ %2794, %2824 ], [ %2794, %2809 ], [ %2025, %2029 ]
  %2880 = phi float [ %2026, %2787 ], [ %2026, %2325 ], [ %2026, %2016 ], [ %2869, %2858 ], [ %2026, %2856 ], [ %2855, %2824 ], [ %2821, %2809 ], [ %2026, %2029 ]
  %2881 = phi float [ %2027, %2787 ], [ %2027, %2325 ], [ %2027, %2016 ], [ %2866, %2858 ], [ %2027, %2856 ], [ %2832, %2824 ], [ %2818, %2809 ], [ %2027, %2029 ]
  %2882 = phi float [ %2795, %2787 ], [ %2028, %2325 ], [ %2028, %2016 ], [ %2795, %2858 ], [ %2795, %2856 ], [ %2795, %2824 ], [ %2795, %2809 ], [ %2028, %2029 ]
  br i1 %449, label %3724, label %2883

; <label>:2883                                    ; preds = %2870
  %2884 = icmp ult i32 %503, 4
  %2885 = add i32 %60, 72
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = add i32 %60, 76
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = or i32 %2890, %2887
  %2892 = icmp eq i32 %2891, 0
  br i1 %2892, label %3724, label %2893

; <label>:2893                                    ; preds = %2883
  %2894 = and i32 %2887, 262144
  %2895 = icmp ne i32 %2894, 0
  %2896 = select i1 %2895, float %63, float 1.000000e+00
  %2897 = select i1 %2895, float %64, float 0.000000e+00
  %2898 = select i1 %2895, float %65, float 0.000000e+00
  %2899 = select i1 %2895, float %66, float 1.000000e+00
  %2900 = select i1 %2895, float %67, float %83
  %2901 = select i1 %2895, float %68, float %84
  %2902 = add i32 %60, 332
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2902, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = lshr i32 %2904, 16
  %2906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2905)  ; LegacyF16ToF32(value)
  %2907 = fmul fast float %2906, 0x3F50624DE0000000
  %2908 = add i32 %60, 136
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = lshr i32 %2910, 16
  %2912 = and i32 %2911, 255
  %2913 = lshr i32 %2910, 24
  %2914 = add i32 %60, 340
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 65535
  %2918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2917)  ; LegacyF16ToF32(value)
  %2919 = lshr i32 %2916, 16
  %2920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2919)  ; LegacyF16ToF32(value)
  %2921 = add i32 %60, 80
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = lshr i32 %2923, 22
  %2925 = shl nuw nsw i32 %2924, 5
  %2926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2925)  ; LegacyF16ToF32(value)
  %2927 = shl i32 %2923, 4
  %2928 = and i32 %2927, 32752
  %2929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2928)  ; LegacyF16ToF32(value)
  %2930 = lshr i32 %2923, 7
  %2931 = and i32 %2930, 32752
  %2932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2931)  ; LegacyF16ToF32(value)
  %2933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2933, 3
  %2935 = fmul fast float %2934, 1.000000e+03
  %2936 = fmul fast float %439, %2935
  %2937 = call float @dx.op.unary.f32(i32 22, float %2936)  ; Frc(value)
  %2938 = fadd fast float %2937, %429
  %2939 = fmul fast float %440, %2935
  %2940 = call float @dx.op.unary.f32(i32 22, float %2939)  ; Frc(value)
  %2941 = fadd fast float %2940, %431
  %2942 = fmul fast float %2907, %2935
  %2943 = call float @dx.op.unary.f32(i32 22, float %2942)  ; Frc(value)
  %2944 = fmul fast float %2943, 0x401921FB60000000
  %2945 = fadd fast float %2944, %2926
  %2946 = call float @dx.op.unary.f32(i32 13, float %2945)  ; Sin(value)
  %2947 = call float @dx.op.unary.f32(i32 12, float %2945)  ; Cos(value)
  %2948 = fsub fast float -0.000000e+00, %2946
  %2949 = fadd fast float %2900, -5.000000e-01
  %2950 = fadd fast float %2901, -5.000000e-01
  %2951 = fmul fast float %2918, %2949
  %2952 = fmul fast float %2920, %2950
  %2953 = fadd fast float %2951, 5.000000e-01
  %2954 = fadd fast float %2952, 5.000000e-01
  %2955 = fmul fast float %2929, %2953
  %2956 = fmul fast float %2932, %2954
  %2957 = fmul fast float %2947, %2955
  %2958 = call float @dx.op.tertiary.f32(i32 46, float %2948, float %2956, float %2957)  ; FMad(a,b,c)
  %2959 = fmul fast float %2946, %2955
  %2960 = call float @dx.op.tertiary.f32(i32 46, float %2947, float %2956, float %2959)  ; FMad(a,b,c)
  %2961 = fadd fast float %2938, %2958
  %2962 = fadd fast float %2941, %2960
  %2963 = icmp ugt i32 %2912, 1
  %2964 = icmp ugt i32 %2910, 33554431
  %2965 = or i1 %2964, %2963
  br i1 %2965, label %2966, label %2991

; <label>:2966                                    ; preds = %2893
  %2967 = add i32 %60, 276
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = lshr i32 %2969, 16
  %2971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2970)  ; LegacyF16ToF32(value)
  %2972 = fmul fast float %2934, %2971
  %2973 = call float @dx.op.unary.f32(i32 22, float %2972)  ; Frc(value)
  %2974 = mul nuw nsw i32 %2912, %2913
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2973, %2975
  %2977 = call float @dx.op.unary.f32(i32 27, float %2976)  ; Round_ni(value)
  %2978 = fptoui float %2977 to i32
  %2979 = urem i32 %2978, %2912
  %2980 = udiv i32 %2978, %2913
  %2981 = call float @dx.op.unary.f32(i32 22, float %2961)  ; Frc(value)
  %2982 = call float @dx.op.unary.f32(i32 22, float %2962)  ; Frc(value)
  %2983 = uitofp i32 %2979 to float
  %2984 = uitofp i32 %2980 to float
  %2985 = fadd fast float %2981, %2983
  %2986 = fadd fast float %2982, %2984
  %2987 = uitofp i32 %2912 to float
  %2988 = uitofp i32 %2913 to float
  %2989 = fdiv fast float %2985, %2987
  %2990 = fdiv fast float %2986, %2988
  br label %2991

; <label>:2991                                    ; preds = %2966, %2893
  %2992 = phi float [ %2989, %2966 ], [ %2961, %2893 ]
  %2993 = phi float [ %2990, %2966 ], [ %2962, %2893 ]
  %2994 = and i32 %2887, 16777216
  %2995 = icmp eq i32 %2994, 0
  br i1 %2995, label %3105, label %2996

; <label>:2996                                    ; preds = %2991
  %2997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2998 = extractvalue %dx.types.CBufRet.f32 %2997, 0
  %2999 = extractvalue %dx.types.CBufRet.f32 %2997, 1
  %3000 = extractvalue %dx.types.CBufRet.f32 %2997, 2
  %3001 = fadd fast float %2998, %167
  %3002 = fadd fast float %2999, %168
  %3003 = fadd fast float %3000, %169
  %3004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3005 = extractvalue %dx.types.CBufRet.f32 %3004, 0
  %3006 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  %3007 = icmp eq i32 %61, 65535
  br i1 %3007, label %3102, label %3008

; <label>:3008                                    ; preds = %2996
  %3009 = lshr i32 %61, 1
  %3010 = shl i32 %3009, 2
  %3011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3010, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.i32 %3011, 0
  %3013 = and i32 %61, 1
  %3014 = icmp ne i32 %3013, 0
  %3015 = lshr i32 %3012, 16
  %3016 = and i32 %3012, 65535
  %3017 = select i1 %3014, i32 %3015, i32 %3016
  %3018 = icmp eq i32 %3017, 65535
  br i1 %3018, label %3098, label %3019

; <label>:3019                                    ; preds = %3008
  %3020 = mul nuw nsw i32 %3017, 40
  %3021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.f32 %3021, 0
  %3023 = extractvalue %dx.types.ResRet.f32 %3021, 1
  %3024 = extractvalue %dx.types.ResRet.f32 %3021, 2
  %3025 = add nuw nsw i32 %3020, 12
  %3026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.f32 %3026, 0
  %3028 = extractvalue %dx.types.ResRet.f32 %3026, 1
  %3029 = extractvalue %dx.types.ResRet.f32 %3026, 2
  %3030 = add nuw nsw i32 %3020, 24
  %3031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3030, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.f32 %3031, 0
  %3033 = extractvalue %dx.types.ResRet.f32 %3031, 1
  %3034 = extractvalue %dx.types.ResRet.f32 %3031, 2
  %3035 = add nuw nsw i32 %3020, 36
  %3036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3035, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3038 = fsub fast float %3001, %3022
  %3039 = fsub fast float %3002, %3023
  %3040 = fsub fast float %3003, %3024
  %3041 = fmul fast float %3037, %3038
  %3042 = fmul fast float %3037, %3039
  %3043 = fmul fast float %3037, %3040
  %3044 = call float @dx.op.unary.f32(i32 27, float %3041)  ; Round_ni(value)
  %3045 = call float @dx.op.unary.f32(i32 27, float %3042)  ; Round_ni(value)
  %3046 = call float @dx.op.unary.f32(i32 27, float %3043)  ; Round_ni(value)
  %3047 = fadd fast float %3044, 5.000000e-01
  %3048 = fadd fast float %3045, 5.000000e-01
  %3049 = fadd fast float %3046, 5.000000e-01
  %3050 = fmul fast float %3047, %3027
  %3051 = fmul fast float %3048, %3028
  %3052 = fmul fast float %3049, %3029
  %3053 = shl i32 %61, 2
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = add i32 %3055, 0
  %3057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3056, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3058 = call float @dx.op.unary.f32(i32 22, float %3050)  ; Frc(value)
  %3059 = call float @dx.op.unary.f32(i32 22, float %3051)  ; Frc(value)
  %3060 = call float @dx.op.unary.f32(i32 22, float %3052)  ; Frc(value)
  %3061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3057, %dx.types.Handle %55, float %3058, float %3059, float %3060, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  %3063 = extractvalue %dx.types.ResRet.f32 %3061, 1
  %3064 = extractvalue %dx.types.ResRet.f32 %3061, 2
  %3065 = fmul fast float %3062, 1.023000e+03
  %3066 = fmul fast float %3063, 1.023000e+03
  %3067 = fmul fast float %3064, 1.023000e+03
  %3068 = fadd fast float %3065, 5.000000e-01
  %3069 = fadd fast float %3066, 5.000000e-01
  %3070 = fadd fast float %3067, 5.000000e-01
  %3071 = call float @dx.op.unary.f32(i32 27, float %3068)  ; Round_ni(value)
  %3072 = call float @dx.op.unary.f32(i32 27, float %3069)  ; Round_ni(value)
  %3073 = call float @dx.op.unary.f32(i32 27, float %3070)  ; Round_ni(value)
  %3074 = fsub fast float %3041, %3044
  %3075 = fsub fast float %3042, %3045
  %3076 = fsub fast float %3043, %3046
  %3077 = fmul fast float %3074, 7.500000e-01
  %3078 = fmul fast float %3075, 7.500000e-01
  %3079 = fmul fast float %3076, 7.500000e-01
  %3080 = fadd fast float %3044, 1.250000e-01
  %3081 = fadd fast float %3080, %3077
  %3082 = fadd fast float %3081, %3071
  %3083 = fadd fast float %3045, 1.250000e-01
  %3084 = fadd fast float %3083, %3078
  %3085 = fadd fast float %3084, %3072
  %3086 = fadd fast float %3046, 1.250000e-01
  %3087 = fadd fast float %3086, %3079
  %3088 = fadd fast float %3087, %3073
  %3089 = fmul fast float %3082, %3032
  %3090 = fmul fast float %3085, %3033
  %3091 = fmul fast float %3088, %3034
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = add i32 %3093, 0
  %3095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3095, %dx.types.Handle %53, float %3089, float %3090, float %3091, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3097 = extractvalue %dx.types.ResRet.f32 %3096, 0
  br label %3098

; <label>:3098                                    ; preds = %3019, %3008
  %3099 = phi float [ %3097, %3019 ], [ -1.000000e+00, %3008 ]
  %3100 = fadd fast float %3099, %3006
  %3101 = call float @dx.op.unary.f32(i32 7, float %3100)  ; Saturate(value)
  br label %3102

; <label>:3102                                    ; preds = %3098, %2996
  %3103 = phi float [ %3101, %3098 ], [ %3006, %2996 ]
  %3104 = fmul fast float %3103, %498
  br label %3105

; <label>:3105                                    ; preds = %3102, %2991
  %3106 = phi float [ %3104, %3102 ], [ %498, %2991 ]
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = and i32 %3108, 256
  %3110 = icmp eq i32 %3109, 0
  br i1 %3110, label %3157, label %3111

; <label>:3111                                    ; preds = %3105
  %3112 = add i32 %60, 500
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = add i32 %3114, 0
  %3116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3116, %dx.types.Handle %101, float %2992, float %2993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3118 = extractvalue %dx.types.ResRet.f32 %3117, 0
  %3119 = add i32 %60, 148
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = shl i32 %3121, 4
  %3123 = and i32 %3122, 32752
  %3124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3123)  ; LegacyF16ToF32(value)
  %3125 = lshr i32 %3121, 7
  %3126 = and i32 %3125, 32752
  %3127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3126)  ; LegacyF16ToF32(value)
  %3128 = fsub fast float 1.000000e+00, %3106
  %3129 = call float @dx.op.binary.f32(i32 35, float %3128, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3130 = bitcast float %3106 to i32
  %3131 = sitofp i32 %3130 to float
  %3132 = fadd fast float %3131, 0xC1CFBF8940000000
  %3133 = fmul fast float %3127, %3132
  %3134 = fadd fast float %3133, 0x41CFBF8940000000
  %3135 = fptosi float %3134 to i32
  %3136 = bitcast i32 %3135 to float
  %3137 = bitcast float %3129 to i32
  %3138 = sitofp i32 %3137 to float
  %3139 = fadd fast float %3138, 0xC1CFBF8940000000
  %3140 = fmul fast float %3139, %3127
  %3141 = fadd fast float %3140, 0x41CFBF8940000000
  %3142 = fptosi float %3141 to i32
  %3143 = bitcast i32 %3142 to float
  %3144 = fmul fast float %3136, %3124
  %3145 = fmul fast float %3143, %3124
  %3146 = fsub fast float %3129, %3144
  %3147 = fadd fast float %3145, %3129
  %3148 = call float @dx.op.unary.f32(i32 7, float %3146)  ; Saturate(value)
  %3149 = call float @dx.op.unary.f32(i32 7, float %3147)  ; Saturate(value)
  %3150 = fsub fast float %3118, %3148
  %3151 = fsub fast float %3149, %3148
  %3152 = bitcast float %3151 to i32
  %3153 = sub nsw i32 2129859010, %3152
  %3154 = bitcast i32 %3153 to float
  %3155 = fmul fast float %3154, %3150
  %3156 = call float @dx.op.unary.f32(i32 7, float %3155)  ; Saturate(value)
  br label %3157

; <label>:3157                                    ; preds = %3111, %3105
  %3158 = phi float [ %3156, %3111 ], [ %3106, %3105 ]
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = and i32 %3160, 128
  %3162 = icmp eq i32 %3161, 0
  br i1 %3162, label %3179, label %3163

; <label>:3163                                    ; preds = %3157
  %3164 = add i32 %60, 484
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = add i32 %3166, 0
  %3168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3168, %dx.types.Handle %101, float %2992, float %2993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3170 = extractvalue %dx.types.ResRet.f32 %3169, 0
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, 524288
  %3174 = icmp ne i32 %3173, 0
  %3175 = fcmp fast ogt float %3170, 0x3FE0101020000000
  %3176 = select i1 %3175, float 1.000000e+00, float 0.000000e+00
  %3177 = select i1 %3174, float %3176, float %3170
  %3178 = fmul fast float %3177, %3158
  br label %3179

; <label>:3179                                    ; preds = %3163, %3157
  %3180 = phi float [ %3178, %3163 ], [ %3158, %3157 ]
  %3181 = fcmp fast ult float %3180, 0x3F70101020000000
  br i1 %3181, label %3724, label %3182

; <label>:3182                                    ; preds = %3179
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = and i32 %3184, 16
  %3186 = icmp eq i32 %3185, 0
  br i1 %3186, label %3385, label %3187

; <label>:3187                                    ; preds = %3182
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = add i32 %60, 436
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3190, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = add i32 %3192, 0
  %3194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3194, %dx.types.Handle %100, float %2992, float %2993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3196 = extractvalue %dx.types.ResRet.f32 %3195, 0
  %3197 = extractvalue %dx.types.ResRet.f32 %3195, 1
  %3198 = extractvalue %dx.types.ResRet.f32 %3195, 2
  %3199 = extractvalue %dx.types.ResRet.f32 %3195, 3
  %3200 = and i32 %3189, 255
  %3201 = uitofp i32 %3200 to float
  %3202 = lshr i32 %3189, 8
  %3203 = and i32 %3202, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = fmul fast float %3199, %3201
  %3206 = fadd fast float %3205, %3204
  %3207 = fmul fast float %3206, 0x3F70101000000000
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = and i32 %3209, 512
  %3211 = icmp eq i32 %3210, 0
  br i1 %3211, label %3220, label %3212

; <label>:3212                                    ; preds = %3187
  %3213 = add i32 %60, 520
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = add i32 %3215, 0
  %3217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3217, %dx.types.Handle %101, float %2992, float %2993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3219 = extractvalue %dx.types.ResRet.f32 %3218, 0
  br label %3220

; <label>:3220                                    ; preds = %3212, %3187
  %3221 = phi float [ %3219, %3212 ], [ 1.000000e+00, %3187 ]
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = and i32 %3223, 33554432
  %3225 = icmp eq i32 %3224, 0
  br i1 %3225, label %3332, label %3226

; <label>:3226                                    ; preds = %3220
  %3227 = add i32 %60, 272
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = and i32 %3229, 65535
  %3231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3230)  ; LegacyF16ToF32(value)
  %3232 = lshr i32 %3229, 16
  %3233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3232)  ; LegacyF16ToF32(value)
  %3234 = add i32 %60, 276
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = and i32 %3236, 65535
  %3238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3237)  ; LegacyF16ToF32(value)
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = lshr i32 %3240, 24
  %3242 = uitofp i32 %3241 to float
  %3243 = fmul fast float %3242, 0x3F70101020000000
  %3244 = and i32 %3240, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = fmul fast float %3245, 0x3F70101020000000
  %3247 = lshr i32 %3240, 8
  %3248 = and i32 %3247, 255
  %3249 = uitofp i32 %3248 to float
  %3250 = fmul fast float %3249, 0x3F70101020000000
  %3251 = lshr i32 %3240, 16
  %3252 = and i32 %3251, 255
  %3253 = uitofp i32 %3252 to float
  %3254 = fmul fast float %3253, 0x3F70101020000000
  %3255 = add i32 %60, 268
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3255, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = lshr i32 %3257, 24
  %3259 = uitofp i32 %3258 to float
  %3260 = fmul fast float %3259, 0x3F70101020000000
  %3261 = and i32 %3257, 255
  %3262 = uitofp i32 %3261 to float
  %3263 = fmul fast float %3262, 0x3F70101020000000
  %3264 = lshr i32 %3257, 8
  %3265 = and i32 %3264, 255
  %3266 = uitofp i32 %3265 to float
  %3267 = fmul fast float %3266, 0x3F70101020000000
  %3268 = lshr i32 %3257, 16
  %3269 = and i32 %3268, 255
  %3270 = uitofp i32 %3269 to float
  %3271 = fmul fast float %3270, 0x3F70101020000000
  %3272 = bitcast float %3196 to i32
  %3273 = ashr i32 %3272, 1
  %3274 = sub nsw i32 1597463174, %3273
  %3275 = bitcast i32 %3274 to float
  %3276 = fmul fast float %3196, 5.000000e-01
  %3277 = fmul fast float %3275, %3275
  %3278 = fmul fast float %3277, %3276
  %3279 = fsub fast float 1.500000e+00, %3278
  %3280 = fmul fast float %3275, %3196
  %3281 = fmul fast float %3280, %3279
  %3282 = bitcast float %3197 to i32
  %3283 = ashr i32 %3282, 1
  %3284 = sub nsw i32 1597463174, %3283
  %3285 = bitcast i32 %3284 to float
  %3286 = fmul fast float %3197, 5.000000e-01
  %3287 = fmul fast float %3285, %3285
  %3288 = fmul fast float %3287, %3286
  %3289 = fsub fast float 1.500000e+00, %3288
  %3290 = fmul fast float %3285, %3197
  %3291 = fmul fast float %3290, %3289
  %3292 = bitcast float %3198 to i32
  %3293 = ashr i32 %3292, 1
  %3294 = sub nsw i32 1597463174, %3293
  %3295 = bitcast i32 %3294 to float
  %3296 = fmul fast float %3198, 5.000000e-01
  %3297 = fmul fast float %3295, %3295
  %3298 = fmul fast float %3297, %3296
  %3299 = fsub fast float 1.500000e+00, %3298
  %3300 = fmul fast float %3295, %3198
  %3301 = fmul fast float %3300, %3299
  %3302 = fsub fast float %3281, %3263
  %3303 = fsub fast float %3291, %3267
  %3304 = fsub fast float %3301, %3271
  %3305 = fmul fast float %3302, %3231
  %3306 = fmul fast float %3303, %3233
  %3307 = fmul fast float %3304, %3238
  %3308 = fadd fast float %3305, %3246
  %3309 = fadd fast float %3306, %3250
  %3310 = fadd fast float %3307, %3254
  %3311 = call float @dx.op.unary.f32(i32 7, float %3308)  ; Saturate(value)
  %3312 = call float @dx.op.unary.f32(i32 7, float %3309)  ; Saturate(value)
  %3313 = call float @dx.op.unary.f32(i32 7, float %3310)  ; Saturate(value)
  %3314 = fmul fast float %3311, %3311
  %3315 = fmul fast float %3312, %3312
  %3316 = fmul fast float %3313, %3313
  %3317 = fsub fast float %3314, %3196
  %3318 = fsub fast float %3315, %3197
  %3319 = fsub fast float %3316, %3198
  %3320 = fmul fast float %3317, %3221
  %3321 = fmul fast float %3318, %3221
  %3322 = fmul fast float %3319, %3221
  %3323 = fadd fast float %3320, %3196
  %3324 = fadd fast float %3321, %3197
  %3325 = fadd fast float %3322, %3198
  %3326 = fadd fast float %3243, %3207
  %3327 = fsub fast float %3326, %3260
  %3328 = call float @dx.op.unary.f32(i32 7, float %3327)  ; Saturate(value)
  %3329 = fsub fast float %3328, %3207
  %3330 = fmul fast float %3329, %3221
  %3331 = fadd fast float %3330, %3207
  br label %3385

; <label>:3332                                    ; preds = %3220
  %3333 = and i32 %3223, 134217728
  %3334 = icmp eq i32 %3333, 0
  br i1 %3334, label %3369, label %3335

; <label>:3335                                    ; preds = %3332
  %3336 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %3337 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %3338 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %3339 = fadd fast float %3336, -5.000000e-01
  %3340 = fadd fast float %3337, -5.000000e-01
  %3341 = fadd fast float %3338, -5.000000e-01
  %3342 = fmul fast float %3339, %3221
  %3343 = fmul fast float %3340, %3221
  %3344 = fmul fast float %3341, %3221
  %3345 = fadd fast float %3342, 5.000000e-01
  %3346 = fadd fast float %3343, 5.000000e-01
  %3347 = fadd fast float %3344, 5.000000e-01
  %3348 = call float @dx.op.unary.f32(i32 24, float %3196)  ; Sqrt(value)
  %3349 = call float @dx.op.unary.f32(i32 24, float %3197)  ; Sqrt(value)
  %3350 = call float @dx.op.unary.f32(i32 24, float %3198)  ; Sqrt(value)
  %3351 = fmul fast float %3345, 2.000000e+00
  %3352 = fsub fast float 1.000000e+00, %3351
  %3353 = fmul fast float %3352, %3348
  %3354 = fadd fast float %3353, %3351
  %3355 = fmul fast float %3354, %3348
  %3356 = fmul fast float %3346, 2.000000e+00
  %3357 = fsub fast float 1.000000e+00, %3356
  %3358 = fmul fast float %3357, %3349
  %3359 = fadd fast float %3358, %3356
  %3360 = fmul fast float %3359, %3349
  %3361 = fmul fast float %3347, 2.000000e+00
  %3362 = fsub fast float 1.000000e+00, %3361
  %3363 = fmul fast float %3362, %3350
  %3364 = fadd fast float %3363, %3361
  %3365 = fmul fast float %3364, %3350
  %3366 = fmul fast float %3355, %3355
  %3367 = fmul fast float %3360, %3360
  %3368 = fmul fast float %3365, %3365
  br label %3385

; <label>:3369                                    ; preds = %3332
  %3370 = fmul fast float %416, %416
  %3371 = fmul fast float %420, %420
  %3372 = fmul fast float %424, %424
  %3373 = fadd fast float %3370, -1.000000e+00
  %3374 = fadd fast float %3371, -1.000000e+00
  %3375 = fadd fast float %3372, -1.000000e+00
  %3376 = fmul fast float %3221, %3373
  %3377 = fmul fast float %3221, %3374
  %3378 = fmul fast float %3221, %3375
  %3379 = fadd fast float %3376, 1.000000e+00
  %3380 = fadd fast float %3377, 1.000000e+00
  %3381 = fadd fast float %3378, 1.000000e+00
  %3382 = fmul fast float %3379, %3196
  %3383 = fmul fast float %3380, %3197
  %3384 = fmul fast float %3381, %3198
  br label %3385

; <label>:3385                                    ; preds = %3369, %3335, %3226, %3182
  %3386 = phi float [ %3331, %3226 ], [ %3207, %3335 ], [ %3207, %3369 ], [ 0x3FA23C0BE0000000, %3182 ]
  %3387 = phi float [ %3323, %3226 ], [ %3366, %3335 ], [ %3382, %3369 ], [ 1.000000e+00, %3182 ]
  %3388 = phi float [ %3324, %3226 ], [ %3367, %3335 ], [ %3383, %3369 ], [ 1.000000e+00, %3182 ]
  %3389 = phi float [ %3325, %3226 ], [ %3368, %3335 ], [ %3384, %3369 ], [ 1.000000e+00, %3182 ]
  %3390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3391 = extractvalue %dx.types.CBufRet.i32 %3390, 1
  %3392 = and i32 %3391, 1
  %3393 = icmp ne i32 %3392, 0
  %3394 = add i32 %60, 356
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 32
  %3398 = icmp ne i32 %3397, 0
  %3399 = and i1 %3393, %3398
  %3400 = select i1 %3399, float 1.000000e+00, float %3387
  %3401 = select i1 %3399, float 0x3FD3333340000000, float %3388
  %3402 = select i1 %3399, float 0x3FD3333340000000, float %3389
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = and i32 %3404, 32
  %3406 = icmp eq i32 %3405, 0
  br i1 %3406, label %3479, label %3407

; <label>:3407                                    ; preds = %3385
  %3408 = add i32 %60, 140
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = add i32 %60, 452
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = add i32 %3413, 0
  %3415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3415, %dx.types.Handle %100, float %2992, float %2993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3417 = extractvalue %dx.types.ResRet.f32 %3416, 0
  %3418 = extractvalue %dx.types.ResRet.f32 %3416, 1
  %3419 = extractvalue %dx.types.ResRet.f32 %3416, 2
  %3420 = extractvalue %dx.types.ResRet.f32 %3416, 3
  %3421 = and i32 %3410, 255
  %3422 = uitofp i32 %3421 to float
  %3423 = lshr i32 %3410, 8
  %3424 = and i32 %3423, 255
  %3425 = uitofp i32 %3424 to float
  %3426 = lshr i32 %3410, 16
  %3427 = and i32 %3426, 255
  %3428 = uitofp i32 %3427 to float
  %3429 = fmul fast float %3428, 0x3F70101000000000
  %3430 = fmul fast float %3417, %3422
  %3431 = fadd fast float %3430, %3425
  %3432 = fmul fast float %3431, 0x3F70101000000000
  %3433 = fadd fast float %3418, -5.000000e-01
  %3434 = fadd fast float %3420, -5.000000e-01
  %3435 = fmul fast float %3433, %3429
  %3436 = fmul fast float %3434, %3429
  %3437 = fadd fast float %3435, 5.000000e-01
  %3438 = fadd fast float %3436, 5.000000e-01
  %3439 = fmul fast float %3437, 2.000000e+00
  %3440 = fadd fast float %3439, -1.000000e+00
  %3441 = fmul fast float %3438, 2.000000e+00
  %3442 = fadd fast float %3441, -1.000000e+00
  %3443 = fadd fast float %3440, %3442
  %3444 = fmul fast float %3443, 5.000000e-01
  %3445 = fsub fast float %3440, %3442
  %3446 = fmul fast float %3445, 5.000000e-01
  %3447 = call float @dx.op.unary.f32(i32 6, float %3444)  ; FAbs(value)
  %3448 = fsub fast float 1.000000e+00, %3447
  %3449 = call float @dx.op.unary.f32(i32 6, float %3446)  ; FAbs(value)
  %3450 = fsub fast float %3448, %3449
  %3451 = call float @dx.op.dot3.f32(i32 55, float %3444, float %3446, float %3450, float %3444, float %3446, float %3450)  ; Dot3(ax,ay,az,bx,by,bz)
  %3452 = call float @dx.op.unary.f32(i32 25, float %3451)  ; Rsqrt(value)
  %3453 = fmul fast float %3444, %3452
  %3454 = fmul fast float %3446, %3452
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = and i32 %3456, 67108864
  %3458 = icmp eq i32 %3457, 0
  br i1 %3458, label %3475, label %3459

; <label>:3459                                    ; preds = %3407
  %3460 = add i32 %60, 328
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = and i32 %3462, 65535
  %3464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3463)  ; LegacyF16ToF32(value)
  %3465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.i32 %3465, 0
  %3467 = and i32 %3466, 65535
  %3468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3467)  ; LegacyF16ToF32(value)
  %3469 = lshr i32 %3462, 16
  %3470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3469)  ; LegacyF16ToF32(value)
  %3471 = fsub fast float %3432, %3470
  %3472 = fmul fast float %3471, %3464
  %3473 = fadd fast float %3472, %3468
  %3474 = call float @dx.op.unary.f32(i32 7, float %3473)  ; Saturate(value)
  br label %3475

; <label>:3475                                    ; preds = %3459, %3407
  %3476 = phi float [ %3474, %3459 ], [ %3432, %3407 ]
  %3477 = call float @dx.op.dot2.f32(i32 54, float %3453, float %3454, float %2896, float %2897)  ; Dot2(ax,ay,bx,by)
  %3478 = call float @dx.op.dot2.f32(i32 54, float %3453, float %3454, float %2898, float %2899)  ; Dot2(ax,ay,bx,by)
  br label %3479

; <label>:3479                                    ; preds = %3475, %3385
  %3480 = phi float [ %3476, %3475 ], [ 0x3FD6666660000000, %3385 ]
  %3481 = phi float [ %3477, %3475 ], [ 0.000000e+00, %3385 ]
  %3482 = phi float [ %3478, %3475 ], [ 0.000000e+00, %3385 ]
  %3483 = phi float [ %3419, %3475 ], [ 1.000000e+00, %3385 ]
  %3484 = add i32 %60, 208
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = lshr i32 %3486, 22
  %3488 = shl nuw nsw i32 %3487, 5
  %3489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3488)  ; LegacyF16ToF32(value)
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = and i32 %3491, 64
  %3493 = icmp eq i32 %3492, 0
  br i1 %3493, label %3527, label %3494

; <label>:3494                                    ; preds = %3479
  %3495 = add i32 %60, 468
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = add i32 %3497, 0
  %3499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = and i32 %3501, 131072
  %3503 = icmp eq i32 %3502, 0
  %3504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3499, %dx.types.Handle %100, float %2992, float %2993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.ResRet.f32 %3504, 1
  %3507 = extractvalue %dx.types.ResRet.f32 %3504, 2
  %3508 = fmul fast float %3505, %404
  %3509 = fmul fast float %3506, %407
  %3510 = fmul fast float %3507, %410
  br i1 %3503, label %3517, label %3511

; <label>:3511                                    ; preds = %3494
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 0
  %3514 = fmul fast float %3513, %3508
  %3515 = fmul fast float %3513, %3509
  %3516 = fmul fast float %3513, %3510
  br label %3517

; <label>:3517                                    ; preds = %3511, %3494
  %3518 = phi float [ %3514, %3511 ], [ %3508, %3494 ]
  %3519 = phi float [ %3515, %3511 ], [ %3509, %3494 ]
  %3520 = phi float [ %3516, %3511 ], [ %3510, %3494 ]
  %3521 = fmul fast float %3518, %3489
  %3522 = select i1 %261, float %3521, float %3518
  %3523 = call float @dx.op.dot3.f32(i32 55, float %3522, float %3519, float %3520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3524 = select i1 %261, float 0.000000e+00, float %3518
  %3525 = select i1 %261, float %3523, float %3519
  %3526 = select i1 %261, float 0.000000e+00, float %3520
  br label %3527

; <label>:3527                                    ; preds = %3517, %3479
  %3528 = phi float [ %3524, %3517 ], [ 0.000000e+00, %3479 ]
  %3529 = phi float [ %3525, %3517 ], [ 0.000000e+00, %3479 ]
  %3530 = phi float [ %3526, %3517 ], [ 0.000000e+00, %3479 ]
  %3531 = add i32 %60, 144
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = and i32 %3533, 255
  %3535 = uitofp i32 %3534 to float
  %3536 = lshr i32 %3533, 8
  %3537 = and i32 %3536, 255
  %3538 = uitofp i32 %3537 to float
  %3539 = call float @dx.op.dot3.f32(i32 55, float %3400, float %3401, float %3402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3540 = fmul fast float %3538, %3539
  %3541 = fadd fast float %3540, %3535
  %3542 = fmul fast float %3541, 0x3F70101020000000
  %3543 = call float @dx.op.unary.f32(i32 7, float %3542)  ; Saturate(value)
  br i1 %2884, label %3544, label %3552

; <label>:3544                                    ; preds = %3527
  %3545 = fsub fast float 1.000000e+00, %3180
  %3546 = fmul fast float %3545, %2873
  %3547 = fmul fast float %3545, %2874
  %3548 = fmul fast float %3545, %2875
  %3549 = fmul fast float %3545, %2876
  %3550 = fmul fast float %3545, %2877
  %3551 = fmul fast float %3545, %2878
  br label %3552

; <label>:3552                                    ; preds = %3544, %3527
  %3553 = phi float [ %3546, %3544 ], [ %2873, %3527 ]
  %3554 = phi float [ %3547, %3544 ], [ %2874, %3527 ]
  %3555 = phi float [ %3548, %3544 ], [ %2875, %3527 ]
  %3556 = phi float [ %3549, %3544 ], [ %2876, %3527 ]
  %3557 = phi float [ %3550, %3544 ], [ %2877, %3527 ]
  %3558 = phi float [ %3551, %3544 ], [ %2878, %3527 ]
  %3559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = and i32 %3560, 3
  %3562 = icmp eq i32 %3561, 3
  br i1 %3562, label %3641, label %3563

; <label>:3563                                    ; preds = %3552
  %3564 = and i32 %3560, 16
  %3565 = icmp ne i32 %3564, 0
  %3566 = select i1 %3565, float %3180, float 0.000000e+00
  %3567 = icmp eq i32 %3561, 0
  br i1 %3567, label %3568, label %3596

; <label>:3568                                    ; preds = %3563
  %3569 = and i32 %3560, 64
  %3570 = icmp ne i32 %3569, 0
  %3571 = select i1 %3570, float %3180, float 0.000000e+00
  %3572 = fsub fast float %3400, %3553
  %3573 = fsub fast float %3401, %3554
  %3574 = fsub fast float %3402, %3555
  %3575 = fmul fast float %3566, %3572
  %3576 = fmul fast float %3566, %3573
  %3577 = fmul fast float %3566, %3574
  %3578 = fadd fast float %3575, %3553
  %3579 = fadd fast float %3576, %3554
  %3580 = fadd fast float %3577, %3555
  %3581 = fsub fast float %3386, %2879
  %3582 = fmul fast float %3566, %3581
  %3583 = fadd fast float %3582, %2879
  %3584 = fsub fast float %3528, %3556
  %3585 = fsub fast float %3529, %3557
  %3586 = fsub fast float %3530, %3558
  %3587 = fmul fast float %3571, %3584
  %3588 = fmul fast float %3571, %3585
  %3589 = fmul fast float %3571, %3586
  %3590 = fadd fast float %3587, %3556
  %3591 = fadd fast float %3588, %3557
  %3592 = fadd fast float %3589, %3558
  %3593 = fsub fast float %3543, %2882
  %3594 = fmul fast float %3566, %3593
  %3595 = fadd fast float %3594, %2882
  br label %3641

; <label>:3596                                    ; preds = %3563
  %3597 = icmp eq i32 %3561, 1
  br i1 %3597, label %3598, label %3611

; <label>:3598                                    ; preds = %3596
  %3599 = fadd fast float %3400, -1.000000e+00
  %3600 = fadd fast float %3401, -1.000000e+00
  %3601 = fadd fast float %3402, -1.000000e+00
  %3602 = fmul fast float %3566, %3599
  %3603 = fmul fast float %3566, %3600
  %3604 = fmul fast float %3566, %3601
  %3605 = fadd fast float %3602, 1.000000e+00
  %3606 = fadd fast float %3603, 1.000000e+00
  %3607 = fadd fast float %3604, 1.000000e+00
  %3608 = fmul fast float %3605, %3553
  %3609 = fmul fast float %3606, %3554
  %3610 = fmul fast float %3607, %3555
  br label %3641

; <label>:3611                                    ; preds = %3596
  %3612 = icmp eq i32 %3561, 2
  br i1 %3612, label %3613, label %3641

; <label>:3613                                    ; preds = %3611
  %3614 = call float @dx.op.unary.f32(i32 24, float %3400)  ; Sqrt(value)
  %3615 = call float @dx.op.unary.f32(i32 24, float %3401)  ; Sqrt(value)
  %3616 = call float @dx.op.unary.f32(i32 24, float %3402)  ; Sqrt(value)
  %3617 = fadd fast float %3614, -5.000000e-01
  %3618 = fadd fast float %3615, -5.000000e-01
  %3619 = fadd fast float %3616, -5.000000e-01
  %3620 = fmul fast float %3617, %3566
  %3621 = fmul fast float %3618, %3566
  %3622 = fmul fast float %3619, %3566
  %3623 = fadd fast float %3620, 5.000000e-01
  %3624 = fadd fast float %3621, 5.000000e-01
  %3625 = fadd fast float %3622, 5.000000e-01
  %3626 = fmul fast float %3623, 2.000000e+00
  %3627 = fsub fast float 1.000000e+00, %3626
  %3628 = fmul fast float %3627, %3553
  %3629 = fadd fast float %3628, %3626
  %3630 = fmul fast float %3629, %3553
  %3631 = fmul fast float %3624, 2.000000e+00
  %3632 = fsub fast float 1.000000e+00, %3631
  %3633 = fmul fast float %3632, %3554
  %3634 = fadd fast float %3633, %3631
  %3635 = fmul fast float %3634, %3554
  %3636 = fmul fast float %3625, 2.000000e+00
  %3637 = fsub fast float 1.000000e+00, %3636
  %3638 = fmul fast float %3637, %3555
  %3639 = fadd fast float %3638, %3636
  %3640 = fmul fast float %3639, %3555
  br label %3641

; <label>:3641                                    ; preds = %3613, %3611, %3598, %3568, %3552
  %3642 = phi float [ %3553, %3552 ], [ %3630, %3613 ], [ %3553, %3611 ], [ %3608, %3598 ], [ %3578, %3568 ]
  %3643 = phi float [ %3554, %3552 ], [ %3635, %3613 ], [ %3554, %3611 ], [ %3609, %3598 ], [ %3579, %3568 ]
  %3644 = phi float [ %3555, %3552 ], [ %3640, %3613 ], [ %3555, %3611 ], [ %3610, %3598 ], [ %3580, %3568 ]
  %3645 = phi float [ %3556, %3552 ], [ %3556, %3613 ], [ %3556, %3611 ], [ %3556, %3598 ], [ %3590, %3568 ]
  %3646 = phi float [ %3557, %3552 ], [ %3557, %3613 ], [ %3557, %3611 ], [ %3557, %3598 ], [ %3591, %3568 ]
  %3647 = phi float [ %3558, %3552 ], [ %3558, %3613 ], [ %3558, %3611 ], [ %3558, %3598 ], [ %3592, %3568 ]
  %3648 = phi float [ %2879, %3552 ], [ %2879, %3613 ], [ %2879, %3611 ], [ %2879, %3598 ], [ %3583, %3568 ]
  %3649 = phi float [ %2882, %3552 ], [ %2882, %3613 ], [ %2882, %3611 ], [ %2882, %3598 ], [ %3595, %3568 ]
  %3650 = and i32 %3560, 12
  %3651 = icmp eq i32 %3650, 12
  br i1 %3651, label %3724, label %3652

; <label>:3652                                    ; preds = %3641
  %3653 = and i32 %3560, 2097184
  %3654 = icmp eq i32 %3653, 2097184
  %3655 = select i1 %3654, float %3180, float 0.000000e+00
  %3656 = and i32 %3560, 4194336
  %3657 = icmp eq i32 %3656, 4194336
  %3658 = select i1 %3657, float %3180, float 0.000000e+00
  %3659 = and i32 %3560, 8388640
  %3660 = icmp eq i32 %3659, 8388640
  %3661 = select i1 %3660, float %3180, float 0.000000e+00
  %3662 = icmp eq i32 %3650, 0
  br i1 %3662, label %3663, label %3676

; <label>:3663                                    ; preds = %3652
  %3664 = fsub fast float %3481, %2871
  %3665 = fsub fast float %3482, %2872
  %3666 = fmul fast float %3655, %3664
  %3667 = fmul fast float %3655, %3665
  %3668 = fadd fast float %3666, %2871
  %3669 = fadd fast float %3667, %2872
  %3670 = fsub fast float %3483, %2881
  %3671 = fmul fast float %3658, %3670
  %3672 = fadd fast float %3671, %2881
  %3673 = fsub fast float %3480, %2880
  %3674 = fmul fast float %3661, %3673
  %3675 = fadd fast float %3674, %2880
  br label %3724

; <label>:3676                                    ; preds = %3652
  %3677 = icmp eq i32 %3650, 4
  br i1 %3677, label %3678, label %3710

; <label>:3678                                    ; preds = %3676
  %3679 = fmul fast float %3655, %3481
  %3680 = fmul fast float %3655, %3482
  %3681 = fadd fast float %3679, %2871
  %3682 = fadd fast float %3680, %2872
  %3683 = call float @dx.op.binary.f32(i32 36, float %2881, float %3483)  ; FMin(a,b)
  %3684 = fsub fast float %3683, %2881
  %3685 = fmul fast float %3684, %3658
  %3686 = fadd fast float %3685, %2881
  %3687 = fadd fast float %3480, %2880
  %3688 = fmul fast float %3687, 0x3FF337FAE0000000
  %3689 = fmul fast float %2880, %2880
  %3690 = fmul fast float %3480, %3480
  %3691 = fadd fast float %3690, %3689
  %3692 = fmul fast float %3691, 0x3FE5152B00000000
  %3693 = fmul fast float %2880, 0xBFCC1F85E0000000
  %3694 = fmul fast float %3693, %3480
  %3695 = fadd fast float %3694, 0xBFE1363700000000
  %3696 = fadd fast float %3695, %3688
  %3697 = fsub fast float %3696, %3692
  %3698 = fmul fast float %3687, 0x3FBA6F0D00000000
  %3699 = fmul fast float %3691, 0x3FD0432880000000
  %3700 = fmul fast float %2880, 0xBFEF110800000000
  %3701 = fmul fast float %3700, %3480
  %3702 = fadd fast float %3701, 1.000000e+00
  %3703 = fsub fast float %3702, %3698
  %3704 = fadd fast float %3703, %3699
  %3705 = fdiv fast float %3697, %3704
  %3706 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3707 = fsub fast float %3706, %2880
  %3708 = fmul fast float %3707, %3661
  %3709 = fadd fast float %3708, %2880
  br label %3724

; <label>:3710                                    ; preds = %3676
  %3711 = icmp eq i32 %3650, 8
  br i1 %3711, label %3712, label %3724

; <label>:3712                                    ; preds = %3710
  %3713 = fmul fast float %3655, %3481
  %3714 = fmul fast float %3655, %3482
  %3715 = fadd fast float %3713, %2871
  %3716 = fadd fast float %3714, %2872
  %3717 = call float @dx.op.binary.f32(i32 36, float %2881, float %3483)  ; FMin(a,b)
  %3718 = fsub fast float %3717, %2881
  %3719 = fmul fast float %3718, %3658
  %3720 = fadd fast float %3719, %2881
  %3721 = fsub fast float %3480, %2880
  %3722 = fmul fast float %3661, %3721
  %3723 = fadd fast float %3722, %2880
  br label %3724

; <label>:3724                                    ; preds = %3712, %3710, %3678, %3663, %3641, %3179, %2883, %2870
  %3725 = phi float [ %2871, %3641 ], [ %2871, %3179 ], [ %2871, %2870 ], [ %2871, %2883 ], [ %3668, %3663 ], [ %3681, %3678 ], [ %2871, %3710 ], [ %3715, %3712 ]
  %3726 = phi float [ %2872, %3641 ], [ %2872, %3179 ], [ %2872, %2870 ], [ %2872, %2883 ], [ %3669, %3663 ], [ %3682, %3678 ], [ %2872, %3710 ], [ %3716, %3712 ]
  %3727 = phi float [ %3642, %3641 ], [ %2873, %3179 ], [ %2873, %2870 ], [ %2873, %2883 ], [ %3642, %3663 ], [ %3642, %3678 ], [ %3642, %3710 ], [ %3642, %3712 ]
  %3728 = phi float [ %3643, %3641 ], [ %2874, %3179 ], [ %2874, %2870 ], [ %2874, %2883 ], [ %3643, %3663 ], [ %3643, %3678 ], [ %3643, %3710 ], [ %3643, %3712 ]
  %3729 = phi float [ %3644, %3641 ], [ %2875, %3179 ], [ %2875, %2870 ], [ %2875, %2883 ], [ %3644, %3663 ], [ %3644, %3678 ], [ %3644, %3710 ], [ %3644, %3712 ]
  %3730 = phi float [ %3645, %3641 ], [ %2876, %3179 ], [ %2876, %2870 ], [ %2876, %2883 ], [ %3645, %3663 ], [ %3645, %3678 ], [ %3645, %3710 ], [ %3645, %3712 ]
  %3731 = phi float [ %3646, %3641 ], [ %2877, %3179 ], [ %2877, %2870 ], [ %2877, %2883 ], [ %3646, %3663 ], [ %3646, %3678 ], [ %3646, %3710 ], [ %3646, %3712 ]
  %3732 = phi float [ %3647, %3641 ], [ %2878, %3179 ], [ %2878, %2870 ], [ %2878, %2883 ], [ %3647, %3663 ], [ %3647, %3678 ], [ %3647, %3710 ], [ %3647, %3712 ]
  %3733 = phi float [ %3648, %3641 ], [ %2879, %3179 ], [ %2879, %2870 ], [ %2879, %2883 ], [ %3648, %3663 ], [ %3648, %3678 ], [ %3648, %3710 ], [ %3648, %3712 ]
  %3734 = phi float [ %2880, %3641 ], [ %2880, %3179 ], [ %2880, %2870 ], [ %2880, %2883 ], [ %3675, %3663 ], [ %3709, %3678 ], [ %2880, %3710 ], [ %3723, %3712 ]
  %3735 = phi float [ %2881, %3641 ], [ %2881, %3179 ], [ %2881, %2870 ], [ %2881, %2883 ], [ %3672, %3663 ], [ %3686, %3678 ], [ %2881, %3710 ], [ %3720, %3712 ]
  %3736 = phi float [ %3649, %3641 ], [ %2882, %3179 ], [ %2882, %2870 ], [ %2882, %2883 ], [ %3649, %3663 ], [ %3649, %3678 ], [ %3649, %3710 ], [ %3649, %3712 ]
  %3737 = add i32 %60, 408
  %3738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.i32 %3738, 0
  %3740 = extractvalue %dx.types.ResRet.i32 %3738, 1
  %3741 = bitcast i32 %3739 to float
  %3742 = bitcast i32 %3740 to float
  %3743 = fcmp fast oge float %3741, 0.000000e+00
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 0
  %3746 = select i1 %3743, float %3741, float %3745
  %3747 = add i32 %60, 504
  %3748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.i32 %3748, 0
  %3750 = add i32 %3749, 0
  %3751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3750, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3752 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3751, %dx.types.Handle %101, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3753 = extractvalue %dx.types.ResRet.f32 %3752, 0
  %3754 = fmul fast float %3753, %3742
  %3755 = fadd fast float %3754, %3746
  %3756 = call float @dx.op.dot2.f32(i32 54, float %3725, float %3726, float %3725, float %3726)  ; Dot2(ax,ay,bx,by)
  %3757 = fmul fast float %3756, 0x3FE3333340000000
  %3758 = fsub fast float 1.000000e+00, %3757
  %3759 = call float @dx.op.dot3.f32(i32 55, float %3725, float %3726, float %3758, float %3725, float %3726, float %3758)  ; Dot3(ax,ay,az,bx,by,bz)
  %3760 = call float @dx.op.unary.f32(i32 25, float %3759)  ; Rsqrt(value)
  %3761 = fmul fast float %3760, %3725
  %3762 = fmul fast float %3760, %3726
  %3763 = fmul fast float %3758, %3760
  %3764 = fmul fast float %3763, %111
  %3765 = fmul fast float %3763, %112
  %3766 = fmul fast float %3763, %113
  %3767 = fmul fast float %3761, %76
  %3768 = fmul fast float %3761, %77
  %3769 = fmul fast float %3761, %78
  %3770 = fadd fast float %3764, %3767
  %3771 = fadd fast float %3765, %3768
  %3772 = fadd fast float %3766, %3769
  %3773 = fmul fast float %123, %3762
  %3774 = fmul fast float %124, %3762
  %3775 = fmul fast float %125, %3762
  %3776 = fadd fast float %3770, %3773
  %3777 = fadd fast float %3771, %3774
  %3778 = fadd fast float %3772, %3775
  %3779 = call float @dx.op.dot3.f32(i32 55, float %3776, float %3777, float %3778, float %3776, float %3777, float %3778)  ; Dot3(ax,ay,az,bx,by,bz)
  %3780 = call float @dx.op.unary.f32(i32 25, float %3779)  ; Rsqrt(value)
  %3781 = fmul fast float %3776, %3780
  %3782 = fmul fast float %3777, %3780
  %3783 = fmul fast float %3778, %3780
  %3784 = and i32 %62, 1
  %3785 = icmp eq i32 %3784, 0
  br i1 %3785, label %3786, label %4294

; <label>:3786                                    ; preds = %3724
  %3787 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %3788 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %3789 = call float @dx.op.unary.f32(i32 83, float %169)  ; DerivCoarseX(value)
  %3790 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %3791 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %3792 = call float @dx.op.unary.f32(i32 84, float %169)  ; DerivCoarseY(value)
  %3793 = fadd fast float %3787, %167
  %3794 = fadd fast float %3788, %168
  %3795 = fadd fast float %3789, %169
  %3796 = fadd fast float %3790, %167
  %3797 = fadd fast float %3791, %168
  %3798 = fadd fast float %3792, %169
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.CBufRet.f32 %3799, 1
  %3802 = extractvalue %dx.types.CBufRet.f32 %3799, 2
  %3803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3803, 2
  %3805 = extractvalue %dx.types.CBufRet.f32 %3803, 3
  %3806 = fmul fast float %3800, %104
  %3807 = fmul fast float %3806, %3804
  %3808 = fmul fast float %3801, %105
  %3809 = fmul fast float %3808, %3805
  %3810 = fptoui float %3807 to i32
  %3811 = fptoui float %3809 to i32
  %3812 = fadd fast float %3800, -1.000000e+00
  %3813 = fadd fast float %3801, -1.000000e+00
  %3814 = fptoui float %3812 to i32
  %3815 = fptoui float %3813 to i32
  %3816 = call i32 @dx.op.binary.i32(i32 40, i32 %3810, i32 %3814)  ; UMin(a,b)
  %3817 = call i32 @dx.op.binary.i32(i32 40, i32 %3811, i32 %3815)  ; UMin(a,b)
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 2
  %3820 = extractvalue %dx.types.CBufRet.f32 %3818, 3
  %3821 = fmul fast float %3819, %92
  %3822 = fsub fast float %3821, %3820
  %3823 = fadd fast float %3802, -1.000000e+00
  %3824 = call float @dx.op.binary.f32(i32 36, float %3822, float %3823)  ; FMin(a,b)
  %3825 = fptoui float %3824 to i32
  %3826 = fptoui float %3800 to i32
  %3827 = fptoui float %3801 to i32
  %3828 = mul i32 %3825, %3827
  %3829 = add i32 %3828, %3817
  %3830 = mul i32 %3829, %3826
  %3831 = add i32 %3830, %3816
  %3832 = shl i32 %3831, 2
  %3833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.i32 %3833, 0
  %3835 = and i32 %3834, 1023
  %3836 = lshr i32 %3834, 10
  %3837 = icmp eq i32 %3835, 0
  br i1 %3837, label %4263, label %3838

; <label>:3838                                    ; preds = %3786
  %3839 = and i32 %3834, 1023
  br label %3840

; <label>:3840                                    ; preds = %3966, %3838
  %3841 = phi i32 [ %3916, %3966 ], [ 0, %3838 ]
  %3842 = phi float [ %3967, %3966 ], [ 0.000000e+00, %3838 ]
  %3843 = phi float [ %3968, %3966 ], [ %3755, %3838 ]
  %3844 = phi float [ %3969, %3966 ], [ %3736, %3838 ]
  %3845 = phi float [ %3970, %3966 ], [ 0.000000e+00, %3838 ]
  %3846 = phi float [ %3971, %3966 ], [ 0.000000e+00, %3838 ]
  %3847 = phi float [ %3972, %3966 ], [ %3730, %3838 ]
  %3848 = phi float [ %3973, %3966 ], [ %3731, %3838 ]
  %3849 = phi float [ %3974, %3966 ], [ %3732, %3838 ]
  %3850 = phi float [ %3975, %3966 ], [ %3781, %3838 ]
  %3851 = phi float [ %3976, %3966 ], [ %3782, %3838 ]
  %3852 = phi float [ %3977, %3966 ], [ %3783, %3838 ]
  %3853 = phi float [ %3978, %3966 ], [ %3735, %3838 ]
  %3854 = phi float [ %3979, %3966 ], [ %3734, %3838 ]
  %3855 = phi float [ %3980, %3966 ], [ 0.000000e+00, %3838 ]
  %3856 = phi float [ %3981, %3966 ], [ %3733, %3838 ]
  %3857 = phi float [ %3982, %3966 ], [ %3727, %3838 ]
  %3858 = phi float [ %3983, %3966 ], [ %3728, %3838 ]
  %3859 = phi float [ %3984, %3966 ], [ %3729, %3838 ]
  %3860 = add nuw nsw i32 %3841, %3836
  %3861 = shl i32 %3860, 2
  %3862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.i32 %3862, 0
  %3864 = shl i32 %3863, 8
  %3865 = or i32 %3864, 48
  %3866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3865, i32 undef)  ; BufferLoad(srv,index,wot)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.ResRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.ResRet.f32 %3866, 2
  %3870 = extractvalue %dx.types.ResRet.f32 %3866, 3
  %3871 = or i32 %3864, 64
  %3872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.i32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.i32 %3872, 1
  %3875 = or i32 %3864, 80
  %3876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.f32 %3876, 2
  %3878 = extractvalue %dx.types.ResRet.f32 %3876, 3
  %3879 = or i32 %3864, 96
  %3880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.ResRet.f32 %3880, 1
  %3883 = extractvalue %dx.types.ResRet.f32 %3880, 2
  %3884 = extractvalue %dx.types.ResRet.f32 %3880, 3
  %3885 = or i32 %3864, 112
  %3886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.f32 %3886, 2
  %3888 = or i32 %3864, 128
  %3889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.f32 %3889, 0
  %3891 = extractvalue %dx.types.ResRet.f32 %3889, 1
  %3892 = extractvalue %dx.types.ResRet.f32 %3889, 2
  %3893 = extractvalue %dx.types.ResRet.f32 %3889, 3
  %3894 = or i32 %3864, 144
  %3895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3894, i32 undef)  ; BufferLoad(srv,index,wot)
  %3896 = extractvalue %dx.types.ResRet.f32 %3895, 0
  %3897 = extractvalue %dx.types.ResRet.f32 %3895, 1
  %3898 = extractvalue %dx.types.ResRet.f32 %3895, 2
  %3899 = extractvalue %dx.types.ResRet.f32 %3895, 3
  %3900 = or i32 %3864, 160
  %3901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.ResRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.ResRet.f32 %3901, 2
  %3905 = extractvalue %dx.types.ResRet.f32 %3901, 3
  %3906 = or i32 %3864, 192
  %3907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.i32 %3907, 0
  %3909 = or i32 %3864, 208
  %3910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3909, i32 undef)  ; BufferLoad(srv,index,wot)
  %3911 = extractvalue %dx.types.ResRet.f32 %3910, 0
  %3912 = or i32 %3864, 248
  %3913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.f32 %3913, 0
  %3915 = extractvalue %dx.types.ResRet.f32 %3913, 1
  %3916 = add nuw nsw i32 %3841, 1
  %3917 = bitcast float %3870 to i32
  %3918 = and i32 %3917, 512
  %3919 = icmp eq i32 %3918, 0
  %3920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.ResRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.ResRet.f32 %3920, 2
  %3924 = extractvalue %dx.types.ResRet.f32 %3920, 3
  %3925 = call float @dx.op.dot4.f32(i32 56, float %3921, float %3922, float %3923, float %3924, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3926 = or i32 %3864, 16
  %3927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.ResRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.ResRet.f32 %3927, 2
  %3931 = extractvalue %dx.types.ResRet.f32 %3927, 3
  %3932 = call float @dx.op.dot4.f32(i32 56, float %3928, float %3929, float %3930, float %3931, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3933 = or i32 %3864, 32
  %3934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.f32 %3934, 0
  %3936 = extractvalue %dx.types.ResRet.f32 %3934, 1
  %3937 = extractvalue %dx.types.ResRet.f32 %3934, 2
  %3938 = extractvalue %dx.types.ResRet.f32 %3934, 3
  %3939 = call float @dx.op.dot4.f32(i32 56, float %3935, float %3936, float %3937, float %3938, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3940 = call float @dx.op.unary.f32(i32 27, float %3925)  ; Round_ni(value)
  %3941 = call float @dx.op.unary.f32(i32 6, float %3940)  ; FAbs(value)
  %3942 = call float @dx.op.unary.f32(i32 27, float %3932)  ; Round_ni(value)
  %3943 = call float @dx.op.unary.f32(i32 6, float %3942)  ; FAbs(value)
  %3944 = call float @dx.op.unary.f32(i32 6, float %3939)  ; FAbs(value)
  %3945 = call float @dx.op.unary.f32(i32 27, float %3944)  ; Round_ni(value)
  %3946 = fadd fast float %3943, %3941
  %3947 = fadd fast float %3946, %3945
  %3948 = fcmp fast oeq float %3947, 0.000000e+00
  %3949 = call float @dx.op.dot4.f32(i32 56, float %3921, float %3922, float %3923, float %3924, float %3793, float %3794, float %3795, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3950 = call float @dx.op.dot4.f32(i32 56, float %3928, float %3929, float %3930, float %3931, float %3793, float %3794, float %3795, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3951 = call float @dx.op.dot4.f32(i32 56, float %3921, float %3922, float %3923, float %3924, float %3796, float %3797, float %3798, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3952 = call float @dx.op.dot4.f32(i32 56, float %3928, float %3929, float %3930, float %3931, float %3796, float %3797, float %3798, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3953 = fsub fast float %3949, %3925
  %3954 = fsub fast float %3951, %3925
  %3955 = fsub fast float %3950, %3932
  %3956 = fsub fast float %3952, %3932
  %3957 = call float @dx.op.dot3.f32(i32 55, float %3867, float %3868, float %3869, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 2
  %3960 = fadd fast float %3959, %3957
  %3961 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  %3962 = extractvalue %dx.types.CBufRet.f32 %3958, 0
  %3963 = fcmp fast ogt float %3961, %3962
  %3964 = and i1 %3948, %3963
  %3965 = and i1 %3919, %3964
  br i1 %3965, label %3986, label %3966

; <label>:3966                                    ; preds = %4249, %4067, %3986, %3840
  %3967 = phi float [ %3842, %3986 ], [ %4070, %4067 ], [ %4070, %4249 ], [ %3842, %3840 ]
  %3968 = phi float [ %3843, %3986 ], [ %3843, %4067 ], [ %4224, %4249 ], [ %3843, %3840 ]
  %3969 = phi float [ %3844, %3986 ], [ %3844, %4067 ], [ %4222, %4249 ], [ %3844, %3840 ]
  %3970 = phi float [ %3845, %3986 ], [ %3845, %4067 ], [ %4194, %4249 ], [ %3845, %3840 ]
  %3971 = phi float [ %3846, %3986 ], [ %3846, %4067 ], [ %4192, %4249 ], [ %3846, %3840 ]
  %3972 = phi float [ %3847, %3986 ], [ %3847, %4067 ], [ %4259, %4249 ], [ %3847, %3840 ]
  %3973 = phi float [ %3848, %3986 ], [ %3848, %4067 ], [ %4260, %4249 ], [ %3848, %3840 ]
  %3974 = phi float [ %3849, %3986 ], [ %3849, %4067 ], [ %4261, %4249 ], [ %3849, %3840 ]
  %3975 = phi float [ %3850, %3986 ], [ %3850, %4067 ], [ %4173, %4249 ], [ %3850, %3840 ]
  %3976 = phi float [ %3851, %3986 ], [ %3851, %4067 ], [ %4174, %4249 ], [ %3851, %3840 ]
  %3977 = phi float [ %3852, %3986 ], [ %3852, %4067 ], [ %4175, %4249 ], [ %3852, %3840 ]
  %3978 = phi float [ %3853, %3986 ], [ %3853, %4067 ], [ %4202, %4249 ], [ %3853, %3840 ]
  %3979 = phi float [ %3854, %3986 ], [ %3854, %4067 ], [ %4199, %4249 ], [ %3854, %3840 ]
  %3980 = phi float [ %3855, %3986 ], [ %3855, %4067 ], [ %4196, %4249 ], [ %3855, %3840 ]
  %3981 = phi float [ %3856, %3986 ], [ %3856, %4067 ], [ %4190, %4249 ], [ %3856, %3840 ]
  %3982 = phi float [ %3857, %3986 ], [ %3857, %4067 ], [ %4185, %4249 ], [ %3857, %3840 ]
  %3983 = phi float [ %3858, %3986 ], [ %3858, %4067 ], [ %4186, %4249 ], [ %3858, %3840 ]
  %3984 = phi float [ %3859, %3986 ], [ %3859, %4067 ], [ %4187, %4249 ], [ %3859, %3840 ]
  %3985 = icmp eq i32 %3916, %3839
  br i1 %3985, label %4262, label %3840

; <label>:3986                                    ; preds = %3840
  %3987 = extractvalue %dx.types.ResRet.f32 %3886, 3
  %3988 = extractvalue %dx.types.ResRet.f32 %3886, 1
  %3989 = extractvalue %dx.types.ResRet.f32 %3886, 0
  %3990 = extractvalue %dx.types.ResRet.f32 %3876, 1
  %3991 = extractvalue %dx.types.ResRet.f32 %3876, 0
  %3992 = extractvalue %dx.types.ResRet.i32 %3872, 3
  %3993 = extractvalue %dx.types.ResRet.i32 %3872, 2
  %3994 = add i32 %3992, 0
  %3995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3994, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3997 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3995, %dx.types.Handle %3996, float %3925, float %3932, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3955, float undef, float %3954, float %3956, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3998 = extractvalue %dx.types.ResRet.f32 %3997, 0
  %3999 = fmul fast float %3998, %3991
  %4000 = fadd fast float %3999, %3990
  %4001 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4002 = fmul fast float %3925, %3881
  %4003 = call float @dx.op.tertiary.f32(i32 46, float %3882, float %3932, float %4002)  ; FMad(a,b,c)
  %4004 = fadd fast float %4003, %3989
  %4005 = fmul fast float %3925, %3883
  %4006 = call float @dx.op.tertiary.f32(i32 46, float %3884, float %3932, float %4005)  ; FMad(a,b,c)
  %4007 = fadd fast float %4006, %3988
  %4008 = fmul fast float %3953, %3881
  %4009 = call float @dx.op.tertiary.f32(i32 46, float %3882, float %3955, float %4008)  ; FMad(a,b,c)
  %4010 = fmul fast float %3953, %3883
  %4011 = call float @dx.op.tertiary.f32(i32 46, float %3884, float %3955, float %4010)  ; FMad(a,b,c)
  %4012 = fmul fast float %3954, %3881
  %4013 = call float @dx.op.tertiary.f32(i32 46, float %3882, float %3956, float %4012)  ; FMad(a,b,c)
  %4014 = fmul fast float %3954, %3883
  %4015 = call float @dx.op.tertiary.f32(i32 46, float %3884, float %3956, float %4014)  ; FMad(a,b,c)
  %4016 = add i32 %3993, 0
  %4017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4016, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4018 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4017, %dx.types.Handle %3996, float %4004, float %4007, float undef, float undef, i32 0, i32 0, i32 undef, float %4009, float %4011, float undef, float %4013, float %4015, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4019 = extractvalue %dx.types.ResRet.f32 %4018, 0
  %4020 = and i32 %3917, 1024
  %4021 = icmp ne i32 %4020, 0
  %4022 = fcmp fast ogt float %4019, 0x3FE0101020000000
  %4023 = uitofp i1 %4022 to float
  %4024 = select i1 %4021, float %4023, float %4019
  %4025 = and i32 %3917, 8192
  %4026 = icmp ne i32 %4025, 0
  %4027 = select i1 %4026, float %3987, float 1.000000e+00
  %4028 = fmul fast float %3925, 2.000000e+00
  %4029 = fadd fast float %4028, -1.000000e+00
  %4030 = call float @dx.op.unary.f32(i32 6, float %4029)  ; FAbs(value)
  %4031 = fmul fast float %4030, %3914
  %4032 = fsub fast float %4031, %3914
  %4033 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4034 = fmul fast float %3932, 2.000000e+00
  %4035 = fadd fast float %4034, -1.000000e+00
  %4036 = call float @dx.op.unary.f32(i32 6, float %4035)  ; FAbs(value)
  %4037 = fmul fast float %4036, %3915
  %4038 = fsub fast float %4037, %3915
  %4039 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4040 = fmul fast float %3944, %3877
  %4041 = fsub fast float %4040, %3877
  %4042 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4043 = fmul fast float %4001, %4027
  %4044 = fmul fast float %4043, %3998
  %4045 = fmul fast float %4044, %4033
  %4046 = fmul fast float %4045, %4024
  %4047 = fmul fast float %4046, %4039
  %4048 = fmul fast float %4047, %4042
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 1
  %4051 = extractvalue %dx.types.CBufRet.f32 %4049, 0
  %4052 = fsub fast float %3961, %4051
  %4053 = fmul fast float %4052, %4050
  %4054 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4055 = fmul fast float %4048, %3878
  %4056 = fadd fast float %4048, %3878
  %4057 = fmul fast float %4056, %3887
  %4058 = fsub fast float %4057, %3887
  %4059 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4060 = and i32 %3917, 128
  %4061 = icmp ne i32 %4060, 0
  %4062 = select i1 %4061, float %4059, float %4055
  %4063 = fmul fast float %4062, %4054
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 0
  %4066 = fcmp fast ugt float %4063, %4065
  br i1 %4066, label %4067, label %3966

; <label>:4067                                    ; preds = %3986
  %4068 = select i1 %4026, float %4063, float 0.000000e+00
  %4069 = fadd fast float %4068, %3842
  %4070 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  br i1 %4026, label %3966, label %4071

; <label>:4071                                    ; preds = %4067
  %4072 = and i32 %3917, 4
  %4073 = and i32 %3917, 8
  %4074 = add i32 %3873, 0
  %4075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4074, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4076 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4077 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4075, %dx.types.Handle %4076, float %4004, float %4007, float undef, float undef, i32 0, i32 0, i32 undef, float %4009, float %4011, float undef, float %4013, float %4015, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4078 = extractvalue %dx.types.ResRet.f32 %4077, 0
  %4079 = extractvalue %dx.types.ResRet.f32 %4077, 1
  %4080 = extractvalue %dx.types.ResRet.f32 %4077, 2
  %4081 = extractvalue %dx.types.ResRet.f32 %4077, 3
  %4082 = bitcast float %3899 to i32
  %4083 = and i32 %4082, 255
  %4084 = uitofp i32 %4083 to float
  %4085 = lshr i32 %4082, 8
  %4086 = and i32 %4085, 255
  %4087 = uitofp i32 %4086 to float
  %4088 = fmul fast float %4081, %4084
  %4089 = fadd fast float %4088, %4087
  %4090 = fmul fast float %4089, 0x3F70101000000000
  %4091 = add i32 %3874, 0
  %4092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4091, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4093 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4092, %dx.types.Handle %4076, float %4004, float %4007, float undef, float undef, i32 0, i32 0, i32 undef, float %4009, float %4011, float undef, float %4013, float %4015, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = extractvalue %dx.types.ResRet.f32 %4093, 1
  %4096 = extractvalue %dx.types.ResRet.f32 %4093, 2
  %4097 = extractvalue %dx.types.ResRet.f32 %4093, 3
  %4098 = bitcast float %3893 to i32
  %4099 = and i32 %4098, 255
  %4100 = uitofp i32 %4099 to float
  %4101 = lshr i32 %4098, 8
  %4102 = and i32 %4101, 255
  %4103 = uitofp i32 %4102 to float
  %4104 = lshr i32 %4098, 16
  %4105 = and i32 %4104, 255
  %4106 = uitofp i32 %4105 to float
  %4107 = fmul fast float %4106, 0x3F70101000000000
  %4108 = fmul fast float %4094, %4100
  %4109 = fadd fast float %4108, %4103
  %4110 = fmul fast float %4109, 0x3F70101000000000
  %4111 = fadd fast float %4095, -5.000000e-01
  %4112 = fadd fast float %4097, -5.000000e-01
  %4113 = fmul fast float %4111, %4107
  %4114 = fmul fast float %4112, %4107
  %4115 = fadd fast float %4113, 5.000000e-01
  %4116 = fadd fast float %4114, 5.000000e-01
  %4117 = fmul fast float %4078, %3902
  %4118 = fmul fast float %4079, %3903
  %4119 = fmul fast float %4080, %3904
  %4120 = fmul fast float %4115, 2.000000e+00
  %4121 = fadd fast float %4120, -1.000000e+00
  %4122 = fmul fast float %4116, 2.000000e+00
  %4123 = fadd fast float %4122, -1.000000e+00
  %4124 = fadd fast float %4121, %4123
  %4125 = fmul fast float %4124, 5.000000e-01
  %4126 = fsub fast float %4121, %4123
  %4127 = fmul fast float %4126, 5.000000e-01
  %4128 = call float @dx.op.unary.f32(i32 6, float %4125)  ; FAbs(value)
  %4129 = fsub fast float 1.000000e+00, %4128
  %4130 = call float @dx.op.unary.f32(i32 6, float %4127)  ; FAbs(value)
  %4131 = fsub fast float %4129, %4130
  %4132 = call float @dx.op.dot3.f32(i32 55, float %4125, float %4127, float %4131, float %4125, float %4127, float %4131)  ; Dot3(ax,ay,az,bx,by,bz)
  %4133 = call float @dx.op.unary.f32(i32 25, float %4132)  ; Rsqrt(value)
  %4134 = fmul fast float %4125, %4133
  %4135 = fmul fast float %4127, %4133
  %4136 = fmul fast float %4133, %4131
  %4137 = fmul fast float %4136, %3867
  %4138 = fmul fast float %4136, %3868
  %4139 = fmul fast float %4136, %3869
  %4140 = fmul fast float %4134, %3890
  %4141 = fmul fast float %4134, %3891
  %4142 = fmul fast float %4134, %3892
  %4143 = fadd fast float %4140, %4137
  %4144 = fadd fast float %4141, %4138
  %4145 = fadd fast float %4142, %4139
  %4146 = fmul fast float %4135, %3896
  %4147 = fmul fast float %4135, %3897
  %4148 = fmul fast float %4135, %3898
  %4149 = fadd fast float %4143, %4146
  %4150 = fadd fast float %4144, %4147
  %4151 = fadd fast float %4145, %4148
  %4152 = call float @dx.op.dot3.f32(i32 55, float %4149, float %4150, float %4151, float %4149, float %4150, float %4151)  ; Dot3(ax,ay,az,bx,by,bz)
  %4153 = call float @dx.op.unary.f32(i32 25, float %4152)  ; Rsqrt(value)
  %4154 = fmul fast float %4149, %4153
  %4155 = fmul fast float %4150, %4153
  %4156 = fmul fast float %4151, %4153
  %4157 = icmp ne i32 %4073, 0
  %4158 = select i1 %4157, float 1.000000e+00, float 0.000000e+00
  %4159 = fmul fast float %4063, %4158
  %4160 = and i32 %3917, 1
  %4161 = icmp eq i32 %4160, 0
  br i1 %4161, label %4162, label %4166

; <label>:4162                                    ; preds = %4071
  %4163 = fsub fast float %4154, %3850
  %4164 = fsub fast float %4155, %3851
  %4165 = fsub fast float %4156, %3852
  br label %4166

; <label>:4166                                    ; preds = %4162, %4071
  %4167 = phi float [ %4163, %4162 ], [ %4154, %4071 ]
  %4168 = phi float [ %4164, %4162 ], [ %4155, %4071 ]
  %4169 = phi float [ %4165, %4162 ], [ %4156, %4071 ]
  %4170 = fmul float %4169, %4159
  %4171 = fmul float %4168, %4159
  %4172 = fmul float %4167, %4159
  %4173 = fadd fast float %4172, %3850
  %4174 = fadd fast float %4171, %3851
  %4175 = fadd fast float %4170, %3852
  %4176 = icmp ne i32 %4072, 0
  %4177 = select i1 %4176, float 1.000000e+00, float 0.000000e+00
  %4178 = fmul fast float %4063, %4177
  %4179 = fsub fast float %4117, %3857
  %4180 = fsub fast float %4118, %3858
  %4181 = fsub fast float %4119, %3859
  %4182 = fmul fast float %4179, %4178
  %4183 = fmul fast float %4180, %4178
  %4184 = fmul fast float %4181, %4178
  %4185 = fadd fast float %4182, %3857
  %4186 = fadd fast float %4183, %3858
  %4187 = fadd fast float %4184, %3859
  %4188 = fsub fast float %4090, %3856
  %4189 = fmul fast float %4188, %4178
  %4190 = fadd fast float %4189, %3856
  %4191 = fmul fast float %4178, %3846
  %4192 = fsub fast float %3846, %4191
  %4193 = fmul fast float %4178, %3845
  %4194 = fsub fast float %3845, %4193
  %4195 = fadd fast float %4063, %3855
  %4196 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4197 = fsub fast float %4110, %3854
  %4198 = fmul fast float %4197, %4159
  %4199 = fadd fast float %4198, %3854
  %4200 = fsub fast float %4096, %3853
  %4201 = fmul fast float %4200, %4159
  %4202 = fadd fast float %4201, %3853
  %4203 = call float @dx.op.dot3.f32(i32 55, float %4117, float %4118, float %4119, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.CBufRet.f32 %4204, 1
  %4207 = fmul fast float %4206, %4203
  %4208 = fadd fast float %4207, %4205
  %4209 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  %4210 = bitcast float %3905 to i32
  %4211 = and i32 %4210, 65535
  %4212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4211)  ; LegacyF16ToF32(value)
  %4213 = lshr i32 %4210, 16
  %4214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4213)  ; LegacyF16ToF32(value)
  %4215 = fcmp fast oge float %4212, 0.000000e+00
  %4216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4217 = extractvalue %dx.types.CBufRet.f32 %4216, 0
  %4218 = select i1 %4215, float %4212, float %4217
  %4219 = fadd fast float %4218, %4214
  %4220 = fsub fast float %4209, %3844
  %4221 = fmul fast float %4220, %4063
  %4222 = fadd fast float %4221, %3844
  %4223 = fmul fast float %4219, %4063
  %4224 = call float @dx.op.binary.f32(i32 35, float %3843, float %4223)  ; FMax(a,b)
  %4225 = and i32 %3917, 16
  %4226 = icmp eq i32 %4225, 0
  br i1 %4226, label %4249, label %4227

; <label>:4227                                    ; preds = %4166
  %4228 = bitcast float %3911 to i32
  %4229 = add i32 %3908, 0
  %4230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4229, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4231 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4230, %dx.types.Handle %4076, float %4004, float %4007, float undef, float undef, i32 0, i32 0, i32 undef, float %4009, float %4011, float undef, float %4013, float %4015, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.ResRet.f32 %4231, 1
  %4234 = extractvalue %dx.types.ResRet.f32 %4231, 2
  %4235 = and i32 %4228, 65535
  %4236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4235)  ; LegacyF16ToF32(value)
  %4237 = fmul fast float %4232, %3902
  %4238 = fmul fast float %4233, %3903
  %4239 = fmul fast float %4234, %3904
  %4240 = and i32 %3917, 16384
  %4241 = icmp ne i32 %4240, 0
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 0
  %4244 = select i1 %4241, float %4243, float 1.000000e+00
  %4245 = fmul fast float %4244, %4236
  %4246 = fmul fast float %4237, %4245
  %4247 = fmul fast float %4238, %4245
  %4248 = fmul fast float %4239, %4245
  br label %4249

; <label>:4249                                    ; preds = %4227, %4166
  %4250 = phi float [ %4246, %4227 ], [ 0.000000e+00, %4166 ]
  %4251 = phi float [ %4247, %4227 ], [ 0.000000e+00, %4166 ]
  %4252 = phi float [ %4248, %4227 ], [ 0.000000e+00, %4166 ]
  %4253 = fsub fast float %4250, %3847
  %4254 = fsub fast float %4251, %3848
  %4255 = fsub fast float %4252, %3849
  %4256 = fmul fast float %4253, %4063
  %4257 = fmul fast float %4254, %4063
  %4258 = fmul fast float %4255, %4063
  %4259 = fadd fast float %4256, %3847
  %4260 = fadd fast float %4257, %3848
  %4261 = fadd fast float %4258, %3849
  br label %3966

; <label>:4262                                    ; preds = %3966
  br label %4263

; <label>:4263                                    ; preds = %4262, %3786
  %4264 = phi float [ 0.000000e+00, %3786 ], [ %3967, %4262 ]
  %4265 = phi float [ %3755, %3786 ], [ %3968, %4262 ]
  %4266 = phi float [ %3736, %3786 ], [ %3969, %4262 ]
  %4267 = phi float [ 0.000000e+00, %3786 ], [ %3970, %4262 ]
  %4268 = phi float [ 0.000000e+00, %3786 ], [ %3971, %4262 ]
  %4269 = phi float [ %3730, %3786 ], [ %3972, %4262 ]
  %4270 = phi float [ %3731, %3786 ], [ %3973, %4262 ]
  %4271 = phi float [ %3732, %3786 ], [ %3974, %4262 ]
  %4272 = phi float [ %3781, %3786 ], [ %3975, %4262 ]
  %4273 = phi float [ %3782, %3786 ], [ %3976, %4262 ]
  %4274 = phi float [ %3783, %3786 ], [ %3977, %4262 ]
  %4275 = phi float [ %3735, %3786 ], [ %3978, %4262 ]
  %4276 = phi float [ %3734, %3786 ], [ %3979, %4262 ]
  %4277 = phi float [ 0.000000e+00, %3786 ], [ %3980, %4262 ]
  %4278 = phi float [ %3733, %3786 ], [ %3981, %4262 ]
  %4279 = phi float [ %3727, %3786 ], [ %3982, %4262 ]
  %4280 = phi float [ %3728, %3786 ], [ %3983, %4262 ]
  %4281 = phi float [ %3729, %3786 ], [ %3984, %4262 ]
  %4282 = call float @dx.op.dot3.f32(i32 55, float %4272, float %4273, float %4274, float %4272, float %4273, float %4274)  ; Dot3(ax,ay,az,bx,by,bz)
  %4283 = call float @dx.op.unary.f32(i32 25, float %4282)  ; Rsqrt(value)
  %4284 = fmul fast float %4283, %4272
  %4285 = fmul fast float %4283, %4273
  %4286 = fmul fast float %4283, %4274
  %4287 = fadd fast float %4277, %1171
  %4288 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4289 = call float @dx.op.dot3.f32(i32 55, float %4284, float %4285, float %4286, float %4284, float %4285, float %4286)  ; Dot3(ax,ay,az,bx,by,bz)
  %4290 = call float @dx.op.unary.f32(i32 25, float %4289)  ; Rsqrt(value)
  %4291 = fmul fast float %4290, %4284
  %4292 = fmul fast float %4290, %4285
  %4293 = fmul fast float %4290, %4286
  br label %4294

; <label>:4294                                    ; preds = %4263, %3724
  %4295 = phi float [ %4291, %4263 ], [ %3781, %3724 ]
  %4296 = phi float [ %4292, %4263 ], [ %3782, %3724 ]
  %4297 = phi float [ %4293, %4263 ], [ %3783, %3724 ]
  %4298 = phi float [ %4279, %4263 ], [ %3727, %3724 ]
  %4299 = phi float [ %4280, %4263 ], [ %3728, %3724 ]
  %4300 = phi float [ %4281, %4263 ], [ %3729, %3724 ]
  %4301 = phi float [ %4269, %4263 ], [ %3730, %3724 ]
  %4302 = phi float [ %4270, %4263 ], [ %3731, %3724 ]
  %4303 = phi float [ %4271, %4263 ], [ %3732, %3724 ]
  %4304 = phi float [ %4278, %4263 ], [ %3733, %3724 ]
  %4305 = phi float [ %4288, %4263 ], [ %1171, %3724 ]
  %4306 = phi float [ %4276, %4263 ], [ %3734, %3724 ]
  %4307 = phi float [ %4275, %4263 ], [ %3735, %3724 ]
  %4308 = phi float [ %4268, %4263 ], [ 0.000000e+00, %3724 ]
  %4309 = phi float [ %4267, %4263 ], [ 0.000000e+00, %3724 ]
  %4310 = phi float [ %4264, %4263 ], [ 0.000000e+00, %3724 ]
  %4311 = phi float [ %4265, %4263 ], [ %3755, %3724 ]
  %4312 = phi float [ %4266, %4263 ], [ %3736, %3724 ]
  %4313 = add i32 %60, 392
  %4314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4313, i32 undef)  ; BufferLoad(srv,index,wot)
  %4315 = extractvalue %dx.types.ResRet.i32 %4314, 0
  %4316 = extractvalue %dx.types.ResRet.i32 %4314, 1
  %4317 = extractvalue %dx.types.ResRet.i32 %4314, 2
  %4318 = extractvalue %dx.types.ResRet.i32 %4314, 3
  %4319 = bitcast i32 %4315 to float
  %4320 = bitcast i32 %4316 to float
  %4321 = bitcast i32 %4317 to float
  %4322 = bitcast i32 %4318 to float
  %4323 = fsub fast float %4298, %4319
  %4324 = fsub fast float %4299, %4320
  %4325 = fsub fast float %4300, %4321
  %4326 = fmul fast float %4323, %201
  %4327 = fmul fast float %4324, %201
  %4328 = fmul fast float %4325, %201
  %4329 = fadd fast float %4326, %4319
  %4330 = fadd fast float %4327, %4320
  %4331 = fadd fast float %4328, %4321
  %4332 = fsub fast float %4305, %4322
  %4333 = fmul fast float %4332, %201
  %4334 = fadd fast float %4333, %4322
  %4335 = fadd fast float %4304, 0xBFB99999A0000000
  %4336 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4337 = fmul fast float %4336, 0x3FF1C71C80000000
  %4338 = call float @dx.op.binary.f32(i32 36, float %4304, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4339 = fsub fast float 1.000000e+00, %4337
  %4340 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4341 = fmul fast float %4329, %4340
  %4342 = fmul fast float %4330, %4340
  %4343 = fmul fast float %4331, %4340
  %4344 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4345 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4346 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4347 = fmul fast float %4329, %4337
  %4348 = fmul fast float %4330, %4337
  %4349 = fmul fast float %4331, %4337
  %4350 = fadd fast float %4347, %4338
  %4351 = fadd fast float %4348, %4338
  %4352 = fadd fast float %4349, %4338
  %4353 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4354 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4355 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4356 = call float @dx.op.unary.f32(i32 7, float %4306)  ; Saturate(value)
  %4357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.i32 %4357, 3
  %4359 = and i32 %4358, 8
  %4360 = icmp ne i32 %4359, 0
  %4361 = call float @dx.op.binary.f32(i32 35, float %4344, float %4329)  ; FMax(a,b)
  %4362 = call float @dx.op.binary.f32(i32 35, float %4345, float %4329)  ; FMax(a,b)
  %4363 = call float @dx.op.binary.f32(i32 35, float %4346, float %4329)  ; FMax(a,b)
  %4364 = call float @dx.op.dot3.f32(i32 55, float %4344, float %4345, float %4346, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4365 = select i1 %261, float %4329, float %4344
  %4366 = select i1 %261, float %4364, float %4345
  %4367 = select i1 %261, float 1.000000e+00, float %4346
  %4368 = select i1 %4360, float %4361, float %4365
  %4369 = select i1 %4360, float %4362, float %4366
  %4370 = select i1 %4360, float %4363, float %4367
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.CBufRet.f32 %4371, 1
  %4374 = extractvalue %dx.types.CBufRet.f32 %4371, 2
  %4375 = fadd fast float %4372, %167
  %4376 = fadd fast float %4373, %168
  %4377 = fadd fast float %4374, %169
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %4380 = extractvalue %dx.types.CBufRet.f32 %4378, 1
  %4381 = fsub fast float %4375, %4379
  %4382 = fsub fast float %4376, %4380
  %4383 = fmul fast float %4381, %4381
  %4384 = fmul fast float %4382, %4382
  %4385 = fadd fast float %4383, %4384
  %4386 = call float @dx.op.unary.f32(i32 24, float %4385)  ; Sqrt(value)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4378, 2
  %4388 = fcmp fast olt float %4386, %4387
  br i1 %4388, label %4389, label %4456

; <label>:4389                                    ; preds = %4294
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 0
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 0
  %4394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4394, 0
  %4396 = extractvalue %dx.types.CBufRet.f32 %4390, 1
  %4397 = extractvalue %dx.types.CBufRet.f32 %4392, 1
  %4398 = extractvalue %dx.types.CBufRet.f32 %4394, 1
  %4399 = extractvalue %dx.types.CBufRet.f32 %4390, 3
  %4400 = extractvalue %dx.types.CBufRet.f32 %4392, 3
  %4401 = extractvalue %dx.types.CBufRet.f32 %4394, 3
  %4402 = fadd fast float %4399, %4375
  %4403 = fadd fast float %4400, %4376
  %4404 = fadd fast float %4401, %4377
  %4405 = fmul fast float %4402, %4391
  %4406 = call float @dx.op.tertiary.f32(i32 46, float %4403, float %4393, float %4405)  ; FMad(a,b,c)
  %4407 = call float @dx.op.tertiary.f32(i32 46, float %4404, float %4395, float %4406)  ; FMad(a,b,c)
  %4408 = fmul fast float %4402, %4396
  %4409 = call float @dx.op.tertiary.f32(i32 46, float %4403, float %4397, float %4408)  ; FMad(a,b,c)
  %4410 = call float @dx.op.tertiary.f32(i32 46, float %4404, float %4398, float %4409)  ; FMad(a,b,c)
  %4411 = fsub fast float %4407, %4399
  %4412 = fsub fast float %4410, %4400
  %4413 = fsub fast float %4411, %4379
  %4414 = fadd fast float %4413, %4387
  %4415 = fsub fast float %4412, %4380
  %4416 = fadd fast float %4415, %4387
  %4417 = extractvalue %dx.types.CBufRet.f32 %4378, 3
  %4418 = fmul fast float %4414, %4417
  %4419 = fmul fast float %4416, %4417
  %4420 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4421 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4422 = fsub fast float 1.000000e+00, %4420
  %4423 = fsub fast float 1.000000e+00, %4421
  %4424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4422, float %4423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = fcmp fast ugt float %4425, 0.000000e+00
  br i1 %4426, label %4427, label %4730

; <label>:4427                                    ; preds = %4389
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 2
  %4430 = fmul fast float %4429, %4425
  %4431 = extractvalue %dx.types.CBufRet.f32 %4428, 3
  %4432 = fadd fast float %4431, %4430
  %4433 = extractvalue %dx.types.CBufRet.f32 %4394, 2
  %4434 = fadd fast float %4432, %4401
  %4435 = fmul fast float %4407, %4395
  %4436 = call float @dx.op.tertiary.f32(i32 46, float %4410, float %4398, float %4435)  ; FMad(a,b,c)
  %4437 = call float @dx.op.tertiary.f32(i32 46, float %4434, float %4433, float %4436)  ; FMad(a,b,c)
  %4438 = fsub fast float %4437, %4401
  %4439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4439, 2
  %4441 = fsub fast float %4438, %4440
  %4442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4422, float %4423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4443 = extractvalue %dx.types.ResRet.f32 %4442, 0
  %4444 = extractvalue %dx.types.ResRet.f32 %4442, 1
  %4445 = extractvalue %dx.types.ResRet.f32 %4442, 2
  %4446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4422, float %4423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 0
  %4448 = extractvalue %dx.types.ResRet.f32 %4446, 1
  %4449 = extractvalue %dx.types.ResRet.f32 %4446, 2
  %4450 = fadd fast float %4447, %4443
  %4451 = fmul fast float %4450, 0x3F847AE140000000
  %4452 = fadd fast float %4448, %4444
  %4453 = fmul fast float %4452, 0x3F847AE140000000
  %4454 = fadd fast float %4449, %4445
  %4455 = fmul fast float %4454, 0x3F847AE140000000
  br label %4730

; <label>:4456                                    ; preds = %4294
  %4457 = and i32 %237, 1
  %4458 = icmp eq i32 %4457, 0
  br i1 %4458, label %4730, label %4459

; <label>:4459                                    ; preds = %4456
  %4460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4461 = extractvalue %dx.types.CBufRet.f32 %4460, 0
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 0
  %4464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4465 = extractvalue %dx.types.CBufRet.f32 %4464, 0
  %4466 = extractvalue %dx.types.CBufRet.f32 %4460, 1
  %4467 = extractvalue %dx.types.CBufRet.f32 %4462, 1
  %4468 = extractvalue %dx.types.CBufRet.f32 %4464, 1
  %4469 = extractvalue %dx.types.CBufRet.f32 %4460, 3
  %4470 = extractvalue %dx.types.CBufRet.f32 %4462, 3
  %4471 = extractvalue %dx.types.CBufRet.f32 %4464, 3
  %4472 = fadd fast float %4469, %4375
  %4473 = fadd fast float %4470, %4376
  %4474 = fadd fast float %4471, %4377
  %4475 = fmul fast float %4472, %4461
  %4476 = call float @dx.op.tertiary.f32(i32 46, float %4473, float %4463, float %4475)  ; FMad(a,b,c)
  %4477 = call float @dx.op.tertiary.f32(i32 46, float %4474, float %4465, float %4476)  ; FMad(a,b,c)
  %4478 = fmul fast float %4472, %4466
  %4479 = call float @dx.op.tertiary.f32(i32 46, float %4473, float %4467, float %4478)  ; FMad(a,b,c)
  %4480 = call float @dx.op.tertiary.f32(i32 46, float %4474, float %4468, float %4479)  ; FMad(a,b,c)
  %4481 = fsub fast float %4477, %4469
  %4482 = fsub fast float %4480, %4470
  %4483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4484 = extractvalue %dx.types.CBufRet.f32 %4483, 0
  %4485 = extractvalue %dx.types.CBufRet.f32 %4483, 1
  %4486 = extractvalue %dx.types.CBufRet.f32 %4483, 2
  %4487 = extractvalue %dx.types.CBufRet.f32 %4483, 3
  %4488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.f32 %4488, 3
  %4490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.i32 %4490, 0
  %4492 = extractvalue %dx.types.CBufRet.i32 %4490, 1
  %4493 = udiv i32 %4492, %4491
  %4494 = fsub fast float %4481, %4484
  %4495 = fsub fast float %4482, %4485
  %4496 = call float @dx.op.binary.f32(i32 35, float %4494, float 0.000000e+00)  ; FMax(a,b)
  %4497 = call float @dx.op.binary.f32(i32 35, float %4495, float 0.000000e+00)  ; FMax(a,b)
  %4498 = call float @dx.op.binary.f32(i32 36, float %4496, float %4486)  ; FMin(a,b)
  %4499 = call float @dx.op.binary.f32(i32 36, float %4497, float %4487)  ; FMin(a,b)
  %4500 = add i32 %4491, -1
  %4501 = add i32 %4493, -1
  %4502 = fmul fast float %4498, %4489
  %4503 = fmul fast float %4499, %4489
  %4504 = fptoui float %4502 to i32
  %4505 = fptoui float %4503 to i32
  %4506 = call i32 @dx.op.binary.i32(i32 40, i32 %4504, i32 %4500)  ; UMin(a,b)
  %4507 = call i32 @dx.op.binary.i32(i32 40, i32 %4505, i32 %4501)  ; UMin(a,b)
  %4508 = mul i32 %4507, %4491
  %4509 = add i32 %4508, %4506
  %4510 = shl i32 %4509, 2
  %4511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.i32 %4511, 0
  %4513 = icmp eq i32 %4512, -1
  br i1 %4513, label %4730, label %4514

; <label>:4514                                    ; preds = %4459
  %4515 = mul i32 %4512, 148
  %4516 = add i32 %4515, 4
  %4517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4516, i32 undef)  ; BufferLoad(srv,index,wot)
  %4518 = extractvalue %dx.types.ResRet.f32 %4517, 0
  %4519 = add i32 %4515, 8
  %4520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4519, i32 undef)  ; BufferLoad(srv,index,wot)
  %4521 = extractvalue %dx.types.ResRet.f32 %4520, 0
  %4522 = add i32 %4515, 36
  %4523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4522, i32 undef)  ; BufferLoad(srv,index,wot)
  %4524 = extractvalue %dx.types.ResRet.f32 %4523, 0
  %4525 = add i32 %4515, 60
  %4526 = add i32 %4515, 92
  %4527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4526, i32 undef)  ; BufferLoad(srv,index,wot)
  %4528 = extractvalue %dx.types.ResRet.i32 %4527, 0
  %4529 = add i32 %4515, 116
  %4530 = fsub fast float %4481, %4518
  %4531 = fsub fast float %4482, %4521
  %4532 = fmul fast float %4489, %4530
  %4533 = fmul fast float %4489, %4531
  %4534 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4535 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4536 = fsub fast float 1.000000e+00, %4535
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 2
  %4539 = call float @dx.op.unary.f32(i32 83, float %4534)  ; DerivCoarseX(value)
  %4540 = call float @dx.op.unary.f32(i32 83, float %4536)  ; DerivCoarseX(value)
  %4541 = call float @dx.op.unary.f32(i32 84, float %4534)  ; DerivCoarseY(value)
  %4542 = call float @dx.op.unary.f32(i32 84, float %4536)  ; DerivCoarseY(value)
  %4543 = fmul fast float %4539, %4538
  %4544 = fmul fast float %4540, %4538
  %4545 = fmul fast float %4541, %4538
  %4546 = fmul fast float %4542, %4538
  %4547 = call float @dx.op.dot2.f32(i32 54, float %4545, float %4546, float %4545, float %4546)  ; Dot2(ax,ay,bx,by)
  %4548 = call float @dx.op.dot2.f32(i32 54, float %4543, float %4544, float %4543, float %4544)  ; Dot2(ax,ay,bx,by)
  %4549 = call float @dx.op.binary.f32(i32 35, float %4548, float %4547)  ; FMax(a,b)
  %4550 = call float @dx.op.unary.f32(i32 23, float %4549)  ; Log(value)
  %4551 = fmul fast float %4550, 5.000000e-01
  %4552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4553 = extractvalue %dx.types.CBufRet.f32 %4552, 1
  %4554 = fadd fast float %4553, %4551
  %4555 = call float @dx.op.binary.f32(i32 35, float %4554, float 0.000000e+00)  ; FMax(a,b)
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 3
  %4558 = fadd fast float %4557, %4555
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 3
  %4561 = fadd fast float %4558, %4560
  %4562 = add i32 %4528, 0
  %4563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4562, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4564 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4563, i32 0)  ; GetDimensions(handle,mipLevel)
  %4565 = extractvalue %dx.types.Dimensions %4564, 0
  %4566 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4565)  ; FirstbitLo(value)
  %4567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.i32 %4567, 1
  %4569 = sub nsw i32 %4568, %4566
  %4570 = sitofp i32 %4569 to float
  %4571 = fsub fast float %4561, %4570
  %4572 = call float @dx.op.binary.f32(i32 35, float %4571, float 0.000000e+00)  ; FMax(a,b)
  %4573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4563, %dx.types.Handle %52, float %4534, float %4536, float %4524, float undef, i32 0, i32 0, i32 undef, float %4572)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = fcmp ule float %4574, 0x3FE0101020000000
  %4576 = extractvalue %dx.types.CBufRet.i32 %4567, 0
  %4577 = and i32 %4576, 128
  %4578 = icmp ne i32 %4577, 0
  %4579 = and i1 %4575, %4578
  br i1 %4579, label %4730, label %4580

; <label>:4580                                    ; preds = %4514
  %4581 = add i32 %4515, 20
  %4582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = add i32 %4515, 24
  %4585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = add i32 %4515, 40
  %4588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = add i32 %4515, 96
  %4591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4590, i32 undef)  ; BufferLoad(srv,index,wot)
  %4592 = extractvalue %dx.types.ResRet.i32 %4591, 0
  %4593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4594 = extractvalue %dx.types.CBufRet.f32 %4593, 2
  %4595 = fmul fast float %4594, %4534
  %4596 = fmul fast float %4594, %4536
  %4597 = extractvalue %dx.types.CBufRet.f32 %4593, 3
  %4598 = fadd fast float %4595, %4597
  %4599 = fadd fast float %4596, %4597
  %4600 = add i32 %4592, 0
  %4601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4600, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4602 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4601, i32 0)  ; GetDimensions(handle,mipLevel)
  %4603 = extractvalue %dx.types.Dimensions %4602, 0
  %4604 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4603)  ; FirstbitLo(value)
  %4605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.i32 %4605, 1
  %4607 = sub nsw i32 %4606, %4604
  %4608 = sitofp i32 %4607 to float
  %4609 = fsub fast float %4558, %4608
  %4610 = call float @dx.op.binary.f32(i32 35, float %4609, float 0.000000e+00)  ; FMax(a,b)
  %4611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4601, %dx.types.Handle %52, float %4598, float %4599, float %4589, float undef, i32 0, i32 0, i32 undef, float %4610)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = fmul fast float %4612, %4583
  %4614 = fadd fast float %4613, %4586
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.CBufRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.CBufRet.f32 %4615, 2
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 3
  %4621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4622 = extractvalue %dx.types.CBufRet.f32 %4621, 3
  %4623 = extractvalue %dx.types.CBufRet.f32 %4615, 3
  %4624 = fadd fast float %4620, %4481
  %4625 = fadd fast float %4622, %4482
  %4626 = fadd fast float %4614, %4623
  %4627 = fmul fast float %4624, %4616
  %4628 = call float @dx.op.tertiary.f32(i32 46, float %4625, float %4617, float %4627)  ; FMad(a,b,c)
  %4629 = call float @dx.op.tertiary.f32(i32 46, float %4626, float %4618, float %4628)  ; FMad(a,b,c)
  %4630 = fsub fast float %4629, %4623
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 2
  %4633 = fsub fast float %4630, %4632
  %4634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4635 = extractvalue %dx.types.CBufRet.i32 %4634, 0
  %4636 = call i32 @dx.op.binary.i32(i32 40, i32 %4512, i32 %4635)  ; UMin(a,b)
  %4637 = mul i32 %4636, 36
  %4638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4637, i32 undef)  ; BufferLoad(srv,index,wot)
  %4639 = extractvalue %dx.types.ResRet.i32 %4638, 0
  %4640 = add i32 %4637, 4
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 0
  %4643 = fmul fast float %4642, %4534
  %4644 = fmul fast float %4642, %4536
  %4645 = extractvalue %dx.types.CBufRet.f32 %4641, 1
  %4646 = fadd fast float %4643, %4645
  %4647 = fadd fast float %4644, %4645
  %4648 = icmp eq i32 %4639, 0
  br i1 %4648, label %4717, label %4649

; <label>:4649                                    ; preds = %4580
  br label %4650

; <label>:4650                                    ; preds = %4707, %4649
  %4651 = phi float [ %4708, %4707 ], [ 0.000000e+00, %4649 ]
  %4652 = phi float [ %4709, %4707 ], [ 0.000000e+00, %4649 ]
  %4653 = phi float [ %4710, %4707 ], [ 0.000000e+00, %4649 ]
  %4654 = phi float [ %4711, %4707 ], [ 0.000000e+00, %4649 ]
  %4655 = phi float [ %4712, %4707 ], [ 0.000000e+00, %4649 ]
  %4656 = phi float [ %4713, %4707 ], [ 0.000000e+00, %4649 ]
  %4657 = phi i32 [ %4714, %4707 ], [ 0, %4649 ]
  %4658 = shl i32 %4657, 2
  %4659 = add i32 %4525, %4658
  %4660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4659, i32 undef)  ; BufferLoad(srv,index,wot)
  %4661 = extractvalue %dx.types.ResRet.f32 %4660, 0
  %4662 = add i32 %4529, %4658
  %4663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4662, i32 undef)  ; BufferLoad(srv,index,wot)
  %4664 = extractvalue %dx.types.ResRet.i32 %4663, 0
  %4665 = add i32 %4664, 0
  %4666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4665, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4667 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4666, i32 0)  ; GetDimensions(handle,mipLevel)
  %4668 = extractvalue %dx.types.Dimensions %4667, 0
  %4669 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4668)  ; FirstbitLo(value)
  %4670 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.i32 %4670, 1
  %4672 = sub nsw i32 %4671, %4669
  %4673 = sitofp i32 %4672 to float
  %4674 = fsub fast float %4558, %4673
  %4675 = call float @dx.op.binary.f32(i32 35, float %4674, float 0.000000e+00)  ; FMax(a,b)
  %4676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4666, %dx.types.Handle %52, float %4646, float %4647, float %4661, float undef, i32 0, i32 0, i32 undef, float %4675)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4677 = extractvalue %dx.types.ResRet.f32 %4676, 0
  %4678 = fcmp fast ogt float %4677, 0.000000e+00
  br i1 %4678, label %4679, label %4707

; <label>:4679                                    ; preds = %4650
  %4680 = add i32 %4640, %4658
  %4681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4680, i32 undef)  ; BufferLoad(srv,index,wot)
  %4682 = extractvalue %dx.types.ResRet.i32 %4681, 0
  %4683 = and i32 %4682, 32767
  %4684 = mul nuw nsw i32 %4683, 928
  %4685 = add nuw nsw i32 %4684, 48
  %4686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4685, i32 undef)  ; BufferLoad(srv,index,wot)
  %4687 = extractvalue %dx.types.ResRet.f32 %4686, 0
  %4688 = extractvalue %dx.types.ResRet.f32 %4686, 1
  %4689 = extractvalue %dx.types.ResRet.f32 %4686, 2
  %4690 = add nuw nsw i32 %4684, 60
  %4691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4690, i32 undef)  ; BufferLoad(srv,index,wot)
  %4692 = extractvalue %dx.types.ResRet.f32 %4691, 0
  %4693 = extractvalue %dx.types.ResRet.f32 %4691, 1
  %4694 = extractvalue %dx.types.ResRet.f32 %4691, 2
  %4695 = fmul fast float %4687, %4677
  %4696 = fmul fast float %4688, %4677
  %4697 = fmul fast float %4689, %4677
  %4698 = fadd fast float %4695, %4651
  %4699 = fadd fast float %4696, %4652
  %4700 = fadd fast float %4697, %4653
  %4701 = fmul fast float %4692, %4677
  %4702 = fmul fast float %4693, %4677
  %4703 = fmul fast float %4694, %4677
  %4704 = fadd fast float %4701, %4654
  %4705 = fadd fast float %4702, %4655
  %4706 = fadd fast float %4703, %4656
  br label %4707

; <label>:4707                                    ; preds = %4679, %4650
  %4708 = phi float [ %4698, %4679 ], [ %4651, %4650 ]
  %4709 = phi float [ %4699, %4679 ], [ %4652, %4650 ]
  %4710 = phi float [ %4700, %4679 ], [ %4653, %4650 ]
  %4711 = phi float [ %4704, %4679 ], [ %4654, %4650 ]
  %4712 = phi float [ %4705, %4679 ], [ %4655, %4650 ]
  %4713 = phi float [ %4706, %4679 ], [ %4656, %4650 ]
  %4714 = add nuw i32 %4657, 1
  %4715 = icmp eq i32 %4714, %4639
  br i1 %4715, label %4716, label %4650

; <label>:4716                                    ; preds = %4707
  br label %4717

; <label>:4717                                    ; preds = %4716, %4580
  %4718 = phi float [ 0.000000e+00, %4580 ], [ %4708, %4716 ]
  %4719 = phi float [ 0.000000e+00, %4580 ], [ %4709, %4716 ]
  %4720 = phi float [ 0.000000e+00, %4580 ], [ %4710, %4716 ]
  %4721 = phi float [ 0.000000e+00, %4580 ], [ %4711, %4716 ]
  %4722 = phi float [ 0.000000e+00, %4580 ], [ %4712, %4716 ]
  %4723 = phi float [ 0.000000e+00, %4580 ], [ %4713, %4716 ]
  %4724 = fadd fast float %4721, %4718
  %4725 = fmul fast float %4724, 0x3F847AE140000000
  %4726 = fadd fast float %4722, %4719
  %4727 = fmul fast float %4726, 0x3F847AE140000000
  %4728 = fadd fast float %4723, %4720
  %4729 = fmul fast float %4728, 0x3F847AE140000000
  br label %4730

; <label>:4730                                    ; preds = %4717, %4514, %4459, %4456, %4427, %4389
  %4731 = phi float [ %4441, %4427 ], [ -1.310720e+05, %4389 ], [ %4633, %4717 ], [ -1.310720e+05, %4459 ], [ -1.310720e+05, %4514 ], [ -1.310720e+05, %4456 ]
  %4732 = phi float [ %4451, %4427 ], [ 0.000000e+00, %4389 ], [ %4725, %4717 ], [ 0.000000e+00, %4459 ], [ 0.000000e+00, %4514 ], [ 0.000000e+00, %4456 ]
  %4733 = phi float [ %4453, %4427 ], [ 0.000000e+00, %4389 ], [ %4727, %4717 ], [ 0.000000e+00, %4459 ], [ 0.000000e+00, %4514 ], [ 0.000000e+00, %4456 ]
  %4734 = phi float [ %4455, %4427 ], [ 0.000000e+00, %4389 ], [ %4729, %4717 ], [ 0.000000e+00, %4459 ], [ 0.000000e+00, %4514 ], [ 0.000000e+00, %4456 ]
  %4735 = phi i1 [ true, %4427 ], [ false, %4389 ], [ true, %4717 ], [ false, %4459 ], [ false, %4514 ], [ false, %4456 ]
  %4736 = and i32 %237, 3
  %4737 = icmp eq i32 %4736, 1
  %4738 = select i1 %4737, float 1.000000e+00, float 0.000000e+00
  %4739 = fsub fast float %4731, %169
  %4740 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4741 = select i1 %4735, float %4740, float 1.000000e+00
  %4742 = fmul fast float %4741, %4738
  %4743 = icmp eq i32 %4736, 3
  %4744 = select i1 %4743, float 1.000000e+00, float %4742
  %4745 = call float @dx.op.binary.f32(i32 35, float %4310, float %4744)  ; FMax(a,b)
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = fcmp fast une float %4746, 0.000000e+00
  %4748 = fsub fast float -0.000000e+00, %187
  %4749 = fsub fast float -0.000000e+00, %188
  %4750 = fsub fast float -0.000000e+00, %189
  br i1 %4747, label %4751, label %4913

; <label>:4751                                    ; preds = %4730
  %4752 = call float @dx.op.dot3.f32(i32 55, float %4748, float %4749, float %4750, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4753 = fmul fast float %4746, 2.500000e+00
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4755 = fmul fast float %4746, 0x4013FFFFE0000000
  %4756 = fadd fast float %4755, 0xBFFFFFFFE0000000
  %4757 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4758 = fmul fast float %4746, 0x4004000020000000
  %4759 = fadd fast float %4758, 0xBFF8000040000000
  %4760 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4761 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4762 = fmul fast float %4335, 1.000000e+01
  %4763 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4764 = fmul fast float %4763, 2.000000e+00
  %4765 = fsub fast float 3.000000e+00, %4764
  %4766 = fmul fast float %4763, %4763
  %4767 = fmul fast float %4766, %4765
  %4768 = fsub fast float 1.000000e+00, %4767
  %4769 = fsub fast float 0x3FE3333340000000, %4356
  %4770 = fmul fast float %4769, 0x400AAAAAA0000000
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = fmul fast float %4768, %4771
  %4773 = fmul fast float %4368, 0x3FEA2B8620000000
  %4774 = fmul fast float %4369, 0x3FEA2B8620000000
  %4775 = fmul fast float %4370, 0x3FEA2B8620000000
  %4776 = fadd fast float %4773, 0x3FC81DFBA0000000
  %4777 = fmul fast float %4776, %4368
  %4778 = fadd fast float %4777, 0x3F910E6020000000
  %4779 = fadd fast float %4774, 0x3FC81DFBA0000000
  %4780 = fmul fast float %4779, %4369
  %4781 = fadd fast float %4780, 0x3F910E6020000000
  %4782 = fadd fast float %4775, 0x3FC81DFBA0000000
  %4783 = fmul fast float %4782, %4370
  %4784 = fadd fast float %4783, 0x3F910E6020000000
  %4785 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4786 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4787 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4788 = fsub fast float %4785, %4368
  %4789 = fsub fast float %4786, %4369
  %4790 = fsub fast float %4787, %4370
  %4791 = fmul fast float %4788, %4761
  %4792 = fmul fast float %4791, %4772
  %4793 = fmul fast float %4789, %4761
  %4794 = fmul fast float %4793, %4772
  %4795 = fmul fast float %4790, %4761
  %4796 = fmul fast float %4795, %4772
  %4797 = fadd fast float %4792, %4368
  %4798 = fadd fast float %4794, %4369
  %4799 = fadd fast float %4796, %4370
  %4800 = fmul fast float %4307, %4307
  %4801 = fmul fast float %4800, %4800
  %4802 = fadd fast float %4757, 1.000000e+00
  %4803 = fsub fast float %4802, %4772
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4806 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4807 = fsub fast float 1.000000e+00, %4801
  %4808 = call float @dx.op.binary.f32(i32 36, float %4804, float %4807)  ; FMin(a,b)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4810 = call float @dx.op.binary.f32(i32 35, float %4808, float %4809)  ; FMax(a,b)
  %4811 = fadd fast float %4806, 0xBFE4CCCCC0000000
  %4812 = fmul fast float %4811, 0x4006DB6DA0000000
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = fmul fast float %4813, 2.000000e+00
  %4815 = fsub fast float 3.000000e+00, %4814
  %4816 = bitcast float %4353 to i32
  %4817 = ashr i32 %4816, 1
  %4818 = add nsw i32 %4817, 532487669
  %4819 = bitcast i32 %4818 to float
  %4820 = fsub fast float 1.000000e+00, %4819
  %4821 = bitcast float %4820 to i32
  %4822 = sub nsw i32 2129859010, %4821
  %4823 = bitcast i32 %4822 to float
  %4824 = fmul fast float %4823, 2.000000e+00
  %4825 = bitcast float %4354 to i32
  %4826 = ashr i32 %4825, 1
  %4827 = add nsw i32 %4826, 532487669
  %4828 = bitcast i32 %4827 to float
  %4829 = fsub fast float 1.000000e+00, %4828
  %4830 = bitcast float %4829 to i32
  %4831 = sub nsw i32 2129859010, %4830
  %4832 = bitcast i32 %4831 to float
  %4833 = fmul fast float %4832, 2.000000e+00
  %4834 = bitcast float %4355 to i32
  %4835 = ashr i32 %4834, 1
  %4836 = add nsw i32 %4835, 532487669
  %4837 = bitcast i32 %4836 to float
  %4838 = fsub fast float 1.000000e+00, %4837
  %4839 = bitcast float %4838 to i32
  %4840 = sub nsw i32 2129859010, %4839
  %4841 = bitcast i32 %4840 to float
  %4842 = fmul fast float %4841, 2.000000e+00
  %4843 = fsub fast float 0x4002A9FBE0000000, %4824
  %4844 = fadd fast float %4824, 0x3FD54FDF00000000
  %4845 = bitcast float %4844 to i32
  %4846 = sub nsw i32 2129859010, %4845
  %4847 = bitcast i32 %4846 to float
  %4848 = fmul fast float %4847, %4843
  %4849 = fmul fast float %4848, %4848
  %4850 = fsub fast float 0x4002A9FBE0000000, %4833
  %4851 = fadd fast float %4833, 0x3FD54FDF00000000
  %4852 = bitcast float %4851 to i32
  %4853 = sub nsw i32 2129859010, %4852
  %4854 = bitcast i32 %4853 to float
  %4855 = fmul fast float %4854, %4850
  %4856 = fmul fast float %4855, %4855
  %4857 = fsub fast float 0x4002A9FBE0000000, %4842
  %4858 = fadd fast float %4842, 0x3FD54FDF00000000
  %4859 = bitcast float %4858 to i32
  %4860 = sub nsw i32 2129859010, %4859
  %4861 = bitcast i32 %4860 to float
  %4862 = fmul fast float %4861, %4857
  %4863 = fmul fast float %4862, %4862
  %4864 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4849)  ; FMax(a,b)
  %4865 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4856)  ; FMax(a,b)
  %4866 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4863)  ; FMax(a,b)
  %4867 = fsub fast float 1.000000e+00, %4752
  %4868 = fadd fast float %4867, %4768
  %4869 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4870 = fsub fast float 1.000000e+00, %4744
  %4871 = fmul fast float %4810, %4870
  %4872 = fmul fast float %4813, %4813
  %4873 = fmul fast float %4872, %4871
  %4874 = fmul fast float %4873, %4815
  %4875 = fmul fast float %4870, 0xBFE99999A0000000
  %4876 = fmul fast float %4875, %4761
  %4877 = fmul fast float %4876, %4772
  %4878 = fadd fast float %4877, 1.000000e+00
  %4879 = fadd fast float %4356, -1.000000e+00
  %4880 = fmul fast float %4878, %4879
  %4881 = fadd fast float %4880, 1.000000e+00
  %4882 = fsub fast float %4864, %4353
  %4883 = fsub fast float %4865, %4354
  %4884 = fsub fast float %4866, %4355
  %4885 = fmul fast float %4874, %4882
  %4886 = fmul fast float %4874, %4883
  %4887 = fmul fast float %4874, %4884
  %4888 = fadd fast float %4885, %4353
  %4889 = fadd fast float %4886, %4354
  %4890 = fadd fast float %4887, %4355
  %4891 = fsub fast float %111, %4295
  %4892 = fsub fast float %112, %4296
  %4893 = fsub fast float %113, %4297
  %4894 = fmul fast float %4874, %4891
  %4895 = fmul fast float %4874, %4892
  %4896 = fmul fast float %4874, %4893
  %4897 = fadd fast float %4894, %4295
  %4898 = fadd fast float %4895, %4296
  %4899 = fadd fast float %4896, %4297
  %4900 = fmul fast float %4874, %4869
  %4901 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4902 = fsub fast float 1.000000e+00, %4901
  %4903 = fmul fast float %4900, %4902
  %4904 = fadd fast float %4903, %4901
  %4905 = fsub fast float 1.000000e+00, %4307
  %4906 = fmul fast float %4874, %4905
  %4907 = fadd fast float %4906, %4307
  %4908 = call float @dx.op.dot3.f32(i32 55, float %4897, float %4898, float %4899, float %4897, float %4898, float %4899)  ; Dot3(ax,ay,az,bx,by,bz)
  %4909 = call float @dx.op.unary.f32(i32 25, float %4908)  ; Rsqrt(value)
  %4910 = fmul fast float %4897, %4909
  %4911 = fmul fast float %4898, %4909
  %4912 = fmul fast float %4899, %4909
  br label %4913

; <label>:4913                                    ; preds = %4751, %4730
  %4914 = phi float [ %4888, %4751 ], [ %4353, %4730 ]
  %4915 = phi float [ %4889, %4751 ], [ %4354, %4730 ]
  %4916 = phi float [ %4890, %4751 ], [ %4355, %4730 ]
  %4917 = phi float [ %4797, %4751 ], [ %4368, %4730 ]
  %4918 = phi float [ %4798, %4751 ], [ %4369, %4730 ]
  %4919 = phi float [ %4799, %4751 ], [ %4370, %4730 ]
  %4920 = phi float [ %4910, %4751 ], [ %4295, %4730 ]
  %4921 = phi float [ %4911, %4751 ], [ %4296, %4730 ]
  %4922 = phi float [ %4912, %4751 ], [ %4297, %4730 ]
  %4923 = phi float [ %4904, %4751 ], [ %4356, %4730 ]
  %4924 = phi float [ %4907, %4751 ], [ %4307, %4730 ]
  %4925 = fsub fast float -0.000000e+00, %169
  %4926 = select i1 %261, float 0.000000e+00, float %4916
  %4927 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float %4748, float %4749, float %4750)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %4920, float %4921, float %4922)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = fmul fast float %4929, 2.000000e+00
  %4931 = fmul fast float %4930, %4920
  %4932 = fmul fast float %4930, %4921
  %4933 = fmul fast float %4930, %4922
  %4934 = fsub fast float %187, %4931
  %4935 = fsub fast float %188, %4932
  %4936 = fsub fast float %189, %4933
  %4937 = call float @dx.op.binary.f32(i32 36, float %4924, float 1.000000e+00)  ; FMin(a,b)
  %4938 = fsub fast float 1.000000e+00, %4937
  %4939 = bitcast float %4938 to i32
  %4940 = ashr i32 %4939, 1
  %4941 = add nsw i32 %4940, 532487669
  %4942 = bitcast i32 %4941 to float
  %4943 = fsub fast float 1.000000e+00, %4923
  %4944 = call float @dx.op.binary.f32(i32 35, float %4943, float 0x3F847AE140000000)  ; FMax(a,b)
  %4945 = fmul fast float %4944, %4944
  %4946 = fmul fast float %4945, %4945
  %4947 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %4942, float %4946, float %4947, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4949 = extractvalue %dx.types.ResRet.f32 %4948, 0
  %4950 = fsub fast float 1.000000e+00, %4924
  %4951 = bitcast float %4950 to i32
  %4952 = sub nsw i32 2129859010, %4951
  %4953 = bitcast i32 %4952 to float
  %4954 = fsub fast float 1.000000e+00, %72
  %4955 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4956 = call float @dx.op.binary.f32(i32 35, float %4955, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4957 = fdiv fast float %4954, %4956
  %4958 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = fmul fast float %4959, 5.000000e-01
  %4961 = fadd fast float %4960, 5.000000e-01
  %4962 = fmul fast float %4961, %72
  %4963 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fmul fast float %4964, %4957
  %4966 = fadd fast float %4962, %4965
  %4967 = fsub fast float 5.000000e-01, %4960
  %4968 = fmul fast float %4967, %4917
  %4969 = fmul fast float %4967, %4918
  %4970 = fmul fast float %4967, %4919
  %4971 = fadd fast float %4966, %4968
  %4972 = fadd fast float %4966, %4969
  %4973 = fadd fast float %4966, %4970
  %4974 = call float @dx.op.dot3.f32(i32 55, float %4934, float %4935, float %4936, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4975 = call float @dx.op.unary.f32(i32 7, float %4974)  ; Saturate(value)
  %4976 = fmul fast float %4975, 5.000000e-01
  %4977 = fadd fast float %4976, 5.000000e-01
  %4978 = fmul fast float %4977, %72
  %4979 = call float @dx.op.dot3.f32(i32 55, float %4934, float %4935, float %4936, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4980 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4981 = fmul fast float %4980, %4957
  %4982 = fadd fast float %4978, %4981
  %4983 = fsub fast float 5.000000e-01, %4976
  %4984 = fmul fast float %4983, %4917
  %4985 = fmul fast float %4983, %4918
  %4986 = fmul fast float %4983, %4919
  %4987 = fadd fast float %4982, %4984
  %4988 = fadd fast float %4982, %4985
  %4989 = fadd fast float %4982, %4986
  %4990 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = call float @dx.op.binary.f32(i32 36, float %4917, float %4992)  ; FMin(a,b)
  %4994 = fmul fast float %4993, %4938
  %4995 = fsub fast float 1.000000e+00, %4994
  %4996 = bitcast float %4995 to i32
  %4997 = sub nsw i32 2129859010, %4996
  %4998 = bitcast i32 %4997 to float
  %4999 = call float @dx.op.binary.f32(i32 36, float %4918, float %4992)  ; FMin(a,b)
  %5000 = fmul fast float %4999, %4938
  %5001 = fsub fast float 1.000000e+00, %5000
  %5002 = bitcast float %5001 to i32
  %5003 = sub nsw i32 2129859010, %5002
  %5004 = bitcast i32 %5003 to float
  %5005 = call float @dx.op.binary.f32(i32 36, float %4919, float %4992)  ; FMin(a,b)
  %5006 = fmul fast float %5005, %4938
  %5007 = fsub fast float 1.000000e+00, %5006
  %5008 = bitcast float %5007 to i32
  %5009 = sub nsw i32 2129859010, %5008
  %5010 = bitcast i32 %5009 to float
  %5011 = fmul fast float %4937, %73
  %5012 = fmul fast float %5011, %4971
  %5013 = fmul fast float %5012, %4998
  %5014 = fmul fast float %4937, %74
  %5015 = fmul fast float %5014, %4972
  %5016 = fmul fast float %5015, %5004
  %5017 = fmul fast float %4937, %75
  %5018 = fmul fast float %5017, %4973
  %5019 = fmul fast float %5018, %5010
  %5020 = call float @dx.op.binary.f32(i32 36, float %4914, float %4992)  ; FMin(a,b)
  %5021 = fmul fast float %5020, %4938
  %5022 = fsub fast float 1.000000e+00, %5021
  %5023 = bitcast float %5022 to i32
  %5024 = sub nsw i32 2129859010, %5023
  %5025 = bitcast i32 %5024 to float
  %5026 = call float @dx.op.binary.f32(i32 36, float %4915, float %4992)  ; FMin(a,b)
  %5027 = fmul fast float %5026, %4938
  %5028 = fsub fast float 1.000000e+00, %5027
  %5029 = bitcast float %5028 to i32
  %5030 = sub nsw i32 2129859010, %5029
  %5031 = bitcast i32 %5030 to float
  %5032 = call float @dx.op.binary.f32(i32 36, float %4926, float %4992)  ; FMin(a,b)
  %5033 = fmul fast float %5032, %4938
  %5034 = fsub fast float 1.000000e+00, %5033
  %5035 = bitcast float %5034 to i32
  %5036 = sub nsw i32 2129859010, %5035
  %5037 = bitcast i32 %5036 to float
  %5038 = fmul fast float %5011, %4987
  %5039 = fmul fast float %5038, %5025
  %5040 = fmul fast float %5014, %4988
  %5041 = fmul fast float %5040, %5031
  %5042 = fmul fast float %5017, %4989
  %5043 = fmul fast float %5042, %5037
  %5044 = call float @dx.op.dot3.f32(i32 55, float %5013, float %5016, float %5019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = select i1 %261, float 0.000000e+00, float %5013
  %5046 = select i1 %261, float %5044, float %5016
  %5047 = select i1 %261, float 0.000000e+00, float %5019
  %5048 = call float @dx.op.dot3.f32(i32 55, float %5039, float %5041, float %5043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = select i1 %261, float 0.000000e+00, float %5039
  %5050 = select i1 %261, float %5048, float %5041
  %5051 = select i1 %261, float 0.000000e+00, float %5043
  %5052 = fmul fast float %4928, 9.843750e-01
  %5053 = fmul fast float %4923, 9.843750e-01
  %5054 = fadd fast float %5052, 7.812500e-03
  %5055 = fadd fast float %5053, 7.812500e-03
  %5056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5054, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5057 = extractvalue %dx.types.ResRet.f32 %5056, 2
  %5058 = extractvalue %dx.types.ResRet.f32 %5056, 3
  %5059 = fmul fast float %5057, %4914
  %5060 = fmul fast float %5057, %4915
  %5061 = fmul fast float %5057, %4926
  %5062 = fadd fast float %5059, %5058
  %5063 = fadd fast float %5060, %5058
  %5064 = fadd fast float %5061, %5058
  %5065 = fcmp fast ogt float %4308, 0.000000e+00
  br i1 %5065, label %5066, label %5092

; <label>:5066                                    ; preds = %4913
  %5067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4308, float %4928, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5068 = extractvalue %dx.types.ResRet.f32 %5067, 0
  %5069 = extractvalue %dx.types.ResRet.f32 %5067, 1
  %5070 = extractvalue %dx.types.ResRet.f32 %5067, 2
  %5071 = fadd fast float %5068, -5.000000e-01
  %5072 = fadd fast float %5069, -5.000000e-01
  %5073 = fadd fast float %5070, -5.000000e-01
  %5074 = fsub fast float 1.000000e+00, %4914
  %5075 = fsub fast float 1.000000e+00, %4915
  %5076 = fsub fast float 1.000000e+00, %4926
  %5077 = fmul fast float %4914, 4.000000e+00
  %5078 = fmul fast float %5077, %5074
  %5079 = fmul fast float %5078, %5071
  %5080 = fmul fast float %4915, 4.000000e+00
  %5081 = fmul fast float %5080, %5075
  %5082 = fmul fast float %5081, %5072
  %5083 = fmul fast float %4926, 4.000000e+00
  %5084 = fmul fast float %5083, %5076
  %5085 = fmul fast float %5084, %5073
  %5086 = fadd fast float %5079, %5062
  %5087 = fadd fast float %5082, %5063
  %5088 = fadd fast float %5085, %5064
  %5089 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  br label %5092

; <label>:5092                                    ; preds = %5066, %4913
  %5093 = phi float [ %5089, %5066 ], [ %5062, %4913 ]
  %5094 = phi float [ %5090, %5066 ], [ %5063, %4913 ]
  %5095 = phi float [ %5091, %5066 ], [ %5064, %4913 ]
  %5096 = call float @dx.op.binary.f32(i32 35, float %5094, float %5095)  ; FMax(a,b)
  %5097 = call float @dx.op.binary.f32(i32 35, float %5093, float %5096)  ; FMax(a,b)
  %5098 = fsub fast float 1.000000e+00, %5097
  %5099 = fmul fast float %5097, %4923
  %5100 = fadd fast float %5099, %4923
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 2
  %5103 = extractvalue %dx.types.CBufRet.f32 %5101, 3
  %5104 = fmul fast float %5100, %5102
  %5105 = fadd fast float %5104, %5103
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = fsub fast float 1.000000e+00, %4949
  %5108 = fadd fast float %5107, %5106
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5110 = fcmp fast olt float %5109, 1.000000e+00
  br i1 %5110, label %5111, label %5587

; <label>:5111                                    ; preds = %5092
  %5112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.f32 %5112, 2
  %5114 = extractvalue %dx.types.CBufRet.f32 %5112, 3
  %5115 = fmul fast float %5113, %104
  %5116 = fmul fast float %5114, %105
  %5117 = fptoui float %5115 to i32
  %5118 = fptoui float %5116 to i32
  %5119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5120 = extractvalue %dx.types.CBufRet.f32 %5119, 0
  %5121 = extractvalue %dx.types.CBufRet.f32 %5119, 2
  %5122 = extractvalue %dx.types.CBufRet.f32 %5119, 3
  %5123 = fadd fast float %92, -4.000000e+00
  %5124 = call float @dx.op.binary.f32(i32 35, float %5123, float 0.000000e+00)  ; FMax(a,b)
  %5125 = fadd fast float %5124, %5120
  %5126 = fmul fast float %5125, %5121
  %5127 = call float @dx.op.unary.f32(i32 23, float %5126)  ; Log(value)
  %5128 = fmul fast float %5127, %5122
  %5129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5130 = extractvalue %dx.types.CBufRet.f32 %5129, 2
  %5131 = fmul fast float %5128, %5130
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.i32 %5133, 1
  %5135 = add i32 %5134, -1
  %5136 = uitofp i32 %5134 to float
  %5137 = fmul fast float %5136, %5132
  %5138 = fptoui float %5137 to i32
  %5139 = call i32 @dx.op.binary.i32(i32 40, i32 %5138, i32 %5135)  ; UMin(a,b)
  %5140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.i32 %5140, 2
  %5142 = extractvalue %dx.types.CBufRet.i32 %5140, 3
  %5143 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5118, i32 %5141, i32 %5117)  ; UMad(a,b,c)
  %5144 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5139, i32 %5142, i32 %5143)  ; UMad(a,b,c)
  %5145 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %5146 = fptoui float %5145 to i32
  %5147 = lshr i32 %5146, 5
  %5148 = call i32 @dx.op.binary.i32(i32 40, i32 %5147, i32 8191)  ; UMin(a,b)
  %5149 = fsub fast float %4731, %169
  %5150 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5151 = fcmp fast ogt float %5150, 0.000000e+00
  %5152 = fcmp fast ogt float %4936, 0.000000e+00
  %5153 = and i1 %5152, %5151
  br i1 %5153, label %5154, label %5183

; <label>:5154                                    ; preds = %5111
  %5155 = call float @dx.op.dot3.f32(i32 55, float %4934, float %4935, float %4936, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5156 = call float @dx.op.binary.f32(i32 35, float %5155, float -1.000000e+00)  ; FMax(a,b)
  %5157 = call float @dx.op.binary.f32(i32 36, float %5156, float 1.000000e+00)  ; FMin(a,b)
  %5158 = fmul fast float %5157, %5157
  %5159 = fsub fast float 1.000000e+00, %5158
  %5160 = fmul fast float %5159, 0x3FFC6E2300000000
  %5161 = fsub fast float 1.000000e+00, %5160
  %5162 = fcmp fast ogt float %5161, 0.000000e+00
  %5163 = call float @dx.op.unary.f32(i32 24, float %5161)  ; Sqrt(value)
  %5164 = fsub fast float 1.000000e+00, %5163
  %5165 = call float @dx.op.unary.f32(i32 23, float %5164)  ; Log(value)
  %5166 = fmul fast float %5165, 5.000000e+00
  %5167 = call float @dx.op.unary.f32(i32 21, float %5166)  ; Exp(value)
  %5168 = fmul fast float %5167, 0x3FEF591A60000000
  %5169 = fadd fast float %5168, 0x3F94DCB540000000
  %5170 = select i1 %5162, float %5169, float 1.000000e+00
  %5171 = fcmp fast oge float %5170, 1.000000e+00
  %5172 = fmul fast float %5155, 2.000000e+00
  %5173 = fadd fast float %5172, %4936
  %5174 = select i1 %5171, float %5173, float %4936
  %5175 = fsub fast float %5174, %4936
  %5176 = fmul fast float %5175, %5150
  %5177 = fadd fast float %5176, %4936
  %5178 = call float @dx.op.dot3.f32(i32 55, float %4934, float %4935, float %5177, float %4934, float %4935, float %5177)  ; Dot3(ax,ay,az,bx,by,bz)
  %5179 = call float @dx.op.unary.f32(i32 25, float %5178)  ; Rsqrt(value)
  %5180 = fmul fast float %5179, %4934
  %5181 = fmul fast float %5179, %4935
  %5182 = fmul fast float %5177, %5179
  br label %5183

; <label>:5183                                    ; preds = %5154, %5111
  %5184 = phi float [ %5180, %5154 ], [ %4934, %5111 ]
  %5185 = phi float [ %5181, %5154 ], [ %4935, %5111 ]
  %5186 = phi float [ %5182, %5154 ], [ %4936, %5111 ]
  %5187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.i32 %5187, 2
  %5189 = add nsw i32 %5188, -1
  %5190 = call i32 @dx.op.binary.i32(i32 37, i32 %5189, i32 0)  ; IMax(a,b)
  %5191 = shl i32 %5148, 2
  %5192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5191, i32 undef)  ; BufferLoad(srv,index,wot)
  %5193 = extractvalue %dx.types.ResRet.i32 %5192, 0
  %5194 = lshr i32 %5193, 16
  %5195 = and i32 %5193, 65535
  %5196 = lshr i32 %5193, 21
  %5197 = lshr i32 %5195, 5
  %5198 = call i32 @dx.op.binary.i32(i32 40, i32 %5197, i32 %5190)  ; UMin(a,b)
  %5199 = icmp ugt i32 %5196, %5198
  br i1 %5199, label %5563, label %5200

; <label>:5200                                    ; preds = %5183
  br label %5201

; <label>:5201                                    ; preds = %5555, %5200
  %5202 = phi float [ %5556, %5555 ], [ 0.000000e+00, %5200 ]
  %5203 = phi float [ %5557, %5555 ], [ 0.000000e+00, %5200 ]
  %5204 = phi float [ %5558, %5555 ], [ 0.000000e+00, %5200 ]
  %5205 = phi float [ %5559, %5555 ], [ 1.000000e+00, %5200 ]
  %5206 = phi i32 [ %5560, %5555 ], [ %5196, %5200 ]
  %5207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5208 = extractvalue %dx.types.CBufRet.i32 %5207, 2
  %5209 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5144, i32 %5208, i32 %5206)  ; UMad(a,b,c)
  %5210 = shl i32 %5209, 2
  %5211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5210, i32 undef)  ; BufferLoad(srv,index,wot)
  %5212 = extractvalue %dx.types.ResRet.i32 %5211, 0
  %5213 = shl i32 %5206, 5
  %5214 = sub nsw i32 %5194, %5213
  %5215 = call i32 @dx.op.binary.i32(i32 37, i32 %5214, i32 0)  ; IMax(a,b)
  %5216 = call i32 @dx.op.binary.i32(i32 38, i32 %5215, i32 31)  ; IMin(a,b)
  %5217 = sub nsw i32 1, %5194
  %5218 = add nsw i32 %5217, %5195
  %5219 = call i32 @dx.op.binary.i32(i32 37, i32 %5218, i32 0)  ; IMax(a,b)
  %5220 = call i32 @dx.op.binary.i32(i32 38, i32 %5219, i32 32)  ; IMin(a,b)
  %5221 = and i32 %5220, 31
  %5222 = shl i32 -1, %5221
  %5223 = xor i32 %5222, -1
  %5224 = and i32 %5216, 31
  %5225 = shl i32 %5223, %5224
  %5226 = icmp eq i32 %5220, 32
  %5227 = select i1 %5226, i32 -1, i32 %5225
  %5228 = and i32 %5227, %5212
  %5229 = icmp eq i32 %5228, 0
  br i1 %5229, label %5555, label %5230

; <label>:5230                                    ; preds = %5201
  br label %5231

; <label>:5231                                    ; preds = %5338, %5230
  %5232 = phi float [ %5339, %5338 ], [ %5202, %5230 ]
  %5233 = phi float [ %5340, %5338 ], [ %5203, %5230 ]
  %5234 = phi float [ %5341, %5338 ], [ %5204, %5230 ]
  %5235 = phi float [ %5342, %5338 ], [ %5205, %5230 ]
  %5236 = phi i32 [ %5241, %5338 ], [ %5228, %5230 ]
  %5237 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5236)  ; FirstbitLo(value)
  %5238 = add i32 %5237, %5213
  %5239 = and i32 %5237, 31
  %5240 = shl i32 1, %5239
  %5241 = xor i32 %5240, %5236
  %5242 = mul i32 %5238, 72
  %5243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5242, i32 undef)  ; BufferLoad(srv,index,wot)
  %5244 = extractvalue %dx.types.ResRet.f32 %5243, 0
  %5245 = extractvalue %dx.types.ResRet.f32 %5243, 1
  %5246 = extractvalue %dx.types.ResRet.f32 %5243, 2
  %5247 = add i32 %5242, 12
  %5248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5247, i32 undef)  ; BufferLoad(srv,index,wot)
  %5249 = extractvalue %dx.types.ResRet.i32 %5248, 0
  %5250 = add i32 %5242, 16
  %5251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5250, i32 undef)  ; BufferLoad(srv,index,wot)
  %5252 = extractvalue %dx.types.ResRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.ResRet.f32 %5251, 1
  %5254 = extractvalue %dx.types.ResRet.f32 %5251, 2
  %5255 = add i32 %5242, 28
  %5256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5255, i32 undef)  ; BufferLoad(srv,index,wot)
  %5257 = extractvalue %dx.types.ResRet.f32 %5256, 0
  %5258 = add i32 %5242, 32
  %5259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5258, i32 undef)  ; BufferLoad(srv,index,wot)
  %5260 = extractvalue %dx.types.ResRet.f32 %5259, 0
  %5261 = extractvalue %dx.types.ResRet.f32 %5259, 1
  %5262 = extractvalue %dx.types.ResRet.f32 %5259, 2
  %5263 = extractvalue %dx.types.ResRet.f32 %5259, 3
  %5264 = add i32 %5242, 48
  %5265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5264, i32 undef)  ; BufferLoad(srv,index,wot)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.ResRet.f32 %5265, 1
  %5268 = add i32 %5242, 56
  %5269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5268, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.ResRet.f32 %5269, 1
  %5272 = add i32 %5242, 64
  %5273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5272, i32 undef)  ; BufferLoad(srv,index,wot)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.ResRet.f32 %5273, 1
  %5276 = mul i32 %5238, 60
  %5277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5276, i32 undef)  ; BufferLoad(srv,index,wot)
  %5278 = extractvalue %dx.types.ResRet.f32 %5277, 0
  %5279 = extractvalue %dx.types.ResRet.f32 %5277, 1
  %5280 = extractvalue %dx.types.ResRet.f32 %5277, 2
  %5281 = add i32 %5276, 12
  %5282 = add i32 %5276, 48
  %5283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5282, i32 undef)  ; BufferLoad(srv,index,wot)
  %5284 = extractvalue %dx.types.ResRet.f32 %5283, 0
  %5285 = extractvalue %dx.types.ResRet.f32 %5283, 1
  %5286 = extractvalue %dx.types.ResRet.f32 %5283, 2
  %5287 = and i32 %5249, 32767
  %5288 = bitcast float %5244 to i32
  %5289 = icmp eq i32 %5288, -1
  %5290 = bitcast float %5245 to i32
  %5291 = and i32 %5249, 32768
  %5292 = icmp ne i32 %5291, 0
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 0
  %5295 = extractvalue %dx.types.CBufRet.f32 %5293, 1
  %5296 = extractvalue %dx.types.CBufRet.f32 %5293, 2
  %5297 = fsub fast float %5278, %5294
  %5298 = fsub fast float %5279, %5295
  %5299 = fsub fast float %5280, %5296
  %5300 = fsub fast float %167, %5297
  %5301 = fsub fast float %168, %5298
  %5302 = fsub fast float %169, %5299
  %5303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5281, i32 undef)  ; BufferLoad(srv,index,wot)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.ResRet.f32 %5303, 1
  %5306 = extractvalue %dx.types.ResRet.f32 %5303, 2
  %5307 = call float @dx.op.dot3.f32(i32 55, float %5300, float %5301, float %5302, float %5304, float %5305, float %5306)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = add i32 %5276, 24
  %5309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5308, i32 undef)  ; BufferLoad(srv,index,wot)
  %5310 = extractvalue %dx.types.ResRet.f32 %5309, 0
  %5311 = extractvalue %dx.types.ResRet.f32 %5309, 1
  %5312 = extractvalue %dx.types.ResRet.f32 %5309, 2
  %5313 = call float @dx.op.dot3.f32(i32 55, float %5300, float %5301, float %5302, float %5310, float %5311, float %5312)  ; Dot3(ax,ay,az,bx,by,bz)
  %5314 = add i32 %5276, 36
  %5315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5314, i32 undef)  ; BufferLoad(srv,index,wot)
  %5316 = extractvalue %dx.types.ResRet.f32 %5315, 0
  %5317 = extractvalue %dx.types.ResRet.f32 %5315, 1
  %5318 = extractvalue %dx.types.ResRet.f32 %5315, 2
  %5319 = call float @dx.op.dot3.f32(i32 55, float %5300, float %5301, float %5302, float %5316, float %5317, float %5318)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = call float @dx.op.unary.f32(i32 6, float %5307)  ; FAbs(value)
  %5321 = call float @dx.op.unary.f32(i32 6, float %5313)  ; FAbs(value)
  %5322 = call float @dx.op.unary.f32(i32 6, float %5319)  ; FAbs(value)
  %5323 = fsub fast float %5284, %5320
  %5324 = fsub fast float %5285, %5321
  %5325 = fsub fast float %5286, %5322
  %5326 = fmul fast float %5323, %5252
  %5327 = fmul fast float %5324, %5253
  %5328 = fmul fast float %5325, %5254
  %5329 = call float @dx.op.binary.f32(i32 36, float %5327, float %5328)  ; FMin(a,b)
  %5330 = call float @dx.op.binary.f32(i32 36, float %5326, float %5329)  ; FMin(a,b)
  %5331 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5332 = call float @dx.op.binary.f32(i32 36, float %5235, float %5331)  ; FMin(a,b)
  %5333 = uitofp i1 %5292 to float
  %5334 = fadd fast float %5150, 1.000000e+00
  %5335 = fsub fast float %5334, %5333
  %5336 = fmul fast float %5332, %5335
  %5337 = fcmp fast ogt float %5336, 0.000000e+00
  br i1 %5337, label %5344, label %5338

; <label>:5338                                    ; preds = %5486, %5231
  %5339 = phi float [ %5550, %5486 ], [ %5232, %5231 ]
  %5340 = phi float [ %5551, %5486 ], [ %5233, %5231 ]
  %5341 = phi float [ %5552, %5486 ], [ %5234, %5231 ]
  %5342 = phi float [ %5553, %5486 ], [ %5235, %5231 ]
  %5343 = icmp eq i32 %5236, %5240
  br i1 %5343, label %5554, label %5231

; <label>:5344                                    ; preds = %5231
  br i1 %5289, label %5402, label %5345

; <label>:5345                                    ; preds = %5344
  %5346 = fsub fast float -0.000000e+00, %5304
  %5347 = fsub fast float -0.000000e+00, %5305
  %5348 = fsub fast float -0.000000e+00, %5306
  %5349 = call float @dx.op.dot3.f32(i32 55, float %5184, float %5185, float %5186, float %5346, float %5347, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %5350 = fsub fast float -0.000000e+00, %5349
  %5351 = call float @dx.op.dot3.f32(i32 55, float %5300, float %5301, float %5302, float %5346, float %5347, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = fadd fast float %5351, %5267
  %5353 = fadd fast float %5266, %5351
  %5354 = fsub fast float -0.000000e+00, %5353
  %5355 = fcmp ogt float %5349, -0.000000e+00
  %5356 = select i1 %5355, float %5354, float %5352
  %5357 = call float @dx.op.unary.f32(i32 6, float %5350)  ; FAbs(value)
  %5358 = fdiv fast float 1.000000e+00, %5357
  %5359 = fmul fast float %5356, %5358
  %5360 = call float @dx.op.binary.f32(i32 35, float %5359, float 0.000000e+00)  ; FMax(a,b)
  %5361 = fsub fast float -0.000000e+00, %5310
  %5362 = fsub fast float -0.000000e+00, %5311
  %5363 = fsub fast float -0.000000e+00, %5312
  %5364 = call float @dx.op.dot3.f32(i32 55, float %5184, float %5185, float %5186, float %5361, float %5362, float %5363)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = fsub fast float -0.000000e+00, %5364
  %5366 = call float @dx.op.dot3.f32(i32 55, float %5300, float %5301, float %5302, float %5361, float %5362, float %5363)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = fadd fast float %5366, %5271
  %5368 = fadd fast float %5270, %5366
  %5369 = fsub fast float -0.000000e+00, %5368
  %5370 = fcmp ogt float %5364, -0.000000e+00
  %5371 = select i1 %5370, float %5369, float %5367
  %5372 = call float @dx.op.unary.f32(i32 6, float %5365)  ; FAbs(value)
  %5373 = fdiv fast float 1.000000e+00, %5372
  %5374 = fmul fast float %5371, %5373
  %5375 = call float @dx.op.binary.f32(i32 35, float %5374, float 0.000000e+00)  ; FMax(a,b)
  %5376 = fsub fast float -0.000000e+00, %5316
  %5377 = fsub fast float -0.000000e+00, %5317
  %5378 = fsub fast float -0.000000e+00, %5318
  %5379 = call float @dx.op.dot3.f32(i32 55, float %5184, float %5185, float %5186, float %5376, float %5377, float %5378)  ; Dot3(ax,ay,az,bx,by,bz)
  %5380 = fsub fast float -0.000000e+00, %5379
  %5381 = call float @dx.op.dot3.f32(i32 55, float %5300, float %5301, float %5302, float %5376, float %5377, float %5378)  ; Dot3(ax,ay,az,bx,by,bz)
  %5382 = fadd fast float %5381, %5275
  %5383 = fadd fast float %5274, %5381
  %5384 = fsub fast float -0.000000e+00, %5383
  %5385 = fcmp ogt float %5379, -0.000000e+00
  %5386 = select i1 %5385, float %5384, float %5382
  %5387 = call float @dx.op.unary.f32(i32 6, float %5380)  ; FAbs(value)
  %5388 = fdiv fast float 1.000000e+00, %5387
  %5389 = fmul fast float %5386, %5388
  %5390 = call float @dx.op.binary.f32(i32 35, float %5389, float 0.000000e+00)  ; FMax(a,b)
  %5391 = call float @dx.op.binary.f32(i32 36, float %5375, float %5390)  ; FMin(a,b)
  %5392 = call float @dx.op.binary.f32(i32 36, float %5360, float %5391)  ; FMin(a,b)
  %5393 = fmul fast float %5392, %5184
  %5394 = fmul fast float %5392, %5185
  %5395 = fmul fast float %5392, %5186
  %5396 = fadd fast float %5393, %167
  %5397 = fadd fast float %5394, %168
  %5398 = fadd fast float %5395, %169
  %5399 = fsub fast float %5396, %5244
  %5400 = fsub fast float %5397, %5245
  %5401 = fsub fast float %5398, %5246
  br label %5409

; <label>:5402                                    ; preds = %5344
  %5403 = fmul fast float %5184, 8.096000e+03
  %5404 = fmul fast float %5185, 8.096000e+03
  %5405 = fmul fast float %5186, 8.096000e+03
  %5406 = fadd fast float %5403, %167
  %5407 = fadd fast float %5404, %168
  %5408 = fadd fast float %5405, %169
  br label %5409

; <label>:5409                                    ; preds = %5402, %5345
  %5410 = phi float [ %5184, %5402 ], [ %5399, %5345 ]
  %5411 = phi float [ %5185, %5402 ], [ %5400, %5345 ]
  %5412 = phi float [ %5186, %5402 ], [ %5401, %5345 ]
  %5413 = phi float [ %5406, %5402 ], [ %5396, %5345 ]
  %5414 = phi float [ %5407, %5402 ], [ %5397, %5345 ]
  %5415 = phi float [ %5408, %5402 ], [ %5398, %5345 ]
  %5416 = fcmp fast olt float %5263, 1.000000e+00
  br i1 %5416, label %5417, label %5448, !dx.controlflow.hints !99

; <label>:5417                                    ; preds = %5409
  %5418 = fmul fast float %5412, %5261
  %5419 = fmul fast float %5411, %5262
  %5420 = fsub fast float %5418, %5419
  %5421 = fmul fast float %5410, %5262
  %5422 = fmul fast float %5412, %5260
  %5423 = fsub fast float %5421, %5422
  %5424 = fmul fast float %5411, %5260
  %5425 = fmul fast float %5410, %5261
  %5426 = fsub fast float %5424, %5425
  %5427 = fmul fast float %5420, 2.000000e+00
  %5428 = fmul fast float %5423, 2.000000e+00
  %5429 = fmul fast float %5426, 2.000000e+00
  %5430 = fmul fast float %5427, %5263
  %5431 = fmul fast float %5428, %5263
  %5432 = fmul fast float %5429, %5263
  %5433 = fmul fast float %5429, %5261
  %5434 = fmul fast float %5428, %5262
  %5435 = fmul fast float %5427, %5262
  %5436 = fmul fast float %5429, %5260
  %5437 = fmul fast float %5428, %5260
  %5438 = fmul fast float %5427, %5261
  %5439 = fadd fast float %5433, %5410
  %5440 = fadd fast float %5439, %5430
  %5441 = fsub fast float %5440, %5434
  %5442 = fsub fast float %5411, %5436
  %5443 = fadd fast float %5442, %5431
  %5444 = fadd fast float %5443, %5435
  %5445 = fadd fast float %5432, %5412
  %5446 = fsub fast float %5445, %5438
  %5447 = fadd fast float %5446, %5437
  br label %5448

; <label>:5448                                    ; preds = %5417, %5409
  %5449 = phi float [ %5441, %5417 ], [ %5410, %5409 ]
  %5450 = phi float [ %5444, %5417 ], [ %5411, %5409 ]
  %5451 = phi float [ %5447, %5417 ], [ %5412, %5409 ]
  br i1 %5289, label %5483, label %5452

; <label>:5452                                    ; preds = %5448
  %5453 = fmul fast float %4923, 0x400187C840000000
  %5454 = fadd fast float %5453, 0xC00EFC2120000000
  %5455 = fmul fast float %5454, %4923
  %5456 = fadd fast float %5455, 0x3FE5D16340000000
  %5457 = fmul fast float %5456, %4923
  %5458 = fadd fast float %5457, 1.000000e+00
  %5459 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5460 = fsub fast float %5413, %167
  %5461 = fsub fast float %5414, %168
  %5462 = fsub fast float %5415, %169
  %5463 = fsub fast float %5413, %5244
  %5464 = fsub fast float %5414, %5245
  %5465 = fsub fast float %5415, %5246
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5460, float %5461, float %5462, float %5460, float %5461, float %5462)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5465, float %5463, float %5464, float %5465)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = fadd fast float %5467, 0x3EE4F8B580000000
  %5469 = fdiv fast float %5466, %5468
  %5470 = bitcast float %5469 to i32
  %5471 = ashr i32 %5470, 1
  %5472 = add nsw i32 %5471, 532487669
  %5473 = bitcast i32 %5472 to float
  %5474 = fmul fast float %5473, %5459
  %5475 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5476 = fmul fast float %5475, 0x4009981AE0000000
  %5477 = fsub fast float 0x40111BBD80000000, %5476
  %5478 = fmul fast float %5477, %5475
  %5479 = fadd fast float %5478, 0xC0009F6020000000
  %5480 = fmul fast float %5479, %5475
  %5481 = fadd fast float %5480, 1.000000e+00
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  br label %5486

; <label>:5483                                    ; preds = %5448
  %5484 = icmp ne i32 %5290, -1
  %5485 = zext i1 %5484 to i32
  br label %5486

; <label>:5486                                    ; preds = %5483, %5452
  %5487 = phi float [ %4923, %5483 ], [ %5482, %5452 ]
  %5488 = phi i32 [ %5485, %5483 ], [ 0, %5452 ]
  %5489 = fmul float %5487, 5.000000e+00
  %5490 = fsub float 5.000000e+00, %5489
  %5491 = icmp ne i32 %5488, 0
  %5492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5493 = extractvalue %dx.types.CBufRet.f32 %5492, 3
  %5494 = fadd fast float %5493, %5490
  %5495 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5494)  ; FMax(a,b)
  %5496 = call float @dx.op.unary.f32(i32 6, float %5449)  ; FAbs(value)
  %5497 = call float @dx.op.unary.f32(i32 6, float %5450)  ; FAbs(value)
  %5498 = fadd fast float %5497, %5496
  %5499 = call float @dx.op.unary.f32(i32 6, float %5451)  ; FAbs(value)
  %5500 = fadd fast float %5498, %5499
  %5501 = fcmp fast oeq float %5500, 0.000000e+00
  %5502 = fdiv fast float 1.000000e+00, %5500
  %5503 = select i1 %5501, float 1.000000e+00, float %5502
  %5504 = fmul fast float %5503, %5449
  %5505 = fmul fast float %5503, %5450
  %5506 = call float @dx.op.unary.f32(i32 6, float %5505)  ; FAbs(value)
  %5507 = call float @dx.op.unary.f32(i32 6, float %5504)  ; FAbs(value)
  %5508 = fsub fast float 1.000000e+00, %5506
  %5509 = fsub fast float 1.000000e+00, %5507
  %5510 = fcmp fast oge float %5504, 0.000000e+00
  %5511 = fcmp fast oge float %5505, 0.000000e+00
  %5512 = select i1 %5510, float 1.000000e+00, float -1.000000e+00
  %5513 = select i1 %5511, float 1.000000e+00, float -1.000000e+00
  %5514 = fcmp fast ole float %5451, 0.000000e+00
  %5515 = fmul fast float %5512, %5508
  %5516 = fmul fast float %5513, %5509
  %5517 = select i1 %5514, float %5515, float %5504
  %5518 = select i1 %5514, float %5516, float %5505
  %5519 = fmul fast float %5517, 5.000000e-01
  %5520 = fmul fast float %5518, 5.000000e-01
  %5521 = fadd fast float %5519, 5.000000e-01
  %5522 = fadd fast float %5520, 5.000000e-01
  %5523 = uitofp i32 %5287 to float
  %5524 = call float @dx.op.binary.f32(i32 36, float %5495, float 3.000000e+00)  ; FMin(a,b)
  %5525 = fadd fast float %5524, 2.000000e+00
  %5526 = call float @dx.op.unary.f32(i32 21, float %5525)  ; Exp(value)
  %5527 = extractvalue %dx.types.CBufRet.f32 %5492, 1
  %5528 = fmul fast float %5527, %5526
  %5529 = fmul fast float %5528, 2.000000e+00
  %5530 = fsub fast float 1.000000e+00, %5529
  %5531 = fmul fast float %5521, %5530
  %5532 = fmul fast float %5522, %5530
  %5533 = fadd fast float %5531, %5528
  %5534 = fadd fast float %5532, %5528
  %5535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %5533, float %5534, float %5523, float undef, i32 0, i32 0, i32 undef, float %5495)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5536 = extractvalue %dx.types.ResRet.f32 %5535, 0
  %5537 = extractvalue %dx.types.ResRet.f32 %5535, 1
  %5538 = extractvalue %dx.types.ResRet.f32 %5535, 2
  %5539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5540 = extractvalue %dx.types.CBufRet.f32 %5539, 3
  %5541 = fmul fast float %5540, %5257
  %5542 = call float @dx.op.binary.f32(i32 36, float %4990, float %5541)  ; FMin(a,b)
  %5543 = select i1 %5491, float %5542, float %5541
  %5544 = fmul fast float %5536, %5336
  %5545 = fmul fast float %5544, %5543
  %5546 = fmul fast float %5537, %5336
  %5547 = fmul fast float %5546, %5543
  %5548 = fmul fast float %5538, %5336
  %5549 = fmul fast float %5548, %5543
  %5550 = fadd fast float %5545, %5232
  %5551 = fadd fast float %5547, %5233
  %5552 = fadd fast float %5549, %5234
  %5553 = fsub fast float %5235, %5336
  br label %5338

; <label>:5554                                    ; preds = %5338
  br label %5555

; <label>:5555                                    ; preds = %5554, %5201
  %5556 = phi float [ %5202, %5201 ], [ %5339, %5554 ]
  %5557 = phi float [ %5203, %5201 ], [ %5340, %5554 ]
  %5558 = phi float [ %5204, %5201 ], [ %5341, %5554 ]
  %5559 = phi float [ %5205, %5201 ], [ %5342, %5554 ]
  %5560 = add i32 %5206, 1
  %5561 = icmp ugt i32 %5560, %5198
  br i1 %5561, label %5562, label %5201, !llvm.loop !100

; <label>:5562                                    ; preds = %5555
  br label %5563

; <label>:5563                                    ; preds = %5562, %5183
  %5564 = phi float [ 0.000000e+00, %5183 ], [ %5556, %5562 ]
  %5565 = phi float [ 0.000000e+00, %5183 ], [ %5557, %5562 ]
  %5566 = phi float [ 0.000000e+00, %5183 ], [ %5558, %5562 ]
  %5567 = call float @dx.op.dot3.f32(i32 55, float %5564, float %5565, float %5566, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5568 = select i1 %261, float 0.000000e+00, float %5564
  %5569 = select i1 %261, float %5567, float %5565
  %5570 = select i1 %261, float 0.000000e+00, float %5566
  %5571 = fcmp fast olt float %5109, 0.000000e+00
  %5572 = call float @dx.op.unary.f32(i32 6, float %5109)  ; FAbs(value)
  %5573 = fmul fast float %5572, %5049
  %5574 = fmul fast float %5572, %5050
  %5575 = fmul fast float %5572, %5051
  %5576 = select i1 %5571, float %5049, float %5573
  %5577 = select i1 %5571, float %5050, float %5574
  %5578 = select i1 %5571, float %5051, float %5575
  %5579 = fsub fast float 1.000000e+00, %5572
  %5580 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  %5581 = fmul fast float %5580, %5568
  %5582 = fmul fast float %5580, %5569
  %5583 = fmul fast float %5580, %5570
  %5584 = fadd fast float %5576, %5581
  %5585 = fadd fast float %5577, %5582
  %5586 = fadd fast float %5578, %5583
  br label %5587

; <label>:5587                                    ; preds = %5563, %5092
  %5588 = phi float [ %5049, %5092 ], [ %5584, %5563 ]
  %5589 = phi float [ %5050, %5092 ], [ %5585, %5563 ]
  %5590 = phi float [ %5051, %5092 ], [ %5586, %5563 ]
  %5591 = fmul fast float %5098, %5045
  %5592 = fmul fast float %5098, %5046
  %5593 = fmul fast float %5098, %5047
  %5594 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4918, float %4919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = fcmp fast ogt float %5594, 0x3E7FF19E20000000
  %5596 = fdiv fast float 1.000000e+00, %5594
  %5597 = select i1 %5595, float %5596, float 0.000000e+00
  %5598 = fmul fast float %5597, %4917
  %5599 = fmul fast float %5597, %4918
  %5600 = fmul fast float %5597, %4919
  %5601 = fadd fast float %5598, -1.000000e+00
  %5602 = fadd fast float %5599, -1.000000e+00
  %5603 = fadd fast float %5600, -1.000000e+00
  %5604 = fmul fast float %5601, 5.000000e-01
  %5605 = fmul fast float %5602, 5.000000e-01
  %5606 = fmul fast float %5603, 5.000000e-01
  %5607 = fadd fast float %5604, 1.000000e+00
  %5608 = fadd fast float %5605, 1.000000e+00
  %5609 = fadd fast float %5606, 1.000000e+00
  %5610 = fmul fast float %5588, %5093
  %5611 = fmul fast float %5589, %5094
  %5612 = fmul fast float %5590, %5095
  %5613 = fsub fast float 1.000000e+00, %4928
  %5614 = bitcast float %5613 to i32
  %5615 = sitofp i32 %5614 to float
  %5616 = fmul fast float %5615, 5.000000e+00
  %5617 = fadd fast float %5616, 0xC1EFBF8940000000
  %5618 = fptosi float %5617 to i32
  %5619 = bitcast i32 %5618 to float
  %5620 = fmul fast float %5619, %4309
  %5621 = fmul fast float %5045, %5620
  %5622 = fmul fast float %5621, %5098
  %5623 = fmul fast float %5622, %5607
  %5624 = fmul fast float %5046, %5620
  %5625 = fmul fast float %5624, %5098
  %5626 = fmul fast float %5625, %5608
  %5627 = fmul fast float %5047, %5620
  %5628 = fmul fast float %5627, %5098
  %5629 = fmul fast float %5628, %5609
  %5630 = fmul fast float %5591, %4334
  %5631 = fmul fast float %5592, %4334
  %5632 = fmul fast float %5593, %4334
  %5633 = fadd fast float %5610, %4301
  %5634 = fadd fast float %5633, %5623
  %5635 = fmul fast float %5634, %4334
  %5636 = fadd fast float %5611, %4302
  %5637 = fadd fast float %5636, %5626
  %5638 = fmul fast float %5637, %4334
  %5639 = fadd fast float %5612, %4303
  %5640 = fadd fast float %5639, %5629
  %5641 = fmul fast float %5640, %4334
  %5642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5643 = extractvalue %dx.types.CBufRet.f32 %5642, 3
  %5644 = fcmp fast oeq float %5643, 0.000000e+00
  br i1 %5644, label %7186, label %5645

; <label>:5645                                    ; preds = %5587
  %5646 = extractvalue %dx.types.CBufRet.f32 %5642, 0
  %5647 = extractvalue %dx.types.CBufRet.f32 %5642, 1
  %5648 = extractvalue %dx.types.CBufRet.f32 %5642, 2
  %5649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = extractvalue %dx.types.CBufRet.f32 %5649, 0
  %5651 = extractvalue %dx.types.CBufRet.f32 %5649, 1
  %5652 = extractvalue %dx.types.CBufRet.f32 %5649, 2
  %5653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5654 = extractvalue %dx.types.CBufRet.f32 %5653, 0
  %5655 = extractvalue %dx.types.CBufRet.f32 %5653, 1
  %5656 = call float @dx.op.dot3.f32(i32 55, float %5650, float %5651, float %5652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5657 = select i1 %261, float %5654, float %5650
  %5658 = select i1 %261, float %5656, float %5651
  %5659 = select i1 %261, float %5655, float %5652
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 2
  %5662 = fmul fast float %5661, %111
  %5663 = fmul fast float %5661, %112
  %5664 = fmul fast float %5661, %113
  %5665 = fadd fast float %5662, %167
  %5666 = fadd fast float %5663, %168
  %5667 = fadd fast float %5664, %169
  %5668 = fcmp fast olt float %5643, 0.000000e+00
  br i1 %5668, label %6764, label %5669

; <label>:5669                                    ; preds = %5645
  %5670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5671 = extractvalue %dx.types.CBufRet.f32 %5670, 0
  %5672 = extractvalue %dx.types.CBufRet.f32 %5670, 1
  %5673 = extractvalue %dx.types.CBufRet.f32 %5670, 2
  %5674 = extractvalue %dx.types.CBufRet.f32 %5670, 3
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.CBufRet.f32 %5675, 1
  %5678 = extractvalue %dx.types.CBufRet.f32 %5675, 2
  %5679 = extractvalue %dx.types.CBufRet.f32 %5675, 3
  %5680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.CBufRet.f32 %5680, 1
  %5683 = extractvalue %dx.types.CBufRet.f32 %5680, 2
  %5684 = extractvalue %dx.types.CBufRet.f32 %5680, 3
  %5685 = fmul fast float %5671, %5665
  %5686 = call float @dx.op.tertiary.f32(i32 46, float %5666, float %5672, float %5685)  ; FMad(a,b,c)
  %5687 = call float @dx.op.tertiary.f32(i32 46, float %5667, float %5673, float %5686)  ; FMad(a,b,c)
  %5688 = fadd fast float %5687, %5674
  %5689 = fmul fast float %5676, %5665
  %5690 = call float @dx.op.tertiary.f32(i32 46, float %5666, float %5677, float %5689)  ; FMad(a,b,c)
  %5691 = call float @dx.op.tertiary.f32(i32 46, float %5667, float %5678, float %5690)  ; FMad(a,b,c)
  %5692 = fadd fast float %5691, %5679
  %5693 = fmul fast float %5681, %5665
  %5694 = call float @dx.op.tertiary.f32(i32 46, float %5666, float %5682, float %5693)  ; FMad(a,b,c)
  %5695 = call float @dx.op.tertiary.f32(i32 46, float %5667, float %5683, float %5694)  ; FMad(a,b,c)
  %5696 = fadd fast float %5695, %5684
  %5697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.CBufRet.f32 %5697, 1
  %5700 = extractvalue %dx.types.CBufRet.f32 %5697, 3
  %5701 = fmul fast float %5700, %5688
  %5702 = fmul fast float %5700, %5692
  %5703 = fadd fast float %5701, %5698
  %5704 = fadd fast float %5702, %5699
  %5705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.f32 %5705, 0
  %5707 = extractvalue %dx.types.CBufRet.f32 %5705, 1
  %5708 = extractvalue %dx.types.CBufRet.f32 %5705, 3
  %5709 = fmul fast float %5708, %5688
  %5710 = fmul fast float %5708, %5692
  %5711 = fadd fast float %5709, %5706
  %5712 = fadd fast float %5710, %5707
  %5713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5714 = extractvalue %dx.types.CBufRet.f32 %5713, 1
  %5715 = fsub fast float %5714, %5696
  %5716 = extractvalue %dx.types.CBufRet.f32 %5713, 2
  %5717 = fmul fast float %5715, %5716
  %5718 = fsub fast float 1.000000e+00, %5717
  %5719 = call float @dx.op.unary.f32(i32 7, float %5718)  ; Saturate(value)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5705, 2
  %5721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5722 = extractvalue %dx.types.CBufRet.f32 %5721, 2
  %5723 = fadd fast float %5722, %5720
  %5724 = fcmp fast ogt float %5723, 0.000000e+00
  br i1 %5724, label %5725, label %5749

; <label>:5725                                    ; preds = %5669
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 0
  %5728 = extractvalue %dx.types.CBufRet.f32 %5726, 1
  %5729 = fsub fast float %5711, %5727
  %5730 = fsub fast float %5712, %5728
  %5731 = fcmp fast olt float %5729, 0.000000e+00
  %5732 = fcmp fast olt float %5730, 0.000000e+00
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 0
  %5735 = extractvalue %dx.types.CBufRet.f32 %5733, 1
  %5736 = extractvalue %dx.types.CBufRet.f32 %5733, 2
  %5737 = extractvalue %dx.types.CBufRet.f32 %5733, 3
  %5738 = select i1 %5731, float %5734, float %5736
  %5739 = select i1 %5732, float %5735, float %5737
  %5740 = fmul fast float %5738, %5729
  %5741 = fmul fast float %5739, %5730
  %5742 = call float @dx.op.unary.f32(i32 6, float %5740)  ; FAbs(value)
  %5743 = call float @dx.op.unary.f32(i32 6, float %5741)  ; FAbs(value)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5660, 0
  %5745 = call float @dx.op.binary.f32(i32 35, float %5742, float %5743)  ; FMax(a,b)
  %5746 = fsub fast float %5744, %5745
  %5747 = call float @dx.op.unary.f32(i32 7, float %5746)  ; Saturate(value)
  %5748 = fmul fast float %5747, %5719
  br label %5749

; <label>:5749                                    ; preds = %5725, %5669
  %5750 = phi float [ %5748, %5725 ], [ 0.000000e+00, %5669 ]
  %5751 = extractvalue %dx.types.CBufRet.f32 %5697, 2
  %5752 = extractvalue %dx.types.CBufRet.f32 %5721, 1
  %5753 = fadd fast float %5752, %5751
  %5754 = fcmp fast ogt float %5753, 0.000000e+00
  %5755 = extractvalue %dx.types.CBufRet.f32 %5660, 0
  br i1 %5754, label %5756, label %5779

; <label>:5756                                    ; preds = %5749
  %5757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5758 = extractvalue %dx.types.CBufRet.f32 %5757, 0
  %5759 = extractvalue %dx.types.CBufRet.f32 %5757, 1
  %5760 = fsub fast float %5703, %5758
  %5761 = fsub fast float %5704, %5759
  %5762 = fcmp fast olt float %5760, 0.000000e+00
  %5763 = fcmp fast olt float %5761, 0.000000e+00
  %5764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5765 = extractvalue %dx.types.CBufRet.f32 %5764, 0
  %5766 = extractvalue %dx.types.CBufRet.f32 %5764, 1
  %5767 = extractvalue %dx.types.CBufRet.f32 %5764, 2
  %5768 = extractvalue %dx.types.CBufRet.f32 %5764, 3
  %5769 = select i1 %5762, float %5765, float %5767
  %5770 = select i1 %5763, float %5766, float %5768
  %5771 = fmul fast float %5769, %5760
  %5772 = fmul fast float %5770, %5761
  %5773 = call float @dx.op.unary.f32(i32 6, float %5771)  ; FAbs(value)
  %5774 = call float @dx.op.unary.f32(i32 6, float %5772)  ; FAbs(value)
  %5775 = call float @dx.op.binary.f32(i32 35, float %5773, float %5774)  ; FMax(a,b)
  %5776 = fsub fast float %5755, %5775
  %5777 = call float @dx.op.unary.f32(i32 7, float %5776)  ; Saturate(value)
  %5778 = fmul fast float %5777, %5719
  br label %5779

; <label>:5779                                    ; preds = %5756, %5749
  %5780 = phi float [ %5778, %5756 ], [ 0.000000e+00, %5749 ]
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 1
  %5783 = call float @dx.op.unary.f32(i32 7, float %5782)  ; Saturate(value)
  %5784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.CBufRet.f32 %5784, 1
  %5787 = fsub fast float %5688, %5785
  %5788 = fsub fast float %5692, %5786
  %5789 = fcmp fast olt float %5787, 0.000000e+00
  %5790 = fcmp fast olt float %5788, 0.000000e+00
  %5791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.CBufRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.CBufRet.f32 %5791, 2
  %5795 = extractvalue %dx.types.CBufRet.f32 %5791, 3
  %5796 = select i1 %5789, float %5792, float %5794
  %5797 = select i1 %5790, float %5793, float %5795
  %5798 = fmul fast float %5796, %5787
  %5799 = fmul fast float %5797, %5788
  %5800 = call float @dx.op.unary.f32(i32 6, float %5798)  ; FAbs(value)
  %5801 = call float @dx.op.unary.f32(i32 6, float %5799)  ; FAbs(value)
  %5802 = call float @dx.op.binary.f32(i32 35, float %5800, float %5801)  ; FMax(a,b)
  %5803 = fsub fast float %5755, %5802
  %5804 = call float @dx.op.unary.f32(i32 7, float %5803)  ; Saturate(value)
  %5805 = call float @dx.op.binary.f32(i32 36, float %5804, float %5783)  ; FMin(a,b)
  %5806 = fmul fast float %5805, %5719
  %5807 = fsub fast float %5780, %5806
  %5808 = fsub fast float %5750, %5780
  %5809 = fsub fast float %5808, %5806
  %5810 = call float @dx.op.binary.f32(i32 35, float %5780, float %5750)  ; FMax(a,b)
  %5811 = call float @dx.op.binary.f32(i32 35, float %5806, float %5810)  ; FMax(a,b)
  %5812 = fcmp fast olt float %5811, 1.000000e+00
  br i1 %5812, label %5813, label %6211, !dx.controlflow.hints !102

; <label>:5813                                    ; preds = %5779
  %5814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5815 = extractvalue %dx.types.CBufRet.f32 %5814, 0
  %5816 = fcmp fast une float %5815, 0.000000e+00
  br i1 %5816, label %5817, label %6211, !dx.controlflow.hints !103

; <label>:5817                                    ; preds = %5813
  %5818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.f32 %5818, 0
  %5820 = extractvalue %dx.types.CBufRet.f32 %5818, 1
  %5821 = extractvalue %dx.types.CBufRet.f32 %5818, 2
  %5822 = extractvalue %dx.types.CBufRet.f32 %5818, 3
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  %5825 = extractvalue %dx.types.CBufRet.f32 %5823, 1
  %5826 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5827 = extractvalue %dx.types.CBufRet.f32 %5823, 3
  %5828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5829 = extractvalue %dx.types.CBufRet.f32 %5828, 0
  %5830 = extractvalue %dx.types.CBufRet.f32 %5828, 1
  %5831 = extractvalue %dx.types.CBufRet.f32 %5828, 2
  %5832 = extractvalue %dx.types.CBufRet.f32 %5828, 3
  %5833 = fmul fast float %5819, %5665
  %5834 = call float @dx.op.tertiary.f32(i32 46, float %5666, float %5820, float %5833)  ; FMad(a,b,c)
  %5835 = call float @dx.op.tertiary.f32(i32 46, float %5667, float %5821, float %5834)  ; FMad(a,b,c)
  %5836 = fadd fast float %5835, %5822
  %5837 = fmul fast float %5824, %5665
  %5838 = call float @dx.op.tertiary.f32(i32 46, float %5666, float %5825, float %5837)  ; FMad(a,b,c)
  %5839 = call float @dx.op.tertiary.f32(i32 46, float %5667, float %5826, float %5838)  ; FMad(a,b,c)
  %5840 = fadd fast float %5839, %5827
  %5841 = fmul fast float %5829, %5665
  %5842 = call float @dx.op.tertiary.f32(i32 46, float %5666, float %5830, float %5841)  ; FMad(a,b,c)
  %5843 = call float @dx.op.tertiary.f32(i32 46, float %5667, float %5831, float %5842)  ; FMad(a,b,c)
  %5844 = fadd fast float %5843, %5832
  %5845 = fcmp fast oge float %5836, 1.000000e+00
  %5846 = fcmp fast oge float %5840, 1.000000e+00
  %5847 = or i1 %5845, %5846
  %5848 = fcmp fast olt float %5836, 0.000000e+00
  %5849 = fcmp fast olt float %5840, 0.000000e+00
  %5850 = or i1 %5848, %5849
  %5851 = or i1 %5847, %5850
  br i1 %5851, label %6211, label %5852, !dx.controlflow.hints !104

; <label>:5852                                    ; preds = %5817
  %5853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5854 = extractvalue %dx.types.CBufRet.f32 %5853, 0
  %5855 = extractvalue %dx.types.CBufRet.f32 %5853, 1
  %5856 = extractvalue %dx.types.CBufRet.f32 %5853, 2
  %5857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.i32 %5857, 2
  %5859 = uitofp i32 %5858 to float
  %5860 = extractvalue %dx.types.CBufRet.i32 %5857, 3
  %5861 = uitofp i32 %5860 to float
  %5862 = extractvalue %dx.types.CBufRet.f32 %5853, 3
  %5863 = fmul fast float %5862, 2.000000e+00
  %5864 = fsub fast float %5836, %5854
  %5865 = fsub fast float %5840, %5855
  %5866 = fmul fast float %5863, %5864
  %5867 = fmul fast float %5863, %5865
  %5868 = fdiv fast float 1.000000e+00, %5648
  %5869 = fmul fast float %5867, %5868
  %5870 = call float @dx.op.unary.f32(i32 6, float %5869)  ; FAbs(value)
  %5871 = fmul fast float %5856, %5667
  %5872 = fmul fast float %5871, %5863
  %5873 = call float @dx.op.unary.f32(i32 6, float %5872)  ; FAbs(value)
  %5874 = call float @dx.op.unary.f32(i32 6, float %5866)  ; FAbs(value)
  %5875 = call float @dx.op.binary.f32(i32 35, float %5873, float %5870)  ; FMax(a,b)
  %5876 = call float @dx.op.binary.f32(i32 35, float %5874, float %5875)  ; FMax(a,b)
  %5877 = fmul fast float %5876, 2.000000e+00
  %5878 = call float @dx.op.unary.f32(i32 23, float %5877)  ; Log(value)
  %5879 = call float @dx.op.binary.f32(i32 35, float %5878, float %5859)  ; FMax(a,b)
  %5880 = call float @dx.op.unary.f32(i32 22, float %5879)  ; Frc(value)
  %5881 = fadd fast float %5880, 0xBFEA666660000000
  %5882 = fmul fast float %5881, 8.000000e+00
  %5883 = call float @dx.op.unary.f32(i32 7, float %5882)  ; Saturate(value)
  %5884 = call float @dx.op.unary.f32(i32 27, float %5879)  ; Round_ni(value)
  %5885 = fadd fast float %5884, %5883
  %5886 = call float @dx.op.binary.f32(i32 36, float %5885, float %5861)  ; FMin(a,b)
  %5887 = call float @dx.op.unary.f32(i32 27, float %5886)  ; Round_ni(value)
  %5888 = fsub fast float -0.000000e+00, %5887
  %5889 = call float @dx.op.unary.f32(i32 21, float %5888)  ; Exp(value)
  %5890 = fmul fast float %5889, %5863
  %5891 = fmul fast float %5890, %5836
  %5892 = fmul fast float %5890, %5840
  %5893 = fmul fast float %5891, 2.500000e-01
  %5894 = fmul fast float %5892, 2.500000e-01
  %5895 = fadd fast float %5893, 5.000000e-01
  %5896 = fadd fast float %5894, 5.000000e-01
  %5897 = fsub fast float %5861, %5859
  %5898 = fptoui float %5897 to i32
  %5899 = add i32 %5898, 320
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %5899)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 0
  %5902 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5903 = fcmp fast une float %5886, %5861
  %5904 = fsub fast float %5836, %5901
  %5905 = fsub fast float %5840, %5902
  %5906 = call float @dx.op.unary.f32(i32 6, float %5904)  ; FAbs(value)
  %5907 = call float @dx.op.unary.f32(i32 6, float %5905)  ; FAbs(value)
  %5908 = fmul fast float %5906, %5890
  %5909 = fmul fast float %5907, %5890
  %5910 = fcmp fast olt float %5908, 1.000000e+00
  %5911 = fcmp fast olt float %5909, 1.000000e+00
  %5912 = and i1 %5910, %5911
  %5913 = or i1 %5903, %5912
  br i1 %5913, label %5914, label %6211, !dx.controlflow.hints !105

; <label>:5914                                    ; preds = %5852
  %5915 = fmul fast float %5892, 5.000000e-01
  %5916 = fmul fast float %5891, 5.000000e-01
  %5917 = fadd fast float %5915, 5.000000e-01
  %5918 = fadd fast float %5916, 5.000000e-01
  %5919 = sitofp i32 %5858 to float
  %5920 = fsub fast float %5886, %5919
  %5921 = call float @dx.op.unary.f32(i32 27, float %5920)  ; Round_ni(value)
  %5922 = call float @dx.op.unary.f32(i32 22, float %5886)  ; Frc(value)
  %5923 = call float @dx.op.unary.f32(i32 22, float %5918)  ; Frc(value)
  %5924 = call float @dx.op.unary.f32(i32 22, float %5917)  ; Frc(value)
  %5925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5923, float %5924, float %5921, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5926 = extractvalue %dx.types.ResRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.ResRet.f32 %5925, 1
  %5928 = extractvalue %dx.types.ResRet.f32 %5925, 2
  %5929 = extractvalue %dx.types.ResRet.f32 %5925, 3
  %5930 = fcmp fast ogt float %5922, 0.000000e+00
  br i1 %5930, label %5931, label %5952, !dx.controlflow.hints !106

; <label>:5931                                    ; preds = %5914
  %5932 = fadd fast float %5921, 1.000000e+00
  %5933 = call float @dx.op.unary.f32(i32 22, float %5895)  ; Frc(value)
  %5934 = call float @dx.op.unary.f32(i32 22, float %5896)  ; Frc(value)
  %5935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5933, float %5934, float %5932, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5936 = extractvalue %dx.types.ResRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.ResRet.f32 %5935, 1
  %5938 = extractvalue %dx.types.ResRet.f32 %5935, 2
  %5939 = extractvalue %dx.types.ResRet.f32 %5935, 3
  %5940 = fsub fast float %5936, %5926
  %5941 = fsub fast float %5937, %5927
  %5942 = fsub fast float %5938, %5928
  %5943 = fsub fast float %5939, %5929
  %5944 = fmul fast float %5940, %5922
  %5945 = fmul fast float %5941, %5922
  %5946 = fmul fast float %5942, %5922
  %5947 = fmul fast float %5943, %5922
  %5948 = fadd fast float %5944, %5926
  %5949 = fadd fast float %5945, %5927
  %5950 = fadd fast float %5946, %5928
  %5951 = fadd fast float %5947, %5929
  br label %5952

; <label>:5952                                    ; preds = %5931, %5914
  %5953 = phi float [ %5948, %5931 ], [ %5926, %5914 ]
  %5954 = phi float [ %5949, %5931 ], [ %5927, %5914 ]
  %5955 = phi float [ %5950, %5931 ], [ %5928, %5914 ]
  %5956 = phi float [ %5951, %5931 ], [ %5929, %5914 ]
  %5957 = fadd fast float %5953, -5.000000e-01
  %5958 = fadd fast float %5955, -5.000000e-01
  %5959 = fmul fast float %5957, 0xBFD5555560000000
  %5960 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5958, float %5959)  ; FMad(a,b,c)
  %5961 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5954, float 0.000000e+00)  ; FMad(a,b,c)
  %5962 = fadd fast float %5961, %5956
  %5963 = fmul fast float %5957, -7.500000e-01
  %5964 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5958, float %5963)  ; FMad(a,b,c)
  %5965 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5954, float 0.000000e+00)  ; FMad(a,b,c)
  %5966 = fadd fast float %5965, %5956
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 0
  %5969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5970 = extractvalue %dx.types.CBufRet.f32 %5969, 0
  %5971 = extractvalue %dx.types.CBufRet.f32 %5969, 1
  %5972 = extractvalue %dx.types.CBufRet.f32 %5969, 2
  %5973 = extractvalue %dx.types.CBufRet.f32 %5969, 3
  %5974 = fsub fast float %5970, %5960
  %5975 = fsub fast float %5971, %5962
  %5976 = fsub fast float %5972, %5964
  %5977 = fsub fast float %5973, %5966
  %5978 = fmul fast float %5974, %5968
  %5979 = fmul fast float %5975, %5968
  %5980 = fmul fast float %5976, %5968
  %5981 = fmul fast float %5977, %5968
  %5982 = fadd fast float %5978, %5960
  %5983 = fadd fast float %5979, %5962
  %5984 = fadd fast float %5980, %5964
  %5985 = fadd fast float %5981, %5966
  %5986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5987 = extractvalue %dx.types.ResRet.i32 %5986, 0
  %5988 = and i32 %5987, 536870911
  %5989 = uitofp i32 %5988 to float
  %5990 = fmul fast float %5989, %5836
  %5991 = fmul fast float %5989, %5840
  %5992 = fptoui float %5990 to i32
  %5993 = fptoui float %5991 to i32
  %5994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5995 = extractvalue %dx.types.ResRet.i32 %5994, 0
  %5996 = and i32 %5995, 31
  %5997 = lshr i32 %5992, %5996
  %5998 = lshr i32 %5993, %5996
  %5999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6000 = extractvalue %dx.types.ResRet.i32 %5999, 0
  %6001 = and i32 %6000, 31
  %6002 = shl i32 1, %6001
  %6003 = call i32 @dx.op.binary.i32(i32 40, i32 %6002, i32 4)  ; UMin(a,b)
  %6004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6005 = extractvalue %dx.types.ResRet.i32 %6004, 0
  %6006 = extractvalue %dx.types.ResRet.i32 %6004, 1
  %6007 = icmp eq i32 %6003, 0
  br i1 %6007, label %6049, label %6008

; <label>:6008                                    ; preds = %5952
  br label %6009

; <label>:6009                                    ; preds = %6037, %6008
  %6010 = phi i32 [ %6040, %6037 ], [ 0, %6008 ]
  %6011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6012 = extractvalue %dx.types.ResRet.i32 %6011, 0
  %6013 = lshr i32 %6012, 16
  %6014 = and i32 %6013, 31
  %6015 = shl i32 %5998, %6014
  %6016 = add i32 %6015, %5997
  %6017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6018 = extractvalue %dx.types.ResRet.i32 %6017, 0
  %6019 = and i32 %6018, 31
  %6020 = shl i32 %6016, %6019
  %6021 = add i32 %6020, %6010
  %6022 = shl i32 %6021, 2
  %6023 = add i32 %6022, 32
  %6024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6023, i32 undef)  ; BufferLoad(srv,index,wot)
  %6025 = extractvalue %dx.types.ResRet.i32 %6024, 0
  %6026 = icmp slt i32 %6025, 0
  %6027 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6010
  %6028 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6010
  %6029 = bitcast float* %6027 to i32*
  %6030 = bitcast float* %6028 to i32*
  br i1 %6026, label %6031, label %6037

; <label>:6031                                    ; preds = %6009
  %6032 = and i32 %6025, 1073741823
  %6033 = add nuw nsw i32 %6032, 20
  %6034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6033, i32 undef)  ; BufferLoad(srv,index,wot)
  %6035 = extractvalue %dx.types.ResRet.i32 %6034, 0
  %6036 = extractvalue %dx.types.ResRet.i32 %6034, 1
  br label %6037

; <label>:6037                                    ; preds = %6031, %6009
  %6038 = phi i32 [ %6035, %6031 ], [ %6005, %6009 ]
  %6039 = phi i32 [ %6036, %6031 ], [ %6006, %6009 ]
  store i32 %6038, i32* %6029, align 4
  store i32 %6039, i32* %6030, align 4
  %6040 = add nuw i32 %6010, 1
  %6041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.i32 %6041, 2
  %6043 = icmp eq i32 %6042, 0
  %6044 = icmp ugt i32 %6025, -1073741825
  %6045 = and i1 %6044, %6043
  %6046 = icmp ult i32 %6040, %6003
  %6047 = and i1 %6045, %6046
  br i1 %6047, label %6009, label %6048

; <label>:6048                                    ; preds = %6037
  br label %6049

; <label>:6049                                    ; preds = %6048, %5952
  %6050 = phi i32 [ 0, %5952 ], [ %6040, %6048 ]
  %6051 = extractvalue %dx.types.CBufRet.f32 %5814, 2
  %6052 = fptoui float %6051 to i32
  %6053 = icmp eq i32 %6052, 0
  br i1 %6053, label %6105, label %6054

; <label>:6054                                    ; preds = %6049
  br label %6055

; <label>:6055                                    ; preds = %6100, %6054
  %6056 = phi i32 [ %6101, %6100 ], [ %6050, %6054 ]
  %6057 = phi i32 [ %6102, %6100 ], [ 0, %6054 ]
  %6058 = lshr i32 %6057, 2
  %6059 = and i32 %6057, 3
  %6060 = add nuw nsw i32 %6058, 83
  %6061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6060)  ; CBufferLoadLegacy(handle,regIndex)
  %6062 = extractvalue %dx.types.CBufRet.i32 %6061, 0
  %6063 = extractvalue %dx.types.CBufRet.i32 %6061, 1
  %6064 = extractvalue %dx.types.CBufRet.i32 %6061, 2
  %6065 = extractvalue %dx.types.CBufRet.i32 %6061, 3
  %6066 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6062, i32* %6066, align 4
  %6067 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6063, i32* %6067, align 4
  %6068 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6064, i32* %6068, align 4
  %6069 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6065, i32* %6069, align 4
  %6070 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6059
  %6071 = load i32, i32* %6070, align 4, !tbaa !107, !noalias !111
  %6072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6073 = extractvalue %dx.types.ResRet.i32 %6072, 0
  %6074 = lshr i32 %6073, 16
  %6075 = and i32 %6074, 31
  %6076 = shl i32 %5998, %6075
  %6077 = add i32 %6076, %5997
  %6078 = shl i32 %6077, 2
  %6079 = add i32 %6078, %6071
  %6080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6079, i32 undef)  ; BufferLoad(srv,index,wot)
  %6081 = extractvalue %dx.types.ResRet.i32 %6080, 0
  %6082 = icmp eq i32 %6081, 0
  br i1 %6082, label %6100, label %6083

; <label>:6083                                    ; preds = %6055
  %6084 = icmp slt i32 %6081, 0
  %6085 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6056
  %6086 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6056
  %6087 = bitcast float* %6085 to i32*
  %6088 = bitcast float* %6086 to i32*
  br i1 %6084, label %6089, label %6096

; <label>:6089                                    ; preds = %6083
  %6090 = and i32 %6081, 1073741823
  %6091 = add i32 %6071, 20
  %6092 = add i32 %6091, %6090
  %6093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6092, i32 undef)  ; BufferLoad(srv,index,wot)
  %6094 = extractvalue %dx.types.ResRet.i32 %6093, 0
  %6095 = extractvalue %dx.types.ResRet.i32 %6093, 1
  br label %6096

; <label>:6096                                    ; preds = %6089, %6083
  %6097 = phi i32 [ %6094, %6089 ], [ %6005, %6083 ]
  %6098 = phi i32 [ %6095, %6089 ], [ %6006, %6083 ]
  store i32 %6097, i32* %6087, align 4
  store i32 %6098, i32* %6088, align 4
  %6099 = add i32 %6056, 1
  br label %6100

; <label>:6100                                    ; preds = %6096, %6055
  %6101 = phi i32 [ %6056, %6055 ], [ %6099, %6096 ]
  %6102 = add nuw i32 %6057, 1
  %6103 = icmp eq i32 %6102, %6052
  br i1 %6103, label %6104, label %6055

; <label>:6104                                    ; preds = %6100
  br label %6105

; <label>:6105                                    ; preds = %6104, %6049
  %6106 = phi i32 [ %6050, %6049 ], [ %6101, %6104 ]
  %6107 = icmp eq i32 %6106, 1
  %6108 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %6109 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %6107, label %6110, label %6113

; <label>:6110                                    ; preds = %6105
  %6111 = load float, float* %6108, align 4
  %6112 = load float, float* %6109, align 4
  br label %6140

; <label>:6113                                    ; preds = %6105
  %6114 = load float, float* %6108, align 4
  %6115 = load float, float* %6109, align 4
  %6116 = fdiv fast float 1.000000e+00, %6115
  %6117 = fsub fast float %6114, %6116
  %6118 = icmp ugt i32 %6106, 1
  br i1 %6118, label %6119, label %6135

; <label>:6119                                    ; preds = %6113
  br label %6120

; <label>:6120                                    ; preds = %6120, %6119
  %6121 = phi float [ %6130, %6120 ], [ %6117, %6119 ]
  %6122 = phi float [ %6131, %6120 ], [ %6114, %6119 ]
  %6123 = phi i32 [ %6132, %6120 ], [ 1, %6119 ]
  %6124 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6123
  %6125 = load float, float* %6124, align 4
  %6126 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6123
  %6127 = load float, float* %6126, align 4
  %6128 = fdiv fast float 1.000000e+00, %6127
  %6129 = fsub fast float %6125, %6128
  %6130 = call float @dx.op.binary.f32(i32 36, float %6121, float %6129)  ; FMin(a,b)
  %6131 = call float @dx.op.binary.f32(i32 35, float %6122, float %6125)  ; FMax(a,b)
  %6132 = add nuw i32 %6123, 1
  %6133 = icmp eq i32 %6132, %6106
  br i1 %6133, label %6134, label %6120

; <label>:6134                                    ; preds = %6120
  br label %6135

; <label>:6135                                    ; preds = %6134, %6113
  %6136 = phi float [ %6117, %6113 ], [ %6130, %6134 ]
  %6137 = phi float [ %6114, %6113 ], [ %6131, %6134 ]
  %6138 = fsub fast float %6137, %6136
  %6139 = fdiv fast float 1.000000e+00, %6138
  br label %6140

; <label>:6140                                    ; preds = %6135, %6110
  %6141 = phi float [ %6111, %6110 ], [ %6137, %6135 ]
  %6142 = phi float [ %6112, %6110 ], [ %6139, %6135 ]
  %6143 = fadd fast float %5844, %6141
  %6144 = fmul fast float %6143, %6142
  %6145 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6146 = fmul fast float %6145, 2.000000e+00
  %6147 = fsub fast float 1.000000e+00, %6146
  %6148 = fmul fast float %5982, %5982
  %6149 = fsub fast float %5983, %6148
  %6150 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6149)  ; FMax(a,b)
  %6151 = fdiv fast float 1.000000e+00, %6150
  %6152 = fmul fast float %5983, %5982
  %6153 = fsub fast float %5984, %6152
  %6154 = fsub fast float %6147, %5982
  %6155 = fmul fast float %6147, %6147
  %6156 = fsub fast float %6155, %5983
  %6157 = fmul fast float %6151, %6153
  %6158 = fmul fast float %6157, %6154
  %6159 = fsub fast float %6156, %6158
  %6160 = fmul fast float %5983, %5983
  %6161 = fsub fast float %5985, %6160
  %6162 = fmul fast float %6153, %6153
  %6163 = fmul fast float %6162, %6151
  %6164 = fsub fast float %6161, %6163
  %6165 = fdiv fast float %6159, %6164
  %6166 = fmul fast float %6165, %6153
  %6167 = fsub fast float %6154, %6166
  %6168 = fmul fast float %6167, %6151
  %6169 = fmul fast float %6168, %5982
  %6170 = fsub fast float 1.000000e+00, %6169
  %6171 = fmul fast float %6165, %5983
  %6172 = fsub fast float %6170, %6171
  %6173 = fmul fast float %6168, %6168
  %6174 = fmul fast float %6165, 4.000000e+00
  %6175 = fmul fast float %6174, %6172
  %6176 = fsub fast float %6173, %6175
  %6177 = call float @dx.op.unary.f32(i32 24, float %6176)  ; Sqrt(value)
  %6178 = fcmp fast oge float %6168, 0.000000e+00
  %6179 = fsub fast float -0.000000e+00, %6177
  %6180 = select i1 %6178, float %6179, float %6177
  %6181 = fsub fast float %6180, %6168
  %6182 = fdiv fast float %6181, %6165
  %6183 = fdiv fast float %6172, %6181
  %6184 = fmul fast float %6182, 5.000000e-01
  %6185 = fmul fast float %6183, 2.000000e+00
  %6186 = select i1 %6178, float %6184, float %6185
  %6187 = select i1 %6178, float %6185, float %6184
  %6188 = call float @dx.op.binary.f32(i32 35, float %6186, float %6187)  ; FMax(a,b)
  %6189 = call float @dx.op.binary.f32(i32 36, float %6186, float %6187)  ; FMin(a,b)
  %6190 = fcmp fast ogt float %6147, %6188
  %6191 = fsub fast float %6147, %6189
  %6192 = fsub fast float %6147, %6188
  %6193 = fsub fast float %6188, %6189
  %6194 = select i1 %6190, float %6192, float %6193
  %6195 = fmul float %6191, %6194
  %6196 = select i1 %6190, float %6189, float %6147
  %6197 = fcmp fast ogt float %6147, %6189
  %6198 = fmul fast float %6196, %6188
  %6199 = fadd fast float %6196, %6188
  %6200 = fmul fast float %6199, %5982
  %6201 = fadd fast float %6198, %5983
  %6202 = fsub fast float %6201, %6200
  %6203 = fdiv fast float %6202, %6195
  %6204 = select i1 %6197, float %6203, float 0.000000e+00
  %6205 = fsub fast float 1.000000e+00, %6204
  %6206 = select i1 %6190, float %6205, float %6204
  %6207 = call float @dx.op.unary.f32(i32 7, float %6206)  ; Saturate(value)
  %6208 = extractvalue %dx.types.CBufRet.f32 %5967, 3
  %6209 = fmul fast float %6208, %6207
  %6210 = fsub fast float 1.000000e+00, %6209
  br label %6211

; <label>:6211                                    ; preds = %6140, %5852, %5817, %5813, %5779
  %6212 = phi float [ 1.000000e+00, %5779 ], [ %6210, %6140 ], [ 1.000000e+00, %5817 ], [ 1.000000e+00, %5852 ], [ 1.000000e+00, %5813 ]
  %6213 = fcmp fast ogt float %5809, 0.000000e+00
  br i1 %6213, label %6214, label %6376, !dx.controlflow.hints !120

; <label>:6214                                    ; preds = %6211
  %6215 = fadd fast float %5722, %5696
  %6216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.f32 %6216, 2
  %6218 = extractvalue %dx.types.CBufRet.f32 %6216, 3
  %6219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6220 = extractvalue %dx.types.CBufRet.f32 %6219, 2
  %6221 = call float @dx.op.binary.f32(i32 35, float %6215, float 0.000000e+00)  ; FMax(a,b)
  %6222 = fadd fast float %6221, 0x3F10000000000000
  %6223 = fcmp fast oeq float %6220, 0.000000e+00
  br i1 %6223, label %6224, label %6291

; <label>:6224                                    ; preds = %6214
  %6225 = extractvalue %dx.types.CBufRet.f32 %6216, 1
  %6226 = extractvalue %dx.types.CBufRet.f32 %6216, 0
  %6227 = fmul fast float %6226, %5711
  %6228 = fmul fast float %6225, %5712
  %6229 = fadd fast float %6227, 5.000000e-01
  %6230 = call float @dx.op.unary.f32(i32 27, float %6229)  ; Round_ni(value)
  %6231 = fadd fast float %6228, 5.000000e-01
  %6232 = call float @dx.op.unary.f32(i32 27, float %6231)  ; Round_ni(value)
  %6233 = fsub fast float %6229, %6230
  %6234 = fsub fast float %6231, %6232
  %6235 = fadd fast float %6230, -5.000000e-01
  %6236 = fadd fast float %6232, -5.000000e-01
  %6237 = fmul fast float %6233, 2.000000e+00
  %6238 = fsub fast float 3.000000e+00, %6237
  %6239 = fadd fast float %6237, 1.000000e+00
  %6240 = fsub fast float 2.000000e+00, %6233
  %6241 = bitcast float %6238 to i32
  %6242 = sub nsw i32 2129859010, %6241
  %6243 = bitcast i32 %6242 to float
  %6244 = fmul fast float %6243, %6240
  %6245 = fadd fast float %6244, -1.000000e+00
  %6246 = bitcast float %6239 to i32
  %6247 = sub nsw i32 2129859010, %6246
  %6248 = bitcast i32 %6247 to float
  %6249 = fmul fast float %6248, %6233
  %6250 = fadd fast float %6249, 1.000000e+00
  %6251 = fmul fast float %6234, 2.000000e+00
  %6252 = fsub fast float 3.000000e+00, %6251
  %6253 = fadd fast float %6251, 1.000000e+00
  %6254 = fsub fast float 2.000000e+00, %6234
  %6255 = bitcast float %6252 to i32
  %6256 = sub nsw i32 2129859010, %6255
  %6257 = bitcast i32 %6256 to float
  %6258 = fmul fast float %6257, %6254
  %6259 = fadd fast float %6258, -1.000000e+00
  %6260 = bitcast float %6253 to i32
  %6261 = sub nsw i32 2129859010, %6260
  %6262 = bitcast i32 %6261 to float
  %6263 = fmul fast float %6262, %6234
  %6264 = fadd fast float %6263, 1.000000e+00
  %6265 = fadd fast float %6245, %6235
  %6266 = fmul fast float %6265, %6217
  %6267 = fadd fast float %6259, %6236
  %6268 = fmul fast float %6267, %6218
  %6269 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6266, float %6268, float undef, float undef, i32 0, i32 0, i32 undef, float %6222)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6270 = extractvalue %dx.types.ResRet.f32 %6269, 0
  %6271 = fmul fast float %6270, %6238
  %6272 = fadd fast float %6250, %6235
  %6273 = fmul fast float %6272, %6217
  %6274 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6273, float %6268, float undef, float undef, i32 0, i32 0, i32 undef, float %6222)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6275 = extractvalue %dx.types.ResRet.f32 %6274, 0
  %6276 = fmul fast float %6275, %6239
  %6277 = fadd fast float %6264, %6236
  %6278 = fmul fast float %6277, %6218
  %6279 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6266, float %6278, float undef, float undef, i32 0, i32 0, i32 undef, float %6222)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6280 = extractvalue %dx.types.ResRet.f32 %6279, 0
  %6281 = fmul fast float %6280, %6238
  %6282 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6273, float %6278, float undef, float undef, i32 0, i32 0, i32 undef, float %6222)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6283 = extractvalue %dx.types.ResRet.f32 %6282, 0
  %6284 = fmul fast float %6283, %6239
  %6285 = fadd fast float %6284, %6281
  %6286 = fmul fast float %6285, %6253
  %6287 = fadd fast float %6276, %6271
  %6288 = fmul fast float %6287, %6252
  %6289 = fadd fast float %6288, %6286
  %6290 = fmul fast float %6289, 6.250000e-02
  br label %6376

; <label>:6291                                    ; preds = %6214
  %6292 = fmul fast float %272, 0x401921FB60000000
  %6293 = call float @dx.op.unary.f32(i32 13, float %6292)  ; Sin(value)
  %6294 = call float @dx.op.unary.f32(i32 12, float %6292)  ; Cos(value)
  %6295 = fsub fast float -0.000000e+00, %6293
  br label %6296

; <label>:6296                                    ; preds = %6345, %6291
  %6297 = phi float [ 0.000000e+00, %6291 ], [ %6340, %6345 ]
  %6298 = phi float [ 0.000000e+00, %6291 ], [ %6342, %6345 ]
  %6299 = phi i32 [ 0, %6291 ], [ %6346, %6345 ]
  %6300 = mul i32 %6299, 2
  %6301 = add i32 0, %6300
  %6302 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6301
  %6303 = load float, float* %6302, align 4
  %6304 = mul i32 %6299, 2
  %6305 = add i32 1, %6304
  %6306 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6305
  %6307 = load float, float* %6306, align 4
  %6308 = fmul fast float %6303, %6294
  %6309 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6295, float %6308)  ; FMad(a,b,c)
  %6310 = fmul fast float %6303, %6293
  %6311 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6294, float %6310)  ; FMad(a,b,c)
  %6312 = fmul fast float %6309, %6220
  %6313 = fmul fast float %6311, %6220
  %6314 = fadd fast float %6312, %5711
  %6315 = fadd fast float %6313, %5712
  %6316 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6314, float %6315, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6317 = extractvalue %dx.types.ResRet.f32 %6316, 0
  %6318 = extractvalue %dx.types.ResRet.f32 %6316, 1
  %6319 = extractvalue %dx.types.ResRet.f32 %6316, 2
  %6320 = extractvalue %dx.types.ResRet.f32 %6316, 3
  %6321 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %6317, float* %6321, align 4
  %6322 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %6318, float* %6322, align 4
  %6323 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %6319, float* %6323, align 4
  %6324 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %6320, float* %6324, align 4
  %6325 = fsub fast float %6317, %6222
  %6326 = fcmp fast olt float %6325, 0.000000e+00
  %6327 = select i1 %6326, float 0.000000e+00, float 1.000000e+00
  %6328 = fadd fast float %6327, %6297
  %6329 = fmul fast float %6327, %6325
  %6330 = fadd fast float %6329, %6298
  br label %6331

; <label>:6331                                    ; preds = %6331, %6296
  %6332 = phi i32 [ 1, %6296 ], [ %6343, %6331 ]
  %6333 = phi float [ %6330, %6296 ], [ %6342, %6331 ]
  %6334 = phi float [ %6328, %6296 ], [ %6340, %6331 ]
  %6335 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %6332
  %6336 = load float, float* %6335, align 4, !tbaa !121, !noalias !111
  %6337 = fsub fast float %6336, %6222
  %6338 = fcmp fast olt float %6337, 0.000000e+00
  %6339 = select i1 %6338, float 0.000000e+00, float 1.000000e+00
  %6340 = fadd fast float %6339, %6334
  %6341 = fmul fast float %6339, %6337
  %6342 = fadd fast float %6341, %6333
  %6343 = add nuw nsw i32 %6332, 1
  %6344 = icmp eq i32 %6343, 4
  br i1 %6344, label %6345, label %6331, !llvm.loop !123

; <label>:6345                                    ; preds = %6331
  %6346 = add nuw nsw i32 %6299, 1
  %6347 = icmp eq i32 %6346, 8
  br i1 %6347, label %6348, label %6296, !llvm.loop !124

; <label>:6348                                    ; preds = %6345
  %6349 = fdiv fast float 1.000000e+00, %6340
  %6350 = fmul fast float %6349, %6342
  %6351 = fdiv fast float 1.000000e+00, %6222
  %6352 = fmul fast float %6350, %6351
  %6353 = call float @dx.op.unary.f32(i32 7, float %6352)  ; Saturate(value)
  %6354 = call float @dx.op.binary.f32(i32 35, float %6353, float 0.000000e+00)  ; FMax(a,b)
  %6355 = fmul fast float %6340, 3.125000e-02
  %6356 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6357 = fmul fast float %6356, 2.000000e+00
  %6358 = fadd fast float %6357, -1.000000e+00
  %6359 = fcmp fast ogt float %6358, 0.000000e+00
  %6360 = fcmp fast olt float %6358, 0.000000e+00
  %6361 = zext i1 %6359 to i32
  %6362 = zext i1 %6360 to i32
  %6363 = sub nsw i32 %6361, %6362
  %6364 = sitofp i32 %6363 to float
  %6365 = fmul fast float %6364, %6358
  %6366 = fsub fast float 1.000000e+00, %6365
  %6367 = fmul fast float %6366, %6366
  %6368 = fmul fast float %6367, %6366
  %6369 = fsub fast float %6366, %6368
  %6370 = fmul fast float %6369, %6354
  %6371 = fsub fast float 1.000000e+00, %6368
  %6372 = fsub fast float %6371, %6370
  %6373 = fmul fast float %6364, 5.000000e-01
  %6374 = fmul fast float %6373, %6372
  %6375 = fsub fast float 5.000000e-01, %6374
  br label %6376

; <label>:6376                                    ; preds = %6348, %6224, %6211
  %6377 = phi float [ 1.000000e+00, %6211 ], [ %6290, %6224 ], [ %6375, %6348 ]
  %6378 = fcmp fast ogt float %5807, 0.000000e+00
  br i1 %6378, label %6379, label %6543, !dx.controlflow.hints !125

; <label>:6379                                    ; preds = %6376
  %6380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6381 = extractvalue %dx.types.CBufRet.f32 %6380, 1
  %6382 = fadd fast float %6381, %5696
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 2
  %6385 = extractvalue %dx.types.CBufRet.f32 %6383, 3
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 1
  %6388 = call float @dx.op.binary.f32(i32 35, float %6382, float 0.000000e+00)  ; FMax(a,b)
  %6389 = fadd fast float %6388, 0x3F10000000000000
  %6390 = fcmp fast oeq float %6387, 0.000000e+00
  br i1 %6390, label %6391, label %6458

; <label>:6391                                    ; preds = %6379
  %6392 = extractvalue %dx.types.CBufRet.f32 %6383, 1
  %6393 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6394 = fmul fast float %6393, %5703
  %6395 = fmul fast float %6392, %5704
  %6396 = fadd fast float %6394, 5.000000e-01
  %6397 = call float @dx.op.unary.f32(i32 27, float %6396)  ; Round_ni(value)
  %6398 = fadd fast float %6395, 5.000000e-01
  %6399 = call float @dx.op.unary.f32(i32 27, float %6398)  ; Round_ni(value)
  %6400 = fsub fast float %6396, %6397
  %6401 = fsub fast float %6398, %6399
  %6402 = fadd fast float %6397, -5.000000e-01
  %6403 = fadd fast float %6399, -5.000000e-01
  %6404 = fmul fast float %6400, 2.000000e+00
  %6405 = fsub fast float 3.000000e+00, %6404
  %6406 = fadd fast float %6404, 1.000000e+00
  %6407 = fsub fast float 2.000000e+00, %6400
  %6408 = bitcast float %6405 to i32
  %6409 = sub nsw i32 2129859010, %6408
  %6410 = bitcast i32 %6409 to float
  %6411 = fmul fast float %6410, %6407
  %6412 = fadd fast float %6411, -1.000000e+00
  %6413 = bitcast float %6406 to i32
  %6414 = sub nsw i32 2129859010, %6413
  %6415 = bitcast i32 %6414 to float
  %6416 = fmul fast float %6415, %6400
  %6417 = fadd fast float %6416, 1.000000e+00
  %6418 = fmul fast float %6401, 2.000000e+00
  %6419 = fsub fast float 3.000000e+00, %6418
  %6420 = fadd fast float %6418, 1.000000e+00
  %6421 = fsub fast float 2.000000e+00, %6401
  %6422 = bitcast float %6419 to i32
  %6423 = sub nsw i32 2129859010, %6422
  %6424 = bitcast i32 %6423 to float
  %6425 = fmul fast float %6424, %6421
  %6426 = fadd fast float %6425, -1.000000e+00
  %6427 = bitcast float %6420 to i32
  %6428 = sub nsw i32 2129859010, %6427
  %6429 = bitcast i32 %6428 to float
  %6430 = fmul fast float %6429, %6401
  %6431 = fadd fast float %6430, 1.000000e+00
  %6432 = fadd fast float %6412, %6402
  %6433 = fmul fast float %6432, %6384
  %6434 = fadd fast float %6426, %6403
  %6435 = fmul fast float %6434, %6385
  %6436 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6433, float %6435, float undef, float undef, i32 0, i32 0, i32 undef, float %6389)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6437 = extractvalue %dx.types.ResRet.f32 %6436, 0
  %6438 = fmul fast float %6437, %6405
  %6439 = fadd fast float %6417, %6402
  %6440 = fmul fast float %6439, %6384
  %6441 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6440, float %6435, float undef, float undef, i32 0, i32 0, i32 undef, float %6389)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6442 = extractvalue %dx.types.ResRet.f32 %6441, 0
  %6443 = fmul fast float %6442, %6406
  %6444 = fadd fast float %6431, %6403
  %6445 = fmul fast float %6444, %6385
  %6446 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6433, float %6445, float undef, float undef, i32 0, i32 0, i32 undef, float %6389)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6447 = extractvalue %dx.types.ResRet.f32 %6446, 0
  %6448 = fmul fast float %6447, %6405
  %6449 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6440, float %6445, float undef, float undef, i32 0, i32 0, i32 undef, float %6389)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6450 = extractvalue %dx.types.ResRet.f32 %6449, 0
  %6451 = fmul fast float %6450, %6406
  %6452 = fadd fast float %6451, %6448
  %6453 = fmul fast float %6452, %6420
  %6454 = fadd fast float %6443, %6438
  %6455 = fmul fast float %6454, %6419
  %6456 = fadd fast float %6455, %6453
  %6457 = fmul fast float %6456, 6.250000e-02
  br label %6543

; <label>:6458                                    ; preds = %6379
  %6459 = fmul fast float %272, 0x401921FB60000000
  %6460 = call float @dx.op.unary.f32(i32 13, float %6459)  ; Sin(value)
  %6461 = call float @dx.op.unary.f32(i32 12, float %6459)  ; Cos(value)
  %6462 = fsub fast float -0.000000e+00, %6460
  br label %6463

; <label>:6463                                    ; preds = %6512, %6458
  %6464 = phi float [ 0.000000e+00, %6458 ], [ %6507, %6512 ]
  %6465 = phi float [ 0.000000e+00, %6458 ], [ %6509, %6512 ]
  %6466 = phi i32 [ 0, %6458 ], [ %6513, %6512 ]
  %6467 = mul i32 %6466, 2
  %6468 = add i32 0, %6467
  %6469 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6468
  %6470 = load float, float* %6469, align 4
  %6471 = mul i32 %6466, 2
  %6472 = add i32 1, %6471
  %6473 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6472
  %6474 = load float, float* %6473, align 4
  %6475 = fmul fast float %6470, %6461
  %6476 = call float @dx.op.tertiary.f32(i32 46, float %6474, float %6462, float %6475)  ; FMad(a,b,c)
  %6477 = fmul fast float %6470, %6460
  %6478 = call float @dx.op.tertiary.f32(i32 46, float %6474, float %6461, float %6477)  ; FMad(a,b,c)
  %6479 = fmul fast float %6476, %6387
  %6480 = fmul fast float %6478, %6387
  %6481 = fadd fast float %6479, %5703
  %6482 = fadd fast float %6480, %5704
  %6483 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6481, float %6482, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6484 = extractvalue %dx.types.ResRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.ResRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.ResRet.f32 %6483, 2
  %6487 = extractvalue %dx.types.ResRet.f32 %6483, 3
  %6488 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %6484, float* %6488, align 4
  %6489 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %6485, float* %6489, align 4
  %6490 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %6486, float* %6490, align 4
  %6491 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %6487, float* %6491, align 4
  %6492 = fsub fast float %6484, %6389
  %6493 = fcmp fast olt float %6492, 0.000000e+00
  %6494 = select i1 %6493, float 0.000000e+00, float 1.000000e+00
  %6495 = fadd fast float %6494, %6464
  %6496 = fmul fast float %6494, %6492
  %6497 = fadd fast float %6496, %6465
  br label %6498

; <label>:6498                                    ; preds = %6498, %6463
  %6499 = phi i32 [ 1, %6463 ], [ %6510, %6498 ]
  %6500 = phi float [ %6497, %6463 ], [ %6509, %6498 ]
  %6501 = phi float [ %6495, %6463 ], [ %6507, %6498 ]
  %6502 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %6499
  %6503 = load float, float* %6502, align 4, !tbaa !121, !noalias !111
  %6504 = fsub fast float %6503, %6389
  %6505 = fcmp fast olt float %6504, 0.000000e+00
  %6506 = select i1 %6505, float 0.000000e+00, float 1.000000e+00
  %6507 = fadd fast float %6506, %6501
  %6508 = fmul fast float %6506, %6504
  %6509 = fadd fast float %6508, %6500
  %6510 = add nuw nsw i32 %6499, 1
  %6511 = icmp eq i32 %6510, 4
  br i1 %6511, label %6512, label %6498, !llvm.loop !123

; <label>:6512                                    ; preds = %6498
  %6513 = add nuw nsw i32 %6466, 1
  %6514 = icmp eq i32 %6513, 8
  br i1 %6514, label %6515, label %6463, !llvm.loop !124

; <label>:6515                                    ; preds = %6512
  %6516 = fdiv fast float 1.000000e+00, %6507
  %6517 = fmul fast float %6516, %6509
  %6518 = fdiv fast float 1.000000e+00, %6389
  %6519 = fmul fast float %6517, %6518
  %6520 = call float @dx.op.unary.f32(i32 7, float %6519)  ; Saturate(value)
  %6521 = call float @dx.op.binary.f32(i32 35, float %6520, float 0.000000e+00)  ; FMax(a,b)
  %6522 = fmul fast float %6507, 3.125000e-02
  %6523 = call float @dx.op.unary.f32(i32 7, float %6522)  ; Saturate(value)
  %6524 = fmul fast float %6523, 2.000000e+00
  %6525 = fadd fast float %6524, -1.000000e+00
  %6526 = fcmp fast ogt float %6525, 0.000000e+00
  %6527 = fcmp fast olt float %6525, 0.000000e+00
  %6528 = zext i1 %6526 to i32
  %6529 = zext i1 %6527 to i32
  %6530 = sub nsw i32 %6528, %6529
  %6531 = sitofp i32 %6530 to float
  %6532 = fmul fast float %6531, %6525
  %6533 = fsub fast float 1.000000e+00, %6532
  %6534 = fmul fast float %6533, %6533
  %6535 = fmul fast float %6534, %6533
  %6536 = fsub fast float %6533, %6535
  %6537 = fmul fast float %6536, %6521
  %6538 = fsub fast float 1.000000e+00, %6535
  %6539 = fsub fast float %6538, %6537
  %6540 = fmul fast float %6531, 5.000000e-01
  %6541 = fmul fast float %6540, %6539
  %6542 = fsub fast float 5.000000e-01, %6541
  br label %6543

; <label>:6543                                    ; preds = %6515, %6391, %6376
  %6544 = phi float [ 1.000000e+00, %6376 ], [ %6457, %6391 ], [ %6542, %6515 ]
  %6545 = fcmp fast ogt float %5806, 0.000000e+00
  br i1 %6545, label %6546, label %6710, !dx.controlflow.hints !126

; <label>:6546                                    ; preds = %6543
  %6547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6548 = extractvalue %dx.types.CBufRet.f32 %6547, 0
  %6549 = fadd fast float %6548, %5696
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 2
  %6552 = extractvalue %dx.types.CBufRet.f32 %6550, 3
  %6553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6554 = extractvalue %dx.types.CBufRet.f32 %6553, 0
  %6555 = call float @dx.op.binary.f32(i32 35, float %6549, float 0.000000e+00)  ; FMax(a,b)
  %6556 = fadd fast float %6555, 0x3F10000000000000
  %6557 = fcmp fast oeq float %6554, 0.000000e+00
  br i1 %6557, label %6558, label %6625

; <label>:6558                                    ; preds = %6546
  %6559 = extractvalue %dx.types.CBufRet.f32 %6550, 1
  %6560 = extractvalue %dx.types.CBufRet.f32 %6550, 0
  %6561 = fmul fast float %6560, %5688
  %6562 = fmul fast float %6559, %5692
  %6563 = fadd fast float %6561, 5.000000e-01
  %6564 = call float @dx.op.unary.f32(i32 27, float %6563)  ; Round_ni(value)
  %6565 = fadd fast float %6562, 5.000000e-01
  %6566 = call float @dx.op.unary.f32(i32 27, float %6565)  ; Round_ni(value)
  %6567 = fsub fast float %6563, %6564
  %6568 = fsub fast float %6565, %6566
  %6569 = fadd fast float %6564, -5.000000e-01
  %6570 = fadd fast float %6566, -5.000000e-01
  %6571 = fmul fast float %6567, 2.000000e+00
  %6572 = fsub fast float 3.000000e+00, %6571
  %6573 = fadd fast float %6571, 1.000000e+00
  %6574 = fsub fast float 2.000000e+00, %6567
  %6575 = bitcast float %6572 to i32
  %6576 = sub nsw i32 2129859010, %6575
  %6577 = bitcast i32 %6576 to float
  %6578 = fmul fast float %6577, %6574
  %6579 = fadd fast float %6578, -1.000000e+00
  %6580 = bitcast float %6573 to i32
  %6581 = sub nsw i32 2129859010, %6580
  %6582 = bitcast i32 %6581 to float
  %6583 = fmul fast float %6582, %6567
  %6584 = fadd fast float %6583, 1.000000e+00
  %6585 = fmul fast float %6568, 2.000000e+00
  %6586 = fsub fast float 3.000000e+00, %6585
  %6587 = fadd fast float %6585, 1.000000e+00
  %6588 = fsub fast float 2.000000e+00, %6568
  %6589 = bitcast float %6586 to i32
  %6590 = sub nsw i32 2129859010, %6589
  %6591 = bitcast i32 %6590 to float
  %6592 = fmul fast float %6591, %6588
  %6593 = fadd fast float %6592, -1.000000e+00
  %6594 = bitcast float %6587 to i32
  %6595 = sub nsw i32 2129859010, %6594
  %6596 = bitcast i32 %6595 to float
  %6597 = fmul fast float %6596, %6568
  %6598 = fadd fast float %6597, 1.000000e+00
  %6599 = fadd fast float %6579, %6569
  %6600 = fmul fast float %6599, %6551
  %6601 = fadd fast float %6593, %6570
  %6602 = fmul fast float %6601, %6552
  %6603 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6600, float %6602, float undef, float undef, i32 0, i32 0, i32 undef, float %6556)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6604 = extractvalue %dx.types.ResRet.f32 %6603, 0
  %6605 = fmul fast float %6604, %6572
  %6606 = fadd fast float %6584, %6569
  %6607 = fmul fast float %6606, %6551
  %6608 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6607, float %6602, float undef, float undef, i32 0, i32 0, i32 undef, float %6556)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6609 = extractvalue %dx.types.ResRet.f32 %6608, 0
  %6610 = fmul fast float %6609, %6573
  %6611 = fadd fast float %6598, %6570
  %6612 = fmul fast float %6611, %6552
  %6613 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6600, float %6612, float undef, float undef, i32 0, i32 0, i32 undef, float %6556)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6614 = extractvalue %dx.types.ResRet.f32 %6613, 0
  %6615 = fmul fast float %6614, %6572
  %6616 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6607, float %6612, float undef, float undef, i32 0, i32 0, i32 undef, float %6556)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6617 = extractvalue %dx.types.ResRet.f32 %6616, 0
  %6618 = fmul fast float %6617, %6573
  %6619 = fadd fast float %6618, %6615
  %6620 = fmul fast float %6619, %6587
  %6621 = fadd fast float %6610, %6605
  %6622 = fmul fast float %6621, %6586
  %6623 = fadd fast float %6622, %6620
  %6624 = fmul fast float %6623, 6.250000e-02
  br label %6710

; <label>:6625                                    ; preds = %6546
  %6626 = fmul fast float %272, 0x401921FB60000000
  %6627 = call float @dx.op.unary.f32(i32 13, float %6626)  ; Sin(value)
  %6628 = call float @dx.op.unary.f32(i32 12, float %6626)  ; Cos(value)
  %6629 = fsub fast float -0.000000e+00, %6627
  br label %6630

; <label>:6630                                    ; preds = %6679, %6625
  %6631 = phi float [ 0.000000e+00, %6625 ], [ %6674, %6679 ]
  %6632 = phi float [ 0.000000e+00, %6625 ], [ %6676, %6679 ]
  %6633 = phi i32 [ 0, %6625 ], [ %6680, %6679 ]
  %6634 = mul i32 %6633, 2
  %6635 = add i32 0, %6634
  %6636 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6635
  %6637 = load float, float* %6636, align 4
  %6638 = mul i32 %6633, 2
  %6639 = add i32 1, %6638
  %6640 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6639
  %6641 = load float, float* %6640, align 4
  %6642 = fmul fast float %6637, %6628
  %6643 = call float @dx.op.tertiary.f32(i32 46, float %6641, float %6629, float %6642)  ; FMad(a,b,c)
  %6644 = fmul fast float %6637, %6627
  %6645 = call float @dx.op.tertiary.f32(i32 46, float %6641, float %6628, float %6644)  ; FMad(a,b,c)
  %6646 = fmul fast float %6643, %6554
  %6647 = fmul fast float %6645, %6554
  %6648 = fadd fast float %6646, %5688
  %6649 = fadd fast float %6647, %5692
  %6650 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6648, float %6649, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6651 = extractvalue %dx.types.ResRet.f32 %6650, 0
  %6652 = extractvalue %dx.types.ResRet.f32 %6650, 1
  %6653 = extractvalue %dx.types.ResRet.f32 %6650, 2
  %6654 = extractvalue %dx.types.ResRet.f32 %6650, 3
  %6655 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6651, float* %6655, align 4
  %6656 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6652, float* %6656, align 4
  %6657 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6653, float* %6657, align 4
  %6658 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6654, float* %6658, align 4
  %6659 = fsub fast float %6651, %6556
  %6660 = fcmp fast olt float %6659, 0.000000e+00
  %6661 = select i1 %6660, float 0.000000e+00, float 1.000000e+00
  %6662 = fadd fast float %6661, %6631
  %6663 = fmul fast float %6661, %6659
  %6664 = fadd fast float %6663, %6632
  br label %6665

; <label>:6665                                    ; preds = %6665, %6630
  %6666 = phi i32 [ 1, %6630 ], [ %6677, %6665 ]
  %6667 = phi float [ %6664, %6630 ], [ %6676, %6665 ]
  %6668 = phi float [ %6662, %6630 ], [ %6674, %6665 ]
  %6669 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6666
  %6670 = load float, float* %6669, align 4, !tbaa !121, !noalias !111
  %6671 = fsub fast float %6670, %6556
  %6672 = fcmp fast olt float %6671, 0.000000e+00
  %6673 = select i1 %6672, float 0.000000e+00, float 1.000000e+00
  %6674 = fadd fast float %6673, %6668
  %6675 = fmul fast float %6673, %6671
  %6676 = fadd fast float %6675, %6667
  %6677 = add nuw nsw i32 %6666, 1
  %6678 = icmp eq i32 %6677, 4
  br i1 %6678, label %6679, label %6665, !llvm.loop !123

; <label>:6679                                    ; preds = %6665
  %6680 = add nuw nsw i32 %6633, 1
  %6681 = icmp eq i32 %6680, 8
  br i1 %6681, label %6682, label %6630, !llvm.loop !124

; <label>:6682                                    ; preds = %6679
  %6683 = fdiv fast float 1.000000e+00, %6674
  %6684 = fmul fast float %6683, %6676
  %6685 = fdiv fast float 1.000000e+00, %6556
  %6686 = fmul fast float %6684, %6685
  %6687 = call float @dx.op.unary.f32(i32 7, float %6686)  ; Saturate(value)
  %6688 = call float @dx.op.binary.f32(i32 35, float %6687, float 0.000000e+00)  ; FMax(a,b)
  %6689 = fmul fast float %6674, 3.125000e-02
  %6690 = call float @dx.op.unary.f32(i32 7, float %6689)  ; Saturate(value)
  %6691 = fmul fast float %6690, 2.000000e+00
  %6692 = fadd fast float %6691, -1.000000e+00
  %6693 = fcmp fast ogt float %6692, 0.000000e+00
  %6694 = fcmp fast olt float %6692, 0.000000e+00
  %6695 = zext i1 %6693 to i32
  %6696 = zext i1 %6694 to i32
  %6697 = sub nsw i32 %6695, %6696
  %6698 = sitofp i32 %6697 to float
  %6699 = fmul fast float %6698, %6692
  %6700 = fsub fast float 1.000000e+00, %6699
  %6701 = fmul fast float %6700, %6700
  %6702 = fmul fast float %6701, %6700
  %6703 = fsub fast float %6700, %6702
  %6704 = fmul fast float %6703, %6688
  %6705 = fsub fast float 1.000000e+00, %6702
  %6706 = fsub fast float %6705, %6704
  %6707 = fmul fast float %6698, 5.000000e-01
  %6708 = fmul fast float %6707, %6706
  %6709 = fsub fast float 5.000000e-01, %6708
  br label %6710

; <label>:6710                                    ; preds = %6682, %6558, %6543
  %6711 = phi float [ 1.000000e+00, %6543 ], [ %6624, %6558 ], [ %6709, %6682 ]
  %6712 = fsub fast float %6377, %6212
  %6713 = fmul fast float %6712, %5750
  %6714 = fadd fast float %6713, %6212
  %6715 = fsub fast float %6544, %6714
  %6716 = fmul fast float %6715, %5780
  %6717 = fadd fast float %6716, %6714
  %6718 = fsub fast float %6711, %6717
  %6719 = fmul fast float %6718, %5806
  %6720 = fadd fast float %6719, %6717
  %6721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6722 = extractvalue %dx.types.CBufRet.f32 %6721, 2
  %6723 = fcmp fast ogt float %6722, 0.000000e+00
  br i1 %6723, label %6724, label %6764, !dx.controlflow.hints !127

; <label>:6724                                    ; preds = %6710
  %6725 = fcmp fast ugt float %6722, 0.000000e+00
  br i1 %6725, label %6726, label %6761

; <label>:6726                                    ; preds = %6724
  %6727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.f32 %6727, 0
  %6729 = extractvalue %dx.types.CBufRet.f32 %6727, 1
  %6730 = extractvalue %dx.types.CBufRet.f32 %6727, 2
  %6731 = extractvalue %dx.types.CBufRet.f32 %6727, 3
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6735 = extractvalue %dx.types.CBufRet.f32 %6732, 2
  %6736 = extractvalue %dx.types.CBufRet.f32 %6732, 3
  %6737 = extractvalue %dx.types.CBufRet.f32 %6721, 0
  %6738 = extractvalue %dx.types.CBufRet.f32 %6721, 1
  %6739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.f32 %6739, 0
  %6741 = extractvalue %dx.types.CBufRet.f32 %6739, 1
  %6742 = extractvalue %dx.types.CBufRet.f32 %6739, 2
  %6743 = fadd fast float %6740, %5665
  %6744 = fadd fast float %6741, %5666
  %6745 = fadd fast float %6742, %5667
  %6746 = fmul fast float %6743, %6728
  %6747 = call float @dx.op.tertiary.f32(i32 46, float %6729, float %6744, float %6746)  ; FMad(a,b,c)
  %6748 = call float @dx.op.tertiary.f32(i32 46, float %6730, float %6745, float %6747)  ; FMad(a,b,c)
  %6749 = fadd fast float %6748, %6731
  %6750 = fmul fast float %6743, %6733
  %6751 = call float @dx.op.tertiary.f32(i32 46, float %6734, float %6744, float %6750)  ; FMad(a,b,c)
  %6752 = call float @dx.op.tertiary.f32(i32 46, float %6735, float %6745, float %6751)  ; FMad(a,b,c)
  %6753 = fadd fast float %6752, %6736
  %6754 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %6749, float %6753, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6755 = extractvalue %dx.types.ResRet.f32 %6754, 0
  %6756 = fmul fast float %6755, %6738
  %6757 = fadd fast float %6756, %6737
  %6758 = call float @dx.op.unary.f32(i32 7, float %6757)  ; Saturate(value)
  %6759 = fmul fast float %6758, %6722
  %6760 = fsub fast float 1.000000e+00, %6759
  br label %6761

; <label>:6761                                    ; preds = %6726, %6724
  %6762 = phi float [ %6760, %6726 ], [ 1.000000e+00, %6724 ]
  %6763 = fmul fast float %6762, %6720
  br label %6764

; <label>:6764                                    ; preds = %6761, %6710, %5645
  %6765 = phi float [ 1.000000e+00, %5645 ], [ %6763, %6761 ], [ %6720, %6710 ]
  %6766 = call float @dx.op.binary.f32(i32 36, float %6765, float %6765)  ; FMin(a,b)
  %6767 = call float @dx.op.binary.f32(i32 36, float %6765, float %6766)  ; FMin(a,b)
  %6768 = fcmp fast ogt float %6767, 0.000000e+00
  br i1 %6768, label %6769, label %6934, !dx.controlflow.hints !128

; <label>:6769                                    ; preds = %6764
  %6770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6771 = extractvalue %dx.types.CBufRet.f32 %6770, 0
  %6772 = extractvalue %dx.types.CBufRet.f32 %6770, 1
  %6773 = extractvalue %dx.types.CBufRet.f32 %6770, 2
  %6774 = extractvalue %dx.types.CBufRet.f32 %6770, 3
  %6775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.f32 %6775, 0
  %6777 = extractvalue %dx.types.CBufRet.f32 %6775, 1
  %6778 = extractvalue %dx.types.CBufRet.f32 %6775, 2
  %6779 = extractvalue %dx.types.CBufRet.f32 %6775, 3
  %6780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6781 = extractvalue %dx.types.CBufRet.f32 %6780, 0
  %6782 = extractvalue %dx.types.CBufRet.f32 %6780, 1
  %6783 = extractvalue %dx.types.CBufRet.f32 %6780, 2
  %6784 = extractvalue %dx.types.CBufRet.f32 %6780, 3
  %6785 = fmul fast float %6771, %5665
  %6786 = call float @dx.op.tertiary.f32(i32 46, float %5666, float %6772, float %6785)  ; FMad(a,b,c)
  %6787 = call float @dx.op.tertiary.f32(i32 46, float %5667, float %6773, float %6786)  ; FMad(a,b,c)
  %6788 = fadd fast float %6787, %6774
  %6789 = fmul fast float %6776, %5665
  %6790 = call float @dx.op.tertiary.f32(i32 46, float %5666, float %6777, float %6789)  ; FMad(a,b,c)
  %6791 = call float @dx.op.tertiary.f32(i32 46, float %5667, float %6778, float %6790)  ; FMad(a,b,c)
  %6792 = fadd fast float %6791, %6779
  %6793 = fmul fast float %6781, %5665
  %6794 = call float @dx.op.tertiary.f32(i32 46, float %5666, float %6782, float %6793)  ; FMad(a,b,c)
  %6795 = call float @dx.op.tertiary.f32(i32 46, float %5667, float %6783, float %6794)  ; FMad(a,b,c)
  %6796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6797 = extractvalue %dx.types.CBufRet.f32 %6796, 0
  %6798 = extractvalue %dx.types.CBufRet.f32 %6796, 1
  %6799 = extractvalue %dx.types.CBufRet.f32 %6796, 3
  %6800 = fmul fast float %6799, %6788
  %6801 = fmul fast float %6799, %6792
  %6802 = fadd fast float %6800, %6797
  %6803 = fadd fast float %6801, %6798
  %6804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6805 = extractvalue %dx.types.CBufRet.f32 %6804, 0
  %6806 = extractvalue %dx.types.CBufRet.f32 %6804, 1
  %6807 = fsub fast float %6802, %6805
  %6808 = fsub fast float %6803, %6806
  %6809 = fcmp fast olt float %6807, 0.000000e+00
  %6810 = fcmp fast olt float %6808, 0.000000e+00
  %6811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6812 = extractvalue %dx.types.CBufRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.CBufRet.f32 %6811, 1
  %6814 = extractvalue %dx.types.CBufRet.f32 %6811, 2
  %6815 = extractvalue %dx.types.CBufRet.f32 %6811, 3
  %6816 = select i1 %6809, float %6812, float %6814
  %6817 = select i1 %6810, float %6813, float %6815
  %6818 = fmul fast float %6816, %6807
  %6819 = fmul fast float %6817, %6808
  %6820 = call float @dx.op.unary.f32(i32 6, float %6818)  ; FAbs(value)
  %6821 = call float @dx.op.unary.f32(i32 6, float %6819)  ; FAbs(value)
  %6822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6822, 0
  %6824 = call float @dx.op.binary.f32(i32 35, float %6820, float %6821)  ; FMax(a,b)
  %6825 = fsub fast float %6823, %6824
  %6826 = call float @dx.op.unary.f32(i32 7, float %6825)  ; Saturate(value)
  %6827 = fcmp fast ogt float %6826, 0.000000e+00
  br i1 %6827, label %6828, label %6869, !dx.controlflow.hints !129

; <label>:6828                                    ; preds = %6769
  %6829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %6802, float %6803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6830 = extractvalue %dx.types.ResRet.f32 %6829, 1
  %6831 = fcmp fast ogt float %6830, 0.000000e+00
  br i1 %6831, label %6832, label %6864

; <label>:6832                                    ; preds = %6828
  %6833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %6802, float %6803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6834 = extractvalue %dx.types.ResRet.f32 %6833, 0
  %6835 = extractvalue %dx.types.ResRet.f32 %6833, 1
  %6836 = extractvalue %dx.types.ResRet.f32 %6833, 2
  %6837 = extractvalue %dx.types.ResRet.f32 %6833, 3
  %6838 = fsub fast float 1.000000e+00, %6784
  %6839 = fsub fast float %6838, %6795
  %6840 = fmul fast float %6839, 0x400921FB60000000
  %6841 = fadd fast float %6840, 0x3FF921FB60000000
  %6842 = call float @dx.op.unary.f32(i32 13, float %6841)  ; Sin(value)
  %6843 = fadd fast float %6842, -1.000000e+00
  %6844 = fmul fast float %6843, 0x3FD45F3060000000
  %6845 = fmul fast float %6839, 0x401921FB60000000
  %6846 = fadd fast float %6845, 0x400921FB60000000
  %6847 = call float @dx.op.unary.f32(i32 13, float %6846)  ; Sin(value)
  %6848 = fadd fast float %6847, 0x3E7777A5C0000000
  %6849 = fmul fast float %6848, 0x3FC45F3060000000
  %6850 = fmul fast float %6839, 0x4022D97C80000000
  %6851 = fadd fast float %6850, 0x4012D97C80000000
  %6852 = call float @dx.op.unary.f32(i32 13, float %6851)  ; Sin(value)
  %6853 = fadd fast float %6852, 1.000000e+00
  %6854 = fmul fast float %6853, 0x3FBB2995E0000000
  %6855 = fmul fast float %6839, 0x402921FB60000000
  %6856 = fadd fast float %6855, 0x401921FB60000000
  %6857 = call float @dx.op.unary.f32(i32 13, float %6856)  ; Sin(value)
  %6858 = fadd fast float %6857, 0xBE8777A5C0000000
  %6859 = fmul fast float %6858, 0x3FB45F3060000000
  %6860 = call float @dx.op.dot4.f32(i32 56, float %6834, float %6835, float %6836, float %6837, float %6844, float %6849, float %6854, float %6859)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6861 = fmul fast float %6860, 0xBFF7154760000000
  %6862 = call float @dx.op.unary.f32(i32 21, float %6861)  ; Exp(value)
  %6863 = call float @dx.op.unary.f32(i32 7, float %6862)  ; Saturate(value)
  br label %6864

; <label>:6864                                    ; preds = %6832, %6828
  %6865 = phi float [ %6863, %6832 ], [ 1.000000e+00, %6828 ]
  %6866 = fadd fast float %6865, -1.000000e+00
  %6867 = fmul fast float %6866, %6826
  %6868 = fadd fast float %6867, 1.000000e+00
  br label %6869

; <label>:6869                                    ; preds = %6864, %6769
  %6870 = phi float [ %6868, %6864 ], [ 1.000000e+00, %6769 ]
  %6871 = fmul fast float %6870, %6765
  %6872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6873 = extractvalue %dx.types.CBufRet.f32 %6872, 0
  %6874 = extractvalue %dx.types.CBufRet.f32 %6872, 1
  %6875 = extractvalue %dx.types.CBufRet.f32 %6872, 2
  %6876 = fadd fast float %6873, %167
  %6877 = fadd fast float %6874, %168
  %6878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.f32 %6878, 1
  %6880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.f32 %6880, 0
  %6882 = extractvalue %dx.types.CBufRet.f32 %6880, 1
  %6883 = extractvalue %dx.types.CBufRet.f32 %6880, 2
  %6884 = fsub fast float -0.000000e+00, %6876
  %6885 = fsub fast float -0.000000e+00, %6877
  %6886 = fsub fast float %4925, %6875
  %6887 = fadd fast float %6886, %6879
  %6888 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6884, float %6885, float %6887)  ; Dot3(ax,ay,az,bx,by,bz)
  %6889 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6881, float %6882, float %6883)  ; Dot3(ax,ay,az,bx,by,bz)
  %6890 = fdiv fast float 1.000000e+00, %6889
  %6891 = fmul fast float %6890, %6888
  %6892 = fmul fast float %6881, %6891
  %6893 = fmul fast float %6882, %6891
  %6894 = fadd fast float %6892, %6876
  %6895 = fadd fast float %6893, %6877
  %6896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6897 = extractvalue %dx.types.CBufRet.f32 %6896, 0
  %6898 = extractvalue %dx.types.CBufRet.f32 %6896, 1
  %6899 = fsub fast float %6894, %6897
  %6900 = fsub fast float %6895, %6898
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 2
  %6903 = extractvalue %dx.types.CBufRet.f32 %6901, 3
  %6904 = fmul fast float %6899, %6902
  %6905 = fmul fast float %6900, %6903
  %6906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.i32 %6906, 3
  %6908 = icmp eq i32 %6907, 0
  br i1 %6908, label %6914, label %6909

; <label>:6909                                    ; preds = %6869
  %6910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %6904, float %6905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6911 = extractvalue %dx.types.ResRet.f32 %6910, 0
  %6912 = extractvalue %dx.types.ResRet.f32 %6910, 1
  %6913 = extractvalue %dx.types.ResRet.f32 %6910, 2
  br label %6919

; <label>:6914                                    ; preds = %6869
  %6915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %6904, float %6905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6916 = extractvalue %dx.types.ResRet.f32 %6915, 0
  %6917 = extractvalue %dx.types.ResRet.f32 %6915, 1
  %6918 = extractvalue %dx.types.ResRet.f32 %6915, 2
  br label %6919

; <label>:6919                                    ; preds = %6914, %6909
  %6920 = phi float [ %6911, %6909 ], [ %6916, %6914 ]
  %6921 = phi float [ %6912, %6909 ], [ %6917, %6914 ]
  %6922 = phi float [ %6913, %6909 ], [ %6918, %6914 ]
  %6923 = extractvalue %dx.types.CBufRet.f32 %6878, 2
  %6924 = fmul fast float %6923, %6920
  %6925 = extractvalue %dx.types.CBufRet.f32 %6878, 0
  %6926 = fsub fast float %6891, %6925
  %6927 = fsub fast float %6926, %6924
  %6928 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6927)  ; FMax(a,b)
  %6929 = fmul fast float %6928, %6921
  %6930 = call float @dx.op.binary.f32(i32 36, float %6922, float %6929)  ; FMin(a,b)
  %6931 = fmul fast float %6930, 0xBFF7154760000000
  %6932 = call float @dx.op.unary.f32(i32 21, float %6931)  ; Exp(value)
  %6933 = fmul fast float %6871, %6932
  br label %6934

; <label>:6934                                    ; preds = %6919, %6764
  %6935 = phi float [ %6933, %6919 ], [ %6765, %6764 ]
  %6936 = call float @dx.op.binary.f32(i32 36, float %6935, float %6935)  ; FMin(a,b)
  %6937 = call float @dx.op.binary.f32(i32 36, float %6935, float %6936)  ; FMin(a,b)
  %6938 = fcmp fast ogt float %6937, 0.000000e+00
  br i1 %6938, label %6939, label %7186, !dx.controlflow.hints !130

; <label>:6939                                    ; preds = %6934
  %6940 = fmul fast float %6935, %5657
  %6941 = fmul fast float %6935, %5658
  %6942 = fmul fast float %6935, %5659
  %6943 = fsub fast float %169, %4731
  %6944 = fcmp fast ogt float %6943, 0.000000e+00
  %6945 = fmul fast float %5646, 5.120000e+02
  %6946 = fmul fast float %5647, 5.120000e+02
  %6947 = fmul fast float %5648, 5.120000e+02
  %6948 = fadd fast float %6947, %169
  %6949 = fsub fast float %4731, %6948
  %6950 = fmul fast float %6949, 2.000000e+00
  %6951 = fadd fast float %6950, %6948
  %6952 = select i1 %6944, float %6951, float %6948
  %6953 = fsub fast float %6952, %169
  %6954 = call float @dx.op.dot3.f32(i32 55, float %6945, float %6946, float %6953, float %6945, float %6946, float %6953)  ; Dot3(ax,ay,az,bx,by,bz)
  %6955 = call float @dx.op.unary.f32(i32 25, float %6954)  ; Rsqrt(value)
  %6956 = fmul fast float %6955, %6945
  %6957 = fmul fast float %6955, %6946
  %6958 = fmul fast float %6955, %6953
  %6959 = fsub fast float %4731, %169
  %6960 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6959)  ; Dot3(ax,ay,az,bx,by,bz)
  %6961 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6956, float %6957, float %6958)  ; Dot3(ax,ay,az,bx,by,bz)
  %6962 = fdiv fast float 1.000000e+00, %6961
  %6963 = fmul fast float %6962, %6960
  %6964 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6943, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6965 = fcmp fast ogt float %6964, 0.000000e+00
  %6966 = fcmp fast olt float %6964, 0.000000e+00
  %6967 = zext i1 %6965 to i32
  %6968 = zext i1 %6966 to i32
  %6969 = sub nsw i32 %6967, %6968
  %6970 = sitofp i32 %6969 to float
  %6971 = fsub fast float %6952, %4731
  %6972 = call float @dx.op.dot3.f32(i32 55, float %6945, float %6946, float %6971, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6973 = fcmp fast ogt float %6972, 0.000000e+00
  %6974 = fcmp fast olt float %6972, 0.000000e+00
  %6975 = zext i1 %6973 to i32
  %6976 = zext i1 %6974 to i32
  %6977 = sub nsw i32 %6975, %6976
  %6978 = sitofp i32 %6977 to float
  %6979 = fcmp fast une float %6970, %6978
  br i1 %6979, label %6980, label %6990

; <label>:6980                                    ; preds = %6939
  %6981 = fmul fast float %6963, %6958
  %6982 = fmul fast float %6963, %6957
  %6983 = fmul fast float %6963, %6956
  %6984 = fmul fast float %6983, %6983
  %6985 = fmul fast float %6982, %6982
  %6986 = fadd fast float %6984, %6985
  %6987 = fmul fast float %6981, %6981
  %6988 = fadd fast float %6986, %6987
  %6989 = call float @dx.op.unary.f32(i32 24, float %6988)  ; Sqrt(value)
  br label %7000

; <label>:6990                                    ; preds = %6939
  %6991 = icmp slt i32 %6969, 0
  br i1 %6991, label %6992, label %7000

; <label>:6992                                    ; preds = %6990
  %6993 = fsub fast float %169, %6952
  %6994 = fmul fast float %6945, %6945
  %6995 = fmul fast float %6946, %6946
  %6996 = fadd fast float %6994, %6995
  %6997 = fmul fast float %6993, %6993
  %6998 = fadd fast float %6996, %6997
  %6999 = call float @dx.op.unary.f32(i32 24, float %6998)  ; Sqrt(value)
  br label %7000

; <label>:7000                                    ; preds = %6992, %6990, %6980
  %7001 = phi float [ %6989, %6980 ], [ %6999, %6992 ], [ 0.000000e+00, %6990 ]
  %7002 = fsub fast float -0.000000e+00, %7001
  %7003 = select i1 %6944, float -0.000000e+00, float %7002
  %7004 = fmul fast float %4732, 0x3FF7154760000000
  %7005 = fmul fast float %7004, %7003
  %7006 = fmul fast float %4733, 0x3FF7154760000000
  %7007 = fmul fast float %7006, %7003
  %7008 = fmul fast float %4734, 0x3FF7154760000000
  %7009 = fmul fast float %7008, %7003
  %7010 = call float @dx.op.unary.f32(i32 21, float %7005)  ; Exp(value)
  %7011 = call float @dx.op.unary.f32(i32 21, float %7007)  ; Exp(value)
  %7012 = call float @dx.op.unary.f32(i32 21, float %7009)  ; Exp(value)
  %7013 = call float @dx.op.unary.f32(i32 7, float %7010)  ; Saturate(value)
  %7014 = call float @dx.op.unary.f32(i32 7, float %7011)  ; Saturate(value)
  %7015 = call float @dx.op.unary.f32(i32 7, float %7012)  ; Saturate(value)
  %7016 = fmul fast float %6940, %7013
  %7017 = fmul fast float %6941, %7014
  %7018 = fmul fast float %6942, %7015
  %7019 = fsub fast float %5646, %187
  %7020 = fsub fast float %5647, %188
  %7021 = fsub fast float %5648, %189
  %7022 = call float @dx.op.dot3.f32(i32 55, float %7019, float %7020, float %7021, float %7019, float %7020, float %7021)  ; Dot3(ax,ay,az,bx,by,bz)
  %7023 = call float @dx.op.unary.f32(i32 25, float %7022)  ; Rsqrt(value)
  %7024 = fmul fast float %7023, %7019
  %7025 = fmul fast float %7023, %7020
  %7026 = fmul fast float %7023, %7021
  %7027 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %4920, float %4921, float %4922)  ; Dot3(ax,ay,az,bx,by,bz)
  %7028 = call float @dx.op.dot3.f32(i32 55, float %4748, float %4749, float %4750, float %7024, float %7025, float %7026)  ; Dot3(ax,ay,az,bx,by,bz)
  %7029 = call float @dx.op.unary.f32(i32 7, float %7027)  ; Saturate(value)
  %7030 = fmul fast float %7029, %7029
  %7031 = fmul fast float %7030, %4953
  %7032 = call float @dx.op.unary.f32(i32 7, float %7031)  ; Saturate(value)
  %7033 = fmul fast float %7032, %7029
  %7034 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float %7024, float %7025, float %7026)  ; Dot3(ax,ay,az,bx,by,bz)
  %7035 = fmul fast float %7034, %7034
  %7036 = call float @dx.op.unary.f32(i32 6, float %7027)  ; FAbs(value)
  %7037 = fsub fast float 1.000000e+00, %4946
  %7038 = fmul fast float %4928, %4928
  %7039 = fmul fast float %7038, %7037
  %7040 = fadd fast float %7039, %4946
  %7041 = bitcast float %7040 to i32
  %7042 = ashr i32 %7041, 1
  %7043 = add nsw i32 %7042, 532487669
  %7044 = bitcast i32 %7043 to float
  %7045 = fadd fast float %7044, %4928
  %7046 = fmul fast float %4946, %7035
  %7047 = fsub fast float 1.000000e+00, %7035
  %7048 = fadd fast float %7047, %7046
  %7049 = fmul fast float %7036, %7036
  %7050 = fmul fast float %7049, %7037
  %7051 = fadd fast float %7050, %4946
  %7052 = bitcast float %7051 to i32
  %7053 = ashr i32 %7052, 1
  %7054 = add nsw i32 %7053, 532487669
  %7055 = bitcast i32 %7054 to float
  %7056 = fadd fast float %7055, %7036
  %7057 = fmul fast float %7048, %7048
  %7058 = fmul fast float %7057, %7045
  %7059 = fmul fast float %7058, %7056
  %7060 = fdiv fast float 0x3FF0A00000000000, %7059
  %7061 = fmul fast float %7060, %4946
  %7062 = call float @dx.op.unary.f32(i32 6, float %7028)  ; FAbs(value)
  %7063 = fsub fast float 1.000000e+00, %7062
  %7064 = bitcast float %7063 to i32
  %7065 = sitofp i32 %7064 to float
  %7066 = fmul fast float %7065, 5.000000e+00
  %7067 = fadd fast float %7066, 0xC1EFBF8940000000
  %7068 = fptosi float %7067 to i32
  %7069 = bitcast i32 %7068 to float
  %7070 = fsub fast float 1.000000e+00, %4914
  %7071 = fsub fast float 1.000000e+00, %4915
  %7072 = fsub fast float 1.000000e+00, %4926
  %7073 = fmul fast float %7069, %7070
  %7074 = fmul fast float %7069, %7071
  %7075 = fmul fast float %7069, %7072
  %7076 = fadd fast float %7073, %4914
  %7077 = fadd fast float %7074, %4915
  %7078 = fadd fast float %7075, %4926
  br i1 %5065, label %7079, label %7102

; <label>:7079                                    ; preds = %7000
  %7080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4308, float %7062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7081 = extractvalue %dx.types.ResRet.f32 %7080, 0
  %7082 = extractvalue %dx.types.ResRet.f32 %7080, 1
  %7083 = extractvalue %dx.types.ResRet.f32 %7080, 2
  %7084 = fadd fast float %7081, -5.000000e-01
  %7085 = fadd fast float %7082, -5.000000e-01
  %7086 = fadd fast float %7083, -5.000000e-01
  %7087 = fmul fast float %4914, 4.000000e+00
  %7088 = fmul fast float %7087, %7070
  %7089 = fmul fast float %7088, %7084
  %7090 = fmul fast float %4915, 4.000000e+00
  %7091 = fmul fast float %7090, %7071
  %7092 = fmul fast float %7091, %7085
  %7093 = fmul fast float %4926, 4.000000e+00
  %7094 = fmul fast float %7093, %7072
  %7095 = fmul fast float %7094, %7086
  %7096 = fadd fast float %7089, %7076
  %7097 = fadd fast float %7092, %7077
  %7098 = fadd fast float %7095, %7078
  %7099 = call float @dx.op.unary.f32(i32 7, float %7096)  ; Saturate(value)
  %7100 = call float @dx.op.unary.f32(i32 7, float %7097)  ; Saturate(value)
  %7101 = call float @dx.op.unary.f32(i32 7, float %7098)  ; Saturate(value)
  br label %7102

; <label>:7102                                    ; preds = %7079, %7000
  %7103 = phi float [ %7099, %7079 ], [ %7076, %7000 ]
  %7104 = phi float [ %7100, %7079 ], [ %7077, %7000 ]
  %7105 = phi float [ %7101, %7079 ], [ %7078, %7000 ]
  %7106 = fmul fast float %7027, 9.843750e-01
  %7107 = fadd fast float %7106, 7.812500e-03
  %7108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7107, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7109 = extractvalue %dx.types.ResRet.f32 %7108, 2
  %7110 = extractvalue %dx.types.ResRet.f32 %7108, 3
  %7111 = fmul fast float %7109, %4914
  %7112 = fmul fast float %7109, %4915
  %7113 = fmul fast float %7109, %4926
  %7114 = fadd fast float %7111, %7110
  %7115 = fadd fast float %7112, %7110
  %7116 = fadd fast float %7113, %7110
  br i1 %5065, label %7117, label %7140

; <label>:7117                                    ; preds = %7102
  %7118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4308, float %7027, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7119 = extractvalue %dx.types.ResRet.f32 %7118, 0
  %7120 = extractvalue %dx.types.ResRet.f32 %7118, 1
  %7121 = extractvalue %dx.types.ResRet.f32 %7118, 2
  %7122 = fadd fast float %7119, -5.000000e-01
  %7123 = fadd fast float %7120, -5.000000e-01
  %7124 = fadd fast float %7121, -5.000000e-01
  %7125 = fmul fast float %4914, 4.000000e+00
  %7126 = fmul fast float %7125, %7070
  %7127 = fmul fast float %7126, %7122
  %7128 = fmul fast float %4915, 4.000000e+00
  %7129 = fmul fast float %7128, %7071
  %7130 = fmul fast float %7129, %7123
  %7131 = fmul fast float %4926, 4.000000e+00
  %7132 = fmul fast float %7131, %7072
  %7133 = fmul fast float %7132, %7124
  %7134 = fadd fast float %7127, %7114
  %7135 = fadd fast float %7130, %7115
  %7136 = fadd fast float %7133, %7116
  %7137 = call float @dx.op.unary.f32(i32 7, float %7134)  ; Saturate(value)
  %7138 = call float @dx.op.unary.f32(i32 7, float %7135)  ; Saturate(value)
  %7139 = call float @dx.op.unary.f32(i32 7, float %7136)  ; Saturate(value)
  br label %7140

; <label>:7140                                    ; preds = %7117, %7102
  %7141 = phi float [ %7137, %7117 ], [ %7114, %7102 ]
  %7142 = phi float [ %7138, %7117 ], [ %7115, %7102 ]
  %7143 = phi float [ %7139, %7117 ], [ %7116, %7102 ]
  %7144 = call float @dx.op.binary.f32(i32 35, float %7142, float %7143)  ; FMax(a,b)
  %7145 = call float @dx.op.binary.f32(i32 35, float %7141, float %7144)  ; FMax(a,b)
  %7146 = fsub fast float 1.000000e+00, %7145
  %7147 = fmul fast float %7103, %7061
  %7148 = fmul fast float %7104, %7061
  %7149 = fmul fast float %7105, %7061
  %7150 = fsub fast float 1.000000e+00, %7028
  %7151 = bitcast float %7150 to i32
  %7152 = sitofp i32 %7151 to float
  %7153 = fmul fast float %7152, 5.000000e+00
  %7154 = fadd fast float %7153, 0xC1EFBF8940000000
  %7155 = fptosi float %7154 to i32
  %7156 = bitcast i32 %7155 to float
  %7157 = fmul fast float %7156, %4309
  %7158 = fmul fast float %7146, %7157
  %7159 = fmul fast float %7158, %5607
  %7160 = fmul fast float %7158, %5608
  %7161 = fmul fast float %7158, %5609
  %7162 = fadd fast float %7159, %7147
  %7163 = fadd fast float %7160, %7148
  %7164 = fadd fast float %7161, %7149
  %7165 = fmul fast float %7033, %7016
  %7166 = fmul fast float %7165, %7146
  %7167 = fmul fast float %7033, %7017
  %7168 = fmul fast float %7167, %7146
  %7169 = fmul fast float %7033, %7018
  %7170 = fmul fast float %7169, %7146
  %7171 = fmul fast float %7165, %7162
  %7172 = fmul fast float %7167, %7163
  %7173 = fmul fast float %7169, %7164
  %7174 = fadd fast float %7166, %5591
  %7175 = fmul fast float %7174, %4334
  %7176 = fadd fast float %7168, %5592
  %7177 = fmul fast float %7176, %4334
  %7178 = fadd fast float %7170, %5593
  %7179 = fmul fast float %7178, %4334
  %7180 = fadd fast float %7171, %5634
  %7181 = fmul fast float %7180, %4334
  %7182 = fadd fast float %7172, %5637
  %7183 = fmul fast float %7182, %4334
  %7184 = fadd fast float %7173, %5640
  %7185 = fmul fast float %7184, %4334
  br label %7186

; <label>:7186                                    ; preds = %7140, %6934, %5587
  %7187 = phi float [ %5635, %5587 ], [ %5635, %6934 ], [ %7181, %7140 ]
  %7188 = phi float [ %5638, %5587 ], [ %5638, %6934 ], [ %7183, %7140 ]
  %7189 = phi float [ %5641, %5587 ], [ %5641, %6934 ], [ %7185, %7140 ]
  %7190 = phi float [ %5630, %5587 ], [ %5630, %6934 ], [ %7175, %7140 ]
  %7191 = phi float [ %5631, %5587 ], [ %5631, %6934 ], [ %7177, %7140 ]
  %7192 = phi float [ %5632, %5587 ], [ %5632, %6934 ], [ %7179, %7140 ]
  %7193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7194 = extractvalue %dx.types.CBufRet.i32 %7193, 0
  %7195 = icmp eq i32 %7194, 0
  br i1 %7195, label %7858, label %7196

; <label>:7196                                    ; preds = %7186
  %7197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7198 = extractvalue %dx.types.CBufRet.f32 %7197, 2
  %7199 = extractvalue %dx.types.CBufRet.f32 %7197, 3
  %7200 = fmul fast float %7198, %104
  %7201 = fmul fast float %7199, %105
  %7202 = fptoui float %7200 to i32
  %7203 = fptoui float %7201 to i32
  %7204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7205 = extractvalue %dx.types.CBufRet.f32 %7204, 0
  %7206 = extractvalue %dx.types.CBufRet.f32 %7204, 2
  %7207 = extractvalue %dx.types.CBufRet.f32 %7204, 3
  %7208 = fadd fast float %92, -4.000000e+00
  %7209 = call float @dx.op.binary.f32(i32 35, float %7208, float 0.000000e+00)  ; FMax(a,b)
  %7210 = fadd fast float %7209, %7205
  %7211 = fmul fast float %7210, %7206
  %7212 = call float @dx.op.unary.f32(i32 23, float %7211)  ; Log(value)
  %7213 = fmul fast float %7212, %7207
  %7214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7215 = extractvalue %dx.types.CBufRet.f32 %7214, 2
  %7216 = fmul fast float %7213, %7215
  %7217 = call float @dx.op.unary.f32(i32 7, float %7216)  ; Saturate(value)
  %7218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7219 = extractvalue %dx.types.CBufRet.i32 %7218, 1
  %7220 = add i32 %7219, -1
  %7221 = uitofp i32 %7219 to float
  %7222 = fmul fast float %7221, %7217
  %7223 = fptoui float %7222 to i32
  %7224 = call i32 @dx.op.binary.i32(i32 40, i32 %7223, i32 %7220)  ; UMin(a,b)
  %7225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7226 = extractvalue %dx.types.CBufRet.i32 %7225, 2
  %7227 = extractvalue %dx.types.CBufRet.i32 %7225, 3
  %7228 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7203, i32 %7226, i32 %7202)  ; UMad(a,b,c)
  %7229 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7224, i32 %7227, i32 %7228)  ; UMad(a,b,c)
  %7230 = add nsw i32 %7194, -1
  %7231 = call i32 @dx.op.binary.i32(i32 37, i32 %7230, i32 0)  ; IMax(a,b)
  %7232 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %7233 = fptoui float %7232 to i32
  %7234 = lshr i32 %7233, 5
  %7235 = call i32 @dx.op.binary.i32(i32 40, i32 %7234, i32 8191)  ; UMin(a,b)
  %7236 = shl i32 %7235, 2
  %7237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7236, i32 undef)  ; BufferLoad(srv,index,wot)
  %7238 = extractvalue %dx.types.ResRet.i32 %7237, 0
  %7239 = lshr i32 %7238, 16
  %7240 = and i32 %7238, 65535
  %7241 = lshr i32 %7238, 21
  %7242 = lshr i32 %7240, 5
  %7243 = call i32 @dx.op.binary.i32(i32 40, i32 %7242, i32 %7231)  ; UMin(a,b)
  %7244 = icmp ugt i32 %7241, %7243
  br i1 %7244, label %7858, label %7245

; <label>:7245                                    ; preds = %7196
  br label %7246

; <label>:7246                                    ; preds = %7848, %7245
  %7247 = phi i32 [ %7855, %7848 ], [ %7241, %7245 ]
  %7248 = phi float [ %7849, %7848 ], [ %7187, %7245 ]
  %7249 = phi float [ %7850, %7848 ], [ %7188, %7245 ]
  %7250 = phi float [ %7851, %7848 ], [ %7189, %7245 ]
  %7251 = phi float [ %7852, %7848 ], [ %7190, %7245 ]
  %7252 = phi float [ %7853, %7848 ], [ %7191, %7245 ]
  %7253 = phi float [ %7854, %7848 ], [ %7192, %7245 ]
  %7254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7255 = extractvalue %dx.types.CBufRet.i32 %7254, 0
  %7256 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7229, i32 %7255, i32 %7247)  ; UMad(a,b,c)
  %7257 = shl i32 %7256, 2
  %7258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7257, i32 undef)  ; BufferLoad(srv,index,wot)
  %7259 = extractvalue %dx.types.ResRet.i32 %7258, 0
  %7260 = shl i32 %7247, 5
  %7261 = sub nsw i32 %7239, %7260
  %7262 = call i32 @dx.op.binary.i32(i32 37, i32 %7261, i32 0)  ; IMax(a,b)
  %7263 = call i32 @dx.op.binary.i32(i32 38, i32 %7262, i32 31)  ; IMin(a,b)
  %7264 = sub nsw i32 1, %7239
  %7265 = add nsw i32 %7264, %7240
  %7266 = call i32 @dx.op.binary.i32(i32 37, i32 %7265, i32 0)  ; IMax(a,b)
  %7267 = call i32 @dx.op.binary.i32(i32 38, i32 %7266, i32 32)  ; IMin(a,b)
  %7268 = and i32 %7267, 31
  %7269 = shl i32 -1, %7268
  %7270 = xor i32 %7269, -1
  %7271 = and i32 %7263, 31
  %7272 = shl i32 %7270, %7271
  %7273 = icmp eq i32 %7267, 32
  %7274 = select i1 %7273, i32 -1, i32 %7272
  %7275 = and i32 %7274, %7259
  %7276 = icmp eq i32 %7275, 0
  br i1 %7276, label %7848, label %7277

; <label>:7277                                    ; preds = %7246
  br label %7278

; <label>:7278                                    ; preds = %7412, %7277
  %7279 = phi i32 [ %7290, %7412 ], [ %7275, %7277 ]
  %7280 = phi float [ %7413, %7412 ], [ %7248, %7277 ]
  %7281 = phi float [ %7414, %7412 ], [ %7249, %7277 ]
  %7282 = phi float [ %7415, %7412 ], [ %7250, %7277 ]
  %7283 = phi float [ %7416, %7412 ], [ %7251, %7277 ]
  %7284 = phi float [ %7417, %7412 ], [ %7252, %7277 ]
  %7285 = phi float [ %7418, %7412 ], [ %7253, %7277 ]
  %7286 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7279)  ; FirstbitLo(value)
  %7287 = add i32 %7286, %7260
  %7288 = and i32 %7286, 31
  %7289 = shl i32 1, %7288
  %7290 = xor i32 %7289, %7279
  %7291 = mul i32 %7287, 112
  %7292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7291, i32 undef)  ; BufferLoad(srv,index,wot)
  %7293 = extractvalue %dx.types.ResRet.f32 %7292, 0
  %7294 = extractvalue %dx.types.ResRet.f32 %7292, 1
  %7295 = extractvalue %dx.types.ResRet.f32 %7292, 2
  %7296 = or i32 %7291, 12
  %7297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7296, i32 undef)  ; BufferLoad(srv,index,wot)
  %7298 = extractvalue %dx.types.ResRet.f32 %7297, 0
  %7299 = add i32 %7291, 16
  %7300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7299, i32 undef)  ; BufferLoad(srv,index,wot)
  %7301 = extractvalue %dx.types.ResRet.f32 %7300, 0
  %7302 = extractvalue %dx.types.ResRet.f32 %7300, 1
  %7303 = extractvalue %dx.types.ResRet.f32 %7300, 2
  %7304 = add i32 %7291, 28
  %7305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7304, i32 undef)  ; BufferLoad(srv,index,wot)
  %7306 = extractvalue %dx.types.ResRet.i32 %7305, 0
  %7307 = add i32 %7291, 44
  %7308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7307, i32 undef)  ; BufferLoad(srv,index,wot)
  %7309 = extractvalue %dx.types.ResRet.f32 %7308, 0
  %7310 = add i32 %7291, 48
  %7311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7310, i32 undef)  ; BufferLoad(srv,index,wot)
  %7312 = extractvalue %dx.types.ResRet.f32 %7311, 0
  %7313 = extractvalue %dx.types.ResRet.f32 %7311, 1
  %7314 = extractvalue %dx.types.ResRet.f32 %7311, 2
  %7315 = extractvalue %dx.types.ResRet.f32 %7311, 3
  %7316 = add i32 %7291, 64
  %7317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7316, i32 undef)  ; BufferLoad(srv,index,wot)
  %7318 = extractvalue %dx.types.ResRet.f32 %7317, 0
  %7319 = extractvalue %dx.types.ResRet.f32 %7317, 1
  %7320 = extractvalue %dx.types.ResRet.f32 %7317, 2
  %7321 = extractvalue %dx.types.ResRet.f32 %7317, 3
  %7322 = add i32 %7291, 80
  %7323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7322, i32 undef)  ; BufferLoad(srv,index,wot)
  %7324 = extractvalue %dx.types.ResRet.f32 %7323, 1
  %7325 = extractvalue %dx.types.ResRet.f32 %7323, 2
  %7326 = add i32 %7291, 92
  %7327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7326, i32 undef)  ; BufferLoad(srv,index,wot)
  %7328 = extractvalue %dx.types.ResRet.i32 %7327, 0
  %7329 = call float @dx.op.dot3.f32(i32 55, float %7293, float %7294, float %7295, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7330 = select i1 %261, float %7324, float %7293
  %7331 = select i1 %261, float %7329, float %7294
  %7332 = select i1 %261, float %7325, float %7295
  %7333 = and i32 %7328, 65535
  %7334 = uitofp i32 %7333 to float
  %7335 = lshr i32 %7328, 16
  %7336 = uitofp i32 %7335 to float
  %7337 = and i32 %7306, 65535
  %7338 = and i32 %7306, 50331648
  %7339 = icmp eq i32 %7338, 33554432
  %7340 = fsub fast float %7312, %167
  %7341 = fsub fast float %7313, %168
  %7342 = fsub fast float %7314, %169
  %7343 = call float @dx.op.dot3.f32(i32 55, float %7340, float %7341, float %7342, float %7340, float %7341, float %7342)  ; Dot3(ax,ay,az,bx,by,bz)
  %7344 = call float @dx.op.unary.f32(i32 24, float %7343)  ; Sqrt(value)
  %7345 = fdiv fast float 1.000000e+00, %7344
  %7346 = fmul fast float %7345, %7340
  %7347 = fmul fast float %7345, %7341
  %7348 = fmul fast float %7345, %7342
  %7349 = fadd fast float %7344, %7298
  %7350 = fdiv fast float 1.000000e+00, %7349
  %7351 = fmul float %7309, %7350
  %7352 = fmul float %7351, %7351
  %7353 = call float @dx.op.unary.f32(i32 7, float %7352)  ; Saturate(value)
  br i1 %7339, label %7354, label %7375

; <label>:7354                                    ; preds = %7278
  %7355 = fmul fast float %7320, %7301
  %7356 = fmul fast float %7320, %7302
  %7357 = fmul fast float %7320, %7303
  %7358 = fadd fast float %7340, %7355
  %7359 = fadd fast float %7341, %7356
  %7360 = fadd fast float %7342, %7357
  %7361 = call float @dx.op.dot3.f32(i32 55, float %7358, float %7359, float %7360, float %7358, float %7359, float %7360)  ; Dot3(ax,ay,az,bx,by,bz)
  %7362 = call float @dx.op.unary.f32(i32 25, float %7361)  ; Rsqrt(value)
  %7363 = fmul fast float %7362, %7358
  %7364 = fmul fast float %7362, %7359
  %7365 = fmul fast float %7362, %7360
  %7366 = fsub fast float %167, %7312
  %7367 = fsub fast float %168, %7313
  %7368 = fsub fast float %169, %7314
  %7369 = fsub fast float -0.000000e+00, %7366
  %7370 = fsub fast float -0.000000e+00, %7367
  %7371 = fsub fast float -0.000000e+00, %7368
  %7372 = call float @dx.op.dot3.f32(i32 55, float %7369, float %7370, float %7371, float %7301, float %7302, float %7303)  ; Dot3(ax,ay,az,bx,by,bz)
  %7373 = fcmp fast ogt float %7372, 0.000000e+00
  %7374 = uitofp i1 %7373 to float
  br label %7375

; <label>:7375                                    ; preds = %7354, %7278
  %7376 = phi float [ %7374, %7354 ], [ 1.000000e+00, %7278 ]
  %7377 = phi float [ %7363, %7354 ], [ %7346, %7278 ]
  %7378 = phi float [ %7364, %7354 ], [ %7347, %7278 ]
  %7379 = phi float [ %7365, %7354 ], [ %7348, %7278 ]
  %7380 = call float @dx.op.dot3.f32(i32 55, float %7301, float %7302, float %7303, float %7377, float %7378, float %7379)  ; Dot3(ax,ay,az,bx,by,bz)
  %7381 = fmul fast float %7380, %7380
  %7382 = call float @dx.op.unary.f32(i32 7, float %7381)  ; Saturate(value)
  %7383 = fsub fast float 1.000000e+00, %7382
  %7384 = fmul fast float %7383, 5.000000e-01
  %7385 = fcmp fast ogt float %7380, 0.000000e+00
  %7386 = fsub fast float 1.000000e+00, %7384
  %7387 = select i1 %7385, float %7384, float %7386
  %7388 = fmul fast float %7387, %7336
  %7389 = fadd fast float %7388, %7334
  %7390 = fmul fast float %7389, 0x3EF0001000000000
  %7391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7390, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7392 = extractvalue %dx.types.ResRet.f32 %7391, 0
  %7393 = fmul fast float %7380, %7318
  %7394 = fadd fast float %7393, %7319
  %7395 = call float @dx.op.unary.f32(i32 7, float %7394)  ; Saturate(value)
  %7396 = select i1 %7339, float 1.000000e+00, float %7395
  %7397 = select i1 %7339, float %7395, float 1.000000e+00
  %7398 = fmul fast float %7344, %7315
  %7399 = fsub fast float 1.000000e+00, %7398
  %7400 = fmul fast float %7399, %7321
  %7401 = call float @dx.op.unary.f32(i32 7, float %7400)  ; Saturate(value)
  %7402 = fmul fast float %7401, %7397
  %7403 = fmul fast float %7402, 2.000000e+00
  %7404 = fsub fast float 3.000000e+00, %7403
  %7405 = fmul fast float %7392, %7376
  %7406 = fmul fast float %7402, %7402
  %7407 = fmul fast float %7406, %7405
  %7408 = fmul fast float %7407, %7404
  %7409 = call float @dx.op.binary.f32(i32 36, float %7408, float %7408)  ; FMin(a,b)
  %7410 = call float @dx.op.binary.f32(i32 36, float %7408, float %7409)  ; FMin(a,b)
  %7411 = fcmp fast ogt float %7410, 0.000000e+00
  br i1 %7411, label %7420, label %7412, !dx.controlflow.hints !131

; <label>:7412                                    ; preds = %7804, %7566, %7375
  %7413 = phi float [ %7280, %7566 ], [ %7280, %7375 ], [ %7844, %7804 ]
  %7414 = phi float [ %7281, %7566 ], [ %7281, %7375 ], [ %7845, %7804 ]
  %7415 = phi float [ %7282, %7566 ], [ %7282, %7375 ], [ %7846, %7804 ]
  %7416 = phi float [ %7283, %7566 ], [ %7283, %7375 ], [ %7838, %7804 ]
  %7417 = phi float [ %7284, %7566 ], [ %7284, %7375 ], [ %7839, %7804 ]
  %7418 = phi float [ %7285, %7566 ], [ %7285, %7375 ], [ %7840, %7804 ]
  %7419 = icmp eq i32 %7279, %7289
  br i1 %7419, label %7847, label %7278

; <label>:7420                                    ; preds = %7375
  %7421 = icmp eq i32 %7337, 255
  br i1 %7421, label %7566, label %7422, !dx.controlflow.hints !132

; <label>:7422                                    ; preds = %7420
  %7423 = mul nuw nsw i32 %7337, 176
  %7424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7423, i32 undef)  ; BufferLoad(srv,index,wot)
  %7425 = extractvalue %dx.types.ResRet.f32 %7424, 0
  %7426 = extractvalue %dx.types.ResRet.f32 %7424, 1
  %7427 = extractvalue %dx.types.ResRet.f32 %7424, 2
  %7428 = extractvalue %dx.types.ResRet.f32 %7424, 3
  %7429 = add nuw nsw i32 %7423, 16
  %7430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7429, i32 undef)  ; BufferLoad(srv,index,wot)
  %7431 = extractvalue %dx.types.ResRet.f32 %7430, 0
  %7432 = extractvalue %dx.types.ResRet.f32 %7430, 1
  %7433 = add nuw nsw i32 %7423, 32
  %7434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7433, i32 undef)  ; BufferLoad(srv,index,wot)
  %7435 = extractvalue %dx.types.ResRet.f32 %7434, 0
  %7436 = extractvalue %dx.types.ResRet.f32 %7434, 1
  %7437 = extractvalue %dx.types.ResRet.f32 %7434, 2
  %7438 = add nuw nsw i32 %7423, 48
  %7439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7438, i32 undef)  ; BufferLoad(srv,index,wot)
  %7440 = extractvalue %dx.types.ResRet.f32 %7439, 0
  %7441 = extractvalue %dx.types.ResRet.f32 %7439, 1
  %7442 = extractvalue %dx.types.ResRet.f32 %7439, 2
  %7443 = extractvalue %dx.types.ResRet.f32 %7439, 3
  %7444 = add nuw nsw i32 %7423, 64
  %7445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7444, i32 undef)  ; BufferLoad(srv,index,wot)
  %7446 = extractvalue %dx.types.ResRet.f32 %7445, 0
  %7447 = extractvalue %dx.types.ResRet.f32 %7445, 1
  %7448 = extractvalue %dx.types.ResRet.f32 %7445, 2
  %7449 = extractvalue %dx.types.ResRet.f32 %7445, 3
  %7450 = add nuw nsw i32 %7423, 80
  %7451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7450, i32 undef)  ; BufferLoad(srv,index,wot)
  %7452 = extractvalue %dx.types.ResRet.f32 %7451, 0
  %7453 = extractvalue %dx.types.ResRet.f32 %7451, 1
  %7454 = extractvalue %dx.types.ResRet.f32 %7451, 2
  %7455 = extractvalue %dx.types.ResRet.f32 %7451, 3
  %7456 = add nuw nsw i32 %7423, 96
  %7457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7456, i32 undef)  ; BufferLoad(srv,index,wot)
  %7458 = extractvalue %dx.types.ResRet.f32 %7457, 0
  %7459 = extractvalue %dx.types.ResRet.f32 %7457, 1
  %7460 = extractvalue %dx.types.ResRet.f32 %7457, 2
  %7461 = extractvalue %dx.types.ResRet.f32 %7457, 3
  %7462 = bitcast float %7432 to i32
  %7463 = fmul fast float %7437, %111
  %7464 = fmul fast float %7437, %112
  %7465 = fmul fast float %7437, %113
  %7466 = fadd fast float %7463, %167
  %7467 = fadd fast float %7464, %168
  %7468 = fadd fast float %7465, %169
  %7469 = fmul fast float %7466, %7440
  %7470 = call float @dx.op.tertiary.f32(i32 46, float %7467, float %7446, float %7469)  ; FMad(a,b,c)
  %7471 = call float @dx.op.tertiary.f32(i32 46, float %7468, float %7452, float %7470)  ; FMad(a,b,c)
  %7472 = fadd fast float %7471, %7458
  %7473 = fmul fast float %7466, %7441
  %7474 = call float @dx.op.tertiary.f32(i32 46, float %7467, float %7447, float %7473)  ; FMad(a,b,c)
  %7475 = call float @dx.op.tertiary.f32(i32 46, float %7468, float %7453, float %7474)  ; FMad(a,b,c)
  %7476 = fadd fast float %7475, %7459
  %7477 = fmul fast float %7466, %7442
  %7478 = call float @dx.op.tertiary.f32(i32 46, float %7467, float %7448, float %7477)  ; FMad(a,b,c)
  %7479 = call float @dx.op.tertiary.f32(i32 46, float %7468, float %7454, float %7478)  ; FMad(a,b,c)
  %7480 = fadd fast float %7479, %7460
  %7481 = fmul fast float %7466, %7443
  %7482 = call float @dx.op.tertiary.f32(i32 46, float %7467, float %7449, float %7481)  ; FMad(a,b,c)
  %7483 = call float @dx.op.tertiary.f32(i32 46, float %7468, float %7455, float %7482)  ; FMad(a,b,c)
  %7484 = fadd fast float %7483, %7461
  %7485 = fdiv fast float %7472, %7484
  %7486 = fdiv fast float %7476, %7484
  %7487 = fdiv fast float %7480, %7484
  %7488 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7487)  ; FMax(a,b)
  %7489 = fmul fast float %272, 0x401921FB60000000
  %7490 = call float @dx.op.unary.f32(i32 13, float %7489)  ; Sin(value)
  %7491 = call float @dx.op.unary.f32(i32 12, float %7489)  ; Cos(value)
  %7492 = fmul fast float %7491, %7436
  %7493 = call float @dx.op.tertiary.f32(i32 46, float %7490, float %7436, float 0.000000e+00)  ; FMad(a,b,c)
  %7494 = fmul fast float %7436, %7490
  %7495 = fsub fast float -0.000000e+00, %7494
  %7496 = call float @dx.op.tertiary.f32(i32 46, float %7491, float %7436, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7497

; <label>:7497                                    ; preds = %7497, %7422
  %7498 = phi float [ 0.000000e+00, %7422 ], [ %7530, %7497 ]
  %7499 = phi float [ 0.000000e+00, %7422 ], [ %7532, %7497 ]
  %7500 = phi i32 [ 0, %7422 ], [ %7533, %7497 ]
  %7501 = mul i32 %7500, 2
  %7502 = add i32 0, %7501
  %7503 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7502
  %7504 = load float, float* %7503, align 4
  %7505 = mul i32 %7500, 2
  %7506 = add i32 1, %7505
  %7507 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7506
  %7508 = load float, float* %7507, align 4
  %7509 = fmul fast float %7492, %7504
  %7510 = call float @dx.op.tertiary.f32(i32 46, float %7508, float %7495, float %7509)  ; FMad(a,b,c)
  %7511 = fmul fast float %7504, %7493
  %7512 = call float @dx.op.tertiary.f32(i32 46, float %7508, float %7496, float %7511)  ; FMad(a,b,c)
  %7513 = fadd fast float %7510, %7485
  %7514 = fadd fast float %7512, %7486
  %7515 = fmul fast float %7513, %7431
  %7516 = fmul fast float %7514, %7431
  %7517 = call float @dx.op.binary.f32(i32 35, float %7515, float %7427)  ; FMax(a,b)
  %7518 = call float @dx.op.binary.f32(i32 35, float %7516, float %7427)  ; FMax(a,b)
  %7519 = call float @dx.op.binary.f32(i32 36, float %7517, float %7428)  ; FMin(a,b)
  %7520 = call float @dx.op.binary.f32(i32 36, float %7518, float %7428)  ; FMin(a,b)
  %7521 = fadd fast float %7519, %7425
  %7522 = fadd fast float %7520, %7426
  %7523 = uitofp i32 %7462 to float
  %7524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %7521, float %7522, float %7523, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7525 = extractvalue %dx.types.ResRet.f32 %7524, 0
  %7526 = fsub fast float %7525, %7488
  %7527 = fsub fast float %7526, %7435
  %7528 = fcmp fast ogt float %7527, 0.000000e+00
  %7529 = select i1 %7528, float 1.000000e+00, float 0.000000e+00
  %7530 = fadd fast float %7529, %7498
  %7531 = select i1 %7528, float %7527, float 0.000000e+00
  %7532 = fadd fast float %7531, %7499
  %7533 = add nuw nsw i32 %7500, 1
  %7534 = icmp eq i32 %7533, 8
  br i1 %7534, label %7535, label %7497

; <label>:7535                                    ; preds = %7497
  %7536 = fdiv fast float 1.000000e+00, %7530
  %7537 = fmul fast float %7536, %7532
  %7538 = fdiv fast float 1.000000e+00, %7488
  %7539 = fmul fast float %7537, %7538
  %7540 = call float @dx.op.unary.f32(i32 7, float %7539)  ; Saturate(value)
  %7541 = call float @dx.op.binary.f32(i32 35, float %7540, float 0.000000e+00)  ; FMax(a,b)
  %7542 = fmul fast float %7530, 1.250000e-01
  %7543 = call float @dx.op.unary.f32(i32 7, float %7542)  ; Saturate(value)
  %7544 = fmul fast float %7543, 2.000000e+00
  %7545 = fadd fast float %7544, -1.000000e+00
  %7546 = fcmp fast ogt float %7545, 0.000000e+00
  %7547 = fcmp fast olt float %7545, 0.000000e+00
  %7548 = zext i1 %7546 to i32
  %7549 = zext i1 %7547 to i32
  %7550 = sub nsw i32 %7548, %7549
  %7551 = sitofp i32 %7550 to float
  %7552 = fmul fast float %7551, %7545
  %7553 = fsub fast float 1.000000e+00, %7552
  %7554 = fmul fast float %7553, %7553
  %7555 = fmul fast float %7554, %7553
  %7556 = fsub fast float %7553, %7555
  %7557 = fmul fast float %7556, %7541
  %7558 = fsub fast float 1.000000e+00, %7555
  %7559 = fsub fast float %7558, %7557
  %7560 = fmul fast float %7551, 5.000000e-01
  %7561 = fmul fast float %7560, %7559
  %7562 = fsub fast float -5.000000e-01, %7561
  %7563 = fmul fast float %7562, %7396
  %7564 = fadd fast float %7563, 1.000000e+00
  %7565 = fmul fast float %7564, %7408
  br label %7566

; <label>:7566                                    ; preds = %7535, %7420
  %7567 = phi float [ %7565, %7535 ], [ %7408, %7420 ]
  %7568 = call float @dx.op.binary.f32(i32 36, float %7567, float %7567)  ; FMin(a,b)
  %7569 = call float @dx.op.binary.f32(i32 36, float %7567, float %7568)  ; FMin(a,b)
  %7570 = fcmp fast ogt float %7569, 0.000000e+00
  br i1 %7570, label %7571, label %7412, !dx.controlflow.hints !133

; <label>:7571                                    ; preds = %7566
  %7572 = fmul fast float %7567, %7330
  %7573 = fmul fast float %7567, %7331
  %7574 = fmul fast float %7567, %7332
  %7575 = fsub fast float %7314, %4731
  %7576 = fcmp fast ogt float %7575, 0.000000e+00
  %7577 = fsub fast float %169, %4731
  %7578 = fcmp fast ogt float %7577, 0.000000e+00
  %7579 = xor i1 %7578, %7576
  %7580 = fsub fast float %4731, %7314
  %7581 = fmul fast float %7580, 2.000000e+00
  %7582 = fadd fast float %7581, %7314
  %7583 = select i1 %7579, float %7314, float %7582
  %7584 = fsub fast float %7583, %169
  %7585 = call float @dx.op.dot3.f32(i32 55, float %7340, float %7341, float %7584, float %7340, float %7341, float %7584)  ; Dot3(ax,ay,az,bx,by,bz)
  %7586 = call float @dx.op.unary.f32(i32 25, float %7585)  ; Rsqrt(value)
  %7587 = fmul fast float %7586, %7340
  %7588 = fmul fast float %7586, %7341
  %7589 = fmul fast float %7586, %7584
  %7590 = fsub fast float %4731, %169
  %7591 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7590)  ; Dot3(ax,ay,az,bx,by,bz)
  %7592 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7587, float %7588, float %7589)  ; Dot3(ax,ay,az,bx,by,bz)
  %7593 = fdiv fast float 1.000000e+00, %7592
  %7594 = fmul fast float %7593, %7591
  %7595 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7577, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7596 = fcmp fast ogt float %7595, 0.000000e+00
  %7597 = fcmp fast olt float %7595, 0.000000e+00
  %7598 = zext i1 %7596 to i32
  %7599 = zext i1 %7597 to i32
  %7600 = sub nsw i32 %7598, %7599
  %7601 = sitofp i32 %7600 to float
  %7602 = fsub fast float %7583, %4731
  %7603 = call float @dx.op.dot3.f32(i32 55, float %7340, float %7341, float %7602, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7604 = fcmp fast ogt float %7603, 0.000000e+00
  %7605 = fcmp fast olt float %7603, 0.000000e+00
  %7606 = zext i1 %7604 to i32
  %7607 = zext i1 %7605 to i32
  %7608 = sub nsw i32 %7606, %7607
  %7609 = sitofp i32 %7608 to float
  %7610 = fcmp fast une float %7601, %7609
  br i1 %7610, label %7611, label %7621

; <label>:7611                                    ; preds = %7571
  %7612 = fmul fast float %7594, %7589
  %7613 = fmul fast float %7594, %7588
  %7614 = fmul fast float %7594, %7587
  %7615 = fmul fast float %7614, %7614
  %7616 = fmul fast float %7613, %7613
  %7617 = fadd fast float %7615, %7616
  %7618 = fmul fast float %7612, %7612
  %7619 = fadd fast float %7617, %7618
  %7620 = call float @dx.op.unary.f32(i32 24, float %7619)  ; Sqrt(value)
  br label %7633

; <label>:7621                                    ; preds = %7571
  %7622 = icmp slt i32 %7600, 0
  br i1 %7622, label %7623, label %7633

; <label>:7623                                    ; preds = %7621
  %7624 = fsub fast float %167, %7312
  %7625 = fsub fast float %168, %7313
  %7626 = fsub fast float %169, %7583
  %7627 = fmul fast float %7624, %7624
  %7628 = fmul fast float %7625, %7625
  %7629 = fadd fast float %7627, %7628
  %7630 = fmul fast float %7626, %7626
  %7631 = fadd fast float %7629, %7630
  %7632 = call float @dx.op.unary.f32(i32 24, float %7631)  ; Sqrt(value)
  br label %7633

; <label>:7633                                    ; preds = %7623, %7621, %7611
  %7634 = phi float [ %7620, %7611 ], [ %7632, %7623 ], [ 0.000000e+00, %7621 ]
  %7635 = and i1 %7578, %7576
  %7636 = fsub fast float -0.000000e+00, %7634
  %7637 = select i1 %7635, float -0.000000e+00, float %7636
  %7638 = fmul fast float %4732, 0x3FF7154760000000
  %7639 = fmul fast float %7638, %7637
  %7640 = fmul fast float %4733, 0x3FF7154760000000
  %7641 = fmul fast float %7640, %7637
  %7642 = fmul fast float %4734, 0x3FF7154760000000
  %7643 = fmul fast float %7642, %7637
  %7644 = call float @dx.op.unary.f32(i32 21, float %7639)  ; Exp(value)
  %7645 = call float @dx.op.unary.f32(i32 21, float %7641)  ; Exp(value)
  %7646 = call float @dx.op.unary.f32(i32 21, float %7643)  ; Exp(value)
  %7647 = call float @dx.op.unary.f32(i32 7, float %7644)  ; Saturate(value)
  %7648 = call float @dx.op.unary.f32(i32 7, float %7645)  ; Saturate(value)
  %7649 = call float @dx.op.unary.f32(i32 7, float %7646)  ; Saturate(value)
  %7650 = fmul fast float %7572, %7647
  %7651 = fmul fast float %7573, %7648
  %7652 = fmul fast float %7574, %7649
  %7653 = fsub fast float %7346, %187
  %7654 = fsub fast float %7347, %188
  %7655 = fsub fast float %7348, %189
  %7656 = call float @dx.op.dot3.f32(i32 55, float %7653, float %7654, float %7655, float %7653, float %7654, float %7655)  ; Dot3(ax,ay,az,bx,by,bz)
  %7657 = call float @dx.op.unary.f32(i32 25, float %7656)  ; Rsqrt(value)
  %7658 = fmul fast float %7657, %7653
  %7659 = fmul fast float %7657, %7654
  %7660 = fmul fast float %7657, %7655
  %7661 = call float @dx.op.dot3.f32(i32 55, float %7346, float %7347, float %7348, float %4920, float %4921, float %4922)  ; Dot3(ax,ay,az,bx,by,bz)
  %7662 = call float @dx.op.dot3.f32(i32 55, float %4748, float %4749, float %4750, float %7658, float %7659, float %7660)  ; Dot3(ax,ay,az,bx,by,bz)
  %7663 = call float @dx.op.unary.f32(i32 7, float %7661)  ; Saturate(value)
  %7664 = fmul fast float %7663, %7353
  %7665 = fmul fast float %7663, %7663
  %7666 = fmul fast float %7665, %4953
  %7667 = call float @dx.op.unary.f32(i32 7, float %7666)  ; Saturate(value)
  %7668 = fmul fast float %7664, %7667
  %7669 = bitcast float %7343 to i32
  %7670 = ashr i32 %7669, 1
  %7671 = sub nsw i32 1597463007, %7670
  %7672 = bitcast i32 %7671 to float
  %7673 = fmul fast float %7672, %7340
  %7674 = fmul fast float %7672, %7341
  %7675 = fmul fast float %7672, %7342
  %7676 = fsub fast float %7673, %187
  %7677 = fsub fast float %7674, %188
  %7678 = fsub fast float %7675, %189
  %7679 = call float @dx.op.dot3.f32(i32 55, float %7676, float %7677, float %7678, float %7676, float %7677, float %7678)  ; Dot3(ax,ay,az,bx,by,bz)
  %7680 = call float @dx.op.unary.f32(i32 25, float %7679)  ; Rsqrt(value)
  %7681 = fmul fast float %7676, %7680
  %7682 = fmul fast float %7677, %7680
  %7683 = fmul fast float %7678, %7680
  %7684 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float %7681, float %7682, float %7683)  ; Dot3(ax,ay,az,bx,by,bz)
  %7685 = fmul fast float %7684, %7684
  %7686 = call float @dx.op.unary.f32(i32 6, float %7661)  ; FAbs(value)
  %7687 = fsub fast float 1.000000e+00, %4946
  %7688 = fmul fast float %4928, %4928
  %7689 = fmul fast float %7688, %7687
  %7690 = fadd fast float %7689, %4946
  %7691 = bitcast float %7690 to i32
  %7692 = ashr i32 %7691, 1
  %7693 = add nsw i32 %7692, 532487669
  %7694 = bitcast i32 %7693 to float
  %7695 = fadd fast float %7694, %4928
  %7696 = fmul fast float %4946, %7685
  %7697 = fsub fast float 1.000000e+00, %7685
  %7698 = fadd fast float %7697, %7696
  %7699 = fmul fast float %7686, %7686
  %7700 = fmul fast float %7699, %7687
  %7701 = fadd fast float %7700, %4946
  %7702 = bitcast float %7701 to i32
  %7703 = ashr i32 %7702, 1
  %7704 = add nsw i32 %7703, 532487669
  %7705 = bitcast i32 %7704 to float
  %7706 = fadd fast float %7705, %7686
  %7707 = fmul fast float %7698, %7698
  %7708 = fmul fast float %7707, %7695
  %7709 = fmul fast float %7708, %7706
  %7710 = fdiv fast float 1.000000e+00, %7709
  %7711 = bitcast float %4946 to i32
  %7712 = sitofp i32 %7711 to float
  %7713 = fmul fast float %7712, 0x3FE7F73180000000
  %7714 = fadd fast float %7713, 0x41AFE27C40000000
  %7715 = fptosi float %7714 to i32
  %7716 = bitcast i32 %7715 to float
  %7717 = fmul fast float %7309, 0x3FD80E9D60000000
  %7718 = fmul fast float %7717, %7672
  %7719 = fadd fast float %7716, %7718
  %7720 = bitcast float %7719 to i32
  %7721 = sub nsw i32 2129859010, %7720
  %7722 = bitcast i32 %7721 to float
  %7723 = fmul fast float %4946, %7710
  %7724 = fmul fast float %7723, %7716
  %7725 = fmul fast float %7724, %7722
  %7726 = call float @dx.op.unary.f32(i32 6, float %7662)  ; FAbs(value)
  %7727 = fsub fast float 1.000000e+00, %7726
  %7728 = bitcast float %7727 to i32
  %7729 = sitofp i32 %7728 to float
  %7730 = fmul fast float %7729, 5.000000e+00
  %7731 = fadd fast float %7730, 0xC1EFBF8940000000
  %7732 = fptosi float %7731 to i32
  %7733 = bitcast i32 %7732 to float
  %7734 = fsub fast float 1.000000e+00, %4914
  %7735 = fsub fast float 1.000000e+00, %4915
  %7736 = fsub fast float 1.000000e+00, %4926
  %7737 = fmul fast float %7733, %7734
  %7738 = fmul fast float %7733, %7735
  %7739 = fmul fast float %7733, %7736
  %7740 = fadd fast float %7737, %4914
  %7741 = fadd fast float %7738, %4915
  %7742 = fadd fast float %7739, %4926
  br i1 %5065, label %7743, label %7766

; <label>:7743                                    ; preds = %7633
  %7744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4308, float %7726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7745 = extractvalue %dx.types.ResRet.f32 %7744, 0
  %7746 = extractvalue %dx.types.ResRet.f32 %7744, 1
  %7747 = extractvalue %dx.types.ResRet.f32 %7744, 2
  %7748 = fadd fast float %7745, -5.000000e-01
  %7749 = fadd fast float %7746, -5.000000e-01
  %7750 = fadd fast float %7747, -5.000000e-01
  %7751 = fmul fast float %4914, 4.000000e+00
  %7752 = fmul fast float %7751, %7734
  %7753 = fmul fast float %7752, %7748
  %7754 = fmul fast float %4915, 4.000000e+00
  %7755 = fmul fast float %7754, %7735
  %7756 = fmul fast float %7755, %7749
  %7757 = fmul fast float %4926, 4.000000e+00
  %7758 = fmul fast float %7757, %7736
  %7759 = fmul fast float %7758, %7750
  %7760 = fadd fast float %7753, %7740
  %7761 = fadd fast float %7756, %7741
  %7762 = fadd fast float %7759, %7742
  %7763 = call float @dx.op.unary.f32(i32 7, float %7760)  ; Saturate(value)
  %7764 = call float @dx.op.unary.f32(i32 7, float %7761)  ; Saturate(value)
  %7765 = call float @dx.op.unary.f32(i32 7, float %7762)  ; Saturate(value)
  br label %7766

; <label>:7766                                    ; preds = %7743, %7633
  %7767 = phi float [ %7763, %7743 ], [ %7740, %7633 ]
  %7768 = phi float [ %7764, %7743 ], [ %7741, %7633 ]
  %7769 = phi float [ %7765, %7743 ], [ %7742, %7633 ]
  %7770 = fmul fast float %7661, 9.843750e-01
  %7771 = fadd fast float %7770, 7.812500e-03
  %7772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7771, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7773 = extractvalue %dx.types.ResRet.f32 %7772, 2
  %7774 = extractvalue %dx.types.ResRet.f32 %7772, 3
  %7775 = fmul fast float %7773, %4914
  %7776 = fmul fast float %7773, %4915
  %7777 = fmul fast float %7773, %4926
  %7778 = fadd fast float %7775, %7774
  %7779 = fadd fast float %7776, %7774
  %7780 = fadd fast float %7777, %7774
  br i1 %5065, label %7781, label %7804

; <label>:7781                                    ; preds = %7766
  %7782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4308, float %7661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7783 = extractvalue %dx.types.ResRet.f32 %7782, 0
  %7784 = extractvalue %dx.types.ResRet.f32 %7782, 1
  %7785 = extractvalue %dx.types.ResRet.f32 %7782, 2
  %7786 = fadd fast float %7783, -5.000000e-01
  %7787 = fadd fast float %7784, -5.000000e-01
  %7788 = fadd fast float %7785, -5.000000e-01
  %7789 = fmul fast float %4914, 4.000000e+00
  %7790 = fmul fast float %7789, %7734
  %7791 = fmul fast float %7790, %7786
  %7792 = fmul fast float %4915, 4.000000e+00
  %7793 = fmul fast float %7792, %7735
  %7794 = fmul fast float %7793, %7787
  %7795 = fmul fast float %4926, 4.000000e+00
  %7796 = fmul fast float %7795, %7736
  %7797 = fmul fast float %7796, %7788
  %7798 = fadd fast float %7791, %7778
  %7799 = fadd fast float %7794, %7779
  %7800 = fadd fast float %7797, %7780
  %7801 = call float @dx.op.unary.f32(i32 7, float %7798)  ; Saturate(value)
  %7802 = call float @dx.op.unary.f32(i32 7, float %7799)  ; Saturate(value)
  %7803 = call float @dx.op.unary.f32(i32 7, float %7800)  ; Saturate(value)
  br label %7804

; <label>:7804                                    ; preds = %7781, %7766
  %7805 = phi float [ %7801, %7781 ], [ %7778, %7766 ]
  %7806 = phi float [ %7802, %7781 ], [ %7779, %7766 ]
  %7807 = phi float [ %7803, %7781 ], [ %7780, %7766 ]
  %7808 = call float @dx.op.binary.f32(i32 35, float %7806, float %7807)  ; FMax(a,b)
  %7809 = call float @dx.op.binary.f32(i32 35, float %7805, float %7808)  ; FMax(a,b)
  %7810 = fsub fast float 1.000000e+00, %7809
  %7811 = fmul fast float %7767, %7725
  %7812 = fmul fast float %7768, %7725
  %7813 = fmul fast float %7769, %7725
  %7814 = fsub fast float 1.000000e+00, %7662
  %7815 = bitcast float %7814 to i32
  %7816 = sitofp i32 %7815 to float
  %7817 = fmul fast float %7816, 5.000000e+00
  %7818 = fadd fast float %7817, 0xC1EFBF8940000000
  %7819 = fptosi float %7818 to i32
  %7820 = bitcast i32 %7819 to float
  %7821 = fmul fast float %7820, %4309
  %7822 = fmul fast float %7810, %7821
  %7823 = fmul fast float %7822, %5607
  %7824 = fmul fast float %7822, %5608
  %7825 = fmul fast float %7822, %5609
  %7826 = fadd fast float %7823, %7811
  %7827 = fadd fast float %7824, %7812
  %7828 = fadd fast float %7825, %7813
  %7829 = fmul fast float %7650, %4334
  %7830 = fmul fast float %7829, %7668
  %7831 = fmul fast float %7830, %7810
  %7832 = fmul fast float %7651, %4334
  %7833 = fmul fast float %7832, %7668
  %7834 = fmul fast float %7833, %7810
  %7835 = fmul fast float %7652, %4334
  %7836 = fmul fast float %7835, %7668
  %7837 = fmul fast float %7836, %7810
  %7838 = fadd fast float %7831, %7283
  %7839 = fadd fast float %7834, %7284
  %7840 = fadd fast float %7837, %7285
  %7841 = fmul fast float %7830, %7826
  %7842 = fmul fast float %7833, %7827
  %7843 = fmul fast float %7836, %7828
  %7844 = fadd fast float %7841, %7280
  %7845 = fadd fast float %7842, %7281
  %7846 = fadd fast float %7843, %7282
  br label %7412

; <label>:7847                                    ; preds = %7412
  br label %7848

; <label>:7848                                    ; preds = %7847, %7246
  %7849 = phi float [ %7248, %7246 ], [ %7413, %7847 ]
  %7850 = phi float [ %7249, %7246 ], [ %7414, %7847 ]
  %7851 = phi float [ %7250, %7246 ], [ %7415, %7847 ]
  %7852 = phi float [ %7251, %7246 ], [ %7416, %7847 ]
  %7853 = phi float [ %7252, %7246 ], [ %7417, %7847 ]
  %7854 = phi float [ %7253, %7246 ], [ %7418, %7847 ]
  %7855 = add i32 %7247, 1
  %7856 = icmp ugt i32 %7855, %7243
  br i1 %7856, label %7857, label %7246

; <label>:7857                                    ; preds = %7848
  br label %7858

; <label>:7858                                    ; preds = %7857, %7196, %7186
  %7859 = phi float [ %7187, %7186 ], [ %7187, %7196 ], [ %7849, %7857 ]
  %7860 = phi float [ %7188, %7186 ], [ %7188, %7196 ], [ %7850, %7857 ]
  %7861 = phi float [ %7189, %7186 ], [ %7189, %7196 ], [ %7851, %7857 ]
  %7862 = phi float [ %7190, %7186 ], [ %7190, %7196 ], [ %7852, %7857 ]
  %7863 = phi float [ %7191, %7186 ], [ %7191, %7196 ], [ %7853, %7857 ]
  %7864 = phi float [ %7192, %7186 ], [ %7192, %7196 ], [ %7854, %7857 ]
  %7865 = fmul fast float %4334, %4334
  %7866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7867 = extractvalue %dx.types.CBufRet.f32 %7866, 0
  %7868 = fmul fast float %7867, %5613
  %7869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7870 = extractvalue %dx.types.CBufRet.f32 %7869, 3
  %7871 = fsub fast float 1.000000e+00, %4312
  %7872 = call float @dx.op.unary.f32(i32 7, float %7871)  ; Saturate(value)
  %7873 = fadd fast float %7864, %4311
  %7874 = fmul fast float %7873, %4312
  %7875 = fmul fast float %7872, %7870
  %7876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4313, i32 undef)  ; BufferLoad(srv,index,wot)
  %7877 = extractvalue %dx.types.ResRet.i32 %7876, 3
  %7878 = bitcast i32 %7877 to float
  %7879 = fsub fast float %7865, %7878
  %7880 = fmul fast float %7879, %201
  %7881 = fadd fast float %7880, %7878
  %7882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7883 = extractvalue %dx.types.CBufRet.f32 %7882, 3
  %7884 = fmul fast float %7862, %4917
  %7885 = fmul fast float %7863, %4918
  %7886 = fmul fast float %7864, %4919
  %7887 = fcmp fast ogt float %92, %221
  %7888 = and i1 %7887, %4737
  %7889 = or i1 %4743, %7888
  %7890 = icmp eq i32 %4736, 2
  %7891 = fcmp fast ole float %92, %221
  %7892 = and i1 %7891, %7890
  %7893 = or i1 %7892, %7889
  br i1 %7888, label %7894, label %8151

; <label>:7894                                    ; preds = %7858
  %7895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7896 = extractvalue %dx.types.CBufRet.f32 %7895, 2
  %7897 = extractvalue %dx.types.CBufRet.f32 %7895, 3
  %7898 = fmul fast float %7896, %104
  %7899 = fmul fast float %7897, %105
  %7900 = call float @dx.op.unary.f32(i32 7, float %7898)  ; Saturate(value)
  %7901 = call float @dx.op.unary.f32(i32 7, float %7899)  ; Saturate(value)
  %7902 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7900, float %7901, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7903 = extractvalue %dx.types.ResRet.f32 %7902, 0
  %7904 = extractvalue %dx.types.ResRet.f32 %7902, 1
  %7905 = extractvalue %dx.types.ResRet.f32 %7902, 2
  %7906 = extractvalue %dx.types.ResRet.f32 %7902, 3
  %7907 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7900, float %7901, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7908 = extractvalue %dx.types.ResRet.f32 %7907, 0
  %7909 = extractvalue %dx.types.ResRet.f32 %7907, 1
  %7910 = extractvalue %dx.types.ResRet.f32 %7907, 2
  %7911 = extractvalue %dx.types.ResRet.f32 %7907, 3
  %7912 = call float @dx.op.binary.f32(i32 35, float %7904, float %7905)  ; FMax(a,b)
  %7913 = call float @dx.op.binary.f32(i32 35, float %7903, float %7912)  ; FMax(a,b)
  %7914 = call float @dx.op.binary.f32(i32 35, float %7913, float %7906)  ; FMax(a,b)
  %7915 = call float @dx.op.binary.f32(i32 36, float %7909, float %7910)  ; FMin(a,b)
  %7916 = call float @dx.op.binary.f32(i32 36, float %7908, float %7915)  ; FMin(a,b)
  %7917 = call float @dx.op.binary.f32(i32 36, float %7916, float %7911)  ; FMin(a,b)
  %7918 = fmul fast float %7914, 2.550000e+02
  %7919 = fadd fast float %7918, 0x3F70101020000000
  %7920 = fptoui float %7919 to i32
  %7921 = fmul fast float %7917, 2.550000e+02
  %7922 = fadd fast float %7921, 0x3F70101020000000
  %7923 = fptoui float %7922 to i32
  %7924 = icmp ult i32 %7920, %7923
  br i1 %7924, label %7925, label %8093

; <label>:7925                                    ; preds = %7894
  %7926 = fcmp fast ogt float %91, 9.843750e-01
  %7927 = fadd fast float %92, -4.000000e+00
  %7928 = select i1 %7926, float -4.000000e+00, float %7927
  %7929 = call float @dx.op.binary.f32(i32 35, float %7928, float 0.000000e+00)  ; FMax(a,b)
  %7930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7931 = extractvalue %dx.types.CBufRet.f32 %7930, 0
  %7932 = fadd fast float %7931, %7929
  %7933 = extractvalue %dx.types.CBufRet.f32 %7930, 2
  %7934 = fmul fast float %7932, %7933
  %7935 = call float @dx.op.unary.f32(i32 23, float %7934)  ; Log(value)
  %7936 = extractvalue %dx.types.CBufRet.f32 %7930, 3
  %7937 = fmul fast float %7936, %7935
  %7938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7939 = extractvalue %dx.types.CBufRet.f32 %7938, 2
  %7940 = fmul fast float %7937, %7939
  %7941 = call float @dx.op.unary.f32(i32 7, float %7940)  ; Saturate(value)
  %7942 = uitofp i32 %7920 to float
  %7943 = uitofp i32 %7923 to float
  %7944 = fadd fast float %7942, 5.000000e-01
  %7945 = fadd fast float %7943, 5.000000e-01
  %7946 = fmul fast float %7939, %7944
  %7947 = fmul fast float %7939, %7945
  %7948 = fadd fast float %7946, 0x3F0FFB4800000000
  %7949 = fadd fast float %7947, 0xBF0FFB4800000000
  %7950 = call float @dx.op.binary.f32(i32 35, float %7941, float %7948)  ; FMax(a,b)
  %7951 = call float @dx.op.binary.f32(i32 36, float %7950, float %7949)  ; FMin(a,b)
  %7952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7953 = extractvalue %dx.types.CBufRet.f32 %7952, 1
  %7954 = extractvalue %dx.types.CBufRet.f32 %7952, 2
  %7955 = extractvalue %dx.types.CBufRet.f32 %7952, 0
  %7956 = fmul fast float %7953, %7951
  %7957 = fadd fast float %7955, %7956
  %7958 = fadd fast float %7955, %7954
  %7959 = fsub fast float %7953, %7954
  %7960 = fadd fast float %7959, %7955
  %7961 = call float @dx.op.binary.f32(i32 35, float %7957, float %7958)  ; FMax(a,b)
  %7962 = call float @dx.op.binary.f32(i32 36, float %7961, float %7960)  ; FMin(a,b)
  %7963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %7900, float %7901, float %7962, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7964 = extractvalue %dx.types.ResRet.f32 %7963, 0
  %7965 = extractvalue %dx.types.ResRet.f32 %7963, 1
  %7966 = extractvalue %dx.types.ResRet.f32 %7963, 2
  %7967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7968 = extractvalue %dx.types.CBufRet.i32 %7967, 0
  %7969 = extractvalue %dx.types.CBufRet.i32 %7967, 1
  %7970 = uitofp i32 %7968 to float
  %7971 = uitofp i32 %7969 to float
  %7972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7973 = extractvalue %dx.types.CBufRet.f32 %7972, 0
  %7974 = extractvalue %dx.types.CBufRet.f32 %7972, 1
  %7975 = fmul fast float %7970, %7900
  %7976 = fmul fast float %7971, %7901
  %7977 = fadd fast float %7975, -5.000000e-01
  %7978 = fadd fast float %7976, -5.000000e-01
  %7979 = call float @dx.op.unary.f32(i32 22, float %7977)  ; Frc(value)
  %7980 = call float @dx.op.unary.f32(i32 22, float %7978)  ; Frc(value)
  %7981 = fmul fast float %7979, %7979
  %7982 = fmul fast float %7981, %7979
  %7983 = fsub fast float 3.000000e+00, %7979
  %7984 = fmul fast float %7981, %7983
  %7985 = fmul fast float %7979, 3.000000e+00
  %7986 = fmul fast float %7982, 3.000000e+00
  %7987 = fmul fast float %7981, 6.000000e+00
  %7988 = fsub fast float %7986, %7987
  %7989 = fadd fast float %7988, 4.000000e+00
  %7990 = fmul fast float %7989, 0x3FC5555560000000
  %7991 = fmul fast float %7982, -3.000000e+00
  %7992 = fadd fast float %7981, %7979
  %7993 = fmul fast float %7992, 3.000000e+00
  %7994 = fadd fast float %7991, 1.000000e+00
  %7995 = fadd fast float %7994, %7993
  %7996 = fmul fast float %7982, 0x3FC5555560000000
  %7997 = fmul fast float %7980, %7980
  %7998 = fmul fast float %7997, %7980
  %7999 = fsub fast float 3.000000e+00, %7980
  %8000 = fmul fast float %7997, %7999
  %8001 = fmul fast float %7980, 3.000000e+00
  %8002 = fmul fast float %7998, 3.000000e+00
  %8003 = fmul fast float %7997, 6.000000e+00
  %8004 = fsub fast float %8002, %8003
  %8005 = fadd fast float %8004, 4.000000e+00
  %8006 = fmul fast float %8005, 0x3FC5555560000000
  %8007 = fmul fast float %7998, -3.000000e+00
  %8008 = fadd fast float %7997, %7980
  %8009 = fmul fast float %8008, 3.000000e+00
  %8010 = fadd fast float %8007, 1.000000e+00
  %8011 = fadd fast float %8010, %8009
  %8012 = fmul fast float %7998, 0x3FC5555560000000
  %8013 = fadd fast float %7979, 1.000000e+00
  %8014 = fsub fast float 1.000000e+00, %7985
  %8015 = fadd fast float %8014, %7984
  %8016 = fadd fast float %8015, %7989
  %8017 = fmul fast float %8016, 0x3FC5555560000000
  %8018 = fdiv fast float %7990, %8017
  %8019 = fsub fast float %8013, %8018
  %8020 = fsub fast float 1.000000e+00, %7979
  %8021 = fadd fast float %7995, %7982
  %8022 = fmul fast float %8021, 0x3FC5555560000000
  %8023 = fdiv fast float %7996, %8022
  %8024 = fadd fast float %8020, %8023
  %8025 = fadd fast float %7980, 1.000000e+00
  %8026 = fsub fast float 1.000000e+00, %8001
  %8027 = fadd fast float %8026, %8000
  %8028 = fadd fast float %8027, %8005
  %8029 = fmul fast float %8028, 0x3FC5555560000000
  %8030 = fdiv fast float %8006, %8029
  %8031 = fsub fast float %8025, %8030
  %8032 = fsub fast float 1.000000e+00, %7980
  %8033 = fadd fast float %8011, %7998
  %8034 = fmul fast float %8033, 0x3FC5555560000000
  %8035 = fdiv fast float %8012, %8034
  %8036 = fadd fast float %8035, %8032
  %8037 = fmul fast float %8019, %7973
  %8038 = fsub fast float %7900, %8037
  %8039 = fmul fast float %8024, %7973
  %8040 = fadd fast float %8039, %7900
  %8041 = fmul fast float %8036, %7974
  %8042 = fadd fast float %8041, %7901
  %8043 = fmul fast float %8031, %7974
  %8044 = fsub fast float %7901, %8043
  %8045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8038, float %8044, float %7962, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8046 = extractvalue %dx.types.ResRet.f32 %8045, 0
  %8047 = extractvalue %dx.types.ResRet.f32 %8045, 1
  %8048 = extractvalue %dx.types.ResRet.f32 %8045, 2
  %8049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8040, float %8044, float %7962, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8050 = extractvalue %dx.types.ResRet.f32 %8049, 0
  %8051 = extractvalue %dx.types.ResRet.f32 %8049, 1
  %8052 = extractvalue %dx.types.ResRet.f32 %8049, 2
  %8053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8038, float %8042, float %7962, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8054 = extractvalue %dx.types.ResRet.f32 %8053, 0
  %8055 = extractvalue %dx.types.ResRet.f32 %8053, 1
  %8056 = extractvalue %dx.types.ResRet.f32 %8053, 2
  %8057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8040, float %8042, float %7962, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8058 = extractvalue %dx.types.ResRet.f32 %8057, 0
  %8059 = extractvalue %dx.types.ResRet.f32 %8057, 1
  %8060 = extractvalue %dx.types.ResRet.f32 %8057, 2
  %8061 = fsub fast float %8054, %8046
  %8062 = fsub fast float %8055, %8047
  %8063 = fsub fast float %8056, %8048
  %8064 = fmul fast float %8061, %8034
  %8065 = fmul fast float %8062, %8034
  %8066 = fmul fast float %8063, %8034
  %8067 = fadd fast float %8064, %8046
  %8068 = fadd fast float %8065, %8047
  %8069 = fadd fast float %8066, %8048
  %8070 = fsub fast float %8058, %8050
  %8071 = fsub fast float %8059, %8051
  %8072 = fsub fast float %8060, %8052
  %8073 = fmul fast float %8070, %8034
  %8074 = fmul fast float %8071, %8034
  %8075 = fmul fast float %8072, %8034
  %8076 = fsub fast float %8050, %8067
  %8077 = fadd fast float %8076, %8073
  %8078 = fsub fast float %8051, %8068
  %8079 = fadd fast float %8078, %8074
  %8080 = fsub fast float %8052, %8069
  %8081 = fadd fast float %8080, %8075
  %8082 = fmul fast float %8077, %8022
  %8083 = fmul fast float %8079, %8022
  %8084 = fmul fast float %8081, %8022
  %8085 = fadd fast float %8082, %8067
  %8086 = fadd fast float %8083, %8068
  %8087 = fadd fast float %8084, %8069
  %8088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8089 = extractvalue %dx.types.CBufRet.f32 %8088, 1
  %8090 = fmul fast float %8085, %8089
  %8091 = fmul fast float %8086, %8089
  %8092 = fmul fast float %8087, %8089
  br label %8093

; <label>:8093                                    ; preds = %7925, %7894
  %8094 = phi float [ %7964, %7925 ], [ 1.000000e+00, %7894 ]
  %8095 = phi float [ %7965, %7925 ], [ 1.000000e+00, %7894 ]
  %8096 = phi float [ %7966, %7925 ], [ 1.000000e+00, %7894 ]
  %8097 = phi float [ %8090, %7925 ], [ 0.000000e+00, %7894 ]
  %8098 = phi float [ %8091, %7925 ], [ 0.000000e+00, %7894 ]
  %8099 = phi float [ %8092, %7925 ], [ 0.000000e+00, %7894 ]
  %8100 = fmul fast float %8097, %7881
  %8101 = fmul fast float %8098, %7881
  %8102 = fmul fast float %8099, %7881
  %8103 = call float @dx.op.dot3.f32(i32 55, float %8094, float %8095, float %8096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8104 = call float @dx.op.dot3.f32(i32 55, float %8100, float %8101, float %8102, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8105 = select i1 %261, float %8103, float %8094
  %8106 = select i1 %261, float %8103, float %8095
  %8107 = select i1 %261, float 1.000000e+00, float %8096
  %8108 = select i1 %261, float %8104, float %8100
  %8109 = select i1 %261, float 0.000000e+00, float %8101
  %8110 = select i1 %261, float 0.000000e+00, float %8102
  %8111 = fmul fast float %8105, %7884
  %8112 = fmul fast float %8106, %7885
  %8113 = fmul fast float %8107, %7886
  %8114 = fadd fast float %8111, %8108
  %8115 = fadd fast float %8112, %8109
  %8116 = fadd fast float %8110, %8113
  %8117 = fmul fast float %8105, %7859
  %8118 = fmul fast float %8106, %7860
  %8119 = fmul fast float %8107, %7861
  %8120 = fmul fast float %137, %7896
  %8121 = fmul fast float %139, %7897
  %8122 = fsub fast float 1.000000e+00, %8120
  %8123 = fsub fast float 1.000000e+00, %8121
  %8124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8125 = extractvalue %dx.types.CBufRet.f32 %8124, 0
  %8126 = extractvalue %dx.types.CBufRet.f32 %8124, 1
  %8127 = extractvalue %dx.types.CBufRet.f32 %8124, 2
  %8128 = fmul fast float %8122, %8125
  %8129 = fmul fast float %8122, %8126
  %8130 = fmul fast float %8122, %8127
  %8131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8132 = extractvalue %dx.types.CBufRet.f32 %8131, 0
  %8133 = extractvalue %dx.types.CBufRet.f32 %8131, 1
  %8134 = extractvalue %dx.types.CBufRet.f32 %8131, 2
  %8135 = fmul fast float %8123, %8132
  %8136 = fmul fast float %8123, %8133
  %8137 = fmul fast float %8123, %8134
  %8138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8139 = extractvalue %dx.types.CBufRet.f32 %8138, 0
  %8140 = extractvalue %dx.types.CBufRet.f32 %8138, 1
  %8141 = extractvalue %dx.types.CBufRet.f32 %8138, 2
  %8142 = fadd fast float %8135, %8139
  %8143 = fadd fast float %8142, %8128
  %8144 = fadd fast float %8136, %8140
  %8145 = fadd fast float %8144, %8129
  %8146 = fadd fast float %8137, %8141
  %8147 = fadd fast float %8146, %8130
  %8148 = fmul fast float %8143, %221
  %8149 = fmul fast float %8145, %221
  %8150 = fmul fast float %8147, %221
  br label %8151

; <label>:8151                                    ; preds = %8093, %7858
  %8152 = phi float [ %8148, %8093 ], [ %167, %7858 ]
  %8153 = phi float [ %8149, %8093 ], [ %168, %7858 ]
  %8154 = phi float [ %8150, %8093 ], [ %169, %7858 ]
  %8155 = phi float [ %221, %8093 ], [ %92, %7858 ]
  %8156 = phi float [ %8114, %8093 ], [ %7884, %7858 ]
  %8157 = phi float [ %8115, %8093 ], [ %7885, %7858 ]
  %8158 = phi float [ %8116, %8093 ], [ %7886, %7858 ]
  %8159 = phi float [ %8117, %8093 ], [ %7859, %7858 ]
  %8160 = phi float [ %8118, %8093 ], [ %7860, %7858 ]
  %8161 = phi float [ %8119, %8093 ], [ %7861, %7858 ]
  %8162 = phi float [ %8094, %8093 ], [ 1.000000e+00, %7858 ]
  br i1 %7893, label %9317, label %8163

; <label>:8163                                    ; preds = %8151
  %8164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8165 = extractvalue %dx.types.CBufRet.f32 %8164, 0
  %8166 = extractvalue %dx.types.CBufRet.f32 %8164, 1
  %8167 = extractvalue %dx.types.CBufRet.f32 %8164, 2
  %8168 = extractvalue %dx.types.CBufRet.f32 %8164, 3
  %8169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8170 = extractvalue %dx.types.CBufRet.f32 %8169, 0
  %8171 = extractvalue %dx.types.CBufRet.f32 %8169, 1
  %8172 = extractvalue %dx.types.CBufRet.f32 %8169, 2
  %8173 = extractvalue %dx.types.CBufRet.f32 %8169, 3
  %8174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8175 = extractvalue %dx.types.CBufRet.f32 %8174, 0
  %8176 = extractvalue %dx.types.CBufRet.f32 %8174, 1
  %8177 = extractvalue %dx.types.CBufRet.f32 %8174, 2
  %8178 = extractvalue %dx.types.CBufRet.f32 %8174, 3
  %8179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.f32 %8179, 0
  %8181 = extractvalue %dx.types.CBufRet.f32 %8179, 1
  %8182 = extractvalue %dx.types.CBufRet.f32 %8179, 2
  %8183 = extractvalue %dx.types.CBufRet.f32 %8179, 3
  %8184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8185 = extractvalue %dx.types.CBufRet.f32 %8184, 3
  %8186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8187 = extractvalue %dx.types.CBufRet.f32 %8186, 3
  %8188 = extractvalue %dx.types.CBufRet.f32 %8186, 0
  %8189 = extractvalue %dx.types.CBufRet.f32 %8186, 1
  %8190 = extractvalue %dx.types.CBufRet.f32 %8186, 2
  %8191 = fcmp fast olt float %8190, -5.000000e-01
  %8192 = call float @dx.op.dot3.f32(i32 55, float %8152, float %8153, float %8154, float %8152, float %8153, float %8154)  ; Dot3(ax,ay,az,bx,by,bz)
  %8193 = call float @dx.op.unary.f32(i32 25, float %8192)  ; Rsqrt(value)
  %8194 = fmul fast float %8193, %8192
  %8195 = fmul fast float %8193, %8152
  %8196 = fmul fast float %8193, %8153
  %8197 = fmul fast float %8193, %8154
  %8198 = fadd fast float %8194, %8168
  %8199 = call float @dx.op.dot3.f32(i32 55, float %8195, float %8196, float %8197, float %8165, float %8166, float %8167)  ; Dot3(ax,ay,az,bx,by,bz)
  %8200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8201 = extractvalue %dx.types.CBufRet.i32 %8200, 1
  %8202 = and i32 %8201, 1
  %8203 = icmp ne i32 %8202, 0
  %8204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8205 = extractvalue %dx.types.CBufRet.f32 %8204, 2
  %8206 = fcmp fast ogt float %8205, 0.000000e+00
  %8207 = and i1 %8203, %8206
  br i1 %8207, label %8208, label %8614, !dx.controlflow.hints !134

; <label>:8208                                    ; preds = %8163
  %8209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8210 = extractvalue %dx.types.CBufRet.f32 %8209, 3
  %8211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8212 = extractvalue %dx.types.CBufRet.f32 %8211, 2
  %8213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8214 = extractvalue %dx.types.CBufRet.f32 %8213, 2
  %8215 = fsub fast float %8212, %8214
  %8216 = and i32 %8201, 2
  %8217 = extractvalue %dx.types.CBufRet.i32 %8200, 0
  %8218 = call i32 @dx.op.binary.i32(i32 40, i32 %8217, i32 3)  ; UMin(a,b)
  %8219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8220 = extractvalue %dx.types.CBufRet.f32 %8219, 0
  %8221 = extractvalue %dx.types.CBufRet.f32 %8219, 1
  %8222 = extractvalue %dx.types.CBufRet.f32 %8213, 0
  %8223 = extractvalue %dx.types.CBufRet.f32 %8213, 1
  %8224 = fsub fast float %8220, %8222
  %8225 = fsub fast float %8221, %8223
  %8226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8227 = extractvalue %dx.types.CBufRet.f32 %8226, 0
  %8228 = fcmp fast ogt float %8227, 0.000000e+00
  %8229 = fsub fast float -0.000000e+00, %8224
  %8230 = fsub fast float -0.000000e+00, %8225
  %8231 = call float @dx.op.dot2.f32(i32 54, float %8195, float %8196, float %8195, float %8196)  ; Dot2(ax,ay,bx,by)
  %8232 = call float @dx.op.dot2.f32(i32 54, float %8195, float %8196, float %8229, float %8230)  ; Dot2(ax,ay,bx,by)
  %8233 = fmul fast float %8232, 2.000000e+00
  %8234 = call float @dx.op.dot2.f32(i32 54, float %8229, float %8230, float %8229, float %8230)  ; Dot2(ax,ay,bx,by)
  %8235 = fmul fast float %8227, %8227
  %8236 = fsub fast float %8234, %8235
  %8237 = fmul fast float %8233, %8233
  %8238 = fmul fast float %8231, 4.000000e+00
  %8239 = fmul fast float %8238, %8236
  %8240 = fsub fast float %8237, %8239
  %8241 = fcmp fast ogt float %8240, 0.000000e+00
  br i1 %8241, label %8242, label %8257

; <label>:8242                                    ; preds = %8208
  %8243 = fcmp fast ogt float %8233, 0.000000e+00
  %8244 = call float @dx.op.unary.f32(i32 24, float %8240)  ; Sqrt(value)
  %8245 = fsub fast float -0.000000e+00, %8244
  %8246 = select i1 %8243, float %8244, float %8245
  %8247 = fadd fast float %8246, %8233
  %8248 = fmul float %8247, -5.000000e-01
  %8249 = fdiv fast float %8248, %8231
  %8250 = call float @dx.op.binary.f32(i32 35, float %8249, float 0.000000e+00)  ; FMax(a,b)
  %8251 = call float @dx.op.binary.f32(i32 36, float %8194, float %8250)  ; FMin(a,b)
  %8252 = fdiv fast float %8236, %8248
  %8253 = call float @dx.op.binary.f32(i32 35, float %8252, float 0.000000e+00)  ; FMax(a,b)
  %8254 = call float @dx.op.binary.f32(i32 36, float %8194, float %8253)  ; FMin(a,b)
  %8255 = call float @dx.op.binary.f32(i32 36, float %8251, float %8254)  ; FMin(a,b)
  %8256 = call float @dx.op.binary.f32(i32 35, float %8251, float %8254)  ; FMax(a,b)
  br label %8257

; <label>:8257                                    ; preds = %8242, %8208
  %8258 = phi float [ %8256, %8242 ], [ -1.000000e+00, %8208 ]
  %8259 = phi float [ %8255, %8242 ], [ -1.000000e+00, %8208 ]
  %8260 = phi i1 [ true, %8242 ], [ false, %8208 ]
  %8261 = and i1 %8228, %8260
  br i1 %8261, label %8262, label %8264

; <label>:8262                                    ; preds = %8257
  %8263 = fcmp fast oeq float %8259, %8258
  br i1 %8263, label %8567, label %8265

; <label>:8264                                    ; preds = %8257
  br i1 %8228, label %8567, label %8265

; <label>:8265                                    ; preds = %8264, %8262
  %8266 = phi float [ %8194, %8264 ], [ %8258, %8262 ]
  %8267 = phi float [ 0.000000e+00, %8264 ], [ %8259, %8262 ]
  %8268 = icmp ne i32 %8216, 0
  %8269 = fmul fast float %8266, %8197
  %8270 = fadd fast float %8269, %8210
  %8271 = fmul fast float %8270, %8266
  %8272 = select i1 %8268, float 0.000000e+00, float %8271
  %8273 = fcmp fast oeq float %8197, 0.000000e+00
  %8274 = fdiv fast float %8215, %8197
  %8275 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8274)  ; FMax(a,b)
  %8276 = select i1 %8273, float %8266, float %8275
  %8277 = call float @dx.op.binary.f32(i32 36, float %8266, float %8276)  ; FMin(a,b)
  %8278 = fcmp fast ogt float %8197, 0.000000e+00
  %8279 = fcmp fast olt float %8215, 0.000000e+00
  br i1 %8278, label %8280, label %8337

; <label>:8280                                    ; preds = %8265
  %8281 = icmp eq i32 %8216, 0
  br i1 %8279, label %8282, label %8326

; <label>:8282                                    ; preds = %8280
  %8283 = select i1 %8281, float %8266, float 0.000000e+00
  %8284 = fsub fast float -0.000000e+00, %8283
  %8285 = call float @dx.op.unary.f32(i32 6, float %8284)  ; FAbs(value)
  %8286 = fmul fast float %8283, %8197
  %8287 = fadd fast float %8286, %8210
  %8288 = fmul fast float %8285, %8287
  %8289 = fsub fast float %8272, %8288
  %8290 = fsub fast float %8266, %8285
  %8291 = select i1 %8281, float %8290, float 0.000000e+00
  %8292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8293 = extractvalue %dx.types.CBufRet.f32 %8292, 0
  %8294 = extractvalue %dx.types.CBufRet.f32 %8292, 1
  %8295 = extractvalue %dx.types.CBufRet.f32 %8292, 2
  %8296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8297 = extractvalue %dx.types.CBufRet.f32 %8296, 0
  %8298 = extractvalue %dx.types.CBufRet.f32 %8296, 1
  %8299 = extractvalue %dx.types.CBufRet.f32 %8296, 2
  %8300 = extractvalue %dx.types.CBufRet.f32 %8296, 3
  %8301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8302 = extractvalue %dx.types.CBufRet.f32 %8301, 3
  %8303 = call float @dx.op.binary.f32(i32 36, float %8289, float %8302)  ; FMin(a,b)
  %8304 = fmul fast float %8300, %8291
  %8305 = call float @dx.op.unary.f32(i32 7, float %8304)  ; Saturate(value)
  %8306 = fsub fast float %8297, %8293
  %8307 = fsub fast float %8298, %8294
  %8308 = fsub fast float %8299, %8295
  %8309 = fmul fast float %8305, %8306
  %8310 = fmul fast float %8305, %8307
  %8311 = fmul fast float %8305, %8308
  %8312 = fadd fast float %8309, %8293
  %8313 = fadd fast float %8310, %8294
  %8314 = fadd fast float %8311, %8295
  %8315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8316 = extractvalue %dx.types.CBufRet.f32 %8315, 0
  %8317 = extractvalue %dx.types.CBufRet.f32 %8315, 1
  %8318 = fadd fast float %8317, %8316
  %8319 = call float @dx.op.unary.f32(i32 7, float %8318)  ; Saturate(value)
  %8320 = extractvalue %dx.types.CBufRet.f32 %8315, 2
  %8321 = extractvalue %dx.types.CBufRet.f32 %8315, 3
  %8322 = fadd fast float %8321, %8320
  %8323 = call float @dx.op.unary.f32(i32 7, float %8322)  ; Saturate(value)
  %8324 = fmul fast float %8319, %8303
  %8325 = fmul fast float %8324, %8323
  br label %8567

; <label>:8326                                    ; preds = %8280
  br i1 %8281, label %8327, label %8348

; <label>:8327                                    ; preds = %8326
  %8328 = call float @dx.op.binary.f32(i32 36, float %8277, float %8267)  ; FMin(a,b)
  %8329 = fsub fast float %8277, %8328
  %8330 = fsub fast float %8329, %8266
  %8331 = call float @dx.op.unary.f32(i32 6, float %8330)  ; FAbs(value)
  %8332 = fadd fast float %8329, %8266
  %8333 = fmul fast float %8332, %8197
  %8334 = fadd fast float %8333, %8210
  %8335 = fmul fast float %8334, %8331
  %8336 = fsub fast float %8272, %8335
  br label %8348

; <label>:8337                                    ; preds = %8265
  br i1 %8279, label %8338, label %8348

; <label>:8338                                    ; preds = %8337
  %8339 = call float @dx.op.binary.f32(i32 35, float %8267, float %8277)  ; FMax(a,b)
  %8340 = icmp eq i32 %8216, 0
  %8341 = select i1 %8340, float %8277, float 0.000000e+00
  %8342 = fsub fast float -0.000000e+00, %8341
  %8343 = call float @dx.op.unary.f32(i32 6, float %8342)  ; FAbs(value)
  %8344 = fmul fast float %8341, %8197
  %8345 = fadd fast float %8344, %8210
  %8346 = fmul fast float %8343, %8345
  %8347 = fsub fast float %8272, %8346
  br label %8348

; <label>:8348                                    ; preds = %8338, %8337, %8327, %8326
  %8349 = phi float [ %8267, %8326 ], [ %8267, %8327 ], [ %8339, %8338 ], [ %8267, %8337 ]
  %8350 = phi float [ 0.000000e+00, %8326 ], [ %8331, %8327 ], [ %8343, %8338 ], [ 0.000000e+00, %8337 ]
  %8351 = phi float [ %8272, %8326 ], [ %8336, %8327 ], [ %8347, %8338 ], [ %8272, %8337 ]
  %8352 = phi float [ %8277, %8326 ], [ %8277, %8327 ], [ %8266, %8338 ], [ %8266, %8337 ]
  %8353 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8353, align 4, !tbaa !121, !noalias !135
  %8354 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8354, align 4, !tbaa !121, !noalias !135
  %8355 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8355, align 4, !tbaa !121, !noalias !135
  %8356 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %8356, align 4, !tbaa !121, !noalias !135
  %8357 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %8357, align 4, !tbaa !121, !noalias !135
  %8358 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %8358, align 4, !tbaa !121, !noalias !135
  %8359 = icmp sgt i32 %8218, 0
  br i1 %8359, label %8360, label %8421

; <label>:8360                                    ; preds = %8348
  br label %8361

; <label>:8361                                    ; preds = %8410, %8360
  %8362 = phi i32 [ %8411, %8410 ], [ 0, %8360 ]
  %8363 = phi i32 [ %8412, %8410 ], [ 0, %8360 ]
  %8364 = add nuw i32 %8363, 171
  %8365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8364)  ; CBufferLoadLegacy(handle,regIndex)
  %8366 = extractvalue %dx.types.CBufRet.f32 %8365, 0
  %8367 = extractvalue %dx.types.CBufRet.f32 %8365, 1
  %8368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8369 = extractvalue %dx.types.CBufRet.f32 %8368, 0
  %8370 = extractvalue %dx.types.CBufRet.f32 %8368, 1
  %8371 = fsub fast float %8366, %8369
  %8372 = fsub fast float %8367, %8370
  %8373 = extractvalue %dx.types.CBufRet.f32 %8365, 2
  %8374 = fsub fast float -0.000000e+00, %8371
  %8375 = fsub fast float -0.000000e+00, %8372
  %8376 = call float @dx.op.dot2.f32(i32 54, float %8195, float %8196, float %8374, float %8375)  ; Dot2(ax,ay,bx,by)
  %8377 = fmul fast float %8376, 2.000000e+00
  %8378 = call float @dx.op.dot2.f32(i32 54, float %8374, float %8375, float %8374, float %8375)  ; Dot2(ax,ay,bx,by)
  %8379 = fmul fast float %8373, %8373
  %8380 = fsub fast float %8378, %8379
  %8381 = fmul fast float %8377, %8377
  %8382 = fmul fast float %8238, %8380
  %8383 = fsub fast float %8381, %8382
  %8384 = fcmp fast ogt float %8383, 0.000000e+00
  br i1 %8384, label %8385, label %8400

; <label>:8385                                    ; preds = %8361
  %8386 = fcmp fast ogt float %8377, 0.000000e+00
  %8387 = call float @dx.op.unary.f32(i32 24, float %8383)  ; Sqrt(value)
  %8388 = fsub fast float -0.000000e+00, %8387
  %8389 = select i1 %8386, float %8387, float %8388
  %8390 = fadd fast float %8389, %8377
  %8391 = fmul float %8390, -5.000000e-01
  %8392 = fdiv fast float %8391, %8231
  %8393 = call float @dx.op.binary.f32(i32 35, float %8392, float 0.000000e+00)  ; FMax(a,b)
  %8394 = call float @dx.op.binary.f32(i32 36, float %8266, float %8393)  ; FMin(a,b)
  %8395 = fdiv fast float %8380, %8391
  %8396 = call float @dx.op.binary.f32(i32 35, float %8395, float 0.000000e+00)  ; FMax(a,b)
  %8397 = call float @dx.op.binary.f32(i32 36, float %8266, float %8396)  ; FMin(a,b)
  %8398 = call float @dx.op.binary.f32(i32 36, float %8394, float %8397)  ; FMin(a,b)
  %8399 = call float @dx.op.binary.f32(i32 35, float %8394, float %8397)  ; FMax(a,b)
  br label %8400

; <label>:8400                                    ; preds = %8385, %8361
  %8401 = phi float [ %8399, %8385 ], [ -1.000000e+00, %8361 ]
  %8402 = phi float [ %8398, %8385 ], [ -1.000000e+00, %8361 ]
  %8403 = phi i1 [ true, %8385 ], [ false, %8361 ]
  br i1 %8403, label %8404, label %8410

; <label>:8404                                    ; preds = %8400
  %8405 = call float @dx.op.binary.f32(i32 35, float %8349, float %8402)  ; FMax(a,b)
  %8406 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8363
  store float %8405, float* %8406, align 4, !tbaa !121, !noalias !135
  %8407 = call float @dx.op.binary.f32(i32 35, float %8349, float %8401)  ; FMax(a,b)
  %8408 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8363
  store float %8407, float* %8408, align 4, !tbaa !121, !noalias !135
  %8409 = add nsw i32 %8362, 1
  br label %8410

; <label>:8410                                    ; preds = %8404, %8400
  %8411 = phi i32 [ %8409, %8404 ], [ %8362, %8400 ]
  %8412 = add nuw nsw i32 %8363, 1
  %8413 = icmp eq i32 %8412, %8218
  br i1 %8413, label %8414, label %8361

; <label>:8414                                    ; preds = %8410
  %8415 = load float, float* %8355, align 4, !tbaa !121, !alias.scope !151, !noalias !154
  %8416 = load float, float* %8354, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  %8417 = load float, float* %8353, align 4, !tbaa !121, !alias.scope !159, !noalias !160
  %8418 = load float, float* %8358, align 4, !tbaa !121, !alias.scope !161, !noalias !164
  %8419 = load float, float* %8357, align 4, !tbaa !121, !alias.scope !167, !noalias !168
  %8420 = load float, float* %8356, align 4, !tbaa !121, !alias.scope !169, !noalias !170
  br label %8421

; <label>:8421                                    ; preds = %8414, %8348
  %8422 = phi float [ -1.000000e+00, %8348 ], [ %8420, %8414 ]
  %8423 = phi float [ -1.000000e+00, %8348 ], [ %8419, %8414 ]
  %8424 = phi float [ -1.000000e+00, %8348 ], [ %8418, %8414 ]
  %8425 = phi float [ -1.000000e+00, %8348 ], [ %8417, %8414 ]
  %8426 = phi float [ -1.000000e+00, %8348 ], [ %8416, %8414 ]
  %8427 = phi float [ -1.000000e+00, %8348 ], [ %8415, %8414 ]
  %8428 = phi i32 [ 0, %8348 ], [ %8411, %8414 ]
  %8429 = call float @dx.op.binary.f32(i32 36, float %8426, float %8427)  ; FMin(a,b)
  %8430 = call float @dx.op.binary.f32(i32 36, float %8425, float %8429)  ; FMin(a,b)
  %8431 = call float @dx.op.binary.f32(i32 35, float %8425, float %8426)  ; FMax(a,b)
  %8432 = call float @dx.op.binary.f32(i32 36, float %8431, float %8427)  ; FMin(a,b)
  %8433 = call float @dx.op.binary.f32(i32 36, float %8425, float %8426)  ; FMin(a,b)
  %8434 = call float @dx.op.binary.f32(i32 35, float %8433, float %8432)  ; FMax(a,b)
  %8435 = call float @dx.op.binary.f32(i32 35, float %8426, float %8427)  ; FMax(a,b)
  %8436 = call float @dx.op.binary.f32(i32 35, float %8425, float %8435)  ; FMax(a,b)
  store float %8430, float* %8353, align 4, !tbaa !121, !alias.scope !159, !noalias !160
  store float %8434, float* %8354, align 4, !tbaa !121, !alias.scope !157, !noalias !158
  store float %8436, float* %8355, align 4, !tbaa !121, !alias.scope !151, !noalias !154
  %8437 = call float @dx.op.binary.f32(i32 36, float %8423, float %8424)  ; FMin(a,b)
  %8438 = call float @dx.op.binary.f32(i32 36, float %8422, float %8437)  ; FMin(a,b)
  %8439 = call float @dx.op.binary.f32(i32 35, float %8422, float %8423)  ; FMax(a,b)
  %8440 = call float @dx.op.binary.f32(i32 36, float %8439, float %8424)  ; FMin(a,b)
  %8441 = call float @dx.op.binary.f32(i32 36, float %8422, float %8423)  ; FMin(a,b)
  %8442 = call float @dx.op.binary.f32(i32 35, float %8441, float %8440)  ; FMax(a,b)
  %8443 = call float @dx.op.binary.f32(i32 35, float %8423, float %8424)  ; FMax(a,b)
  %8444 = call float @dx.op.binary.f32(i32 35, float %8422, float %8443)  ; FMax(a,b)
  store float %8438, float* %8356, align 4, !tbaa !121, !alias.scope !169, !noalias !170
  store float %8442, float* %8357, align 4, !tbaa !121, !alias.scope !167, !noalias !168
  store float %8444, float* %8358, align 4, !tbaa !121, !alias.scope !161, !noalias !164
  %8445 = sub nsw i32 3, %8428
  %8446 = icmp sgt i32 %8445, 2
  br i1 %8446, label %8447, label %8485

; <label>:8447                                    ; preds = %8421
  %8448 = icmp eq i32 %8216, 0
  %8449 = fsub fast float %8266, %8350
  %8450 = select i1 %8448, float %8449, float %8350
  %8451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.f32 %8451, 0
  %8453 = extractvalue %dx.types.CBufRet.f32 %8451, 1
  %8454 = extractvalue %dx.types.CBufRet.f32 %8451, 2
  %8455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8456 = extractvalue %dx.types.CBufRet.f32 %8455, 0
  %8457 = extractvalue %dx.types.CBufRet.f32 %8455, 1
  %8458 = extractvalue %dx.types.CBufRet.f32 %8455, 2
  %8459 = extractvalue %dx.types.CBufRet.f32 %8455, 3
  %8460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8461 = extractvalue %dx.types.CBufRet.f32 %8460, 3
  %8462 = call float @dx.op.binary.f32(i32 36, float %8351, float %8461)  ; FMin(a,b)
  %8463 = fmul fast float %8459, %8450
  %8464 = call float @dx.op.unary.f32(i32 7, float %8463)  ; Saturate(value)
  %8465 = fsub fast float %8456, %8452
  %8466 = fsub fast float %8457, %8453
  %8467 = fsub fast float %8458, %8454
  %8468 = fmul fast float %8464, %8465
  %8469 = fmul fast float %8464, %8466
  %8470 = fmul fast float %8464, %8467
  %8471 = fadd fast float %8468, %8452
  %8472 = fadd fast float %8469, %8453
  %8473 = fadd fast float %8470, %8454
  %8474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8475 = extractvalue %dx.types.CBufRet.f32 %8474, 0
  %8476 = extractvalue %dx.types.CBufRet.f32 %8474, 1
  %8477 = fadd fast float %8476, %8475
  %8478 = call float @dx.op.unary.f32(i32 7, float %8477)  ; Saturate(value)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8474, 2
  %8480 = extractvalue %dx.types.CBufRet.f32 %8474, 3
  %8481 = fadd fast float %8480, %8479
  %8482 = call float @dx.op.unary.f32(i32 7, float %8481)  ; Saturate(value)
  %8483 = fmul fast float %8478, %8462
  %8484 = fmul fast float %8483, %8482
  br label %8567

; <label>:8485                                    ; preds = %8421
  %8486 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8445
  %8487 = load float, float* %8486, align 4, !tbaa !121, !noalias !135
  %8488 = fcmp fast olt float %8487, %8352
  %8489 = icmp sgt i32 %8428, 0
  %8490 = and i1 %8489, %8488
  br i1 %8490, label %8491, label %8528

; <label>:8491                                    ; preds = %8485
  br label %8492

; <label>:8492                                    ; preds = %8521, %8491
  %8493 = phi float [ %8522, %8521 ], [ %8350, %8491 ]
  %8494 = phi float [ %8523, %8521 ], [ %8351, %8491 ]
  %8495 = phi float [ %8503, %8521 ], [ %8487, %8491 ]
  %8496 = phi i32 [ %8500, %8521 ], [ %8445, %8491 ]
  %8497 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8496
  %8498 = load float, float* %8497, align 4, !tbaa !121, !noalias !135
  %8499 = icmp slt i32 %8496, 2
  %8500 = add nsw i32 %8496, 1
  %8501 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8500
  %8502 = load float, float* %8501, align 4, !tbaa !121, !noalias !135
  %8503 = select i1 %8499, float %8502, float %8266
  %8504 = call float @dx.op.binary.f32(i32 36, float %8503, float %8498)  ; FMin(a,b)
  %8505 = call float @dx.op.binary.f32(i32 36, float %8352, float %8504)  ; FMin(a,b)
  %8506 = icmp eq i32 %8216, 0
  %8507 = fadd fast float %8505, %8495
  %8508 = fmul fast float %8507, %8197
  %8509 = fadd fast float %8508, %8210
  br i1 %8506, label %8515, label %8510

; <label>:8510                                    ; preds = %8492
  %8511 = fsub fast float %8505, %8495
  %8512 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8511)  ; FMax(a,b)
  %8513 = fmul fast float %8512, %8509
  %8514 = fadd fast float %8513, %8494
  br label %8521

; <label>:8515                                    ; preds = %8492
  %8516 = fsub fast float %8495, %8505
  %8517 = call float @dx.op.unary.f32(i32 6, float %8516)  ; FAbs(value)
  %8518 = fadd fast float %8517, %8493
  %8519 = fmul fast float %8517, %8509
  %8520 = fsub fast float %8494, %8519
  br label %8521

; <label>:8521                                    ; preds = %8515, %8510
  %8522 = phi float [ %8512, %8510 ], [ %8518, %8515 ]
  %8523 = phi float [ %8514, %8510 ], [ %8520, %8515 ]
  %8524 = fcmp fast olt float %8503, %8352
  %8525 = icmp slt i32 %8500, 3
  %8526 = and i1 %8525, %8524
  br i1 %8526, label %8492, label %8527

; <label>:8527                                    ; preds = %8521
  br label %8528

; <label>:8528                                    ; preds = %8527, %8485
  %8529 = phi float [ %8350, %8485 ], [ %8522, %8527 ]
  %8530 = phi float [ %8351, %8485 ], [ %8523, %8527 ]
  %8531 = fsub fast float %8266, %8529
  %8532 = select i1 %8268, float %8529, float %8531
  %8533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8534 = extractvalue %dx.types.CBufRet.f32 %8533, 0
  %8535 = extractvalue %dx.types.CBufRet.f32 %8533, 1
  %8536 = extractvalue %dx.types.CBufRet.f32 %8533, 2
  %8537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8538 = extractvalue %dx.types.CBufRet.f32 %8537, 0
  %8539 = extractvalue %dx.types.CBufRet.f32 %8537, 1
  %8540 = extractvalue %dx.types.CBufRet.f32 %8537, 2
  %8541 = extractvalue %dx.types.CBufRet.f32 %8537, 3
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 3
  %8544 = call float @dx.op.binary.f32(i32 36, float %8530, float %8543)  ; FMin(a,b)
  %8545 = fmul fast float %8541, %8532
  %8546 = call float @dx.op.unary.f32(i32 7, float %8545)  ; Saturate(value)
  %8547 = fsub fast float %8538, %8534
  %8548 = fsub fast float %8539, %8535
  %8549 = fsub fast float %8540, %8536
  %8550 = fmul fast float %8546, %8547
  %8551 = fmul fast float %8546, %8548
  %8552 = fmul fast float %8546, %8549
  %8553 = fadd fast float %8550, %8534
  %8554 = fadd fast float %8551, %8535
  %8555 = fadd fast float %8552, %8536
  %8556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8557 = extractvalue %dx.types.CBufRet.f32 %8556, 0
  %8558 = extractvalue %dx.types.CBufRet.f32 %8556, 1
  %8559 = fadd fast float %8558, %8557
  %8560 = call float @dx.op.unary.f32(i32 7, float %8559)  ; Saturate(value)
  %8561 = extractvalue %dx.types.CBufRet.f32 %8556, 2
  %8562 = extractvalue %dx.types.CBufRet.f32 %8556, 3
  %8563 = fadd fast float %8562, %8561
  %8564 = call float @dx.op.unary.f32(i32 7, float %8563)  ; Saturate(value)
  %8565 = fmul fast float %8560, %8544
  %8566 = fmul fast float %8565, %8564
  br label %8567

; <label>:8567                                    ; preds = %8528, %8447, %8282, %8264, %8262
  %8568 = phi float [ %8291, %8282 ], [ %8450, %8447 ], [ %8532, %8528 ], [ 0.000000e+00, %8262 ], [ 0.000000e+00, %8264 ]
  %8569 = phi float [ %8325, %8282 ], [ %8484, %8447 ], [ %8566, %8528 ], [ 0.000000e+00, %8262 ], [ 0.000000e+00, %8264 ]
  %8570 = phi float [ %8312, %8282 ], [ %8471, %8447 ], [ %8553, %8528 ], [ 0.000000e+00, %8262 ], [ 0.000000e+00, %8264 ]
  %8571 = phi float [ %8313, %8282 ], [ %8472, %8447 ], [ %8554, %8528 ], [ 0.000000e+00, %8262 ], [ 0.000000e+00, %8264 ]
  %8572 = phi float [ %8314, %8282 ], [ %8473, %8447 ], [ %8555, %8528 ], [ 0.000000e+00, %8262 ], [ 0.000000e+00, %8264 ]
  %8573 = fmul fast float %8205, %8569
  %8574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8575 = extractvalue %dx.types.CBufRet.f32 %8574, 2
  %8576 = fsub fast float %8212, %8575
  %8577 = fcmp fast olt float %8573, -2.000000e+01
  %8578 = call float @dx.op.unary.f32(i32 21, float %8573)  ; Exp(value)
  %8579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8580 = extractvalue %dx.types.CBufRet.f32 %8579, 2
  %8581 = extractvalue %dx.types.CBufRet.f32 %8579, 3
  %8582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8583 = extractvalue %dx.types.CBufRet.f32 %8582, 2
  %8584 = fmul fast float %8581, %8576
  %8585 = call float @dx.op.unary.f32(i32 7, float %8584)  ; Saturate(value)
  %8586 = fsub fast float 1.000000e+00, %8585
  %8587 = fmul fast float %8197, 5.000000e-01
  %8588 = fadd fast float %8587, 5.000000e-01
  %8589 = call float @dx.op.unary.f32(i32 7, float %8588)  ; Saturate(value)
  %8590 = fsub fast float 1.000000e+00, %8589
  %8591 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8586)  ; FMax(a,b)
  %8592 = fdiv fast float %8590, %8591
  %8593 = fsub fast float %8576, %8154
  %8594 = call float @dx.op.unary.f32(i32 6, float %8593)  ; FAbs(value)
  %8595 = fmul fast float %8594, %8580
  %8596 = call float @dx.op.unary.f32(i32 7, float %8592)  ; Saturate(value)
  %8597 = fsub fast float 1.000000e+00, %8595
  %8598 = fmul fast float %8597, %8596
  %8599 = fadd fast float %8598, %8595
  %8600 = fmul fast float %8583, %8576
  %8601 = call float @dx.op.unary.f32(i32 7, float %8600)  ; Saturate(value)
  %8602 = fsub fast float 1.000000e+00, %8599
  %8603 = fmul fast float %8602, %8601
  %8604 = fadd fast float %8603, %8599
  %8605 = call float @dx.op.unary.f32(i32 7, float %8604)  ; Saturate(value)
  %8606 = fadd fast float %8578, -1.000000e+00
  %8607 = select i1 %8577, float -1.000000e+00, float %8606
  %8608 = fmul fast float %8605, %8607
  %8609 = fadd fast float %8608, 1.000000e+00
  %8610 = fsub fast float -0.000000e+00, %8608
  %8611 = fmul fast float %8570, %8610
  %8612 = fmul fast float %8571, %8610
  %8613 = fmul fast float %8572, %8610
  br label %8614

; <label>:8614                                    ; preds = %8567, %8163
  %8615 = phi float [ %8568, %8567 ], [ 0.000000e+00, %8163 ]
  %8616 = phi float [ %8609, %8567 ], [ 1.000000e+00, %8163 ]
  %8617 = phi float [ %8611, %8567 ], [ 0.000000e+00, %8163 ]
  %8618 = phi float [ %8612, %8567 ], [ 0.000000e+00, %8163 ]
  %8619 = phi float [ %8613, %8567 ], [ 0.000000e+00, %8163 ]
  %8620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8621 = extractvalue %dx.types.CBufRet.f32 %8620, 1
  %8622 = fsub fast float 1.000000e+00, %8616
  %8623 = fmul fast float %8622, %8198
  %8624 = fmul fast float %8623, %8621
  %8625 = fsub fast float %8198, %8624
  br i1 %8191, label %8626, label %8655, !dx.controlflow.hints !171

; <label>:8626                                    ; preds = %8614
  %8627 = fmul fast float %8199, %8188
  %8628 = fadd fast float %8627, %8189
  %8629 = call float @dx.op.unary.f32(i32 7, float %8628)  ; Saturate(value)
  %8630 = fmul fast float %8170, %8625
  %8631 = fsub fast float -0.000000e+00, %8630
  %8632 = fmul fast float %8171, %8625
  %8633 = fsub fast float -0.000000e+00, %8632
  %8634 = call float @dx.op.unary.f32(i32 21, float %8631)  ; Exp(value)
  %8635 = call float @dx.op.unary.f32(i32 21, float %8633)  ; Exp(value)
  %8636 = call float @dx.op.binary.f32(i32 35, float %8178, float %8634)  ; FMax(a,b)
  %8637 = call float @dx.op.binary.f32(i32 35, float %8178, float %8635)  ; FMax(a,b)
  %8638 = fsub fast float %8637, %8636
  %8639 = fmul fast float %8638, %8629
  %8640 = fadd fast float %8639, %8636
  %8641 = call float @dx.op.unary.f32(i32 7, float %8640)  ; Saturate(value)
  %8642 = fsub fast float %8175, %8180
  %8643 = fsub fast float %8176, %8181
  %8644 = fsub fast float %8177, %8182
  %8645 = fmul fast float %8629, %8642
  %8646 = fmul fast float %8629, %8643
  %8647 = fmul fast float %8629, %8644
  %8648 = fadd fast float %8645, %8180
  %8649 = fadd fast float %8646, %8181
  %8650 = fadd fast float %8647, %8182
  %8651 = fsub fast float 1.000000e+00, %8641
  %8652 = fmul fast float %8651, %8648
  %8653 = fmul fast float %8651, %8649
  %8654 = fmul fast float %8651, %8650
  br label %8714

; <label>:8655                                    ; preds = %8614
  %8656 = fmul fast float %8625, %8187
  %8657 = call float @dx.op.unary.f32(i32 7, float %8656)  ; Saturate(value)
  %8658 = fsub fast float 2.000000e+00, %8657
  %8659 = fmul fast float %8657, 9.921875e-01
  %8660 = fmul fast float %8659, %8658
  %8661 = fadd fast float %8660, 3.906250e-03
  %8662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8661, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8663 = extractvalue %dx.types.ResRet.f32 %8662, 0
  %8664 = fsub fast float %8657, %8663
  %8665 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8664)  ; FMax(a,b)
  %8666 = fmul fast float %8173, %8154
  %8667 = call float @dx.op.unary.f32(i32 6, float %8666)  ; FAbs(value)
  %8668 = fcmp fast ogt float %8667, 0x3EB0C6F7A0000000
  br i1 %8668, label %8669, label %8675, !dx.controlflow.hints !172

; <label>:8669                                    ; preds = %8655
  %8670 = fmul fast float %8666, 0xBFF7154760000000
  %8671 = call float @dx.op.unary.f32(i32 21, float %8670)  ; Exp(value)
  %8672 = fsub fast float 1.000000e+00, %8671
  %8673 = fdiv fast float %8672, %8666
  %8674 = fmul fast float %8673, %8183
  br label %8675

; <label>:8675                                    ; preds = %8669, %8655
  %8676 = phi float [ %8674, %8669 ], [ %8183, %8655 ]
  %8677 = fadd fast float %8676, %8185
  %8678 = fmul fast float %8677, %8665
  %8679 = fmul fast float %8170, %8678
  %8680 = fsub fast float -0.000000e+00, %8679
  %8681 = fmul fast float %8171, %8678
  %8682 = fsub fast float -0.000000e+00, %8681
  %8683 = fmul fast float %8172, %8678
  %8684 = fsub fast float -0.000000e+00, %8683
  %8685 = call float @dx.op.unary.f32(i32 21, float %8680)  ; Exp(value)
  %8686 = call float @dx.op.unary.f32(i32 21, float %8682)  ; Exp(value)
  %8687 = call float @dx.op.unary.f32(i32 21, float %8684)  ; Exp(value)
  %8688 = fmul fast float %8199, %8199
  %8689 = fadd fast float %8688, 1.000000e+00
  %8690 = fmul fast float %8689, 0x3FAE8EC8A0000000
  %8691 = fmul fast float %8690, %8180
  %8692 = fmul fast float %8690, %8181
  %8693 = fmul fast float %8690, %8182
  %8694 = fmul fast float %8199, %8178
  %8695 = fsub fast float 1.000000e+00, %8694
  %8696 = fmul fast float %8178, %8178
  %8697 = fsub fast float 1.000000e+00, %8696
  %8698 = fmul fast float %8697, 0x3FB45F3060000000
  %8699 = fmul fast float %8695, %8695
  %8700 = fdiv fast float 1.000000e+00, %8699
  %8701 = fmul fast float %8698, %8700
  %8702 = fmul fast float %8701, %8175
  %8703 = fmul fast float %8701, %8176
  %8704 = fmul fast float %8701, %8177
  %8705 = fadd fast float %8702, %8691
  %8706 = fadd fast float %8703, %8692
  %8707 = fadd fast float %8704, %8693
  %8708 = fsub fast float 1.000000e+00, %8685
  %8709 = fsub fast float 1.000000e+00, %8686
  %8710 = fsub fast float 1.000000e+00, %8687
  %8711 = fmul fast float %8705, %8708
  %8712 = fmul fast float %8706, %8709
  %8713 = fmul fast float %8707, %8710
  br label %8714

; <label>:8714                                    ; preds = %8675, %8626
  %8715 = phi float [ %8652, %8626 ], [ %8711, %8675 ]
  %8716 = phi float [ %8653, %8626 ], [ %8712, %8675 ]
  %8717 = phi float [ %8654, %8626 ], [ %8713, %8675 ]
  %8718 = phi float [ %8641, %8626 ], [ %8685, %8675 ]
  %8719 = phi float [ %8641, %8626 ], [ %8686, %8675 ]
  %8720 = phi float [ %8641, %8626 ], [ %8687, %8675 ]
  br i1 %8207, label %8721, label %8919, !dx.controlflow.hints !173

; <label>:8721                                    ; preds = %8714
  %8722 = extractvalue %dx.types.CBufRet.f32 %8620, 0
  %8723 = fmul fast float %8722, %8622
  %8724 = fsub fast float %8617, %8715
  %8725 = fsub fast float %8618, %8716
  %8726 = fsub fast float %8619, %8717
  %8727 = fmul fast float %8723, %8724
  %8728 = fmul fast float %8723, %8725
  %8729 = fmul fast float %8723, %8726
  %8730 = fadd fast float %8727, %8715
  %8731 = fadd fast float %8728, %8716
  %8732 = fadd fast float %8729, %8717
  %8733 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8718)  ; FMax(a,b)
  %8734 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8719)  ; FMax(a,b)
  %8735 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8720)  ; FMax(a,b)
  %8736 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8616)  ; FMax(a,b)
  %8737 = call float @dx.op.binary.f32(i32 35, float %8615, float %8625)  ; FMax(a,b)
  %8738 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8737)  ; FMax(a,b)
  %8739 = fdiv fast float %8615, %8738
  %8740 = call float @dx.op.unary.f32(i32 7, float %8739)  ; Saturate(value)
  %8741 = fdiv fast float %8625, %8738
  %8742 = call float @dx.op.unary.f32(i32 7, float %8741)  ; Saturate(value)
  %8743 = fcmp fast une float %8736, 1.000000e+00
  br i1 %8743, label %8744, label %8757, !dx.controlflow.hints !174

; <label>:8744                                    ; preds = %8721
  %8745 = call float @dx.op.unary.f32(i32 23, float %8736)  ; Log(value)
  %8746 = fmul fast float %8745, 0x3FE62E4300000000
  %8747 = fmul fast float %8617, %8746
  %8748 = fsub fast float -0.000000e+00, %8747
  %8749 = fmul fast float %8618, %8746
  %8750 = fsub fast float -0.000000e+00, %8749
  %8751 = fmul fast float %8619, %8746
  %8752 = fsub fast float -0.000000e+00, %8751
  %8753 = fsub fast float 1.000000e+00, %8736
  %8754 = fdiv fast float %8748, %8753
  %8755 = fdiv fast float %8750, %8753
  %8756 = fdiv fast float %8752, %8753
  br label %8757

; <label>:8757                                    ; preds = %8744, %8721
  %8758 = phi float [ %8754, %8744 ], [ %8617, %8721 ]
  %8759 = phi float [ %8755, %8744 ], [ %8618, %8721 ]
  %8760 = phi float [ %8756, %8744 ], [ %8619, %8721 ]
  %8761 = phi float [ %8746, %8744 ], [ 0.000000e+00, %8721 ]
  %8762 = fcmp fast une float %8733, 1.000000e+00
  br i1 %8762, label %8763, label %8770, !dx.controlflow.hints !175

; <label>:8763                                    ; preds = %8757
  %8764 = call float @dx.op.unary.f32(i32 23, float %8733)  ; Log(value)
  %8765 = fmul fast float %8764, 0x3FE62E4300000000
  %8766 = fmul fast float %8730, %8765
  %8767 = fsub fast float -0.000000e+00, %8766
  %8768 = fsub fast float 1.000000e+00, %8733
  %8769 = fdiv fast float %8767, %8768
  br label %8770

; <label>:8770                                    ; preds = %8763, %8757
  %8771 = phi float [ %8769, %8763 ], [ %8730, %8757 ]
  %8772 = phi float [ %8765, %8763 ], [ 0.000000e+00, %8757 ]
  %8773 = fcmp fast une float %8734, 1.000000e+00
  br i1 %8773, label %8774, label %8781, !dx.controlflow.hints !175

; <label>:8774                                    ; preds = %8770
  %8775 = call float @dx.op.unary.f32(i32 23, float %8734)  ; Log(value)
  %8776 = fmul fast float %8775, 0x3FE62E4300000000
  %8777 = fmul fast float %8731, %8776
  %8778 = fsub fast float -0.000000e+00, %8777
  %8779 = fsub fast float 1.000000e+00, %8734
  %8780 = fdiv fast float %8778, %8779
  br label %8781

; <label>:8781                                    ; preds = %8774, %8770
  %8782 = phi float [ %8780, %8774 ], [ %8731, %8770 ]
  %8783 = phi float [ %8776, %8774 ], [ 0.000000e+00, %8770 ]
  %8784 = fcmp fast une float %8735, 1.000000e+00
  br i1 %8784, label %8785, label %8792, !dx.controlflow.hints !175

; <label>:8785                                    ; preds = %8781
  %8786 = call float @dx.op.unary.f32(i32 23, float %8735)  ; Log(value)
  %8787 = fmul fast float %8786, 0x3FE62E4300000000
  %8788 = fmul fast float %8732, %8787
  %8789 = fsub fast float -0.000000e+00, %8788
  %8790 = fsub fast float 1.000000e+00, %8735
  %8791 = fdiv fast float %8789, %8790
  br label %8792

; <label>:8792                                    ; preds = %8785, %8781
  %8793 = phi float [ %8791, %8785 ], [ %8732, %8781 ]
  %8794 = phi float [ %8787, %8785 ], [ 0.000000e+00, %8781 ]
  %8795 = fmul fast float %8758, %8742
  %8796 = fmul fast float %8759, %8742
  %8797 = fmul fast float %8760, %8742
  %8798 = fmul fast float %8761, %8742
  %8799 = fmul fast float %8771, %8740
  %8800 = fmul fast float %8782, %8740
  %8801 = fmul fast float %8793, %8740
  %8802 = fmul fast float %8772, %8740
  %8803 = fmul fast float %8783, %8740
  %8804 = fmul fast float %8794, %8740
  %8805 = fadd fast float %8799, %8795
  %8806 = fadd fast float %8800, %8796
  %8807 = fadd fast float %8801, %8797
  %8808 = fadd fast float %8802, %8798
  %8809 = fadd fast float %8803, %8798
  %8810 = fadd fast float %8804, %8798
  %8811 = fcmp fast une float %8808, 0.000000e+00
  br i1 %8811, label %8812, label %8819, !dx.controlflow.hints !176

; <label>:8812                                    ; preds = %8792
  %8813 = fmul fast float %8808, 0x3FF7154760000000
  %8814 = call float @dx.op.unary.f32(i32 21, float %8813)  ; Exp(value)
  %8815 = fsub fast float 1.000000e+00, %8814
  %8816 = fmul fast float %8805, %8815
  %8817 = fsub fast float -0.000000e+00, %8816
  %8818 = fdiv fast float %8817, %8808
  br label %8819

; <label>:8819                                    ; preds = %8812, %8792
  %8820 = phi float [ %8814, %8812 ], [ 1.000000e+00, %8792 ]
  %8821 = phi float [ %8818, %8812 ], [ %8805, %8792 ]
  %8822 = fcmp fast une float %8809, 0.000000e+00
  br i1 %8822, label %8823, label %8830, !dx.controlflow.hints !176

; <label>:8823                                    ; preds = %8819
  %8824 = fmul fast float %8809, 0x3FF7154760000000
  %8825 = call float @dx.op.unary.f32(i32 21, float %8824)  ; Exp(value)
  %8826 = fsub fast float 1.000000e+00, %8825
  %8827 = fmul fast float %8806, %8826
  %8828 = fsub fast float -0.000000e+00, %8827
  %8829 = fdiv fast float %8828, %8809
  br label %8830

; <label>:8830                                    ; preds = %8823, %8819
  %8831 = phi float [ %8825, %8823 ], [ 1.000000e+00, %8819 ]
  %8832 = phi float [ %8829, %8823 ], [ %8806, %8819 ]
  %8833 = fcmp fast une float %8810, 0.000000e+00
  br i1 %8833, label %8834, label %8841, !dx.controlflow.hints !176

; <label>:8834                                    ; preds = %8830
  %8835 = fmul fast float %8810, 0x3FF7154760000000
  %8836 = call float @dx.op.unary.f32(i32 21, float %8835)  ; Exp(value)
  %8837 = fsub fast float 1.000000e+00, %8836
  %8838 = fmul fast float %8807, %8837
  %8839 = fsub fast float -0.000000e+00, %8838
  %8840 = fdiv fast float %8839, %8810
  br label %8841

; <label>:8841                                    ; preds = %8834, %8830
  %8842 = phi float [ %8836, %8834 ], [ 1.000000e+00, %8830 ]
  %8843 = phi float [ %8840, %8834 ], [ %8807, %8830 ]
  %8844 = fcmp fast ogt float %8740, %8742
  br i1 %8844, label %8845, label %8865

; <label>:8845                                    ; preds = %8841
  %8846 = fsub fast float 1.000000e+00, %8742
  %8847 = fmul fast float %8758, %8846
  %8848 = fmul fast float %8759, %8846
  %8849 = fmul fast float %8760, %8846
  %8850 = fmul fast float %8761, %8846
  %8851 = fcmp fast une float %8850, 0.000000e+00
  br i1 %8851, label %8852, label %8903, !dx.controlflow.hints !177

; <label>:8852                                    ; preds = %8845
  %8853 = fmul fast float %8850, 0x3FF7154760000000
  %8854 = call float @dx.op.unary.f32(i32 21, float %8853)  ; Exp(value)
  %8855 = fsub fast float 1.000000e+00, %8854
  %8856 = fmul fast float %8847, %8855
  %8857 = fsub fast float -0.000000e+00, %8856
  %8858 = fmul fast float %8848, %8855
  %8859 = fsub fast float -0.000000e+00, %8858
  %8860 = fmul fast float %8849, %8855
  %8861 = fsub fast float -0.000000e+00, %8860
  %8862 = fdiv fast float %8857, %8850
  %8863 = fdiv fast float %8859, %8850
  %8864 = fdiv fast float %8861, %8850
  br label %8903

; <label>:8865                                    ; preds = %8841
  %8866 = fsub fast float 1.000000e+00, %8740
  %8867 = fmul fast float %8771, %8866
  %8868 = fmul fast float %8782, %8866
  %8869 = fmul fast float %8793, %8866
  %8870 = fmul fast float %8772, %8866
  %8871 = fmul fast float %8783, %8866
  %8872 = fmul fast float %8794, %8866
  %8873 = fcmp fast une float %8870, 0.000000e+00
  br i1 %8873, label %8874, label %8881, !dx.controlflow.hints !176

; <label>:8874                                    ; preds = %8865
  %8875 = fmul fast float %8870, 0x3FF7154760000000
  %8876 = call float @dx.op.unary.f32(i32 21, float %8875)  ; Exp(value)
  %8877 = fsub fast float 1.000000e+00, %8876
  %8878 = fmul fast float %8867, %8877
  %8879 = fsub fast float -0.000000e+00, %8878
  %8880 = fdiv fast float %8879, %8870
  br label %8881

; <label>:8881                                    ; preds = %8874, %8865
  %8882 = phi float [ %8880, %8874 ], [ %8867, %8865 ]
  %8883 = phi float [ %8876, %8874 ], [ 1.000000e+00, %8865 ]
  %8884 = fcmp fast une float %8871, 0.000000e+00
  br i1 %8884, label %8885, label %8892, !dx.controlflow.hints !176

; <label>:8885                                    ; preds = %8881
  %8886 = fmul fast float %8871, 0x3FF7154760000000
  %8887 = call float @dx.op.unary.f32(i32 21, float %8886)  ; Exp(value)
  %8888 = fsub fast float 1.000000e+00, %8887
  %8889 = fmul fast float %8868, %8888
  %8890 = fsub fast float -0.000000e+00, %8889
  %8891 = fdiv fast float %8890, %8871
  br label %8892

; <label>:8892                                    ; preds = %8885, %8881
  %8893 = phi float [ %8891, %8885 ], [ %8868, %8881 ]
  %8894 = phi float [ %8887, %8885 ], [ 1.000000e+00, %8881 ]
  %8895 = fcmp fast une float %8872, 0.000000e+00
  br i1 %8895, label %8896, label %8903, !dx.controlflow.hints !176

; <label>:8896                                    ; preds = %8892
  %8897 = fmul fast float %8872, 0x3FF7154760000000
  %8898 = call float @dx.op.unary.f32(i32 21, float %8897)  ; Exp(value)
  %8899 = fsub fast float 1.000000e+00, %8898
  %8900 = fmul fast float %8869, %8899
  %8901 = fsub fast float -0.000000e+00, %8900
  %8902 = fdiv fast float %8901, %8872
  br label %8903

; <label>:8903                                    ; preds = %8896, %8892, %8852, %8845
  %8904 = phi float [ %8902, %8896 ], [ %8864, %8852 ], [ %8849, %8845 ], [ %8869, %8892 ]
  %8905 = phi float [ %8893, %8896 ], [ %8863, %8852 ], [ %8848, %8845 ], [ %8893, %8892 ]
  %8906 = phi float [ %8882, %8896 ], [ %8862, %8852 ], [ %8847, %8845 ], [ %8882, %8892 ]
  %8907 = phi float [ %8898, %8896 ], [ %8854, %8852 ], [ 1.000000e+00, %8845 ], [ 1.000000e+00, %8892 ]
  %8908 = phi float [ %8894, %8896 ], [ %8854, %8852 ], [ 1.000000e+00, %8845 ], [ %8894, %8892 ]
  %8909 = phi float [ %8883, %8896 ], [ %8854, %8852 ], [ 1.000000e+00, %8845 ], [ %8883, %8892 ]
  %8910 = fmul fast float %8909, %8821
  %8911 = fmul fast float %8908, %8832
  %8912 = fmul fast float %8907, %8843
  %8913 = fadd fast float %8910, %8906
  %8914 = fadd fast float %8911, %8905
  %8915 = fadd fast float %8912, %8904
  %8916 = fmul fast float %8909, %8820
  %8917 = fmul fast float %8908, %8831
  %8918 = fmul fast float %8907, %8842
  br label %8919

; <label>:8919                                    ; preds = %8903, %8714
  %8920 = phi float [ %8918, %8903 ], [ %8720, %8714 ]
  %8921 = phi float [ %8917, %8903 ], [ %8719, %8714 ]
  %8922 = phi float [ %8916, %8903 ], [ %8718, %8714 ]
  %8923 = phi float [ %8915, %8903 ], [ %8717, %8714 ]
  %8924 = phi float [ %8914, %8903 ], [ %8716, %8714 ]
  %8925 = phi float [ %8913, %8903 ], [ %8715, %8714 ]
  %8926 = fmul fast float %8925, %7881
  %8927 = fmul fast float %8924, %7881
  %8928 = fmul fast float %8923, %7881
  %8929 = fmul fast float %8922, %8162
  %8930 = call float @dx.op.dot3.f32(i32 55, float %8922, float %8921, float %8920, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8931 = call float @dx.op.dot3.f32(i32 55, float %8926, float %8927, float %8928, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8932 = select i1 %261, float %8930, float %8922
  %8933 = select i1 %261, float %8930, float %8921
  %8934 = select i1 %261, float 1.000000e+00, float %8920
  %8935 = select i1 %261, float %8931, float %8926
  %8936 = select i1 %261, float 0.000000e+00, float %8927
  %8937 = select i1 %261, float 0.000000e+00, float %8928
  %8938 = fmul fast float %8932, %8156
  %8939 = fmul fast float %8933, %8157
  %8940 = fmul fast float %8934, %8158
  %8941 = fadd fast float %8938, %8935
  %8942 = fadd fast float %8939, %8936
  %8943 = fadd fast float %8937, %8940
  %8944 = fmul fast float %8932, %8159
  %8945 = fmul fast float %8933, %8160
  %8946 = fmul fast float %8934, %8161
  %8947 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8948 = extractvalue %dx.types.CBufRet.i32 %8947, 0
  %8949 = icmp eq i32 %8948, 0
  br i1 %8949, label %9317, label %8950, !dx.controlflow.hints !178

; <label>:8950                                    ; preds = %8919
  %8951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8952 = extractvalue %dx.types.CBufRet.f32 %8951, 2
  %8953 = extractvalue %dx.types.CBufRet.f32 %8951, 3
  %8954 = fmul fast float %8952, %104
  %8955 = fmul fast float %8953, %105
  %8956 = fmul fast float %8954, 2.000000e+00
  %8957 = fmul fast float %8955, 2.000000e+00
  %8958 = fsub fast float 1.000000e+00, %8956
  %8959 = fsub fast float 1.000000e+00, %8957
  %8960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8961 = extractvalue %dx.types.CBufRet.f32 %8960, 0
  %8962 = extractvalue %dx.types.CBufRet.f32 %8960, 1
  %8963 = extractvalue %dx.types.CBufRet.f32 %8960, 2
  %8964 = fmul fast float %8958, %8961
  %8965 = fmul fast float %8958, %8962
  %8966 = fmul fast float %8958, %8963
  %8967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8968 = extractvalue %dx.types.CBufRet.f32 %8967, 0
  %8969 = extractvalue %dx.types.CBufRet.f32 %8967, 1
  %8970 = extractvalue %dx.types.CBufRet.f32 %8967, 2
  %8971 = fmul fast float %8959, %8968
  %8972 = fmul fast float %8959, %8969
  %8973 = fmul fast float %8959, %8970
  %8974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8975 = extractvalue %dx.types.CBufRet.f32 %8974, 0
  %8976 = extractvalue %dx.types.CBufRet.f32 %8974, 1
  %8977 = extractvalue %dx.types.CBufRet.f32 %8974, 2
  %8978 = fadd fast float %8971, %8975
  %8979 = fadd fast float %8978, %8964
  %8980 = fadd fast float %8972, %8976
  %8981 = fadd fast float %8980, %8965
  %8982 = fadd fast float %8973, %8977
  %8983 = fadd fast float %8982, %8966
  %8984 = fmul fast float %8979, %8155
  %8985 = fmul fast float %8981, %8155
  %8986 = fmul fast float %8983, %8155
  %8987 = fmul fast float %8984, %8984
  %8988 = fmul fast float %8985, %8985
  %8989 = fadd fast float %8987, %8988
  %8990 = fmul fast float %8986, %8986
  %8991 = fadd fast float %8989, %8990
  %8992 = call float @dx.op.unary.f32(i32 24, float %8991)  ; Sqrt(value)
  %8993 = extractvalue %dx.types.CBufRet.f32 %7882, 0
  %8994 = fsub fast float %8992, %8993
  %8995 = extractvalue %dx.types.CBufRet.f32 %7882, 2
  %8996 = fmul fast float %8994, %8995
  %8997 = call float @dx.op.unary.f32(i32 7, float %8996)  ; Saturate(value)
  %8998 = fadd fast float %8997, -5.000000e-01
  %8999 = fmul fast float %8998, 2.000000e+00
  %9000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9001 = extractvalue %dx.types.CBufRet.f32 %9000, 2
  %9002 = call float @dx.op.binary.f32(i32 36, float %9001, float %8999)  ; FMin(a,b)
  %9003 = fsub fast float -0.000000e+00, %9001
  %9004 = fcmp fast ogt float %9002, %9003
  br i1 %9004, label %9005, label %9317, !dx.controlflow.hints !179

; <label>:9005                                    ; preds = %8950
  %9006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9007 = extractvalue %dx.types.CBufRet.f32 %9006, 3
  %9008 = fcmp fast ogt float %9007, 0.000000e+00
  br i1 %9008, label %9009, label %9084, !dx.controlflow.hints !180

; <label>:9009                                    ; preds = %9005
  %9010 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9011 = extractvalue %dx.types.Dimensions %9010, 0
  %9012 = sitofp i32 %9011 to float
  %9013 = extractvalue %dx.types.Dimensions %9010, 1
  %9014 = sitofp i32 %9013 to float
  %9015 = fmul fast float %8954, %9012
  %9016 = fmul fast float %8955, %9014
  %9017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9018 = extractvalue %dx.types.CBufRet.f32 %9017, 1
  %9019 = fsub fast float -0.000000e+00, %9018
  %9020 = fptoui float %9019 to i32
  %9021 = fptoui float %9015 to i32
  %9022 = fptoui float %9016 to i32
  %9023 = and i32 %9020, 31
  %9024 = lshr i32 %9021, %9023
  %9025 = lshr i32 %9022, %9023
  %9026 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9020, i32 %9024, i32 %9025, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9027 = extractvalue %dx.types.ResRet.f32 %9026, 0
  %9028 = fcmp fast olt float %9027, -1.000000e+00
  %9029 = fcmp fast ogt float %9027, -1.000000e+00
  %9030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9031 = extractvalue %dx.types.CBufRet.f32 %9030, 1
  %9032 = select i1 %9029, float %9031, float 1.000000e+00
  %9033 = fadd fast float %9027, 1.000000e+00
  %9034 = fmul fast float %9032, %9033
  %9035 = call float @dx.op.unary.f32(i32 6, float %9034)  ; FAbs(value)
  %9036 = extractvalue %dx.types.CBufRet.f32 %9030, 3
  %9037 = fcmp fast oge float %9035, %9036
  %9038 = select i1 %9037, float 0x4197782600000000, float %9035
  %9039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9040 = extractvalue %dx.types.CBufRet.f32 %9039, 0
  %9041 = extractvalue %dx.types.CBufRet.f32 %9039, 1
  %9042 = extractvalue %dx.types.CBufRet.f32 %9039, 2
  %9043 = select i1 %9028, float %9040, float %8961
  %9044 = select i1 %9028, float %9041, float %8962
  %9045 = select i1 %9028, float %9042, float %8963
  %9046 = fmul fast float %9043, %8958
  %9047 = fmul fast float %9044, %8958
  %9048 = fmul fast float %9045, %8958
  %9049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9050 = extractvalue %dx.types.CBufRet.f32 %9049, 0
  %9051 = extractvalue %dx.types.CBufRet.f32 %9049, 1
  %9052 = extractvalue %dx.types.CBufRet.f32 %9049, 2
  %9053 = select i1 %9028, float %9050, float %8968
  %9054 = select i1 %9028, float %9051, float %8969
  %9055 = select i1 %9028, float %9052, float %8970
  %9056 = fmul fast float %9053, %8959
  %9057 = fmul fast float %9054, %8959
  %9058 = fmul fast float %9055, %8959
  %9059 = fadd fast float %9056, %9046
  %9060 = fadd fast float %9057, %9047
  %9061 = fadd fast float %9058, %9048
  %9062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9063 = extractvalue %dx.types.CBufRet.f32 %9062, 0
  %9064 = extractvalue %dx.types.CBufRet.f32 %9062, 1
  %9065 = extractvalue %dx.types.CBufRet.f32 %9062, 2
  %9066 = select i1 %9028, float %9063, float %8975
  %9067 = select i1 %9028, float %9064, float %8976
  %9068 = select i1 %9028, float %9065, float %8977
  %9069 = fadd fast float %9059, %9066
  %9070 = fadd fast float %9060, %9067
  %9071 = fadd fast float %9061, %9068
  %9072 = fmul fast float %9069, %9038
  %9073 = fmul fast float %9070, %9038
  %9074 = fmul fast float %9071, %9038
  %9075 = fmul fast float %9072, %9072
  %9076 = fmul fast float %9073, %9073
  %9077 = fadd fast float %9075, %9076
  %9078 = fmul fast float %9074, %9074
  %9079 = fadd fast float %9077, %9078
  %9080 = call float @dx.op.unary.f32(i32 24, float %9079)  ; Sqrt(value)
  %9081 = fsub fast float %9080, %8993
  %9082 = fmul fast float %9081, %8995
  %9083 = call float @dx.op.unary.f32(i32 7, float %9082)  ; Saturate(value)
  br label %9084

; <label>:9084                                    ; preds = %9009, %9005
  %9085 = phi float [ %9083, %9009 ], [ 1.000000e+00, %9005 ]
  %9086 = fmul fast float %9002, 5.000000e-01
  %9087 = fadd fast float %9086, 5.000000e-01
  %9088 = call float @dx.op.unary.f32(i32 22, float %9087)  ; Frc(value)
  %9089 = call float @dx.op.unary.f32(i32 27, float %9088)  ; Round_ni(value)
  %9090 = call float @dx.op.unary.f32(i32 22, float %9088)  ; Frc(value)
  %9091 = fmul fast float %9090, 2.000000e+00
  %9092 = fadd fast float %9091, -1.000000e+00
  %9093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %8954, float %8955, float %9089, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9094 = extractvalue %dx.types.ResRet.f32 %9093, 0
  %9095 = extractvalue %dx.types.ResRet.f32 %9093, 1
  %9096 = extractvalue %dx.types.ResRet.f32 %9093, 2
  %9097 = extractvalue %dx.types.ResRet.f32 %9093, 3
  %9098 = fadd fast float %9094, -5.000000e-01
  %9099 = fadd fast float %9096, -5.000000e-01
  %9100 = fmul fast float %9098, 0xBFD5555560000000
  %9101 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9099, float %9100)  ; FMad(a,b,c)
  %9102 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9095, float 0.000000e+00)  ; FMad(a,b,c)
  %9103 = fadd fast float %9102, %9097
  %9104 = fmul fast float %9098, -7.500000e-01
  %9105 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9099, float %9104)  ; FMad(a,b,c)
  %9106 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9095, float 0.000000e+00)  ; FMad(a,b,c)
  %9107 = fadd fast float %9106, %9097
  %9108 = call float @dx.op.binary.f32(i32 35, float %9101, float -1.000000e+00)  ; FMax(a,b)
  %9109 = call float @dx.op.binary.f32(i32 35, float %9103, float -1.000000e+00)  ; FMax(a,b)
  %9110 = call float @dx.op.binary.f32(i32 35, float %9105, float -1.000000e+00)  ; FMax(a,b)
  %9111 = call float @dx.op.binary.f32(i32 35, float %9107, float -1.000000e+00)  ; FMax(a,b)
  %9112 = call float @dx.op.binary.f32(i32 36, float %9108, float 1.000000e+00)  ; FMin(a,b)
  %9113 = call float @dx.op.binary.f32(i32 36, float %9109, float 1.000000e+00)  ; FMin(a,b)
  %9114 = call float @dx.op.binary.f32(i32 36, float %9110, float 1.000000e+00)  ; FMin(a,b)
  %9115 = call float @dx.op.binary.f32(i32 36, float %9111, float 1.000000e+00)  ; FMin(a,b)
  %9116 = fcmp fast olt float %9112, 0x3FEFFF8020000000
  br i1 %9116, label %9117, label %9232, !dx.controlflow.hints !181

; <label>:9117                                    ; preds = %9084
  %9118 = extractvalue %dx.types.CBufRet.f32 %9000, 3
  %9119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9120 = extractvalue %dx.types.CBufRet.f32 %9119, 0
  %9121 = extractvalue %dx.types.CBufRet.f32 %9119, 1
  %9122 = extractvalue %dx.types.CBufRet.f32 %9119, 2
  %9123 = extractvalue %dx.types.CBufRet.f32 %9119, 3
  %9124 = fsub fast float %9120, %9112
  %9125 = fsub fast float %9121, %9113
  %9126 = fsub fast float %9122, %9114
  %9127 = fsub fast float %9123, %9115
  %9128 = fmul fast float %9124, %9118
  %9129 = fmul fast float %9125, %9118
  %9130 = fmul fast float %9126, %9118
  %9131 = fmul fast float %9127, %9118
  %9132 = fadd fast float %9128, %9112
  %9133 = fadd fast float %9129, %9113
  %9134 = fsub fast float -0.000000e+00, %9133
  %9135 = fadd fast float %9130, %9114
  %9136 = fadd fast float %9131, %9115
  %9137 = fmul fast float %9132, %9132
  %9138 = fsub fast float %9133, %9137
  %9139 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9138)  ; FMax(a,b)
  %9140 = fdiv fast float 1.000000e+00, %9139
  %9141 = fmul fast float %9133, %9132
  %9142 = fsub fast float %9135, %9141
  %9143 = fsub fast float %9092, %9132
  %9144 = fmul fast float %9092, %9092
  %9145 = fsub fast float %9144, %9133
  %9146 = fmul fast float %9143, %9140
  %9147 = fmul fast float %9146, %9142
  %9148 = fsub fast float %9145, %9147
  %9149 = fmul fast float %9133, %9133
  %9150 = fsub fast float %9136, %9149
  %9151 = fmul fast float %9142, %9142
  %9152 = fmul fast float %9151, %9140
  %9153 = fsub fast float %9150, %9152
  %9154 = fdiv fast float %9148, %9153
  %9155 = fmul fast float %9142, %9154
  %9156 = fsub fast float %9143, %9155
  %9157 = fmul fast float %9156, %9140
  %9158 = fmul fast float %9157, %9132
  %9159 = fsub fast float 1.000000e+00, %9158
  %9160 = fmul fast float %9133, %9154
  %9161 = fsub fast float %9159, %9160
  %9162 = fmul fast float %9157, %9157
  %9163 = fmul fast float %9154, 4.000000e+00
  %9164 = fmul fast float %9163, %9161
  %9165 = fsub fast float %9162, %9164
  %9166 = call float @dx.op.unary.f32(i32 24, float %9165)  ; Sqrt(value)
  %9167 = fcmp fast oge float %9157, 0.000000e+00
  %9168 = fsub fast float -0.000000e+00, %9166
  %9169 = select i1 %9167, float %9168, float %9166
  %9170 = fsub fast float %9169, %9157
  %9171 = fdiv fast float %9170, %9154
  %9172 = fdiv fast float %9161, %9170
  %9173 = fmul fast float %9171, 5.000000e-01
  %9174 = fmul fast float %9172, 2.000000e+00
  %9175 = select i1 %9167, float %9173, float %9174
  %9176 = select i1 %9167, float %9174, float %9173
  %9177 = call float @dx.op.binary.f32(i32 35, float %9175, float %9176)  ; FMax(a,b)
  %9178 = call float @dx.op.binary.f32(i32 36, float %9175, float %9176)  ; FMin(a,b)
  %9179 = fcmp fast ogt float %9092, %9178
  br i1 %9179, label %9180, label %9190

; <label>:9180                                    ; preds = %9117
  %9181 = fsub fast float %9092, %9178
  %9182 = fsub fast float %9177, %9178
  %9183 = fmul fast float %9181, %9182
  %9184 = fmul fast float %9177, %9092
  %9185 = fadd fast float %9177, %9092
  %9186 = fmul fast float %9185, %9132
  %9187 = fadd fast float %9184, %9133
  %9188 = fsub fast float %9187, %9186
  %9189 = fdiv fast float %9188, %9183
  br label %9190

; <label>:9190                                    ; preds = %9180, %9117
  %9191 = phi float [ %9189, %9180 ], [ 0.000000e+00, %9117 ]
  %9192 = fcmp fast ogt float %9092, %9177
  %9193 = fsub fast float %9092, %9177
  br i1 %9192, label %9194, label %9204

; <label>:9194                                    ; preds = %9190
  %9195 = fsub fast float %9177, %9178
  %9196 = fmul fast float %9195, %9193
  %9197 = fmul fast float %9178, %9092
  %9198 = fadd fast float %9178, %9092
  %9199 = fmul fast float %9198, %9132
  %9200 = fsub fast float %9134, %9197
  %9201 = fadd fast float %9200, %9199
  %9202 = fdiv fast float %9201, %9196
  %9203 = fadd fast float %9202, %9191
  br label %9204

; <label>:9204                                    ; preds = %9194, %9190
  %9205 = phi float [ %9203, %9194 ], [ %9191, %9190 ]
  %9206 = fsub fast float %9092, %9178
  %9207 = fmul fast float %9206, %9193
  %9208 = fmul fast float %9178, %9177
  %9209 = fadd fast float %9178, %9177
  %9210 = fmul fast float %9209, %9132
  %9211 = fadd fast float %9208, %9133
  %9212 = fsub fast float %9211, %9210
  %9213 = fdiv fast float %9212, %9207
  %9214 = call float @dx.op.unary.f32(i32 7, float %9205)  ; Saturate(value)
  %9215 = fcmp fast oeq float %7883, 0.000000e+00
  %9216 = extractvalue %dx.types.CBufRet.f32 %9000, 0
  %9217 = fcmp fast oeq float %9216, 0.000000e+00
  %9218 = or i1 %9215, %9217
  %9219 = fmul fast float %9216, 2.000000e+00
  %9220 = fadd fast float %9001, %9002
  %9221 = fdiv fast float %9220, %9219
  %9222 = call float @dx.op.unary.f32(i32 7, float %9221)  ; Saturate(value)
  %9223 = fmul fast float %9222, 2.000000e+00
  %9224 = fsub fast float 3.000000e+00, %9223
  %9225 = fmul fast float %9222, %9222
  %9226 = fmul fast float %9225, %9224
  %9227 = select i1 %9218, float 1.000000e+00, float %9226
  %9228 = fmul fast float %9213, %7883
  %9229 = fadd fast float %9214, %9228
  %9230 = call float @dx.op.unary.f32(i32 7, float %9229)  ; Saturate(value)
  %9231 = fmul fast float %9227, %9230
  br label %9232

; <label>:9232                                    ; preds = %9204, %9084
  %9233 = phi float [ %9231, %9204 ], [ 0.000000e+00, %9084 ]
  %9234 = fsub fast float 1.000000e+00, %9233
  %9235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %8954, float %8955, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9236 = extractvalue %dx.types.ResRet.f32 %9235, 0
  %9237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9238 = extractvalue %dx.types.CBufRet.i32 %9237, 2
  %9239 = icmp eq i32 %9238, 0
  br i1 %9239, label %9245, label %9240

; <label>:9240                                    ; preds = %9232
  %9241 = call float @dx.op.unary.f32(i32 7, float %9233)  ; Saturate(value)
  %9242 = fadd fast float %9236, -1.000000e+00
  %9243 = fmul fast float %9241, %9242
  %9244 = fadd fast float %9243, 1.000000e+00
  br label %9245

; <label>:9245                                    ; preds = %9240, %9232
  %9246 = phi float [ %9244, %9240 ], [ %9234, %9232 ]
  br i1 %9008, label %9247, label %9265

; <label>:9247                                    ; preds = %9245
  %9248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9249 = extractvalue %dx.types.CBufRet.f32 %9248, 1
  %9250 = fsub fast float %9085, %9249
  %9251 = call float @dx.op.unary.f32(i32 7, float %9250)  ; Saturate(value)
  %9252 = fsub fast float %9085, %9007
  %9253 = call float @dx.op.unary.f32(i32 7, float %9252)  ; Saturate(value)
  %9254 = fsub fast float %9251, %9253
  %9255 = fsub fast float %9087, %9253
  %9256 = fdiv fast float %9255, %9254
  %9257 = call float @dx.op.unary.f32(i32 7, float %9256)  ; Saturate(value)
  %9258 = fmul fast float %9257, 2.000000e+00
  %9259 = fsub fast float 3.000000e+00, %9258
  %9260 = fsub fast float %9236, %9246
  %9261 = fmul fast float %9257, %9257
  %9262 = fmul fast float %9261, %9260
  %9263 = fmul fast float %9262, %9259
  %9264 = fadd fast float %9263, %9246
  br label %9265

; <label>:9265                                    ; preds = %9247, %9245
  %9266 = phi float [ %9264, %9247 ], [ %9246, %9245 ]
  %9267 = call float @dx.op.binary.f32(i32 35, float %9236, float %9266)  ; FMax(a,b)
  %9268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9269 = extractvalue %dx.types.CBufRet.i32 %9268, 2
  %9270 = and i32 %9269, 1
  %9271 = icmp eq i32 %9270, 0
  %9272 = fcmp fast une float %9267, 1.000000e+00
  %9273 = and i1 %9272, %9271
  br i1 %9273, label %9274, label %9293

; <label>:9274                                    ; preds = %9265
  %9275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %8954, float %8955, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9276 = extractvalue %dx.types.ResRet.f32 %9275, 0
  %9277 = extractvalue %dx.types.ResRet.f32 %9275, 1
  %9278 = extractvalue %dx.types.ResRet.f32 %9275, 2
  %9279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9280 = extractvalue %dx.types.CBufRet.f32 %9279, 1
  %9281 = fmul fast float %9280, %9276
  %9282 = fmul fast float %9280, %9277
  %9283 = fmul fast float %9280, %9278
  %9284 = fcmp fast ogt float %9236, 0x3FEFFF2E40000000
  %9285 = fsub fast float 1.000000e+00, %9267
  %9286 = fsub fast float 1.000000e+00, %9236
  %9287 = fdiv fast float %9285, %9286
  %9288 = call float @dx.op.unary.f32(i32 7, float %9287)  ; Saturate(value)
  %9289 = select i1 %9284, float 0.000000e+00, float %9288
  %9290 = fmul fast float %9281, %9289
  %9291 = fmul fast float %9282, %9289
  %9292 = fmul fast float %9283, %9289
  br label %9293

; <label>:9293                                    ; preds = %9274, %9265
  %9294 = phi float [ 0.000000e+00, %9265 ], [ %9290, %9274 ]
  %9295 = phi float [ 0.000000e+00, %9265 ], [ %9291, %9274 ]
  %9296 = phi float [ 0.000000e+00, %9265 ], [ %9292, %9274 ]
  %9297 = fmul fast float %9294, %7881
  %9298 = fmul fast float %9295, %7881
  %9299 = fmul fast float %9296, %7881
  %9300 = fmul fast float %9267, %8929
  %9301 = call float @dx.op.dot3.f32(i32 55, float %9267, float %9267, float %9267, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9302 = call float @dx.op.dot3.f32(i32 55, float %9297, float %9298, float %9299, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9303 = select i1 %261, float %9301, float %9267
  %9304 = select i1 %261, float 1.000000e+00, float %9267
  %9305 = select i1 %261, float %9302, float %9297
  %9306 = select i1 %261, float 0.000000e+00, float %9298
  %9307 = select i1 %261, float 0.000000e+00, float %9299
  %9308 = fmul fast float %9303, %8941
  %9309 = fmul fast float %9303, %8942
  %9310 = fmul fast float %9304, %8943
  %9311 = fadd fast float %9308, %9305
  %9312 = fadd fast float %9309, %9306
  %9313 = fadd fast float %9307, %9310
  %9314 = fmul fast float %9303, %8944
  %9315 = fmul fast float %9303, %8945
  %9316 = fmul fast float %9304, %8946
  br label %9317

; <label>:9317                                    ; preds = %9293, %8950, %8919, %8151
  %9318 = phi float [ %8156, %8151 ], [ %8941, %8919 ], [ %9311, %9293 ], [ %8941, %8950 ]
  %9319 = phi float [ %8157, %8151 ], [ %8942, %8919 ], [ %9312, %9293 ], [ %8942, %8950 ]
  %9320 = phi float [ %8158, %8151 ], [ %8943, %8919 ], [ %9313, %9293 ], [ %8943, %8950 ]
  %9321 = phi float [ %8159, %8151 ], [ %8944, %8919 ], [ %9314, %9293 ], [ %8944, %8950 ]
  %9322 = phi float [ %8160, %8151 ], [ %8945, %8919 ], [ %9315, %9293 ], [ %8945, %8950 ]
  %9323 = phi float [ %8161, %8151 ], [ %8946, %8919 ], [ %9316, %9293 ], [ %8946, %8950 ]
  %9324 = phi float [ %8162, %8151 ], [ %8929, %8919 ], [ %9300, %9293 ], [ %8929, %8950 ]
  %9325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9326 = extractvalue %dx.types.CBufRet.f32 %9325, 2
  %9327 = extractvalue %dx.types.CBufRet.f32 %9325, 3
  %9328 = fmul fast float %9326, %104
  %9329 = fmul fast float %9327, %105
  %9330 = call float @dx.op.unary.f32(i32 7, float %9328)  ; Saturate(value)
  %9331 = call float @dx.op.unary.f32(i32 7, float %9329)  ; Saturate(value)
  %9332 = select i1 %7893, i32 2, i32 0
  %9333 = or i32 %9332, 1
  %9334 = uitofp i32 %9333 to float
  %9335 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9330, float %9331, float %9334, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9336 = extractvalue %dx.types.ResRet.f32 %9335, 0
  %9337 = extractvalue %dx.types.ResRet.f32 %9335, 1
  %9338 = extractvalue %dx.types.ResRet.f32 %9335, 2
  %9339 = extractvalue %dx.types.ResRet.f32 %9335, 3
  %9340 = add nuw nsw i32 %9332, 2
  %9341 = uitofp i32 %9340 to float
  %9342 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9330, float %9331, float %9341, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9343 = extractvalue %dx.types.ResRet.f32 %9342, 0
  %9344 = extractvalue %dx.types.ResRet.f32 %9342, 1
  %9345 = extractvalue %dx.types.ResRet.f32 %9342, 2
  %9346 = extractvalue %dx.types.ResRet.f32 %9342, 3
  %9347 = call float @dx.op.binary.f32(i32 35, float %9337, float %9338)  ; FMax(a,b)
  %9348 = call float @dx.op.binary.f32(i32 35, float %9336, float %9347)  ; FMax(a,b)
  %9349 = call float @dx.op.binary.f32(i32 35, float %9348, float %9339)  ; FMax(a,b)
  %9350 = call float @dx.op.binary.f32(i32 36, float %9344, float %9345)  ; FMin(a,b)
  %9351 = call float @dx.op.binary.f32(i32 36, float %9343, float %9350)  ; FMin(a,b)
  %9352 = call float @dx.op.binary.f32(i32 36, float %9351, float %9346)  ; FMin(a,b)
  %9353 = fmul fast float %9349, 2.550000e+02
  %9354 = fadd fast float %9353, 0x3F70101020000000
  %9355 = fptoui float %9354 to i32
  %9356 = fmul fast float %9352, 2.550000e+02
  %9357 = fadd fast float %9356, 0x3F70101020000000
  %9358 = fptoui float %9357 to i32
  %9359 = icmp ult i32 %9355, %9358
  br i1 %9359, label %9360, label %9529

; <label>:9360                                    ; preds = %9317
  %9361 = fcmp fast ogt float %91, 9.843750e-01
  %9362 = fadd fast float %8155, -4.000000e+00
  %9363 = select i1 %9361, float -4.000000e+00, float %9362
  %9364 = call float @dx.op.binary.f32(i32 35, float %9363, float 0.000000e+00)  ; FMax(a,b)
  %9365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9365, 0
  %9367 = fadd fast float %9366, %9364
  %9368 = extractvalue %dx.types.CBufRet.f32 %9365, 2
  %9369 = fmul fast float %9367, %9368
  %9370 = call float @dx.op.unary.f32(i32 23, float %9369)  ; Log(value)
  %9371 = extractvalue %dx.types.CBufRet.f32 %9365, 3
  %9372 = fmul fast float %9371, %9370
  %9373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9374 = extractvalue %dx.types.CBufRet.f32 %9373, 2
  %9375 = fmul fast float %9372, %9374
  %9376 = call float @dx.op.unary.f32(i32 7, float %9375)  ; Saturate(value)
  %9377 = uitofp i32 %9355 to float
  %9378 = uitofp i32 %9358 to float
  %9379 = fadd fast float %9377, 5.000000e-01
  %9380 = fadd fast float %9378, 5.000000e-01
  %9381 = fmul fast float %9374, %9379
  %9382 = fmul fast float %9374, %9380
  %9383 = fadd fast float %9381, 0x3F0FFB4800000000
  %9384 = fadd fast float %9382, 0xBF0FFB4800000000
  %9385 = call float @dx.op.binary.f32(i32 35, float %9376, float %9383)  ; FMax(a,b)
  %9386 = call float @dx.op.binary.f32(i32 36, float %9385, float %9384)  ; FMin(a,b)
  %9387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9388 = extractvalue %dx.types.CBufRet.f32 %9387, 1
  %9389 = extractvalue %dx.types.CBufRet.f32 %9387, 2
  %9390 = extractvalue %dx.types.CBufRet.f32 %9387, 0
  %9391 = select i1 %7893, float %9390, float 0.000000e+00
  %9392 = fmul fast float %9388, %9386
  %9393 = fadd fast float %9391, %9392
  %9394 = fadd fast float %9391, %9389
  %9395 = fsub fast float %9388, %9389
  %9396 = fadd fast float %9395, %9391
  %9397 = call float @dx.op.binary.f32(i32 35, float %9393, float %9394)  ; FMax(a,b)
  %9398 = call float @dx.op.binary.f32(i32 36, float %9397, float %9396)  ; FMin(a,b)
  %9399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9330, float %9331, float %9398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9400 = extractvalue %dx.types.ResRet.f32 %9399, 0
  %9401 = extractvalue %dx.types.ResRet.f32 %9399, 1
  %9402 = extractvalue %dx.types.ResRet.f32 %9399, 2
  %9403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9404 = extractvalue %dx.types.CBufRet.i32 %9403, 0
  %9405 = extractvalue %dx.types.CBufRet.i32 %9403, 1
  %9406 = uitofp i32 %9404 to float
  %9407 = uitofp i32 %9405 to float
  %9408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9409 = extractvalue %dx.types.CBufRet.f32 %9408, 0
  %9410 = extractvalue %dx.types.CBufRet.f32 %9408, 1
  %9411 = fmul fast float %9406, %9330
  %9412 = fmul fast float %9407, %9331
  %9413 = fadd fast float %9411, -5.000000e-01
  %9414 = fadd fast float %9412, -5.000000e-01
  %9415 = call float @dx.op.unary.f32(i32 22, float %9413)  ; Frc(value)
  %9416 = call float @dx.op.unary.f32(i32 22, float %9414)  ; Frc(value)
  %9417 = fmul fast float %9415, %9415
  %9418 = fmul fast float %9417, %9415
  %9419 = fsub fast float 3.000000e+00, %9415
  %9420 = fmul fast float %9417, %9419
  %9421 = fmul fast float %9415, 3.000000e+00
  %9422 = fmul fast float %9418, 3.000000e+00
  %9423 = fmul fast float %9417, 6.000000e+00
  %9424 = fsub fast float %9422, %9423
  %9425 = fadd fast float %9424, 4.000000e+00
  %9426 = fmul fast float %9425, 0x3FC5555560000000
  %9427 = fmul fast float %9418, -3.000000e+00
  %9428 = fadd fast float %9417, %9415
  %9429 = fmul fast float %9428, 3.000000e+00
  %9430 = fadd fast float %9427, 1.000000e+00
  %9431 = fadd fast float %9430, %9429
  %9432 = fmul fast float %9418, 0x3FC5555560000000
  %9433 = fmul fast float %9416, %9416
  %9434 = fmul fast float %9433, %9416
  %9435 = fsub fast float 3.000000e+00, %9416
  %9436 = fmul fast float %9433, %9435
  %9437 = fmul fast float %9416, 3.000000e+00
  %9438 = fmul fast float %9434, 3.000000e+00
  %9439 = fmul fast float %9433, 6.000000e+00
  %9440 = fsub fast float %9438, %9439
  %9441 = fadd fast float %9440, 4.000000e+00
  %9442 = fmul fast float %9441, 0x3FC5555560000000
  %9443 = fmul fast float %9434, -3.000000e+00
  %9444 = fadd fast float %9433, %9416
  %9445 = fmul fast float %9444, 3.000000e+00
  %9446 = fadd fast float %9443, 1.000000e+00
  %9447 = fadd fast float %9446, %9445
  %9448 = fmul fast float %9434, 0x3FC5555560000000
  %9449 = fadd fast float %9415, 1.000000e+00
  %9450 = fsub fast float 1.000000e+00, %9421
  %9451 = fadd fast float %9450, %9420
  %9452 = fadd fast float %9451, %9425
  %9453 = fmul fast float %9452, 0x3FC5555560000000
  %9454 = fdiv fast float %9426, %9453
  %9455 = fsub fast float %9449, %9454
  %9456 = fsub fast float 1.000000e+00, %9415
  %9457 = fadd fast float %9431, %9418
  %9458 = fmul fast float %9457, 0x3FC5555560000000
  %9459 = fdiv fast float %9432, %9458
  %9460 = fadd fast float %9456, %9459
  %9461 = fadd fast float %9416, 1.000000e+00
  %9462 = fsub fast float 1.000000e+00, %9437
  %9463 = fadd fast float %9462, %9436
  %9464 = fadd fast float %9463, %9441
  %9465 = fmul fast float %9464, 0x3FC5555560000000
  %9466 = fdiv fast float %9442, %9465
  %9467 = fsub fast float %9461, %9466
  %9468 = fsub fast float 1.000000e+00, %9416
  %9469 = fadd fast float %9447, %9434
  %9470 = fmul fast float %9469, 0x3FC5555560000000
  %9471 = fdiv fast float %9448, %9470
  %9472 = fadd fast float %9471, %9468
  %9473 = fmul fast float %9455, %9409
  %9474 = fsub fast float %9330, %9473
  %9475 = fmul fast float %9460, %9409
  %9476 = fadd fast float %9475, %9330
  %9477 = fmul fast float %9472, %9410
  %9478 = fadd fast float %9477, %9331
  %9479 = fmul fast float %9467, %9410
  %9480 = fsub fast float %9331, %9479
  %9481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9474, float %9480, float %9398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9482 = extractvalue %dx.types.ResRet.f32 %9481, 0
  %9483 = extractvalue %dx.types.ResRet.f32 %9481, 1
  %9484 = extractvalue %dx.types.ResRet.f32 %9481, 2
  %9485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9476, float %9480, float %9398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9486 = extractvalue %dx.types.ResRet.f32 %9485, 0
  %9487 = extractvalue %dx.types.ResRet.f32 %9485, 1
  %9488 = extractvalue %dx.types.ResRet.f32 %9485, 2
  %9489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9474, float %9478, float %9398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9490 = extractvalue %dx.types.ResRet.f32 %9489, 0
  %9491 = extractvalue %dx.types.ResRet.f32 %9489, 1
  %9492 = extractvalue %dx.types.ResRet.f32 %9489, 2
  %9493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9476, float %9478, float %9398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9494 = extractvalue %dx.types.ResRet.f32 %9493, 0
  %9495 = extractvalue %dx.types.ResRet.f32 %9493, 1
  %9496 = extractvalue %dx.types.ResRet.f32 %9493, 2
  %9497 = fsub fast float %9490, %9482
  %9498 = fsub fast float %9491, %9483
  %9499 = fsub fast float %9492, %9484
  %9500 = fmul fast float %9497, %9470
  %9501 = fmul fast float %9498, %9470
  %9502 = fmul fast float %9499, %9470
  %9503 = fadd fast float %9500, %9482
  %9504 = fadd fast float %9501, %9483
  %9505 = fadd fast float %9502, %9484
  %9506 = fsub fast float %9494, %9486
  %9507 = fsub fast float %9495, %9487
  %9508 = fsub fast float %9496, %9488
  %9509 = fmul fast float %9506, %9470
  %9510 = fmul fast float %9507, %9470
  %9511 = fmul fast float %9508, %9470
  %9512 = fsub fast float %9486, %9503
  %9513 = fadd fast float %9512, %9509
  %9514 = fsub fast float %9487, %9504
  %9515 = fadd fast float %9514, %9510
  %9516 = fsub fast float %9488, %9505
  %9517 = fadd fast float %9516, %9511
  %9518 = fmul fast float %9513, %9458
  %9519 = fmul fast float %9515, %9458
  %9520 = fmul fast float %9517, %9458
  %9521 = fadd fast float %9518, %9503
  %9522 = fadd fast float %9519, %9504
  %9523 = fadd fast float %9520, %9505
  %9524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9525 = extractvalue %dx.types.CBufRet.f32 %9524, 1
  %9526 = fmul fast float %9521, %9525
  %9527 = fmul fast float %9522, %9525
  %9528 = fmul fast float %9523, %9525
  br label %9529

; <label>:9529                                    ; preds = %9360, %9317
  %9530 = phi float [ %9400, %9360 ], [ 1.000000e+00, %9317 ]
  %9531 = phi float [ %9401, %9360 ], [ 1.000000e+00, %9317 ]
  %9532 = phi float [ %9402, %9360 ], [ 1.000000e+00, %9317 ]
  %9533 = phi float [ %9526, %9360 ], [ 0.000000e+00, %9317 ]
  %9534 = phi float [ %9527, %9360 ], [ 0.000000e+00, %9317 ]
  %9535 = phi float [ %9528, %9360 ], [ 0.000000e+00, %9317 ]
  %9536 = fmul fast float %9533, %7881
  %9537 = fmul fast float %9534, %7881
  %9538 = fmul fast float %9535, %7881
  %9539 = fmul fast float %9530, %9324
  %9540 = call float @dx.op.dot3.f32(i32 55, float %9530, float %9531, float %9532, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9541 = call float @dx.op.dot3.f32(i32 55, float %9536, float %9537, float %9538, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9542 = select i1 %261, float %9540, float %9530
  %9543 = select i1 %261, float %9540, float %9531
  %9544 = select i1 %261, float 1.000000e+00, float %9532
  %9545 = select i1 %261, float %9541, float %9536
  %9546 = select i1 %261, float 0.000000e+00, float %9537
  %9547 = select i1 %261, float 0.000000e+00, float %9538
  %9548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9549 = extractvalue %dx.types.CBufRet.i32 %9548, 3
  %9550 = and i32 %9549, 3
  %9551 = icmp ne i32 %9550, 0
  %9552 = and i32 %9549, 4
  %9553 = icmp ne i32 %9552, 0
  %9554 = and i1 %9551, %9553
  %9555 = and i1 %261, %9554
  br i1 %9555, label %9556, label %9562

; <label>:9556                                    ; preds = %9529
  %9557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9558 = extractvalue %dx.types.CBufRet.f32 %9557, 1
  %9559 = fadd fast float %9539, -1.000000e+00
  %9560 = fmul fast float %9558, %9559
  %9561 = fadd fast float %9560, 1.000000e+00
  br label %9562

; <label>:9562                                    ; preds = %9556, %9529
  %9563 = phi float [ %9561, %9556 ], [ %9539, %9529 ]
  %9564 = fadd fast float %9321, %9318
  %9565 = fmul fast float %9542, %9564
  %9566 = fadd fast float %9565, %9545
  %9567 = fadd fast float %9322, %9319
  %9568 = fmul fast float %9543, %9567
  %9569 = fadd fast float %9568, %9546
  %9570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9571 = extractvalue %dx.types.CBufRet.f32 %9570, 0
  br i1 %261, label %9572, label %9587

; <label>:9572                                    ; preds = %9562
  %9573 = fadd fast float %9566, %9569
  %9574 = fmul fast float %9571, %9573
  %9575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9576 = extractvalue %dx.types.CBufRet.f32 %9575, 3
  %9577 = extractvalue %dx.types.CBufRet.f32 %7869, 1
  %9578 = fsub fast float %7874, %7868
  %9579 = fadd fast float %9578, %7875
  %9580 = fsub fast float %9579, %9577
  %9581 = extractvalue %dx.types.CBufRet.f32 %7869, 2
  %9582 = fmul fast float %9580, %9581
  %9583 = call float @dx.op.unary.f32(i32 7, float %9582)  ; Saturate(value)
  %9584 = fsub fast float %9583, %9576
  %9585 = fmul fast float %9584, %9563
  %9586 = fadd fast float %9585, %9576
  br label %9613

; <label>:9587                                    ; preds = %9562
  %9588 = fadd fast float %9323, %9320
  %9589 = fmul fast float %9544, %9588
  %9590 = fadd fast float %9589, %9547
  %9591 = fmul fast float %9571, %9566
  %9592 = fmul fast float %9571, %9569
  %9593 = fmul fast float %9571, %9590
  %9594 = call float @dx.op.binary.f32(i32 35, float %9592, float %9593)  ; FMax(a,b)
  %9595 = call float @dx.op.binary.f32(i32 35, float %9591, float %9594)  ; FMax(a,b)
  %9596 = call float @dx.op.binary.f32(i32 35, float %7881, float %7881)  ; FMax(a,b)
  %9597 = call float @dx.op.binary.f32(i32 35, float %7881, float %9596)  ; FMax(a,b)
  %9598 = call float @dx.op.binary.f32(i32 35, float %9595, float %9597)  ; FMax(a,b)
  %9599 = fcmp fast ugt float %9598, 0x3F10000000000000
  br i1 %9599, label %9601, label %9600

; <label>:9600                                    ; preds = %9587
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9601

; <label>:9601                                    ; preds = %9600, %9587
  %9602 = add i32 %60, 356
  %9603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9602, i32 undef)  ; BufferLoad(srv,index,wot)
  %9604 = extractvalue %dx.types.ResRet.i32 %9603, 0
  %9605 = and i32 %9604, 32
  %9606 = icmp eq i32 %9605, 0
  br i1 %9606, label %9613, label %9607

; <label>:9607                                    ; preds = %9601
  %9608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9609 = extractvalue %dx.types.CBufRet.f32 %9608, 0
  %9610 = fmul fast float %9609, 0x3FE99999A0000000
  %9611 = fadd fast float %9609, %9591
  %9612 = fadd fast float %9610, %9593
  br label %9613

; <label>:9613                                    ; preds = %9607, %9601, %9572
  %9614 = phi float [ 1.000000e+00, %9572 ], [ %7881, %9607 ], [ %7881, %9601 ]
  %9615 = phi float [ %9574, %9572 ], [ %9611, %9607 ], [ %9591, %9601 ]
  %9616 = phi float [ %9586, %9572 ], [ %9592, %9607 ], [ %9592, %9601 ]
  %9617 = phi float [ 1.000000e+00, %9572 ], [ %9612, %9607 ], [ %9593, %9601 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9618 = call float @dx.op.binary.f32(i32 36, float %9615, float 3.225500e+04)  ; FMin(a,b)
  %9619 = call float @dx.op.binary.f32(i32 36, float %9616, float 3.225500e+04)  ; FMin(a,b)
  %9620 = call float @dx.op.binary.f32(i32 36, float %9617, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9618)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9619)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9620)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9621 = call float @dx.op.binary.f32(i32 36, float %7881, float 3.225500e+04)  ; FMin(a,b)
  %9622 = call float @dx.op.binary.f32(i32 36, float %9614, float 3.225500e+04)  ; FMin(a,b)
  %9623 = call float @dx.op.binary.f32(i32 36, float %9614, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9621)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9622)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9623)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!74 = !{[42 x i32] [i32 40, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 0, i32 119, i32 119]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !98}
!76 = !{!77, !94, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !90, !91, !93}
!78 = !{i32 0, !"SV_Position", i8 9, i8 3, !79, i8 4, i32 1, i8 4, i32 0, i8 0, !80}
!79 = !{i32 0}
!80 = !{i32 3, i32 15}
!81 = !{i32 1, !"COLOR", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 1, i8 0, !80}
!82 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 2, i8 0, !83}
!83 = !{i32 3, i32 3}
!84 = !{i32 3, !"NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 3, i8 0, !85}
!85 = !{i32 3, i32 7}
!86 = !{i32 4, !"TANGENT", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 4, i8 0, !80}
!87 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 5, i8 0, !85}
!88 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 6, i8 0, !80}
!89 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 2, i32 7, i8 0, !83}
!90 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 8, i8 0, !80}
!91 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !79, i8 1, i32 1, i8 4, i32 9, i8 0, !92}
!92 = !{i32 3, i32 13}
!93 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!94 = !{!95, !96}
!95 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
!96 = !{i32 1, !"SV_Target", i8 9, i8 16, !97, i8 0, i32 1, i8 4, i32 1, i8 0, !80}
!97 = !{i32 1}
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
!135 = !{!136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!136 = distinct !{!136, !137, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!137 = distinct !{!137, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!138 = distinct !{!138, !139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!139 = distinct !{!139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!140 = distinct !{!140, !139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!141 = distinct !{!141, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!142 = distinct !{!142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!143 = distinct !{!143, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!144 = distinct !{!144, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!145 = distinct !{!145, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!146 = distinct !{!146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!147 = distinct !{!147, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!148 = distinct !{!148, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

